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
-- 表的结构 `wxauth_authorizer_info`
-- 

CREATE TABLE `wxauth_authorizer_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(50) NOT NULL COMMENT '授权方昵称',
  `head_img` varchar(255) NOT NULL COMMENT '授权方头像',
  `service_type_info` tinyint(2) NOT NULL COMMENT '授权方公众号类型，0代表订阅号，1代表由历史老帐号升级后的订阅号，2代表服务号',
  `verify_type_info` tinyint(2) NOT NULL COMMENT '授权方认证类型，-1代表未认证，0代表微信认证，1代表新浪微博认证，2代表腾讯微博认证，3代表已资质认证通过但还未通过名称认证，4代表已资质认证通过、还未通过名称认证，但通过了新浪微博认证，5代表已资质认证通过、还未通过名称认证，但通过了腾讯微博认证',
  `user_name` varchar(32) NOT NULL COMMENT '授权方公众号的原始ID',
  `alias` varchar(32) DEFAULT NULL COMMENT '授权方公众号所设置的微信号，可能为空',
  `qrcode_url` varchar(255) NOT NULL COMMENT ' 二维码图片的URL，开发者最好自行也进行保存',
  `business_info` varchar(255) NOT NULL COMMENT '用以了解以下功能的开通状况（0代表未开通，1代表已开通）：   open_store:是否开通微信门店功能   open_scan:是否开通微信扫商品功能   open_pay:是否开通微信支付功能   open_card:是否开通微信卡券功能   open_shake:是否开通微信摇一摇功能',
  `principal_name` varchar(100) NOT NULL COMMENT '公众号的主体名称',
  `idc` tinyint(10) NOT NULL,
  `authorizer_appid` varchar(32) NOT NULL COMMENT '授权方appid',
  `func_info` varchar(20) NOT NULL COMMENT '公众号授权给开发者的权限集列表，ID为1到15时分别代表： 消息管理权限 用户管理权限 帐号服务权限 网页服务权限 微信小店权限 微信多客服权限 群发与通知权限 微信卡券权限  微信扫一扫权限  微信连WIFI权限  素材管理权限  微信摇周边权限  微信门店权限  微信支付权限  自定义菜单权限',
  `add_time` int(11) NOT NULL COMMENT '授权时间',
  PRIMARY KEY (`id`),
  KEY `nick_name` (`nick_name`,`service_type_info`,`verify_type_info`,`user_name`,`alias`,`authorizer_appid`,`add_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='保存授权通过获取的公众号账户信息' AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `wxauth_authorizer_info`
-- 

