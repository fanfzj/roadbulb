<?php
 class PublishAction extends CommonAction{
	 
	 /*
	 *@author nele 
	 * 在执行发帖之前检测是否登陆
	 */
	 public function _before_show_publish_tz(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            $this->error('检查到您还没有登陆，请先登陆在执行此操作！');
		  }
		 }
	 
	 /*显示用户发表帖子界面*/
	 public function show_publish_tz(){
		 $this->display();
	 }
		 
	/*
	 *@author nele 
	 * 在执行发帖之前检测是否登陆
	 */
	 public function _before_do_publish_tz(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            $this->error('检查到您还没有登陆，请先登陆在执行此操作！');
		  }
		 }
	 
	/*执行发布帖*/	 
	public function do_publish_tz(){
		$tz_theme=$_POST['tz_theme'];
		$tz_content=$_POST['tz_content'];
		$user_id=$_POST['user_id'];
		
		$post_main=new Model("Post_main");
		
		$data['theme']=$tz_theme;
		$data['content']=$tz_content;
		$data['datetime']=date('Y-m-d H:i:s',time());	
		$data['user_id']=$user_id;
		
		$post_main->add($data);

		}	 





 /*************************************************************/

     /*
	 *@author nele 
	 * 在执行发攻略之前检测是否登陆
	 */
	 public function _before_show_publish_gl(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            $this->error('检查到您还没有登陆，请先登陆在执行此操作！');
		  }
		 }
      /*显示用户发表攻略界面*/
	  public function show_publish_gl(){
		  
		 $games=new Model("Game_list");
		 $game_all=$games->select();
		 $this->assign('games_kind_list',$game_all);
		 
		 $game_list_small=new Model("Game_list_small");
		 $game_list_small_all=$game_list_small->select();
		 $this->assign('game_kind_small_list',$game_list_small_all);
		   
		 $this->display();
		 }
		 
	  /*
	 *@author nele 
	 * 根据游戏类型查找游戏
	 */	
	  public function get_games(){
          $game_list_select=$_POST['game_list_select'];
		  $game_small_list_select=$_POST['game_small_list_select'];
		  
		   $data['list_id']=$game_list_select;
		   $data['list_small_id']=$game_small_list_select;
		  
		   $games=new Model('Game');
		   
		   $game_arr=$games->where($data)->select();
		   
		   $this->ajaxReturn($game_arr,"查询成功！",1);
		   
		  // $this->ajaxReturn($result,"查询成功！",1);
		}
	
		
	   /*
	 *@author nele 
	 * 在执行发攻略之前检测是否登陆
	 */
	 public function _before_do_publish_gl(){
		 session_start();
        if(!isset($_SESSION['user']) || $_SESSION['user']==''){
            $this->error('检查到您还没有登陆，请先登陆再执行此操作！');
		  }
		 }	 		 
	  /*发表攻略*/ 
	  public function do_publish_gl(){
				
		  $gl_theme=$_POST['gl_theme'];
		  $gl_for_game_id=$_POST['gl_for_game_id'];
		  $gl_content=$_POST['gl_content'];
		  $game_list_small=$_POST['game_list_small'];
		  $game_list_large=$_POST['game_list_large'];
		  $user_id=$_POST['user_id'];
		  
		  $cheats=new Model("Cheats");
		
		  $data['theme']=$gl_theme;
		  $data['content']=$gl_content;  
		  $data['datetime']=date('Y-m-d H:i:s',time());	
		  $data['game_id']=$gl_for_game_id;
		  $data['game_list_small_id']=$game_list_small;
		  $data['game_list_large_id']=$game_list_large;
		  $data['user_id']=$user_id;
		  
		  $cheats->add($data);
		  	
		  } 	
		  
		  
	 /*增加游戏*/
	public function add_game(){
		  $game_name=$_POST['game_name'];
		  $game_list_small=$_POST['game_list_small'];
		  $game_list_large=$_POST['game_list_large'];
		
		  $game=new Model("Game");
		  $data['game_name']=$game_name;
		  $data['list_id']=$game_list_large;
		  $data['list_small_id']=$game_list_small;
		  $data['new']=1;
		  $result=$game->add($data);
		  
		  if ($result){
          $id = $result; // 获取数据库写入数据的主键
		  echo $id;
          }else{
         exit($Model->getError());
	     }
		}	  
	 
 }
?>