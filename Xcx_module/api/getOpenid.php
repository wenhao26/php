<?php
/**
 * 获取用户的openid以及session_key
 */
 
include_once 'data.php';
include_once 'func.php';

$code = $_GET['code_str'];

if ($code) {
	
	$url = 'https://api.weixin.qq.com/sns/jscode2session?appid='.$config['appid'].'&secret='.$config['secret'].'&js_code='.$code.'&grant_type=authorization_code';
	$results = getMethod($url);
	$results = (array)json_decode($results);
	$results = json_encode($results);
	echo $results;
	
} else {
	echo 'code is null';
}
