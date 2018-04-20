<?php
/**
 * 将远程图片保存到服务器资源
 */
 
$avatarUrl = 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKYwTgpaiabR2BibCGNKtT2pwkPRtpZ7RjGt9vrufGgo2qXkyKaKjkEzx5eZLj9LcLpJmRVN4RbiaDqg/0';
echo saveImage($avatarUrl);
 
/**
 * 实现下载远程图片保存到本地
 * 
 * @param string  $url      远程图片资源的URL
 * @param tinyint $type     抓取类型。0代表使用ob缓存抓取，1代表使用curl抓取
 *
 * @return string
 */
function saveImage($url, $type=0) 
{	
	// 创建保存路径
	$path =  'files/avatar'; 
	$y = date('Y');
	$m = date('m');
	$d = date('d');
	$y_path = $path.'/'.$y;
	$m_path = $y_path.'/'.$m;
	$d_path = $m_path.'/'.$d;
		
	if ( !file_exists($y_path) )
		mkdir($y_path, 0775, true);
	
	if ( !file_exists($m_path) )
		mkdir($m_path, 0775, true);
	
	if ( !file_exists($d_path) )
		mkdir($d_path, 0775, true);
	
	$filename = date('YmdHis').rand(0, 9) . '.png';
	$upfilename = $y.'/'.$m.'/'.$d.'/'.$filename;
	$save_dir = $d_path.'/'.$filename;
		
	// 获取远程文件所采用的方法 
	if ( $type ) 
	{
		$ch = curl_init();
		$timeout = 5;
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);
		$img = curl_exec($ch);
		curl_close($ch);
	} 
	else 
	{
		ob_start(); 
		readfile($url);
		$img = ob_get_contents(); 
		ob_end_clean(); 
	}
	
	$fp2 = @fopen($save_dir, 'a');
	fwrite($fp2, $img);
	fclose($fp2);
	unset($img, $url);

	return $upfilename; 
}