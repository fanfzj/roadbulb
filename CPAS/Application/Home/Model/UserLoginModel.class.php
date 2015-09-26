<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-2
 * Time: 下午3:03
 */
namespace Home\Model;

use Think\Model;

class UserLoginModel extends Model
{
    //或者使用字符串定义
    protected $tableName = 'user_login';
    protected $tablePrefix = '';
    protected $trueTableName = 'user_login';
    protected $fields = array('id', 'username', 'password', 'login_ip',
        '_type' => array('id' => 'int', 'username' => 'varchar', 'email' => 'varchar', 'login_ip' => 'varchar'));
    protected $pk = 'id';

    //用户登录
    public function loginWithUsername($username, $password)
    {
//        如果密码的长度不符合规范则返回-2
        if (strlen($password) == 0) {
            return -2;
        }
        $result = $this->where("username='%s'", $username)->select();
        if (is_bool($result)) {
//        如果查找语句执行返回错误则返回-3
            return -3;
        } elseif (count($result) > 0) {
            if (md5($password) === $result[0]['password']) {
//            用户名密码正确,返回uid
                $ip['login_ip'] = get_client_ip();
                $this->where("username='%s'", Array($username))->save($ip);
                return $result[0]['id'];
            } else {
//              用户名存在密码错误,返回-1
                return -1;
            }
        } else {
//          如果返回结果为空表示用户名不存在,返回-4
            return -4;
        }
    }

    //注册新用户
    public function registerNewUser($username, $password)
    {
        $data['username'] = $username;
        $data['password'] = md5($password);
//        如果密码的长度不符合规范则返回-2
        if (strlen($password) == 0) {
            return -2;
        } elseif (count($this->where("username='%s'", $username)->select()) > 0) {
            // 如果返回结果非空表示用户名存在,返回-4
            return -4;
        } else {
            $result = $this->create($data);
            if ($result == false) {
//              数据库错误，返回-3
                return -3;
            } elseif (is_array($result) and count($result) > 0) {
                $user_id = $this->add();
                $ip['login_ip'] = get_client_ip();
                $this->where("username='%s'", Array($username))->save($ip);
                return $user_id;
            } else {
                //数据异常，返回-1
                return -1;
            }
        }
    }

    //用户名是否存在验证
    public function IsUsername($username)
    {
        if ($this->where("username=\"%s\"", $username)->select() === NULL) {
            return true;
        } else {
            return false;
        }
    }

}