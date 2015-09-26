<?php
session_start ();

include_once ('config.php');
include_once ('rennclient/RennClient.php');
// include_once ('renrenoauth/oauth2-client.class.php');
// include_once ('renrenoauth/renn-client.class.php');

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
	<!-- 打开认证授权的页面 -->
	<p>
		<a href="https://graph.renren.com/oauth/authorize?response_type=authorization_code&
     client_id=<?php echo $app_key;?>&redirect_uri=https://www.ljyx.biz/renren/callback.php&
     code=<?php echo $session['code'];?>&state=<?php echo $_SESSION ['renren_state'];?>&
     x_renew=true">重新登陆
     <img src="../../Public/img/rr.png" width="16" height="16" alt="点击进入授权页面" border="0" /></a>
	</p>
	<hr />
</body>
</html>