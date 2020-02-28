-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: nona
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS nona;
CREATE DATABASE nona;
USE nona;

--
-- Table structure for table `adjudication`
--

DROP TABLE IF EXISTS `adjudication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adjudication` (
  `id` varchar(255) NOT NULL,
  `matcher` json DEFAULT NULL,
  `outcome` json DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ADJU_TYPE` (`type`),
  KEY `IDX_ADJU_PRIORITY` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjudication`
--

LOCK TABLES `adjudication` WRITE;
/*!40000 ALTER TABLE `adjudication` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjudication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `application` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `civic_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `suite` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `location_unit_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(60) DEFAULT NULL,
  `citizenship` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_APP_USERID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_aud`
--

DROP TABLE IF EXISTS `application_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `application_aud` (
  `id` varchar(255) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `civic_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `suite` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `location_unit_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(60) DEFAULT NULL,
  `citizenship` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`rev`),
  KEY `FKp908xu879qljr5nc0eq2pc7na` (`rev`),
  CONSTRAINT `FKp908xu879qljr5nc0eq2pc7na` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_aud`
--

LOCK TABLES `application_aud` WRITE;
/*!40000 ALTER TABLE `application_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `email_log` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `error_message` longtext,
  `mail_from` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `reason` longtext,
  `subject` varchar(255) DEFAULT NULL,
  `mail_to` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EMAILLOG_USERID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
INSERT INTO `email_log` VALUES ('3GDSKLI5IZFNMTFCPQ22FJWU6M','2019-09-05 21:25:34.900467','2019-09-05 21:25:34.900467',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click <a href=\"http://localhost:3000/auth/cHVtaXNha2VAZ21haWwuY29tfEZPVUxCT0tITjVDTDRTSkZIVDJYMkZHUFpXfDE1Njc3MTkwMzE4MjU\">this</a> to login before it expires in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','pumisake@gmail.com','EMBEDDEDHTML','SEXTHX3AARD7QQVFDYJPD423AY'),('43BHEUSS5ZDEYQPTAYFSANDGRU','2019-09-03 22:47:30.805150','2019-09-03 22:47:30.805150',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfE9RWU9NUVc3NDVCRkFRNUhFSTVGR1pDV1ZZfDE1Njc1NTExNDc5MTM to login before it expire in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('4KNUWAQKPRHD6VS2KFTUTJMCOG','2019-09-04 18:04:20.909920','2019-09-04 18:04:20.909920',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfFFLNFFJWUlDSkpBVEtXREJWUVBRWFUzN1M0fDE1Njc2MjA1NTgzOTU to login before it expire in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('4MQBMFSMINHSMRT3HJR5TJEDHQ','2019-09-03 22:44:16.476288','2019-09-03 22:44:16.476288',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfFBOWUJRUVA2N1pBSDZVRVVHQlZMT0JQV1U2fDE1Njc1NTA5NTMwMjk to login before it expire in 300 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('5YCAH5LV4FGUCX5NM4MMM4UI6E','2019-09-03 22:36:02.555340','2019-09-03 22:36:02.555340',NULL,'Error','org.apache.commons.mail.EmailException: Sending the email to the following server failed : smtp.gmail.com:587\n	at org.apache.commons.mail.Email.sendMimeMessage(Email.java:1469)\n	at org.apache.commons.mail.Email.send(Email.java:1496)\n	at com.mobetize.fsf.nona.service.EmailServiceImpl.sendHtmlEmail(EmailServiceImpl.java:293)\n	at com.mobetize.fsf.nona.service.EmailServiceImpl.listenerSendEmail(EmailServiceImpl.java:267)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.base/java.lang.reflect.Method.invoke(Method.java:566)\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.interceptor.AsyncExecutionInterceptor.lambda$invoke$0(AsyncExecutionInterceptor.java:115)\n	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)\n	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)\n	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)\n	at java.base/java.lang.Thread.run(Thread.java:834)\nCaused by: com.sun.mail.smtp.SMTPSendFailedException: 530 5.7.0 Must issue a STARTTLS command first. w207sm20460985pff.93 - gsmtp\n\n	at com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:1388)\n	at com.sun.mail.smtp.SMTPTransport.mailFrom(SMTPTransport.java:959)\n	at com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:583)\n	at javax.mail.Transport.send0(Transport.java:169)\n	at javax.mail.Transport.send(Transport.java:98)\n	at org.apache.commons.mail.Email.sendMimeMessage(Email.java:1459)\n	... 15 more\n','donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfDZCT01JUUlRWkZHRU1TT1ZZUjNWVlpMS1NTfDE1Njc1NTA0NjE0MzY to login before it expire in 300 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('AYCJFIQO6ZDX4R4KNESVQO5BYI','2019-09-25 21:42:57.820834','2019-09-25 21:42:57.820834',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click <a href=\"http://localhost:3000/auth/cHVtaXNha2VAZ21haWwuY29tfEROVTQyNzRMM05DRk1XSVdZWUhIQzcyNjZDfDE1Njk0NDgwNzQzODI\">this</a> to login before it expires in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','pumisake@gmail.com','EMBEDDEDHTML','SEXTHX3AARD7QQVFDYJPD423AY'),('MXWMCCBAIRFZOWERN2A4UM6MVO','2019-09-04 18:42:21.223362','2019-09-04 18:42:21.223362',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click <a href=\"cHVtaXNha2VAZ21haWwuY29tfEVVVlFOVkhSTEJHWVlVRUxTNVE1MkdaWUxBfDE1Njc2MjI4Mzc3OTI\">this</a> to login before it expires in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','pumisake@gmail.com','EMBEDDEDHTML','SEXTHX3AARD7QQVFDYJPD423AY'),('PTKFL36M5FFL2SAGWPZFRR3JPS','2019-09-04 18:04:19.359146','2019-09-04 18:04:19.359146',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfFNBNkNQMjZJUkpFNk9XUTJXSVczVlM1UkhXfDE1Njc2MjA1NTY5NzM to login before it expire in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('QRV2HBECPFCMOTJ77OMSQ45T3C','2019-09-04 18:46:37.636507','2019-09-04 18:46:37.636507',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click <a href=\"http://localhost:3000/auth/Y3NuYW1jaGFpc2t1bEBtb2JldGl6ZS5jb218UEM3TkIyUFZHVkNHU1E0NEtRTjJTWFFWTk18MTU2NzYyMzA5NDgzNw\">this</a> to login before it expires in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','csnamchaiskul@mobetize.com','EMBEDDEDHTML','4XYW3POCIJGLETRPROTL6XDYVE'),('RFDOL6VZ2NBLIXE5KQEZR4QFYE','2019-09-04 18:04:17.392479','2019-09-04 18:04:17.392479',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfFpWRkZWREFaWE5BUUNWUkEzNEdZWFRITUFPfDE1Njc2MjA1NTQ3NzQ to login before it expire in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',NULL,'pumisake@gmail.com','HTML','SEXTHX3AARD7QQVFDYJPD423AY'),('RGURNZGAMBDD4VPKXG7N476QAM','2019-09-04 18:44:59.425775','2019-09-04 18:44:59.425775',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click <a href=\"http://localhost:3000/auth/cHVtaXNha2VAZ21haWwuY29tfFFBV1dJVlBEWkJGQUVSQU5BV1c2VERWRUxVfDE1Njc2MjI5OTY1NjQ\">this</a> to login before it expires in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','pumisake@gmail.com','EMBEDDEDHTML','SEXTHX3AARD7QQVFDYJPD423AY'),('TFDQWNZTNJBEKQ43NF7UH2FNTK','2019-09-04 18:08:03.253234','2019-09-04 18:08:03.253234',NULL,'Success',NULL,'donotreply@mobetize.com','<html>\n<body>\nPlease click cHVtaXNha2VAZ21haWwuY29tfEhaTUJTQkFUMlJEWTZRQkhYTEhUM0dKTUJTfDE1Njc2MjA3ODAwNDU to login before it expire in 5 minutes.\n</body>\n</html>','com.mobetize.fsf.nona.service.AccountServiceImpl','Account:Email Authentication',' Email Auth','pumisake@gmail.com','EMBEDDEDHTML','SEXTHX3AARD7QQVFDYJPD423AY');
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equifax_log`
--

DROP TABLE IF EXISTS `equifax_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equifax_log` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `encrypted` bit(1) DEFAULT NULL,
  `request_parameter` json DEFAULT NULL,
  `request_status` varchar(45) DEFAULT NULL,
  `response_message` longtext,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EQUIFAXLOG_USERID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equifax_log`
--

LOCK TABLES `equifax_log` WRITE;
/*!40000 ALTER TABLE `equifax_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equifax_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_asset`
--

DROP TABLE IF EXISTS `file_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `file_asset` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `asset_status` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) DEFAULT NULL,
  `owner_ref` varchar(512) DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_usage_code` varchar(255) DEFAULT NULL,
  `path_location` varchar(1024) DEFAULT NULL,
  `usage_code` varchar(255) DEFAULT NULL,
  `encrypted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FILEASSET_OWNERID` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_asset`
--

LOCK TABLES `file_asset` WRITE;
/*!40000 ALTER TABLE `file_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_unit`
--

DROP TABLE IF EXISTS `location_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location_unit` (
  `id` varchar(255) NOT NULL,
  `eligible` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other` bit(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_unit`
--

LOCK TABLES `location_unit` WRITE;
/*!40000 ALTER TABLE `location_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revinfo`
--

DROP TABLE IF EXISTS `revinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `revinfo` (
  `rev` int(11) NOT NULL AUTO_INCREMENT,
  `revtstmp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revinfo`
--

LOCK TABLES `revinfo` WRITE;
/*!40000 ALTER TABLE `revinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `revinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_asset`
--

DROP TABLE IF EXISTS `template_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `template_asset` (
  `template_code` varchar(100) NOT NULL,
  `template` longtext,
  PRIMARY KEY (`template_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_asset`
--

LOCK TABLES `template_asset` WRITE;
/*!40000 ALTER TABLE `template_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(60) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_expired_date` datetime(6) DEFAULT NULL,
  `roles` json DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_USER_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('36E7PFD2GNFZAQIXI46HD6EEBG','2020-02-25 21:23:44.598377','2020-02-25 21:23:44.886047','A','pumisake3@gmail.com',_binary '\0',NULL,'$2a$10$V4NQVUmXG89X7lXsWFTxr.WMGXVcnUkhCEo3VSChRSmHcz9Y7WyM6',NULL,'[\"ROLE_CRMUSER\"]',NULL),('4XYW3POCIJGLETRPROTL6XDYVE','2019-09-04 18:46:32.390580','2020-02-25 22:09:21.266512','A','csnamchaiskul@mobetize.com',_binary '\0',NULL,'$2a$10$wURfA5YI4QbTHEZrGnsZ0OUVhWNb/HEuO1HwCqMARpFyBt4yR7bEa',NULL,'[\"ROLE_USER\", \"ROLE_CRMADMIN\"]',NULL),('6G6GF264MZHBWQ5Y67YKASFEGU','2019-09-30 19:21:03.612100','2019-09-30 19:21:03.861561','A','pumisake@yahoo.com',_binary '\0',NULL,'$2a$10$ZRlwQu2yZ.VSfwEOWW5TgeIwHCHCNaP914NQ/B14/yOp40Vhyn0eW',NULL,'[\"ROLE_CRMUSER\"]',NULL),('ALNEIWWN6JCPSUZOT6NSCVQDZU','2019-09-03 22:01:46.959247','2019-09-03 22:16:56.720034','A','pumisake@gmail.com2',_binary '\0',NULL,'$2a$10$7Ed3a0CpE7So/zGqjn3wJOzBIXwRhc1zalKF6lcbIPig4mkxhb3eO',NULL,'[\"ROLE_USER\", \"ROLE_CRMUSER\"]',NULL),('BW33UN2O6NEYOWJKTGSW4PQJCO','2019-09-25 21:56:29.860789','2019-09-25 21:56:30.081353','A','pumisake+test1@gmail.com',_binary '\0',NULL,'$2a$10$yh3AVTWDFwxmjvBWG0vlHeFvzDELkm85UXMlz/eFPA3aiEio26HD6','2019-09-25 22:01:29.953387','[\"ROLE_USER\"]',NULL),('IFDSU7JLUND3CUQTBP76BIYN6E','2019-09-03 22:17:06.327045','2019-09-03 22:18:07.116404','A','pumisake@gmail.com3',_binary '\0',NULL,'$2a$10$rPPPLE2Wg4gnFnDjKokp7.rtBgQHRQpV2Wy6rbijquDlI93RsnZui','2019-09-03 22:23:06.987611','[\"ROLE_USER\"]',NULL),('PCC6GFYVCZAB6QFWZQJ4TKQ7PE','2019-09-30 19:25:32.363280','2019-09-30 19:25:32.591694','A','pumisake+test13@gmail.com',_binary '\0',NULL,'$2a$10$RopUgYMR/6XAgRi81PqTMuy93RXmcp3Ypq540SoCQHbVS4HBGF.3i',NULL,'[\"ROLE_CRMUSER\"]',NULL),('SEXTHX3AARD7QQVFDYJPD423AY','2019-09-03 21:44:31.365878','2019-09-25 21:42:54.578733','A','pumisake@gmail.com',_binary '\0',NULL,'$2a$10$vupB4kkwz0O64oI0odgC5ewpCc6zaMj8CRh4kDUgpmkRI7NnhXI9S','2019-09-25 21:47:54.382024','[\"ROLE_USER\"]',NULL),('SY42NAQKQRH7GRAH3COTVW3GXE','2019-09-30 19:26:32.669176','2019-09-30 19:26:32.885252','A','pumisake+test14@gmail.com',_binary '\0',NULL,'$2a$10$lVs5LLAlwiECinbWMRbJN.e/77GgXbnIJyU2X4a9XVq5Oh7BgZsaS',NULL,'[\"ROLE_CRMUSER\"]',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 10:01:38
