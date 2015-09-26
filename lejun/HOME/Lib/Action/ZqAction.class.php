<?php
  class ZqAction extends Action{
	  
	  
	  /*展示手机游戏专区*/
	  public function zq_game(){
		  
	     $game_list_id=$_GET['game_list_id']; //得到游戏类型的id
		 $game_list=new Model("Game_list");
		 $gamelistData['list_id']=$game_list_id;
		 $game_list_arr=$game_list->where($gamelistData)->select();
		 
		 $game_name=$game_list_arr[0]['list_name'];
		 
		 $this->assign("title",$game_name);
		 $this->assign("game_list_id",$game_list_id);
		 $this->display();
		  }
		 
		 
		/**
		 @authhor nele 
		 得到最新的攻略
		*/  
		public function get_latest_gl(){
			$page_id=$_POST['page_id'];
			$game_list_id=$_POST['game_list_id'];
			$data['game_list_large_id']=$game_list_id;
			$cheats=new Model("Cheats");
			
			//$count=$cheats->where($data)->count();
 
			$result=$cheats->switchModel("Adv")->order('cheats_id desc')->where($data)->limit(($page_id-1)*3,3)->select(); 
			 
			/*截取攻略的内容*/  
			for($i=0;$i<count($result);$i++){
			    $end=(strlen(strip_tags($result[$i]['content'])))/8;
			    $str=strip_tags($result[$i]['content']);
               $result[$i]['content']=substr_utf8($str,0,60);
			}     
			
			
		  $user=new Model("User_information");	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($result);
		  $cheats_user_arr=array();
		  $cheats_replays_count=array();
		  $a=0 ;
		  if($cheats_count){
			for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$result[$i]['user_id'];
			  
			  $data3['Id']=$user_id;
			  $cheats_user=$user->where($data3)->select();
			  $result[$i]['author']=$cheats_user[0];
			  
			 
		      $data2['cheats_id']=$result[$i]['cheats_id'];
		      $cheat_replays=$cheats_replay->where($data2)->select();
				
			  $result[$i]['cheats_replays_count']=count($cheat_replays);
			}
		  }
		 $this->ajaxReturn($result,"查询成功！",1);
			
			}
		
		
		
		
		/*
		*@author nele 
		 *热门攻略
		*/
		public function get_hot_gl(){
			$page_id=$_POST['page_id'];
			$game_list_id=$_POST['game_list_id'];
			$data['game_list_large_id']=$game_list_id;
			
			$cheats_hot=new Model("Cheats_hot");
			$cheats_hot_arr=$cheats_hot->switchModel("Adv")->order('Id desc')->where($data)->limit(($page_id-1)*3,3)->select();
			$cheats_hot_count=count($cheats_hot_arr);
			
			if($cheats_hot_count){
			$cheats=new Model("Cheats");
			
			$ids=array();
			  
			  
			for($i=0;$i<$cheats_hot_count;$i++){
			   $ids[$i]=$cheats_hot_arr[$i]['cheats_id'];
				}
			
		  $map["cheats_id"]=array('in',$ids);
		  $data4['cheats_id']=1;
		  $result=$cheats->where($map)->select();
			 
			/*截取攻略的内容*/  
			for($i=0;$i<count($result);$i++){
			    $end=(strlen(strip_tags($result[$i]['content'])))/8;
			    $str=strip_tags($result[$i]['content']);
			//$this->assign('demo',$end);
               $result[$i]['content']=substr_utf8($str,0,60);
			}     
			
			
		  $user=new Model("User_information");	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($result);
		  $cheats_user_arr=array();
		  $cheats_replays_count=array();
		  $a=0 ;
		  if($cheats_count){
			for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$result[$i]['user_id'];
			  
			  $data3['Id']=$user_id;
			  $cheats_user=$user->where($data3)->select();
			  $result[$i]['author']=$cheats_user[0];
			  
			 
		      $data2['cheats_id']=$result[$i]['cheats_id'];
		      $cheat_replays=$cheats_replay->where($data2)->select();
				
			  $result[$i]['cheats_replays_count']=count($cheat_replays);
			}
		  }
		    //$this->ajaxReturn($ids,"查询成功！",1);
		    $this->ajaxReturn($result,"查询成功！",1);
			}
			$this->ajaxReturn(null,"查询成功！",1);
			}
			
		
		
		
		
		
			
		/**
		 @authhor nele 
		 得到最新的帖子
		*/  
		public function get_latest_post(){
			$page_id=$_POST['page_id'];
			$data['game_list_large_id']=1; 
		    $cheats=new Model("Cheats");
			$count=$cheats->where($data)->count();
 
			$result=$cheats->switchModel("Adv")->where($data)->limit(($page_id-1)*3,3)->order('cheats_id desc')->select();         
			$this->ajaxReturn($result,"新增成功！",1);
		    
			}
		  
		  
		  
		  
		  
		 /**
		 @authhor nele 
		 展示热门游戏
		*/ 
		  public function zq_hot_game_show(){
		    $game_id=$_GET['game_id'];
			
		    $this->assign("title",$game_id);
			$this->assign("game_id",$game_id);
			$this->display("zq_hot_game_show");
		  }
		  
		  
		  
		  
		  
		  /**
		 @authhor nele 
		 得到热门游戏最新的攻略
		 */ 
		  public function get_hot_game_latest_gl(){
			$page_id=$_POST['page_id'];
			$game_id=$_POST['game_id'];
			//$game_list_id=$_POST['game_list_id'];
			//$data['game_list_large_id']=$game_list_id;
			$data['game_id']=$game_id;
			$cheats=new Model("Cheats");
			$count=$cheats->where($data)->count();
 
			$result=$cheats->switchModel("Adv")->where($data)->limit(($page_id-1)*3,3)->order('cheats_id desc')->select(); 
			 
			/*截取攻略的内容*/  
			for($i=0;$i<count($result);$i++){
			    $end=(strlen(strip_tags($result[$i]['content'])))/8;
			    $str=strip_tags($result[$i]['content']);
			//$this->assign('demo',$end);
               $result[$i]['content']=substr_utf8($str,0,60);
			}     
			
			
		  $user=new Model("User_information");	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($result);
		  $cheats_user_arr=array();
		  $cheats_replays_count=array();
		  $a=0 ;
		  if($cheats_count){
			for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$result[$a++]['user_id'];
			  
			  $data3['Id']=$user_id;
			  $cheats_user=$user->where($data3)->select();
			  $result[$i]['author']=$cheats_user[0];
			  
			 
		      $data2['cheats_id']=$result[$i]['cheats_id'];
		      $cheat_replays=$cheats_replay->where($data2)->select();
				
			  $result[$i]['cheats_replays_count']=count($cheat_replays);
			}
		  }
		   // $this->ajaxReturn($ids,"查询成功！",1);
		   $this->ajaxReturn($result,"查询成功！",1);
		
			  }
			  
