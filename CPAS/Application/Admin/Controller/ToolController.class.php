<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-10
 * Time: 下午9:04
 */
namespace Admin\Controller;

use Think\Controller;

class ToolController extends Controller
{
    public function Index()
    {
        $this->display();
    }

//显示工具列表
    public function ShowToolList()
    {
        //$user_id = 1;
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Tool = D('Tool');
        $result = $Tool->ShowTool($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
        //dump($result);
    }

    public function ShowToolBuyList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Tool_Record = D('BuyRecord');
        $result = $Tool_Record->ShowToolBuyRecordList($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

    //显示工具浏览列表
    public function ShowToolBrowseList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Tool_Record = D('BrowseRecord');
        $result = $Tool_Record->ShowToolBrowseRecord($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

    //显示工具浏览列表
    public function SetToolBrowse()
    {
        $user_id = $_POST['user_id'];
        $resource_id = $_POST['tool_id'];
        $Tool_Record = D('BrowseRecord');
        $Tool = D("Tool");
        if ($Tool->IsToolTf($resource_id)) {
            $result = $Tool_Record->SetToolBrowseRecord($user_id, $resource_id);
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
            $this->ajaxReturn(ajaxmodel("false", "工具不存在", -3, ""));
        }
    }

    //设置视频购买记录
    public function SetToolBuy()
    {
        $user_id = $_POST['user_id'];
        $tool_id = $_POST['tool_id'];
        $Buy_Record = D('BuyRecord');
        $Tool = D("Tool");
        if ($Tool->IsToolTf($tool_id)) {
            $result = $Buy_Record->SetToolBuyRecord($user_id, $tool_id);
            if ($result == -1) {
                $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, ""));
            } elseif ($result == -2) {
                $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
            } elseif ($result == -4) {
                $this->ajaxReturn(ajaxmodel("false", "工具已购买", $result, ""));
            } else {
                $this->ajaxReturn(ajaxmodel("success", "记录设置成功", $result, ""));
            }
        } else {
            $this->ajaxReturn(ajaxmodel("false", "工具不存在", -3, ""));
        }
    }
}
