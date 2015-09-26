<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:45
 */

namespace Home\Model;

use Think\Model;

class DownloadRecordModel extends Model
{
    protected $tableName = 'buy_record';
    protected $tablePrefix = '';
    protected $trueTableName = 'buy_record';
    protected $fields = array(
        'id', 'buy_id', 'user_id', 'buy_time','buy_category',
        '_type' => array('id' => 'int','user_id' => 'int','browse_id' => 'int','buy_category'=>'int','buy_time' => 'datetime'
        )
    );
    protected $pk = 'id';
} 