-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 17 日 14:23
-- 服务器版本: 5.1.48
-- PHP 版本: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `qjy168`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `wxauth_authorizer_access_token`
-- 

CREATE TABLE `wxauth_authorizer_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorizer_appid` varchar(50) NOT NULL COMMENT '授权公众号AppID',
  `authorizer_access_token` varchar(255) NOT NULL COMMENT '授权公众号token',
  `authorizer_refresh_token` varchar(255) NOT NULL COMMENT '授权公众号刷新token',
  `expires_in` int(11) NOT NULL COMMENT '设置过期时间',
  PRIMARY KEY (`id`),
  KEY `authorizer_appid` (`authorizer_appid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='保存公众号用户授权token' AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `wxauth_authorizer_access_token`
-- 

INSERT INTO `wxauth_authorizer_access_token` VALUES (1, 'wx4adfd8e187223f2b', '4QmrGX8lWUGs_fZghqMeojQiSzDcMMwDmwcVPP5Z8nMIinc7fqFqvtL2XJYH0H9sadhd2dsfHy2DIJ8-LLeLb_Lch5WzAcNXp8v0Nal_99uoBqMYyotIsypti1-h2PyLQBXaAGDITP', 'refreshtoken@@@OdE3OJfZTbWSoktwL_YeNQG1aRcx_ToDKV5PN7hoHnQ', 1497600198);
INSERT INTO `wxauth_authorizer_access_token` VALUES (2, 'wx4b0de0207821425c', 'sP9CZeH58SYBu4kcvP6LZIw0ox29xSfOhBjdRKALUaUXAk3gUMoX9E6c2KMt65HyQay1lv3QoGfaH1_YynKwWenb0flbVaZ9VmskATnhobkSeMAGjq_EnVmwduqbIc5PPHShAEDWOZ', 'refreshtoken@@@FKb9loHZdHdor1aPWUM37Q6sm9KUaacXQZbyciaICq8', 1495449140);
INSERT INTO `wxauth_authorizer_access_token` VALUES (3, 'wx3c9b73c71d20cf22', 'cfyi9FzvFYSbuZ4yZ82Lykq65xEj1GRAae19nuTOmKjJvZ3qdId43u-xC6Vl_3HfHahFPs5O31byC87jJE9xQuSEt4bhQPXJoKbI8XjE2n4k9OYBAv9wJhZz0nSkyp1_ASEaAKDSKW', 'refreshtoken@@@3uRgqMtI3aGLSJGIZEUA1e32fX2DtiXgyYSjDE2pa40', 1482493236);
INSERT INTO `wxauth_authorizer_access_token` VALUES (4, 'wx22c5aef5b3af1cd7', 'VEpcZecD5-qgRGe-x0Ixja_S4Ul4w6epstNVHHy2zxlGh1Pbg2hmHvPyPMNOHsC7vwLkvGDFokGsJhq9JPTJs6STZIpbdyOKquXW0BKevROs54Ml1ovZqH7Rwv9QZUTGXJBeADDIUM', 'refreshtoken@@@bDled79jNbLohr1aQjIIBNQ5r_hXrHWYowuBgCLar0Y', 1482493210);
INSERT INTO `wxauth_authorizer_access_token` VALUES (5, 'wx2f066877bf74c07e', 'XTWZuLDOIvqedVY6EThMuC5vm8e8II3N3IawX9o7pnbtn_1YDo4LOIBUKH8EuJN5_Q8oufkPYYv1D2gdd77IoYe96gallNWQ5TwTTOyw9DYMna_lS9ec1-LLhbCEA3OmNGIhAMDJCE', 'refreshtoken@@@U-CkLLP3fMY-kxZX6lgMsOf4Qs3Q6baaKJGChV20TbQ', 1482805760);
INSERT INTO `wxauth_authorizer_access_token` VALUES (6, 'wx38d35f85a5047322', 'oqRl01IvR4_mYIxVpEJtWh-NKaPB_a-AS5P1gayI4EbzyIdrtuZEN2Gfv7DQ2E_m8FFIUXAGQNHmL5mUB2lwe8llgxfdWrBoZmFZJsqVkIlD_tSftI5ENlREKu-dYtLmEPHeAEDUFX', 'refreshtoken@@@z4btfKEr3G6nZHlUEYi9OuBd5sGebythYDePUuRrhXg', 1482805780);
INSERT INTO `wxauth_authorizer_access_token` VALUES (7, 'wx11848aae707ec703', 'dDex6gI-fC-hovDQY6_DWLlBrUq2H4uZZ18Em-m6dgRzeyXmnYjFbHnhjh1hR5qYOWsmW_07b9j2gvYvnWXWJbjRmJTuqB1AKqhZx44xeH7WfhgIvLr-1MbrF33VfJgfSFTaAGDWJX', 'refreshtoken@@@fcbgWTNHPyM-0L7WyBUsG5IcADUoZJ1fjG-dLsIpbnQ', 1495440695);
