<?php
	$img = 'test.jpg';
	
	// echo base64_encode(file_get_contents($img));
	// exit;
	
	$img_info = getimagesize($img);
	$img_data = fread(fopen($img, 'r'), filesize($img));
	$base64_img = 'data:' . $img_info['mime'] . ';base64,' . chunk_split(base64_encode($img_data));
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>图片 base64 的转换</title>
</head>
<body>
	<img src="<?php echo $base64_img;?>" />
</body>
</html>
