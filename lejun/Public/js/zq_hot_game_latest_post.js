// JavaScript Document

$(document).ready(function() {
   var game_id=$("#zq_hot_game_game_id").text();
  /*jq 扩展函数 */
	$.extend({
	 //获取范围内的随机数
        random_change:function(min,max){
        return Math.floor(min+Math.random()*(max-min));
     }	 
	});	
	
	/*手机游戏专区 每条数据的头部 颜色变换*/
  var gl_header_bg_colors=['magenta','purple','teal','lime','brown','pink','orange','b1ue','red','green','marine','purple2','teal2','dark']; 
  
  
  var page_id_str=$("#zq_hot_game_latest_post_page_id").text();
  var page_id=parseInt(page_id_str);
	 /*初始页面加载最新手机游戏攻略*/
	  $.ajax({
			type:"POST",
			//url:APP+"/Zq/get_latest_gl",
			data:{
				page_id:page_id,
				game_id:game_id,
				},
		     success: function(data){
				var result=JSON.stringify(data.data); //讲json对象转化成字符串
				var status=data.status;
			
				//alertu(result);
				//alert(count);
			if(result!="" && result!="null"){ 
			var cheats_json=data.data;
		    var count = cheats_json.length;	
		    var str='';
			for(var i=0;i<count;i++){ 
str=str+'<div class="row" style="margin-top:20px;"><div class="span2">图片</div><div class="span6" style=""><!--文章的标题栏--><div class="gl_header"><h2><a class="title" title="'+cheats_json[i].theme+'" href="__APP__/Show/show_gl?cheat_id={$vo.cheats_id}">'+cheats_json[i].theme+'</a><a class="more" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -370px;" title="阅读全文" href="__APP__/Show/show_gl?cheat_id={$vo.cheats_id}"></a></h2> </div> <!--基本信息--><div class="gl_data"><span class="gl_time" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -168px">'+cheats_json[i].datetime+'</span><span class="gl_ahthor" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -184px">未实现</span><span class="gl_comment" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -200px">未实现</span><span class="gl_read_count" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -216px">'+cheats_json[i].clicks+'</span><span class="gl_author"></span><span class="gl_praise"></span></div><!--内容--><div class="gl_content">{$vo.content}</div></div></div>';
			}
  
   $("#zq_hot_game_latest_post").append(str);
   
   $("#zq_hot_game_latest_post_page_id").text(parseInt(page_id)+1);
   
   /*标题栏颜色改变*/
   for(var i=0;i<count;i++){
	   var gl_header_id=$.random_change(0,13);
	   $(".gl_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
	}else{
		$("#add_more_latest_post_div").children("a").text("没有更多最新攻略了");
		
		}
	 },
			 error:function(data){
				 
			    alert("未知错误，点击刷新");
			    },
					 
			}); 
	
	
	
      /*****************************************************************************/
	
	
	 $("#add_more_latest_post").bind("click",function(){
		 var page_id=$("#zq_hot_game_latest_post_page_id").text();
	    /*加载最新手机游戏攻略*/
	    $.ajax({
			type:"POST",
			//url:APP+"/Zq/get_latest_gl",
			data:{
				page_id:page_id,
				game_id:game_id,
				},
		     success: function(data){
				var result=JSON.stringify(data.data); //讲json对象转化成字符串		
				//alert(result);
				//alert(count);
			if(result!="" && result!="null"){
			 var cheats_json=data.data;
			 var count = cheats_json.length;
				var str='';
			for(var i=0;i<count;i++){ 
str=str+'<div class="row" style="margin-top:20px;"><div class="span2">图片</div><div class="span6" style=""><!--文章的标题栏--><div class="gl_header"><h2><a class="title" title="'+cheats_json[i].theme+'" href="__APP__/Show/show_gl?cheat_id={$vo.cheats_id}">'+cheats_json[i].theme+'</a><a class="more" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -370px;" title="阅读全文" href="__APP__/Show/show_gl?cheat_id={$vo.cheats_id}"></a></h2> </div> <!--基本信息--><div class="gl_data"><span class="gl_time" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -168px">'+cheats_json[i].datetime+'</span><span class="gl_ahthor" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -184px">未实现</span><span class="gl_comment" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -200px">未实现</span><span class="gl_read_count" style="background:url('+IMG+'/nav-icons.png) no-repeat 0 -216px">'+cheats_json[i].clicks+'</span><span class="gl_author"></span><span class="gl_praise"></span></div><!--内容--><div class="gl_content">{$vo.content}</div></div></div>';
			}
  
   $("#zq_hot_game_latest_post").append(str);
   $("#zq_hot_game_latest_post_page_id").text(parseInt(page_id)+1);
   /*标题栏颜色改变*/
   for(var i=0;i<count;i++){
	  var gl_header_id=$.random_change(0,13);
	   $(".gl_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
   }else{
		$("#add_more_latest_post_div").children("a").text("没有更多最新攻略了");
		}
	 },
			 error:function(data){
				 
			    alert("未知错误，点击刷新");
			    },
					 
			});	 
		})		
		
	   
	});