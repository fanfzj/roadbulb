<?php if (!defined('THINK_PATH')) exit();?><div class="container">
 <div id="user_info_edit_nav_div" style="width:800px;">
     <div id="user_info_edit_nav"><span><i class="icon-home"></i>当前位置</span>>
    <span><a href="__APP__/UserInfo/show_user_info?username=<?php echo $_SESSION['username'] ?>"><?php echo $_SESSION['user']['username'] ?></a></span>><span>消息</span></div></div>
    
     <div class="tabbable tabs-left" style="text-align:center;margin-left:20px;">

    <!-- <ul class="nav nav-pills">-->
    
    <ul class="nav nav-tabs" style="border:#060 solid 1px; float:left;">
        <div style="text-align:center"><h3>通知</h3></div>
    	<li class="active"><a href="#tab1" data-toggle="tab">私人消息</a></li>
    	<li><a href="#tab2" data-toggle="tab">系统消息</a></li>
    	<li><a href="#tab3" data-toggle="tab">提醒</a></li>
    </ul> 
    
    <div class="tab-content" style="border:#000 solid 1px; float:left;width:500px; margin-left:0px;">
      <div class="tab-pane active" id="tab1"><p>在这里可以显示私人消息</p></div>
      <div class="tab-pane" id="tab2"><p>在这里可以显示系统消息</p></div>
      <div class="tab-pane" id="tab3"><p>在这里可以显示提醒</p></div>
    </div>
   
   </div>
   
    
</div>