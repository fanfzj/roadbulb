
<?php 
include("../conn/conn.php");
function color($number)
{
	$number=$number%10;
	if($number==0)
	return "#F1A30B";
	if($number==1)
	return "#835A2C";
	if($number==2)
	return "#9C8611";
	if($number==3)
	return "#A20025";
	if($number==4)
	return "#1BA0E1";
	if($number==5)
	return "#D90073";
	if($number==6)
	return "#6A00FF";
	if($number==7)
	return "#E51400";
	if($number==8)
	return "#6D8764";
	if($number==9)
	return "#D8C101";
}
function substr_CN($str,$mylen){       
$len=strlen($str);
$content='';
$count=0;
for($i=0;$i<$len;$i++){
   if(ord(substr($str,$i,1))>127){
    $content.=substr($str,$i,2);
    $i++;
   }else{
    $content.=substr($str,$i,1);
   }
   if(++$count==$mylen){
    break;
   }
}
echo $content;
}
?>
<link href="../Public/css/admin_index.css" rel="stylesheet" type="text/css" />
<link href="../Public/css/admin_common.css" rel="stylesheet" type="text/css" />
<link href="../Public/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../Public/ckeditor/contents.css" rel="stylesheet" type="text/css" />
<style>a{TEXT-DECORATION:none}</style>
<style>a{TEXT-DECORATION:none}a:hover{TEXT-DECORATION:underline}</style>
<script type="text/javascript" src="../Public/js/jquery.js"></script>
<script type="text/javascript" src="../Public/js/publish_gl.js"></script>
<script type="text/javascript" src="../Public/js/bootstrap.js"></script>
<script type="text/javascript" src="../Public/ckeditor/ckeditor.js"></script>

<style type="text/css">
.summbit #form table tr td {
	color: #000000;
}
body{
	margin:0px;
	}
