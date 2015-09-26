<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>乐俊</title>

     <link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">
     <!--<link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">-->
     <link rel="stylesheet" href="__CSS__/index.css" type="text/css" />
     
     <!--标题图片-->
       <link rel="icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     <link rel="shortcut icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     
    <script type="text/javascript">
       var APP = "__APP__";
    </script>
    <script type="text/javascript" src="__JS__/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="__JS__/bootstrap.js"></script>
    <script type="text/javascript" src="__JS__/index.js" charset="utf-8"></script>
  
   <!--[if lt IE 9]>
    <script src="dist/html5shiv.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
  <div class="navbar navbar-fixed-top"> 
      <div class="navbar-inner">
      	<div class="container">
        
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        
          <a id="lejun" href="__APP__" class="brand" rel ="popover"  title ="欢迎来到乐军论坛"  data-toggle="popover" onclick="popover()"  data-html="true"  data-content ="你的支持是我我们前进的动力">lejun</a>  
          <script>
           
	       function popover(){$('#lejun').popover();}
          </script>         
          
          <div class="nav-collapse">
              <ul class="nav">
              	<li class="active">
                   <a href="#">论坛</a>
                </li>
              	<li>
                   <a href="__APP__/Zq/dj_zq">单机游戏攻略</a>
                </li>
              	<li>
                     <a href="__APP__/Zq/wy_zq">网络游戏攻略</a>
                </li>
                <li>
                     <a href="__APP__/Zq/dw_zq">电玩攻略</a>
                </li>
              	<li>
                     <a href="__APP__/Zq/sj_zq">手游攻略</a>
                </li>
                
                <li class="dropdown">
                   <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                             热门游戏攻略
                    <b class="caret"></b>
                   </a>
                   <ul class="dropdown-menu">
                   	<li>
                      <a href="#">lol</a>  
                    </li>
                   	<li>
                       <a href="#">剑灵</a>  
                    </li>
                   	<li>
                       <a href="#">地下城与勇士</a>  
                     
                    </li>
                   </ul>
                </li>
                
                <li class="dropdown">
                   <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                            推荐
                    <b class="caret"></b>
                   </a>
                   <ul class="dropdown-menu">
                   	<li>
                      <a href="#">lol</a>  
                    </li>
                   	<li>
                       <a href="#">剑灵</a>  
                    </li>
                   	<li>
                       <a href="#">地下城与勇士</a>  
                     
                    </li>
                   </ul>
                </li>
                
                <li class="dropdown">
                   <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                             其它
                    <b class="caret"></b>
                   </a>
                   <ul class="dropdown-menu">
                   	<li>
                      <a href="#">盛大</a>  
                    </li>
                   	<li>
                       <a href="#">网易</a>  
                    </li>
                   	<li>
                       <a href="#">腾讯士</a>  
                     
                    </li>
                   </ul>
                </li>
              	
              	
              </ul>   
           </div>
          
          <ul class="nav pull-right">
          	<li>
               <?php
 session_start(); if(!isset($_SESSION['user']) || $_SESSION['user']==''){ ?>
                 <a href="#login-win" data-toggle="modal">登陆</a>  
              </li>
              <li class="divider-vertical"><a href="#"></a></li>
          	  <li>
                 <a href="__APP__/Register/register">注册</a>
              </li>
              <?php  }else{ ?>    
             <a href="__APP__/UserInfo/show_user_info?user_id=<?php echo $_SESSION['user']['Id'] ?>" id="user">
             <?php  echo $_SESSION['user']['username']; ?></a>
             </li>
             <li class="divider-vertical"><a href="#"></a></li>
          	 <li>
                 <a href="#confire-logout-win" data-toggle="modal">退出</a>
            </li>
            <?php  } ?>
            
           
            
          </ul>
      
       </div>
      </div>
  </div>
  
    <!--跳出登陆的对话框-->
    <div class="modal hide fade" id="login-win">
              <div class="modal-header">
                 <a class="close" data-dismiss="modal">×</a>                    <h2>用户登陆</h2>
                       
              </div>
              <div class="modal-body">
                    <div class="modal-form">
                       <form action="__APP__/Login/do_login" method="post"  class="form-horizontal" name="user_login">
                        <div class="control-group">
                           <label for="username" class="control-label">用户名</label>
                           <div class="controls">
                            <input type="text" name="username" id="username" placeholder="用户名"  />
                            <p class="help-inline" id="username-warning" style="color:#F00;"></p>
                            </div>
                        </div>
                          
                        <div class="control-group">
                          <label for="pwd" class="control-label">密码</label>
                         <div class="controls">
                          <input type="password" name="pwd" id="pwd" placeholder="密码" />
                          <p class="help-inline" id="pwd-warning" style="color:#F00;"></p>
                         </div>
                        </div>
                        
                        <div class="control-group">
                          <label for="code" class="control-label">验证码</label>
                         <div class="controls">
                          <input style="width:100px;" type="text" name="code" id="code" placeholder="验证码" /><img src="__APP__/Public/code" alt="" onclick='this.src=this.src+"?"+Math.random()'><span>(点击验证码刷新)</span>
                         <p class="help-inline" id="code-warning" style="color:#F00;"></p>
                         </div>
                        </div>   
                        
                        <div class="control-group" style="margin-left:100px;">
                           <p id="login_warning" style="color:#F00;"></p>
                        </div>
                           
                    </div>     
              </div>
              <div class="modal-footer">
                    <button type="button"  class="btn btn-primary" id="login-win-close-btn">取消</button>
                    <a href="__APP__/Register/register" class="btn btn-primary" id="to-register-win-close-btn">注册</a>
                    <button type="button" class="btn btn-primary" id="login-sub-btn">确定登陆</button>
              </div>
              </form>  
    </div>
    
    <!--确定注销窗口-->
      <div class="modal hide fade" id="confire-logout-win">
              <div class="modal-header">
                 <a class="close" data-dismiss="modal">×</a>
                       <h2>确定注销</h2> 
              </div>
              
              <div class="modal-body">
                 <a href="__APP__/Login/do_logout" class="btn btn-primary">确定退出</a>
                  <button id="logout-cancel-btn" class="btn btn-primary">取消</button>
              </div>
    </div>
