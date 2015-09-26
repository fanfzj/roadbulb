<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:49
 */

namespace Home\Model;

use Think\Model;

class TechnologyModel extends Model
{
    protected $tableName = 'technology';
    protected $tablePrefix = '';
    protected $trueTableName = 'technology';
    protected $fields = array(
        'id', 'technology_name',
        '_type' => array('id' => 'int', 'technology_name' => 'varchar'
        )
    );
    protected $pk = 'id';
} 