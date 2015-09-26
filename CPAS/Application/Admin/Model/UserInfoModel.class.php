<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-2
 * Time: 下午6:12
 */
namespace Admin\Model;

use Think\Model\RelationModel;

class UserinfoModel extends RelationModel
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
    protected $_link = array(
        'user_login_info' => array(
            'mapping_type' => self::BELONGS_TO,
            'class_name' => 'UserLogin',
            'foreign_key' => 'user_id',
            'mapping_name' => 'user_login_info',
            'mapping_order' => 'regist_time desc',
            'mapping_fields' => array(
                'id', 'username', 'login_ip'
            )
            // 定义更多的关联属性
        )
    );
    //用户信息存储
    public function ShowListForUser($time = 7, $limit = 0)
    {
        $result = $this->where("regist_time>date_add(now(),interval -%d day)", $time)->limit($limit, $limit + 25)->relation(true)->select();
        if (count($result) > 0) {
            return $result;
        } else {
            //数据异常，返回-2
            return -2;
        }
    }
}