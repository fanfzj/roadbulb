<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:48
 */

namespace Home\Model;

use Think\Model;

class PostReplyModel extends Model
{
    protected $tableName = 'post_reply';
    protected $tablePrefix = '';
    protected $trueTableName = 'post_reply';
    protected $fields = array(
        'id', 'post_id', 'user_id', 'father_id', 'reply', 'reply_time',
        '_type' => array('id' => 'int', 'post_id' => 'int', 'father_id' => 'int', 'reply_time' => 'datetime', 'user_id' => 'int', 'reply' => 'text'
        )
    );
    protected $pk = 'id';
} 