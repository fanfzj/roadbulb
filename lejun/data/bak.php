<?php

/****** 备份数据库结构 ******/

/*
函数名称：table2sql()
函数功能：把表的结构转换成为SQL
函数参数：$table: 要进行提取的表名
返 回 值：返回提取后的结果，SQL集合
函数作者：heiyeluren
*/
include("conn/conn.php");

function table2sql($table) 
{
 global $db;
 $tabledump = "DROP TABLE IF EXISTS $table;\n";
 $createtable = $db->query("SHOW CREATE TABLE $table");
 $create = $db->fetch_row($createtable);
 $tabledump .= $create[1].";\n\n";

return $tabledump;
}


/****** 备份数据库结构和所有数据 ******/
/*
函数名称：data2sql()
函数功能：把表的结构和数据转换成为SQL
函数参数：$table: 要进行提取的表名
返 回 值：返回提取后的结果，SQL集合
函数作者：heiyeluren
*/
function data2sql($table) 
{
 global $db;
 $tabledump = "DROP TABLE IF EXISTS $table;\n";
 $createtable =mysql_query("SHOW CREATE TABLE $table");
 $create =mysql_fetch_row($createtable);
 $tabledump .= $create[1].";\n\n";

$rows =mysql_query("SELECT * FROM $table");
 $numfields =mysql_num_fields($rows);
 $numrows = mysql_num_rows($rows);
 while ($row =mysql_fetch_row($rows))
 {
 $comma = "";
 $tabledump .= "INSERT INTO $table VALUES(";
 for($i = 0; $i < $numfields; $i++) 
 {
   $tabledump .= $comma."'".mysql_escape_string($row[$i])."'";
   $comma = ",";
 }
 $tabledump .= ");\n";
 }
 $tabledump .= "\n";

return $tabledump;
}

function create_sess_id($len=32) 
{ 
// 校验提交的长度是否合法 
if( !is_numeric($len) || ($len>32) || ($len<16)) { return; } 
// 获取当前时间的微秒 
list($u, $s) = explode(' ', microtime()); 
$time = (float)$u + (float)$s; 
// 产生一个随机数 
$rand_num = rand(100000, 999999); 
$rand_num = rand($rand_num, $time); 
mt_srand($rand_num); 
$rand_num = mt_rand(); 
// 产生SessionID 
$sess_id = md5( md5($time). md5($rand_num) ); 
// 截取指定需要长度的SessionID 
$sess_id = substr($sess_id, 0, $len); 
return $sess_id; 
} 

function create_check_code($len=4)
{
 if ( !is_numeric($len) || ($len>6) || ($len<1)) { return; }
  
 $check_code = substr(create_sess_id(), 16, $len ); 
 return strtoupper($check_code);
}

function fetch_all($sql)
{
 $rs=mysql_query($sql);
 $result=array();
 while($rows=mysql_fetch_array($rs,$result_type = MYSQL_ASSOC))
 {
  $result[]=$rows;
 }
 
 return $result;
 
}

function get_tables() //获取所有表表名
{
 $tables=array();
 $r=fetch_all("show tables");
 foreach($r as $v)
 {
  foreach($v as $v_)
  {
   $tables[]=$v_;
  }
 }
 return $tables;
}

/****** 具体实现操作 *****
好，我们既然把代码都写出来了，那么我们如何在具体的程序种去实现备份呢，我们看下面的代码。*/


/* 备份数据库 */
// 注意：我们一下的数据库操作采用了phplib的DB类

// 定义要保存的数据表、前缀、保存到何处
$tables =get_tables(); //定义要保存的数据表，一个数组
$prefix = 'lj_';    // 要保存的.sql文件的前缀
$saveto = 'server'; // 要保存到什么地方，是本地还是服务器上，默认是服务器
$back_mode = 'all'; // 要保存的方式，是全部备份还是只保存数据库结构
$admin = 'root'; //管理员名称
$admin_email='1009137312@qq.com' ; // 管理员邮箱

// 定义数据保存的文件名
$local_filename = $prefix.date('Ymd_His').'.sql"';
if (!$filename) { $filename = $db_backup_path . $prefix . date('Ymd_His_').create_check_code(4).".sql"; }
$filename = $prefix.date(Ymd_His).create_check_code(6).".sql";      // 保存在服务器上的文件名
// 注意后面的create_check_code()函数，这是一个生成随机码的函数，详细可以参考：
// http://blog.csdn.net/heiyeshuwu/archive/2005/01/26/268446.aspx

// 获取数据库结构和数据内容
foreach($tables as $table) 
{
 if ($back_mode == 'all') { $sqldump .= data2sql($table); }
 if ($back_mode == 'table') { $sqldump .= table2sql($table); }
}

// 如果数据内容不是空就开始保存
if(trim($sqldump)) 
{
 // 写入开头信息
$sqldump = 
 "# --------------------------------------------------------\n".
 "# 数据表备份\n".
 "#\n".
 "# 服务器: $db->Host\n".
 "# 数据库：$db->Database\n".
 "# 备份编号: ". create_sess_id() ."\n". // 这里有一个生成session id的函数
"# 备份时间: ".date('',6)."\n". // 这里就是获取当前时间的函数
"#\n".
 "# 管理员：$admin ($admin_email)\n". // 管理员的用户名和邮箱地址
"# $copyright\n".
 "# --------------------------------------------------------\n\n\n".
 $sqldump;

 // 保存到本地
if($saveto == "local") 
 {
 ob_end_clean();
 header('Content-Encoding: none');
 header('Content-Type: '.(strpos($HTTP_SERVER_VARS['HTTP_USER_AGENT'], 'MSIE') ? 'application/octetstream' : 'application/octet-stream'));
 header('Content-Disposition: '.(strpos($HTTP_SERVER_VARS['HTTP_USER_AGENT'], 'MSIE') ? 'inline; ' : 'attachment; ').'filename="'.$local_filename);
 header('Content-Length: '.strlen($sqldump));
 header('Pragma: no-cache');
 header('Expires: 0');
 echo $sqldump;
 } 
 // 保存到本地结束

// 保存在服务器
if($saveto == "server") 
 {
 if($filename != "") 
 {
   @$fp = fopen($filename, "w+");
   if ($fp)
   {
    @flock($fp, 3);
    if(@!fwrite($fp, $sqldump)) 
    {
     @fclose($fp);
     exit_msg("数据文件无法保存到服务器，请检查目录属性你是否有写的权限。");
    } 
    else 
    {
     exit_msg("数据成功备份至服务器 <a href=\"$filename\">$filename</a> 中。");
    }
   }
   else
   {
    exit_msg("无法打开你指定的目录". $filename ."，请确定该目录是否存在，或者是否有相应权限"); 
   }
 } 
else 
 {
   exit_msg("您没有输入备份文件名，请返回修改。");
 }
 }
 // 保存到服务器结束
}
else
{
 exit_msg("数据表没有任何内容");
}

/* 备份数据库结束 */

?>