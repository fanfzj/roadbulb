<?php
return array(
    'DEFAULT_MODULE' => 'Home',  // 默认模块
    //更多配置参数
    'TMPL_PARSE_STRING' => array(
        '__PUBLIC__' => '/caps/Public', // 更改默认的/Public 替换规则
        '__JS__' => '/caps/Public/Js', // 增加新的JS类库路径替换规则
        '__UPLOAD__' => '/caps/Uploads', // 增加新的上传路径替换规则
        '__CSS__' => '/caps/Public/css', // 增加新的上传路径替换规则
    ),
    //...
    //邮件配置
    'THINK_EMAIL' => array(
        'SMTP_HOST' => 'smtp.163.com', //SMTP服务器
        'SMTP_PORT' => '465', //SMTP服务器端口
        'SMTP_USER' => 'fanfzj@163.com', //SMTP服务器用户名
        'SMTP_PASS' => 'you123123', //SMTP服务器密码
        'FROM_EMAIL' => 'fanfzj@163.com', //发件人EMAIL
        'FROM_NAME' => 'CAPS', //发件人名称
        'REPLY_EMAIL' => '', //回复EMAIL（留空则为发件人EMAIL）
        'REPLY_NAME' => '', //回复名称（留空则为发件人名称）
    ),
);
?>
