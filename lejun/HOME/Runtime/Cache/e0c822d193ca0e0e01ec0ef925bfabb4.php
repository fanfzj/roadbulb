<?php if (!defined('THINK_PATH')) exit();?><script src="__JS__/modify_pwd.js"></script>
<div class="container">
<div id="user_info_edit_nav_div" style="width:800px;">
     <div id="user_info_edit_nav"><span><i class="icon-home"></i>当前位置</span>>
    <span><a href="__APP__/UserInfo/show_user_info?username=<?php echo $_SESSION['username'] ?>"><?php echo $_SESSION['user']['username'] ?></a></span>><span>用户信息修改</span></div></div>
    
    <div style="margin-left:30px; width:100%;">
     <form action="" class="form-horizontal">
     
     <div class="control-group">
          <label for="modify_pwd_user_info_old_pwd" class="control-label">原始密码：</label>
          <div class="controls">
          <input type="password" id="modify_pwd_user_info_old_pwd" name="modify_user_info_old_pwd" placeholder="请在这里填写原始密码"  />
          <p class="help-inline" id="modify_pwd_user_info_old_pwd_warning">请在这里填写原始密码</p>
          </div>
     </div>
     
       <div class="control-group">
          <label for="modify_pwd_user_info_new_pwd" class="control-label">新密码：</label>
          <div class="controls">
          <input type="password" id="modify_pwd_user_info_new_pwd" name="modify_user_info_new_pwd" placeholder="请在这里填写新密码"  />
          <p class="help-inline" id="modify_pwd_user_info_old_pwd_warning">请在这里填写新密码</p>
          </div>
     </div>
     
      <div class="control-group">
          <label for="modify_pwd_user_info_new_pwd_second" class="control-label">新密码确认：</label>
          <div class="controls">
          <input type="password" id="modify_pwd_user_info_new_pwd_second" name="modify_user_info_new_pwd_second" placeholder="请在这里填写新密码确认"  />
          <p class="help-inline" id="modify_pwd_user_info_new_pwd_second">请在这里填写新密码确认</p>
          </div>
     </div>
     
     <div id="modify_pwd_warning" style="margin-left:200px;color:#F00;"></div>
     
     <div class="form-actions" style="width:600px;">
       <button type="button" class="btn btn-primary" id="modify_pwd_sub_btn">提交修改</button>
       <button type="reset" class="btn btn-primary" id="modify_pwd_cancel_btn">重置</button>
     </div>
     </form>
    </div>
     
</div>