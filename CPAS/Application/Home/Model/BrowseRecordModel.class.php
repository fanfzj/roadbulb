<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:44
 */

namespace Home\Model;

use Think\Model;

class BrowseRecordModel extends Model
{
    protected $tableName = 'browse_record';
    protected $tablePrefix = '';
    protected $trueTableName = 'browse_record';
    protected $fields = array(
        'id', 'browse_id', 'user_id', 'browse_time', 'browse_category',
        '_type' => array('id' => 'int', 'user_id' => 'int', 'browse_id' => 'int', 'browse_time' => 'datetime', 'browse_category' => 'int'
        )
    );
    protected $pk = 'id';

    //显示视频浏览记录
    public function ShowVideoBrowseRecord($user_id, $limit)
    {
        $data['user_id'] = $user_id;
        $data['browse_category'] = 1;
        $Video = D('Video');
        $result = $this->where($data)->limit($limit, $limit + 10)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                $return[$i]['id'] = $list['id'];
                $return[$i]['browse_video_name'] = $Video->where("id=%d", $list['browse_id'])->getField("title");
                $return[$i]['browse_category'] = "视频";
                $return[$i]['browse_time'] = $list['browse_time'];
                ++$i;
            }
            if (count($return) == 0) {
                //数据不存在 ,返回-1
                return -1;
            } else {
                return $return;
            }
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
    }

    //显示工具浏览记录
    public function ShowToolBrowseRecord($user_id, $limit)
    {
        $data['user_id'] = $user_id;
        $data['browse_category'] = 2;
        $Tool = D('Tool');
        $result = $this->where($data)->limit($limit, $limit + 10)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                $return[$i]['id'] = $list['id'];
                $return[$i]['browse_tool_name'] = $Tool->where("id=%d", $list['browse_id'])->getField("tool_name");
                $return[$i]['browse_category'] = "工具";
                $return[$i]['browse_time'] = $list['browse_time'];
                ++$i;
            }
            if (count($return) == 0) {
                //数据不存在 ,返回-1
                return -1;
            } else {
                return $return;
            }
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
    }

    //显示视频浏览记录
    public function ShowResourcesBrowseRecord($user_id, $limit)
    {
        $data['user_id'] = $user_id;
        $data['browse_category'] = 3;
        $Resources = D('Resources');
        $result = $this->where($data)->limit($limit, $limit + 10)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                $return[$i]['id'] = $list['record_id'];
                $return[$i]['browse_resources_name'] = $Resources->where("id=%d", $list['browse_id'])->getField("title");
                $return[$i]['browse_category'] = "资源";
                $return[$i]['browse_time'] = $list['browse_time'];
                ++$i;
            }
            if (count($return) == 0) {
                //数据不存在 ,返回-1
                return -1;
            } else {
                return $return;
            }
        } else {
            //数据不存在 ,返回-1
            return -1;
        }
    }

    //设置资源浏览记录
    public function SetResourceBrowseRecord($user_id, $resource_id)
    {
        $data['user_id'] = $user_id;
        $data['browse_id'] = $resource_id;
        $data['browse_category'] = 3;
        $return = $this->where($data)->select();
        if (count($return) == 0) {
            $result = $this->create($data);
            if ($result == false) {
//              数据库错误，返回-1
                return -2;
            } elseif (is_array($result) and count($result) > 0) {
                $record_id = $this->add();
                return $record_id;
            } else {
                //数据异常，返回-1
                return -1;
            }
        } else {
            //记录已存在
            $data['browse_time'] = date("Y-m-d H:i:s");
            $data['id'] = $return[0]['id'];
            $this->save($data);
            return -4;
        }
    }

    //设置工具浏览记录
    public function SetToolBrowseRecord($user_id, $resource_id)
    {
        $data['user_id'] = $user_id;
        $data['browse_id'] = $resource_id;
        $data['browse_category'] = 2;
        $return = $this->where($data)->select();
        if (count($return) == 0) {
            $data['browse_time'] = date("Y-m-d H:i:s");
            $result = $this->create($data);
            if ($result == false) {
                //              数据库错误，返回-1
                return -2;
            } elseif (is_array($result) and count($result) > 0) {
                $record_id = $this->add();
                return $record_id;
            } else {
                //数据异常，返回-1
                return -1;
            }
        } else {
            //记录已存在
            $data['browse_time'] = date("Y-m-d H:i:s");
            $data['id'] = $return[0]['id'];
            $this->save($data);
            return -4;
        }
    }

    //设置视频浏览记录
    public function SetVideoBrowseRecord($user_id, $browse_id)
    {
        $data['user_id'] = $user_id;
        $data['browse_id'] = $browse_id;
        $data['browse_category'] = 1;
        $return = $this->where($data)->select();
        if (count($return) == 0) {
            $data['browse_time'] = date("Y-m-d H:i:s");
            $result = $this->create($data);
            if ($result == false) {
//              数据库错误，返回-1
                return -2;
            } elseif (is_array($result) and count($result) > 0) {
                $record_id = $this->add();
                return $record_id;
            } else {
                //数据异常，返回-1
                return -1;
            }
        } else {
            //记录已存在
            $data['browse_time'] = date("Y-m-d H:i:s");
            $data['id'] = $return[0]['id'];
            $this->save($data);
            return -4;
        }
    }
} 