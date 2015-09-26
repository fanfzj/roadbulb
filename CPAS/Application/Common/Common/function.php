<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-1
 * Time: 下午1:07
 */


function _empty()
{
    header("HTTP/1.0 404 Not Found"); //使HTTP返回404状态码
    $this->display("Public:404");
}

function ajaxmodel($status, $message, $date, $backurl)
{
    $json['S'] = $status;
    $json['M'] = $message;
    $json['D'] = $date;
    $json['Backurl'] = $backurl;
    return $json;
}

/**
 * 系统邮件发送函数
 * @param string $to 接收邮件者邮箱
 * @param string $name 接收邮件者名称
 * @param string $subject 邮件主题
 * @param string $body 邮件内容
 * @param string $attachment 附件列表
 * @return boolean
 */
function think_send_mail($to, $name, $subject = '', $body = '', $attachment = null)
{
    $config = C('THINK_EMAIL');
    vendor('PHPMailer.class#phpmailer'); //从PHPMailer目录导class.phpmailer.php类文件
    $mail = new PHPMailer(); //PHPMailer对象
    $mail->CharSet = 'UTF-8'; //设定邮件编码，默认ISO-8859-1，如果发中文此项必须设置，否则乱码
    $mail->IsSMTP(); // 设定使用SMTP服务
    $mail->SMTPDebug = 0; // 关闭SMTP调试功能
    // 1 = errors and messages
    // 2 = messages only
    $mail->SMTPAuth = true; // 启用 SMTP 验证功能
    $mail->SMTPSecure = 'ssl'; // 使用安全协议
    $mail->Host = $config['SMTP_HOST']; // SMTP 服务器
    $mail->Port = $config['SMTP_PORT']; // SMTP服务器的端口号
    $mail->Username = $config['SMTP_USER']; // SMTP服务器用户名
    $mail->Password = $config['SMTP_PASS']; // SMTP服务器密码
    $mail->SetFrom($config['FROM_EMAIL'], $config['FROM_NAME']);
    $replyEmail = $config['REPLY_EMAIL'] ? $config['REPLY_EMAIL'] : $config['FROM_EMAIL'];
    $replyName = $config['REPLY_NAME'] ? $config['REPLY_NAME'] : $config['FROM_NAME'];
    $mail->AddReplyTo($replyEmail, $replyName);
    $mail->Subject = $subject;
    $mail->MsgHTML($body);
    $mail->AddAddress($to, $name);
    if (is_array($attachment)) { // 添加附件
        foreach ($attachment as $file) {
            is_file($file) && $mail->AddAttachment($file);
        }
    }
    return $mail->Send() ? true : $mail->ErrorInfo;
}

//邮箱验证
function SendEmail($nickname, $token, $email)
{
    $smtpemailto = $email; //接收邮件方，本例为注册用户的Email
    $emailsubject = "用户帐号激活"; //邮件标题
    //邮件主体内容
    $emailbody = "亲爱的" . $nickname . "：<br/>感谢您在我站注册了新帐号。<br/>请点击链接激活您的帐号。<br/>
    <a href='http://localhost:9096/CAPS/index.php/Home/Public/EmailActive/verify/" . $token . "' target=
'_blank'>http://localhost:9096/CAPS/index.php/Home/Public/EmailActive.php?verify=" . $token . "</a><br/>
    如果以上链接无法点击，请将它复制到你的浏览器地址栏中进入访问，该链接24小时内有效。";
    //发送邮件
    $rs = think_send_mail($smtpemailto, $nickname, $emailsubject, $emailbody, null);
    return $rs;
}

//随机字符串
function generate_rand($l)
{
    $c = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    srand((double)microtime() * 1000000);
    $rand = "";
    for ($i = 0; $i < $l; $i++) {
        $rand = $rand . $c[rand() % strlen($c)];
    }
    return substr(md5($rand . date("Y-m-d H:i:s")), 0, 12);
}

//自定义加密串
function generate_rand_id($l)
{
    $c = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    srand((double)microtime() * 1000000);
    $rand = "";
    for ($i = 0; $i < $l; $i++) {
        $rand = $rand . $c[rand() % strlen($c)];
    }
    return md5($rand . date("Y-m-d H:i:s")) . $l;
}