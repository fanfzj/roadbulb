<?php
header ( 'Content-Type: text/html; charset=UTF-8' );

// 调试模式开关
define ( 'DEBUG_MODE', false );

if (! function_exists ( 'curl_init' )) {
	echo '您的服务器不支持 PHP 的 Curl 模块，请安装或与服务器管理员联系。';
	exit ();
}

// App Key
define ( "APP_KEY", '6b1b833ffed84df8b19388d29d5c9e46' );
$app_key="6b1b833ffed84df8b19388d29d5c9e46";
// App Secret
define ( "APP_SECRET", '74d955e9e7f6401dab32583c43f02986' );
$app_secret="74d955e9e7f6401dab32583c43f02986";
// 应用回调页地址
define ( "CALLBACK_URL", "http://www.ljyx.biz/renren/callback.php" );
$callback_url="http://www.ljyx.biz/renren/callback.php";
if (DEBUG_MODE) {
	error_reporting ( E_ALL );
	ini_set ( 'display_errors', true );
}
