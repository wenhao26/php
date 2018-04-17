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
-- 表的结构 `wxauth_ticket`
-- 

CREATE TABLE `wxauth_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_verify_ticket` varchar(100) NOT NULL COMMENT 'component_verify_ticket',
  `add_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='保存推送component_verify_ticket协议信息' AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `wxauth_ticket`
-- 

INSERT INTO `wxauth_ticket` VALUES (1, 'ticket@@@gBeX7VDHenjtxbPAHpVSMshE_i0ElFOqoiNIxWq3kA1XngwDi0ThmnOFjO5idG6ycgJAMtB2TJ2XWlEFON1a2w', 1508220914);
