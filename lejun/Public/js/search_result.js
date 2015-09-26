$(document).ready(function(){
   	/*jq 扩展函数 */
	$.extend({
	 //获取范围内的随机数
        random_change:function(min,max){
        return Math.floor(min+Math.random()*(max-min));
     }	 
	});	
	
	/*手机游戏专区 每条数据的头部 颜色变换*/
    var gl_header_bg_colors=['magenta','purple','teal','lime','brown','pink','orange','b1ue','red','green','marine','purple2','teal2','dark']; 
	 //console.log(gl_header_id);
	 var gl_header_bg_count=$("#gl_count").text();
	 console.log(gl_header_bg_count);
	 for(var i=0;i<gl_header_bg_count;i++){
	   var gl_header_id=$.random_change(0,13);
	  $(".search_result_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }

    /*点击加载更多的攻略搜索结果*/
	 $("#add_more_cheats_search_resultt").bind("click",function(){
         $("#add_more_cheats_search_resultt").hide();
		 $("#loading").show();
		  var page_id=$("#result_page_id").text();
          var search_content=$("#search_content").text();
	    /*加载最新手机游戏攻略*/
	    $.ajax({
			type:"POST",
			url:APP+"/Search/get_more_cheats_result",
			dataType:"json",
			data:{
				page_id:page_id,
				search_content:search_content,
				},
		     success: function(data){
		     var result=JSON.stringify(data.data); //讲json对象转化成字符串		
			if(result!="" && result!="null"){
			 var result_json=data.data;
			 var count = result_json.length;
			var str='';
			for(var i=0;i<count;i++){ 
       str=str+'<div class="search_result_contain"><div class="search_result_header"><h2><a class="title" href='+APP+'Show/show_gl?cheat_id='+result_json[i][0]+'>'+result_json[i][2]+'</a><a class="more" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -370px;" title="阅读全文" href='+APP+'/Show/show_gl?cheat_id='+result_json[i][0]+'></a></h2></div><div class="search_result_data"> <span class="search_result_time" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -168px">'+result_json[i][4]+'</span> <span class="search_result_ahthor" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -184px">'+result_json[i].author.username +'</span><span class="search_result_comment" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -200px">'+result_json[i].cheats_replays_count +'</span><span class="search_result_read_count" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -216px">'+result_json[i][5]+'</span></div><div class="search_result_content">'+result_json[i][3]+'.......</div></div>';
			}
  
   $("#result_main").append(str);
    //alert("hello");
   $("#result_page_id").text(parseInt(page_id)+1);
   /*标题栏颜色改变*/
  for(var i=parseInt(page_id)*6;i<(parseInt(page_id)+1)*6;i++){
	  var gl_header_id=$.random_change(0,13);
	  $(".search_result_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
   $("#add_more_cheats_search_resultt").show();
   $("#loading").hide();
   }else{
 	$("#add_more_cheats_search_result_div").children("a").text("没有更多搜索结果了");
        }
	 },
	 error:function(data){			 
	     alert("未知错误，点击刷新");
	         },
					 
	   });	 
	});		
	
	
	
	
	/*点击加载更多的帖子搜索结果*/
	 $("#add_more_posts_search_resultt").bind("click",function(){
         $("#add_more_cheats_search_resultt").hide();
		 $("#loading").show();
		  var page_id=$("#result_page_id").text();
          var search_content=$("#search_content").text();
	    /*加载最新手机游戏攻略*/
	    $.ajax({
			type:"POST",
			url:APP+"/Search/get_more_posts_result",
			data:{
				page_id:page_id,
				search_content:search_content,
				},
		     success: function(data){
		     var result=JSON.stringify(data.data); //讲json对象转化成字符串		
				//alert(count);
			if(result!="" && result!="null"){
			 var result_json=data.data;
			 var count = result_json.length;
			 var str='';
			for(var i=0;i<count;i++){ 
       str=str+'<div class="search_result_contain"><div class="search_result_header"><h2><a class="title" href='+APP+'Show/show_tz?post_id='+result_json[i][0]+'>'+result_json[i][1]+'</a><a class="more" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -370px;" title="阅读全文" href='+APP+'/Show/show_tz?post_id='+result_json[i][0]+'></a></h2></div><div class="search_result_data"> <span class="search_result_time" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -168px">'+result_json[i][4]+'</span> <span class="search_result_ahthor" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -184px">'+result_json[i].author.username +'</span><span class="search_result_comment" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -200px">'+result_json[i].cheats_replays_count +'</span><span class="search_result_read_count" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -216px">'+result_json[i][5]+'</span></div><div class="search_result_content">'+result_json[i][2]+'.......</div></div>';
			}
  
   $("#result_main").append(str);
    //alert("hello");
   $("#result_page_id").text(parseInt(page_id)+1);
   /*标题栏颜色改变*/
  for(var i=parseInt(page_id)*2;i<(parseInt(page_id)+1)*2;i++){
	  var gl_header_id=$.random_change(0,13);
	  $(".search_result_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
   }else{
 	$("#add_more_posts_search_result_div").children("a").text("没有更多搜索结果了");
        }
	 },
	 error:function(data){			 
	     alert("未知错误，点击刷新");
	         },
					 
	   });	 
	});		
	
});