INSERT INTO `wxauth_authorizer_info` VALUES (1, 'it1226', 'http://wx.qlogo.cn/mmopen/50HcP4UOeLX1qQb9QEg9PiaB97hxf2FtRFfBswqP3TPblkqzwsExxdHyia0iau411KwyvSfeXavNicrNlGvtUx24uczgU8GLqrxn/0', 1, -1, 'gh_71163f00a256', 'wwh_php', 'http://mmbiz.qpic.cn/mmbiz_jpg/Y8juyACfAcS8ClRNMKFp5vLKxU6wj0Bz312Nqn707rpMwuC5m8sDFkUjViccgPicyky8zCmYutQibsgMhHy8NUtqQ/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '个人', 1, 'wx4adfd8e187223f2b', '1|15|4|7|2|3|11|6|5|', 1497593099);
INSERT INTO `wxauth_authorizer_info` VALUES (2, '窝看视频', 'http://wx.qlogo.cn/mmopen/50HcP4UOeLX1qQb9QEg9Podo7kbM7XNicJiaVI9QHCxUxViaBicNbdr3ujjStaACtcXV1tumtOO2wUfsnZj2eckFFXVLKicpsbuBD/0', 1, 0, 'gh_628c8bf4d981', 'wokanmv', 'http://mmbiz.qpic.cn/mmbiz_jpg/uWGypBEiblzOY38TF8Mva9ydHxxuDfnyiabxWnNxPqRrfRNNf4Svd6Fr2nbQLjVsCPB4Abo68AY1GWOhclL5fREQ/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '广州勤加缘科技实业有限公司', 1, 'wx4b0de0207821425c', '1|15|4|7|2|3|11|6|5|', 1482486502);
INSERT INTO `wxauth_authorizer_info` VALUES (3, '邱邱邱邱邱', 'http://wx.qlogo.cn/mmopen/ErtAjwsx1v6smJOG2TPNupWUQ6ZtUCUaicDynqGNcZ974vXrW6zVN3MNv1m3EkYtkCII4V6rxPMwSW3yxxWlKmWMoeocWtwJG/0', 1, -1, 'gh_d5d94dcffddb', '', 'http://mmbiz.qpic.cn/mmbiz_jpg/TC4IfA3r7uUGfS4EYFXDjOXycEUib1szouvcHAhJeppibicfvMNSV68Q0AxkHDHK4V7GpTpRgRdAQBmB7uwBIuwEw/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '个人', 1, 'wx22c5aef5b3af1cd7', '1|15|4|7|2|3|11|6|5|', 1482486110);
INSERT INTO `wxauth_authorizer_info` VALUES (4, 'Arrow', 'http://wx.qlogo.cn/mmopen/AadGvicq5zb642u9N8esyIqibRKYmWwmsiaOMRKyZsnqpU9gZia4SxS3kibR5e8D8hF7iax0tpTAYIuM9ibI3p0Xx7R5ibSFvbC9rtev/0', 1, -1, 'gh_c06a3fdf6161', 'YouKnowYouLikeIt', 'http://mmbiz.qpic.cn/mmbiz_jpg/ibNgH3j0YXsJSRGcIYAMT2kfTic15c6Q4KojcZVRlV1gV0wGDmmzL3doic644ZFadYovpof6GicYQ7mibgTmwwvX0Pw/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '个人', 1, 'wx3c9b73c71d20cf22', '1|15|4|7|2|3|11|6|5|', 1482486137);
INSERT INTO `wxauth_authorizer_info` VALUES (5, '广州勤加缘', 'http://wx.qlogo.cn/mmopen/50HcP4UOeLX1qQb9QEg9Pm9GPFrpMPLqKia3gy2NPicJWkjtlOlEN2e5MEqXMEHgkUicsmibfV06OYiaicDypWAEYYiacUBJzpibr7cq/0', 2, 0, 'gh_594c250b1127', 'qjy168zf', 'http://mmbiz.qpic.cn/mmbiz_jpg/GVKQgVxAyEHVJAUibwjf2HGc8OPOftBAsOLNUzkbrFl1zWpNWa0h8XEZqbQMKwm0tX89AerUM9TS62QREbmRlsA/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":1},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '广州勤加缘科技实业有限公司', 1, 'wx2f066877bf74c07e', '1|15|4|7|2|3|11|6|5|', 1482486642);
INSERT INTO `wxauth_authorizer_info` VALUES (6, '爱勤加缘网', 'http://wx.qlogo.cn/mmopen/ErtAjwsx1v6smJOG2TPNunglSZn1BkibUm6k5AzZ9FJhs3bTV2URF0eBmW68iaRmEhBC5JWDcXZ2FaLwERqLMBnLljcLLOXPZm/0', 0, 0, 'gh_e30217b41280', 'qjy168com', 'http://mmbiz.qpic.cn/mmbiz/MH5qgz5l8RGHC6LuUxVaibb8qsl7nQrMJr9IHA00R3AhWnZwNblTK5LO1ayTDvkMFH8rI3wwdyxicaQqX67QSAPg/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '广州勤加缘科技实业有限公司', 1, 'wx38d35f85a5047322', '1|15|4|7|2|3|11|6|9|', 1482486712);
INSERT INTO `wxauth_authorizer_info` VALUES (7, 'Li仔的订阅号', 'http://wx.qlogo.cn/mmopen/ErtAjwsx1v6smJOG2TPNup257fPbcZT8GdGYNj1tWmEozreCp9DEMKMibgiaGIBYpV1kviaoP2exY7RKrb0S7yb88ozibd5zkNPm/0', 1, -1, 'gh_4fd9cca2ac31', '', 'http://mmbiz.qpic.cn/mmbiz_jpg/KYSv4UCNibZBn2Kj6oVvy51Yz1LtvMCMIuNZrTzYyNwPIhfrvZ0ictEZ7WgFKWQ8aSvWuXkiaQ5KKTwK6fK58OibAA/0', '{"open_pay":{"explain":"u662fu5426u5f00u901au5faeu4fe1u652fu4ed8u529fu80fd","open_state":0},"open_shake":{"explain":"u662fu5426u5f00u901au5faeu4fe1u6447u4e00u6447u529fu80fd","open_state":0},"open_scan":{"explain":"u662fu5426u5f00u901au5faeu4fe1u626bu5546u', '个人', 1, 'wx11848aae707ec703', '1|15|4|7|2|3|11|6|5|', 1495434011);
