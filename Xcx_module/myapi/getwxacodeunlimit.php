<?php

// 登录凭证 access token

$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx3489334279d9a8bb&secret=5102c26428af9342a765fb52d635f4c0";


// $results = getHttps($url);
// $results = (array)json_decode($results);
//$url2 = "https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=" . $results['access_token'];
$url2 = "https://api.weixin.qq.com/wxa/getwxacode?access_token=7_OUYMNWMZbiOOAtiLVc_V_u249yklYLZCmHY6R5Q4ioJu3rKD4F4ftL1q_PEnVGpbYx6UotSjbX5PTrCOavOm4RQp06PGWQ5dxniQ_p5fvOywQAwbf7xZIj3C2SUKGGdAEACYY";
$data = '{"path": "pages/hello/hello", "width": 430, "auto_color": true}';
echo postHttps($url2, $data);

header('Content-type: image/png');
header('Content-Disposition: attachment; filename="hello.png"');

/**
 * GET方式
 * @param string $url 访问地址
 */
function getHttps($url)
{		
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($ch, CURLOPT_HEADER, 0);
	$result = curl_exec($ch);
	curl_close($ch);
	return $result;	
}

/**
 * POST方式
 * @param string $url 访问地址
 * @param json $data  待处理数据
 */
function postHttps($url, $data)
{
	$curl = curl_init();
	curl_setopt($curl, CURLOPT_URL, $url);
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($curl, CURLOPT_POST, 1);
	curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	$result = curl_exec($curl);
	curl_close($curl);
	return $result;	
}
