<?php

  class UserInfoAction extends Action{
	  
	  /*
	 *@author nele 
	 * 检测是否登陆
	 */
	 public function _before_show_user_info(){
		    //session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
           $this->redirect('Index/index');
		  }
		 }	
		  
	  /*
	    @author nele 
		 显示用户信息
	  */
	  public function show_user_info(){
          $user_id = $_SESSION['user']['Id'];
		  
		  /*$user_info=new Model("User_information");
		  $condition['Id']=$user_id;
		  $user=$user_info->where($condition)->select();
		  $_SESSION['user']=$user[0];*/
		  
		  $post_main=new Model("Post_main");
		  $cheats=new Model("Cheats");
		  $post_replay=new Model("Post_replay");
		  $cheats_replay=new Model("Cheats_replay");
		  
		  $data['user_id']=$user_id;
		  $posts_arr=$post_main->where($data)->select();
		  $user_posts_count=count($posts_arr);
		  
		  $cheats_arr=$cheats->where($data)->select();
		  $user_cheats_count=count($cheats_arr);
		  
		  $data2['replay_user_id']=$user_id;
		  $post_replay_arr=$post_replay->where($data2)->select(); 
		  $cheat_replay_arr=$cheats_replay->where($data2)->select();
		  $replays_count=count($post_replay_arr)+count($cheat_replay_arr);
		  
		  
		  /*找到攻略对应的评论数目*/	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($cheats_arr);
		  $cheats_replays_count=array();
		  $a=0;
		  if($cheats_count){
			for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$cheats_arr[$a++]['user_id'];
			 
		      $data3['cheats_id']=$cheats_arr[$i]['cheats_id'];
		      $cheat_replays=$cheats_replay->where($data3)->select();
				
			  $cheats_replays_count[]=count($cheat_replays);
			}
		  }
		  
		  $_SESSION['user_posts']=$posts_arr;
		  $_SESSION['user_cheats']=$cheats_arr;
		  $_SESSION['replays_count']=$replays_count;
		  $_SESSION['cheats_replays_count']=$cheats_replays_count;
		  
		  $user=new Model("User_information");
		  $data4['post_number']=count($posts_arr);
		  $data4['cheats_number']=count($cheats_arr);
		  $data4['replay_number']=$replays_count;
		  
		  $user->where($data)->save($data4);
		  
		  $this->display();
		  }
		  
		  
		  
		  
		  
		  /*完善用户信息*/
		 public function complete_user_info(){
			 
			 $user_id=$_SESSION['user']['Id'];
			 
			// $username=$_POST["username"];
			 $user_info_email=$_POST["user_info_email"];
			 $user_info_qq=$_POST["user_info_qq"];
			 $user_info_phone=$_POST["user_info_phone"];
			 $user_info_address=$_POST["user_info_address"];
			 $user_info_birthdy=$_POST["user_info_birthdy"];
			
			 $data['e-mail']=$user_info_email;
			 $data['qq']=$user_info_qq;
			 $data['phone']=$user_info_phone;
			 $data['address']=$user_info_address;
			 $data['birthday']=$user_info_birthdy;
			 
			 $data2['Id']=$user_id;
			 $user=new Model("User_information");
			 
			 $result=$user->where($data2)->save($data);
			 if($result){
			 $user_arr=$user->where($data2)->select();
			 $_SESSION['user']=$user_arr[0];
			   echo '1';
				 }
			 else{
				 echo '2';
				 }	 
			 
			 } 
			 
			 
			 
		/*
		 *@author nele 
		 * 修改密码
		 */	 
	  public function modify_pwd(){
		  $user_id=$_SESSION['user']["Id"];
		  $username=$_SESSION['user']['username'];
		  $old_pwd=$_POST['old_pwd'];
		  $new_pwd=$_POST['new_pwd'];
		   
		  $user=new Model("User_information");
		  
		  $data['Id']=$user_id;
		  
		  $user_arr=$user->where($data)->select();
		  
		  
		  $old_pwd_md5=md5($username.'ｌéｊūń楽俊'.$old_pwd);
		  if($user_arr[0]['password']==$old_pwd_md5){
		   $new_pwd_md5=md5($username.'ｌéｊūń楽俊'.$new_pwd);
		   $data2['password']=$new_pwd_md5;
		   $result=$user->where($data)->save($data2);
		   if($result){
			   echo '1';
			   }else{
				echo '3';   
				   } 
			  }else{
				echo '2';  
			}
		  
		  }	
		  
		  
		    //上传图像
		 public function upload_image(){
			 import('ORG.Net.UploadFile');
			
             $upload = new UploadFile();// 实例化上传类
			 $upload->maxSize  = 3145728 ;// 设置附件上传大小
			 
			
             $upload->saveRule = 'uniqid';//设置上传文件规则
	         $upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
             $upload->savePath =  './Public/photo/';// 设置附件上传目录
            if(!$upload->upload()) {// 上传错误提示错误信息
				$this->error($upload->getErrorMsg());
				}else{// 上传成功 获取上传文件信息
				$info =  $upload->getUploadFileInfo();
			}
				
			$user=new Model("User_information");
			
			$photo=$info[0]['savename'];
			
			$user_id=$_SESSION['user']['Id'];
			$condition['Id']=$user_id;
			$data['photo']=$photo;
			$list=$user->where($condition)->save($data);
			if ($list !== false) {   
			  $user_arr=$user->where($condition)->select();
			  $_SESSION['user']=$user_arr[0];
              $this->success('上传图片成功！');   
            } else {   
              $this->error('上传图片失败!');   
            }   
	      } 
		
	  	
					
}
?>
