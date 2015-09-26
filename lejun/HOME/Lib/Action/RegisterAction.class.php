<?php
   class RegisterAction extends CommonAction{
	  
	     /***
		   显示用户注册界面
		 */
	     public function register(){
			 $this->display();
			 }
	   
	    /***
		  检查用户是不是存在
		*/
	     public function checkUserName(){
            $username=$_POST['username'];
			$user =new Model("User_information");
			
			$condition['username']=$username;
			
			$count=$user->where($condition)->count();
			if($count){
				echo '1';
				}else{
				echo '0';		
			 }
			 }
	    
		/***
		  执行注册的操作
		*/
		public function do_register(){
			/*$ip = get_client_ip();
			import('ORG.Net.IpLocation');// 导入IpLocation类
			$Ip = new IpLocation('UTFWry.dat'); // 实例化类 参数表示IP地址库文件
            $area = $Ip->getlocation($ip); // 获取某个IP地址所在的位置
            dump($ip);
			dump($area);*/

			$username=$_POST['username'];
			$pwd=$_POST['pwd'];
			$email=$_POST['email'];
            
			
			$condition['username']=$username;
			$condition['password']=md5($username.'ｌéｊūń楽俊'.$pwd);//密码加密
			$condition['e-mail']=$email;
			$condition['zhuce_time']=date('Y-m-d H:i:s',time());
             
			$ip = get_client_ip();
			$condition['IP']=$ip;
			$user_info=new Model("User_information");
			$user_info->add($condition);
			
			echo "注册成功";
			}
	   }
?>