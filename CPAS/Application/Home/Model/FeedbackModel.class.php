<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:46
 */

namespace Home\Model;

use Think\Model;

class FeedbackModel extends Model
{
    protected $tableName = 'feedback';
    protected $tablePrefix = '';
    protected $trueTableName = 'feedback';
    protected $fields = array('user_id', 'id', 'feedback_text', 'reply_text',
        '_type' => array('user_id' => 'int', 'id' => 'int', 'feedback_text' => 'text', 'reply_text' => 'text'));
    protected $pk = 'id';
} 