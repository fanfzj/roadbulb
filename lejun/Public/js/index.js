$(document).ready(function(e) {
  	
	
	/*鼠标移到那个导航,改导航高亮*/
	$("#header_nav_ul").children("li").children("a").mousemove(function(){
	    $(this).parent("li").addClass("active").siblings().removeClass('active');
		});
		
		
	
	/*专区内部颜色变化*/
    /*jq 扩展函数 */
	$.extend({
	 //获取范围内的随机数
        random_change:function(min,max){
        return Math.floor(min+Math.random()*(max-min));
     }	 
	});	
	
	
    var gl_header_bg_colors=['magenta','purple','teal','lime','brown','pink','orange','b1ue','red','green','marine','purple2','teal2','dark']; 
    //var four_color=Array(10);
	/*手机游戏专区 每条数据的头部 颜色变换*/		
				
	
	/*登陆框的设置*/
	$("#login-win-close-btn").bind("click",function(){
		   /*当取消登录时 将登陆框上的用户名和密码清楚*/
		   $('#username').val("");
		   $('#pwd').val("");
		   $('#code').val("");
		   $("#login_warning").text("");
		   $("#username-warning").text("");
		   $("#pwd-warning").text("");
		   $("#code-warning").text("");
		   $('#login-win').modal('hide');/*隐藏登陆框*/
		});
		
		
     $("#username").bind("blur",function(){//离开用户框的事件
		  var username=$("#username").val();
		  var len=username.length;
		   if(len<=0){
			   $("#username-warning").text("请输入用户名");
			   }else{
				$("#username-warning").text("");   
			}
		 });	
		 
	$("#pwd").bind("blur",function(){//离开密码框的事件
		  var pwd=$("#pwd").val();
		  var len=pwd.length;
		   if(len<=0){
			   $("#pwd_warning").text("请输入密码");
			   }else{
				$("#pwd_warning").text("");   
			}
		 });
		 
		 
     $("#code").bind("blur",function(){//离开验证码框的事件
		  var code=$("#code").val();
		  var len=code.length;
		   if(len<=0){
			   $("#code_warning").text("请输入验证码");
			   }else{
				$("#code_warning").text("");   
			}
		 });		 	
	
	 
	 /*登陆是的各种操作*/
	$("#login-sub-btn").bind("click",function(){//提交登陆
		      var username=$("#username").val();
			  var pwd=$("#pwd").val();
			  var code=$("#code").val();
			  
			  var name_len=username.length;
			  var pwd_len=pwd.length;
			  var code_len=code.length;
			  if(name_len<=0){
				  $("#login_warning").text("用户名不能为空！");
				  return  false;
				  }
			  if(pwd_len<=0){
				  $("#login_warning").text("密码不能为空！");
				  return  false;
				  }
		     if(code_len<=0){
				  $("#login_warning").text("验证码不能为空！");
				  return  false;
				  }		  
             
			 /*$.ajax({
				 type:'POST',
				 url:'index.php/Login/do_login',
				 data:{
					 username:username,pwd:pwd,code:code 
					 },
			     success: function(data){
					 alert(data);
					if(data=='验证码错误'){
						$("#login_warning").text("验证码输入错，请重新误");
						}
				    if(data=='1'){
						$("#login_warning").text("用户名或密码错误，请重新输入");
						}
					else{
						alert(data);
						}	
					 },	
				 error:function(data){
					alert(data);
					}	 	 
				 });*/
				 
			$.post(APP+"/Login/do_login",{username:username,pwd:pwd,code:code},    function(data){		 
					 var s=data.substr(0,1);
				   if(s=='0'){
						$("#login_warning").text("验证码输入错，请重新输入");
						}
				    else if(s=='1'){
						$("#login_warning").text("用户名或密码错误，请重新输入");
						}
					else if(s=='2'){
				       // window.location.reload();//刷新页面
						window.location.href=APP+'/Index/index_index';
						}
				    else{
						$("#login_warning").text("未知错误！");
						}		
			});
					 
				 
		});
	
		
		
	/*确认退出的设置*/	
	$("#logout-cancel-btn").bind("click",function(){
		   $('#confire-logout-win').modal('hide');/*隐藏注册框*/
		});
	
	
	
	/*注册是的各种操作*/
	var isReg=0;
	$("#reg_username").bind("blur",function(){//离开用户名框的操作
		 var username=$("#reg_username").val();
		 var username_len=username.length;
		 if(username_len<=0){
			 $("#reg_username_warning").text("请输入用户名").css("color","#F00");
			 }else{
			 $.post(APP+"/Register/checkUserName",{username:username},function(data){
				 var s=data.substr(0,1);
				 if(s=='1'){
			     $("#reg_username_warning").text("该用户名已被注册").css("color","#F00");
				 isReg=1;
				   }
				else if(s=='0'){
				 $("#reg_username_warning").text("该用户名以可用").css("color","#0F6");
				 isReg=0;	  
					  } 
			    else{
				  $("#reg_username_warning").text("未知错误请刷新");	
				   } 
				 });	 
				 }
			 
		});
		
		$("#reg_pwd").bind("blur",function(){//离开密码框的操作
		 var pwd=$("#reg_pwd").val();
		 var pwd_len=pwd.length;
		 if(pwd_len<=0){
			 $("#reg_pwd_warning").text("密码不能为空，请输入密码");
			 }
	    else if(pwd_len<6){
           $("#reg_pwd_warning").text("密码不能少于6位");	 
			}		 
		else{
			$("#reg_pwd_warning").text("");	 
				 }
		});
		
		$("#reg_pwd_second").bind("blur",function(){//离开密码重框的操作
		 var pwd_second=$("#reg_pwd_second").val();
		 var pwd=$("#reg_pwd").val();
		 var pwd_second_len=pwd_second.length;
		 if(pwd_second_len<=0){
			 $("#reg_pwd_second_warning").text("密码重复不能为空");
			 }
		 else if(pwd_second_len<6){
			 $("#reg_pwd_second_warning").text("密码重复不能少于6位");
			 }	 
		 if(pwd_second!=pwd){
			 $("#reg_pwd_second_warning").text("两次密码不一致");	 
		 }
		 if(pwd==pwd_second!=0){
			 $("#reg_pwd_second_warning").text("");
			 $("#reg_pwd_warning").text();	 
			 }
		});
		
		$("#reg_email").bind("blur",function(){//离开邮箱框的操作
		 var email=$("#reg_email").val();
		 var email_len=email.length;
		 if(email_len<=0){
			 $("#reg_email_warning").text("邮箱名不能为空").css("color","#F00");
			 }else{
			  $("#reg_email_warning").text("");	
			   var reyx= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
               if(!(reyx.test(email))){
				 $("#reg_email_warning").text("邮箱格式不正确").css("color","#F00");
				   }else{
				$("#reg_email_warning").text("邮箱格式正确").css("color","#0F3");     
					   }
				 }
		});

	$("#sub_reg_btn").bind("click",function(){//提交注册
	      var username=$("#reg_username").val();
          var pwd=$("#reg_pwd").val();
		  var pwd_second=$("#reg_pwd_second").val();
		  var email=$("#reg_email").val();
		  var reyx= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		  if(isReg==1){
			 $("#reg_warning").text("该用户已被注册");
			  return false;
			   }
		   if(username.length==0){
			  $("#reg_warning").text("用户名不能为空");
			  return false;
			  }
		  if(pwd.length==0){
			  $("#reg_warning").text("密码不能为空");
			  return false;
			  }
		  if(pwd.length<6){
			 $("#reg_warning").text("密码不能少于6位");
			  return false;
			  }	   
		  if(pwd_second.length==0){
			  $("#reg_warning").text("密码重复不能为空");
			  return false;
			  }
		  if(email.length==0){
			  $("#reg_warning").text("邮箱不能为空");
			  return false;
			  }	
		    
		  if(pwd!=pwd_second){
			  $("#reg_warning").text("两次密码不一致");
			  return false;
			  }
		  
		   if(!(reyx.test(email))){
				 $("#reg_warning").text("邮箱格式不正确");
				  return false;
		       }
		  $.post(APP+"/Register/do_register",{username:username,pwd:pwd,email:email},      function(data){
				var s=data.substr(0,4);
				if(s=="注册成功"){
				   window.location.href=APP;
				}
             })
			  
		});
	
	$("#sub_reset_btn").bind("click",function(){//重置按钮的触发的事件
		$("#reg_warning").text("");
        $("#reg_username_warning").text("");
		$("#reg_pwd_warning").text("");
	    $("#reg_pwd_second_warning").text("");
		$("#reg_email_warning").text("");
		});
	
	
		
		
	/*搜索*/		
	/*$('#search_text').bind("blur",function(){
		  $('#search_text').val("");/*当鼠标离开搜索框把搜索框清空*/
		//});
	 
	$("#search_btn").bind("click",function(){
		     var search_content=$("#search_text").val();
			 var search_kind=$("#search_kind").val();
			 
			 if(search_content.length<=0){
				  alert("搜索内容不能为空");
				  return false;
				 };
				 
			$("#search_form").submit();
		 });
	 
	 
	 /*图片滑动*/
	 $('.carousel').carousel({
        interval: 2000   /*设置幻灯片的时间间隔*/
    });
	
	
	/*加载最新公告*/
	
	
	
	
	
	
	/*其他网站的攻略翻页*/
	$("#prev").bind("click",function(){
		var page_id=$("#page_id").text();
		if(page_id==1){
			return false;
			}
		else{
			$.ajax({
				type:"post",
				url:APP+"/Index/next_page",
				data:{page_id:page_id},
				success:function(data){
				var result=JSON.stringify(data.data); //讲json对象转化成字符串
				if(result!="" && result!="null"){
					 var gl12=data.data;
					 var count = gl12[1].length;
					 var str1="<ul>";
					 var str2="<ul>";
					 for(var i=0;i<count;i++){
						 str1=str1+"<li><a href="+gl12[1][i].link+"target='_blank'>"+gl12[1][i].theme+"</a><li>";
						 }
				     str1=str1+"</ul>";	
					 
					 	 
					 $("#content_left").html(str1); 
					  for(var i=0;i<count;i++){
						 str2=str2+"<li><a href="+gl12[2][i].link+"target='_blank'>"+gl12[2][i].theme+"</a><li>";
						 }
				     str2=str2+"</ul>";		 
					 $("#content_right").html(str2); 	
					 
					 $("#page_id").html(parseInt(page_id)-1); 
			      }
					
			    }  
				});
			}	
		});

    $("#next").bind("click",function(){
		var page_count=$("#page_count").val();
		
		var page_id=$("#page_id").text();
		var page_id_int=parseInt(page_id);
		var page_count_int=parseInt(page_count);
		if(page_id_int>page_count_int){
			return false;
			}
		else{
			$.ajax({
				type:"post",
				url:APP+"/Index/next_page",
				data:{page_id:page_id},
				success:function(data){
				var result=JSON.stringify(data.data); //讲json对象转化成字符串
				if(result!="" && result!="null"){
					 var gl12=data.data;
					 var count = gl12[1].length;
					 var str1="<ul>";
					 var str2="<ul>";
					 for(var i=0;i<count;i++){
						 str1=str1+"<li><a href="+gl12[1][i].link+" target='_blank'>"+gl12[1][i].theme+"</a><li>";
						 }
				     str1=str1+"</ul>";	
					 
					 	 
					 $("#content_left").html(str1); 
					  for(var i=0;i<count;i++){
						 str2=str2+"<li><a href="+gl12[2][i].link+" target='_blank'>"+gl12[2][i].theme+"</a><li>";
						 }
				     str2=str2+"</ul>";		 
					 $("#content_right").html(str2); 	
					 
					 $("#page_id").html(parseInt(page_id)+1); 
			      }
					
			    }  
				});
			}	
		}); 

 });