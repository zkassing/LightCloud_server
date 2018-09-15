-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: db_lc
-- ------------------------------------------------------
-- Server version	8.0.12

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

--
-- Table structure for table `t_items`
--

DROP TABLE IF EXISTS `t_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `detail` text,
  `title` varchar(30) DEFAULT NULL,
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_items_id_uindex` (`id`),
  KEY `t_items_t_users_id_fk` (`userid`),
  CONSTRAINT `t_items_t_users_id_fk` FOREIGN KEY (`userid`) REFERENCES `t_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_items`
--

LOCK TABLES `t_items` WRITE;
/*!40000 ALTER TABLE `t_items` DISABLE KEYS */;
INSERT INTO `t_items` VALUES (1,1,'http://yuedu.fm/static/file/large/3af6d0de9e01e72480b1dc511534500a','鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑杩樻槸涓?,'xxx鍚庡彴绠＄悊绯荤粺xxx鍚庡彴绠＄悊绯荤粺xxx鍚庡彴绠＄悊绯荤粺','2018-09-15 09:07:45','##鍒涘缓canvas鏍囩\r\n棣栧厛鎴戜滑闇€瑕佹湁涓€涓敾甯冿紙Canvas锛塡r\n><canvas id=\"canvas\" width=\"150\" height=\"150\"></canvas>\r\n\r\n##娓叉煋涓婁笅鏂嘰r\n鍒涘缓鐢诲竷涔嬪悗锛屾€庝箞浣跨敤浜嗭紝闇€瑕佸湪javascript涓幏鍙栧埌鐢诲竷骞舵覆鏌撲笂涓嬫枃\r\n>var canvas = document.getElementById(\'canvas\');\r\nvar ctx = canvas.getContext(\'2d\');\r\n\r\n浠ｇ爜鐨勭涓€琛岄€氳繃浣跨敤 document.getElementById()聽鏂规硶鏉ヤ负聽<canvas>聽鍏冪礌寰楀埌DOM瀵硅薄銆備竴鏃︽湁浜嗗厓绱犲璞★紝浣犲彲浠ラ€氳繃浣跨敤瀹冪殑getContext() 鏂规硶鏉ヨ闂粯鐢讳笂涓嬫枃銆俓r\n\r\n##濡備綍妫€鏌ユ敮鎸佹€r\n鍒涘缓canvas鏍囩鏃跺彲浠ュ湪鏍囩鍐呭啓涓婁笉鏀寔鐨勪俊鎭紝濡傝娴忚鍣ㄤ笉鏀寔canvas\r\n><canvas id=\"canvas\" width=\"150\" height=\"150\">璇ユ祻瑙堝櫒涓嶆敮鎸乧anvas</canvas>\r\n\r\n鍚屾椂涔熷彲浠ラ€氳繃妫€娴媑etContext()鏂规硶鏄惁瀛樺湪鏉ユ祴璇曟槸鍚︽敮鎸佺紪绋媆r\n```javascript\r\nvar canvas = document.getElementById(\'tutorial\');\r\nif (canvas.getContext){\r\n聽聽var ctx = canvas.getContext(\'2d\');\r\n  聽聽// drawing code here\r\n} else {\r\n  聽聽// canvas-unsupported code here\r\n}\r\n```\r\n```HTML\r\n##鏉ョ湅涓€涓嬫渶鍩烘湰鐨勬ā鏉縗r\n\r\n<html>\r\n  <head>\r\n    聽聽<title>Canvas tutorial</title>\r\n    聽聽<style type=\"text/css\">\r\n      聽聽聽聽canvas { border: 1px solid black; }\r\n    聽聽</style>\r\n  </head>\r\n  <body onload=\"draw();\">\r\n    聽聽<canvas id=\"tutorial\" width=\"150\" height=\"150\"></canvas>\r\n<script type=\"text/javascript\">\r\n      聽聽function draw(){\r\n       聽聽聽聽 var canvas = document.getElementById(\'tutorial\');\r\n聽聽聽聽if (canvas.getContext){\r\n          聽聽聽聽聽聽聽聽var ctx = canvas.getContext(\'2d\');\r\n       聽聽聽聽 }\r\n     聽聽 }\r\n    </script>\r\n  </body>\r\n</html>\r\n```'),(2,1,'http://yuedu.fm/static/file/large/3af6d0de9e01e72480b1dc511534500a','鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑鏈懆澶т綔涓嶅浣嗘槸杩樻槸涓嶉敊鐨勬湰鍛ㄥぇ浣滀笉澶氫絾鏄繕鏄笉閿欑殑杩樻槸涓?,'xxx鍚庡彴绠＄悊绯荤粺xxx鍚庡彴绠＄悊绯荤粺xxx鍚庡彴绠＄悊绯荤粺','2018-09-15 14:40:07','##Canvas鍙互鐢诲嚭鏉ユ紓浜殑鐭╁舰\r\n锛戠粯鍒朵竴涓～鍏呯殑鐭╁舰\r\n>fillRect(x,y,width,height)\r\n\r\n锛掔粯鍒朵竴涓煩褰㈢殑杈规\r\n>strokeRect(x,y,width,height)\r\n\r\n锛撴竻闄ゆ寚瀹氱煩褰㈠尯鍩燂紝璁╂竻闄ら儴鍒嗗畬鍏ㄩ€忔槑\r\n>clearRect(x,y,width,height)\r\n\r\n![渚嬪瓙](http://upload-images.jianshu.io/upload_images/1636649-0e00c9fd1ad96525.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)');
/*!40000 ALTER TABLE `t_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '浜戝拰鏁版嵁',
  `avatar` varchar(255) DEFAULT 'http://www.yunhe.cn/content/themes/yunhe/resource/images/global/venice-titleimg.jpg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_users_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (1,'浜戝拰鏁版嵁','http://www.yunhe.cn/content/themes/yunhe/resource/images/global/venice-titleimg.jpg');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-15 23:08:14
