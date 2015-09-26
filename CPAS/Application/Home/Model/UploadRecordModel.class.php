<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:02
 */

namespace Home\Model;

use Think\Model;

class UploadRecordModel extends Model
{
    protected $tableName = 'upload_record';
    protected $tablePrefix = '';
    protected $trueTableName = 'upload_record';
    protected $fields = array(
        'id', 'user_id', 'upload_description', 'ispasss', 'upload_intgral', 'for_the_people_id', 'technology_id', 'source', 'upload_time',
        '_type' => array('id' => 'int', 'user_id' => 'int', 'upload_description' => 'varchar', 'ispasss' => 'tinyint', 'upload_intgral' => 'int', 'for_the_people_id' => 'int', 'technology_id' => 'int', 'source' => 'varchar', 'upload_time' => 'datetime'
        )
    );
    protected $pk = 'id';
} 