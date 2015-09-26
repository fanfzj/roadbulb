
// JavaScript Document

$(document).ready(function() {
	/*提交修改*/
	$("#modify_pwd_sub_btn").bind("click",function(){
	    var old_pwd=$("#modify_pwd_user_info_old_pwd").val();
		var new_pwd=$("#modify_pwd_user_info_new_pwd").val();
		var new_pwd2=$("#modify_pwd_user_info_new_pwd_second").val();
		if(old_pwd.length<=0){
			$("#modify_pwd_warning").text("原始密码不能为空");
			return false;
			}
		if(new_pwd.length<=0){
			$("#modify_pwd_warning").text("新密码不能为空");
			return false;
			}
		if(new_pwd2.length<=0){
			$("#modify_pwd_warning").text("新密码重复不能为空");
			return false;
			}	
		if(new_pwd!=new_pwd2){
			$("#modify_pwd_warning").text("两次输入的新密码不一致");
			return false;
			}
		
		$.ajax({
			type:"POST",
			url:APP+"/UserInfo/modify_pwd",
			data:{
				old_pwd:old_pwd,
				new_pwd:new_pwd,
				},
			success:function(data){
				var s=data.substr(0,1);
				if(s==1){
				alert("修改成功，点击刷新")
				window.location.reload();//刷新页面
					}
				 else if(s==2){
			   $("#modify_pwd_warning").text("原始密码不正确");
			   return false;
					 }else {
					alert("修改错误，点击刷新，重新修改");	 
						 }	
				},	
			error:function(data){
				alert("未知错误，点击刷新");
				},
			
			});
		
					
		});	
	
	
	});