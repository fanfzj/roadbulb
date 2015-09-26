

$(document).ready(function() {
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
	 console.log(gl_header_bg_count);
	 for(var i=0;i<gl_header_bg_count;i++){
	   var gl_header_id=$.random_change(0,13);
	   $(".gl_header:eq("+i+")").addClass(gl_header_bg_colors[gl_header_id]);
   }
		 
		 
		 
});
