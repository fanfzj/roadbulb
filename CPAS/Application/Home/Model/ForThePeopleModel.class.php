<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:47
 */

namespace Home\Model;

use Think\Model;

class ForThePeopleModel extends Model
{
    protected $tableName = 'for_the_people';
    protected $tablePrefix = '';
    protected $trueTableName = 'for_the_people';
    protected $fields = array('id', 'for_the_people_name',
        '_type' => array('id' => 'int', 'for_the_people_name' => 'varchar'));
    protected $pk = 'id';
} 