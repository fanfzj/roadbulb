<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:48
 */

namespace Home\Model;

use Think\Model\RelationModel;

class PostReplyModel extends RelationModel
{
    protected $tableName = 'post_reply';
    protected $tablePrefix = '';
    protected $trueTableName = 'post_reply';
    protected $fields = array(
        'id', 'post_id', 'user_id', 'father_id', 'reply', 'reply_time',
        '_type' => array('id' => 'int', 'post_id' => 'int', 'father_id' => 'int', 'reply_time' => 'datetime', 'user_id' => 'int', 'reply' => 'text'
        )
    );
    protected $_link = array(
        'reply_list' => array(
            'mapping_type' => self::HAS_MANY,
            'class_name' => 'PostReply',
            'foreign_key' => 'father_id',
            'mapping_name' => 'reply_list',
            'mapping_order' => 'reply_time desc',
            'mapping_fields' => array(
                'id', 'reply', 'reply_time'
            )
            // 定义更多的关联属性
        )
    );
    protected $pk = 'id';

    //显示回复
    public function ShowPostReplyList($post_id, $limit = 0)
    {
        $User_Info = D("UserInfo");
        $result = $this->where("post_id=%d", $post_id)->limit($limit, $limit + 5)->relation(true)->select();
        if (is_null($result)) {
            //数据不存在
            return -1;
        } else {
            foreach ($result as $list) {
                $return['id'] = $list['id'];
                $return['reply'] = $list['reply'];
                $return['reply_time'] = $list['reply_time'];
                $return['user_nickname'] = $User_Info->where("user_id=%d", $list["user_id"])->getField("nickname");
                $return['reply_reply'] = $list['reply_list'];
            }
        }
    }

    //回复贴
    public function ReplayPost($user_id, $reply, $post_id)
    {
        $data["user_id"] = $user_id;
        $data["reply"] = $reply;
        $data["post_id"] = $post_id;
        $data["reply_time"] = date("Y-m-d H:i:s");
        $result = $this->create($data);
        if ($result == false) {
            //数据库错误，返回-1
            return -1;
        } elseif (is_array($result) and count($result) > 0) {
            $replay_id = $this->add();
            return $replay_id;
        } else {
            //数据异常，返回-2
            return -2;
        }
    }

    //回复贴
    public function ReplayPostReplay($user_id, $reply, $post_id, $father_id)
    {
        $data["user_id"] = $user_id;
        $data["reply"] = $reply;
        $data["post_id"] = $post_id;
        $data["reply_time"] = date("Y-m-d H:i:s");
        $data["father_id"] = $father_id;
        $result = $this->create($data);
        if ($result == false) {
            //数据库错误，返回-1
            return -1;
        } elseif (is_array($result) and count($result) > 0) {
            $replay_id = $this->add();
            return $replay_id;
        } else {
            //数据异常，返回-2
            return -2;
        }
    }
} 