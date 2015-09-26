// JavaScript Document

$(document).ready(function() {
  	$( "#user_info_birthdy" ).datepicker({
			changeMonth: true,
			changeYear: true
		});

	/*提交修改*/
	$("#complete_user_info_sub_btn").bind("click",function(){
	    var username=$("#user_info_username").val();
		var user_info_email=$("#user_info_email").val();
		var user_info_qq=$("#user_info_qq").val();
		var user_info_phone=$("#user_info_phone").val();
		var user_info_address=$("#user_info_address").val();
		var user_info_birthdy=$("#user_info_birthdy").val();
    
		if(username.length<=0){
			$("#complete_user_info_warning").text("用户名不能为空");
			return false;
			}
			$.ajax({
			type:"POST",
			url:APP+"/UserInfo/complete_user_info",
			data:{
				username:username,
				user_info_email:user_info_email,
				user_info_qq:user_info_qq,
				user_info_phone:user_info_phone,
				user_info_address:user_info_address,
				user_info_birthdy:user_info_birthdy,
				},
			success:function(data){
				var s=data.substr(0,1);
				if(s==1){
					alert("信息完善成功，点击刷新");
				     window.location.reload();//刷新页面
					}
				else{
					alert("完善信息出现问题，点击刷新，重新完善");
					}	
				},
			error:function(data){
				alert(error);
				},		
	     });
	
		});	
	 
	  
	
});