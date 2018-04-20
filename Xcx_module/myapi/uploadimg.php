<?php
/**
 * 小程序图片上传API
 */

$tmpP = $_FILES["file"]["tmp_name"];

if ($tmpP) {
	// 获取文件类型
	$type = mime_content_type($tmpP);
	
	$ptype = '';
	if ($type=='image/png') {
		$ptype .= '.png';
	} elseif ($type=='image/gif') {
		$ptype .= '.gif';
	} elseif ($type=='image/jpeg') {
		$ptype .= '.jpeg';
	} elseif ($type=='image/bmp') {
		$ptype .= '.bmp';
	} elseif ($type=='image/x-icon') {
		$ptype .= '.icon';
	}
	
	if ($ptype) {
		//保存文件
		$filename = date("YmdHis") . rand(100, 999) . $ptype;
		$savepath = "../images/" . $filename;
		if (move_uploaded_file($tmpP, $savepath)) {
			echo 'OK';
		} else {
			echo 'FAIL';
		}
	}
}
