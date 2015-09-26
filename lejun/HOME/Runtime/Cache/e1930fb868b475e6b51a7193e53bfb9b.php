<?php if (!defined('THINK_PATH')) exit();?><div id="user_info_show_tz_list">
  <table border="1">
   <tr>
         <th>主题</th><th>发表时间</th><th>评论</th><th>赞</th>
        
   </tr>
    <?php  $n=0; $gl_count=count($_SESSION['user_cheats']); if($gl_count==0){ echo "<tr><td colspan='4' style='height:60px;text-align:center'>没有发表过攻略！快来发表吧</td></tr>" ; }else{ for($i=0;$i<count($_SESSION['user_cheats']);$i++){ ?>
           <tr>
             <td><a href="__APP__/Show/show_gl?cheat_id=<?php echo $_SESSION['user_cheats'][$i]['cheats_id'];?>"><?php echo $_SESSION['user_cheats'][$i]['theme'];?> </a></td>
             <td><?php echo $_SESSION['user_cheats'][$i]['datetime'];?></td>
            <td><?php echo $_SESSION['cheats_replays_count'][$n++];?></td>
            <td><?php echo $_SESSION['user_cheats'][$i]['praise'];?></td>
            </tr>
       <?php
 } } ?>
  </table>
  <!--<div id="user_info_show_tz_list_footer" class="well-small">
    点击添加更多
  </div>-->
</div>