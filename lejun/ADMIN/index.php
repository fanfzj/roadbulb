<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐俊后台管理</title>

<link rel="stylesheet" type="text/css" href="../Public/css/admin_index.css"/>
<script type="text/javascript" src="../Public/js/jquery.js"></script>
<script>
<?php 
   include("conn/conn.php"); 
  if(!$_SESSION['admin']&&(!(isset($_COOKIE['username']))))
   header("location:login.html");
   if(!$_SESSION['admin'])
    $_SESSION['admin']=$_COOKIE['username'];
?>
$(document).ready(function()
{
	$("#left").load("Main/left_main.html");
    $("#main").load("Main/main_main.php");
	$("#top_index").click(function(){
		$("#left").load("Main/left_main.html");
		$("#main").load("Main/main_main.php");
	});
	$("#top_user").click(function(){
		$("#left").load("Main/left_user.html");
		$("#main").load("Main/main_user.php");
	});		
	$("#top_post").click(function(){
		$("#left").load("Main/left_post.html");
		$("#main").load("Main/main_post.php");
	});
	$("#top_cheats").click(function(){
		$("#left").load("Main/left_cheats.html");
		$("#main").load("Main/main_cheats.php");
	});
	$("#top_game").click(function(){
		$("#left").load("Main/left_game.html");
		$("#main").load("Main/main_game.php");
	});
	$("#top_ad").click(function(){
		$("#left").load("Main/left_ad.html");
		$("#main").load("Main/main_ad.php");
	});
	$("#top_tools").click(function(){
		$("#left").load("Main/left_tools.html");
		$("#main").load("Main/main_mail.php");
	});
	$("#top_set").click(function(){
		$("#left").load("Main/left_set.html");
		$("#main").load("Main/main_agreement.php");
	});
});
</script>
</head>
<body>
<div id="top">
  <div id="logo" style="margin-left:10px"><img src="../Public/img/64-64.jpg" width="64" height="64" alt="乐俊"/></div>
  <div id="submenu">
    <table>
      <tr>
       <td id="index"><a title="首页" id="top_index">首页</a></td>
       <td id="user"><a title="成员管理" id="top_user">成员管理</a></td> 
       <td id="post"><a title="贴管理" id="top_post">贴管理</a></td> 
       <td id="cheats"><a title="攻略管理" id="top_cheats">攻略管理</a></td> 
       <td id="game"><a title="游戏管理" id="top_game">游戏管理</a></td> 
       <td id="ad"><a title="广告管理" id="top_ad">广告管理</a></td>
       <td id="tools"><a title="工具" id="top_tools">工具</a></td> 
       <td id="set"><a title="系统管理" id="top_set">系统管理</a></td>
     </tr>
     </table> 
  </div>
  <div id="time"><?php include ("time.php");?></div>
</div>

<div id="left"></div>
<div id="main"></div>
</body>
</html>