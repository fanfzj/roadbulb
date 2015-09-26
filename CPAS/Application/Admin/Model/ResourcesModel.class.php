<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:48
 */

namespace Home\Model;

use Think\Model;

class ResourcesModel extends Model
{
    protected $tableName = 'resources';
    protected $tablePrefix = '';
    protected $trueTableName = 'resources';
    protected $fields = array(
        'id', 'title', 'url', 'description', 'for_the_people_id', 'technology_id', 'add_time',
        '_type' => array('id' => 'int', 'title' => 'varchar', 'url' => 'text', 'description' => 'varchar', 'for_the_people_id' => 'int', 'technology_id' => 'int', 'add_time' => 'datetime'
        )
    );
    protected $pk = 'id';

    //资源列表
    public function ShowResource($limit = 0)
    {
        $result = $this->limit($limit, $limit + 25)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            return $result;
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
        //return $result;
    }

    public function IsResourcesTf($resource_id)
    {
        if ($this->where("id=%d", $resource_id)->select() != NULL) {
            return true;
        } else {
            return false;
        }
    }
} 