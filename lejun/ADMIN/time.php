 <script language="javascript">
 
    var d,d1;

  //��ȡ��ʼʱ��
  function showTime(){
     d = new Date();                               
     var s = "";
     s += d.getHours() + ":";                      
     s += d.getMinutes() + ":";                     
     s += d.getSeconds() ;                                        
  
     document.getElementById("starttime").value = s;    
     document.getElementById("endtime").value = "";     
     document.getElementById("interval").value = "";  
	 var txtUser = document.getElementById("txt");
	 return s;  
  }

  //��ȡ����ʱ��
  function showTime2(){
     d1 = new Date();   
     var s1 = "";
     s1 += d1.getHours() + ":";
     s1 += d1.getMinutes() + ":";
     s1 += d1.getSeconds() ;
 
     document.getElementById("endtime").value = s1;
     document.getElementById("interval").value = ""; 
	 return s1;  
  }

  //����ʱ���
  function showInterval(){
   var txtTime = document.getElementById("interval");
    if(txtTime != null) {
   var sjc = ((d1.getTime()-d.getTime())/1000);
     if(sjc <= 0){
       alert("����ʱ�䲻�ܱȿ�ʼʱ���磡"); 
    }else{
       document.getElementById("interval").value = sjc + "��";   
    }
	return sjc;
  }
  }
 </script>
 
<?php
  $size_small=3;//Һ����� 
  $size_big=10;//Һ������ 
  $distance=5;//��� 
  $color_back="#DDDDDD"; 
  $color_dark="#1450A0"; 
  $color_light="#FF0"; 
  $number=0; 
  
  
  Function Runtime($mode=0){
	Static $s;
	IF(!$mode){
		$s=microtime();
		Return;
	}
	$e=microtime();
	$s=Explode(" ", $s);
	$e=Explode(" ", $e);
	Return Sprintf("%.2f ms",($e[1]+$e[0]-$s[1]-$s[0])*1000);
}
?> 
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312"> 

<script language="javascript"> 
function swapcolor(obj,onoff)//�ı���ɫ 
{ 
  if (onoff) 
  { 
    obj.style.background="<?php echo $color_light;?>"; 
  } 
  else 
  { 
    obj.style.background="<?php echo $color_dark;?>"; 
  } 
} 

function change(number,timer)//����������ʾ 
{ 
  switch (timer) 
  { 
    case 0: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),0); 
      swapcolor(eval("time"+number+"4"),1); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 1: 
      swapcolor(eval("time"+number+"0"),0); 
      swapcolor(eval("time"+number+"1"),0); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),0); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),0); 
      break; 
    case 2: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),0); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),1); 
      swapcolor(eval("time"+number+"5"),0); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 3: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),0); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 4: 
      swapcolor(eval("time"+number+"0"),0); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),0); 
      break; 
    case 5: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),0); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 6: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),0); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),1); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 7: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),0); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),0); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),0); 
      break; 
    case 8: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),1); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
    case 9: 
      swapcolor(eval("time"+number+"0"),1); 
      swapcolor(eval("time"+number+"1"),1); 
      swapcolor(eval("time"+number+"2"),1); 
      swapcolor(eval("time"+number+"3"),1); 
      swapcolor(eval("time"+number+"4"),0); 
      swapcolor(eval("time"+number+"5"),1); 
      swapcolor(eval("time"+number+"6"),1); 
      break; 
  } 
} 

function show()//����ʱ�� 
{ 
  var now=new Date(); 

  change(0,Math.floor(now.getHours()/10)); 
  change(1,Math.floor(now.getHours()%10)); 
  change(2,Math.floor(now.getMinutes()/10)); 
  change(3,Math.floor(now.getMinutes()%10)); 
  change(4,Math.floor(now.getSeconds()/10)); 
  change(5,Math.floor(now.getSeconds()%10)); 
  setTimeout("show()",200); 
} 
</script> 
 
<?php
  echo "<body bgcolor=".$color_back.">"; 
  echo "<table width=".(($size_small*3+$size_big+$distance)*6)." border=0 cellspacing=0 cellpadding=0><tr>"; 
  for ($nunber=0;$number<6;$number++) 
  { 
    $recid=0; 
    echo "<td><table width=".($size_small*2+$size_big)." border=0 cellspacing=0 cellpadding=0><tr>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "<td width=".$size_big." height=".$size_small."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_big."px; height:".$size_small."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "</tr><tr>"; 
    echo "<td width=".$size_small." height=".$size_big."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_small."px; height:".$size_big."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "<td width=".$size_big." height=".$size_big."></td>"; 
    echo "<td width=".$size_small." height=".$size_big."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_small."px; height:".$size_big."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "</tr><tr>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "<td width=".$size_big." height=".$size_small."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_big."px; height:".$size_small."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "</tr><tr>"; 
    echo "<td width=".$size_small." height=".$size_big."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_small."px; height:".$size_big."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "<td width=".$size_big." height=".$size_big."></td>"; 
    echo "<td width=".$size_small." height=".$size_big."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_small."px; height:".$size_big."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "</tr><tr>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "<td width=".$size_big." height=".$size_small."><div id=time".$number.$recid++." style=\"position:relative; width:".$size_big."px; height:".$size_small."px; background:".$color_dark."; font-size:1px\"></div></td>"; 
    echo "<td width=".$size_small." height=".$size_small."></td>"; 
    echo "</tr></table></td>"; 
    if ($number==1||$number==3) 
    { 
      echo "<td><table width=".($size_small*3)." border=0 cellspacing=0 cellpadding=0><tr>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "</tr><tr>"; 
      echo "<td width=".$size_small." height=".$size_big."></td>"; 
      echo "<td width=".$size_small." height=".$size_big."><div style=\"position:relative; width:".$size_small."px; height:".$size_small."px; background:".$color_light."; font-size:1px\"></div></td>"; 
      echo "<td width=".$size_small." height=".$size_big."></td>"; 
      echo "</tr><tr>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "</tr><tr>"; 
      echo "<td width=".$size_small." height=".$size_big."></td>"; 
      echo "<td width=".$size_small." height=".$size_big."><div style=\"position:relative; width:".$size_small."px; height:".$size_small."px; background:".$color_light."; font-size:1px\"></div></td>"; 
      echo "<td width=".$size_small." height=".$size_big."></td>"; 
      echo "</tr><tr>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "<td width=".$size_small." height=".$size_small."></td>"; 
      echo "</tr></table></td>"; 
    } 
  } 
  echo "</tr></table>"; 
?> 
<script language="javascript"> 
  show(); 
</script> 


