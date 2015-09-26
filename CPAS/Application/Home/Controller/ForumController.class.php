<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-10
 * Time: 下午9:03
 */
namespace HOme\Controller;

use Think\Controller;

class ForumController extends Controller
{
    public function index()
    {
        $this->display();
    }

    //发帖
    public function SendForum()
    {
        $user_id = $_POST["user_id"];
        $title = $_POST["title"];
        $text = $_POST["text"];
        if (is_null($title)) {
            $result = -3;
        } else if (strlen($title) > 255) {
            $title = substr($title, 0, 255);
            $result = -4;
        } else {
            $Forum = D("Post");
            $result = $Forum->SendPost($user_id, $title, $text);
        }
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, ""));
        } elseif ($result == -3) {
            $this->ajaxReturn(ajaxmodel("false", "标题不能为空", $result, ""));
        } elseif ($result == -4) {
            $this->ajaxReturn(ajaxmodel("false", "标题过长", "建议标题：" . $title, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "发帖成功", $result, ""));
        }
    }

    //回复
    public function ReplayForum()
    {
        $user_id = $_POST["user_id"];
        $reply = $_POST["reply"];
        $post_id = $_POST["post_id"];
        $father_id = $_POST["father_id"];
        $replay_style = $_POST["replay_style"];
        if (is_null($post_id)) {
            $result = -4;
        } else if ($replay_style == 1) {
            $PostReplay = D("PostReply");
            $result = $PostReplay->ReplayPost($user_id, $reply, $post_id);
        } else if ($replay_style == 2) {
            if (is_null($father_id)) {
                $result = -4;
            } else {
                $PostReplay = D("PostReply");
                $result = $PostReplay->ReplayPostReplay($user_id, $reply, $post_id, $father_id);
            }
        } else {
            $result = -3;
        }
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据异常", $result, ""));
        } elseif ($result == -3) {
            $this->ajaxReturn(ajaxmodel("false", "回复状态异常", $result, ""));
        } elseif ($result == -4) {
            $this->ajaxReturn(ajaxmodel("false", "回复信息异常", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "回复成功", $result, ""));
        }
    }
    //显示帖列表
    public function ForumList()
    {
        $limit = $_POST["limit"];
        $Forum = D("Post");
        $result = $Forum->PostAllList($limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据加载完成", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载中", $result, ""));
        }
    }

    //显示用户帖列表
    public function ForumUserList()
    {
        $user_id = $_POST['user_id'];
        $limit = $_POST["limit"];
        $Forum = D("Post");
        $result = $Forum->PostUserList($user_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据加载完成", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载中", $result, ""));
        }
    }

    //显示帖回复
    public function ForumReply()
    {
        $post_id = $_POST["post_id"];
        $limit = $_POST["limit"];
        $Forum_Reply = D("PostReply");
        $result = $Forum_Reply->ShowPostReplyList($post_id, $limit);
        if ($result == -1) {
            $this->ajaxReturn(ajaxmodel("false", "数据库错误", $result, ""));
        } elseif ($result == -2) {
            $this->ajaxReturn(ajaxmodel("false", "数据加载完成", $result, ""));
        } else {
            $this->ajaxReturn(ajaxmodel("success", "数据加载中", $result, ""));
        }
    }
}