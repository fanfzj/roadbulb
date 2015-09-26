<?php
  

	class IndexAction extends CommonAction {
		
		// 显示主页面
		public function index(){
		   //$this->show("");
		   $this->redirect("Index:index_index");
		}
		
		
		public function index_index(){
		  
		  /*取当前最新8条攻略数据放到前台*/
		 $cheats=new Model("Cheats");
		 $cheats_arr=$cheats->switchModel("Adv")->order('cheats_id desc')->top8();
		 $this->assign('cheats_latest',$cheats_arr);
		 
		 
		  /*取当前最新8条帖子数据放到前台*/
		 $posts=new Model("Post_main");
		 $post_arr=$posts->switchModel("Adv")->order('post_id desc')->top8();
		 $this->assign('post_latest',$post_arr);
		 
		 
		 /*获取热门8条攻略*/
		 $cheats_hot=new Model("Cheats_hot");
	     $cheats_hot_cheats_id_arr=$cheats_hot->switchModel("Adv")->top8();
		 $cheats_hot_arr=array();
		 for($i=0;$i<count($cheats_hot_cheats_id_arr);$i++)
		 {
			 $data['cheats_id']=$cheats_hot_cheats_id_arr[$i]["cheats_id"];
		     $cheat_arr=$cheats->where($data)->select();	 
		     $cheats_hot_arr[]=$cheat_arr[0];
		 }
		 $this->assign("cheats_hot_arr",$cheats_hot_arr);
		 
		 
		  /*获取热门8条攻略*/
		 $posts_hot=new Model("Post_hot");
	     $posts_hot_post_id_arr=$posts_hot->switchModel("Adv")->top8();
		 $posts_hot_arr=array();
		 for($i=0;$i<count($posts_hot_post_id_arr);$i++)
		 {
		     $data['post_id']=$posts_hot_post_id_arr[$i]["post_id"];
		     $post_arr=$posts->where($data)->select();	 
		     $posts_hot_arr[]=$post_arr[0];
		 }
		 $this->assign("posts_hot_arr",$posts_hot_arr);
		 
		 
		 /*得到最新公告*/
		 $board=new Model("Board");
		 $board_arr=$board->switchModel("Adv")->order('Id desc')->top6();
		 $this->assign('board_arr',$board_arr);

             
		 /*获取抓取到的攻略*/
                 $gl_other=new Model("Get_gl_from_other_site");

  		
                  $col=16;#每页显示记录条数
                  $page=0;
   
		       $gls=$gl_other->order("datetime")->limit($page*$col,$col)->select();
			   $gls_d=$gl_other->order("datetime desc")->limit($page*$col,$col)->select();
	           $count=$gl_other->count();
               $this->assign("gls",$gls);
			   $this->assign("gls_d",$gls_d);
               $this->assign("count",$count); 
	          $this->show();
		}
		
		
		
		
		
		//其他网站攻略翻页
		public function next_page(){
		   $page_id=$_POST["page_id"];
		   
		    $gl_other=new Model("Get_gl_from_other_site");
            $col=16;#每页显示记录条数
            $page=$page_id;
			$gls=$gl_other->order("datetime")->limit($page*$col,$col)->select();
			$gls_d=$gl_other->order("datetime desc")->limit($page*$col,$col)->select();
			
			$result[1]=$gls;
			$result[2]=$gls_d;
			
			$this->ajaxReturn($result,"查询成功！",1);
			}
		
		
}

?>
