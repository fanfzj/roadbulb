<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:48
 */

namespace Home\Model;

use Think\Model;

class PostModel extends Model
{
    protected $tableName = 'post';
    protected $tablePrefix = '';
    protected $trueTableName = 'post';
    protected $fields = array('id', 'post_title', 'post_text', 'post_time', 'user_id',
        '_type' => array('id' => 'int', 'post_text' => 'text', 'post_time' => 'datetime', 'post_title' => 'varchar', 'user_id' => 'int',));
    protected $pk = 'id';

    //发帖
    public function SendPost($user_id, $title, $text)
    {
        $data["user_id"] = $user_id;
        $data["post_title"] = $title;
        $data["post_text"] = $text;
        $data["post_time"] = date("Y-m-d H:i:s");
        $result = $this->create($data);
        if ($result == false) {
            //数据库错误，返回-1
            return -1;
        } elseif (is_array($result) and count($result) > 0) {
            $post_id = $this->add();
            return $post_id;
        } else {
            //数据异常，返回-2
            return -2;
        }
    }
    //帖列表
    public function PostAllList($limit = 0)
    {
        $result = $this->order('post_time desc')->limit($limit, $limit + 25)->select();
        if (is_bool($result)) {
            //数据库错误
            return -1;
        } else {
            if (count($result) > 0) {
                return $result;
            } else {
                //数据加载完成
                return -2;
            }
        }
    }

    //用户帖列表
    public function PostUserList($user_id, $limit = 0)
    {
        $result = $this->where("user_id=%d", $user_id)->order('post_time desc')->limit($limit, $limit + 25)->select();
        if (is_bool($result)) {
            //数据库错误
            return -1;
        } else {
            if (count($result) > 0) {
                return $result;
            } else {
                //数据加载完成
                return -2;
            }
        }
    }
} 