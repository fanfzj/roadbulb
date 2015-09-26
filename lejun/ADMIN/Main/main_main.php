
<?php
 include ("../conn/conn.php");
 $dsht=mysql_num_rows(mysql_query("select * from lj_post_main where tf=0"));
 $dshgl=mysql_num_rows(mysql_query("select * from lj_cheats where tf=0"));
 $fk=mysql_num_rows(mysql_query("select * from lj_feedback where read_tf=0"));
 $jbt=mysql_num_rows(mysql_query("select * from lj_report_post where tf=0"));
 $jbgl=mysql_num_rows(mysql_query("select * from lj_report_cheats where tf=0"));
 $yhg=mysql_num_rows(mysql_query("select * from lj_game where new=1"));
 $url=mysql_num_rows(mysql_query("select * from lj_get_gl_from_other_site where over=0"));
?>
<link href="../../Public/css/main_main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Public/js/jquery.js"></script>
<script>
$(document).ready(function()
{
	$("#main_post").click(function(){
		$("#left").load("Main/left_post.html");
		$("#main").load("Main/main_post.php");
	});
	$("#main_cheats").click(function(){
		$("#left").load("Main/left_cheats.html");
		$("#main").load("Main/main_cheats.php");
	});		
	$("#main_feedback").click(function(){
		$("#left").load("Main/left_tools.html");
		$("#main").load("Main/main_feedback.php");
	});
	$("#main_cheats_get").click(function(){
		$("#left").load("Main/left_cheats.html");
		$("#main").load("Main/main_cheats_get.php");
	});
	$("#main_post_report").click(function(){
		$("#left").load("Main/left_post.html");
		$("#main").load("Main/main_post_report.php");
	});
	$("#main_cheats_report").click(function(){
		$("#left").load("Main/left_cheats.html");
		$("#main").load("Main/main_cheats_report.php");
	});
	$("#main_game_user").click(function(){
		$("#left").load("Main/left_game.html");
		$("#main").load("Main/main_game_user.php");
	});
});
</script>
</head>
<body style="background-color:#E0F0FE">

<div class="admin_main_nr_dbox">
<div class="pagetit">
	<div class="ptit"><span style="color:#003">欢迎&nbsp;<strong style="color:#F00"><?php echo $_SESSION['admin']?></strong>&nbsp;~登录乐俊CMS管理中心！</span></div>
<div class="clear"></div>
</div>
<span id="version"></span>
<div class="toptit"><table width="95%" s>
<tr><td align="left"><strong style="color:#000">待处理事务</strong></td>
<td align="right"><?php $rs=mysql_fetch_array(mysql_query("select * from lj_admin where username='".$_SESSION['admin']."'")); if($rs['authority_id']==4) { ?>
          <input type="button" onClick="window.location.href='bak/bak.php'" value="备份"/>
         <input type="button" onClick="window.location.href='bak/restore.php'" value="恢复"/> 
         <input type="button" onClick="window.location.href='../360doskill.php'" value="DDOS攻击脚本专杀检测" />
          <?php } ?></td></tr></table></div>
<table width="95%" border="0" cellpadding="0" cellspacing="0" class="link_lan" style="padding-left:15px; line-height:220%; margin-bottom:10px; color:#666666;">
      <tr>
        <td align="center">待审核帖子：&nbsp;<a id="main_post"><u>[<?php echo $dsht;?>]</u></a></td>
        <td align="center">待审核攻略：&nbsp;<a id="main_cheats"><u>[<?php echo $dshgl;?>]</u></a></td>
         <td align="center">待回复的意见/建议：&nbsp;<a id="main_feedback"><u>[<?php echo $fk;?>]</u></a></td>
         <td align="center">待审查抓取URL：&nbsp;<a id="main_cheats_get"><u>[<?php echo $url;?>]</u></a></td>
      </tr>
      <tr>
        <td align="center" >待查看举报帖子：&nbsp;<a id="main_post_report"><u>[<?php echo $jbt;?>]</u></a></td>
        <td align="center" >待查看举报攻略：&nbsp;<a id="main_cheats_report"><u>[<?php echo $jbgl;?>]</u></a></td> 
        <td align="center" >用户自定义游戏：&nbsp; <a id="main_game_user"><u>[<?php echo $yhg;?>]</u></a> </td>
         <td align="center"></td>
      </tr>
  </table>
