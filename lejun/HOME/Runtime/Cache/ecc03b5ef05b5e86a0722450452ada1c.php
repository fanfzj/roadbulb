<?php if (!defined('THINK_PATH')) exit();?>
<script type="text/javascript" src="__ckeditor__/ckeditor.js"></script>
<script type="text/javascript" src"__JS__/user_info_add_gl.js"></script>

<script>

</script>

 <div id="user_info_edit_nav_div">
     <div id="user_info_edit_nav"><span><i class="icon-home"></i>当前位置</span>>
    <span><a href="__APP__/UserInfo/show_user_info?username=<?php echo $_SESSION['username'] ?>"><?php echo $_SESSION['user']['username'] ?></a></span>><span>发表新攻略</span></div></div>
<div id="user_info_add_gl">
<form class="form-horizontal" method="post" action="">
   <legend>发布攻略</legend> 
   <div class="control-group">
      <label for="user_info_fbgl_theme" class="control-label">主题:</label>
      <div class="controls">
      <input type="text" id="user_info_fbgl_theme" name="user_info_fbgl_theme" placeholder="请在这里填写主题"  />
      <p class="help-inline" id="user_info_fbgl_theme_warning">请在这里填写主题</p>
      </div>
  </div>
  
  <div class="control-group">
      <label for="user_info_fbgl_game" class="control-label">游戏:</label>
      <div class="controls">
      <input type="text" id="user_info_fbgl_game" name="user_info_fbgl_game" placeholder="请在这里填写游戏"  />
      <p class="help-inline" id="user_info_fbgl_game_warning">请在这里填写游戏</p>
      </div>
  </div>
  
  <div class="control-group">
      <label for="user_info_fbgl_game_kind" class="control-label">游戏分类:</label>
      <div class="controls">
      <select>
          <option value ="1">网络游戏</option>
          <option value ="2">单机游戏</option>
          <option value="3">手机游戏</option>
          <option value="4">电子游戏</option>
      </select>
      
       <select>
          <option value ="1">网络游戏</option>
          <option value ="2">单机游戏</option>
          <option value="3">手机游戏</option>
          <option value="4">电子游戏</option>
      </select>
      
      <input type="text" id="user_info_fbgl_game_kind" name="user_info_fbgl_game" placeholder="请在这里填写游戏"  />
      <p class="help-inline" id="user_info_fbgl_game_warning">游戏分类</p>
      </div>
  </div>
  
  <div class="control-group">
      <label for="user_info_fbgl_content" class="control-label">攻略内容:</label>
      <div class="controls">
      <textarea rows="30" cols="50" id="user_info_fbgl_content" name="user_info_fbgl_content" placeholder="请在这里"></textarea>
      <script type="text/javascript">CKEDITOR.replace('user_info_fbgl_content');</script>
      <p class="help-inline" id="user_info_fbgl_content_warning"></p>
      </div>
  </div>
  <div id="user_info_add_gl_warning" class="control-group"></div>
  <div class="form-actions" id="sub_reset_gl_div">
    <button class="btn btn-primary" type="button" id="gl_sub_btn">提交</button>
    <button class="btn btn-primary" type="reset" id="gl_reset_btn">重置</button>
  </div>
</form>   
</div>