<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午10:45
 */

namespace Home\Model;

use Think\Model;

class BuyRecordModel extends Model
{
    protected $tableName = 'buy_record';
    protected $tablePrefix = '';
    protected $trueTableName = 'buy_record';
    protected $fields = array(
        'Id', 'buy_id', 'user_id', 'buy_time', 'buy_category',
        '_type' => array('Id' => 'int', 'user_id' => 'int', 'buy_id' => 'int', 'buy_category' => 'int', 'buy_time' => 'datetime'
        )
    );
    protected $pk = 'Id';

//显示视频购买记录
    public function  ShowVideoBuyRecordList($user_id, $limit = 0)
    {
        $data['user_id'] = $user_id;
        $data['buy_category'] = 1;
        $Video = D('Video');
        $result = $this->where($data)->limit($limit, $limit + 10)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                if (is_null($video_name = $Video->where("id=%d", $list['buy_id'])->getField("title"))) {
                    continue;
                } else {
                    $return[$i]['id'] = $list['id'];
                    $return[$i]['buy_video_name'] = $video_name;
                    $return[$i]['buy_category'] = "视频";
                    $return[$i]['buy_time'] = $list['buy_time'];
                    ++$i;
                }
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

//显示工具购买记录
    public function  ShowToolBuyRecordList($user_id, $limit = 0)
    {
        $data['user_id'] = $user_id;
        $data['buy_category'] = 2;
        $Tool = D('Tool');
        $result = $this->where($data)->limit($limit, $limit + 10)->select();
        if (is_bool($result)) {
            //数据库错误
            return -2;
        } elseif (count($result) > 0) {
            $i = 0;
            foreach ($result as $list) {
                if (is_null($tool_name = $Tool->where("id=%d", $list['buy_id'])->getField("tool_name"))) {
                    continue;
                } else {
                    $return[$i]['id'] = $list['id'];
                    $return[$i]['buy_tool_name'] = $tool_name;
                    $return[$i]['buy_category'] = "工具";
                    $return[$i]['buy_time'] = $list['buy_time'];
                    ++$i;
                }
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

//设置视频购买记录
    public function SetVideoBuyRecord($user_id, $video_id)
    {
        $Log = D("Log");
        $data['user_id'] = $user_id;
        $data['buy_id'] = $video_id;
        $data['buy_category'] = 1;
        $return = $this->where($data)->select();
        if (count($return) == 0) {
            $Video = D("Video");
            $buy_integral = $Video->getFieldById($video_id, 'send_integral');
            $User = D("UserInfo");
            if (!$User->SetIntegralBuy($user_id, $buy_integral)) {
                $setlog['log_info'] = "SetVideoBuyRecord-Error:SetIntegralBuy-False:User_id-" . $user_id . ":Video_id-" . $video_id;
                $setlog['log_time'];
                $Log->create($setlog);
                $Log->add();
            }
            $data['buy_time'] = date("Y-m-d H:i:s");
            $result = $this->create($data);
            if ($result == false) {
                //数据库错误，返回-1
                $createlog['log_info'] = "SetVideoBuyRecord-Error:CreateRecord-False:User_id-" . $user_id . ":Video_id-" . $video_id;
                $createlog['log_time'];
                $Log->create($createlog);
                $Log->add();
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
            return -4;
        }
    }

//设置工具购买记录
    public function SetToolBuyRecord($user_id, $tool_id)
    {
        $Log = D("Log");
        $data['user_id'] = $user_id;
        $data['buy_id'] = $tool_id;
        $data['buy_category'] = 2;
        $return = $this->where($data)->select();
        if (count($return) == 0) {
            $Tool = D("Tool");
            $buy_integral = $Tool->getFieldById($tool_id, 'send_integral');
            $User = D("UserInfo");
            if (!$User->SetIntegralBuy($user_id, $buy_integral)) {
                $setlog['log_info'] = "SetVideoBuyRecord-Error:SetIntegralBuy-False:User_id-" . $user_id . ":Tool_id-" . $tool_id;
                $setlog['log_time'];
                $Log->create($setlog);
                $Log->add();
            }
            $data['buy_time'] = date("Y-m-d H:i:s");
            $result = $this->create($data);
            if ($result == false) {
                //              数据库错误，返回-2
                $createlog['log_info'] = "SetVideoBuyRecord-Error:CreateRecord-False:User_id-" . $user_id . ":Tool_id-" . $tool_id;
                $createlog['log_time'];
                $Log->create($createlog);
                $Log->add();
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
            return -4;
        }
    }
} 