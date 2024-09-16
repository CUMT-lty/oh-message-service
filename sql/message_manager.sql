/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table channel_business
# ------------------------------------------------------------

DROP TABLE IF EXISTS `channel_business`;

CREATE TABLE `channel_business` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `channel_id` varchar(64) DEFAULT NULL COMMENT '自定义三方平台渠道ID',
  `access_key` varchar(128) DEFAULT NULL COMMENT 'AccessKey',
  `access_key_secret` varchar(128) DEFAULT NULL COMMENT 'AccessKeySecret',
  `extend` varchar(1024) DEFAULT NULL COMMENT '扩展信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `channel_business` WRITE;
/*!40000 ALTER TABLE `channel_business` DISABLE KEYS */;

INSERT INTO `channel_business` (`id`, `channel_id`, `access_key`, `access_key_secret`, `extend`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,'ALI_HY_001','xxx','xxx','xxx','2023-02-13 03:33:38','2023-02-13 03:33:38',0),
	(2,'TENCENT_HY_001','xxx','xxx','xxx','2023-02-13 03:33:38','2023-02-13 03:33:38',0),
	(3,'ALI_YX_001','xxx','xxx','xxx','2023-02-13 03:33:38','2023-02-13 03:33:38',0),
	(4,'TENCENT_YX_001','xxx','xxx','xxx','2023-02-13 03:33:38','2023-02-13 03:33:38',0);

/*!40000 ALTER TABLE `channel_business` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table channel_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `channel_relation`;

CREATE TABLE `channel_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `source_id` varchar(32) DEFAULT NULL COMMENT 'SID',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `channel_id` varchar(64) DEFAULT NULL COMMENT '自定义三方平台渠道ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `channel_relation` WRITE;
/*!40000 ALTER TABLE `channel_relation` DISABLE KEYS */;

INSERT INTO `channel_relation` (`id`, `source_id`, `sign`, `channel_id`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,'100001','【Hippo4j】','ALI_HY_001','2023-02-13 03:35:07','2023-02-13 03:35:07',0),
	(2,'100001','【Hippo4j】','TENCENT_HY_001','2023-02-13 03:35:07','2023-02-13 03:35:07',0);

/*!40000 ALTER TABLE `channel_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table send_record_2023_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m1`;

CREATE TABLE `send_record_2023_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m10`;

CREATE TABLE `send_record_2023_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m11`;

CREATE TABLE `send_record_2023_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m12`;

CREATE TABLE `send_record_2023_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m2`;

CREATE TABLE `send_record_2023_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';

LOCK TABLES `send_record_2023_m2` WRITE;
/*!40000 ALTER TABLE `send_record_2023_m2` DISABLE KEYS */;

