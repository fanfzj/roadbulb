<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:49
 */

namespace Home\Model;

use Think\Model;

class RootModel extends Model
{
    protected $tableName = 'root';
    protected $tablePrefix = '';
    protected $trueTableName = 'root';
    protected $fields = array(
        'id', 'rootname', 'password', 'type', 'logintime',
        '_type' => array('id' => 'int', 'rootname' => 'varchar', 'password' => 'varchar', 'type' => 'int', 'logintime' => 'datetime',
        )
    );
    protected $pk = 'id';

    //用户登录
    public function loginWithUsername($username, $password)
    {
//        如果密码的长度不符合规范则返回-2
        if (strlen($password) == 0) {
            return -2;
        }
        $result = $this->where("rootname='%s'", $username)->select();
        if (is_bool($result)) {
//        如果查找语句执行返回错误则返回-3
            return -3;
        } elseif (count($result) > 0) {
            if (md5($password) === $result[0]['password']) {
//            用户名密码正确,返回uid
                $root['logintime'] = date("Y-m-d H:i:s");
                $this->where("rootname='%s'", Array($username))->save($root);
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
    public function RegisterNewRoot($username, $type)
    {
        $data['username'] = $username;
        $data['password'] = generate_rand(rand(0, 100));
        $data['type'] = md5($type);
        $data['logintime'] = date("Y-m-d H:i:s");
//        如果密码的长度不符合规范则返回-2
        if (!$this->IsUsername($username)) {
            // 如果返回结果非空表示用户名存在,返回-4
            return -3;
        } else {
            $result = $this->create($data);
            if ($result == false) {
//              数据库错误，返回-2
                return -2;
            } elseif (is_array($result) and count($result) > 0) {
                $user_id = $this->add();
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
        if ($this->where("rootname=\"%s\"", $username)->select() === NULL) {
            return true;
        } else {
            return false;
        }
    }
} 