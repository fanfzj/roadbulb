 $(document).ready(function(e) {
  	
	/*登陆框的设置*/
	$("#login-win-close-btn").bind("click",function(){
		   /*当取消登录时 将登陆框上的用户名和密码清楚*/
		   $('#username').val("");
		   $('#pwd').val("");
		   
		   $('#login-win').modal('hide');/*隐藏登陆框*/
		});
		
	/*注册框的设置*/	
	$("#register-win-close-btn").bind("click",function(){
		   $('#register-win').modal('hide');/*隐藏注册框*/
		});
		
		
	/*搜索*/		
	$('#search-text').bind("blur",function(){
		  $('#search-text').val("");/*当鼠标离开搜索框把搜索框清空*/
		});
	 
	 /*图片滑动*/
	 $('.carousel').carousel({
        interval: 2000   /*设置幻灯片的时间间隔*/
    })

 });