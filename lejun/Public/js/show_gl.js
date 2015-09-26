// JavaScript Document
$(document).ready(function() {
    /***
	 * 扩展函数
	 * @author nele nele0716@163.com 2014-1-19 
	 */
	$.extend({
		initeditor:function(){
			 CKEDITOR.replace( 'gl_replay_content',{
		           //uiColor: '#14B8C4',
				   //  uiColor: 'blue',
				  // uiColor : '#9AB8F3',
				   uiColor:'#2F4F4F',
		          } );
		},
	   getContent:function(){
	  return CKEDITOR.instances.gl_replay_content.getData();    //获取textarea的值  
		}	
	});	
	$.initeditor();
	
	
	/*点击提交攻略回复*/
	$("#sub_gl_replay").bind("click",function(){
		 
		 var user_id_hide=$("#user_id_hide").val();
		 var gl_id_hide=$("#gl_id_hide").val();
		 var gl_replay_content=$.getContent();
		 
		if(gl_replay_content.length<=0){
		   $("#gl_replay_warning").text("攻略回复不能为空");
		   return false;
		 }
		
      /*$.post(APP+'/Show/do_gl_replay',{gl_replay_content:gl_replay_content,user_name:user_name_hide,gl_id:gl_id_hide},function(data){alert(data);});*/
		
		$.ajax({
			type:"post",
			url:APP+"/Show/do_gl_replay",
			data:{
			    gl_replay_content:gl_replay_content,
				user_id:user_id_hide,
				gl_id:gl_id_hide,
				},
		     success: function(data){
				var s=data.substr(0,1);
				if(s==1){
					$('#login-win').modal({
					backdrop:true,
					keyboard:true,
					show:true
				});
			   $("#no_login_warning").css("display","block");
					return false;
				}else{
			      //window.location.href=APP;
				alert("回复成功，点击刷新");
				window.location.reload();//刷新页面
					}
				 },
			 error:function(data){
			    alert("未知错误，点击刷新");
			    //setTimeout(console.log("asdasd"),1000000000)
				// window.location.reload();
			    },	 
			}); 
			 
		});
	
	
	/*点击攻略赞*/
	$("#gl_zan").bind("click",function(){
		var gl_id_hide=$("#gl_id_hide").val();
                
	    	$.ajax({
			type:"post",
			url:APP+"/Show/do_gl_praise",
			data:{
			  gl_id:gl_id_hide,
			},
		     success: function(data){
			  var s=data.substr(0,1);
				if(s==2){
					$('#login-win').modal({
					backdrop:true,
					keyboard:true,
					show:true
				});}
		   else if(s==0){	
		   $("#praise_warning").text("你今天已经赞过该攻略");
		   }else if(s==1){
		      var praise_count_str=$("#praise_count").text();
              var praise_count=parseInt(praise_count_str)+1;
              var praise_count_add=$("#praise_count").text(praise_count);      }
		     },
		    error:function(data){
		    
		    }	
                 });

	      /*	$.post(APP+"/Show/do_gl_praise",{gl_id:gl_id_hide},function(){
		      //	window.location.reload();//刷新页面
		         var praise_count_str=$("#praise_count").text();
                         var praise_count=parseInt(praise_count_str);
                         var praise_count_add=$("#praise_count").text(praise_count);
			});*/
		});
	
});
