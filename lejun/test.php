<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script language="javascript">
//设置:

    document.getElementById('id').style.width=value
    document.getElementById('id').style.height=value
    document.getElementById('id').style.top=value
    document.getElementById('id').style.left=value
//获取:

    value=document.getElementById('id').offsetLeft
    value=document.getElementById('id').offsetTop
    value=document.getElementById('id').offsetWidth
    value=document.getElementById('id').offsetHeight
	
function findPosition( oElement ) 
{
  var x2 = 0;
  var y2 = 0;
  var width = oElement.offsetWidth;
  var height = oElement.offsetHeight;
  alert(width + "=" + height);
  if( typeof( oElement.offsetParent ) != 'undefined' ) 
  {
    for( var posX = 0, posY = 0; oElement; oElement = oElement.offsetParent ) 
    {
      posX += oElement.offsetLeft;
      posY += oElement.offsetTop;      
    }
    x2 = posX + width;
    y2 = posY + height;
    return [ posX, posY ,x2, y2];
    
    } else{
      x2 = oElement.x + width;
      y2 = oElement.y + height;
      return [ oElement.x, oElement.y, x2, y2];
  }
}

alert (findPosition(document.getElementById('id')));  
</script>  
</head>
<?php 
function left()
{
   echo mt_rand(0, 1100) ."px";
}
function top()
{
   echo mt_rand(0,650) ."px";
}
?>
<META HTTP-EQUIV="Refresh" Content="5;URL=test.php">
<body>
<h2 id="id" style="position: absolute; left:<?php left();?>; top:<?php top();?>;"><img src="Public/img/32-32.jpg" /></h2>
</body>
</html>
