// JavaScript Document
$(document).ready(function() {
	
	/***
	 * 扩展函数
	 * @author nele nele0716@163.com 2014-1-19 
	 */
	$.extend({
		initeditor:function(){
			 CKEDITOR.replace( 'user_info_fbtz_content',{
		           //uiColor: '#14B8C4',
				   //  uiColor: 'blue',
				  // uiColor : '#9AB8F3',
				   uiColor:'#2F4F4F',
		          } );
		},
		
	 getContent:function(){
			 return CKEDITOR.instances.user_info_fbtz_content.getData();    //获取textarea的值  
		}
		
	});
	
	$.initeditor();
	
	/*点击发表帖子*/
	$("#tz_sub_btn").click(function(){
		 var tz_theme=$("#user_info_fbtz_theme").val();
		 ///var tz_content=$("#user_info_fbtz_content").val();
		 var tz_content=$.getContent();
		 var user_id=$("#user_id_hide").val();
		 if(tz_theme.length<=0){
			 $('#user_info_add_tz_warning').text("请填写攻略主题");
			 return false;
			 }
		 if(tz_content.length<=0){
			  $('#user_info_add_tz_warning').text("请填写攻略的内容");
			 return false;
			 }		 
		/* if(tz_content.length<=40){
			  $('#user_info_add_tz_warning').text("请填写攻略的内容不少于20个字");
			 return false;
			 }	 */
			  
		$.ajax({
			type:"post",
			url:APP+"/Publish/do_publish_tz",
			dataType:"text",
			data:{
			    tz_theme:tz_theme,
				tz_content:tz_content,
				user_id:user_id,
				},
		     success: function(data){
				 window.location.href=APP;
				 //window.location.reload();
				 },
			 error:function(data){
				 alert("未知错误点击刷新");
				 window.location.reload();
				 },	 
			})	 
			  
		});	
		
 $("#tz_reset_btn").click(function(){
	 $('#user_info_add_gl_warning').text("");
	 });
});