<link rel="stylesheet" href="__CSS__/sj_zq.css" />
<script src="__JS__/sj_zq.js"></script>
<div id="sj_zq_main_div">
   <div class=""><legend>手机游戏专区</legend></div>
   <div class="row">
     <div class="span8">
      <div class="navbar">
          <div class="navbar-inner" style="background-color:#7BBFE2;">
           <div class="container" style="color:#F00;">
            <a class="brand" href="#">手游</a>
            <ul class="nav">
              <li class="active"><a href="#">热门攻略</a></li>
              <li><a href="#">最新攻略</a></li>
              <li><a href="#">最新帖子</a></li>
              <li><a href="#">热门帖子</a></li>
            </ul>
          </div>
          </div>
        </div>
<span id="gl_count">
<?php
 $n=0; $m=0; echo count($cheats_latest); ?></span> 
  
 长度： <?php echo ($demo); ?>    
        <hr style="border:1px dotted #999999;">
      
      
       <?php if(is_array($cheats_latest)): foreach($cheats_latest as $key=>$vo): ?><div class="row" style="margin-top:20px;">
          <div class="span2">图片</div>
          <div class="span6" style="">
             <!--文章的标题栏-->
             <div class="gl_header">
              <h2>
                <a class="title" title="<?php echo ($vo["theme"]); ?>" href="__APP__/Show/show_gl?cheat_id=<?php echo ($vo["cheats_id"]); ?>"><?php echo ($vo["theme"]); ?></a>
                <a class="more" style="background:url(__IMG__/nav-icons.png) no-repeat 0 -370px;" title="阅读全文" href="__APP__/Show/show_gl?cheat_id=<?php echo ($vo["cheats_id"]); ?>"></a>
              </h2>
             </div>
            <!--基本信息-->
            <div class="gl_data">
             <span class="gl_time" style="background:url(__IMG__/nav-icons.png) no-repeat 0 -168px"><?php echo ($vo["datetime"]); ?></span>
             <span class="gl_ahthor" style="background:url(__IMG__/nav-icons.png) no-repeat 0 -184px"><?php echo $cheats_user_arr[$n++]['username'] ?></span>
             <span class="gl_comment" style="background:url(__IMG__/nav-icons.png) no-repeat 0 -200px"><?php echo $cheats_replays_count[$m++] ?></span>
             <span class="gl_read_count" style="background:url(__IMG__/nav-icons.png) no-repeat 0 -216px"><?php echo ($vo["clicks"]); ?></span>
            
             <span class="gl_author"></span>
             <span class="gl_praise"></span>
            </div>
            
            <!--内容-->
            <div class="gl_content">
            <?php echo ($vo["content"]); echo '.......' ?>
            </div>
          </div>
        </div><?php endforeach; endif; ?> 
      </div>
     <div class="span4">
       右侧栏
     
     </div>
   </div>
</div>

<footer class="footer">
     <p>
       <ul class="unstyled" id="f-n-u">
       	<li><a href="">联系我们</a></li>
       	<li><a href="">关于我们</a></li>
        <li><a href="">团队</a></li>
       	<li><a href="">给我们提建议</a></li>
       </ul>
     </p>
     <p>
       <?php
 echo date('Y-m-d H:i:s'); ?>   
     </p>
     <p>
      <ul id="brand-help" class="unstyled">
       	<li><a href="#">©2014 lejun</a></li>
       	<li class="divider-vertical"><a href="#"></a></li>
       	<li><a href="">帮助</a></li>
      </ul>
      
    </div>
     </p>
 </footer>

</div>  
</body>

</html>