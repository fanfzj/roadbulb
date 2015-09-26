<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-9
 * Time: 下午1:55
 */
namespace Home\Model;

use Think\Model;

class EmailTokenModel extends Model
{
    //或者使用字符串定义

    protected $tableName = 'email_token';
    protected $tablePrefix = '';
    protected $trueTableName = 'email_token';
    protected $fields = array('user_id', 'token', 'token_exptime', 'status',
        '_type' => array('user_id' => 'int', 'token' => 'varchar', 'token_exptime' => 'time', 'status' => 'int'));
    protected $pk = 'user_id';

    public function setEmailToken($user_id, $token)
    {
        $status = $this->where("user_id=%d", $user_id)->getField("status");
        $data['user_id'] = $user_id;
        $data['token'] = $token;
        $data['token_exptime'] = date("Y-m-d H:i:s", strtotime("+1 days"));
        $data['status'] = 0;
        if (is_null($status)) {
            $this->create($data);
            $this->add();
            return 0;
        } else {
            if ($status == 0) {
                $this->save($data);
                return 1;
            } elseif ($status == 1) {
                return 2;
            }
        }
    }
}