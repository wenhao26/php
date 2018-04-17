-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 17 日 14:24
-- 服务器版本: 5.1.48
-- PHP 版本: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `qjy168`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `wxauth_pre_auth_code`
-- 

CREATE TABLE `wxauth_pre_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_auth_code` varchar(255) NOT NULL COMMENT '预授权码pre_auth_code',
  `expires_in` int(11) NOT NULL COMMENT '设置过期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='保存微信第三方预授权码' AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `wxauth_pre_auth_code`
-- 

INSERT INTO `wxauth_pre_auth_code` VALUES (1, 'preauthcode@@@AjlT6-PBSsFZoAyKJV8dE4H4ZDiTK3wztnABqJ4JL3HnVhlLmuz2SZLhMcWV-FBq', 1481702038);
