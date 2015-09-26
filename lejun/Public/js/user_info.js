$(document).ready(function() {
	
	$("#user_info_jt_show_wind_div").load("user_info.html");
	
	/*发表新攻略*/
    $("#user_info_publish_gl").bind("click",function(){//加载发表页面
		  $("#user_content").load("edit_gl.html");
		});
	
	/*显示用户信息*/
    $("#user_info_info").bind("click",function(){
		$("#user_info_jt_show_wind_div").load("user_info.html");
		});
	
	/*显示用户的帖子*/
	$("#user_info_tz").bind("click",function(){
	    $('#user_info_jt_show_wind_div').load("user_info_tz.html");
		});	
		
    /*显示用户的攻略*/
	$("#user_info_gl").bind("click",function(){
	    $('#user_info_jt_show_wind_div').load("user_info_gl.html");
		});	
	
	 /*显示用户的留言*/
	$("#user_info_ly").bind("click",function(){
	    $('#user_info_jt_show_wind_div').load("user_info_ly.html");
		});	
	
	
	/*显示消息*/
	$("#user_info_notice").bind("click",function(){
	    $("#user_content").load("user_info_notice.html");
		});
		
	
	/*完善用户信息*/
	$("#complete_user_info").bind("click",function(){
		$("#user_content").load("complete_user_infomation.html");
		});	
		
	/*修改密码信息*/
	$("#modify_pwd").bind("click",function(){
		$("#user_content").load("modify_pwd_page.html");
		});		
	
	/*修改图像*/
	$("#modify_photo").bind("click",function(){
		$("#user_content").load("modify_photo.html");
		});
	
	/**/	
    $("#user_info_publish_tz").bind("click",function(){
		$("#user_content").load("edit_tz.html");
		});		
	
});