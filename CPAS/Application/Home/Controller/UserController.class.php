<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午8:54
 */
namespace Home\Controller;

use Think\Controller;

class UserController extends Controller
{
    //管理员登录
    public function RootLogin()
    {
        $username = $_POST['rootname'];
        $password = $_POST['password'];
        if(strlen($username)==0)
        {
            $this->ajaxReturn(ajaxmodel("false", "密码不能为空",-5, ""));
        }
        elseif(strlen($password)==0)
        {
            $this->ajaxReturn(ajaxmodel("false", "密码不能为空",-6, ""));
        }
        else
        {
            $Root = D("Root");
            $result = $Root->LoginWithRoot($username, $password);
            if ($result > 0) {
                $this->ajaxReturn(ajaxmodel("success", "登陆成功", $result, "/Admin/Index/index_main"));
            } else {
                if ($result == -1) {
                    $this->ajaxReturn(ajaxmodel("false", "密码错误", $result, ""));
                } else if ($result == -2) {
                    $this->ajaxReturn(ajaxmodel("false", "密码的长度不符合规范", $result, ""));
                } else if ($result == -3) {
                    $this->ajaxReturn(ajaxmodel("false", "数据异常，请重试", $result, ""));
                } else if ($result == -4) {
                    $this->ajaxReturn(ajaxmodel("false", "用户名不存在，请重试", $result, ""));
                }
            }
        }

    }

