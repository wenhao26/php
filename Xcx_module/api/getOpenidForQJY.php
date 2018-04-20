<?php
/**
 * 获取用户的openid以及session_key（勤加缘的配置参数）
 */
 
include_once 'data.php';
include_once 'func.php';

$code = $_GET['code_str'];

if ($code) {
	
	$url = 'https://api.weixin.qq.com/sns/jscode2session?appid=wxc0d8aaaf1150f570&secret=d56518020123788292ad46ab22b052c0&js_code='.$code.'&grant_type=authorization_code';
	$results = getMethod($url);
	// $results = (array)json_decode($results);
	// $results = json_encode($results);
	echo $results;
	
} else {
	echo 'code is null';
}
