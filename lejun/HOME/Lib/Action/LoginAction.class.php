<?php
    class LoginAction extends CommonAction{
		
	    /*实现用户登陆*/
		public function do_login(){
			if($_SESSION['verify'] != md5($_POST['code'])) {
                 echo '0';
              }else{    
			 $username=$_POST['username'];
             $pwd=$_POST['pwd'];
			 $user=new Model("User_information");

            
			$condition['username']=$username;
			$condition['password']=md5($username.'ｌéｊūń楽俊'.$pwd);
			
			$user_arr=$user->where($condition)->select();
			$count = count($user_arr);
			if($count>0){
				$ip= get_client_ip();
				$user_arr[0]['login_ip']=$ip;
				$user_arr[0]['last_logn_time']=date('Y-m-d H:i:s',time());
				$data['login_ip']=$ip;
				$data['last_logn_time']=date('Y-m-d H:i:s',time());
				$user->where($condition)->save($data);
				$_SESSION['user']=$user_arr[0];
				echo '2';     
			}
			else{
				echo '1';
				}
           }			
		}
		
		/*注销用户操作*/
		public function  do_logout(){
			unset($_SESSION['user']);
		    //$this->success("注销成功");
			$this->display("Index:index");
			}	
	}
?>
