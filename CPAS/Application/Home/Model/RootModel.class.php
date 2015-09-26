<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:49
 */

namespace Home\Model;

use Think\Model;

class RootModel extends Model
{
    protected $tableName = 'root';
    protected $tablePrefix = '';
    protected $trueTableName = 'root';
    protected $fields = array(
        'id', 'rootname', 'password', 'type', 'logintime',
        '_type' => array('id' => 'int', 'rootname' => 'varchar', 'password' => 'varchar', 'type' => 'int', 'logintime' => 'datetime',
        )
    );
    protected $pk = 'id';
} 