</style>
<style type="text/css">
	*{margin:0px;padding:0px;color:#555555;}
	.alter{width:50px;height:30px;margin:10px}
	.box{
		width:100%;
		
		position:fixed;
		top:0;
		left:0;
		background: -moz-linear-gradient(rgba(11,11,11,0.5), rgba(11,11,11,0.1)) repeat-x rgba(11,11,11,0.1);
		background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(rgba(11,11,11,0.1)), to(rgba(11,11,11,0.1))) repeat-x rgba(11,11,11,0.1);
		z-index:100000;
		display:none;
	}
	.box_content{
		height:420px;
		width:350px;
		background:white;
		position:fixed;
		top:0;
		left:0;
	}
	.box_content .title{
		height:45px;
		width:100%;
		background:#EEEEEE;
		line-height:45px;
		overflow:hidden;
	}
	.title:hover{cursor: move;}
	.title h3{float:left;margin-left:20px;}
	.title h2{float:right;margin-right:15px;color:#999999}
	.title h2:hover{color:#444444;cursor:pointer}

	.box_content .content,.other{margin:20px 20px 10px 20px;overflow:hidden;font:normal 14px "宋体";}
	.content table{width:99%;}
	.content .inputstyle,.prompt{height:35px;width:96.5%;padding-left:10px;}
	.content .inputstyle{font:bold 18px/35px "宋体";}
	.content a{
		text-decoration: none;
		color:#1B66C7
	}
	.content a:hover{text-decoration: underline;}
	.content table .login{
		height:45px;width:101%;
		border:none;
		background:#4490F7;
		color:#FFFFFF;
		font:bold 17px "宋体";
		border-radius:4px;
	}
	.content table .login:hover{
		background:#559BFC;
	}
	.content .prompt{
		color:#999999;
		position:absolute;
		line-height:38px;
	}

	.box_content .other{font:normal 14px "宋体";}
	.other ul{
		list-style:none;
		margin-top:15px;
	}
	.other ul li{
		float:left;
		height:30px;
		width:30px;
		margin-right:15px;
		border-radius:20px;
		background:#1B66C7;
		color:white;
		text-align:center;
		line-height:30px
	}
  </style>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		BoxInit.init();
	});

	var BoxInit={
		wWidth:undefined,//浏览器宽度
		wHeight:undefined,//浏览器高度
		show:undefined,//显示按钮
		box:undefined,//弹窗遮盖属性
		boxContent:undefined,//弹窗属性
		closeBox:undefined,//关闭按钮属性
		loginBtn:undefined,//登录按钮属性
		init:function(){
			var self=this;
			//获取控件对象
			self.show=$("#show");
			self.box=$(".box");
			self.boxContent=$(".box_content");
			self.closeBox=$("#close");
			self.loginBtn=$("#login");
			//获取浏览器可视化的宽高
			self.wWidth=$(window).width();
			self.wHeight=$(window).height();
			//绑定显示按钮点击事件
			self.show.click(function(){self.showBtn()});
			//绑定关闭按钮事件
			self.closeBox.click(function(){self.closes()});
			//绑定登录按钮
			self.loginBtn.click(function(){self.login()});
			//DIV拖拽
			self.dragDrop();
			//调用控制提示信息
			self.controlPromptInfo();
		},
		/**
		*显示按钮
		*/
		showBtn:function(){
			var self=this;
			self.box.animate({"width":self.wWidth,"height":self.wHeight},function(){
				//设置弹窗的位置
				self.boxContent.animate({
					"left":(self.wWidth-self.boxContent.width())/2
				},function(){
					$(this).animate({"top":(self.wHeight-self.boxContent.height())/2});
				});
			});
		},
		/**
		*关闭按钮
		*/
		closes:function(){
			var self=this;
			self.boxContent.animate({
				"top":0
			},function(){
				$(this).animate({"left":-(self.wWidth-self.boxContent.width())/2},function(){
					self.box.animate({"width":-self.wWidth,"height":-self.wHeight});
				});
			});
		},
		/**
		*登录按钮
		*/
		login:function(){
			var self=this;
			self.boxContent.animate({
				"top":0
			},function(){
				$(this).animate({"left":-(self.wWidth-self.boxContent.width())/2},function(){
					self.box.animate({"width":-self.wWidth,"height":-self.wHeight});
				});
				
			});
		},
		/**
		*拖拽弹窗
		*/
		dragDrop:function(){
			var self=this;
			var move=false;//标识是否移动元素
			var offsetX=0;//弹窗到浏览器left的宽度
			var offsetY=0;//弹出到浏览器top的宽度
			var title=$(".title");
			//鼠标按下事件
			title.mousedown(function(){
				move=true;//当鼠标按在该div上的时间将move属性设置为true
				offsetX=event.offsetX;//获取鼠标在当前窗口的相对偏移位置的Left值并赋值给offsetX
				offsetY=event.offsetY;//获取鼠标在当前窗口的相对偏移位置的Top值并赋值给offsetY
				title.css({"cursor":"move"});
			}).mouseup(function(){
				//当鼠标松开的时候将move属性摄hi为false
				move=false;
			});
			$(document).mousemove(function(){
				if(!move){//如果move属性不为true，就不执行下面的代码
					return;
				}
				//move为true的时候执行下面代码
				var x = event.clientX-offsetX; //event.clientX得到鼠标相对于客户端正文区域的偏移，然后减去offsetX即得到当前推拽元素相对于当前窗口的X值（减去鼠标刚开始拖动的时候在当前窗口的偏移X）
				var y = event.clientY-offsetY; //event.clientY得到鼠标相对于客户端正文区域的偏移，然后减去offsetX即得到当前推拽元素相对于当前窗口的Y值（减去鼠标刚开始拖动的时候在当前窗口的偏移Y）
				if(!(x<0||y<0||x>(self.wWidth-self.boxContent.width())||y>(self.wHeight-self.boxContent.height()))){
					self.boxContent.css({"left":x,"top":y,"cursor":"move"});
				}
			});
		},
		/**
		*控制提示信息
		*/
		controlPromptInfo:function(){
			//遍历提示信息，并点击
			$("p[class*=prompt]").each(function(){
				var pro=$(this);
				pro.click(function(){
					//点击提示信息自身隐藏，文本框获取焦点
					pro.hide().siblings("input").focus();
				});
			});
			//遍历文本框
			$("input[class*=ins]").each(function(){
				var input=$(this);
				//文本框失去焦点
				input.blur(function(){
					//如果文本框值为空
					if(input.val()==""){
						//显示提示信息
						input.siblings(".prompt").show();
					}
				}).keyup(function(){//按键抬起的时候
					if(input.val()==""){//如果文本框值为空
						//文本框失去焦点显示提示信息
						input.blur().siblings(".prompt").show();
					}else{
						//提示信息隐藏
						input.siblings(".prompt").hide();
					}
				});
			});
		}
	}
  </script>
<script type="text/javascript"> 
$(document).ready(function()
{
	$("#check").click(function () {	
	$("#submitbox").hide();
	$("#hide").show();	
	});
	$(".again_send").click(function(){
		$(this).html('发送中...');
		$(this).css('color','red');
		$id=$(this).attr('id');
		window.location.href='?act=again_send&id='+$id;
	})
});
</script>

