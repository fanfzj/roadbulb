<?php
$conn=mysql_connect("localhost:3306","root","koala19920716");//������SQL Server���ݿ������
mysql_query("set names 'utf8'"); 
mysql_select_db("lejun",$conn);   //ѡ�����ݿ�
error_reporting(0); 
session_start();

function GetIP(){ 
if(!empty($_SERVER["HTTP_CLIENT_IP"]))
   $cip = $_SERVER["HTTP_CLIENT_IP"];
else if(!empty($_SERVER["HTTP_X_FORWARDED_FOR"]))
   $cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
else if(!empty($_SERVER["REMOTE_ADDR"]))
   $cip = $_SERVER["REMOTE_ADDR"];
else
   $cip = "δ֪";
return $cip;
} 
    /**
     * ����ip��ַ��ȡ��Ӧ���ڳ���
     * @param type $userip �û�IP��ַ
     * @return string
     */
 function ipCity($IP_ip)
 {
$IP_str=file_get_contents('http://int.dpool.sina.com.cn/iplookup/iplookup.php?ip='.$IP_ip); 
$IP_tmp = explode("	", $IP_str);
//gbkҳ����ע����һ��

$IP_citye=iconv("GBK", "UTF-8", $IP_tmp[4]);
$IP_city=iconv("GBK", "UTF-8", $IP_tmp[5]);
$ip_address=$IP_citye."-".$IP_city;
return $ip_address;
 }
?>
