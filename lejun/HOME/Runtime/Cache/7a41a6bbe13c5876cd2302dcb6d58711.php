<?php if (!defined('THINK_PATH')) exit(); session_start(); if(!isset($_SESSION['user']) || $_SESSION['user']==''){ ?>
<?php
session_start(); include_once( './sina/config.php' ); include_once( './sina/saetv2.ex.class.php' ); $o = new SaeTOAuthV2( WB_AKEY , WB_SKEY ); $code_url = $o->getAuthorizeURL( WB_CALLBACK_URL ); include_once('./renren/config.php'); include_once('./renren/rennclient/RennClient.php'); $rennClient = new RennClient ( APP_KEY, APP_SECRET ); $rennClient->setDebug ( DEBUG_MODE ); $state = uniqid ( 'renren_', true ); $_SESSION ['renren_state'] = $state; $code_url = $rennClient->getAuthorizeURL ( CALLBACK_URL, 'code', $state ); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="乐俊游戏,乐俊网,乐俊攻略,玩在乐俊,乐俊工作室">
<meta name="description" content="乐俊游戏攻略,乐俊工作室,最新最全的游戏攻略，尽在乐俊网">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="qc:admins" content="1441340465642106212" />
<title>乐俊</title>

     <link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">
     <!--<link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">-->
     <link rel="stylesheet" href="__CSS__/index.css" type="text/css" />
     
     <!--标题图片-->
       <link rel="icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     <link rel="shortcut icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     
    <script type="text/javascript">
       var APP = "__APP__";
	   var IMG = "__IMG__";
	   var GAME_PHOTO = "__GAME_PHOTO__";
    </script>
    <script type="text/javascript" src="__JS__/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="__JS__/bootstrap.js"></script>
    <script type="text/javascript" src="__JS__/index.js" charset="utf-8"></script>
  
   <!--[if lt IE 9]>
    <script src="dist/html5shiv.js"></script>
    <![endif]-->
<meta name="baidu-site-verification" content="ly0VrFsiIJ" />
</head>
<body  style="background-image:url(__IMG__/bg.jpg); background-attachment:fixed;">
<div class="container">
  <div class="navbar navbar-fixed-top"> 
      <div class="navbar-inner">
      	<div class="container" id="nav_list_div">
        
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        
          <a id="lejun" href="__APP__/Index/index_index" class="brand" rel ="popover"  title ="欢迎来到乐军论坛"  data-toggle="popover" onclick="popover()"  data-html="true"  data-content ="你的支持是我我们前进的动力">lejun</a>  
          <script>
           
	       function popover(){$('#lejun').popover();}
          </script>         
          
          <div class="nav-collapse">
              <ul class="nav" id="header_nav_ul" >
              	<li class="active">
                   <a href="__APP__/Index/index_index">首页</a>
                </li>
              	<li>
                   <a href="__APP__/Zq/zq_game?game_list_id=1" id="nav_dj">单机游戏攻略</a>
                </li>
              	<li>
                <a href="__APP__/Zq/zq_game?game_list_id=3" id="nav_wy">网络游戏攻略</a>
                </li>
                <li>
                     <a href="__APP__/Zq/zq_game?game_list_id=4" id="nav_dw">电玩攻略</a>
                </li>
              	<li>
                 <a href="__APP__/Zq/zq_game?game_list_id=2" id="nav_sj">手游攻略</a>
                </li>
                <li>
                  <a href="__APP__/Zq/zq_game?game_list_id=5" id="nav_wye">网页游戏攻略</a>
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
                      <a href="http://www.sdo.com/" target="_blank">盛大</a>  
                    </li>
                   	<li>
                       <a href="http://www.ea.com/" target="_blank">ea</a>  
                    </li>
                   	<li>
                       <a href="http://www.the9.com/" target="_blank">第九城</a>  
                     
                    </li>
                   </ul>
                </li>
              	
              	
              </ul>   
           </div>
          
          <ul class="nav pull-right" id="user_nav">
               <?php
 session_start(); if(!isset($_SESSION['user']) || $_SESSION['user']==''){ ?>
             <li><a href="<?php echo $code_url?>" target="_blank"><img src="__IMG__/sina.png" title="点击进入授权页面" alt="点击进入授权页面" border="0" /></a></li>
              
              <li><a  href="<?php echo $code_url;?>" ><img src="__IMG__/rr.png" class="vm" alt="人人连接登陆" /></a>
</li>
              <li>
                 <a href="#login-win" data-toggle="modal">登陆</a>  
              </li>
              <li class="divider-vertical"><a href="#"></a></li>
          	  <li>
                 <a href="__APP__/Register/register">注册</a>
              </li>
            <?php  }else{ if(!$_SESSION["user"]["photo"]){ ?> 
            <li><img src="__USER_PHOTO__/0.jpg" alt="" height="25px" width="30px" style="margin-top:5px;"></li>
            <li> 
            <?php }else{ ?>
             <li><img src="__PHOTO__/<?php echo $_SESSION['user']['photo']; ?>" alt="" height="30px" width="30px" style="margin-top:5px;"></li>
            <li>
            <?php } ?> 
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
                    <a type="button"  class="btn btn-primary" id="login-win-close-btn">取消</button>
                    <a href="__APP__/Register/register" class="btn btn-primary" id="to-register-win-close-btn">注册</a>
                    <a type="button" class="btn btn-primary" id="login-sub-btn">确定登陆</a>
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
                  <a id="logout-cancel-btn" class="btn btn-primary">取消</a>
              </div>
    </div>

<?php  }else{ ?>
 <?php
session_start(); include_once( './sina/config.php' ); include_once( './sina/saetv2.ex.class.php' ); $o = new SaeTOAuthV2( WB_AKEY , WB_SKEY ); $code_url = $o->getAuthorizeURL( WB_CALLBACK_URL ); include_once('./renren/config.php'); include_once('./renren/rennclient/RennClient.php'); $rennClient = new RennClient ( APP_KEY, APP_SECRET ); $rennClient->setDebug ( DEBUG_MODE ); $state = uniqid ( 'renren_', true ); $_SESSION ['renren_state'] = $state; $code_url = $rennClient->getAuthorizeURL ( CALLBACK_URL, 'code', $state ); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="乐俊游戏,乐俊网,乐俊攻略,玩在乐俊,乐俊工作室">
<meta name="description" content="乐俊游戏攻略,乐俊工作室,最新最全的游戏攻略，尽在乐俊网">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="qc:admins" content="1441340465642106212" />
<title>乐俊</title>

     <link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">
     <!--<link rel="stylesheet" href="__CSS__/bootstrap.css" type="text/css">-->
     <link rel="stylesheet" href="__CSS__/index.css" type="text/css" />
     
     <!--标题图片-->
       <link rel="icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     <link rel="shortcut icon" href="__IMG__/favicon.ico" mce_href="favicon.ico" type="image/x-icon"> 
     
    <script type="text/javascript">
       var APP = "__APP__";
	   var IMG = "__IMG__";
	   var GAME_PHOTO = "__GAME_PHOTO__";
    </script>
    <script type="text/javascript" src="__JS__/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="__JS__/bootstrap.js"></script>
    <script type="text/javascript" src="__JS__/index.js" charset="utf-8"></script>
  
   <!--[if lt IE 9]>
    <script src="dist/html5shiv.js"></script>
    <![endif]-->
<meta name="baidu-site-verification" content="ly0VrFsiIJ" />
</head>
<body  style="background-image:url(__IMG__/bg.jpg); background-attachment:fixed;">
<div class="container">
  <div class="navbar navbar-fixed-top"> 
      <div class="navbar-inner">
      	<div class="container" id="nav_list_div">
        
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        
          <a id="lejun" href="__APP__/Index/index_index" class="brand" rel ="popover"  title ="欢迎来到乐军论坛"  data-toggle="popover" onclick="popover()"  data-html="true"  data-content ="你的支持是我我们前进的动力">lejun</a>  
          <script>
           
	       function popover(){$('#lejun').popover();}
          </script>         
          
          <div class="nav-collapse">
              <ul class="nav" id="header_nav_ul" >
              	<li class="active">
                   <a href="__APP__/Index/index_index">首页</a>
                </li>
              	<li>
                   <a href="__APP__/Zq/zq_game?game_list_id=1" id="nav_dj">单机游戏攻略</a>
                </li>
              	<li>
                <a href="__APP__/Zq/zq_game?game_list_id=3" id="nav_wy">网络游戏攻略</a>
                </li>
                <li>
                     <a href="__APP__/Zq/zq_game?game_list_id=4" id="nav_dw">电玩攻略</a>
                </li>
              	<li>
                 <a href="__APP__/Zq/zq_game?game_list_id=2" id="nav_sj">手游攻略</a>
                </li>
                <li>
                  <a href="__APP__/Zq/zq_game?game_list_id=5" id="nav_wye">网页游戏攻略</a>
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
                      <a href="http://www.sdo.com/" target="_blank">盛大</a>  
                    </li>
                   	<li>
                       <a href="http://www.ea.com/" target="_blank">ea</a>  
                    </li>
                   	<li>
                       <a href="http://www.the9.com/" target="_blank">第九城</a>  
                     
                    </li>
                   </ul>
                </li>
              	
              	
              </ul>   
           </div>
          
          <ul class="nav pull-right" id="user_nav">
               <?php
 session_start(); if(!isset($_SESSION['user']) || $_SESSION['user']==''){ ?>
             <li><a href="<?php echo $code_url?>" target="_blank"><img src="__IMG__/sina.png" title="点击进入授权页面" alt="点击进入授权页面" border="0" /></a></li>
              
              <li><a  href="<?php echo $code_url;?>" ><img src="__IMG__/rr.png" class="vm" alt="人人连接登陆" /></a>
</li>
              <li>
                 <a href="#login-win" data-toggle="modal">登陆</a>  
              </li>
              <li class="divider-vertical"><a href="#"></a></li>
          	  <li>
                 <a href="__APP__/Register/register">注册</a>
              </li>
            <?php  }else{ if(!$_SESSION["user"]["photo"]){ ?> 
            <li><img src="__USER_PHOTO__/0.jpg" alt="" height="25px" width="30px" style="margin-top:5px;"></li>
            <li> 
            <?php }else{ ?>
             <li><img src="__PHOTO__/<?php echo $_SESSION['user']['photo']; ?>" alt="" height="30px" width="30px" style="margin-top:5px;"></li>
            <li>
            <?php } ?> 
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
                    <a type="button"  class="btn btn-primary" id="login-win-close-btn">取消</button>
                    <a href="__APP__/Register/register" class="btn btn-primary" id="to-register-win-close-btn">注册</a>
                    <a type="button" class="btn btn-primary" id="login-sub-btn">确定登陆</a>
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
                  <a id="logout-cancel-btn" class="btn btn-primary">取消</a>
              </div>
    </div>

 <?php
 } ?>

 <div>
      <div class="row">
         <div class="clearfix">
             <div class="span3">logo</div>
             <div class="span7">
             <div class="form-horizontal" id="search-div">
              <form class="form-search" id="search_form" action="__APP__/Search/do_search" method="post">
              <table id="search_table" cellspacing="0" cellpadding="0">
               <tr>
                 <td id="search_text_td"><input type="text" placeholder="攻略 帖子 游戏" class="input-xxlarge" id="search_text" name="search_content" />
                 </td>
                 <td><select id="search_kind" style="width:65px;" name="search_kind">
                          <option value="1">攻略</option>
                          <option value="2">帖子</option>
                          <option value="3">全部</option>
                     </select> 
                  </td>      
                  <td> <button type="submit" id="search_btn" class="btn">搜索</button>
                  </td>
             </tr>
            </table>
              </form>
              </div>
              <div id="publish-div">
                  <ul class="unstyled">
                    <li><a href="__APP__/Publish/show_publish_tz">我要发帖</a></li>
                    <li><a href="__APP__/Publish/show_publish_gl"> 我要发攻略</a></li>
                    <li><a href=""> 我要求组队</a></li>
                  </ul>
              </div>
              
            </div>
            <div class="span2">
              <ul class="unstyled" id="hot-search-ul">
              	<li ><a href="#">英雄联盟</a></li>
                <li><a href="#">英雄联盟</a></li>
                <li><a href="#">英雄联盟</a></li>
                <li><a href="#">英雄联盟</a></li>
                <li><a href="#">英雄联盟</a></li>
                <li><a href="#">英雄联盟</a></li>
              </ul>
            </div>
         </div>
      </div>
    
      
 </div>
   
   
    
   
  <div id= "picture-tie-gonglue">
      <div class="row">
          <!--滑动图片-->
         <div class="span4" id="picture">
            <div id="myCarousel" class="carousel">
              <!-- Carousel items -->
              <div class="carousel-inner">
                <div class="active item"><img src="__IMG__/0.jpg" alt="哈哈" /></div>
                <div class="item"><img src="__IMG__/1.jpg" alt="呵呵"></div>
                <div class="item"><img src="__IMG__/2.jpg" alt="哦哦"></div>
                <div class="item"><img src="__IMG__/3.jpg" alt=""></div>
                <div class="item"><img src="__IMG__/4.jpg" alt=""></div>
              </div>
              <!-- Carousel nav -->
              <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
              <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
         </div>
      
       <!--帖子 攻略-->
         <div class="span5" id="tie-gonglue">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#latest_gl" data-toggle="tab">最新攻略</a>              </li>
              <li><a href="#latest_theme" data-toggle="tab">最新主题</a></li>
              <li><a href="#messages" data-toggle="tab">热门攻略</a></li>
              <li><a href="#settings" data-toggle="tab">热门主题</a></li>
		   </ul> 
        <div class="tab-content">
          <div class="tab-pane active" id="latest_gl">
            <ul>
               
               <?php if(is_array($cheats_latest)): foreach($cheats_latest as $key=>$vo): ?><li><a href="__APP__/Show/show_gl?cheat_id=<?php echo ($vo["cheats_id"]); ?>"><?php echo ($vo["theme"]); ?></a></li><?php endforeach; endif; ?>
               
            </ul>
          </div>
          <div class="tab-pane" id="latest_theme">
             <ul>
                <?php if(is_array($post_latest)): foreach($post_latest as $key=>$posts): ?><li><a href="__APP__/Show/show_tz?post_id=<?php echo ($posts["post_id"]); ?>"><?php echo ($posts["theme"]); ?></a></li><?php endforeach; endif; ?>
             </ul>
          
          </div>
          
          <!--热门攻略-->
          <div class="tab-pane" id="messages">
            <ul>
            <?php if(is_array($cheats_hot_arr)): foreach($cheats_hot_arr as $key=>$cheat_hot): ?><li><a href="__APP__/Show/show_gl?cheat_id=<?php echo ($cheat_hot["cheats_id"]); ?>"><?php echo ($cheat_hot["theme"]); ?></a></li><?php endforeach; endif; ?>
            </ul>
          </div>
          
          
          <!--热门主题-->
          <div class="tab-pane" id="settings">
          
            <ul>
            <?php if(is_array($posts_hot_arr)): foreach($posts_hot_arr as $key=>$post_hot): ?><li><a href="__APP__/Show/show_tz?post_id=<?php echo ($post_hot["post_id"]); ?>"><?php echo ($post_hot["theme"]); ?></a></li><?php endforeach; endif; ?>
            </ul>
          </div>
       </div>
         
         </div>
      
         <div class="span3" id="latest_gd">
          <h4>公告</h4>
          <ul>
          <?php if(is_array($board_arr)): foreach($board_arr as $key=>$board): ?><li><a href="__APP__/Show/show_gg?board_id=<?php echo ($board["Id"]); ?>"><?php echo ($board["theme"]); ?></a></li><?php endforeach; endif; ?>
          </ul>
         </div>
      </div>
   </div>
  
   <div id="from_other">
	   <div id="from_other_header">
        <div id="from_other_header_title"><h4>来自其它的NB网站的攻略和秘籍(共：<?php echo $count.'条';?>)</h4>
        </div>
       <div id="fanye"> 
        <ul class="pager">
        <li class="previous disabled">
         <a  id="prev">&larr; Last</a>
        </li>
      <!--<li><input type="type" id="page_id" width="10"></li>-->
        <li class="previous">
          <a  id="next">Next &rarr;</a>
        </li>
        <li><a><span id="page_id">1</span></a></li>
        <li><input type="hidden" id="page_count" value="<?php echo ($count/16); ?>"></li>
     </ul>
     </div>
    </div> 
	   <div id="from_other_content" class="row">
		   <div id="content_left" class="span6">
		      <ul>
			   <?php if(is_array($gls)): foreach($gls as $key=>$gl_other): ?><li><a href="<?php echo ($gl_other["link"]); ?>" target="_blank"><?php echo ($gl_other["theme"]); ?></a></li><?php endforeach; endif; ?>
		      </ul>
	        </div>
            
            <div id="content_right" class="span5">
              <ul>
			   <?php if(is_array($gls_d)): foreach($gls_d as $key=>$gl_other_d): ?><li><a href="<?php echo ($gl_other_d["link"]); ?>" target="_blank"><?php echo ($gl_other_d["theme"]); ?></a></li><?php endforeach; endif; ?>
		      </ul>
            </div>  
	   </div>
   </div>
  
  <!--手机游戏热门-->
 <!-- <div id="sjgame">
     <div class="well-small"><a href="__APP__/Zq/zq_game?game_list_id=2">手机游戏攻略专区</a></div>  
     <div class="row container" id="sj_zq_index_game_show_div_1">
        <div class="span3" id="sj_zq_game1"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game2"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game3"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game4"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game5"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
     
      <div class="row container" id="sj_zq_index_game_show_div_2">
        <div class="span3" id="sj_zq_game6"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game7"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game8"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game9"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="sj_zq_game10"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">《保卫萝卜》攻略</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
  </div>
  
  
  <!--单机游戏热门-->
 <!-- <div id="djgame">
     <div class="well-small"><a href="__APP__/Zq/zq_game?game_list_id=1">单机游戏攻略专区</a></div>
      <div class="row container" id="dj_zq_index_game_show_div_1">
        <div class="span3" id="dj_zq_game1"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">NBA 2k14</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game2"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">极品飞车18</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game3"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game4"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game5"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
     
      <div class="row container" id="dj_zq_index_game_show_div_2">
        <div class="span3" id="dj_zq_game6"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game7"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game8"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game9"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dj_zq_game10"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">使命召唤10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>  
  </div>
  
  
  <!--网络游戏热门-->
  <!--<div id="wygame">
     <div class="well-small"><a href="__APP__/Zq/zq_game?game_list_id=3">网络游戏专区</a></div>
     <div class="row container" id="wy_zq_index_game_show_div_1">
        <div class="span3" id="wy_zq_game1"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game2"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game3"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game4"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game5"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
     
      <div class="row container" id="wy_zq_index_game_show_div_2">
        <div class="span3" id="wy_zq_game6"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game7"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game8"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game9"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wy_zq_game10"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">英雄联盟10</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>    
  </div>
  
  
  <!--网页游戏-->
  <!--  <div  id="wyegame">
     <div class="well-small"><a href="__APP__/Zq/zq_game?game_list_id=5">网页游戏攻略</a></div>  
     <div class="row container" id="wye_zq_index_game_show_div_1">
        <div class="span3" id="wye_zq_game1"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game2"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game3"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game4"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game5"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
     
      <div class="row container" id="wye_zq_index_game_show_div_2">
        <div class="span3" id="wye_zq_game6"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game7"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game8"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game9"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="wye_zq_game10"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">大闹天宫</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>    
  </div>


 <div id="dwgame">
     <div class="well-small"><a href="__APP__/Zq/zq_game?game_list_id=4">电玩游戏攻略</a></div>  
      <div class="row container" id="dw_zq_index_game_show_div_1">
        <div class="span3" id="dw_zq_game1"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game2"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game3"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game4"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game5"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>
     
      <div class="row container" id="dw_zq_index_game_show_div_2">
        <div class="span3" id="dw_zq_game6"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game7"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game8"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game9"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
        
        <div class="span2" id="dw_zq_game10"><div style="margin-left:8px;"><h4><a href="__APP__/Zq/zq_hot_game_show?game_id=10">智龙迷城Z</a></h4></div><div style="margin-top:8px; margin-bottom:5px;margin-left:8px; color:#F00;"><span>攻略</span>|<span>热度</span></div></div>
     </div>      
  </div>-->
  
<footer class="footer">
     <p><a href="http://www.miitbeian.gov.cn/">沪ICP备14004314号-1</a>
     </p>
     <p>
       <ul class="unstyled" id="f-n-u">
       	<li><a href="__APP__/Me/contact_us">联系我们</a></li>
       	<li><a href="__APP__/Me/about_us">关于我们</a></li>
        <li><a href="__APP__/Me/team">团队</a></li>
       	<li><a href="__APP__/Me/give_us_advice">给我们提建议</a></li>
        <li><a href="__APP__/Me/duty_statement">免责声明</a></li>
       </ul>
     </p>
     
     <p>
       <ul class="unstyled" id="friend_link">
       	<li style="font-weight:600">友情链接</li>
       	<li></li>
        <li><a href="http://www.letogo.net" target="_blank">任意门</a></li>
       	<li><a href="http://www.ljyx.biz/ADMIN" target="_blank">乐俊后台</a></li>
        <li><a href="http://lejunfb.taobao.com/" target="_blank">饭宝充值</a></li>
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
        <li><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5812460'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/stat.php%3Fid%3D5812460%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></li>
	<li>
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F7a2c6a6bd4149dd6e990404dad23558a' type='text/javascript'%3E%3C/script%3E"));
</script>               	 
	</li>
</ul>
     </p>
     
	 <p>
	   <div class="bdsharebuttonbox" style="margin-left:160px;"><a href="#" class="bds_more" data-cmd="more">分享到：</a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间">QQ空间</a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">人人网</a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a><a href="#" class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网">开心网</a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧">百度贴吧</a><a href="#" class="bds_fbook" data-cmd="fbook" title="分享到Facebook">Facebook</a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{"tsina":"3197495784"},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{"bdSize":16},"image":{"viewList":["qzone","tsina","tqq","renren","weixin","kaixin001","tieba","fbook"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin","kaixin001","tieba","fbook"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
    </div>
	 </p>
 </footer>

</div>  
</body>

</html>