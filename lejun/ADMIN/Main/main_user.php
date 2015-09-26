<?php  include ("head.php");?>
<div class="admin_main_nr_dbox">
 <div class="pagetit">
 <div class="ptit">个人用户管理</div>
  <div class="clear"></div>
</div> 
<div class="summbit" style="background-color:#0FF">
<form id="form" name="form" method="get" action="main_user.php">
<table width="90%">
<tr>
<td align="left">
验证类型:<input type="radio" name="yz" value="1" id="yz_0" checked="checked" />不限
		        <input type="radio" name="yz" value="2" id="yz_1" />邮箱已验证
		        <input type="radio" name="yz" value="3" id="yz_2" />邮箱未验证
                <input type="radio" name="yz" value="4" id="yz_3" />手机已验
		        <input type="radio" name="yz" value="5" id="yz_4" />手机未验证
</td>
<td align="left">
           注册时间:
		        <input type="radio" name="zc" value="1" id="zc_0" checked="checked" />不限
		        <input type="radio" name="zc" value="2" id="zc_1" />三天
		        <input type="radio" name="zc" value="3" id="zc_2" />一周
		        <input type="radio" name="zc" value="4" id="zc_3" />一个月内
		        <input type="radio" name="zc" value="5" id="zc_4" />一年内
</td>
</tr>
<tr><td>
          <input name="Summit" type="submit" value="搜索" />
    </td>
    </tr>
    </table>    
    </form>
      </div>  
  <table width="100%" border="0" cellpadding="0" cellspacing="0"  id="list" class="link_lan" style="font-size:14px">
    <tr>
     <td  align="center" width="5%" height="10px" class="admin_list_tit">UID</td>
     <td  align="center" width="10%" class="admin_list_tit">用户名</td>
     <td  align="center" width="15%" class="admin_list_tit">email</td>
     <td  align="center" width="15%" class="admin_list_tit">手机</td>
     <td  align="center" class="admin_list_tit">注册时间</td>
     <td  align="center" class="admin_list_tit">最后登录时间</td>
     <td  align="center" class="admin_list_tit">上次登录ip</td>
     <td  align="center" class="admin_list_tit">积分</td>
     <td  align="center" width="5%" class="admin_list_tit" >操作</td>
    </tr>
     <?php
	   $pagesize=14;   //每頁顯示的數量
	   if(isset($_GET['page'])&&$_GET['page']!=''){
	     $page=$_GET['page'];
		 }
		 else{
		   $page=0;
		 }
		 $sql="select * from lj_user_information where authority_id=1";
		 $Summit=$_GET['Summit'];
		 if($Summit)
		 {
		 $yz=$_GET['yz'];
		 $zc=$_GET['zc'];
		 if($yz=='2')
		 $sql.=" and e_mail_tf=1";
		 if($yz=='3')
		 $sql.=" and e_mail_tf=0";
		 if($yz=='4')
		 $sql.=" and phone_tf=1";
		 if($yz=='5')
		 $sql.=" and phone_tf=0";
		 if($zc=='2')
		 $sql.=" and zhuce_time>date(now())-3";
		 if($zc=='3')
		 $sql.=" and zhuce_time>date(now())-7";
		 if($zc=='4')
		 $sql.=" and zhuce_time>date(now())-30";
		 if($zc=='5')
		 $sql.="and zhuce_time>date(now())-365";
		 }
		 $sbt=$_GET['sbt'];
		 if($sbt)
		 {
			$list=$_GET['list'];
			$sumbit=$_GET['sumbit'];
			$sql.=" and ". $list ."=".$sumbit;
		 }
		 $sql.=" order by zhuce_time desc";
		 $numRecord=mysql_num_rows(mysql_query($sql));//获取结果集中的记录数
		 $totalpage=ceil($numRecord/$pagesize);//计算总页数
		 $recordSql=$sql. " LIMIT ". $page*$pagesize.",".$pagesize;
		 $result=mysql_query($recordSql);
		 while($rs=mysql_fetch_array($result))
		 {
			 $i=$rs['Id'];
		 ?>
         <tr >
          <td align="center" style="color: #000; height:20px"><?php echo $rs['Id'];?></td>
          <td align="center"><strong  style="color:#003"><?php echo $rs['username'];?></strong></td>
          <td align="center" style="color:#333"><?php echo $rs['e-mail'];
		  if($rs['e_mail_tf']==0)
		  echo "<a href='main_mail.php'><img src='../../Public/img/email.gif' width='16' height='12' /></a>";?>
          </td>
	      <td align="center" style="color:#333"><?php echo $rs['phone'];
		  if($rs['phone_tf']==0)
		  echo "<a href='main_phone.php'><img src='../../Public/img/sms.gif' width='16' height='12' /></a>";?></td>
          <td align="center" style="color:#333"><?php echo $rs['zhuce_time'];?></td>
          <td align="center" style="color:#333"><?php echo $rs['last_logn_time'];?></td>
          <td align="center" style="color:#333"><?php echo $rs['login_ip'];?></td>
          <td align="center" style="color:#F00"><?php echo $rs['integration'];?></td>
          <td align="center" ><a href="main_user_look.php?Id=<?php echo $rs['Id'];?>"><strong style="color:#006">查看</strong></a></td>
      </tr>
     <?php }
	 //echo getcwd();  //获取当前路径
	 ?> 
     </table>
      <?php
	if($numRecord==0)
	{
	?>
	<div class="admin_list_no_info">没有任何信息</div>
    <?php
	}
	?>
      <div class="clear"></div>
      <div class="clear"></div>
	<table width="95%" border="0" cellspacing="10" cellpadding="0" class="admin_list_btm">
      <tr>
        <td>
    
        <div class="page link_bk" style="margin-right:30px;" align="center">
   <span class="grayborder" style="background-color:#f6f6f6;"><a href='main_user.php?page=0'>首頁</a></span>
   <span class="grayborder" style="background-color:#f6f6f6;"><a href='main_user.php?page=<?php if($page>0) echo $page-1;?>'>上一頁</a></span>
   <?php
     for($p=0;$p<$totalpage;$p++){
     if($page-5>0) echo "...";
	 if(($page-5<=0)&&($page+5>=$totalpage))
	 {?>
	 <span class="grayborder" style="background-color:#f6f6f6;"><a href='main_user.php?page=<?php echo $p;?>'><?php echo $p+1;?></a></span>
   <?php }
   if($page+5<$totalpage)
   echo "...";
   }?>
    <span class="grayborder" style="background-color:#f6f6f6;"><a href='main_user.php?page=<?php if($page<$totalpage-1) echo $page+1;?>'>下一頁</a></span>
    <span class="grayborder" style="background-color:#f6f6f6;"><a href='main_user.php?page=<?php echo $totalpage-1;?>'>末頁</a></span>
    </div>
    
		</td>
        <td align="right">
        <div class="page link_bk" >
		<form id="formseh" name="formseh" method="get" action="main_user.php">	
                <input type="text" name="sumbit" />
                <select name="list">
                <option value="Id">UID</option>
                <option value="e_mail">E-mail</option>
                <option value="phone">手机</option>
                <option value="IP">IP</option>
                </select>
				<input type="submit" name="sbt" class="sbt" id="sbt" value="搜索"/>
		  </form>
          </div>
	    </td>
      </tr></table>
  <div class="clear"></div>
   
<?php
//echo getcwd();  //获取当前路径
include("main_footer.html");
?>
