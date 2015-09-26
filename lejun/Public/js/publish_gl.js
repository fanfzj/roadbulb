// JavaScript Document
$(document).ready(function() {
	
	/***
	 * 扩展函数
	 * @author nele nele0716@163.com 2014-1-19 
	 */
	$.extend({
		initeditor:function(){
			 CKEDITOR.replace( 'user_info_fbgl_content',{
		           //uiColor: '#14B8C4',
				   //  uiColor: 'blue',
				  // uiColor : '#9AB8F3',
				   uiColor:'#2F4F4F',
		          } );
		},
	 getContent:function(){
			 return CKEDITOR.instances.user_info_fbgl_content.getData();    //获取textarea的值  
		}	
	});	
	$.initeditor();
	
	
	/*当游戏类型改变获取游戏选项*/
	$("#game_list_select").change(function(){
		var game_list_select=$("#game_list_select").val();
		var game_small_list_select=$("#game_small_list_select").val();
		//alert(game_small_list_select);
		/*当游戏的大类改变时，游戏菜单随之改变*/
		$.ajax({
			type:"post",
			url:APP+"/Publish/get_games",
			dataType:"json",
			data:{
			  game_list_select:game_list_select,
			  game_small_list_select:game_small_list_select,
				},
		     success: function(data){
			  var result=JSON.stringify(data.data);
				if(result!="" && result!="null"){ 
				 var games_json=data.data;
		         var count = games_json.length;	
		         var str='';
				 $("#fbgl_game_warning").html("找到相关游戏，点击<a id='show_games_a'>选择</a>");
			$("#show_games_a").css("cursor","pointer");	
			$("#show_games_a").click(function(){
			$("#show_games_modal_win").modal("show");
			 var str='<ul id="games_list_ul">';
			 for(var i=0;i<count;i++){
			   str=str+"<li><input type='radio' name='radio' value="+games_json[i].game_id+"/><span class='game_name'>"+games_json[i].game_name+"</span></li>" ;
			}
				str=str+"</ul><div id='add_game'><a id='add_game_btn'>增加游戏</a></div>"	;
		        $("#games_list").html(str);
				$("#add_game_btn").css("cursor","pointer");
				
			$("#add_game_btn").click(function(){
			     $("#show_games_modal_win").modal("hide"); 
			     $("#add_game_win").modal("show");
				 });	 		 
				});	 
				}else{
		if(game_list_select!=0&&game_small_list_select!=0){
			 $("#fbgl_game_warning").html("未找到对应的游戏，请<a id='add_games_a'>自定义添加</a>");
				$("#add_games_a").css("cursor","pointer");	
				$("#add_games_a").click(function(){
			$("#add_game_win").modal("show");//显示增加游戏窗口
					});
					}else{
			$("#fbgl_game_warning").html("请，选择游戏的分类");	
						}
					}
  			
	
		
		},
	  error:function(data){
				alert("未知错误，请刷新");
				 },	 
			})	 	
	 });
	 	
	 /*当游戏小类型改变获取游戏选项*/
	$("#game_small_list_select").change(function(){
		var game_list_select=$("#game_list_select").val();
		var game_small_list_select=$("#game_small_list_select").val();
		//alert(game_small_list_select);
		/*当游戏的大类改变时，游戏菜单随之改变*/
		$.ajax({
			type:"post",
			url:APP+"/Publish/get_games",
			dataType:"json",
			data:{
			  game_list_select:game_list_select,
			  game_small_list_select:game_small_list_select,
				},
		     success: function(data){
				var result=JSON.stringify(data.data);
				if(result!="" && result!="null"){ 
				 var games_json=data.data;
		         var count = games_json.length;	
		         
				 $("#fbgl_game_warning").html("找到相关游戏，点击<a id='show_games_a'>选择</a>");
			$("#show_games_a").css("cursor","pointer");	
			
			$("#show_games_a").click(function(){//显示游戏列表的框
			$("#show_games_modal_win").modal("show");
			 var str='<ul id="games_list_ul">';
			 for(var i=0;i<count;i++){
			   str=str+"<li><input type='radio' name='radio' value="+games_json[i].game_id+"><span>"+games_json[i].game_name+"</span></li>" ;
					}
				str=str+"</ul><div id='add_game'><a id='add_game_btn'>增加游戏</a></div>"	;
		        $("#games_list").html(str);
				$("#add_game_btn").css("cursor","pointer");
				
			$("#add_game_btn").click(function(){
			     $("#show_games_modal_win").modal("hide"); 
			     $("#add_game_win").modal("show");
				 });
		});	
				}
		else{
				if(game_list_select!=0&&game_small_list_select!=0){
			 $("#fbgl_game_warning").html("未找到对应的游戏，请<a id='add_games_a'>自定义添加</a>");
				$("#add_games_a").css("cursor","pointer");	
				$("#add_games_a").click(function(){
				 $("#add_game_win").modal("show");//显示增加游戏窗口
					});
					}else{
			$("#fbgl_game_warning").html("请，选择游戏的分类");	
						}
					}		
		  },
			 error:function(data){
				 alert("未知错误，请刷新");
				 },	 
			})	 	
	 });
	
	
	
   $("#show_games_win_cancel_btn").click(function(){
	  $('#show_games_modal_win').modal('hide');/*隐藏游戏列表框框*/
				});		
					
	 $("#add_game_win_cancel_btn").click(function(){//关闭增加游戏框
		$("#add_game_win").modal("hide");	
		});
	 
   $("#game_seleck_ok").click(function(){//提交游戏选择
		var selecked_game_id=$("input[name='radio']:checked").val();
        var selecked_game_name=$("input[name='radio']:checked").parent("li").children("span").text();
		$('#show_games_modal_win').modal('hide');/*隐藏游戏列表框框*/
		var game_warning_str=selecked_game_name+"<span id='selected_game_id' style='display:none'>"+selecked_game_id+"</span>"
		$("#fbgl_game_warning").html(game_warning_str);
		 });
	
	
	/*提交增加游戏*/
	$("#add_game_sub_btn").bind("click",function(){
	    var game_list_select=$("#add_game_list_select").val();
		var game_small_list_select=$("#add_game_small_list_select").val();
		var game_name=$("#add_game_text").val();
		if(game_list_select==0){
			$("#add_game_warning").text("请选择游戏的类型");
			return false;
			}
		if(game_small_list_select==0){
			$("#add_game_warning").text("请选择游戏的类型");
			return false;
			}
		if(game_name.length<=0){
		   $("#add_game_warning").text("请填写游戏名字");
			return false;
			}	
		$("#add_game_win").modal("hide");	
		$.ajax({
			type:"post",
			url:APP+"/Publish/add_game",
			data:{
				game_list_large:game_list_select,
				game_list_small:game_small_list_select,
				game_name:game_name,
				},
			success:function(data){
				var game_id=data.substr(0,2);
		  var game_warning_str=game_name+"<span id='selected_game_id' style='display:none'>"+game_id+"</span>"
		$("#fbgl_game_warning").html(game_warning_str);
				},	
		    error: function(){
				alert("未知错误点击刷新");
				},		
			});	
			
				
		});
	
	
	
	/*提交发表攻略*/
	$("#gl_sub_btn").click(function(){
		 var gl_theme=$("#user_info_fbgl_theme").val();//获取攻略主题
		 var gl_for_game_id=$("#selected_game_id").text();//获取攻略针对的游戏
		 var gl_content=$.getContent();//获取攻略内容
		 var user_id=$("#user_id_hide").val();
		 
		 var game_large=$("#game_list_select").val(); //获取当前游戏大分类 
		 var game_small=$("#game_small_list_select").val();//获取当前游戏小分类
		 if(gl_theme.length<=0){
			 $('#user_info_add_gl_warning').text("请填写攻略主题");
			 return false;
			 }
		 if(game_large==0){
			 $('#user_info_add_gl_warning').text("请选择游戏分类");
			 return false;
			 }
	 	if(game_small==0){
			 $('#user_info_add_gl_warning').text("请选择游戏分类");
			 return false;
			 }		 
		 if(!gl_for_game_id){
			  $('#user_info_add_gl_warning').text("请填写针对的游戏");
			 return false;
			 }	
		 if(gl_content.length<=0){
			  $('#user_info_add_gl_warning').text("请填写攻略的内容");
			 return false;
			 }	
	    	 		 	 
		 /*if(gl_content.length<=40){
			  $('#user_info_add_gl_warning').text("请填写攻略的内容不少于20个字");
			 return false;
			 }	 */ 
			 
		$.ajax({
			type:"post",
			url:APP+"/Publish/do_publish_gl",
			data:{
			    gl_theme:gl_theme,
				gl_for_game_id:gl_for_game_id,
				gl_content:gl_content,
				game_list_large:game_large,
				game_list_small:game_small,
				user_id:user_id,
				},
		     success: function(data){
				 alert("发表成功");
				 window.location.href=APP;
				 //window.location.reload();
				 },
			 error:function(data){
				 alert("未知错误点击刷新");
				 window.location.reload();
				 },	 
			})	 	 
			 
			 
			 
		});	
		
		
	 /*点击重置时清除提示框*/
	 $("#gl_reset_btn").click(function(){
		 $('#user_info_add_gl_warning').text("");
		 });		
});
