<?php
   class SearchAction extends CommonAction{
	  
	  public function do_search(){
         $search_content=$_POST['search_content'];
		 $search_kind=$_POST['search_kind'];
		 
		 if($search_kind==1){
			$gl_sphinx=new SphinxClient();
			$gl_sphinx->SetServer('localhost',9312);
			$gl_sphinx->SetMatchMode(SPH_MATCH_ANY);
		        $gl_sphinx->SetLimits(0,6); 
		  	$result=$gl_sphinx->Query("$search_content","main,delta");
		     //$this->assign("demo",$result);
                      
		       $ids=join(",",array_keys($result['matches']));
		       $cheats_arr=array();
		       $cheats_model=new Model("Cheats");
		       // $cheats_arr_demo=$cheats_model->query("select * from lj_cheats where cheats_id in ({$ids})");
		  $map["cheats_id"]=array('in',$ids);
		  $cheats_arr_demo=$cheats_model->where($map)->select();
		  if($cheats_arr_demo){
                     /*截取攻略的内容*/	 
		for($i=0;$i<count($cheats_arr_demo);$i++){
       	     $end=(strlen(strip_tags($cheats_arr_demo[$i]['content'])))/8;
		$str=strip_tags($cheats_arr_demo[$i]['content']);
			//$this->assign('demo',$end);
	        $content=substr_utf8($str,0,$end);
               $cheats_arr_demo[$i]['content']=$content;
			}   

		 /*关键词高亮*/
		 $options=array(
           "before_match"=>"<font style='font-weight:bold ;color:red'>",
          "after_match"=>"</font>",
  );
     
	   for($i=0;$i<count($cheats_arr_demo);$i++){
		 $rest=$gl_sphinx->buildExcerpts($cheats_arr_demo[$i],"main",$search_content,$options);
                 $cheats_arr[]=$rest;
	  }
		    //	$data['cheats_id']=$ids;
		    //	$cheats_arr=$cheats->where($data)->select();
		 
                  $this->assign("results_arr",$cheats_arr);
                         
                  /*找到攻略对应的用户 以及评论*/
                  /*找到评论的用户*/  /*找到攻略的评论*/
		  $user=new Model("User_information");	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($cheats_arr);
		  $cheats_user_arr=array();
		  $cheats_replays_count=array();
		  $a=0 ;
		  if($cheats_count){
		   for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$cheats_arr[$a++][11];
			  
			  $data3['Id']=$user_id;
			  $cheats_user=$user->where($data3)->select();
			  $cheats_user_arr[]=$cheats_user[0];
			  
			 
		      $data2['cheats_id']=$cheats_arr[$i][0];
		      $cheat_replays=$cheats_replay->where($data2)->select();
				
		      $cheats_replays_count[]=count($cheat_replays);
			}
			//$this->assign('a',$a);  
		    //$a=0;
			//$this->assign('cheats_user_arr',$cheats_user_arr);
		  }
		 $this->assign('results_replays_count',$cheats_replays_count);
		  $this->assign('results_user_arr',$cheats_user_arr); 
	          $this->assign('search_content',$search_content);	  
		  $this->display("search_result");
		  }else{
	          $this->assign("results_arr",null);
		  $this->display("search_result");
		 }	  
		 }
		 else if($search_kind==2){
		        $gl_sphinx=new SphinxClient();
			$gl_sphinx->SetServer('localhost',9312);
			$gl_sphinx->SetMatchMode(SPH_MATCH_ANY);
		        
		  	$result=$gl_sphinx->Query("$search_content","tz,tzdelta");
		     //	$this->assign("demo",$result);
                      
		       $ids=join(",",array_keys($result['matches']));
                       
		       $posts_arr=array();
		       $posts_model=new Model();
		       $posts_arr_demo=$posts_model->query("select * from lj_post_main where post_id in ({$ids})");
              if($posts_arr_demo){
                     /*截取攻略的内容*/	 
		for($i=0;$i<count($posts_arr_demo);$i++){
       	     $end=(strlen(strip_tags($posts_arr_demo[$i]['content'])))/8;
		$str=strip_tags($posts_arr_demo[$i]['content']);
			//$this->assign('demo',$end);
	        $content=substr_utf8($str,0,$end);
                $posts_arr_demo[$i]['content']=$content;
			}   

		 /*关键词高亮*/
		 $options=array(
           "before_match"=>"<font style='font-weight:bold ;color:red'>",
          "after_match"=>"</font>",
  );
     
	   for($i=0;$i<count($posts_arr_demo);$i++){
		 $rest=$gl_sphinx->buildExcerpts($posts_arr_demo[$i],"main",$search_content,$options);
                 $posts_arr[]=$rest;
	  }
		    //	$data['cheats_id']=$ids;
		    //	$cheats_arr=$cheats->where($data)->select();
                         
                  /*找到攻略对应的用户 以及评论*/
                  /*找到评论的用户*/  /*找到攻略的评论*/
		  $user=new Model("User_information");	
		  $posts_replay=new Model("Post_replay");
		  $posts_count=count($posts_arr);
		  $posts_user_arr=array();
		  $posts_replays_count=array();
		  $a=0 ;
		  if($posts_count){
		   for($i=0;$i<$posts_count;$i++) {
	             $user_id=$posts_arr[$a++][3];
			  
		     $data3['Id']=$user_id;
	   	     $posts_user=$user->where($data3)->select();
		     $posts_user_arr[]=$posts_user[0];
			  
			 
		      $data2['post_id']=$posts_arr[$i][0];
		      $posts_replays=$posts_replay->where($data2)->select();
				
		      $posts_replays_count[]=count($posts_replays);
		       
			}
		    //$a=0;
			//$this->assign('cheats_user_arr',$cheats_user_arr);
		  }
		  $this->assign("results_arr",$posts_arr);
		  $this->assign('results_replays_count',$posts_replays_count);
		  $this->assign('search_content',$search_content);
		  $this->assign('results_user_arr',$posts_user_arr); 
	 
	   	  $this->display("search_tz_result");  
		 }else{
		  $this->assign("results_arr",null);
		  $this->display("search_tz_result");		 
		 }
           }
	  }

     /*
	* 得到更多的攻略搜索结果
	*/
      public function get_more_cheats_result(){
         $page_id=$_POST['page_id'];
		 $search_content=$_POST['search_content'];

		 $gl_sphinx=new SphinxClient();
		 $gl_sphinx->SetServer('localhost',9312);
	     $gl_sphinx->SetMatchMode(SPH_MATCH_ANY);
		 $gl_sphinx->SetLimits($page_id*6,6); 
		 $result=$gl_sphinx->Query("$search_content","main,delta");
		     //$this->assign("demo",$result);
                      
		 $ids=join(",",array_keys($result['matches']));
		 $cheats_arr=array();
		 $cheats_model=new Model("Cheats");
		  $map["cheats_id"]=array('in',$ids);
		  $cheats_arr_demo=$cheats_model->where($map)->select();
		  if($cheats_arr_demo){
                     /*截取攻略的内容*/	 
		for($i=0;$i<count($cheats_arr_demo);$i++){
       	     $end=(strlen(strip_tags($cheats_arr_demo[$i]['content'])))/8;
		$str=strip_tags($cheats_arr_demo[$i]['content']);
			//$this->assign('demo',$end);
	        $content=substr_utf8($str,0,$end);
               $cheats_arr_demo[$i]['content']=$content;
			}   

		 /*关键词高亮*/
		 $options=array(
           "before_match"=>"<font style='font-weight:bold ;color:red'>",
          "after_match"=>"</font>",
  );
     
	   for($i=0;$i<count($cheats_arr_demo);$i++){
		 $rest=$gl_sphinx->buildExcerpts($cheats_arr_demo[$i],"main",$search_content,$options);
                 $cheats_arr[]=$rest;
	  }
		 
                //  $this->returnAjax("cheats_arr",$cheats_arr);    
                  /*找到攻略对应的用户 以及评论*/
                  /*找到评论的用户*/  /*找到攻略的评论*/
		  $user=new Model("User_information");	
		  $cheats_replay=new Model("Cheats_replay");
		  $cheats_count=count($cheats_arr);
		  $cheats_user_arr=array();
		  $cheats_replays_count=array();
		  $a=0 ;
		  if($cheats_count){
		   for($i=0;$i<$cheats_count;$i++) {
			  $user_id=$cheats_arr[$a++][11];
			  
			  $data3['Id']=$user_id;
			  $cheats_user=$user->where($data3)->select();
			  $cheats_arr[$i]['author']=$cheats_user[0];
			  
			 
		      $data2['cheats_id']=$cheats_arr[$i][0];
		      $cheat_replays=$cheats_replay->where($data2)->select();
				
			  $cheats_arr[$i]['cheats_replays_count']=count($cheat_replays);
			}
			//$this->assign('a',$a);  
		    //$a=0;
			//$this->assign('cheats_user_arr',$cheats_user_arr);
		  }
		  //$this->ajaxReturn($cheats_replays_count,"查询成功！",1); 
		  // $this->ajaxReturn($cheats_user_arr,"查询成功！",1);
		  $this->ajaxReturn($cheats_arr,"查询成功！",1);    
		  }else{
                  $this->ajaxReturn($null,"查询成功！",1);
		 }	 
      }
	  
	  
	  
	  
	  
	   /*
	* 得到更多的帖子搜索结果
	*/
      public function get_more_posts_result(){
         $page_id=$_POST['page_id'];
		 $search_content=$_POST['search_content'];

		 $post_sphinx=new SphinxClient();
		 $post_sphinx->SetServer('localhost',9312);
	     $post_sphinx->SetMatchMode(SPH_MATCH_ANY);
		 $post_sphinx->SetLimits($page_id*6,6); 
		 $result=$post_sphinx->Query("$search_content","tz,tzdelta");
                      
		 $ids=join(",",array_keys($result['matches']));
		 $posts_arr=array();
		 $posts_model=new Model("Post_main");
		  $map["post_id"]=array('in',$ids);
		  $posts_arr_demo=$posts_model->where($map)->select();
		  if($posts_arr_demo){
                     /*截取攻略的内容*/	 
		for($i=0;$i<count($posts_arr_demo);$i++){
       	     $end=(strlen(strip_tags($posts_arr_demo[$i]['content'])))/8;
		$str=strip_tags($posts_arr_demo[$i]['content']);
			//$this->assign('demo',$end);
	        $content=substr_utf8($str,0,$end);
            $posts_arr_demo[$i]['content']=$content;
			}   

		 /*关键词高亮*/
		 $options=array(
           "before_match"=>"<font style='font-weight:bold ;color:red'>",
          "after_match"=>"</font>",
  );
     
	   for($i=0;$i<count($posts_arr_demo);$i++){
		 $rest=$post_sphinx->buildExcerpts($posts_arr_demo[$i],"main",$search_content,$options);
               $posts_arr[]=$rest;
	  }   
                  /*找到攻略对应的用户 以及评论*/
                  /*找到评论的用户*/  /*找到攻略的评论*/
		  $user=new Model("User_information");	
		  $posts_replay=new Model("Post_replay");
		  $posts_count=count($posts_arr);
		  $posts_user_arr=array();
		  $posts_replays_count=array();
		  $a=0 ;
		  if($posts_count){
		   for($i=0;$i<$posts_count;$i++) {
			  $user_id=$posts_arr[$a++][3];
			  
			  $data3['Id']=$user_id;
			  $posts_user=$user->where($data3)->select();
			  $posts_arr[$i]['author']=$cheats_user[0];
			  
			 
		      $data2['post_id']=$posts_arr[$i][0];
		      $post_replays=$posts_replay->where($data2)->select();
				
			  $posts_arr[$i]['cheats_replays_count']=count($post_replays);
			}
		  }
		  $this->ajaxReturn($posts_arr,"查询成功！",1);    
		  }else{
          $this->ajaxReturn($null,"查询成功！",1);
		 }	 
      }
	  
	  

 }
          /*中文截取*/
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