    //登出
    public function Logout()
    {
        if (session('?root_id')) {
            cookie(null);
            session(null);
            $this->ajaxReturn(ajaxmodel("success", "登出成功", true, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("false", "已登出，请勿重复操作", false, ""));
        }

        redirect('/Home/Index/index', 5, '页面跳转中...');
    }
    //新用户注册
    public function SetNewRoot()
    {
        $username = $_POST["rootname"];
        $type = $_POST['type'];
        if (strlen($type) == 0)
        {
            $this->ajaxReturn(ajaxmodel("false", "没有设置权限", -5, ""));
        } elseif (strlen($username) == 0)
        {
            $this->ajaxReturn(ajaxmodel("false", "用户名不能为空", -6, ""));
        }
        else {
            $Root = D("Root");
            $result = $Root->RegisterNewRoot($username, $type);
            if ($result > 0) {
                cookie('root_id', generate_rand_id($result), 3600);
                session('root_id', $result);
                $this->ajaxReturn(ajaxmodel("success", "管理员新建成功", $result, "/Admin/Index/index_main"));
            } else {
                if ($result == -1) {
                    $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, NULL));
                } else if ($result == -2) {
                    $this->ajaxReturn(ajaxmodel("false", "网络异常，请重试", $result, NULL));
                } else if ($result == -3) {
                    $this->ajaxReturn(ajaxmodel("false", "用户名存在，请重试", $result, NULL));
                }
            }
        }
    }

    //获取用户信息
    public function GetUserInfo()
    {
        $user_id = $_POST['user_id'];
        $User_Info = D("UserInfo");
        $result = $User_Info->getuserinfo($user_id);
        if ($result > 0) {
            $this->ajaxReturn(ajaxmodel("success", "信息获取成功", $result, "/Home/User/SaveUserInfo"));
        } else {
            if ($result == -1) {
                $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, NULL));
            }
        }
    }

    //保存用户信息
    public function SaveUserInfo()
    {
        $user_id = $_POST['user_id'];
        $sex = $_POST['sex'];
        $work = $_POST['work'];
        $address = $_POST['address'];
        $email = $_POST['email'];
        $weixin = $_POST['weixin'];
        $qq = $_POST['qq'];
        $phone = $_POST['phone'];
        $nickname = $_POST['nickname'];
        $sina = $_POST['sina'];
        $User_Info = D("UserInfo");
        $result = $User_Info->UserInfoSave($user_id, $sex, $work, $address, $email, $weixin, $qq, $phone, $nickname, $sina);
        if ($result > 0) {
            if (strlen($email) != 0) {
                $EmailToken = D("EmailToken");
                $token = md5(date("Y-m-d H:i:s")) . $user_id;
                $status = $EmailToken->setEmailToken($user_id, $token);
                if ($status == 0) {
                    $msg = SendEmail($nickname, $token, $email);
                    $back_info['email_msg'] = $msg;
                    $back_info['user_id'] = $user_id;
                    $back_info['status'] = $status;
                    if ($msg) {
                        $this->ajaxReturn(ajaxmodel("success", "信息修改成功,邮箱验证邮件已经自动发送到你的邮箱,且邮件发送成功，请注意查收。", $back_info, "/Home/Index/index_main"));
                    } else {
                        $this->ajaxReturn(ajaxmodel("success", "信息修改成功,邮箱验证邮件已经自动发送到你的邮箱,但是邮箱不存在。", $back_info, "/Home/Index/index_main"));
                    }
                } elseif ($status == 1) {
                    $msg = SendEmail($nickname, $token, $email);
                    $back_info['email_msg'] = $msg;
                    $back_info['user_id'] = $user_id;
                    $back_info['status'] = $status;
                    if ($msg) {
                        $this->ajaxReturn(ajaxmodel("success", "信息修改成功，邮箱验证邮件再次发送,且邮件发送成功，请注意查收。", $back_info, "/Home/Index/index_main"));
                    } else {
                        $this->ajaxReturn(ajaxmodel("success", "信息修改成功，邮箱验证邮件再次发送,但是邮箱不存在。", $back_info, "/Home/Index/index_main"));
                    }
                } elseif ($status == 2) {
                    $back_info['user_id'] = $user_id;
                    $back_info['status'] = $status;
                    $this->ajaxReturn(ajaxmodel("success", "信息修改成功，但是邮箱已验证。", $back_info, "/Home/Index/index_main"));
                }
            } else {
                $back_info['user_id'] = $user_id;
                $back_info['status'] = 3;
                $this->ajaxReturn(ajaxmodel("success", "信息修改成功，但是邮箱没有填写。", $back_info, "/Home/Index/index_main"));
            }

        } else {
            if ($result == -1) {
                $this->ajaxReturn(ajaxmodel("false", "电话号码不合法", $result, ""));
            } else if ($result == -2) {
                $this->ajaxReturn(ajaxmodel("false", "数据异常，请重试", $result, ""));
            }

        }
    }


    //验证用户名是否存在
    public function IsUserNull()
    {
        $username = $_POST['username'];
        $User_Login = D("UserLogin");
        if (strlen($username) != 0) {
            if ($User_Login->IsUsername($username)) {
                $this->ajaxReturn(ajaxmodel("success", "用户名可用", true, ""));
            } else {
                $this->ajaxReturn(ajaxmodel("false", "用户名存在，请更换", -1, ""));
            }
        } else {
            $this->ajaxReturn(ajaxmodel("false", "用户名不能为空", -2, ""));
        }
    }

    //查询用户积分
    public function SelectUserIntegral()
    {
        $user_id = $_POST['user_id'];
        $User_Info = D("UserInfo");
        $result = $User_Info->SetIntegral($user_id);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库异常", -1, ""));
        } else {
            $return['Integral'] = $result;
            $this->ajaxReturn(ajaxmodel("success", "可用积分", $return, ""));
        }
    }

    //设置用户积分
    public function SaveUserIntegral()
    {
        $user_id = $_POST['user_id'];
        $set_intgral = $_POST['set_intgral'];
        $User_Info = D("UserInfo");
        $result = $User_Info->SetIntegral($user_id, $set_intgral);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库异常", -1, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据异常", -2, ""));
        } elseif ($result == -3) {
            $this->ajaxReturn(ajaxmodel("false", "非法操作", -3, ""));
        } else {
            $return['Integral'] = $result;
            $this->ajaxReturn(ajaxmodel("success", "剩余积分", $return, ""));
        }
    }
    public function Index()
    {
        $this->display();
    }

    public function Register()
    {
    	$this->display();
    }
}