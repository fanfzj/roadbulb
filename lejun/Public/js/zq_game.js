

$(document).ready(function() {
	
	/*打开页面加载热门攻略的栏*/
	$("#zq_game_main").load("zq_game_hot_gl.html");
	
	/*jq 扩展函数 */
	$.extend({
	 //获取范围内的随机数
        random_change:function(min,max){
        return Math.floor(min+Math.random()*(max-min));
     }	 
	});	
	
	/*手机游戏专区 每条数据的头部 颜色变换*/
    var gl_header_bg_colors=['magenta','purple','teal','lime','brown','pink','orange','b1ue','red','green','marine','purple2','teal2','dark']; 
	 //console.log(gl_header_id);
	 var gl_header_bg_count=$("#gl_count").text();
	 //console.log(gl_header_bg_count);
	 for(var i=0;i<gl_header_bg_count;i++){
	   var gl_header_id=$.random_change(0,13);
	   $(".gl_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
		 
	/*鼠标移到那个导航移动卡尺哦*/
	$("#zq_game_nav_ul").children("li").children("a").mousemove(function(){
	    $(this).parent("li").addClass("active").siblings().removeClass('active');
		});
	
	
	/*头部导航的选中*/
	var game_list_id=$("#game_list_id").text();
	//alert(game_list_id);
	if(game_list_id==1){
		$("#nav_dj").parent("li").addClass("active").siblings().removeClass('active');
		}
	 if(game_list_id==2){
		$("#nav_sj").parent("li").addClass("active").siblings().removeClass('active');
		}	
	if(game_list_id==3){
		$("#nav_wy").parent("li").addClass("active").siblings().removeClass('active');
		}
	if(game_list_id==4){
		$("#nav_dw").parent("li").addClass("active").siblings().removeClass('active');
		}
	if(game_list_id==5){
		$("#nav_wye").parent("li").addClass("active").siblings().removeClass('active');
		}			
	
	
	
	/*加载最热攻略的页面*/
	$("#hot_gl").bind("click",function(){
		$("#zq_game_main").load("zq_game_hot_gl.html");
		}); 	
	
	/*加载最新攻略的页面*/	
	$("#latest_gl").bind("click",function(){
		$("#zq_game_main").load("zq_game_latest_gl.html");
		}); 
		
	/*加载最热帖子的页面*/
	$("#hot_tz").bind("click",function(){
		$("#zq_game_main").load("zq_game_hot_post.html");
		}); 
		
	/*加载最新攻略的页面*/	
	$("#latest_tz").bind("click",function(){
		$("#zq_game_main").load("zq_game_latest_post.html");
		}); 
				
		 
});
