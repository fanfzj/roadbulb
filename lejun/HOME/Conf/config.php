<?php
return array(
	//'配置项'=>'配置值'

	    //'SHOW_PAGE_TRACE'=>true,//开启页面trace
		'URL_HTML_SUFFIX'=>'xml|html|shtml',//配置伪静态
		'URL_CASE_INSENSITIVE' =>true,//url大小写
		
	//	 'URL_ROUTER_ON' => true, //URL路由
	//	 'URL_MODEL' => '2',//去掉index.php
		
		'OUTPUT_ENCODE'=>false,

		//数据库配置信息
        'DB_TYPE'   => 'mysql', // 数据库类型
        'DB_HOST'   => '115.28.143.37', // 服务器地址
        'DB_NAME'   => 'lejun', // 数据库名
        'DB_USER'   => 'root', // 用户名
        'DB_PWD'    => 'koala19920716', // 密码
        'DB_PORT'   => 3306, // 端口
        'DB_PREFIX' => 'lj_', // 数据库表前缀 
        
	

        'TMPL_PARSE_STRING'=>array(
             '__CSS__'=>'/Public/css',
             '__JS__'=>'/Public/js',
	      '__IMG__'=>'/Public/img',
		  '__PHOTO__'=>'/Public/photo',
	      '__ckeditor__'=>'/Public/ckeditor',
	      '__GAME_PHOTO__'=>'/Public/game',
	      '__USER_PHOTO__'=>'/Public/photo',
        ),	
);
?>
