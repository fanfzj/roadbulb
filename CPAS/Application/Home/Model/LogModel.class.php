<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:47
 */

namespace Home\Model;

use Think\Model;

class LogModel extends Model
{
    protected $tableName = 'log';
    protected $tablePrefix = '';
    protected $trueTableName = 'log';
    protected $fields = array('id', 'log_info', 'log_time',
        '_type' => array('id' => 'int', 'log_info' => 'text', 'log_time' => 'datetime'));
    protected $pk = 'id';
} 