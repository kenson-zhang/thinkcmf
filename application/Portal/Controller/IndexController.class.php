<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2014 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------
namespace Portal\Controller;
use Common\Controller\HomebaseController;
/**
 * 首页
 */
class IndexController extends HomebaseController {

    //首页
	public function index() {
		$arr = array(1,4,6,7,8,10,11,12,13,14,5,15,20,18,21,22,23,25,26,27);
		$date= array();
   foreach ($arr as $key => $value) {
		 $term=sp_get_term($value);
 		if(empty($term)){
 				header('HTTP/1.1 404 Not Found');
 				header('Status:404 Not Found');
 				if(sp_template_file_exists(MODULE_NAME."/404")){
 						$this->display(":404");
 				}

 				return ;
 		}

 		$tplname=$term["list_tpl"];
 		$tplname=sp_get_apphome_tpl($tplname, "list");
		$date[] = $term;
   }
    $this->assign('term',$date);
		// echo "<br>";
		// print_r($date);
		// echo "<br>";

			$this->assign('cat_id',$arr);
    	$this->display(":index");
    }




}
