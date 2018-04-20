<?php
/**
 * 获取用户绑定的手机号码
 */
 
include_once 'data.php';
include_once 'func.php';
include_once '../aes-sample/PHP/wxBizDataCrypt.php';

$appid = 'wxc0d8aaaf1150f570';
$sessionKey = $_GET['session_key'];
$encryptedData = $_GET['encryptedData'];
$iv = $_GET['iv'];

$pc = new WXBizDataCrypt($appid, $sessionKey);
$errCode = $pc->decryptData($encryptedData, $iv, $data);

if ($errCode == 0) {
    echo $data;
} else {
    echo $errCode;
}

