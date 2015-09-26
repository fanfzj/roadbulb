<?php
return array(
    'DEFAULT_MODULE' => 'Home', //默认模块
    'SESSION_AUTO_START' => true, //是否开启session
    'URL_CASE_INSENSITIVE' => true, // 默认false 表示URL区分大小写 true则表示不区分大小写
    'URL_MODEL' => 1, // URL访问模式,可选参数0、1、2、3,代表以下四种模式
// 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
    'URL_PATHINFO_DEPR' => '/', // PATHINFO模式下，各参数之间的分割符号
    'URL_PATHINFO_FETCH' => 'ORIG_PATH_INFO,REDIRECT_PATH_INFO,REDIRECT_URL', // 用于兼容判断PATH_INFO 参数的SERVER替代变量列表
    'URL_REQUEST_URI' => 'REQUEST_URI', // 获取当前页面地址的系统变量 默认为REQUEST_URI
    'URL_HTML_SUFFIX' => 'html', // URL伪静态后缀设置
    'URL_DENY_SUFFIX' => 'ico|png|gif|jpg', // URL禁止访问的后缀设置
    'URL_404_REDIRECT' => '/Public/404.html', // 404 跳转页面 部署模式有效
    //更多配置参数
    'TMPL_PARSE_STRING' => array(
        '__CSS__' => '/CAPS/Public/Css',
        '__JS__' => '/CAPS/Public/Js',
        '__IMG__' => '/CAPS/Public/images',
        '__kindeditor__' => '/CAPS/Public/kindeditor',
        '__FILE__' => '/CAPS/Public/File',
        '__TEST__' => '/CAPS/web',
    ),
    //数据库配置信息
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'localhost', // 服务器地址
    'DB_NAME'   => 'caps', // 数据库名
    'DB_USER'   => 'root', // 用户名
    'DB_PWD'    => 'root', // 密码
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => '', // 数据库表前缀
    'DB_CHARSET'=> 'utf8', // 字符集
    'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
    //邮件配置
    'THINK_EMAIL' => array(
        'SMTP_HOST' => 'smtp.163.com', //SMTP服务器
        'SMTP_PORT' => '25', //SMTP服务器端口
        'SMTP_USER' => 'fanfzj@163.com', //SMTP服务器用户名
        'SMTP_PASS' => 'you123123', //SMTP服务器密码
        'FROM_EMAIL' => 'fanfzj@163.com', //发件人EMAIL
        'FROM_NAME' => 'CAPS', //发件人名称
        'REPLY_EMAIL' => '', //回复EMAIL（留空则为发件人EMAIL）
        'REPLY_NAME' => '', //回复名称（留空则为发件人名称）
    ),
);