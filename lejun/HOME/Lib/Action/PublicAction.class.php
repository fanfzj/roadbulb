<?php
   class PublicAction extends CommonAction{
	   public function code(){
		   header('Content-type:text/html;charset=utf-8');
              import('ORG.Util.Image');
              Image::buildImageVerify($length=5, $mode=1, $type='png', $width=60, $height=26, $verifyName='verify');
		   }
	   
	   }
	   
	   
?>