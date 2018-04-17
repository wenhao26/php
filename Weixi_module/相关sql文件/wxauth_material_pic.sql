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
-- 表的结构 `wxauth_material_pic`
-- 

CREATE TABLE `wxauth_material_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `media_id` varchar(60) NOT NULL COMMENT '图片媒体ID',
  `url` varchar(255) NOT NULL COMMENT '图片媒体的URL',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `media_id` (`media_id`,`url`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信图片素材' AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `wxauth_material_pic`
-- 

INSERT INTO `wxauth_material_pic` VALUES (1, 'MC5yGLibwV1iHsOlZ9MfVqM8-2Ilr_lduzz_xJNdoS0', 'http://mmbiz.qpic.cn/mmbiz_png/uWGypBEiblzOvYhFSSRGPm5m8NxicULqCKnn33Ybk2C4gVCTn5lzWjTDlanfm3icBLVfDYhyy6sskibZHIKWQBYltw/0?wx_fmt=png', 1482819565);
INSERT INTO `wxauth_material_pic` VALUES (2, 'MC5yGLibwV1iHsOlZ9MfVhvEY7iCb-65KlSDyVtinGE', 'http://mmbiz.qpic.cn/mmbiz_png/uWGypBEiblzOvYhFSSRGPm5m8NxicULqCKLVnGSXwhYaS0pxYyfRWx7iaK5R5PXvsUuJD4QGKGVPrribQDdAkDqdIQ/0?wx_fmt=png', 1482819565);
INSERT INTO `wxauth_material_pic` VALUES (3, 'MC5yGLibwV1iHsOlZ9MfVmnJuN39-zp7EXNRgQaRF0E', 'http://mmbiz.qpic.cn/mmbiz_png/uWGypBEiblzOvYhFSSRGPm5m8NxicULqCK4g0TpvpdTFoqCD6cT89ZQYsJRbRjLW6EfxFtnskZjrovTMGWvrGTbQ/0?wx_fmt=png', 1482819565);
INSERT INTO `wxauth_material_pic` VALUES (4, 'MC5yGLibwV1iHsOlZ9MfVqmEUjgkhc3Im_X-prWUv2Y', 'http://mmbiz.qpic.cn/mmbiz_png/uWGypBEiblzOvYhFSSRGPm5m8NxicULqCK7MRkfK1RJVlia8Wq2ibHsic3h3fcnh52x2bbdLswrh9lYMae3L3OCNPHg/0?wx_fmt=png', 1482819567);
