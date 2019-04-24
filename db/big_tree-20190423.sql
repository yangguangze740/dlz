-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: big_tree
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `jx_accident`
--

DROP TABLE IF EXISTS `jx_accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_accident` (
  `accident_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故id',
  `accident_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故名',
  `accident_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故类别',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0',
  `punish_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '惩罚id',
  PRIMARY KEY (`accident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='事故管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_accident`
--

LOCK TABLES `jx_accident` WRITE;
/*!40000 ALTER TABLE `jx_accident` DISABLE KEYS */;
INSERT INTO `jx_accident` VALUES ('054efc35-244a-4953-b08c-36d477e57392','测试事故1','a2489465-89d6-46c9-b518-a6e924594938','2019-04-19 12:36:58','2019-04-19 12:36:58','1','1',0,'7517ab09-86ae-45d6-bae2-aabe5de4485f'),('90eb7aca-ef26-4c7e-b638-2945e8a9a4c1','测试事故22','e3c1f1f7-e93d-4831-8c63-a548d0e743d3','2019-04-19 12:39:50','2019-04-19 12:40:06','1','1',0,'adbdebe0-1785-467d-8b1d-de61b150d26e');
/*!40000 ALTER TABLE `jx_accident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_accident_record`
--

DROP TABLE IF EXISTS `jx_accident_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_accident_record` (
  `accident_record_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '记录id’',
  `dept_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '部门',
  `post_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '岗位id',
  `punish_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '处罚方法id',
  `start_time` date NOT NULL,
  `stop_time` date NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accident_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故类型Id',
  `accident_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故id',
  `accident_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故描述',
  `remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`accident_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='事故记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_accident_record`
--

LOCK TABLES `jx_accident_record` WRITE;
/*!40000 ALTER TABLE `jx_accident_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `jx_accident_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_accident_type`
--

DROP TABLE IF EXISTS `jx_accident_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_accident_type` (
  `accident_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故类别id',
  `accident_type_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '事故类别名',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`accident_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='事故类别管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_accident_type`
--

LOCK TABLES `jx_accident_type` WRITE;
/*!40000 ALTER TABLE `jx_accident_type` DISABLE KEYS */;
INSERT INTO `jx_accident_type` VALUES ('a2489465-89d6-46c9-b518-a6e924594938','测试类别1',0,'2019-04-19 11:49:29','2019-04-19 11:49:46','1','1'),('e3c1f1f7-e93d-4831-8c63-a548d0e743d3','测试类别2',0,'2019-04-11 12:46:56','2019-04-11 12:46:56','1','1');
/*!40000 ALTER TABLE `jx_accident_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_punish`
--

DROP TABLE IF EXISTS `jx_punish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_punish` (
  `punish_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '惩罚id',
  `punish_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '惩罚措施',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0',
  `month_length` int(11) NOT NULL,
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`punish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='惩罚管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_punish`
--

LOCK TABLES `jx_punish` WRITE;
/*!40000 ALTER TABLE `jx_punish` DISABLE KEYS */;
INSERT INTO `jx_punish` VALUES ('7517ab09-86ae-45d6-bae2-aabe5de4485f','惩罚措施1',0,1,'1','1','2019-04-15 12:02:25','2019-04-15 12:02:25'),('adbdebe0-1785-467d-8b1d-de61b150d26e','惩罚措施2',0,2,'1','1','2019-04-15 12:03:58','2019-04-15 12:03:58');
/*!40000 ALTER TABLE `jx_punish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_rule`
--

DROP TABLE IF EXISTS `jx_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_rule` (
  `rule_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则主键',
  `rule_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则名',
  `rule_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则类别主键',
  `score` tinyint(4) NOT NULL COMMENT '规则分数',
  `score_flag` tinyint(2) NOT NULL DEFAULT '1' COMMENT '加减分标识 1:加分 -1:减分',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '删除标识 0:未删除 1:已删除',
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='规则管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_rule`
--

LOCK TABLES `jx_rule` WRITE;
/*!40000 ALTER TABLE `jx_rule` DISABLE KEYS */;
INSERT INTO `jx_rule` VALUES ('55faea8c-f0e7-4fb5-98e0-622a2ee44956','测试规则2','8dc7c6da-2127-4fae-b6c4-2cb5001f2fd7',-1,1,0,'1','2019-04-23 12:56:43','1','2019-04-23 12:56:43'),('75ed924d-5174-49f9-8f09-041b7f486bd7','测试规则1','d9af6218-09a8-41df-954d-e9c7e25762f5',1,1,0,'1','2019-04-23 12:56:28','1','2019-04-23 12:56:28');
/*!40000 ALTER TABLE `jx_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_rule_type`
--

DROP TABLE IF EXISTS `jx_rule_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_rule_type` (
  `rule_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则类型主键',
  `rule_type_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则类型名',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '删除标识 0:未删除 1:已删除',
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rule_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='规则类型管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_rule_type`
--

LOCK TABLES `jx_rule_type` WRITE;
/*!40000 ALTER TABLE `jx_rule_type` DISABLE KEYS */;
INSERT INTO `jx_rule_type` VALUES ('8dc7c6da-2127-4fae-b6c4-2cb5001f2fd7','测试规则类型2',0,'1','2019-04-23 12:54:28','1','2019-04-23 12:54:28'),('d9af6218-09a8-41df-954d-e9c7e25762f5','测试规则类型1',0,'1','2019-04-23 12:54:17','1','2019-04-23 12:54:17');
/*!40000 ALTER TABLE `jx_rule_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_score_record`
--

DROP TABLE IF EXISTS `jx_score_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_score_record` (
  `score_record_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rule_type_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rule_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operator_user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modify_user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteFlag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`score_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='规则记录管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_score_record`
--

LOCK TABLES `jx_score_record` WRITE;
/*!40000 ALTER TABLE `jx_score_record` DISABLE KEYS */;
INSERT INTO `jx_score_record` VALUES ('43d6bdbe-53d8-446b-a248-67193dc0277c','3','d9af6218-09a8-41df-954d-e9c7e25762f5','75ed924d-5174-49f9-8f09-041b7f486bd7','若依','1','2019-04-23 13:05:47','2019-04-23 13:08:14',0),('f96a725b-0a84-4e24-b9c7-38e02c265c6e','1','8dc7c6da-2127-4fae-b6c4-2cb5001f2fd7','55faea8c-f0e7-4fb5-98e0-622a2ee44956','若依','1','2019-04-23 13:06:10','2019-04-23 13:06:10',0);
/*!40000 ALTER TABLE `jx_score_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT',NULL,'com.zhulin.quartz.util.ScheduleJob','0','1','0','0',_binary '��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.zhulin.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0!com.zhulin.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\03t\01x\0'),('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT',NULL,'com.zhulin.quartz.util.ScheduleJob','0','1','0','0',_binary '��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.zhulin.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0!com.zhulin.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','yangguangzedeMacBook-Pro.local1556024546357',1556024909329,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','__TASK_CLASS_NAME__1','DEFAULT','__TASK_CLASS_NAME__1','DEFAULT',NULL,1549873290000,-1,5,'PAUSED','CRON',1549873282000,0,NULL,2,_binary '��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.zhulin.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0!com.zhulin.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\03t\01x\0'),('RuoyiScheduler','__TASK_CLASS_NAME__2','DEFAULT','__TASK_CLASS_NAME__2','DEFAULT',NULL,1549873300000,-1,5,'PAUSED','CRON',1549873283000,0,NULL,2,_binary '��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0__TASK_PROPERTIES__sr\0com.zhulin.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0!com.zhulin.common.base.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,�)�xpt\0\0pppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(11,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(12,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(13,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(14,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(15,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(16,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(17,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(18,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(19,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(20,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(21,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(22,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(23,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(24,8,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(25,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(26,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(6,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(7,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(8,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(9,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'ryTask','系统默认（无参）','ryNoParams','','0/10 * * * * ?','3','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'ryTask','系统默认（有参）','ryParams','ry','0/20 * * * * ?','3','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logininfor` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-11 16:35:29'),(101,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-11 16:41:07'),(102,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 11:28:55'),(103,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 16:14:42'),(104,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-14 20:23:59'),(105,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 20:24:11'),(106,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 20:35:18'),(107,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 20:43:46'),(108,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 20:48:41'),(109,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-14 20:50:09'),(110,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 08:41:06'),(111,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 09:47:43'),(112,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 09:54:37'),(113,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:02:31'),(114,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:07:39'),(115,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:13:37'),(116,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 10:18:58'),(117,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:19:04'),(118,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 10:21:57'),(119,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:22:01'),(120,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 10:25:18'),(121,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 10:25:21'),(122,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 10:25:28'),(123,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:25:32'),(124,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:33:20'),(125,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:53:13'),(126,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:55:54'),(127,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 10:57:33'),(128,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 11:04:49'),(129,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-02-15 11:16:28'),(130,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 11:16:33'),(131,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 11:19:05'),(132,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-02-15 11:21:22'),(133,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-03-30 10:42:52');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,1,'/system/user','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'#','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'状态修改',110,5,'#','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'任务详细',110,6,'#','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务导出',110,7,'#','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成查询',114,1,'#','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成代码',114,2,'#','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'信息配置',1,11,'/system/uiConfig','C','0','system:uiConfig:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','系统ui配置菜单'),(1059,'系统ui配置查询',1058,1,'#','F','0','system:uiConfig:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1060,'系统ui配置新增',1058,2,'#','F','0','system:uiConfig:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1061,'系统ui配置修改',1058,3,'#','F','0','system:uiConfig:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1062,'系统ui配置删除',1058,4,'#','F','0','system:uiConfig:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1063,'事故类别管理',3,1,'/bus/accidentType','C','0','bus:accidentType:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','事故类别管理菜单'),(1064,'事故类别管理查询',1063,1,'#','F','0','bus:accidentType:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1065,'事故类别管理新增',1063,2,'#','F','0','bus:accidentType:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1066,'事故类别管理修改',1063,3,'#','F','0','bus:accidentType:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1067,'事故类别管理删除',1063,4,'#','F','0','bus:accidentType:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1068,'事故管理',3,1,'/bus/accident','C','0','bus:accident:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','事故管理菜单'),(1069,'事故管理查询',1068,1,'#','F','0','bus:accident:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1070,'事故管理新增',1068,2,'#','F','0','bus:accident:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1071,'事故管理修改',1068,3,'#','F','0','bus:accident:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1072,'事故管理删除',1068,4,'#','F','0','bus:accident:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1093,'惩罚管理',3,1,'/bus/punish','C','0','bus:punish:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','惩罚管理菜单'),(1094,'惩罚管理查询',1093,1,'#','F','0','bus:punish:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1095,'惩罚管理新增',1093,2,'#','F','0','bus:punish:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1096,'惩罚管理修改',1093,3,'#','F','0','bus:punish:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1097,'惩罚管理删除',1093,4,'#','F','0','bus:punish:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1098,'规则类型管理',3,1,'/bus/ruleType','C','0','bus:ruleType:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','规则类型管理菜单'),(1099,'规则类型管理查询',1098,1,'#','F','0','bus:ruleType:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1100,'规则类型管理新增',1098,2,'#','F','0','bus:ruleType:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1101,'规则类型管理修改',1098,3,'#','F','0','bus:ruleType:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1102,'规则类型管理删除',1098,4,'#','F','0','bus:ruleType:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1103,'规则管理',3,1,'/bus/rule','C','0','bus:rule:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','规则管理菜单'),(1104,'规则管理查询',1103,1,'#','F','0','bus:rule:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1105,'规则管理新增',1103,2,'#','F','0','bus:rule:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1106,'规则管理修改',1103,3,'#','F','0','bus:rule:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1107,'规则管理删除',1103,4,'#','F','0','bus:rule:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1108,'事故记录',3,1,'/bus/accidentRecord','C','0','bus:accidentRecord:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','事故记录菜单'),(1109,'事故记录查询',1108,1,'#','F','0','bus:accidentRecord:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1110,'事故记录新增',1108,2,'#','F','0','bus:accidentRecord:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1111,'事故记录修改',1108,3,'#','F','0','bus:accidentRecord:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1112,'事故记录删除',1108,4,'#','F','0','bus:accidentRecord:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1113,'规则记录管理',3,1,'/bus/scoreRecord','C','0','bus:scoreRecord:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','规则记录管理菜单'),(1114,'规则记录管理查询',1113,1,'#','F','0','bus:scoreRecord:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1115,'规则记录管理新增',1113,2,'#','F','0','bus:scoreRecord:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1116,'规则记录管理修改',1113,3,'#','F','0','bus:scoreRecord:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(1117,'规则记录管理删除',1113,4,'#','F','0','bus:scoreRecord:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(255) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (1,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/sys_ui_config','127.0.0.1','内网IP','{ }',0,NULL,'2019-02-14 20:35:31'),(2,'角色管理',5,'com.zhulin.web.controller.system.SysRoleController.export()',1,'admin','研发部门','/system/role/export','127.0.0.1','内网IP','{\r\n  \"roleName\" : [ \"\" ],\r\n  \"roleKey\" : [ \"\" ],\r\n  \"status\" : [ \"\" ],\r\n  \"params[beginTime]\" : [ \"\" ],\r\n  \"params[endTime]\" : [ \"\" ]\r\n}',0,NULL,'2019-02-14 21:00:11'),(3,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ui_config_id\' doesn\'t have a default value\r\n### The error may involve com.zhulin.system.mapper.UiConfigMapper.insertUiConfig-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ui_config    ( login_image,    system_name,    ui_title_name,    favicon_ico,                    littleTitle )           values ( ?,    ?,    ?,    ?,                    ? )\r\n### Cause: java.sql.SQLException: Field \'ui_config_id\' doesn\'t have a default value\n; Field \'ui_config_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ui_config_id\' doesn\'t have a default value','2019-02-15 08:41:30'),(4,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve com.zhulin.system.mapper.UiConfigMapper.insertUiConfig-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ui_config    ( ui_config_id,    login_image,    system_name,    ui_title_name,    favicon_ico,                    littleTitle )           values ( ?,    ?,    ?,    ?,    ?,                    ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value','2019-02-15 10:14:02'),(5,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\r\n### The error may involve com.zhulin.system.mapper.UiConfigMapper.insertUiConfig-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ui_config    ( ui_config_id,    login_image,    system_name,    ui_title_name,    favicon_ico,    create_by,        update_by,        littleTitle )           values ( ?,    ?,    ?,    ?,    ?,    ?,             sysdate()    ?,             sysdate()    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19','2019-02-15 10:19:32'),(6,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\r\n### The error may involve com.zhulin.system.mapper.UiConfigMapper.insertUiConfig-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ui_config    ( ui_config_id,    login_image,    system_name,    ui_title_name,    favicon_ico,    create_by,    create_time,    update_by,    update_time,    littleTitle )           values ( ?,    ?,    ?,    ?,    ?,    ?,             sysdate()    ?,             sysdate()    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19','2019-02-15 10:23:05'),(7,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\r\n### The error may involve com.zhulin.system.mapper.UiConfigMapper.insertUiConfig-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ui_config    ( ui_config_id,    login_image,    system_name,    ui_title_name,    favicon_ico,    create_by,    create_time,    update_by,    update_time,    littleTitle )           values ( ?,    ?,    ?,    ?,    ?,    ?,             sysdate()    ?,             sysdate()    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'admin\',\n            sysdate()\n			\'测试\' )\' at line 19','2019-02-15 10:25:54'),(8,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试\" ],\r\n  \"uiTitleName\" : [ \"测试\" ],\r\n  \"littleTitle\" : [ \"测试\" ]\r\n}',0,NULL,'2019-02-15 10:33:55'),(9,'系统ui配置',1,'com.zhulin.web.controller.system.UiConfigController.addSave()',1,'admin','研发部门','/system/uiConfig/add','127.0.0.1','内网IP','{\r\n  \"systemName\" : [ \"测试1\" ],\r\n  \"uiTitleName\" : [ \"测试1\" ],\r\n  \"littleTitle\" : [ \"测试1\" ]\r\n}',0,NULL,'2019-02-15 10:58:05'),(10,'事故类别管理',1,'com.zhulin.web.controller.bus.AccidentTypeController.addSave()',1,'admin','研发部门','/bus/accidentType/add','127.0.0.1','内网IP','{\n  \"accidentTypeName\" : [ \"测试类别\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'accidentTypeId\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.AccidentTypeMapper.insertAccidentType-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_accident_type          ( accidentTypeName,                                                    createUserId,             modifyUserId )           values ( ?,                                                    ?,             ? )\n### Cause: java.sql.SQLException: Field \'accidentTypeId\' doesn\'t have a default value\n; Field \'accidentTypeId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'accidentTypeId\' doesn\'t have a default value','2019-04-11 18:56:19'),(11,'事故类别管理',1,'com.zhulin.web.controller.bus.AccidentTypeController.addSave()',1,'admin','研发部门','/bus/accidentType/add','127.0.0.1','内网IP','{\n  \"accidentTypeName\" : [ \"测试类别1\" ]\n}',0,NULL,'2019-04-11 19:09:09'),(12,'事故类别管理',2,'com.zhulin.web.controller.bus.AccidentTypeController.editSave()',1,'admin','研发部门','/bus/accidentType/edit','127.0.0.1','内网IP','{\n  \"accidentTypeId\" : [ \"0254c0c1-fa3a-471b-85cb-4f773ed74745\" ],\n  \"accidentTypeName\" : [ \"测试类别12\" ]\n}',0,NULL,'2019-04-11 19:09:15'),(13,'事故类别管理',3,'com.zhulin.web.controller.bus.AccidentTypeController.remove()',1,'admin','研发部门','/bus/accidentType/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"0254c0c1-fa3a-471b-85cb-4f773ed74745\" ]\n}',0,NULL,'2019-04-11 19:09:18'),(14,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_accident','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-11 19:10:00'),(15,'事故类别管理',1,'com.zhulin.web.controller.bus.AccidentTypeController.addSave()',1,'admin','研发部门','/bus/accidentType/add','127.0.0.1','内网IP','{\n  \"accidentTypeName\" : [ \"测试类别1\" ]\n}',0,NULL,'2019-04-11 20:46:52'),(16,'事故类别管理',1,'com.zhulin.web.controller.bus.AccidentTypeController.addSave()',1,'admin','研发部门','/bus/accidentType/add','127.0.0.1','内网IP','{\n  \"accidentTypeName\" : [ \"测试类别2\" ]\n}',0,NULL,'2019-04-11 20:46:56'),(17,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故1\" ],\n  \"accidentTypeId\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'accidentId\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.AccidentMapper.insertAccident-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_accident    ( accidentName,    accidentTypeId,        createUserId,    modifyUserId )           values ( ?,    ?,        ?,    ? )\n### Cause: java.sql.SQLException: Field \'accidentId\' doesn\'t have a default value\n; Field \'accidentId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'accidentId\' doesn\'t have a default value','2019-04-11 20:54:26'),(18,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故1\" ],\n  \"accidentTypeId\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ]\n}',0,NULL,'2019-04-11 20:57:45'),(19,'事故管理',2,'com.zhulin.web.controller.bus.AccidentController.editSave()',1,'admin','研发部门','/bus/accident/edit','127.0.0.1','内网IP','{\n  \"accidentId\" : [ \"3682eb0a-99e1-4bc2-a9de-6d0fe40ac0ce\" ],\n  \"accidentName\" : [ \"测试事故2\" ],\n  \"accidentTypeId\" : [ \"e3c1f1f7-e93d-4831-8c63-a548d0e743d3\" ]\n}',0,NULL,'2019-04-11 21:09:31'),(20,'事故管理',3,'com.zhulin.web.controller.bus.AccidentController.remove()',1,'admin','研发部门','/bus/accident/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"3682eb0a-99e1-4bc2-a9de-6d0fe40ac0ce\" ]\n}',0,NULL,'2019-04-11 21:09:35'),(21,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_punish','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-15 19:22:20'),(22,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"测试惩罚措施1\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'punishId\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.PunishMapper.insertPunish-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_punish    ( punishName,            createUserId,    modifyUserId )           values ( ?,            ?,    ? )\n### Cause: java.sql.SQLException: Field \'punishId\' doesn\'t have a default value\n; Field \'punishId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'punishId\' doesn\'t have a default value','2019-04-15 19:57:51'),(23,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:02:25'),(24,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"惩罚措施2\" ],\n  \"monthLength\" : [ \"2\" ]\n}',0,NULL,'2019-04-15 20:03:58'),(25,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:04:02'),(26,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施12\" ],\n  \"monthLength\" : [ \"12\" ]\n}',0,NULL,'2019-04-15 20:04:09'),(27,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:06:34'),(28,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:12:15'),(29,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:13:56'),(30,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ],\n  \"punishName\" : [ \"惩罚措施2\" ],\n  \"monthLength\" : [ \"2\" ]\n}',0,NULL,'2019-04-15 20:17:44'),(31,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ],\n  \"punishName\" : [ \"惩罚措施2\" ],\n  \"monthLength\" : [ \"2\" ]\n}',0,NULL,'2019-04-15 20:18:02'),(32,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ],\n  \"punishName\" : [ \"惩罚措施2\" ],\n  \"monthLength\" : [ \"2\" ]\n}',0,NULL,'2019-04-15 20:19:31'),(33,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"测试方法\" ],\n  \"monthLength\" : [ \"25\" ]\n}',0,NULL,'2019-04-15 20:20:07'),(34,'惩罚管理',3,'com.zhulin.web.controller.bus.PunishController.remove()',1,'admin','研发部门','/bus/punish/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"798570c6-914b-4577-bbd7-24c1fc53f7e3\" ]\n}',0,NULL,'2019-04-15 20:20:11'),(35,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:24:33'),(36,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施133\" ],\n  \"monthLength\" : [ \"1333\" ]\n}',0,NULL,'2019-04-15 20:30:11'),(37,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:31:53'),(38,'事故类别管理',2,'com.zhulin.web.controller.bus.AccidentTypeController.editSave()',1,'admin','研发部门','/bus/accidentType/edit','127.0.0.1','内网IP','{\n  \"accidentTypeId\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ],\n  \"accidentTypeName\" : [ \"测试类别188\" ]\n}',0,NULL,'2019-04-15 20:40:46'),(39,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:42:48'),(40,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ],\n  \"punishName\" : [ \"惩罚措施1\" ],\n  \"monthLength\" : [ \"1\" ]\n}',0,NULL,'2019-04-15 20:43:44'),(41,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故1\" ],\n  \"accidentTypeId\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ],\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ]\n}',0,NULL,'2019-04-15 21:11:05'),(42,'事故管理',2,'com.zhulin.web.controller.bus.AccidentController.editSave()',1,'admin','研发部门','/bus/accident/edit','127.0.0.1','内网IP','{\n  \"accidentId\" : [ \"e1134be9-c079-4906-af78-81294af7f5c8\" ],\n  \"accidentName\" : [ \"测试事故1\" ],\n  \"accidentTypeId\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ],\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ]\n}',0,NULL,'2019-04-15 21:12:32'),(43,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故2\" ],\n  \"accidentTypeId\" : [ \"e3c1f1f7-e93d-4831-8c63-a548d0e743d3\" ],\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ]\n}',0,NULL,'2019-04-15 21:12:42'),(44,'事故管理',3,'com.zhulin.web.controller.bus.AccidentController.remove()',1,'admin','研发部门','/bus/accident/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"39b4130e-5d7b-46c4-9d6f-3c26e1cdf5c6\" ]\n}',0,NULL,'2019-04-15 21:12:47'),(45,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_rule_type','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-17 18:25:56'),(46,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试规则名1\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'ruleTypeId\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.RuleTypeMapper.insertRuleType-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_rule_type    ( ruleTypeName )           values ( ? )\n### Cause: java.sql.SQLException: Field \'ruleTypeId\' doesn\'t have a default value\n; Field \'ruleTypeId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ruleTypeId\' doesn\'t have a default value','2019-04-17 18:36:09'),(47,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试规则类型1\" ]\n}',0,NULL,'2019-04-17 18:40:38'),(48,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"阿斯顿发顺丰\" ]\n}',0,NULL,'2019-04-17 18:40:45'),(49,'规则类型管理',3,'com.zhulin.web.controller.bus.RuleTypeController.remove()',1,'admin','研发部门','/bus/ruleType/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"a75837ae-cd51-4360-bb7e-f43cfa802581\" ]\n}',0,NULL,'2019-04-17 18:40:48'),(50,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试规则类型\" ]\n}',0,NULL,'2019-04-17 18:40:58'),(51,'规则类型管理',2,'com.zhulin.web.controller.bus.RuleTypeController.editSave()',1,'admin','研发部门','/bus/ruleType/edit','127.0.0.1','内网IP','{\n  \"ruleTypeId\" : [ \"34c4042b-3da0-46d0-9fec-bdb49d870e72\" ],\n  \"ruleTypeName\" : [ \"测试规则类型2\" ]\n}',0,NULL,'2019-04-17 18:41:02'),(52,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_rule','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-17 18:41:12'),(53,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"测试规则1\" ],\n  \"ruleTypeId\" : [ \"57aa0388-6c0e-41ad-ab51-5aea60cde23a\" ],\n  \"score\" : [ \"1\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'ruleId\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.RuleMapper.insertRule-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_rule    ( ruleName,    ruleTypeId,    score,            modifyUserId,        createUserId )           values ( ?,    ?,    ?,            ?,        ? )\n### Cause: java.sql.SQLException: Field \'ruleId\' doesn\'t have a default value\n; Field \'ruleId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ruleId\' doesn\'t have a default value','2019-04-17 19:06:25'),(54,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"测试规则1\" ],\n  \"ruleTypeId\" : [ \"57aa0388-6c0e-41ad-ab51-5aea60cde23a\" ],\n  \"score\" : [ \"2\" ]\n}',0,NULL,'2019-04-17 19:08:08'),(55,'规则管理',2,'com.zhulin.web.controller.bus.RuleController.editSave()',1,'admin','研发部门','/bus/rule/edit','127.0.0.1','内网IP','{\n  \"ruleId\" : [ \"8f0ebe71-aad7-46cc-9e94-4a47d138424e\" ],\n  \"ruleName\" : [ \"测试规则2\" ],\n  \"ruleTypeId\" : [ \"57aa0388-6c0e-41ad-ab51-5aea60cde23a\" ],\n  \"score\" : [ \"22\" ]\n}',0,NULL,'2019-04-17 19:08:15'),(56,'规则管理',2,'com.zhulin.web.controller.bus.RuleController.editSave()',1,'admin','研发部门','/bus/rule/edit','127.0.0.1','内网IP','{\n  \"ruleId\" : [ \"8f0ebe71-aad7-46cc-9e94-4a47d138424e\" ],\n  \"ruleName\" : [ \"测试规则2\" ],\n  \"ruleTypeId\" : [ \"34c4042b-3da0-46d0-9fec-bdb49d870e72\" ],\n  \"score\" : [ \"22\" ]\n}',0,NULL,'2019-04-17 19:08:24'),(57,'规则管理',3,'com.zhulin.web.controller.bus.RuleController.remove()',1,'admin','研发部门','/bus/rule/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"8f0ebe71-aad7-46cc-9e94-4a47d138424e\" ]\n}',0,NULL,'2019-04-17 19:08:27'),(58,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"cehshi\" ],\n  \"ruleTypeId\" : [ \"57aa0388-6c0e-41ad-ab51-5aea60cde23a\" ],\n  \"score\" : [ \"-1\" ]\n}',0,NULL,'2019-04-18 19:27:21'),(59,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_accident_type','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-18 20:16:52'),(60,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_punish','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-18 20:34:05'),(61,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_rule_type','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-18 20:43:18'),(62,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1088','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:36:38'),(63,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1088','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:36:47'),(64,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1088','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:36:52'),(65,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1063','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:37:08'),(66,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1063','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:37:14'),(67,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1088','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:37:57'),(68,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1089','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:38:15'),(69,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1090','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:38:35'),(70,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1091','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:38:47'),(71,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1092','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:39:02'),(72,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1088','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:39:15'),(73,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1074','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:39:37'),(74,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1075','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:39:51'),(75,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1076','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:40:04'),(76,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1077','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:40:11'),(77,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1073','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:40:46'),(78,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1084','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:41:31'),(79,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1079','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:41:58'),(80,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1080','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:42:06'),(81,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1081','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:42:14'),(82,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1082','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:42:49'),(83,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1078','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:42:55'),(84,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1085','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:44:20'),(85,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1086','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:44:27'),(86,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1087','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:44:37'),(87,'菜单管理',3,'com.zhulin.web.controller.system.SysMenuController.remove()',1,'admin','研发部门','/system/menu/remove/1083','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 19:44:47'),(88,'事故类别管理',1,'com.zhulin.web.controller.bus.AccidentTypeController.addSave()',1,'admin','研发部门','/bus/accidentType/add','127.0.0.1','内网IP','{\n  \"accidentTypeName\" : [ \"测试类别12\" ]\n}',0,NULL,'2019-04-19 19:49:29'),(89,'事故类别管理',2,'com.zhulin.web.controller.bus.AccidentTypeController.editSave()',1,'admin','研发部门','/bus/accidentType/edit','127.0.0.1','内网IP','{\n  \"accidentTypeId\" : [ \"e3c1f1f7-e93d-4831-8c63-a548d0e743d3\" ],\n  \"accidentTypeName\" : [ \"测试类别2\" ]\n}',0,NULL,'2019-04-19 19:49:36'),(90,'事故类别管理',3,'com.zhulin.web.controller.bus.AccidentTypeController.remove()',1,'admin','研发部门','/bus/accidentType/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"200d45d3-85a3-4e7b-81b2-cdccc6a40edb\" ]\n}',0,NULL,'2019-04-19 19:49:41'),(91,'事故类别管理',2,'com.zhulin.web.controller.bus.AccidentTypeController.editSave()',1,'admin','研发部门','/bus/accidentType/edit','127.0.0.1','内网IP','{\n  \"accidentTypeId\" : [ \"a2489465-89d6-46c9-b518-a6e924594938\" ],\n  \"accidentTypeName\" : [ \"测试类别1\" ]\n}',0,NULL,'2019-04-19 19:49:46'),(92,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"惩罚措施222\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'month_length\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.PunishMapper.insertPunish-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_punish    ( punish_id,    punish_name,            create_user_id,    modify_user_id )           values ( ?,    ?,            ?,    ? )\n### Cause: java.sql.SQLException: Field \'month_length\' doesn\'t have a default value\n; Field \'month_length\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'month_length\' doesn\'t have a default value','2019-04-19 19:52:53'),(93,'惩罚管理',1,'com.zhulin.web.controller.bus.PunishController.addSave()',1,'admin','研发部门','/bus/punish/add','127.0.0.1','内网IP','{\n  \"punishName\" : [ \"测试处罚方法1\" ],\n  \"monthLength\" : [ \"3\" ]\n}',0,NULL,'2019-04-19 20:05:44'),(94,'惩罚管理',2,'com.zhulin.web.controller.bus.PunishController.editSave()',1,'admin','研发部门','/bus/punish/edit','127.0.0.1','内网IP','{\n  \"punishId\" : [ \"b20b6f2b-f6e9-4dad-9a4a-cff89e206649\" ],\n  \"punishName\" : [ \"测试处罚方法12\" ],\n  \"monthLength\" : [ \"322\" ]\n}',0,NULL,'2019-04-19 20:05:51'),(95,'惩罚管理',3,'com.zhulin.web.controller.bus.PunishController.remove()',1,'admin','研发部门','/bus/punish/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"b20b6f2b-f6e9-4dad-9a4a-cff89e206649\" ]\n}',0,NULL,'2019-04-19 20:05:53'),(96,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试时\" ]\n}',0,NULL,'2019-04-19 20:06:03'),(97,'规则类型管理',2,'com.zhulin.web.controller.bus.RuleTypeController.editSave()',1,'admin','研发部门','/bus/ruleType/edit','127.0.0.1','内网IP','{\n  \"ruleTypeId\" : [ \"fdfeb775-0c93-4746-8d56-3a1b165690e3\" ],\n  \"ruleTypeName\" : [ \"收拾收拾测试时\" ]\n}',0,NULL,'2019-04-19 20:06:07'),(98,'规则类型管理',3,'com.zhulin.web.controller.bus.RuleTypeController.remove()',1,'admin','研发部门','/bus/ruleType/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"fdfeb775-0c93-4746-8d56-3a1b165690e3\" ]\n}',0,NULL,'2019-04-19 20:06:10'),(99,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_accident','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 20:06:46'),(100,'事故管理',3,'com.zhulin.web.controller.bus.AccidentController.remove()',1,'admin','研发部门','/bus/accident/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"e1134be9-c079-4906-af78-81294af7f5c8\" ]\n}',0,NULL,'2019-04-19 20:33:14'),(101,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故1\" ],\n  \"accidentTypeId\" : [ \"a2489465-89d6-46c9-b518-a6e924594938\" ],\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ]\n}',0,NULL,'2019-04-19 20:36:58'),(102,'事故管理',1,'com.zhulin.web.controller.bus.AccidentController.addSave()',1,'admin','研发部门','/bus/accident/add','127.0.0.1','内网IP','{\n  \"accidentName\" : [ \"测试事故2\" ],\n  \"accidentTypeId\" : [ \"e3c1f1f7-e93d-4831-8c63-a548d0e743d3\" ],\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ]\n}',0,NULL,'2019-04-19 20:39:50'),(103,'事故管理',2,'com.zhulin.web.controller.bus.AccidentController.editSave()',1,'admin','研发部门','/bus/accident/edit','127.0.0.1','内网IP','{\n  \"accidentId\" : [ \"90eb7aca-ef26-4c7e-b638-2945e8a9a4c1\" ],\n  \"accidentName\" : [ \"测试事故22\" ],\n  \"accidentTypeId\" : [ \"a2489465-89d6-46c9-b518-a6e924594938\" ],\n  \"punishId\" : [ \"7517ab09-86ae-45d6-bae2-aabe5de4485f\" ]\n}',0,NULL,'2019-04-19 20:40:00'),(104,'事故管理',2,'com.zhulin.web.controller.bus.AccidentController.editSave()',1,'admin','研发部门','/bus/accident/edit','127.0.0.1','内网IP','{\n  \"accidentId\" : [ \"90eb7aca-ef26-4c7e-b638-2945e8a9a4c1\" ],\n  \"accidentName\" : [ \"测试事故22\" ],\n  \"accidentTypeId\" : [ \"e3c1f1f7-e93d-4831-8c63-a548d0e743d3\" ],\n  \"punishId\" : [ \"adbdebe0-1785-467d-8b1d-de61b150d26e\" ]\n}',0,NULL,'2019-04-19 20:40:06'),(105,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_rule','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 20:41:06'),(106,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"sadfa\" ],\n  \"ruleTypeId\" : [ \"57aa0388-6c0e-41ad-ab51-5aea60cde23a\" ],\n  \"score\" : [ \"1\" ]\n}',0,NULL,'2019-04-19 21:00:41'),(107,'规则管理',2,'com.zhulin.web.controller.bus.RuleController.editSave()',1,'admin','研发部门','/bus/rule/edit','127.0.0.1','内网IP','{\n  \"ruleId\" : [ \"5f6f00e9-3b52-4c2c-9d1e-e93f7e4f0c8e\" ],\n  \"ruleName\" : [ \"测试规则\" ],\n  \"ruleTypeId\" : [ \"34c4042b-3da0-46d0-9fec-bdb49d870e72\" ],\n  \"score\" : [ \"1\" ]\n}',0,NULL,'2019-04-19 21:00:52'),(108,'规则管理',3,'com.zhulin.web.controller.bus.RuleController.remove()',1,'admin','研发部门','/bus/rule/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"5f6f00e9-3b52-4c2c-9d1e-e93f7e4f0c8e\" ]\n}',0,NULL,'2019-04-19 21:00:59'),(109,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_accident_record','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-19 21:05:38'),(110,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"测试事故描述\" ],\n  \"remarks\" : [ \"测试事故描述\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:27:15'),(111,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"测试事故描述\" ],\n  \"remarks\" : [ \"测试事故描述\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:27:26'),(112,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"干活干活干活干活干活\" ],\n  \"remarks\" : [ \"风格复古风\" ],\n  \"startTime\" : [ \"2019-04-03\" ]\n}',1,'','2019-04-22 16:34:29'),(113,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"sa dfa w\" ],\n  \"remarks\" : [ \"打发的\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:36:25'),(114,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"sa dfa w\" ],\n  \"remarks\" : [ \"打发的\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:36:28'),(115,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"sa dfa w\" ],\n  \"remarks\" : [ \"打发的\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:37:19'),(116,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"a s d f\" ],\n  \"remarks\" : [ \"da s f\" ],\n  \"startTime\" : [ \"2019-04-01\" ]\n}',1,'','2019-04-22 16:42:52'),(117,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"sdfsa\" ],\n  \"remarks\" : [ \"adfasf\" ],\n  \"startTime\" : [ \"2019-04-02\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_user_id\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.AccidentRecordMapper.insertAccidentRecord-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_accident_record    ( accident_record_id,    dept_id,        punish_id,    start_time,    stop_time,    user_id,            accident_type_id,    accident_id,    accident_description,    remarks )           values ( ?,    ?,        ?,    ?,    ?,    ?,            ?,    ?,    ?,    ? )\n### Cause: java.sql.SQLException: Field \'create_user_id\' doesn\'t have a default value\n; Field \'create_user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_user_id\' doesn\'t have a default value','2019-04-22 16:43:40'),(118,'事故记录',1,'com.zhulin.web.controller.bus.AccidentRecordController.addSave()',1,'admin','研发部门','/bus/accidentRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"accidentDescription\" : [ \"sdfsa\" ],\n  \"remarks\" : [ \"adfasf\" ],\n  \"startTime\" : [ \"2019-04-02\" ]\n}',0,NULL,'2019-04-22 16:47:48'),(119,'事故记录',2,'com.zhulin.web.controller.bus.AccidentRecordController.editSave()',1,'admin','研发部门','/bus/accidentRecord/edit','127.0.0.1','内网IP','{\n  \"accidentRecordId\" : [ \"a51c763c-9bf6-4b7d-9392-17bfd70df8f6\" ],\n  \"userId\" : [ \"1\" ],\n  \"accidentId\" : [ \"054efc35-244a-4953-b08c-36d477e57392\" ],\n  \"startTime\" : [ \"2019-04-02\" ],\n  \"accidentDescription\" : [ \"sdfsa\" ],\n  \"remarks\" : [ \"adfasf\" ]\n}',0,NULL,'2019-04-22 16:55:09'),(120,'事故记录',2,'com.zhulin.web.controller.bus.AccidentRecordController.editSave()',1,'admin','研发部门','/bus/accidentRecord/edit','127.0.0.1','内网IP','{\n  \"accidentRecordId\" : [ \"a51c763c-9bf6-4b7d-9392-17bfd70df8f6\" ],\n  \"userId\" : [ \"2\" ],\n  \"accidentId\" : [ \"90eb7aca-ef26-4c7e-b638-2945e8a9a4c1\" ],\n  \"startTime\" : [ \"2019-04-04\" ],\n  \"accidentDescription\" : [ \"阿股份的\" ],\n  \"remarks\" : [ \"阿道夫阿道夫\" ]\n}',0,NULL,'2019-04-22 16:56:16'),(121,'事故记录',3,'com.zhulin.web.controller.bus.AccidentRecordController.remove()',1,'admin','研发部门','/bus/accidentRecord/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"a51c763c-9bf6-4b7d-9392-17bfd70df8f6\" ]\n}',0,NULL,'2019-04-22 16:56:24'),(122,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_score_record','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-22 20:32:30'),(123,'代码生成',8,'com.zhulin.web.controller.tool.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/jx_score_record','127.0.0.1','内网IP','{ }',0,NULL,'2019-04-22 20:33:39'),(124,'用户管理',1,'com.zhulin.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"103\" ],\n  \"loginName\" : [ \"cehsi\" ],\n  \"userName\" : [ \"admin\" ],\n  \"password\" : [ \"admin123\" ],\n  \"email\" : [ \"873910663@qq.com\" ],\n  \"phonenumber\" : [ \"15524897654\" ],\n  \"sex\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"\" ],\n  \"po',0,NULL,'2019-04-23 20:40:44'),(125,'用户管理',2,'com.zhulin.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\n  \"userId\" : [ \"3\" ],\n  \"deptId\" : [ \"103\" ],\n  \"userName\" : [ \"admin\" ],\n  \"email\" : [ \"873910663@qq.com\" ],\n  \"phonenumber\" : [ \"15524897654\" ],\n  \"sex\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"\" ],\n  \"postIds\" : [ \"\" ]\n}',0,NULL,'2019-04-23 20:40:53'),(126,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试规则类型1\" ]\n}',0,NULL,'2019-04-23 20:54:17'),(127,'规则类型管理',1,'com.zhulin.web.controller.bus.RuleTypeController.addSave()',1,'admin','研发部门','/bus/ruleType/add','127.0.0.1','内网IP','{\n  \"ruleTypeName\" : [ \"测试规则类型2\" ]\n}',0,NULL,'2019-04-23 20:54:28'),(128,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"测试规则1\" ],\n  \"ruleTypeId\" : [ \"d9af6218-09a8-41df-954d-e9c7e25762f5\" ],\n  \"score\" : [ \"1\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'idjx_rule\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.RuleMapper.insertRule-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_rule    ( rule_id,    rule_name,    rule_type_id,    score,            modify_user_id,        create_user_id )           values ( ?,    ?,    ?,    ?,            ?,        ? )\n### Cause: java.sql.SQLException: Field \'idjx_rule\' doesn\'t have a default value\n; Field \'idjx_rule\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'idjx_rule\' doesn\'t have a default value','2019-04-23 20:54:40'),(129,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"测试规则1\" ],\n  \"ruleTypeId\" : [ \"d9af6218-09a8-41df-954d-e9c7e25762f5\" ],\n  \"score\" : [ \"1\" ]\n}',0,NULL,'2019-04-23 20:56:28'),(130,'规则管理',1,'com.zhulin.web.controller.bus.RuleController.addSave()',1,'admin','研发部门','/bus/rule/add','127.0.0.1','内网IP','{\n  \"ruleName\" : [ \"测试规则2\" ],\n  \"ruleTypeId\" : [ \"8dc7c6da-2127-4fae-b6c4-2cb5001f2fd7\" ],\n  \"score\" : [ \"-1\" ]\n}',0,NULL,'2019-04-23 20:56:43'),(131,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"2\" ],\n  \"ruleId\" : [ \"75ed924d-5174-49f9-8f09-041b7f486bd7\" ]\n}',1,'\n### Error updating database.  Cause: java.sql.SQLException: Field \'rule_type_id\' doesn\'t have a default value\n### The error may involve com.zhulin.bus.mapper.ScoreRecordMapper.insertScoreRecord-Inline\n### The error occurred while setting parameters\n### SQL: insert into jx_score_record    ( score_record_id,    user_id,        rule_id,    operator_user_name,    modify_user_id )           values ( ?,    ?,        ?,    ?,    ? )\n### Cause: java.sql.SQLException: Field \'rule_type_id\' doesn\'t have a default value\n; Field \'rule_type_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'rule_type_id\' doesn\'t have a default value','2019-04-23 20:57:04'),(132,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:02:49'),(133,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:03:21'),(134,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:03:47'),(135,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:04:38'),(136,'规则记录管理',3,'com.zhulin.web.controller.bus.ScoreRecordController.remove()',1,'admin','研发部门','/bus/scoreRecord/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"0f012344-d17e-448d-9ee5-be8203ea5f96\" ]\n}',0,NULL,'2019-04-23 21:05:07'),(137,'规则记录管理',3,'com.zhulin.web.controller.bus.ScoreRecordController.remove()',1,'admin','研发部门','/bus/scoreRecord/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"28437e03-adcf-49dd-a262-ccc0da692e71\" ]\n}',0,NULL,'2019-04-23 21:05:09'),(138,'规则记录管理',3,'com.zhulin.web.controller.bus.ScoreRecordController.remove()',1,'admin','研发部门','/bus/scoreRecord/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"8ce72022-daa2-4a60-a433-30e0b0d8bc10\" ]\n}',0,NULL,'2019-04-23 21:05:10'),(139,'规则记录管理',3,'com.zhulin.web.controller.bus.ScoreRecordController.remove()',1,'admin','研发部门','/bus/scoreRecord/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"d953c037-2cc6-4a77-baff-74f082979655\" ]\n}',0,NULL,'2019-04-23 21:05:12'),(140,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:05:47'),(141,'规则记录管理',1,'com.zhulin.web.controller.bus.ScoreRecordController.addSave()',1,'admin','研发部门','/bus/scoreRecord/add','127.0.0.1','内网IP','{\n  \"userId\" : [ \"1\" ],\n  \"ruleId\" : [ \"55faea8c-f0e7-4fb5-98e0-622a2ee44956\" ]\n}',0,NULL,'2019-04-23 21:06:10'),(142,'规则记录管理',2,'com.zhulin.web.controller.bus.ScoreRecordController.editSave()',1,'admin','研发部门','/bus/scoreRecord/edit','127.0.0.1','内网IP','{\n  \"scoreRecordId\" : [ \"43d6bdbe-53d8-446b-a248-67193dc0277c\" ],\n  \"userId\" : [ \"3\" ],\n  \"ruleId\" : [ \"75ed924d-5174-49f9-8f09-041b7f486bd7\" ]\n}',0,NULL,'2019-04-23 21:08:14');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `dept_id` int(11) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ui_config`
--

DROP TABLE IF EXISTS `sys_ui_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ui_config` (
  `ui_config_id` int(11) NOT NULL,
  `login_image` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '登录页面的图片',
  `system_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '系统名',
  `ui_title_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '系统页签title值',
  `favicon_ico` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ico文件',
  `create_by` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '创建用户Id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '修改用户Id',
  `update_time` datetime NOT NULL COMMENT '修改用户时间',
  `littleTitle` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '导航栏折叠后名称',
  PRIMARY KEY (`ui_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统ui配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ui_config`
--

LOCK TABLES `sys_ui_config` WRITE;
/*!40000 ALTER TABLE `sys_ui_config` DISABLE KEYS */;
INSERT INTO `sys_ui_config` VALUES (1,'loginImage.png','测试1','测试1','favicon.ico','admin','2019-02-15 10:33:55','admin','2019-02-15 10:33:55','测试1');
/*!40000 ALTER TABLE `sys_ui_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '备注',
  `user_score` int(11) NOT NULL DEFAULT '100' COMMENT '用户分数',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依1','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2019-03-30 10:42:52','admin','2018-03-16 11:33:00','ry','2019-04-23 21:06:10','管理员',98),(2,105,'ry','若依2','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2019-04-23 20:57:04','测试员',100),(3,103,'cehsi','admin','00','873910663@qq.com','15524897654','0','','c963df429947bcc0d93ea1c667d05897','c700c2','0','0','',NULL,'admin','2019-04-23 20:40:44','admin','2019-04-23 20:40:53','',100);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('3b5a097a-8e72-4587-a0b6-eb99c9ebf242','admin','研发部门','127.0.0.1','内网IP','Chrome','Mac OS X','on_line','2019-04-23 20:32:39','2019-04-23 21:07:59',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `post_id` int(11) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(1,2),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 21:18:00
