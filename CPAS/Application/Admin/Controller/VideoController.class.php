<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-10
 * Time: 下午9:02
 */
namespace Admin\Controller;

use Think\Controller;

class VideoController extends Controller
{
//显示视频列表
    public function ShowVideoList()
    {
        //$user_id = 1;
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Video = D('Video');
        $result = $Video->ShowVideo($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            if (count($result) > 0) {
                $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
            } else {
                $this->ajaxReturn(ajaxmodel("false", "数据已完结", -1, ""));
            }
        }
        //dump($result);
    }

//显示视频购买记录
    public function ShowVideoBuyList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Video_Record = D('BuyRecord');
        $result = $Video_Record->ShowVideoBuyRecordList($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

//显示视频浏览记录
    public function ShowVideoBrowseList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Video_Record = D('BrowseRecord');
        $result = $Video_Record->ShowVideoBrowseRecord($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

    //设置视频浏览记录
    public function SetVideoBrowse()
    {
        $user_id = $_POST['user_id'];
        $video_id = $_POST['video_id'];
        $Resource_Record = D('BrowseRecord');
        $Video = D("Video");
        if ($Video->IsVideoTf($video_id)) {
            $result = $Resource_Record->SetVideoBrowseRecord($user_id, $video_id);
            if ($result == -1) {
                $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, ""));
            } elseif ($result == -2) {
                $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
            } elseif ($result == -4) {
                $this->ajaxReturn(ajaxmodel("success", "记录已更新", $result, ""));
            } else {
                $this->ajaxReturn(ajaxmodel("success", "记录设置成功", $result, ""));
            }
        } else {
            $this->ajaxReturn(ajaxmodel("false", "视频不存在", -3, ""));
        }
    }

    //设置视频购买记录
    public function SetVideoBuy()
    {
        $user_id = $_POST['user_id'];
        $video_id = $_POST['video_id'];
        $Buy_Record = D('BuyRecord');
        $Video = D("Video");
        if ($Video->IsVideoTf($video_id)) {
            $result = $Buy_Record->SetVideoBuyRecord($user_id, $video_id);
            if ($result == -1) {
                $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, ""));
            } elseif ($result == -2) {
                $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
            } elseif ($result == -4) {
                $this->ajaxReturn(ajaxmodel("false", "视频已购买", $result, ""));
            } else {
                $this->ajaxReturn(ajaxmodel("success", "记录设置成功", $result, ""));
            }
        } else {
            $this->ajaxReturn(ajaxmodel("false", "视频不存在", -3, ""));
        }
    }

    public function Index()
    {
        $this->display();
    }
}