<?php
/**
 * 获取转发的信息
 */
 
include_once 'data.php';
include_once 'func.php';
include_once '../aes-sample/PHP/wxBizDataCrypt.php';

$appid = 'wx3489334279d9a8bb';
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

