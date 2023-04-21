/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost:3306
 Source Schema         : news_db

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 07/06/2018 21:15:58
*/
create database DoorWebSiteDB;
user DoorWebSiteDB;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news_article
-- ----------------------------
DROP TABLE IF EXISTS `news_article`;
CREATE TABLE `news_article` (
                                `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                                `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                                `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
                                `title` varchar(64) DEFAULT NULL COMMENT '标题',
                                `summary` varchar(256) DEFAULT NULL COMMENT '摘要',
                                `pic_url` varchar(256) DEFAULT NULL COMMENT '图片',
                                `view_count` int(8) DEFAULT NULL COMMENT '浏览数',
                                `source` varchar(32) DEFAULT NULL COMMENT '来源',
                                `content` text COMMENT '文章内容',
                                `category_id` bigint(16) DEFAULT NULL COMMENT '分类ID',
                                `is_recommend` tinyint(1) DEFAULT '0' COMMENT '是否推荐',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news_captcha
-- ----------------------------
DROP TABLE IF EXISTS `news_captcha`;
CREATE TABLE `news_captcha` (
                                `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                                `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                `mobile` varchar(16) DEFAULT NULL COMMENT '手机号',
                                `code` varchar(8) DEFAULT NULL COMMENT '验证码',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
                                 `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                                 `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                 `name` varchar(16) DEFAULT NULL COMMENT '分类名',
                                 `parent_id` bigint(16) NOT NULL DEFAULT '0' COMMENT '上级分类ID（0为顶级分类）',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
                                `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                                `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                `article_id` bigint(16) DEFAULT NULL COMMENT '文章ID',
                                `content` varchar(256) DEFAULT NULL COMMENT '评论内容',
                                `parent_id` bigint(16) NOT NULL DEFAULT '0' COMMENT '上级评论ID（0为顶级评论）',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news_user
-- ----------------------------
DROP TABLE IF EXISTS `news_user`;
CREATE TABLE `news_user` (
                             `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                             `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                             `mobile` varchar(16) DEFAULT NULL COMMENT '手机号',
                             `password` varchar(64) DEFAULT NULL COMMENT '密码（SHA1加密）',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;