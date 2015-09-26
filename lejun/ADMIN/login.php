<?php

if($_GET['ac']=='logout')
{
	session_destroy(); //消除session信息  
	setcookie ("username", "", time() - 3600);  //消除cookie信息
	echo "<script>window.location.href='login.html';</script>";
}
include ("conn/conn.php");
$username=$_POST['username'];
$pwd=$_POST['password'];
$superpwd=$_POST['superpwd'];
$need=$_POST['need'];
$a=$pwd ."". $superpwd ."". $username;
$password=md5($a);
$last_logn_time=date('Y-m-d H:i');
$ip=GetIP();
$ip_address=ipCity($ip);
if(($user=mysql_query("select * from lj_admin where username='".$username."'"))&&($num=mysql_num_rows(mysql_query("select * from lj_admin where username='".$username."'"))))
{
$rw=mysql_fetch_array($user);
if($rw['password']==$password)
{
  $_SESSION['admin']=$username;
  if($need==1)
  {
	setcookie("username", $username, time()+3600);
   }
  mysql_query("UPDATE `lj_admin` SET `last_logn_time`='$last_logn_time',`ip`='$ip',`ip_address`='$ip_address' where username='$username'"); 
  echo "<script>alert('欢迎来到乐俊后台CMS管理平台');window.location.href='index.php';</script>";
	}
    else echo "<script>alert('密码错误，请重新输入');window.location.href='login.html';</script>";}
else { echo "<script>alert('不存在该用户，请非管理员不要尝试登陆');window.location.href='login.html';</script>";}
?>