/****************************************************************/		
		
		  
	  /*展示网游游戏专区*/
	  public function wy_zq(){
		  $this->display();
		  }
	
	  /*展示电子游戏专区*/  
	  public function dw_zq(){
		  $this->display();
		  }	  
	  
	  /*展示单机游戏专区*/
	  public function dj_zq(){
		  $this->display();
		  }
		
		
	
    	
		  
	  }



  /*中文截取*/
 /* function msubstr($str,$start,$len)
 {
	//存储字符串总长度（从字符开始的起始位置到字符串的总长度）
	$strlen=$start+$len;   
	for($i=0;$i<$strlen;$i++)       //for循环，读取字符串
	{
		//假如字符串中首个字节的ASCII序数值大于0xa0,则表示为汉字
		if(ord(substr($str,$i,1))>0xa0)
		{
			//每次取出两个字节，复制给$tmpstr
			$tmpstr=substr($str,$i,2);
			$i++;
		}
		//否则不是汉字
		else
		{
			$tmpstr=substr($str,$i,1);
		}
	}
	 return $tmpstr;  //输出字符
}*/
		
		function substr_utf8($string,$start,$length)  
		{       //by aiou  
			 $chars = $string;  
			 //echo $string[0].$string[1].$string[2];  
			 $i=0;  
			 do{  
				if (preg_match ("/[0-9a-zA-Z]/", $chars[$i])){//纯英文  
					$m++;  
				}  
			else {$n++;     }//非英文字节,  
				$k = $n/3+$m/2;  
				$l = $n/3+$m;//最终截取长度；$l = $n/3+$m*2？  
				$i++;  
			} while($k < $length);  
			 $str1 = mb_substr($string,$start,$l,'utf-8');//保证不会出现乱码  
			 return $str1;  
		}  


?>
