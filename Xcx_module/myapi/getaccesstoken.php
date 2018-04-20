<?php

// 登录凭证 access token

$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx3489334279d9a8bb&secret=5102c26428af9342a765fb52d635f4c0";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
curl_setopt($ch, CURLOPT_HEADER, 0);
$result = curl_exec($ch);
curl_close($ch);
echo $result;