<?php
 class ShowAction extends CommonAction{
	 
	 
	  /*展示攻略*/
	  public function show_gl(){
		  $cheat_id=$_GET['cheat_id'];//接收 参数
		  
		  /*找到对应的攻略*/
		  $cheats=new Model("Cheats");
		  $data['cheats_id']=$cheat_id;
		  
		  $cheats->where($data)->setInc('clicks');
          $cheat=$cheats->where($data)->select();
		  
		  
		   /*找到发布攻略的用户*/	
		  $user=new Model("User_information");	
		  $data['Id']=$cheat[0]['user_id'];
		  $user_arr=$user->where($data)->select();
		  $cheat[0]['user']=$user_arr[0];
		  
		  
		  $this->assign('cheat',$cheat[0]);	
		  
		 
		  
			 
		  /*找到攻略对应的评论*/	
		  $cheats_replay=new Model("Cheats_replay");
		  $data2['cheats_id']=$cheat_id;
		  $cheat_replays=$cheats_replay->where($data2)->select();
		   
		  $this->assign('cheat_replays',$cheat_replays); 
		   
		  /*找到评论的用户*/
		  $replay_count=count($cheat_replays);
		  $replay_user_arr=array();
		  $a=0 ;
		  if($replay_count){
			for($i=0;$i<$replay_count;$i++) {
			  $replay_user_id=$cheat_replays[$a++]['replay_user_id'];
			  
			  $data3['Id']=$replay_user_id;
			  
			  $replay_user=$user->where($data3)->select();
			  
			  $replay_user_arr[]=$replay_user[0];
			}
			/* $this->assign('a',$a);  
		     $a=0;*/
		  }
		  
		 
		  $this->assign('replay_user_arr',$replay_user_arr);
		   
		  $this->display();
		  }
		  
		 
	  /*
	 *@author nele 
	 * 在执行回复攻略之前检测是否登陆
	 */
	 public function _before_do_gl_replay(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            echo "1";
		  }
		 }	
		  
	 /*攻略回复*/
	 public function do_gl_replay(){
		 
	 	 $gl_replay_content=$_POST['gl_replay_content'];
		 $replay_user=$_POST['user_id'];
		 $gl_id=$_POST['gl_id'];
		 
		 
		 $cheats_replay=new Model("Cheats_replay");
		 
		 $data['content']=$gl_replay_content;
		 $data['datetime']=date('Y-m-d H:i:s',time());
		 $data['replay_user_id']=$replay_user;
		 $data['cheats_id']=$gl_id;

		 $cheats_replay->add($data);
		 
	    }


           /*
	 *@author nele 
	 * 在执行赞攻略之前检测是否登陆
	 */
	 public function _before_do_gl_praise(){
		    session_start();
          if(!isset($_SESSION['user']) || $_SESSION['user']==''){
			echo "2";
		  }
		 }	  
	   /***
	   *@author nele 
	   *攻略赞
	   */
		public function do_gl_praise(){
		 $cheat_id=$_POST['gl_id'];
		 $user_id=$_SESSION['user']['Id'];
		 $checkdata['user_id']=$user_id;
         $checkdata['cheats_id']=$cheat_id;
 
		 $cheats_zan=new Model("Cheats_z");

		 $isPraise_arr=$cheats_zan->where($checkdata)->select(); 
         if(count($isPraise_arr)){       
		     echo '0';	 
		 }else{
		  $cheats_replay=new Model("Cheats");
		  $data['cheats_id']=$cheat_id;
		  
		  $cheats_replay->where($data)->setInc('praise');

          $cheats_zan->add($checkdata);
		  echo '1';		
		 }
          
	    }
		  
	
	
	
 /******************************************************************/
	
	  /***
	   *@author nele 
	   *展示帖子
	   */
	  public function show_tz(){
		  $post_id=$_GET['post_id'];//接收 参数
		 
		  /*找到对应的攻略*/
		  $posts=new Model("Post_main");
		  $data['post_id']=$post_id;
		  
		  $posts->where($data)->setInc("clicks");
          $post=$posts->where($data)->select();
		  
		  
		  /*找到发布攻略的用户*/	
		  $user=new Model("User_information");	
		  $data['Id']=$post[0]['user_id'];
		  $user_arr=$user->where($data)->select();
		  $fb_user=$user_arr[0];
		  
		  $this->assign('fb_user',$fb_user);
		  $this->assign('post',$post[0]);	
		  
		 
		  
			 
		  /*找到攻略对应的评论*/	
		  $posts_replay=new Model("Post_replay");
		  $data2['post_id']=$post_id;
		  $post_replays=$posts_replay->where($data2)->select();
		   
		  $this->assign('post_replays',$post_replays);
		  
		  /*找到评论的用户*/
		  $replay_count=count($post_replays);
		  $replay_user_arr=array();
		    $a=0 ;
		  if($replay_count){
			for($i=0;$i<$replay_count;$i++) {
			  $replay_user_id=$post_replays[$a++]['replay_user_id'];
			  
			  $data3['Id']=$replay_user_id;
			  
			  $replay_user=$user->where($data3)->select();
			  
			  $replay_user_arr[]=$replay_user[0];
			}
			/* $this->assign('a',$a);  
		     $a=0;*/
		  }
		  
		 
		  $this->assign('replay_user_arr',$replay_user_arr);
		  
		  $this->display();
		  }
	  
	  
	  
	    /*
	 *@author nele 
	 * 在执行回复帖子之前检测是否登陆
	 */
	 public function _before_do_tz_replay(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            echo "1";
			$this->error();
		  }
		}	
		  
	  
	   /*执行帖子回复*/
	    public function do_tz_replay(){
		 $tz_replay_content=$_POST['tz_replay_content'];
		 $replay_user=$_POST['user_id'];
		 $tz_id=$_POST['tz_id'];
		 
		 
		 $posts_replay=new Model("Post_replay");
		 
		 $data['content']=$tz_replay_content;
		 $data['datetime']=date('Y-m-d H:i:s',time());
		 $data['replay_user_id']=$replay_user;
		 $data['post_id']=$tz_id;

		 $posts_replay->add($data);
		 }  
	
	
	     /*
	 *@author nele 
	 * 在执行赞之前检测是否登陆
	 */
	 public function _before_do_tz_praise(){
		    session_start();
          if(!isset($_SESSION['user']) || $_SESSION['user']==''){
			echo "2";
			$this->error();
		  }
		 }	  
	 
	  /***
	   *@author nele 
	   *帖子赞
	   */
		public function do_tz_praise(){
		 $post_id=$_POST['tz_id'];
		 $user_id=$_SESSION['user']['Id'];
		 $post_zan_data['user_id']=$post_id;
         $post_zan_data['post_id']=$user_id;
 
		 $post_zan=new Model("Post_z");

		 $isPraise_arr=$post_zan->where($post_zan_data)->select(); 
         if(count($isPraise_arr)){       
		     echo '0';	 
		 }else{
		  $post=new Model("Post_main");
		  $data['post_id']=$post_id;
		  
		  $post->where($data)->setInc('praise_number');
		  
		  $post_zan->add($post_zan_data);         
		  echo '1';		
		 }
	    }	 
		 
	
	
	
/*************************************************************************/

		 
	  /***
	    *展示公告
	   *@author nele 
	   */
	 	public function show_gg(){
			$board_id=$_GET['board_id'];
			
		  $board=new Model("Board");
		  $data["Id"]=$board_id;
		 $board_arr=$board->where($data)->select();
		 $this->assign('board',$board_arr[0]);
			
		 $this->display();	
		}
		 
	 }

?>
