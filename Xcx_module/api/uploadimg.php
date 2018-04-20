<?php
/**
 * 小程序图片上传API
 */
 
/** 客户端
chooseImage: function() {
    // 选择或者拍照
    wx.chooseImage({
      count: 1,
      sizeType: ['original', 'compressed'],
      sourceType: ['album', 'camera'],
      success: function(res) {
        // 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
        var tempFilePaths = res.tempFilePaths
        console.log(tempFilePaths[0])
        // 上传文件
        wx.uploadFile({
          url: 'http://www.qjy168.com/wuwh_test/myapi/uploadimg.php',
          filePath: tempFilePaths[0],
          name: 'file',
          header: {'content-type': 'multipart/form-data'},
          success: function(res) {
            console.log(res)
          }
        })

      },
    })
}*/

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
