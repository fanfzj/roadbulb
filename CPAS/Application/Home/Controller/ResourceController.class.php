<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-10
 * Time: 下午9:04
 */
namespace Home\Controller;

use Think\Controller;

class ResourceController extends Controller
{
    public function Index()
    {
        $this->display();
    }

    //显示资源列表
    public function ShowResourceList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Resources = D('Resources');
        $result = $Resources->ShowResource($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

    //显示资源浏览列表
    public function ShowResourceBrowseList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST['limit'];
        $Resource_Record = D('BrowseRecord');
        $result = $Resource_Record->ShowResourcesBrowseRecord($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据已完结", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载", $result, ""));
        }
    }

    //显示工具浏览列表
    public function SetResourceBrowse()
    {
        $user_id = $_POST['user_id'];
        $resource_id = $_POST['resource_id'];
        $Tool_Record = D('BrowseRecord');
        $Resource = D("Resources");
        if ($Resource->IsResourcesTf($resource_id)) {
            $result = $Tool_Record->SetResourceBrowseRecord($user_id, $resource_id);
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
            $this->ajaxReturn(ajaxmodel("false", "资源不存在", -3, ""));
        }
    }
}
