
$(document).ready(function() {
	/*提交新攻略*/
	$("#gl_sub_btn").click(function(){
		 var gl_theme=$("#user_info_fbgl_theme").val();
		 var gl_for_game=$("#user_info_fbgl_game").val();
		 var gl_content=$("#user_info_fbgl_content").val();
		 if(gl_theme.length<=0){
			 $('#user_info_add_gl_warning').text("请填写攻略主题");
			 return false;
			 }
		 if(gl_for_game.length<=0){
			  $('#user_info_add_gl_warning').text("请填写针对的游戏");
			 return false;
			 }	
		 if(gl_content.length<=0){
			  $('#user_info_add_gl_warning').text("请填写攻略的内容");
			 return false;
			 }		 
		 if(gl_content.length<=40){
			  $('#user_info_add_gl_warning').text("请填写攻略的内容不少于20个字");
			 return false;
			 }	  
		});	
		
});


