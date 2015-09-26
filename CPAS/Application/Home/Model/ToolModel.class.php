<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午9:57
 */

namespace Home\Model;

use Think\Model;

class ToolModel extends Model
{
    protected $tableName = 'tool';
    protected $tablePrefix = '';
    protected $trueTableName = 'tool';
    protected $fields = array(
        'id', 'tool_name', 'tool_url', 'description', 'free_tf', 'prise', 'technology_id', 'send_integral', 'image', 'add_time',
        '_type' => array('id' => 'int', 'tool_name' => 'varchar', 'tool_url' => 'text', 'description' => 'varchar', 'free_tf' => 'tinyint', 'prise' => 'numeric', 'technology_id' => 'int', 'send_integral' => 'int', 'image' => 'varchar', 'add_time' => 'datetime'
        )
    );
    protected $pk = 'id';

    //工具列表
    public function ShowTool($user_id = 0, $limit = 0)
    {
        $Technology = D("Technology");
        $result = $this->query("select * from tool RIGHT join buy_record on tool.id=buy_record.buy_id limit " . $limit . "," . ($limit + 25));
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                if (is_null($list['tool_name'])) {
                    continue;
                } else {
                    $return[$i]['id'] = $list['id'];
                    $return[$i]['title'] = $list['tool_name'];
                    $return[$i]['url'] = $list['tool_url'];
                    $return[$i]['description'] = $list['description'];
                    $return[$i]['technology'] = $Technology->where("id=%d", $list['technology_id'])->getField("technology_name");
                    $return[$i]['free_tf'] = $list['free_tf'];
                    $return[$i]['prise'] = $list['prise'];
                    $return[$i]['send_integral'] = $list['send_integral'];
                    $return[$i]['image'] = $list['image'];
                    $return[$i]['add_time'] = $list['add_time'];
                    if (is_null($list['user_id'])) {
                        $return[$i]['buy_tf'] = 0;
                    } else {
                        if ($list['user_id'] == $user_id and $list['buy_category'] == 2) {
                            $return[$i]['buy_tf'] = 1;
                        } else {
                            $return[$i]['buy_tf'] = 0;
                        }
                    }
                    ++$i;
                }
            }
            if (count($return) == 0) {
                //数据不存在 ,返回-1
                return -1;
            } else {
                return $return;
            }
            //return $result;
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
        //return $result;
    }

    public function IsToolTf($tool_id)
    {
        if ($this->where("id=%d", $tool_id)->select() == NULL) {
            return false;
        } else {
            return true;
        }
    }
} 