INSERT INTO `send_record_2023_m2` (`id`, `msg_id`, `msg_batch_id`, `template_id`, `msg_type`, `source_id`, `sender`, `receiver`, `cc`, `billing_count`, `status`, `fail_info`, `send_time`, `receipt_time`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1627269246092845056,'1627263809373081600',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-02-19 19:29:56',NULL,'2023-02-19 19:29:56','2023-02-19 19:29:56',0),
	(1627269295929565184,'1627269293102604288',NULL,'1',0,'100001','TENCENT_HY_001','15601166692',NULL,NULL,3,'{\"code\":\"-1\",\"errMsg\":\"code: 404, Specified access key is not found. request id: 7952CEF3-1583-5333-A3C7-6C7B16AE560F\",\"success\":false}','2023-02-19 19:30:08',NULL,'2023-02-19 19:30:08','2023-02-19 19:30:08',0),
	(1627999324212912128,'1627999313366441984',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-02-21 19:51:00',NULL,'2023-02-21 19:51:00','2023-02-21 19:51:00',0),
	(1627999654292054016,'1627999653314781184',NULL,'1',0,'100001','TENCENT_HY_001','15601166692',NULL,NULL,3,'{\"code\":\"-1\",\"errMsg\":\"code: 404, Specified access key is not found. request id: BDAFF2F4-5E5B-5F42-B9E4-A163786C3BCD\",\"success\":false}','2023-02-21 19:52:19',NULL,'2023-02-21 19:52:19','2023-02-21 19:52:19',0),
	(1628006161893122048,'1628006160102154240',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-02-21 20:18:11',NULL,'2023-02-21 20:18:11','2023-02-21 20:18:11',0),
	(1628006778296438784,'1628006352964648960',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-02-21 20:20:37',NULL,'2023-02-21 20:20:38','2023-02-21 20:20:38',0);

/*!40000 ALTER TABLE `send_record_2023_m2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table send_record_2023_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m3`;

CREATE TABLE `send_record_2023_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m4`;

CREATE TABLE `send_record_2023_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m5`;

CREATE TABLE `send_record_2023_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m6`;

CREATE TABLE `send_record_2023_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';

LOCK TABLES `send_record_2023_m6` WRITE;
/*!40000 ALTER TABLE `send_record_2023_m6` DISABLE KEYS */;

INSERT INTO `send_record_2023_m6` (`id`, `msg_id`, `msg_batch_id`, `template_id`, `msg_type`, `source_id`, `sender`, `receiver`, `cc`, `billing_count`, `status`, `fail_info`, `send_time`, `receipt_time`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1668097339996319744,'1668097277421498368',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-06-12 11:26:12',NULL,'2023-06-12 11:26:12','2023-06-12 11:26:12',0),
	(1668102337354354688,'1668102335215259648',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-06-12 11:46:04',NULL,'2023-06-12 11:46:04','2023-06-12 11:46:04',0),
	(1668529535349424128,'1668529522330304512',NULL,'1',0,'100001','ALI_HY_001','15601166692',NULL,NULL,3,'{\"success\":false}','2023-06-13 16:03:36',NULL,'2023-06-13 16:03:36','2023-06-13 16:03:36',0),
	(1668541409558269952,'1668541403703021568',NULL,'1',0,'100001','TENCENT_HY_001','15601166692',NULL,NULL,3,'{\"code\":\"-1\",\"errMsg\":\"code: 404, Specified access key is not found. request id: 3484E730-4723-51DD-8DD4-3AAF58F422CE\",\"success\":false}','2023-06-13 16:50:47',NULL,'2023-06-13 16:50:47','2023-06-13 16:50:47',0);

/*!40000 ALTER TABLE `send_record_2023_m6` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table send_record_2023_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m7`;

CREATE TABLE `send_record_2023_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m8`;

CREATE TABLE `send_record_2023_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2023_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2023_m9`;

CREATE TABLE `send_record_2023_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m1`;

CREATE TABLE `send_record_2024_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m10`;

CREATE TABLE `send_record_2024_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m11`;

CREATE TABLE `send_record_2024_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m12`;

CREATE TABLE `send_record_2024_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m2`;

CREATE TABLE `send_record_2024_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m3`;

CREATE TABLE `send_record_2024_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m4`;

CREATE TABLE `send_record_2024_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m5`;

CREATE TABLE `send_record_2024_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m6`;

CREATE TABLE `send_record_2024_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m7`;

CREATE TABLE `send_record_2024_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m8`;

CREATE TABLE `send_record_2024_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2024_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2024_m9`;

CREATE TABLE `send_record_2024_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m1`;

CREATE TABLE `send_record_2025_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m10`;

CREATE TABLE `send_record_2025_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m11`;

CREATE TABLE `send_record_2025_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m12`;

CREATE TABLE `send_record_2025_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m2`;

CREATE TABLE `send_record_2025_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m3`;

CREATE TABLE `send_record_2025_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m4`;

CREATE TABLE `send_record_2025_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m5`;

CREATE TABLE `send_record_2025_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m6`;

CREATE TABLE `send_record_2025_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m7`;

CREATE TABLE `send_record_2025_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m8`;

CREATE TABLE `send_record_2025_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2025_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2025_m9`;

CREATE TABLE `send_record_2025_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m1`;

CREATE TABLE `send_record_2026_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m10`;

CREATE TABLE `send_record_2026_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m11`;

CREATE TABLE `send_record_2026_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m12`;

CREATE TABLE `send_record_2026_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m2`;

CREATE TABLE `send_record_2026_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m3`;

CREATE TABLE `send_record_2026_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m4`;

CREATE TABLE `send_record_2026_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m5`;

CREATE TABLE `send_record_2026_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m6`;

CREATE TABLE `send_record_2026_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m7`;

CREATE TABLE `send_record_2026_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m8`;

CREATE TABLE `send_record_2026_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_2026_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_2026_m9`;

CREATE TABLE `send_record_2026_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(64) DEFAULT NULL COMMENT '消息发送ID',
  `msg_batch_id` varchar(64) DEFAULT NULL COMMENT '消息批量发送ID',
  `template_id` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '模板类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `source_id` varchar(64) DEFAULT NULL COMMENT '渠道，用来统计发送来源方',
  `sender` varchar(64) DEFAULT NULL COMMENT '发送者',
  `receiver` varchar(64) DEFAULT NULL COMMENT '接收者',
  `cc` varchar(64) DEFAULT NULL COMMENT '抄送者，邮箱独有',
  `billing_count` int(3) DEFAULT NULL COMMENT '短信计费条数',
  `status` tinyint(1) DEFAULT NULL COMMENT '消息状态: 0：发送成功 1：发送失败 2：发送中 3：提交失败',
  `fail_info` varchar(2048) DEFAULT NULL COMMENT '失败详情',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `receipt_time` datetime DEFAULT NULL COMMENT '接收时间，短信独有',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';



# Dump of table send_record_extend_2023_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m1`;

CREATE TABLE `send_record_extend_2023_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m10`;

CREATE TABLE `send_record_extend_2023_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m11`;

CREATE TABLE `send_record_extend_2023_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m12`;

CREATE TABLE `send_record_extend_2023_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m2`;

CREATE TABLE `send_record_extend_2023_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `send_record_extend_2023_m2` WRITE;
/*!40000 ALTER TABLE `send_record_extend_2023_m2` DISABLE KEYS */;

INSERT INTO `send_record_extend_2023_m2` (`id`, `msg_id`, `msg_param`, `msg_ content`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1627269251977453568,'1627263809373081600','[183726]',NULL,'2023-02-19 19:29:58','2023-02-19 19:29:58',0),
	(1627269295975702528,'1627269293102604288','[183726]',NULL,'2023-02-19 19:30:08','2023-02-19 19:30:08',0),
	(1627999324644925440,'1627999313366441984','[183726]',NULL,'2023-02-21 19:51:00','2023-02-21 19:51:00',0),
	(1627999654354968576,'1627999653314781184','[183726]',NULL,'2023-02-21 19:52:19','2023-02-21 19:52:19',0),
	(1628006162102837248,'1628006160102154240','[183726]',NULL,'2023-02-21 20:18:11','2023-02-21 20:18:11',0),
	(1628006783530930176,'1628006352964648960','[183726]',NULL,'2023-02-21 20:20:39','2023-02-21 20:20:39',0);

/*!40000 ALTER TABLE `send_record_extend_2023_m2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table send_record_extend_2023_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m3`;

CREATE TABLE `send_record_extend_2023_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m4`;

CREATE TABLE `send_record_extend_2023_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m5`;

CREATE TABLE `send_record_extend_2023_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m6`;

CREATE TABLE `send_record_extend_2023_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `send_record_extend_2023_m6` WRITE;
/*!40000 ALTER TABLE `send_record_extend_2023_m6` DISABLE KEYS */;

INSERT INTO `send_record_extend_2023_m6` (`id`, `msg_id`, `msg_param`, `msg_ content`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1668097343578255360,'1668097277421498368','[183726]',NULL,'2023-06-12 11:26:13','2023-06-12 11:26:13',0),
	(1668102341259251712,'1668102335215259648','[183726]',NULL,'2023-06-12 11:46:05','2023-06-12 11:46:05',0),
	(1668529535974375424,'1668529522330304512','[183726]',NULL,'2023-06-13 16:03:36','2023-06-13 16:03:36',0),
	(1668541415220580352,'1668541403703021568','[183726]',NULL,'2023-06-13 16:50:48','2023-06-13 16:50:48',0);

/*!40000 ALTER TABLE `send_record_extend_2023_m6` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table send_record_extend_2023_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m7`;

CREATE TABLE `send_record_extend_2023_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m8`;

CREATE TABLE `send_record_extend_2023_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2023_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2023_m9`;

CREATE TABLE `send_record_extend_2023_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m1`;

CREATE TABLE `send_record_extend_2024_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m10`;

CREATE TABLE `send_record_extend_2024_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m11`;

CREATE TABLE `send_record_extend_2024_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m12`;

CREATE TABLE `send_record_extend_2024_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m2`;

CREATE TABLE `send_record_extend_2024_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m3`;

CREATE TABLE `send_record_extend_2024_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m4`;

CREATE TABLE `send_record_extend_2024_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m5`;

CREATE TABLE `send_record_extend_2024_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m6`;

CREATE TABLE `send_record_extend_2024_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m7`;

CREATE TABLE `send_record_extend_2024_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m8`;

CREATE TABLE `send_record_extend_2024_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2024_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2024_m9`;

CREATE TABLE `send_record_extend_2024_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m1`;

CREATE TABLE `send_record_extend_2025_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m10`;

CREATE TABLE `send_record_extend_2025_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m11`;

CREATE TABLE `send_record_extend_2025_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m12`;

CREATE TABLE `send_record_extend_2025_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m2`;

CREATE TABLE `send_record_extend_2025_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m3`;

CREATE TABLE `send_record_extend_2025_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m4`;

CREATE TABLE `send_record_extend_2025_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m5`;

CREATE TABLE `send_record_extend_2025_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m6`;

CREATE TABLE `send_record_extend_2025_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m7`;

CREATE TABLE `send_record_extend_2025_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m8`;

CREATE TABLE `send_record_extend_2025_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2025_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2025_m9`;

CREATE TABLE `send_record_extend_2025_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m1`;

CREATE TABLE `send_record_extend_2026_m1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m10`;

CREATE TABLE `send_record_extend_2026_m10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m11
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m11`;

CREATE TABLE `send_record_extend_2026_m11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m12
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m12`;

CREATE TABLE `send_record_extend_2026_m12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m2`;

CREATE TABLE `send_record_extend_2026_m2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m3`;

CREATE TABLE `send_record_extend_2026_m3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m4`;

CREATE TABLE `send_record_extend_2026_m4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m5`;

CREATE TABLE `send_record_extend_2026_m5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m6`;

CREATE TABLE `send_record_extend_2026_m6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m7`;

CREATE TABLE `send_record_extend_2026_m7` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m8`;

CREATE TABLE `send_record_extend_2026_m8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table send_record_extend_2026_m9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `send_record_extend_2026_m9`;

CREATE TABLE `send_record_extend_2026_m9` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `msg_id` varchar(84) DEFAULT NULL COMMENT '消息发送ID',
  `msg_param` varchar(2048) DEFAULT NULL COMMENT '发送参数',
  `msg_ content` varchar(2048) DEFAULT NULL COMMENT '发送内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  KEY `idx_msg_id` (`msg_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table sign_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sign_config`;

CREATE TABLE `sign_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sign_id` int(3) DEFAULT NULL COMMENT '签名ID',
  `name` varchar(64) DEFAULT NULL COMMENT '签名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_idx_sign_id` (`sign_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `sign_config` WRITE;
/*!40000 ALTER TABLE `sign_config` DISABLE KEYS */;

INSERT INTO `sign_config` (`id`, `sign_id`, `name`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,1,'【Hippo4j】','2023-02-13 03:34:11','2023-02-13 03:34:11',0);

/*!40000 ALTER TABLE `sign_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table source_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `source_config`;

CREATE TABLE `source_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `source_id` varchar(32) DEFAULT NULL COMMENT 'SID',
  `name` varchar(128) DEFAULT NULL COMMENT '渠道名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `source_config` WRITE;
/*!40000 ALTER TABLE `source_config` DISABLE KEYS */;

INSERT INTO `source_config` (`id`, `source_id`, `name`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,'100001','开源业务线','2023-02-13 03:34:40','2023-02-13 03:34:40',0),
	(2,'100002','万达贷业务线','2023-02-13 03:34:40','2023-02-13 03:34:40',0);

/*!40000 ALTER TABLE `source_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table template_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `template_config`;

CREATE TABLE `template_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `template_id` varchar(128) DEFAULT NULL COMMENT '模板 ID',
  `template_name` varchar(128) DEFAULT NULL COMMENT '模板名称',
  `channel_template_id` varchar(256) DEFAULT NULL COMMENT '三方渠道模板ID',
  `source_id` varchar(32) DEFAULT NULL COMMENT 'SID',
  `channel_ids` varchar(64) DEFAULT NULL COMMENT '自定义三方平台渠道ID',
  `msg_type` int(3) DEFAULT NULL COMMENT '消息类型 0：短信-验证码 1：短信-通知 2：短信-营销 3：微信模板消息 4：邮箱 5...',
  `enable_status` tinyint(1) DEFAULT '0' COMMENT '启用状态 0：启用 1：停用',
  `template_text` varchar(1024) DEFAULT NULL COMMENT '模板内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息模板表';

LOCK TABLES `template_config` WRITE;
/*!40000 ALTER TABLE `template_config` DISABLE KEYS */;

INSERT INTO `template_config` (`id`, `template_id`, `template_name`, `channel_template_id`, `source_id`, `channel_ids`, `msg_type`, `enable_status`, `template_text`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,'1','Hippo4j验证码','-','100001','ALI_HY_001,TENCENT_HY_001',0,0,'验证码：${code} ，请您在6分钟内填写，如非本人操作，请忽略本短信。','2023-02-13 03:46:29','2023-02-21 12:55:50',0),
	(2,'2','订单支付成功','E2Y7J6M57JOjuA_GQ6AlAXRWQRMhIBmQ8uv-3nK9ay8','100002',NULL,3,0,'下单门店：{{keyword1.DATA}}\r\n订单编号：{{keyword2.DATA}}\n订单金额：{{keyword3.DATA}}','2023-02-13 03:46:29','2023-02-13 03:46:29',0);

/*!40000 ALTER TABLE `template_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table template_config_param
# ------------------------------------------------------------

DROP TABLE IF EXISTS `template_config_param`;

CREATE TABLE `template_config_param` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `template_id` varchar(128) DEFAULT NULL COMMENT '模板ID',
  `key_placeholder` varchar(24) DEFAULT NULL COMMENT '占位符Key',
  `rank_placeholder` int(12) DEFAULT NULL COMMENT '占位符序号',
  `colour` varchar(36) DEFAULT NULL COMMENT '颜色',
  `size` varchar(36) DEFAULT NULL COMMENT '字体大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除 0：否 1：是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息模板参数表';

LOCK TABLES `template_config_param` WRITE;
/*!40000 ALTER TABLE `template_config_param` DISABLE KEYS */;

INSERT INTO `template_config_param` (`id`, `template_id`, `key_placeholder`, `rank_placeholder`, `colour`, `size`, `create_time`, `update_time`, `del_flag`)
VALUES
	(1,'1','code',0,NULL,NULL,'2023-02-13 03:47:28','2023-02-13 03:47:28',0),
	(2,'2','keyword1',0,NULL,NULL,'2023-02-13 03:47:28','2023-02-13 03:47:28',0),
	(3,'2','keyword2',1,NULL,NULL,'2023-02-13 03:47:28','2023-02-13 03:47:28',0),
	(4,'2','keyword3',2,NULL,NULL,'2023-02-13 03:47:28','2023-02-13 03:47:28',0);

/*!40000 ALTER TABLE `template_config_param` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
