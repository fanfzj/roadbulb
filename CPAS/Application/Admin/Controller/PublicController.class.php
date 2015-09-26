<?php
/**
 * Created by PhpStorm.
 * User: 志俊
 * Date: 15-2-11
 * Time: 上午8:56
 */
namespace Admin\Controller;

use Think\Controller;

class PublicController extends Controller
{

//接口页面
    public function home_jk()
    {
//        if (!session('?root_id')) {
//            redirect('/Public/Login', 5, '请登录...');
//        } else {
            $this->display();
//        }
    }

    public function root_jk()
    {
        //        if (!session('?root_id')) {
//            redirect('/Public/Login', 5, '请登录...');
//        } else {
        $this->display();
//        }
    }
}