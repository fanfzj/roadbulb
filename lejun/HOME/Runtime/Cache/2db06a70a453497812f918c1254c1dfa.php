<?php if (!defined('THINK_PATH')) exit();?><div class="container">
  <?php echo $_SESSION['user']['username'] ?>(UID:)<?php echo $_SESSION['user']['Id']; ?> <br>
  邮箱状态：<?php
 echo $_SESSION['user']['e-mail']; if($_SESSION['user']['e-mail_tf']==0){ echo "未验证"; } else{ echo "已验证:".$_SESSION['user']['e-mail']; } ?>   
  <hr style="border:1px dotted #999999;" width="75%;">
  <div class="row" id="tj_info">
     <div class="span1">统计信息:</div>
     <div class="span2">好友数：<span>0</span></div>
     <div class="span2">攻略数：<span><?php echo count($_SESSION['user_cheats']); ?></span></div>  
     <div class="span2">帖子数：<span><?php echo count($_SESSION['user_posts']); ?></span></div>
     <div class="span2">回帖数：<span><?php echo $_SESSION['replays_count']; ?></div></span>
  </div>
  <hr style="border:1px dotted #999999;" width="75%;">
  <h4>活跃概况</h4>
  <h6>用户等级：<?php echo $_SESSION['user']['grade_id'] ; ?></h6>
  <div class="row">
  	<div class="span4">用户注册时间：<?php echo $_SESSION['user']['zhuce_time'] ; ?></div>
    <div class="span4">上次登录时间：<?php echo $_SESSION['user']['last_logn_time'] ; ?></div><br />
    </div>
    <div class="row">
    <div class="span4">注册IP:<?php echo $_SESSION['user']['IP'] ; ?></div>
    <div class="span4">登陆IP:<?php echo $_SESSION['user']['login_ip'] ; ?></div></div>
  </div>
 <hr style="border:1px dotted #999999;" width="75%;">
  <h4>财富信息</h4>
   <div class="row">
  	<div class="span3">已用空间：</div>
    <div class="span3">积分：<?php echo $_SESSION['user']['integration']; ?></div>
    <div class="span3">金币：<?php echo $_SESSION['user']['gold']; ?></div><br />
    <div class="span3">距下一等级还需积分：</div>
  </div>
 
</div>