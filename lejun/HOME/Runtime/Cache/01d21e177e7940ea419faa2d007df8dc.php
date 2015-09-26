<?php if (!defined('THINK_PATH')) exit();?>
<style>
#upload_img{
	border:1px solid #000;
	margin-top:20px;
	width:90%;
	margin:0 auto;
	padding:0 auto;
	}
#upload_img_header{
	text-align:center;
	}
#file_div{
	margin-top:30px;
	text-align:center;
	}	
</style>
<div class="container" id="upload_img"style="min-height:200px;">
<div id="upload_img_header"><h2 >用户图片修改</h2></div>
<div>
 <form method="post" action="__APP__/UserInfo/upload_image" enctype="multipart/form-data">
  <div id="file_div"> 
    <input type="file"  name="file" value="选择上传图片" /><br /> 
    <button type="submit" class="btn btn-primary">确定上传</button>
  </div> 
 
 </form>
</div>
</div>