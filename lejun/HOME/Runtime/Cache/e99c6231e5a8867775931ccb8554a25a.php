<?php if (!defined('THINK_PATH')) exit();?><link rel="stylesheet" href="__CSS__/base/jquery.ui.all.css">
<script src="__JS__/jquery.ui.core.js"></script>
<script src="__JS__/jquery.ui.widget.js"></script>
<script src="__JS__/jquery.ui.datepicker.js"></script>
<script src="__JS__/jquery.ui.datepicker-zh-CN.js"></script>
<script src="__JS__/complete_user_info.js"></script>
<div class="container">
<div id="user_info_edit_nav_div" style="width:800px;">
     <div id="user_info_edit_nav"><span><i class="icon-home"></i>当前位置</span>>
    <span><a href="__APP__/UserInfo/show_user_info?username=<?php echo $_SESSION['username'] ?>"><?php echo $_SESSION['user']['username'] ?></a></span>><span>用户信息修改</span></div></div>
    
    <div style="margin-left:30px; width:100%;">
     <form action="" class="form-horizontal">
       <div class="control-group">
          <label for="user_info_username" class="control-label">用户名：</label>
          <div class="controls">
          <input type="text" id="user_info_username" name="modify_user_info_username" disabled="disabled" value="<?php echo $_SESSION['user']['username']; ?>" placeholder="请在这里填写写修改用户名"  />
          <p class="help-inline" id="modify_user_info_username_warning">用户名不能修改</p>
          </div>
     </div>
      
     
     <div class="control-group">
          <label for="user_info_email" class="control-label">邮箱：</label>
          <div class="controls">
          <input type="text" id="user_info_email" name="modify_user_info_email" value="<?php echo $_SESSION['user']['e-mail']; ?>" placeholder="请在这里填写新邮箱"  />
          <p class="help-inline" id="modify_user_info_email">请在这里填写新邮箱</p>
          </div>
     </div>
     
     <div class="control-group">
          <label for="user_info_qq" class="control-label">QQ：</label>
          <div class="controls">
          <input type="text" id="user_info_qq" name="modify_user_info_email" value="<?php echo $_SESSION['user']['qq']; ?>" placeholder="请在这里填写新邮箱"  />
          <p class="help-inline" id="modify_user_info_email">请在这里填写QQ</p>
          </div>
     </div>
     
     
     <div class="control-group">
          <label for="user_info_phone" class="control-label">电话：</label>
          <div class="controls">
          <input type="text" id="user_info_phone" name="modify_user_info_email" value="<?php echo $_SESSION['user']['phone']; ?>" placeholder="请在这里填写新邮箱"  />
          <p class="help-inline" id="modify_user_info_email">请在这里填写电话</p>
          </div>
     </div>
     
     <div class="control-group">
          <label for="user_info_address" class="control-label">地址：</label>
          <div class="controls">
          <input type="text" id="user_info_address" name="modify_user_info_email" value="<?php echo $_SESSION['user']['address']; ?>" placeholder="请在这里填写新邮箱"  />
          <p class="help-inline" id="modify_user_info_email">请在这里填写地址</p>
          </div>
     </div>
     
     <div class="control-group">
          <label for="user_info_birthdy" class="control-label">生日：</label>
          <div class="controls">
          <input type="text" id="user_info_birthdy" name="modify_user_info_email" value="<?php echo $_SESSION['user']['birthday']; ?>" placeholder="请在这里填写新邮箱"  />
          <p class="help-inline" id="modify_user_info_email">请在这里填写生日</p>
          </div>
     </div>
     <div id="complete_user_info_warning" style="color:#F00;margin-left:200px;"></div>
     <div class="form-actions" style="width:600px;">
       <button type="button" class="btn btn-primary" id="complete_user_info_sub_btn">提交修改</button>
       <button type="reset" class="btn btn-primary" id="complete_user_info_cancel_btn">重置</button>
     </div>
     </form>
    </div>
     
</div>