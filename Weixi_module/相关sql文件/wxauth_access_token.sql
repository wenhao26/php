-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 17 日 14:22
-- 服务器版本: 5.1.48
-- PHP 版本: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `qjy168`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `wxauth_access_token`
-- 

CREATE TABLE `wxauth_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_access_token` varchar(255) NOT NULL COMMENT '第三方平台令牌凭据',
  `expires_in` int(11) NOT NULL COMMENT '设置过期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='该表主要用来保存获取第三方平台令牌（comonent_access_token）' AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `wxauth_access_token`
-- 

INSERT INTO `wxauth_access_token` VALUES (1, 'fYCh4mve7ivsOo23drOZ6-kuK7pQmbqqoH3hdGZD5KOXjhpAqh9GbFet6UrPG15Py8t7EybK31XZ34AzLZmhMrA_YrqY323robcfIGaR3MjITRtLPUzfxKkdYb_N4c2qFXPjAHAOGY', 1505381936);
