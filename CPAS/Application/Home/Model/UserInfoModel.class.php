<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-2
 * Time: 下午6:12
 */
namespace Home\Model;

use Think\Model;

class UserinfoModel extends Model
{
    protected $tableName = 'user_info';
    protected $tablePrefix = '';
    protected $trueTableName = 'user_info';
    protected $fields = array(
        'user_id', 'sex', 'work', 'address', 'email', 'weixin', 'qq', 'phone', 'nickname', 'regist_time', 'grade', 'integral', 'sina',
        '_type' => array(
            'user_id' => 'int',
            'sex' => 'samallint',
            'work' => 'varchar',
            'address' => 'text',
            'email' => 'varchar',
            'weixin' => 'varchar',
            'qq' => 'varchar',
            'phone' => 'varchar',
            'nickname' => 'varchar',
            'regist_time' => 'datetime',
            'grade' => 'int',
            'integral' => 'int',
            'sina' => 'varchar'
        )
    );
    protected $pk = 'user_id';
    protected $_validate = array(
        array('email', 'email', '-2'), // 自定义函数验证email格式
    );

    //用户信息存储
    public function UserInfoSave($user_id, $sex, $work, $address, $email, $weixin, $qq, $phone, $nickname, $sina)
    {
        $data['user_id'] = $user_id;
        $data['sex'] = $sex;
        $data['work'] = $work;
        $data['address'] = $address;
        $data['email'] = $email;
        $data['weixin'] = $weixin;
        $data['qq'] = $qq;
        $data['phone'] = $phone;
        $data['sina'] = $sina;
        $data['nickname'] = $nickname;
        //电话号码合法性判断
        if (!preg_match("/^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8]))\d{8}$/", $phone)) {
            //电话号码不合法
            return -1;
        }
        else
        {
            $result = $this->save($data);
            if (count($result) > 0) {
                return $user_id;
            } else {
                //数据异常，返回-2
                return -2;
            }
        }
    }

    //获取用户信息
    public function getuserinfo($user_id)
    {
        $data['user_id'] = $user_id;
//        如果密码的长度不符合规范则返回-2
        $result = $this->where($data)->select();
        if (count($result) > 0) {

            return $result;
        } else {
            //数据异常，返回-1
            return -1;
        }
    }

    //购买设置积分
    public function SetIntegralBuy($user_id, $buy_integral)
    {
        $data['user_id'] = $user_id;
        $integral = $this->getFieldById($user_id, 'integral');
        $data['integral'] = $buy_integral + $integral;
        $result = $this->save($data);
        if (count($result) > 0) {
            return true;
        } else {
            //数据异常，返回-2
            return false;
        }
    }

    //获得剩余积分
    public function GetIntegral($user_id)
    {
        $integral = $this->getFieldById($user_id, 'integral');
        if (is_bool($integral)) {
            return -1;
        } else {
            return $integral;
        }
    }

    //设置剩余积分
    public function SetIntegral($user_id, $set_intgral)
    {
        $integral = $this->getFieldById($user_id, 'integral');
        if (is_bool($integral)) {
            return -1;
        } else {
            $data['user_id'] = $user_id;
            if ($set_intgral > 0) {
                $data['integral'] = $integral - $set_intgral;
                $result = $this->save($data);
                if (count($result) > 0) {
                    return $data['integral'];
                } else {
                    //数据异常，返回-2
                    return -2;
                }
            } else {
                return -3;
            }
        }
    }
}