-- MySQL dump 10.13  Distrib 5.6.45, for Linux (x86_64)
--
-- Host: localhost    Database: sql_3_16_49_147_
-- ------------------------------------------------------
-- Server version	5.6.45-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cz_adminlog`
--

DROP TABLE IF EXISTS `cz_adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_adminlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `login_time` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2455 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_config`
--

DROP TABLE IF EXISTS `cz_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_config` (
  `key` text NOT NULL,
  `value` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_device`
--

DROP TABLE IF EXISTS `cz_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_device` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `device` varchar(256) NOT NULL COMMENT '设备标识',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0无效 1有效 2拉黑',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2829 DEFAULT CHARSET=utf8mb4 COMMENT='授权设备列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_games`
--

DROP TABLE IF EXISTS `cz_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_games` (
  `gs_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '游戏ID',
  `gs_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '游戏状态 1 启用 2 禁用',
  `gs_name` varchar(255) NOT NULL COMMENT '游戏名称',
  `gs_content` text NOT NULL COMMENT '游戏备注',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '修改时间',
  `productIdentifier` varchar(256) NOT NULL DEFAULT '' COMMENT '游戏包名',
  `receipt_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0普通凭证 1新型凭证',
  PRIMARY KEY (`gs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_games_price`
--

DROP TABLE IF EXISTS `cz_games_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_games_price` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gs_id` int(11) unsigned NOT NULL COMMENT '游戏ID',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '人民币',
  `gold` varchar(256) NOT NULL DEFAULT '' COMMENT '游戏币',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0无效 1有效',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2836 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_goods`
--

DROP TABLE IF EXISTS `cz_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_goods` (
  `gd_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品状态 1 启用 2 禁用',
  `gd_uid` int(11) NOT NULL COMMENT '商品所属用户ID',
  `gd_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商品状态 1 启用 2 禁用',
  `gd_name` varchar(255) NOT NULL COMMENT '商品名称',
  `gd_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `gd_num` int(11) NOT NULL COMMENT '商品数量',
  `gd_content` varchar(255) NOT NULL COMMENT '商品备注',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`gd_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_helps`
--

DROP TABLE IF EXISTS `cz_helps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_helps` (
  `hp_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '帮助ID',
  `hp_name` varchar(255) DEFAULT NULL COMMENT '帮助标题',
  `hp_content` text COMMENT '帮助详情',
  `hp_status` tinyint(1) DEFAULT NULL COMMENT '1 启用 2 禁用',
  `created_at` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`hp_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_ipaddrlog`
--

DROP TABLE IF EXISTS `cz_ipaddrlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_ipaddrlog` (
  `is_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_ip` varchar(255) NOT NULL COMMENT 'IP地址',
  `is_num` int(11) NOT NULL COMMENT '错误次数',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `end_time` varchar(255) NOT NULL COMMENT '截止时间',
  PRIMARY KEY (`is_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_loginlog`
--

DROP TABLE IF EXISTS `cz_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_loginlog` (
  `lg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `ipaddress` varchar(255) NOT NULL COMMENT 'ip地址',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`lg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_moneylog`
--

DROP TABLE IF EXISTS `cz_moneylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_moneylog` (
  `cz_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cz_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1 等待审核 2 审核通过 3审核被拒',
  `cz_uid` int(11) NOT NULL COMMENT '用户',
  `cz_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '操作类型 1 充值 2 提现',
  `cz_money` decimal(10,2) NOT NULL COMMENT '金额',
  `cz_real_name` varchar(255) NOT NULL COMMENT '打款账户姓名',
  `cz_ali_number` varchar(255) NOT NULL COMMENT '打款账号号码',
  `created_at` varchar(255) NOT NULL COMMENT '创建时间',
  `updated_at` varchar(255) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`cz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_node`
--

DROP TABLE IF EXISTS `cz_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `module_name` varchar(155) NOT NULL DEFAULT '' COMMENT '模块名',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `typeid` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_node12`
--

DROP TABLE IF EXISTS `cz_node12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_node12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `module_name` varchar(155) NOT NULL DEFAULT '' COMMENT '模块名',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `typeid` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_node_bak`
--

DROP TABLE IF EXISTS `cz_node_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_node_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `module_name` varchar(155) NOT NULL DEFAULT '' COMMENT '模块名',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `typeid` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_node_delbak`
--

DROP TABLE IF EXISTS `cz_node_delbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_node_delbak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `module_name` varchar(155) NOT NULL DEFAULT '' COMMENT '模块名',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `typeid` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_notice`
--

DROP TABLE IF EXISTS `cz_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_notice` (
  `ne_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `ne_name` varchar(255) NOT NULL COMMENT '公告标题',
  `ne_status` tinyint(1) NOT NULL COMMENT '公告状态 1 启用 2 禁用',
  `ne_content` text NOT NULL COMMENT '公告详情',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`ne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_order`
--

DROP TABLE IF EXISTS `cz_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_order` (
  `trans_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(11) NOT NULL DEFAULT '' COMMENT '订单号',
  `buy_uid` int(11) NOT NULL DEFAULT '0' COMMENT '买家ID',
  `sell_uid` int(11) NOT NULL COMMENT '卖家ID',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `price_id` int(11) NOT NULL DEFAULT '0' COMMENT '面值ID',
  `trans_num` int(11) NOT NULL DEFAULT '0' COMMENT '交易数量',
  `trans_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单价格',
  `trans_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '更新时间',
  `store_id` varchar(255) NOT NULL COMMENT '使用库存ID',
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_phone`
--

DROP TABLE IF EXISTS `cz_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_phone` (
  `pe_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '手机ID',
  `pe_uid` int(11) NOT NULL COMMENT '绑定账号',
  `pe_name` varchar(255) NOT NULL COMMENT '手机编号',
  `pe_addr` varchar(255) NOT NULL COMMENT '使用地址',
  `pe_login_at` varchar(255) NOT NULL COMMENT '登录时间',
  `pe_status` tinyint(1) NOT NULL COMMENT '手机状态 1 启用 2 禁用',
  `pe_type` tinyint(1) NOT NULL COMMENT '手机出/入库 1 出库 2 入库',
  `pe_pass` varchar(255) NOT NULL COMMENT '二级密码',
  `pe_issms` tinyint(1) NOT NULL COMMENT '手机是否启用短信 1 启用 2 禁用',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`pe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_receipt`
--

DROP TABLE IF EXISTS `cz_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receipt` varchar(13312) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0成功 1等待导入 2失败',
  `status_zn` varchar(512) DEFAULT NULL COMMENT '导入结果',
  `add_time` varchar(255) NOT NULL,
  `updatetime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `receipt` (`receipt`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_role`
--

DROP TABLE IF EXISTS `cz_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rolename` varchar(155) NOT NULL COMMENT '角色名称',
  `rule` varchar(255) DEFAULT '' COMMENT '权限节点数据',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_store`
--

DROP TABLE IF EXISTS `cz_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) unsigned NOT NULL COMMENT '面值',
  `desc` varchar(256) NOT NULL DEFAULT '' COMMENT '描述',
  `game_id` int(10) NOT NULL COMMENT '游戏ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0已删除 1有效 2已使用 3已过期 4使用失败 5后台恢复(不可发布到交易市场) 6手机端已经获取 7后台导出',
  `start_time` datetime NOT NULL COMMENT '凭证生效时间',
  `end_time` datetime NOT NULL COMMENT '失效时间',
  `use_time` datetime NOT NULL COMMENT '使用时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '凭证订单号',
  `receipt` varchar(13312) NOT NULL DEFAULT '' COMMENT '凭证内容',
  `new_receipt` text COMMENT '新型凭证',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户ID',
  `price_id` int(10) unsigned NOT NULL COMMENT '面值ID',
  `is_goods` tinyint(1) unsigned NOT NULL COMMENT '0正常 1发布到交易市场',
  `err_code` int(10) NOT NULL COMMENT '错误码',
  `err_msg` varchar(512) NOT NULL DEFAULT '' COMMENT '错误信息',
  PRIMARY KEY (`id`),
  KEY `receipt` (`receipt`(191))
) ENGINE=InnoDB AUTO_INCREMENT=54825 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_store_log`
--

DROP TABLE IF EXISTS `cz_store_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_store_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(256) NOT NULL DEFAULT '' COMMENT '描述',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `store_id` int(10) NOT NULL COMMENT '库存ID',
  `status` tinyint(4) NOT NULL COMMENT '0无效 1有效',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134087 DEFAULT CHARSET=utf8mb4 COMMENT='库存操作记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_storebak`
--

DROP TABLE IF EXISTS `cz_storebak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_storebak` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) unsigned NOT NULL COMMENT '面值',
  `desc` varchar(256) NOT NULL DEFAULT '' COMMENT '描述',
  `game_id` int(10) NOT NULL COMMENT '游戏ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0已删除 1有效 2已使用 3已过期 4使用失败 5后台恢复(不可发布到交易市场) 6手机端已经获取 7后台导出',
  `start_time` datetime NOT NULL COMMENT '凭证生效时间',
  `end_time` datetime NOT NULL COMMENT '失效时间',
  `use_time` datetime NOT NULL COMMENT '使用时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '凭证订单号',
  `receipt` varchar(13312) NOT NULL DEFAULT '' COMMENT '凭证内容',
  `new_receipt` text COMMENT '新型凭证',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户ID',
  `price_id` int(10) unsigned NOT NULL COMMENT '面值ID',
  `is_goods` tinyint(1) unsigned NOT NULL COMMENT '0正常 1发布到交易市场',
  `err_code` int(10) NOT NULL COMMENT '错误码',
  `err_msg` varchar(512) NOT NULL DEFAULT '' COMMENT '错误信息',
  PRIMARY KEY (`id`),
  KEY `receipt` (`receipt`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_token`
--

DROP TABLE IF EXISTS `cz_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_token` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '令牌编号',
  `token` varchar(50) NOT NULL COMMENT '登录令牌',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `ip` varchar(32) NOT NULL DEFAULT '' COMMENT '登录IP',
  `client` varchar(10) NOT NULL DEFAULT '' COMMENT '客户端类型 android ios wap',
  `version` varchar(32) DEFAULT '' COMMENT '客户端版本',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0管理员删除 1有效 2设备登陆其他账号 3用户退出 4新设备登陆，等待激活',
  `device_id` varchar(256) NOT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7086 DEFAULT CHARSET=utf8mb4 COMMENT='移动端登录令牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_trans`
--

DROP TABLE IF EXISTS `cz_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_trans` (
  `trans_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(11) NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `price_id` int(11) NOT NULL DEFAULT '0' COMMENT '面值ID',
  `trans_num` int(11) NOT NULL DEFAULT '0' COMMENT '交易数量',
  `trans_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单价格',
  `trans_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `content` varchar(255) NOT NULL COMMENT '订单备注',
  `end_time` varchar(255) NOT NULL COMMENT '截止时间',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  `updated_at` varchar(255) NOT NULL COMMENT '更新时间',
  `store_id` varchar(255) NOT NULL COMMENT '使用库存ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常挂单 2 部分交易 3 已经过期 4订单下架',
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_user`
--

DROP TABLE IF EXISTS `cz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `username` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `really_name` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '真实姓名',
  `status` int(1) DEFAULT '0' COMMENT '状态 1 启用 2 禁用',
  `position_id` int(11) DEFAULT NULL COMMENT '职位ID',
  `sex` tinyint(2) DEFAULT NULL COMMENT '性别1男2女',
  `birth_time` varchar(10) COLLATE utf8_bin DEFAULT '' COMMENT '出生日期',
  `idcard` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `qq` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'QQ',
  `portrait_url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `session_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'sessionID',
  `notice` tinyint(1) DEFAULT '1' COMMENT '首页登录 1 是 2 不是',
  `money` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '个人资产',
  `fro_money` decimal(10,2) DEFAULT '0.00' COMMENT '冻结金额',
  `end_time` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '到期时间',
  `admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'app 端上传游戏包名权限',
  `save_device` tinyint(1) NOT NULL DEFAULT '0' COMMENT '启用安全设备校验',
  `pass_store` tinyint(1) NOT NULL DEFAULT '1' COMMENT '出库跳过使用过的凭证',
  `pay_pass` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '支付密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cz_userlog`
--

DROP TABLE IF EXISTS `cz_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cz_userlog` (
  `ug_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ug_uid` int(11) NOT NULL COMMENT '用户id',
  `ug_status` tinyint(1) NOT NULL COMMENT '操作类型 1充值 2 提现 3 交易增加 4 交易减少 5 扣除手续费 6 冻结 7 充值被拒 8 提现被拒',
  `ug_money` decimal(10,2) NOT NULL COMMENT '金额',
  `ug_cgmoney` decimal(10,2) NOT NULL COMMENT '改变后金额',
  `ug_content` varchar(255) NOT NULL COMMENT '通知信息',
  `created_at` varchar(255) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`ug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:05:25