<div class="toptit"><table width="95%">
<tr><td align="left"><strong style="color:#000">乐俊攻略详细信息</strong></td>
<td align="right"><input type="button" onClick="window.location.href='Main/main_cheats_gf.php'" value="官方攻略发布"/></td></tr></table>
</div>
 <table width="95%" border="0" cellpadding="0" cellspacing="0" class="link_lan" style="padding-left:15px; line-height:220%; margin-bottom:10px; color:#666666;">
      <tr class="line">
       <td width="13%" align="right">单机游戏攻略：</td>
        <td width="5%" align="left"><strong style="color:#006">| <?php 
		$djgl=mysql_num_rows(mysql_query("select * from lj_cheats where game_list_large_id=1"));
		echo $djgl;?> |</strong></td>
        <td width="13%" align="right">手机游戏攻略：</td>
        <td width="5%" align="left"><strong style="color:#F0F">| <?php 
		$sjgl=mysql_num_rows(mysql_query("select * from lj_cheats where game_list_large_id=2"));
		echo $sjgl;?> |</strong></td>
        <td width="13%" align="right">网络游戏攻略：</td>
        <td width="5%" align="left"><strong style="color:#030">| <?php 
		$wlgl=mysql_num_rows(mysql_query("select * from lj_cheats where game_list_large_id=3"));
		echo $wlgl;?> |</strong></td>
        <td width="13%" align="right">电子游戏攻略：</td>
        <td width="5%" align="left"><strong style="color:#900">| <?php 
		$dzgl=mysql_num_rows(mysql_query("select * from lj_cheats where game_list_large_id=4"));
		echo $dzgl;?> |</strong></td>
        <td width="13%" align="right">网页游戏攻略：</td>
        <td width="5%" align="left"><strong style="color:#00F">| <?php 
		$wygl=mysql_num_rows(mysql_query("select * from lj_cheats where game_list_large_id=5"));
		echo $wygl;?> |</strong></td>
      </tr> 
    </table>

<div class="toptit"><table width="95%">
<tr>
<td align="left" width="20%"><strong style="color:#000">最近30天会员注册趋势</strong></td>
<td width="20%" align="center" ><strong  style="color:#630;">今日注册人数：|<?php
$zctoday=mysql_num_rows(mysql_query("select * from lj_user_information where zhuce_time>=date(now())-0"));
echo $zctoday;?>|</strong></td>
<td width="20%" align="center" ><strong  style="color:#333;">昨日注册人数：|<?php
$zcyesterday=mysql_num_rows(mysql_query("select * from lj_user_information where zhuce_time>=date(now())-1 and zhuce_time<date(now())-0"));
echo $zcyesterday;?>|</strong></td>
<td width="20%" align="center"  ><strong style="color:#F0F;">前日注册人数：|<?php
$zcthird=mysql_num_rows(mysql_query("select * from lj_user_information where zhuce_time>=date(now())-2 and zhuce_time<date(now())-1"));
echo $zcthird;?>|</strong></td>
<td width="20%" align="center" ><strong  style="color:#090;">一周内注册人数：|<?php
$zcthird=mysql_num_rows(mysql_query("select * from lj_user_information where zhuce_time>=date(now())-7"));
echo $zcthird;?>|</strong></td>
</tr>
</table>
</div>
<div class="zx" >
<img src="Main/zx.php" style="margin-left:30px;"/>
</div>
<div class="date">
<table width="95%"   style="margin-left:30px;" >
<tr>
<?php
for($i=0;$i<=30;++$i)
{
	echo "<td>";
    $time=time()-$i*24*3600;
    $date1=date('m',$time);
	$date2=date('d',$time);
	echo $date1."<br>".$date2;
	echo "</td> ";
}
?>
</tr>
<tr>
</tr>
</table>

</div>
<div class="toptit"><strong style="color:#000">乐俊cms后台管理系统信息</strong></div>
<table width="100%" border="0" cellpadding="4" cellspacing="0" class="link_lan" style="padding-left:15px; line-height:220%; margin-bottom:10px; color:#666666;">
  <tr class="head" style=" line-height:220%; color:#666666; padding-left:15px;"><table border="0" cellpadding="0" cellspacing="0" class="link_lan">
        <td width="10%" align="right">程序路径:</td>
        <td width="15%" align="left"><strong style="color:#006"><?php echo getcwd();?></strong></td>
         <td width="10%" align="right">此次访问时间：</td>
        <td width="15%" align="left"><strong style="color:#F0F"><?php echo date('Y-m-d H:i:s')?></strong></td>
        <td width="10%" align="right">PHP版本：</td>
        <td width="15%" align="left"><strong style="color:#030"><?php echo PHP_VERSION?></strong></td>
        <td width="10%" align="right">MySQL版本：</td>
        <td width="15%" align="left"><strong style="color:#00F">
          <?php
			echo mysql_get_server_info($conn);
          ?>
          </strong></td>
 </table>
   <div class="clear"><br /></div>