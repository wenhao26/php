<?php

// 小程序：登录凭证 code 获取 session_key 和 openid

$code = $_GET['code'];

if ($code)
{
	$api_url = "https://api.weixin.qq.com/sns/jscode2session?appid=wx3489334279d9a8bb&secret=5102c26428af9342a765fb52d635f4c0&js_code=$code&grant_type=authorization_code";
	
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $api_url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($ch, CURLOPT_HEADER, 0);
	$result = curl_exec($ch);
	curl_close($ch);
	
	$data = (array)json_decode($result);
	
	echo json_encode($data);
	
} 
else {
	echo 400;
}
