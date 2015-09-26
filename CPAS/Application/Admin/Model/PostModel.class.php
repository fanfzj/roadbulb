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
} 