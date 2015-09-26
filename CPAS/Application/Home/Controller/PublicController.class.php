<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午8:56
 */
namespace Home\Controller;

use Think\Controller;

class PublicController extends Controller
{
    //404
    public function __404()
    {
        $this->display();
    }
    //验证码生成
    public function Code()
    {
        $config = array(
            'fontSize' => 14, // 验证码字体大小
            'length' => 4, // 验证码位数
            'useNoise' => false, // 关闭验证码杂点
            'imageW' => 0,
            'imageH' => 0
        );
        $Verify = new \Think\Verify($config);
        $Verify->entry();
    }

    //验证码检测
    public function CheckCode()
    {
        $code = $_POST['code'];
        if(strlen($code)!=0)
        {
            $verify = new \Think\Verify();
            if ($verify->check($code, '')) {
                $this->ajaxReturn(ajaxmodel("success", "验证码正确", "", ""));
            } else {
                $this->ajaxReturn(ajaxmodel("false", "验证码错误", -1, ""));
            }
        }
        else
        {
            $this->ajaxReturn(ajaxmodel("false", "验证码不能为空",-2, ""));
        }
    }

    //验证邮件发送
    public function EmailToken()
    {
        $email = $_POST['email'];
        $user_id = $_POST['user_id'];
        $User_Info = D("UserInfo");
        $nickname = $User_Info->where("user_id", $user_id)->getField('nickname');
        $EmailToken = D("EmailToken");
        $token = md5(date("Y-m-d H:i:s")) . $user_id;
        $status = $EmailToken->setEmailToken($user_id, $token);
        if(strlen($email) != 0)
        {
            if ($status == 1)
            {
                $back_info['user_id'] = $user_id;
                $back_info['status'] = $status;
                $msg = SendEmail($nickname, $token, $email);
                $back_info['email_msg'] = $msg;
                if($msg=="true")
                {
                    $this->ajaxReturn(ajaxmodel("success", "邮件已发送", $back_info, "/Home/Index/index_main"));
                }
                else
                {
                    $this->ajaxReturn(ajaxmodel("false", "邮箱不存在，请重试",-1, "/Home/Index/index_main"));
                }
            } elseif ($status == 2)
            {
                $this->ajaxReturn(ajaxmodel("false", "邮箱已验证",-2, "/Home/Index/index_main"));
            }
        }
        else
        {
            $this->ajaxReturn(ajaxmodel("false", "邮箱不能为空，请输入后重试", -3, "/Home/Index/index_main"));
        }
    }

    //邮箱验证返回函数
    public function EmailActive()
    {
        $verify = trim($_GET['verify']);
        $nowtime = date("Y-m-d H:i:s");
        $EmailToken = D("EmailToken");
        $date['status'] = 0;
        $date['token'] = $verify;
        $row = $EmailToken->where($date)->find();
        if ($row) {
            if ($nowtime > $row['token_exptime']) { //24hour
                $msg = '您的激活有效期已过，请登录您的帐号重新发送激活邮件。';
            } else {
                $EmailToken->where('user_id=' . $row['user_id'])->setField('status', 1);
                $msg = '激活成功！';
            }
        } else {
            $msg = '您已经激活';
        }
        $this->success($msg,"Public/Warning");
        //echo $msg;
    }

    //验证邮件显示页面
    public function Warning()
    {
        $this->display();
    }
}