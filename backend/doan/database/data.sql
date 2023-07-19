Use sql6633081;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doan
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenityhotel`
--

DROP TABLE IF EXISTS `amenityhotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `amenityhotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=340 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenityhotel`
--

LOCK TABLES `amenityhotel` WRITE;
/*!40000 ALTER TABLE `amenityhotel` DISABLE KEYS */;
INSERT INTO `amenityhotel` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Truyền hình cáp','Tiện nghi phòng',1),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Bàn làm việc','Tiện nghi phòng',1),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Máy sấy tóc','Tiện nghi phòng',1),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Két an toàn trong phòng','Tiện nghi phòng',1),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Phòng tắm vòi sen','Tiện nghi phòng',1),(6,'2023-06-12 12:00:00','2023-06-12 12:00:00','Minibar','Tiện nghi phòng',1),(7,'2023-06-12 13:00:00','2023-06-12 13:00:00','TV','Tiện nghi phòng',1),(8,'2023-06-12 14:00:00','2023-06-12 14:00:00','Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(9,'2023-06-12 15:00:00','2023-06-12 15:00:00','Thẩm mỹ viện','Các tiện ích lân cận',1),(10,'2023-06-12 16:00:00','2023-06-12 16:00:00','Cửa hàng thực phẩm','Các tiện ích lân cận',1),(11,'2023-06-12 12:00:00','2023-06-12 12:00:00','Hiệu làm tóc','Các tiện ích lân cận',1),(12,'2023-06-12 13:00:00','2023-06-12 13:00:00','Giặt ủi','Các tiện ích lân cận',1),(13,'2023-06-12 14:00:00','2023-06-12 14:00:00','Cửa hàng','Các tiện ích lân cận',1),(14,'2023-06-12 15:00:00','2023-06-12 15:00:00','Siêu thị','Các tiện ích lân cận',1),(15,'2023-06-12 16:00:00','2023-06-12 16:00:00','Cà phê/trà tại sảnh','Tiện nghi công cộng',1),(16,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(17,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(18,NULL,NULL,'Dịch vụ dọn phòng','Tiện nghi công cộng',1),(19,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(20,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(21,NULL,NULL,'Dịch vụ thu đổi ngoại tệ','Dịch vụ khách sạn',1),(22,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(23,NULL,NULL,'Bảo vệ 24 giờ','Dịch vụ khách sạn',1),(24,NULL,NULL,'Dịch vụ trả phòng muộn','Dịch vụ khách sạn',1),(25,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(26,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(27,NULL,NULL,'Bữa sáng với thực đơn gọi món','Ẩm thực',1),(28,NULL,NULL,'Bữa sáng','Ẩm thực',1),(29,NULL,NULL,'Bữa sáng món tự chọn','Ẩm thực',1),(30,NULL,NULL,'Bữa sáng (thu phí)','Ẩm thực',1),(31,NULL,NULL,'Tiệc liên hoan','Ẩm thực',1),(32,NULL,NULL,'Đưa đón trong khu vực (thu phí)','Vận chuyển',1),(33,NULL,NULL,'Dịch vụ cho thuê xe đạp','Vận chuyển',1),(34,NULL,NULL,'Giữ xe đạp','Vận chuyển',1),(35,NULL,NULL,'Cho thuê xe hơi','Vận chuyển',1),(36,NULL,NULL,'Máy lạnh','Tiện nghi chung',1),(37,NULL,NULL,'Phòng gia đình','Tiện nghi chung',1),(38,NULL,NULL,'Phòng không hút thuốc','Tiện nghi chung',1),(39,NULL,NULL,'Sân thượng/sân hiên','Tiện nghi chung',1),(40,NULL,NULL,'Dịch vụ văn phòng','Tiện nghi văn phòng',1),(41,NULL,NULL,'Các tiện nghi văn phòng','Tiện nghi văn phòng',1),(42,NULL,NULL,'Máy photocopy','Tiện nghi văn phòng',1),(43,NULL,NULL,'Trung tâm dịch vụ hành chánh/văn phòng','Tiện nghi văn phòng',1),(44,NULL,NULL,'Đưa đón sân bay (thu phí)','Đưa đón',1),(45,NULL,NULL,'Đón khách tại ga tàu','Đưa đón',1),(46,NULL,NULL,'Dịch vụ giữ trẻ (thu phí)','Trẻ em và Thú cưng',1),(47,NULL,NULL,'Wifi (miễn phí)','Kết nối mạng',1),(48,NULL,NULL,'Bãi đậu xe','Tiện nghi công cộng',1),(49,NULL,NULL,'Cà phê/trà tại sảnh','Tiện nghi công cộng',1),(50,NULL,NULL,'Nhận phòng sớm','Tiện nghi công cộng',1),(51,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(52,NULL,NULL,'Dịch vụ phòng 24 giờ','Tiện nghi công cộng',1),(53,NULL,NULL,'Trả phòng muộn','Tiện nghi công cộng',1),(54,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(55,NULL,NULL,'Nhà hàng phục vụ bữa sáng','Tiện nghi công cộng',1),(56,NULL,NULL,'Dịch vụ dọn phòng','Tiện nghi công cộng',1),(57,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(58,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(59,NULL,NULL,'Bồn tắm','Tiện nghi phòng',1),(60,NULL,NULL,'Truyền hình cáp','Tiện nghi phòng',1),(61,NULL,NULL,'Bàn làm việc','Tiện nghi phòng',1),(62,NULL,NULL,'Máy sấy tóc','Tiện nghi phòng',1),(63,NULL,NULL,'Minibar','Tiện nghi phòng',1),(64,NULL,NULL,'Phòng tắm vòi sen','Tiện nghi phòng',1),(65,NULL,NULL,'TV','Tiện nghi phòng',1),(94,NULL,NULL,'Dịch vụ concierge/hỗ trợ khách','Dịch vụ khách sạn',1),(93,NULL,NULL,'Thức uống chào mừng miễn phí','Dịch vụ khách sạn',1),(69,NULL,NULL,'Hội trường đa chức năng','Tiện nghi chung',1),(70,NULL,NULL,'Tiệc chiêu đãi','Tiện nghi chung',1),(71,NULL,NULL,'Phòng gia đình','Tiện nghi chung',1),(72,NULL,NULL,'Phòng không hút thuốc','Tiện nghi chung',1),(73,NULL,NULL,'Khu vực hút thuốc','Tiện nghi chung',1),(74,NULL,NULL,'Dịch vụ concierge/hỗ trợ khách','Dịch vụ khách sạn',1),(75,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(76,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(77,NULL,NULL,'Dịch vụ lưu trữ/bảo quản hành lý','Dịch vụ khách sạn',1),(78,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(79,NULL,NULL,'Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(80,NULL,NULL,'Thẩm mỹ viện','Các tiện ích lân cận',1),(81,NULL,NULL,'Hiệu làm tóc','Các tiện ích lân cận',1),(82,NULL,NULL,'Cửa hàng','Các tiện ích lân cận',1),(83,NULL,NULL,'Nhà hàng có máy lạnh','Ẩm thực',1),(84,NULL,NULL,'Quầy bar','Ẩm thực',1),(85,NULL,NULL,'Bữa sáng','Ẩm thực',1),(86,NULL,NULL,'Câu lạc bộ sức khoẻ','Các hoạt động',1),(87,NULL,NULL,'Mát-xa','Các hoạt động',1),(88,NULL,NULL,'Dịch vụ spa','Các hoạt động',1),(89,NULL,NULL,'Dịch vụ văn phòng','Tiện nghi văn phòng',1),(90,NULL,NULL,'Dịch vụ văn phòng','Tiện nghi văn phòng',1),(91,NULL,NULL,'Điểm truy cập Internet','Kết nối mạng',1),(92,NULL,NULL,'Đưa đón sân bay (thu phí)','Đưa đón',1),(95,NULL,NULL,'EARLY_CHECK_IN','Dịch vụ khách sạn',1),(96,NULL,NULL,'Dịch vụ nhận phòng cấp tốc','Dịch vụ khách sạn',1),(97,NULL,NULL,'Dịch vụ trả phòng cấp tốc','Dịch vụ khách sạn',1),(98,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(99,NULL,NULL,'Bảo vệ 24 giờ','Dịch vụ khách sạn',1),(100,NULL,NULL,'Dịch vụ trả phòng muộn','Dịch vụ khách sạn',1),(101,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(102,NULL,NULL,'Dịch vụ lưu trữ/bảo quản hành lý','Dịch vụ khách sạn',1),(103,NULL,NULL,'Nhật báo tại sảnh','Dịch vụ khách sạn',1),(104,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(105,NULL,NULL,'Thức uống chào mừng miễn phí','Dịch vụ khách sạn',1),(106,NULL,NULL,'Dịch vụ concierge/hỗ trợ khách','Dịch vụ khách sạn',1),(107,NULL,NULL,'Bãi đậu xe','Tiện nghi công cộng',1),(108,NULL,NULL,'Cà phê/trà tại sảnh','Tiện nghi công cộng',1),(109,NULL,NULL,'Tiệm cà phê','Tiện nghi công cộng',1),(110,NULL,NULL,'Nhận phòng sớm','Tiện nghi công cộng',1),(111,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(112,NULL,NULL,'Trả phòng muộn','Tiện nghi công cộng',1),(113,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(114,NULL,NULL,'Nhà hàng phục vụ bữa sáng','Tiện nghi công cộng',1),(115,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(116,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(117,NULL,NULL,'Bữa sáng với thực đơn gọi món','Ẩm thực',1),(118,NULL,NULL,'Nhà hàng có máy lạnh','Ẩm thực',1),(119,NULL,NULL,'Quầy bar','Ẩm thực',1),(120,NULL,NULL,'Bữa sáng','Ẩm thực',1),(121,NULL,NULL,'Bữa sáng (thu phí)','Ẩm thực',1),(122,NULL,NULL,'Tiệm cà phê','Ẩm thực',1),(123,NULL,NULL,'Bữa sáng phục vụ món nóng','Ẩm thực',1),(124,NULL,NULL,'Quầy bar bên hồ bơi','Ẩm thực',1),(125,NULL,NULL,'Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(126,NULL,NULL,'Thẩm mỹ viện','Các tiện ích lân cận',1),(127,NULL,NULL,'Cửa hàng thực phẩm','Các tiện ích lân cận',1),(128,NULL,NULL,'Hiệu làm tóc','Các tiện ích lân cận',1),(129,NULL,NULL,'Giặt ủi','Các tiện ích lân cận',1),(130,NULL,NULL,'Cửa hàng','Các tiện ích lân cận',1),(131,NULL,NULL,'Siêu thị','Các tiện ích lân cận',1),(132,NULL,NULL,'Đưa đón sân bay','Vận chuyển',1),(133,NULL,NULL,'Đưa đón bãi biển','Vận chuyển',1),(134,NULL,NULL,'Dịch vụ cho thuê xe đạp','Vận chuyển',1),(135,NULL,NULL,'Giữ xe đạp','Vận chuyển',1),(136,NULL,NULL,'Cho thuê xe hơi','Vận chuyển',1),(137,NULL,NULL,'Nhà chứa xe','Vận chuyển',1),(138,NULL,NULL,'Máy lạnh','Tiện nghi chung',1),(139,NULL,NULL,'Phòng gia đình','Tiện nghi chung',1),(140,NULL,NULL,'Phòng không hút thuốc','Tiện nghi chung',1),(141,NULL,NULL,'Hồ bơi','Tiện nghi chung',1),(142,NULL,NULL,'Sân thượng/Sân hiên','Tiện nghi chung',1),(143,NULL,NULL,'Bàn làm việc','Tiện nghi phòng',1),(144,NULL,NULL,'Minibar','Tiện nghi phòng',1),(145,NULL,NULL,'Phòng tắm vòi sen','Tiện nghi phòng',1),(146,NULL,NULL,'TV','Tiện nghi phòng',1),(147,NULL,NULL,'Đưa đón sân bay (thu phí)','Đưa đón',1),(148,NULL,NULL,'Đưa đón sân bay','Đưa đón',1),(149,NULL,NULL,'Hồ bơi ngoài trời','Các hoạt động',1),(150,NULL,NULL,'Wifi (miễn phí)','Kết nối mạng',1),(151,NULL,NULL,'Phù hợp cho xe lăn','Hỗ trợ người khuyết tật',1),(152,NULL,NULL,'Nhân viên xách hành lý','Dịch vụ khách sạn',1),(153,NULL,NULL,'Thức uống chào mừng miễn phí','Dịch vụ khách sạn',1),(154,NULL,NULL,'Dịch vụ thu đổi ngoại tệ','Dịch vụ khách sạn',1),(155,NULL,NULL,'Người gác cửa','Dịch vụ khách sạn',1),(156,NULL,NULL,'EARLY_CHECK_IN','Dịch vụ khách sạn',1),(157,NULL,NULL,'Quầy lễ tân','Dịch vụ khách sạn',1),(158,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(159,NULL,NULL,'Bảo vệ 24 giờ','Dịch vụ khách sạn',1),(160,NULL,NULL,'Dịch vụ trả phòng muộn','Dịch vụ khách sạn',1),(161,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(162,NULL,NULL,'Dịch vụ phòng (có giới hạn thời gian)','Dịch vụ khách sạn',1),(163,NULL,NULL,'Dịch vụ lưu trữ/bảo quản hành lý','Dịch vụ khách sạn',1),(164,NULL,NULL,'Dịch vụ chăm sóc y tế','Dịch vụ khách sạn',1),(165,NULL,NULL,'Đội ngũ nhân viên đa ngôn ngữ','Dịch vụ khách sạn',1),(166,NULL,NULL,'Nhân viên gác cổng','Dịch vụ khách sạn',1),(167,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(168,NULL,NULL,'Bãi đậu xe','Tiện nghi công cộng',1),(169,NULL,NULL,'Nhận phòng sớm','Tiện nghi công cộng',1),(170,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(171,NULL,NULL,'Dịch vụ phòng 24 giờ','Tiện nghi công cộng',1),(172,NULL,NULL,'Trả phòng muộn','Tiện nghi công cộng',1),(173,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(174,NULL,NULL,'Nhà hàng phục vụ bữa sáng','Tiện nghi công cộng',1),(175,NULL,NULL,'Dịch vụ dọn phòng','Tiện nghi công cộng',1),(176,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(177,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(178,NULL,NULL,'Bữa sáng với thực đơn gọi món','Ẩm thực',1),(179,NULL,NULL,'Bữa sáng','Ẩm thực',1),(180,NULL,NULL,'Bữa sáng món tự chọn','Ẩm thực',1),(181,NULL,NULL,'Tiệm cà phê','Ẩm thực',1),(182,NULL,NULL,'Bữa sáng kiểu Âu','Ẩm thực',1),(183,NULL,NULL,'Khu ẩm thực','Ẩm thực',1),(184,NULL,NULL,'Đồ ăn nhẹ','Ẩm thực',1),(185,NULL,NULL,'Bồn tắm','Tiện nghi phòng',1),(186,NULL,NULL,'Truyền hình cáp','Tiện nghi phòng',1),(187,NULL,NULL,'Bàn làm việc','Tiện nghi phòng',1),(188,NULL,NULL,'Máy sấy tóc','Tiện nghi phòng',1),(189,NULL,NULL,'Tủ lạnh','Tiện nghi phòng',1),(190,NULL,NULL,'Phòng tắm đứng và bồn tắm riêng','Tiện nghi phòng',1),(191,NULL,NULL,'TV','Tiện nghi phòng',1),(192,NULL,NULL,'Đưa đón sân bay','Vận chuyển',1),(193,NULL,NULL,'Dịch vụ cho thuê xe đạp','Vận chuyển',1),(194,NULL,NULL,'Cho thuê xe hơi','Vận chuyển',1),(195,NULL,NULL,'Nhà chứa xe','Vận chuyển',1),(196,NULL,NULL,'Bãi đậu xe an ninh','Vận chuyển',1),(197,NULL,NULL,'Bãi đậu xe có người phục vụ','Vận chuyển',1),(198,NULL,NULL,'Máy lạnh','Tiện nghi chung',1),(199,NULL,NULL,'Phòng giữ đồ','Tiện nghi chung',1),(200,NULL,NULL,'Phòng gia đình','Tiện nghi chung',1),(201,NULL,NULL,'Phòng không hút thuốc','Tiện nghi chung',1),(202,NULL,NULL,'Khu vực hút thuốc','Tiện nghi chung',1),(203,NULL,NULL,'Không khói thuốc','Tiện nghi chung',1),(204,NULL,NULL,'Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(205,NULL,NULL,'Cửa hàng quà tặng','Các tiện ích lân cận',1),(206,NULL,NULL,'Hiệu làm tóc','Các tiện ích lân cận',1),(207,NULL,NULL,'Cửa hàng','Các tiện ích lân cận',1),(208,NULL,NULL,'Siêu thị','Các tiện ích lân cận',1),(209,NULL,NULL,'Các tiện nghi văn phòng','Tiện nghi văn phòng',1),(210,NULL,NULL,'Phòng hội nghị','Tiện nghi văn phòng',1),(211,NULL,NULL,'Tiện nghi hội họp','Tiện nghi văn phòng',1),(212,NULL,NULL,'Máy photocopy','Tiện nghi văn phòng',1),(213,NULL,NULL,'Phòng tắm phù hợp cho người khuyết tật','Hỗ trợ người khuyết tật',1),(214,NULL,NULL,'Phòng tắm phù hợp với xe lăn','Hỗ trợ người khuyết tật',1),(215,NULL,NULL,'Đưa đón sân bay (thu phí)','Đưa đón',1),(216,NULL,NULL,'Đưa đón sân bay','Đưa đón',1),(217,NULL,NULL,'Dù (ô) che nắng','Các hoạt động',1),(218,NULL,NULL,'Wifi (miễn phí)','Kết nối mạng',1),(219,NULL,NULL,'Thuận tiện cho người khuyết tật','Hỗ trợ người khuyết tật',1),(220,NULL,NULL,'Đưa đón sân bay (thu phí)','Đưa đón',1),(221,NULL,NULL,'Nhân viên xách hành lý','Dịch vụ khách sạn',1),(222,NULL,NULL,'Dịch vụ concierge/hỗ trợ khách','Dịch vụ khách sạn',1),(223,NULL,NULL,'Dịch vụ thu đổi ngoại tệ','Dịch vụ khách sạn',1),(224,NULL,NULL,'Người gác cửa','Dịch vụ khách sạn',1),(225,NULL,NULL,'Quầy lễ tân','Dịch vụ khách sạn',1),(226,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(227,NULL,NULL,'Bảo vệ 24 giờ','Dịch vụ khách sạn',1),(228,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(229,NULL,NULL,'Dịch vụ phòng (có giới hạn thời gian)','Dịch vụ khách sạn',1),(230,NULL,NULL,'Dịch vụ lưu trữ/bảo quản hành lý','Dịch vụ khách sạn',1),(231,NULL,NULL,'Đội ngũ nhân viên đa ngôn ngữ','Dịch vụ khách sạn',1),(232,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(233,NULL,NULL,'Bãi đậu xe','Tiện nghi công cộng',1),(234,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(235,NULL,NULL,'Dịch vụ phòng 24 giờ','Tiện nghi công cộng',1),(236,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(237,NULL,NULL,'Nhà hàng phục vụ bữa sáng','Tiện nghi công cộng',1),(238,NULL,NULL,'Nhà hàng phục vụ bữa tối','Tiện nghi công cộng',1),(239,NULL,NULL,'Nhà hàng phục vụ bữa trưa','Tiện nghi công cộng',1),(240,NULL,NULL,'Dịch vụ dọn phòng','Tiện nghi công cộng',1),(241,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(242,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(243,NULL,NULL,'Áo choàng tắm','Tiện nghi phòng',1),(244,NULL,NULL,'Bồn tắm','Tiện nghi phòng',1),(245,NULL,NULL,'Bàn làm việc','Tiện nghi phòng',1),(246,NULL,NULL,'Máy sấy tóc','Tiện nghi phòng',1),(247,NULL,NULL,'Két an toàn trong phòng','Tiện nghi phòng',1),(248,NULL,NULL,'Minibar','Tiện nghi phòng',1),(249,NULL,NULL,'Phòng tắm vòi sen','Tiện nghi phòng',1),(250,NULL,NULL,'TV','Tiện nghi phòng',1),(251,NULL,NULL,'Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(252,NULL,NULL,'Thẩm mỹ viện','Các tiện ích lân cận',1),(253,NULL,NULL,'Cửa hàng quà tặng','Các tiện ích lân cận',1),(254,NULL,NULL,'Cửa hàng thực phẩm','Các tiện ích lân cận',1),(255,NULL,NULL,'Hiệu làm tóc','Các tiện ích lân cận',1),(256,NULL,NULL,'Giặt ủi','Các tiện ích lân cận',1),(257,NULL,NULL,'Cửa hàng','Các tiện ích lân cận',1),(258,NULL,NULL,'Siêu thị','Các tiện ích lân cận',1),(259,NULL,NULL,'Nhà hàng có máy lạnh','Ẩm thực',1),(260,NULL,NULL,'Quầy bar','Ẩm thực',1),(261,NULL,NULL,'Bữa sáng','Ẩm thực',1),(262,NULL,NULL,'Bữa sáng và bữa tối','Ẩm thực',1),(263,NULL,NULL,'Bữa sáng và bữa trưa','Ẩm thực',1),(264,NULL,NULL,'Tiệm cà phê','Ẩm thực',1),(265,NULL,NULL,'Máy lạnh','Tiện nghi chung',1),(266,NULL,NULL,'Phòng giữ đồ','Tiện nghi chung',1),(267,NULL,NULL,'Máy sấy quần áo','Tiện nghi chung',1),(268,NULL,NULL,'Phòng không hút thuốc','Tiện nghi chung',1),(269,NULL,NULL,'Hồ bơi','Tiện nghi chung',1),(270,NULL,NULL,'Dịch vụ văn phòng','Tiện nghi văn phòng',1),(271,NULL,NULL,'Phòng hội nghị','Tiện nghi văn phòng',1),(272,NULL,NULL,'Tiện nghi hội họp','Tiện nghi văn phòng',1),(273,NULL,NULL,'Máy chiếu','Tiện nghi văn phòng',1),(274,NULL,NULL,'Trung tâm thể dục thể hình','Các hoạt động',1),(275,NULL,NULL,'Hồ bơi ngoài trời','Các hoạt động',1),(276,NULL,NULL,'Xông hơi ướt','Các hoạt động',1),(277,NULL,NULL,'Điểm truy cập Internet','Kết nối mạng',1),(278,NULL,NULL,'Mạng Internet cục bộ','Kết nối mạng',1),(279,NULL,NULL,'Wifi (miễn phí)','Kết nối mạng',1),(280,NULL,NULL,'Nhân viên xách hành lý','Dịch vụ khách sạn',1),(281,NULL,NULL,'Dịch vụ concierge/hỗ trợ khách','Dịch vụ khách sạn',1),(282,NULL,NULL,'Dịch vụ thu đổi ngoại tệ','Dịch vụ khách sạn',1),(283,NULL,NULL,'Người gác cửa','Dịch vụ khách sạn',1),(284,NULL,NULL,'Quầy lễ tân','Dịch vụ khách sạn',1),(285,NULL,NULL,'Lễ tân 24h','Dịch vụ khách sạn',1),(286,NULL,NULL,'Bảo vệ 24 giờ','Dịch vụ khách sạn',1),(287,NULL,NULL,'Dịch vụ giặt ủi','Dịch vụ khách sạn',1),(288,NULL,NULL,'Dịch vụ lưu trữ/bảo quản hành lý','Dịch vụ khách sạn',1),(289,NULL,NULL,'Đội ngũ nhân viên đa ngôn ngữ','Dịch vụ khách sạn',1),(290,NULL,NULL,'Nhân viên gác cổng','Dịch vụ khách sạn',1),(291,NULL,NULL,'Dịch vụ hỗ trợ đặt Tour','Dịch vụ khách sạn',1),(292,NULL,NULL,'Dịch vụ tiệc cưới','Dịch vụ khách sạn',1),(293,NULL,NULL,'Áo choàng tắm','Tiện nghi phòng',1),(294,NULL,NULL,'Bồn tắm','Tiện nghi phòng',1),(295,NULL,NULL,'Truyền hình cáp','Tiện nghi phòng',1),(296,NULL,NULL,'Bàn làm việc','Tiện nghi phòng',1),(297,NULL,NULL,'Máy sấy tóc','Tiện nghi phòng',1),(298,NULL,NULL,'Két an toàn trong phòng','Tiện nghi phòng',1),(299,NULL,NULL,'Minibar','Tiện nghi phòng',1),(300,NULL,NULL,'Tủ lạnh','Tiện nghi phòng',1),(301,NULL,NULL,'Phòng tắm vòi sen','Tiện nghi phòng',1),(302,NULL,NULL,'TV','Tiện nghi phòng',1),(303,NULL,NULL,'Máy ATM/Ngân hàng','Các tiện ích lân cận',1),(304,NULL,NULL,'Thẩm mỹ viện','Các tiện ích lân cận',1),(305,NULL,NULL,'Cửa hàng quà tặng','Các tiện ích lân cận',1),(306,NULL,NULL,'Cửa hàng thực phẩm','Các tiện ích lân cận',1),(307,NULL,NULL,'Hiệu làm tóc','Các tiện ích lân cận',1),(308,NULL,NULL,'Giặt ủi','Các tiện ích lân cận',1),(309,NULL,NULL,'Cửa hàng','Các tiện ích lân cận',1),(310,NULL,NULL,'Siêu thị','Các tiện ích lân cận',1),(311,NULL,NULL,'Máy lạnh','Tiện nghi chung',1),(312,NULL,NULL,'Hội trường đa chức năng','Tiện nghi chung',1),(313,NULL,NULL,'Tiệc chiêu đãi','Tiện nghi chung',1),(314,NULL,NULL,'Phòng liên thông','Tiện nghi chung',1),(315,NULL,NULL,'Phòng gia đình','Tiện nghi chung',1),(316,NULL,NULL,'Hồ bơi','Tiện nghi chung',1),(317,NULL,NULL,'Khu vực hút thuốc','Tiện nghi chung',1),(318,NULL,NULL,'Bãi đậu xe','Tiện nghi công cộng',1),(319,NULL,NULL,'Cà phê/trà tại sảnh','Tiện nghi công cộng',1),(320,NULL,NULL,'Tiệm cà phê','Tiện nghi công cộng',1),(321,NULL,NULL,'Thang máy','Tiện nghi công cộng',1),(322,NULL,NULL,'Nhà hàng','Tiện nghi công cộng',1),(323,NULL,NULL,'Két an toàn','Tiện nghi công cộng',1),(324,NULL,NULL,'WiFi tại khu vực chung','Tiện nghi công cộng',1),(325,NULL,NULL,'Dịch vụ văn phòng','Tiện nghi văn phòng',1),(326,NULL,NULL,'Các tiện nghi văn phòng','Tiện nghi văn phòng',1),(327,NULL,NULL,'Lễ tân hội nghị','Tiện nghi văn phòng',1),(328,NULL,NULL,'Phòng hội nghị','Tiện nghi văn phòng',1),(329,NULL,NULL,'Tiện nghi hội họp','Tiện nghi văn phòng',1),(330,NULL,NULL,'Máy photocopy','Tiện nghi văn phòng',1),(331,NULL,NULL,'Máy chiếu','Tiện nghi văn phòng',1),(332,NULL,NULL,'Quầy bar','Ẩm thực',1),(333,NULL,NULL,'Bữa sáng','Ẩm thực',1),(334,NULL,NULL,'Bữa sáng món tự chọn','Ẩm thực',1),(335,NULL,NULL,'Tiệm cà phê','Ẩm thực',1),(336,NULL,NULL,'Quầy bar bên hồ bơi','Ẩm thực',1),(337,NULL,NULL,'Quầy bar','Ẩm thực',1),(338,NULL,NULL,'Mạng Internet cục bộ','Kết nối mạng',1),(339,NULL,NULL,'Wifi (miễn phí)','Kết nối mạng',1);
/*!40000 ALTER TABLE `amenityhotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenityroom`
--

DROP TABLE IF EXISTS `amenityroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `amenityroom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenityroom`
--

LOCK TABLES `amenityroom` WRITE;
/*!40000 ALTER TABLE `amenityroom` DISABLE KEYS */;
INSERT INTO `amenityroom` VALUES (1,NULL,NULL,'Không gồm bữa sáng','1',0),(2,NULL,NULL,'Miễn phí hủy phòng','1',1),(3,NULL,NULL,'WiFi miễn phí','1',1),(4,NULL,NULL,'Có thể đổi lịch','1',1),(5,NULL,NULL,'Không hút thuốc','1',1),(6,NULL,NULL,'Miễn phí bữa sáng','2',1),(7,NULL,NULL,'Miễn phí hủy phòng','2',1),(8,NULL,NULL,'WiFi miễn phí','2',1),(9,NULL,NULL,'Có thể đổi lịch','2',1),(10,NULL,NULL,'Không hút thuốc','2',1),(11,NULL,NULL,'Không gồm bữa sáng','3',0),(12,NULL,NULL,'Hủy phòng có thu phí','3',0),(13,NULL,NULL,'WiFi miễn phí','3',1),(14,NULL,NULL,'Không hút thuốc','3',1),(15,NULL,NULL,'Miễn phí bữa sáng','4',1),(16,NULL,NULL,'Miễn phí hủy phòng','4',1),(17,NULL,NULL,'WiFi miễn phí','4',1),(18,NULL,NULL,'Có thể đổi lịch','4',1),(19,NULL,NULL,'Không hoàn tiền','6',0),(20,NULL,NULL,'Không đổi lịch','6',0),(21,NULL,NULL,'Hủy phòng có thu phí','6',0);
/*!40000 ALTER TABLE `amenityroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenitytour`
--

DROP TABLE IF EXISTS `amenitytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `amenitytour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitytour`
--

LOCK TABLES `amenitytour` WRITE;
/*!40000 ALTER TABLE `amenitytour` DISABLE KEYS */;
/*!40000 ALTER TABLE `amenitytour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhqsmt4xhq7o1j8a3x28ihvgro` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:30:00','Paris, thành phố ánh sáng, nổi tiếng với kiến trúc tinh tế và văn hóa đa dạng. Hãy cùng tôi khám phá những danh lam thắng cảnh nổi tiếng như Tháp Eiffel, Cung điện Versailles và Bảo tàng Louvre. Đừng quên thưởng thức ẩm thực Pháp tuyệt vời như bánh mì baguette, phô mai và rượu vang. Paris chắc chắn là một điểm đến không thể bỏ qua.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog01.jpg?alt=media&token=3af36cde-0dfe-4efa-a4c4-5de3c5f38e6d','Khám phá Vẻ đẹp của Paris',5),(2,'2023-06-15 14:00:00','2023-06-15 15:30:00','Trốn khỏi cuộc sống vào thiên đường nhiệt đới Bali và ngập chìm trong vẻ đẹp tuyệt vời của bãi biển, ruộng lúa xanh tươi và những ngôi đền cổ. Trải nghiệm các môn thể thao dưới nước hồi hộp, thư giãn với liệu pháp spa truyền thống và thưởng thức ẩm thực ngon lành của Bali. Bali mang đến sự kết hợp hoàn hảo giữa sự thư giãn và mạo hiểm.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog02.jpg?alt=media&token=3926f324-cc88-42b6-8ba5-edebb6098439','Khám phá Sự Mê Hoặc của Bali',5),(3,'2023-06-20 09:00:00','2023-06-20 10:30:00','Bắt đầu hành trình khó quên đến những con phố sôi động của Tokyo. Khám phá sự kết hợp giữa truyền thống và hiện đại khi chúng ta thăm các ngôi đền lịch sử, chứng kiến sự tấp nập của Đường qua Shibuya và thưởng thức sushi thơm ngon. Lạc mất mình trong ánh đèn neon của Tokyo và trải nghiệm sức hút độc đáo của thành phố này.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog03.jpg?alt=media&token=8ae51514-e263-462b-9b10-7194b99bd200','Khám phá Những Kỳ Quan Tại Tokyo',5),(4,'2023-06-25 13:00:00','2023-06-25 14:30:00','Trải nghiệm vẻ đẹp mê hoặc của Santorini, một hòn đảo Hy Lạp nổi tiếng với những nhà thờ màu xanh nguyên bản và hoàng hôn tuyệt đẹp. Khám phá di chỉ cổ Akrotiri, thư giãn trên những bãi biển tuyệt đẹp và thưởng thức ẩm thực Hy Lạp ngon lành. Santorini là một thiên đường thực sự dành cho những người yêu du lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog04.jpg?alt=media&token=3f787ac8-ad59-4f7c-97c0-d1b7e1fa292e','\'Santorini: Một Phần Thiên Đường',5),(5,'2023-06-30 11:00:00','2023-06-30 12:30:00','Khám phá ma thuật của Rome, Thành phố Vĩnh cửu, khi chúng ta dạo chơi trên những con phố cổ và thăm các địa điểm nổi tiếng như Colosseum, Di chỉ La Mã và Vatican. Mê mải trong lịch sử phong phú, thưởng thức bánh pizza và gelato Ý truyền thống và ngắm nhìn vẻ đẹp của thành phố này.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog05.jpg?alt=media&token=4e6476de-3be5-4db7-85ed-b3c10be0cc29','Khám phá Những Kho Báu của Rome',5),(6,'2023-07-05 15:00:00','2023-07-05 16:30:00','Ngập mình trong những kỳ quan thiên nhiên của rừng mưa Amazon. Trải nghiệm cuộc gặp gỡ động vật hoang dã thú vị, khám phá rừng rậm dày đặc và du thuyền dọc theo dòng sông Amazon hùng mạnh. Tìm hiểu văn hóa bản địa và cách sống bền vững của người dân bản địa. Rừng mưa Amazon mang đến một cuộc phiêu lưu độc đáo cho những người yêu thiên nhiên.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog06.jpg?alt=media&token=13fd7b86-66d3-4d99-96c6-4bc253f3399b','Hành Trình Vào Trái Tim của Rừng mưa Amazon',5),(7,'2023-07-10 10:00:00','2023-07-10 11:30:00','Bắt đầu một hành trình ẩm thực đến thủ đô ẩm thực của thế giới, Barcelona. Khám phá sự sống động của những món ăn, thử các loại tapas và paella ngon lành và thăm các chợ thực phẩm nhộn nhịp như La Boqueria. Trải nghiệm sự pha trộn giữa hương vị Catalonia và Địa Trung Hải làm cho Barcelona trở thành một thiên đường ẩm thực đích thực.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog07.jpg?alt=media&token=a73b8ac3-7825-450c-8e24-67461ccbe173','Thưởng Thức Barcelona: Thiên Đường của Người Yêu Thực Phẩm',5),(8,'2023-07-15 14:00:00','2023-07-15 15:30:00','Thả lỏng tại những bãi biển trong xanh của Maldives, nổi tiếng với nước biển màu xanh ngọc, bãi cát trắng mịn và các khu nghỉ dưỡng sang trọng. Ngập mình trong sự thanh bình của thiên đường nhiệt đới này, thỏa sức lặn biển và snorkeling cấp thế giới và làm mới mình bằng các liệu pháp spa tái tạo.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog08.jpg?alt=media&token=13c89bfb-98e5-4594-a57b-c7112dc2183b','Thiên Đường Tìm Được: Trải Nghiệm Maldives',5),(9,'2023-07-20 09:00:00','2023-07-20 10:30:00','Khám phá vẻ đẹp tráng lệ của Grand Canyon, một trong những kỳ quan thiên nhiên nổi tiếng nhất thế giới. Ngạc nhiên trước những cảnh quan toàn cảnh tuyệt đẹp, đi bộ dọc theo mép vực và khám phá những viên ngọc quý khắp vùng đất này. Grand Canyon sẽ khiến bạn cảm thấy nhỏ bé trước sự vĩ đại của tự nhiên.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog09.jpg?alt=media&token=3aa60755-5b2e-446e-9764-6449e7e32418','Grand Canyon: Sự Kỳ Vĩ của Tự Nhiên',5),(10,'2023-07-25 13:00:00','2023-07-25 14:30:00','Trải nghiệm sự lãng mạn của Venice, thành phố trên nước tuyệt đẹp. Dạo chơi trên những con kênh labyrinthe, khám phá kiến trúc độc đáo và tham quan các địa điểm nổi tiếng như Cung điện Doge và Cầu Rialto. Hãy cùng tôi thưởng thức một chuyến du thuyền lãng mạn trên dòng sông Grand Canal và thưởng thức ẩm thực ngon lành của Venice.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog10.jpg?alt=media&token=c938c9a2-c758-484b-90ce-e20d6a82d1bc','Venice: Thành Phố Trên Nước',5),(11,'2023-07-30 11:00:00','2023-07-30 12:30:00','Trải nghiệm những cảnh quan ngoạn mục của New Zealand khi chúng ta hành trình qua những vịnh hẹp tuyệt đẹp, những hồ nước nguyên sơ và những ngọn núi hùng vĩ. Ghé thăm các địa điểm quay phim nổi tiếng trong bộ ba phim \"Chúa tể của những chiếc nhẫn\" và hòa mình vào văn hóa Maori. New Zealand là thiên đường của những người yêu thiên nhiên.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog11.jpg?alt=media&token=85513c3d-674b-4ab4-883d-8993b1a39575','New Zealand đầy cảm hứng: Vùng đất phiêu lưu',5),(12,'2023-08-05 15:00:00','2023-08-05 16:30:00','Tham gia vào chuyến phiêu lưu safari ở Vườn Quốc gia Serengeti, nơi có nhiều động vật hoang dã mang tính biểu tượng nhất thế giới. Chứng kiến Cuộc di cư vĩ đại, phát hiện Big Five và đắm mình trong vẻ đẹp nguyên sơ của thảo nguyên châu Phi. Serengeti hứa hẹn một trải nghiệm hoang dã khó quên.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog12.jpg?alt=media&token=7a0f1c99-bc4b-411e-a776-2cc5ad4d05cb','Serengeti: Trong vương quốc của động vật hoang dã',5),(13,'2023-08-10 10:00:00','2023-08-10 11:30:00','Khám phá những bí ẩn của Ai Cập cổ đại khi chúng ta khám phá các kim tự tháp Giza hùng vĩ, đi thuyền dọc theo sông Nile và ghé thăm các ngôi đền mang tính biểu tượng của Luxor và Karnak. Đắm chìm trong lịch sử phong phú và thần thoại của nền văn minh cổ đại này.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog13.jpg?alt=media&token=80ec599e-8cf9-40c5-a25b-79bd68d39693','Hành trình đến Ai Cập cổ đại',5),(14,'2023-08-15 14:00:00','2023-08-15 15:30:00','Đắm chìm trong những con đường sôi động của Marrakech, thủ đô văn hóa của Ma-rốc. Khám phá những khu chợ nhộn nhịp, ghé thăm Cung điện Bahia lộng lẫy và thưởng thức ẩm thực Ma-rốc truyền thống. Trải nghiệm màu sắc rực rỡ, hương thơm kỳ lạ và lòng hiếu khách nồng hậu của thành phố đầy mê hoặc này.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog14.jpg?alt=media&token=678b19b1-b990-422e-b8e2-361da27798ba','Marrakech: Bữa tiệc cho các giác quan',5),(15,'2023-08-20 09:00:00','2023-08-20 10:30:00','Khám phá vẻ đẹp mê hồn của các vịnh hẹp Na Uy. Đi thuyền qua những vách đá dựng đứng, thác nước nhiều tầng và những ngôi làng đẹp như tranh vẽ. Đắm mình trong sự tĩnh lặng của thiên nhiên và chứng kiến Cực quang nhảy múa trên bầu trời đêm. Các vịnh hẹp Na Uy mang đến một trải nghiệm thực sự kỳ diệu.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog15.jpg?alt=media&token=14759edb-5344-4053-9d57-71866541d410','Vịnh hẹp Na Uy: Kiệt tác của thiên nhiên',5);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcategory`
--

DROP TABLE IF EXISTS `blog_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogcategory` (
  `blog_id` bigint NOT NULL,
  `blogcategory_id` bigint NOT NULL,
  PRIMARY KEY (`blog_id`,`blogcategory_id`),
  KEY `FKlo1gmgqycaibjfh98vt16sj8y` (`blogcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcategory`
--

LOCK TABLES `blog_blogcategory` WRITE;
/*!40000 ALTER TABLE `blog_blogcategory` DISABLE KEYS */;
INSERT INTO `blog_blogcategory` VALUES (1,1),(1,2),(1,5),(2,2),(2,4),(3,3),(3,4),(4,4),(4,10),(5,5),(5,7),(6,1),(6,6),(7,2),(7,6),(8,8),(8,9),(9,2),(9,9),(10,3),(10,10),(11,10),(12,4),(12,9),(13,8),(14,7),(15,6);
/*!40000 ALTER TABLE `blog_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogcategory`
--

DROP TABLE IF EXISTS `blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `blogcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogcategory`
--

LOCK TABLES `blogcategory` WRITE;
/*!40000 ALTER TABLE `blogcategory` DISABLE KEYS */;
INSERT INTO `blogcategory` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:00:00','Du lịch'),(2,'2023-06-12 10:00:00','2023-06-12 10:00:00','Khách sạn'),(3,'2023-06-12 10:00:00','2023-06-12 10:00:00','Ẩm thực'),(4,'2023-06-12 10:00:00','2023-06-12 10:00:00','Phiêu lưu'),(5,'2023-06-12 11:30:00','2023-06-12 11:30:00','Thiên nhiên'),(7,'2023-06-12 14:45:00','2023-06-12 14:45:00','Văn hóa'),(8,'2023-06-12 16:30:00','2023-06-12 16:30:00','Lịch sử'),(9,'2023-06-12 18:00:00','2023-06-12 18:00:00','Bãi biển'),(10,'2023-06-12 19:30:00','2023-06-12 19:30:00','Hoang dã');
/*!40000 ALTER TABLE `blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` bigint NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `price_total` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','WAITING',1,NULL,NULL,NULL,NULL,NULL),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','PROCESS',2,NULL,NULL,NULL,NULL,NULL),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','DONE',3,NULL,NULL,NULL,NULL,NULL),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','DONE',4,NULL,NULL,NULL,NULL,NULL),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','WAITING',4,NULL,NULL,NULL,NULL,NULL),(6,'2023-06-06 09:00:00','2023-06-06 09:00:00','WAITING',5,NULL,NULL,NULL,NULL,NULL),(7,'2023-06-07 13:00:00','2023-06-07 13:00:00','PROCESS',7,NULL,NULL,NULL,NULL,NULL),(8,'2023-06-08 16:00:00','2023-06-08 16:00:00','DONE',10,NULL,NULL,NULL,NULL,NULL),(9,'2023-06-09 10:00:00','2023-06-09 10:00:00','DONE',13,NULL,NULL,NULL,NULL,NULL),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','WAITING',9,NULL,NULL,NULL,NULL,NULL),(11,'2023-06-11 12:00:00','2023-06-11 12:00:00','WAITING',8,NULL,NULL,NULL,NULL,NULL),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','PROCESS',3,NULL,NULL,NULL,NULL,NULL),(13,'2023-06-13 15:00:00','2023-06-13 15:00:00','DONE',2,NULL,NULL,NULL,NULL,NULL),(14,'2023-06-14 16:00:00','2023-06-14 16:00:00','DONE',15,NULL,NULL,NULL,NULL,NULL),(15,'2023-06-15 09:00:00','2023-06-15 09:00:00','WAITING',18,NULL,NULL,NULL,NULL,NULL),(16,'2023-06-16 11:00:00','2023-06-16 11:00:00','WAITING',11,NULL,NULL,NULL,NULL,NULL),(17,'2023-06-17 13:00:00','2023-06-17 13:00:00','PROCESS',14,NULL,NULL,NULL,NULL,NULL),(18,'2023-06-18 15:00:00','2023-06-18 15:00:00','DONE',17,NULL,NULL,NULL,NULL,NULL),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','DONE',10,NULL,NULL,NULL,NULL,NULL),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','WAITING',12,NULL,NULL,NULL,NULL,NULL),(21,'2023-06-24 11:20:31','2023-06-24 11:20:31','WAITING',3,NULL,NULL,NULL,NULL,NULL),(22,'2023-06-25 21:01:00','2023-06-26 16:28:15','PROCESS',21,'CASH DELIVERY','190',NULL,NULL,NULL),(25,'2023-06-26 16:28:13','2023-06-26 16:28:13','WAITING',21,NULL,NULL,NULL,NULL,NULL),(26,'2023-06-28 02:02:53','2023-06-28 09:52:02','PROCESS',22,'CASH DELIVERY','490',NULL,NULL,NULL),(27,'2023-06-28 09:52:02','2023-07-01 23:35:07','PROCESS',22,'CASH DELIVERY','6479977',NULL,NULL,NULL),(35,'2023-07-01 23:35:07','2023-07-02 02:19:56','PROCESS',22,'CASH DELIVERY','5800000','viet@gmail.com','pham tuan viet','09611283810'),(36,'2023-07-02 02:19:56','2023-07-05 08:06:32','PROCESS',22,'CASH DELIVERY','7750000',NULL,NULL,NULL),(37,'2023-07-05 08:06:32','2023-07-08 10:15:10','PROCESS',22,'CASH DELIVERY','6480000',NULL,NULL,NULL),(38,'2023-07-08 10:15:09','2023-07-08 12:16:38','PROCESS',22,'CASH DELIVERY','6475000',NULL,NULL,NULL),(39,'2023-07-08 12:16:38','2023-07-08 12:16:38','WAITING',22,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cartitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcj0jvvlv7mum72m5qblw5m1tc` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (1,1,'Item 1',10,1,'tour',1,NULL,NULL,''),(2,1,'Item 1',10,4,'tour',1,NULL,NULL,''),(3,1,'Item 2',15,2,'hotel',1,NULL,NULL,''),(4,2,'Item 3',8,1,'vehicle',1,NULL,NULL,''),(5,2,'Item 4',20,3,'tour',1,NULL,NULL,''),(6,3,'Item 5',12,2,'tour',1,NULL,NULL,''),(7,4,'Hotel 2',18,3,'hotel',1,NULL,NULL,''),(8,4,'Tour 5',25,12,'tour',1,NULL,NULL,''),(9,5,'Vehicle 2',15,2,'vehicle',1,NULL,NULL,''),(10,5,'Tour 6',10,17,'tour',1,NULL,NULL,''),(11,6,'Tour 7',12,16,'tour',1,NULL,NULL,''),(12,6,'Vehicle 3',8,3,'vehicle',1,NULL,NULL,''),(13,7,'Tour 8',20,7,'tour',1,NULL,NULL,''),(14,7,'Hotel 3',18,4,'hotel',1,NULL,NULL,''),(15,8,'Tour 9',25,6,'tour',1,NULL,NULL,''),(16,8,'Tour 10',10,5,'tour',1,NULL,NULL,''),(17,9,'Vehicle 4',15,14,'vehicle',1,NULL,NULL,''),(18,9,'Tour 11',12,9,'tour',1,NULL,NULL,''),(19,10,'Tour 12',20,10,'tour',1,NULL,NULL,''),(20,10,'Hotel 4',18,6,'hotel',1,NULL,NULL,''),(21,11,'Tour 13',10,11,'tour',1,NULL,NULL,''),(22,11,'Tour 14',10,14,'tour',1,NULL,NULL,''),(23,11,'Hotel 5',15,7,'hotel',1,NULL,NULL,''),(24,12,'Vehicle 5',8,5,'vehicle',1,NULL,NULL,''),(25,12,'Tour 15',20,3,'tour',1,NULL,NULL,''),(26,13,'Tour 16',12,20,'tour',1,NULL,NULL,''),(27,14,'Hotel 6',18,8,'hotel',1,NULL,NULL,''),(28,14,'Tour 17',25,2,'tour',1,NULL,NULL,''),(29,15,'Vehicle 6',15,13,'vehicle',1,NULL,NULL,''),(30,15,'Tour 18',10,19,'tour',1,NULL,NULL,''),(31,16,'Tour 19',12,16,'tour',1,NULL,NULL,''),(32,16,'Vehicle 7',8,10,'vehicle',1,NULL,NULL,''),(33,17,'Tour 20',20,11,'tour',1,NULL,NULL,''),(34,17,'Hotel 7',18,9,'hotel',1,NULL,NULL,''),(35,18,'Tour 21',25,8,'tour',1,NULL,NULL,''),(36,18,'Tour 22',10,7,'tour',1,NULL,NULL,''),(37,19,'Vehicle 8',15,15,'vehicle',1,NULL,NULL,''),(38,19,'Tour 23',12,6,'tour',1,NULL,NULL,''),(39,20,'Tour 24',20,5,'tour',1,NULL,NULL,''),(44,2,'Hotel 7',18,2,'hotel',1,'2023-06-24 15:33:50','2023-06-24 15:33:50',''),(50,22,'Eiffel Tower Hotel',200,1,'hotel',1,'2023-06-25 21:02:20','2023-06-26 16:20:10','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel01.jpg?alt=media&token=dcbda118-047f-494a-befd-85e517d253ad'),(55,25,'Eiffel Tower Hotel',200,1,'hotel',1,'2023-06-26 16:36:50','2023-06-26 16:36:50','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel01.jpg?alt=media&token=dcbda118-047f-494a-befd-85e517d253ad'),(56,25,'Eiffel Tower Tour',100,1,'tour',1,'2023-06-28 01:08:09','2023-06-28 01:08:09','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3'),(58,26,'Eiffel Tower Hotel',200,1,'hotel',1,'2023-06-28 09:50:14','2023-06-28 09:50:14','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel01.jpg?alt=media&token=dcbda118-047f-494a-befd-85e517d253ad'),(59,26,'Great Wall Hotel',300,2,'hotel',1,'2023-06-28 09:51:35','2023-06-28 09:51:35','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288'),(64,28,'Great Wall Hotel',300,2,'hotel',1,'2023-06-28 10:00:33','2023-06-28 10:00:33','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288'),(66,29,'Great Wall Hotel',300,2,'hotel',1,'2023-06-28 10:02:56','2023-06-28 10:02:56','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288'),(67,27,'ĐÀ NẴNG – BÀ NÀ/HUẾ – RỪNG DỪA BẢY MẪU – BẢO TÀNG TRANH 3D (BAY VIETJET AIR)',6480000,1,'tour',1,'2023-07-01 19:08:41','2023-07-01 23:34:40','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3'),(71,35,'ĐẢO CÔ TÔ - THIÊN ĐƯỜNG BIỂN',5800000,3,'tour',1,'2023-07-02 02:19:20','2023-07-02 02:19:20','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3'),(72,36,'ĐÀ NẴNG – BÀ NÀ/HUẾ – RỪNG DỪA BẢY MẪU – BẢO TÀNG TRANH 3D (BAY VIETJET AIR)',6480000,1,'tour',1,'2023-07-05 00:31:49','2023-07-05 00:31:58','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fcauvang.jpg?alt=media&token=03ada68a-6e56-4cc9-a488-89bef98fb619'),(73,36,'Standard Double Room',1270000,1,'room',1,'2023-07-05 08:04:40','2023-07-05 08:04:40','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1gdoi.jpg?alt=media&token=8d88272c-5069-49ff-95be-d540b219d267'),(91,38,'Grand Deluxe King Or Twin',1925000,11,'room',1,'2023-07-08 12:00:32','2023-07-08 12:00:32','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288'),(79,37,'ĐÀ NẴNG – BÀ NÀ/HUẾ – RỪNG DỪA BẢY MẪU – BẢO TÀNG TRANH 3D (BAY VIETNAM AIRLINES)',6480000,2,'tour',1,'2023-07-08 10:13:19','2023-07-08 10:13:19','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fcauvangdanang.jpg?alt=media&token=830bcc2d-33e9-4034-a498-1ac3745e6157'),(92,38,'Deluxe Apartment',2275000,12,'room',2,'2023-07-08 12:15:33','2023-07-08 12:15:37','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuong.jpg?alt=media&token=8a4c1761-c27d-4024-bdfa-e486baf98462');
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `blog_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `content` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FKkap39f76wn135k7ru564fbjb7` (`blog_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'Great article!',NULL,1),(1,2,'Thank you for sharing this useful information.',NULL,2),(1,3,'I want to know more about this destination.',NULL,3),(2,4,'What a beautiful picture!',NULL,4),(2,5,'I\'ve been to Bali and really like it.',NULL,5),(2,6,'Thank you for the helpful information about Bali.',NULL,6),(3,7,'Tokyo is a great city!',NULL,7),(3,8,'I look forward to the opportunity to visit Tokyo.',NULL,8),(3,9,'Do you have any suggestions for interesting places in Tokyo?',NULL,9),(4,10,'This blog inspired my trip.',NULL,10),(4,11,'Thank you for sharing your experience.',NULL,11),(4,12,'I researched more about this place and found it interesting.',NULL,12),(5,13,'This is a great destination!',NULL,13),(5,14,'I want to know more about interesting activities here.',NULL,14),(5,15,'Thank you for sharing details about this place.',NULL,15),(6,16,'Very interesting and helpful article!',NULL,16),(6,17,'I traveled here and have great memories.',NULL,17),(6,18,'Can you recommend good restaurants in Paris?',NULL,18),(7,19,'Thank you for sharing information about this hotel.',NULL,19),(7,20,'I have stayed at this hotel and feel very satisfied with the service.',NULL,20),(8,1,'I\'m planning my trip and need some suggestions.',NULL,21),(8,2,'Thank you for the helpful information about the hotel.',NULL,22),(9,3,'I want to try local food when I come here.',NULL,23),(9,4,'Thank you for sharing the food places.',NULL,24),(10,5,'This blog helped me get an overview of the place.',NULL,25),(10,6,'I would love to have a chance to visit this place.',NULL,26),(2,1,'Great tour',0,27),(2,1,'Great hotel',NULL,28),(1,22,'helu',0,29);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excluded`
--

DROP TABLE IF EXISTS `excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `excluded` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excluded`
--

LOCK TABLES `excluded` WRITE;
/*!40000 ALTER TABLE `excluded` DISABLE KEYS */;
INSERT INTO `excluded` VALUES (1,NULL,NULL,'Hành lí kí gửi mua thêm (nếu có).','1'),(2,NULL,NULL,'Vé cáp treo & các trò chơi Khu du lịch Bà Nà + Ăn trưa Buffet: 1,190,000 đồng/khách/khứ hồi.','1'),(3,NULL,NULL,'Nếu đi Huế: 850,000 đồng/người.','1'),(4,NULL,NULL,'Ngủ phòng đơn, đồ uống. Chi phí cá nhân khác ngoài chương trình.','1'),(5,NULL,NULL,'Tiền bồi dưỡng cho lái xe và hướng dẫn viên.','1'),(6,NULL,NULL,'PHỤ THU PHÒNG ĐƠN','1'),(7,NULL,NULL,'Hành lí kí gửi mua thêm (nếu có).','2'),(8,NULL,NULL,'Vé cáp treo & các trò chơi Khu du lịch Bà Nà + Ăn trưa Buffet: 1,190,000 đồng/khách/khứ hồi.','2'),(9,NULL,NULL,'Nếu đi Huế: 850,000 đồng/người.','2'),(10,NULL,NULL,'Ngủ phòng đơn, đồ uống. Chi phí cá nhân khác ngoài chương trình.','2'),(11,NULL,NULL,'Tiền bồi dưỡng cho lái xe và hướng dẫn viên.','2'),(12,NULL,NULL,'PHỤ THU PHÒNG ĐƠN','2'),(13,NULL,NULL,'Hóa đơn thuế GTGT','3'),(14,NULL,NULL,'Đồ uống trong các bữa ăn, trong khách sạn và các chi phí cá nhân khác','3'),(15,NULL,NULL,'Các dịch vụ và chi phí khác không đề cập đến trong chương trình','3'),(16,NULL,NULL,'Tiền típ cho lái xe và hướng dẫn viên:','3'),(17,NULL,NULL,'Trong trường hợp du khách thấy hài lòng với sự phục vụ của lái xe và hướng dẫn viên có thể tùy tâm thưởng tip cho lái xe và hướng dẫn viên. Số tiền tip này là hoàn toàn không bắt buộc nhưng theo thông lệ tối thiểu từ 50.000đ/khách/ngày','3'),(18,NULL,NULL,'Tip quy định với khách nước ngoài: 3 USD/khách/ngày','3'),(19,NULL,NULL,'Hóa đơn thuế GTGT (VAT), không lấy hóa đơn không phải trả thêm tiền','4'),(20,NULL,NULL,'Phụ thu phòng đơn được áp dụng trong trường hợp khách đăng ký đi một mình mà không thể ghép ngủ ghép cùng người khác hoặc do yêu cầu được ngủ riêng từ phía khách hàng.','4'),(21,NULL,NULL,'Đồ uống trong các bữa ăn, trong khách sạn và các chi phí cá nhân khác','4'),(22,NULL,NULL,'Chi phí xe ôm, xe điện đi tắm biển nếu du khách ngại đi bộ','4'),(23,NULL,NULL,'Các dịch vụ khác không đề cập đến trong chương trình hoặc không có trong mục bao gồm','4'),(24,NULL,NULL,'Các chi phí phát sinh hoặc phí tự túc có đề cập đến trong nội dung chương trình','4'),(25,NULL,NULL,'Tiền TIP với du khách Việt Nam (không bắt buộc), nhưng thông thường từ 100.000đ/khách/tour','4'),(26,NULL,NULL,'Tiền TIP với du khách Nước ngoài (TIP quy định), tối thiểu từ 15$/khách/tour','4'),(27,NULL,NULL,'Hóa đơn thuế GTGT','5'),(28,NULL,NULL,'Bảo hiểm du lịch do tính chất là khách lẻ ghép đoàn','5'),(29,NULL,NULL,'Đồ uống trong các bữa ăn, trong khách sạn và các chi phí cá nhân khác','5'),(30,NULL,NULL,'Các dịch vụ và chi phí khác không đề cập đến trong chương trình','5'),(31,NULL,NULL,'Tiền TIP (tự nguyện với du khách Việt Nam), nhưng thông thường từ: 250.000đ/khách','5'),(32,NULL,NULL,'Tiền TIP quy định với khách nước ngoài: tối thiểu $5/ngày x 5 ngày = $25/khách/tour','5'),(33,NULL,NULL,'Chi phí cá nhân không nằm trong chương trình','6'),(34,NULL,NULL,'Chi phí vào Vinpearl Nha Trang','6'),(35,NULL,NULL,'Chi phí tại các điểm tự túc','6'),(36,NULL,NULL,'Chi phí phòng đơn (nếu có). ','6'),(37,NULL,NULL,'Đồ uống.','6'),(38,NULL,NULL,'Tiền bồi dưỡng cho hướng dẫn viên và lái xe.','6');
/*!40000 ALTER TABLE `excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` datetime NOT NULL,
  `time_start` datetime NOT NULL,
  `admin_id` bigint NOT NULL,
  `location_id` bigint NOT NULL,
  `star` int NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKquc5qf8daoda0dnmbaflucssh` (`admin_id`),
  KEY `FK67s51cnq7o3nlcjh6pm27dqxb` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'2023-06-01 00:00:00','2023-06-01 00:00:00','HOTEL001','Millennium Hanoi Hotel là một khách sạn nằm trong khu vực an ninh, toạ lạc tại Cửa Nam.\nkhách sạn nằm cách Hanoi Train Street 0,25 km.\nKhông chỉ sở hữu vị trí đắc địa, Millennium Hanoi Hotel còn là một trong những khách sạn nằm cách Đình Làng Nghĩa Lộ chưa đầy 33,12 km và Nhà thờ Thường Lệ chưa đầy 19,92 km.\nThông tin về Millennium Hanoi Hotel\nKhông chỉ sở hữu vị trí giúp quý khách dễ dàng ghé thăm những địa điểm lý thú trong chuyến hành trình, Millennium Hanoi Hotel cũng sẽ mang đến cho quý khách trải nghiệm lưu trú mỹ mãn.\nMillennium Hanoi Hotel là đề xuất hàng đầu dành cho những tín đồ du lịch \"bụi\" mong muốn được nghỉ tại một khách sạn vừa thoải mái lại hợp túi tiền.\nDành cho những du khách muốn du lịch thoải mái cùng ngân sách tiết kiệm, Millennium Hanoi Hotel sẽ là lựa chọn lưu trú hoàn hảo, nơi cung cấp các tiện nghi chất lượng và dịch vụ tuyệt vời.\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại Millennium Hanoi Hotel\nMillennium Hanoi Hotel là lựa chọn sáng giá dành cho những ai đang tìm kiếm một trải nghiệm xa hoa đầy thú vị trong kỳ nghỉ của mình. Lưu trú tại đây cũng là cách để quý khách chiều chuộng bản thân với những dịch vụ xuất sắc nhất và khiến kỳ nghỉ của mình trở nên thật đáng nhớ.\nBạn có phải là tín đồ mua sắm? Lưu trú tại Millennium Hanoi Hotel chắc chắn sẽ thoả mãn bạn với hàng loạt các trung tâm mua sắm kề cận.\nKhi lưu trú tại khách sạn thì nội thất và kiến trúc hẳn là hai yếu tố quan trọng khiến quý khách mãn nhãn. Với thiết kế độc đáo, Millennium Hanoi Hotel mang đến không gian lưu trú làm hài lòng quý khách.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, Millennium Hanoi Hotel cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại Millennium Hanoi Hotel, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nHãy tận hưởng trải nghiệm lưu trú có một không hai tại toà nhà mang đậm dấu ấn lịch sử của Millennium Hanoi Hotel, điều quý khách khó có thể tìm thấy tại bất kỳ đâu.\nNếu dự định có một kỳ nghỉ dài, thì Millennium Hanoi Hotel chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Millennium Hanoi Hotel sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDu lịch một mình cũng không hề kém phần thú vị và Millennium Hanoi Hotel là nơi thích hợp dành riêng cho những ai đề cao sự riêng tư trong kỳ lưu trú.\nDịch vụ tuyệt vời, cơ sở vật chất hoàn chỉnh và các tiện nghi khách sạn cung cấp sẽ khiến quý khách không thể phàn nàn trong suốt kỳ lưu trú tại Millennium Hanoi Hotel.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Millennium Hanoi Hotel chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nMillennium Hanoi Hotel là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nVới những tiện nghi sẵn có Millennium Hanoi Hotel thực sự là một nơi lưu trú hoàn hảo.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fmillenium_hanoi.jpg?alt=media&token=599226a4-bb60-4b58-8a04-e296bedf8145','Millennium Hanoi Hotel',1270000,65,1,'2023-07-01 00:00:00','2023-06-01 00:00:00',5,6,3,'246B Hàng Bông, Cửa  Nam, Quận Hoàn Kiếm, Hà Nội, Việt Nam, 100000'),(2,'2023-06-02 00:00:00','2023-06-02 00:00:00','HOTEL002','Muong Thanh Hanoi Centre Hotel là một khách sạn nằm trong khu vực an ninh, toạ lạc tại Trần Hưng Đạo.\nkhách sạn nằm cách Hanoi Railway Station 0,69 km.\nKhông chỉ sở hữu vị trí đắc địa, Muong Thanh Hanoi Centre Hotel còn là một trong những khách sạn nằm cách Hồ Lác chưa đầy 49,77 km và Khu Sinh Thái Thiên Phú Lâm chưa đầy 30,16 km.\nThông tin về Muong Thanh Hanoi Centre Hotel\nMuong Thanh Hanoi Centre Hotel là đề xuất hàng đầu dành cho những tín đồ du lịch \"bụi\" mong muốn được nghỉ tại một khách sạn vừa thoải mái lại hợp túi tiền.\nDù quý khách muốn tổ chức một sự kiện hay các dịp kỷ niệm đặc biệt khác, Muong Thanh Hanoi Centre Hotel là lựa chọn tuyệt vời cho quý khách với phòng chức năng rộng lớn, được trang bị đầy đủ để sẵn sàng đáp ứng mọi yêu cầu.\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại Muong Thanh Hanoi Centre Hotel\nMuong Thanh Hanoi Centre Hotel là lựa chọn sáng giá dành cho những ai đang tìm kiếm một trải nghiệm xa hoa đầy thú vị trong kỳ nghỉ của mình. Lưu trú tại đây cũng là cách để quý khách chiều chuộng bản thân với những dịch vụ xuất sắc nhất và khiến kỳ nghỉ của mình trở nên thật đáng nhớ.\nBạn có phải là tín đồ mua sắm? Lưu trú tại Muong Thanh Hanoi Centre Hotel chắc chắn sẽ thoả mãn bạn với hàng loạt các trung tâm mua sắm kề cận.\nMột trong những đặc điểm chính của khách sạn này là các liệu pháp spa đa dạng. Hãy nâng niu bản thân bằng các liệu pháp thư giãn, phục hồi giúp quý khách tươi trẻ thân, tâm.\nKhi lưu trú tại khách sạn thì nội thất và kiến trúc hẳn là hai yếu tố quan trọng khiến quý khách mãn nhãn. Với thiết kế độc đáo, Muong Thanh Hanoi Centre Hotel mang đến không gian lưu trú làm hài lòng quý khách.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, Muong Thanh Hanoi Centre Hotel cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại Muong Thanh Hanoi Centre Hotel, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nNếu dự định có một kỳ nghỉ dài, thì Muong Thanh Hanoi Centre Hotel chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Muong Thanh Hanoi Centre Hotel sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDu lịch một mình cũng không hề kém phần thú vị và Muong Thanh Hanoi Centre Hotel là nơi thích hợp dành riêng cho những ai đề cao sự riêng tư trong kỳ lưu trú.\nHãy sẵn sàng đón nhận trải nghiệm khó quên bằng dịch vụ độc đáo và hoàn hảo của khách sạn cùng các tiện nghi đầy đủ, đáp ứng mọi nhu cầu của quý khách.\nNhận ưu đãi đặc biệt dành cho các liệu pháp spa tinh tuý nhất giúp thư giãn tinh thần và làm tươi trẻ cơ thể.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Muong Thanh Hanoi Centre Hotel chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nMuong Thanh Hanoi Centre Hotel là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nHãy sẵn sàng đón nhận những giây phút vô giá khó phai trong suốt kỳ nghỉ của quý khách tại Muong Thanh Hanoi Centre Hotel.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fmuongthanh_hanoi.jpg?alt=media&token=aeb3dc73-de01-456f-b288-a810f28f7c56','Muong Thanh Hanoi Centre Hotel',2200000,24,1,'2023-07-01 00:00:00','2023-06-02 00:00:00',5,6,4,'78 Thợ Nhuộm, Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội, Việt Nam, 100000'),(3,'2023-06-03 00:00:00','2023-06-03 00:00:00','HOTEL003','The Herriott Hotel & Suite toạ lạc tại khu vực / thành phố An Hải Bắc.\nkhách sạn sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 5,24 km.\nCó rất nhiều điểm tham quan lân cận như Khu cáp treo Bà Nà Hills ở khoảng cách 22,86 km, và Công Viên 29 Tháng 3 ở khoảng cách 3,67 km.\nThông tin về The Herriott Hotel & Suite\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại The Herriott Hotel & Suite\nMột trong những đặc điểm chính của khách sạn này là các liệu pháp spa đa dạng. Hãy nâng niu bản thân bằng các liệu pháp thư giãn, phục hồi giúp quý khách tươi trẻ thân, tâm.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, The Herriott Hotel & Suite cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại The Herriott Hotel & Suite, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nNếu dự định có một kỳ nghỉ dài, thì The Herriott Hotel & Suite chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, The Herriott Hotel & Suite sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDịch vụ tuyệt vời, cơ sở vật chất hoàn chỉnh và các tiện nghi khách sạn cung cấp sẽ khiến quý khách không thể phàn nàn trong suốt kỳ lưu trú tại The Herriott Hotel & Suite.\nHưởng thụ một ngày thư thái đầy thú vị tại hồ bơi dù quý khách đang du lịch một mình hay cùng người thân.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ The Herriott Hotel & Suite chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nThe Herriott Hotel & Suite là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nVới những tiện nghi sẵn có The Herriott Hotel & Suite thực sự là một nơi lưu trú hoàn hảo.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2FThe%20Herriott%20Hotel%20%26%20Suite.jpg?alt=media&token=18f1ed5e-420b-4dbe-ad4e-ac3172fbf395','The Herriott Hotel & Suite',1750000,69,1,'2023-06-03 00:00:00','2023-06-03 00:00:00',5,1,3,'Lô 7 & 8 Lê Văn Quý, An Hải Bắc, Sơn Trà, Đà Nẵng, Việt Nam, 550000'),(4,'2023-06-04 00:00:00','2023-06-04 00:00:00','HOTEL004','Tarasa Hotel là một khách sạn nằm trong khu vực an ninh, toạ lạc tại Quận Hải Châu.\nkhách sạn sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 4,07 km.\nKhông chỉ sở hữu vị trí đắc địa, Tarasa Hotel còn là một trong những khách sạn nằm cách Khu cáp treo Bà Nà Hills chưa đầy 20,66 km và Công Viên 29 Tháng 3 chưa đầy 1,91 km.\nThông tin về Tarasa Hotel\nDành cho những du khách muốn du lịch thoải mái cùng ngân sách tiết kiệm, Tarasa Hotel sẽ là lựa chọn lưu trú hoàn hảo, nơi cung cấp các tiện nghi chất lượng và dịch vụ tuyệt vời.\nDù quý khách muốn tổ chức một sự kiện hay các dịp kỷ niệm đặc biệt khác, Tarasa Hotel là lựa chọn tuyệt vời cho quý khách với phòng chức năng rộng lớn, được trang bị đầy đủ để sẵn sàng đáp ứng mọi yêu cầu.\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại Tarasa Hotel\nTarasa Hotel là lựa chọn sáng giá dành cho những ai đang tìm kiếm một trải nghiệm xa hoa đầy thú vị trong kỳ nghỉ của mình. Lưu trú tại đây cũng là cách để quý khách chiều chuộng bản thân với những dịch vụ xuất sắc nhất và khiến kỳ nghỉ của mình trở nên thật đáng nhớ.\nBạn có phải là tín đồ mua sắm? Lưu trú tại Tarasa Hotel chắc chắn sẽ thoả mãn bạn với hàng loạt các trung tâm mua sắm kề cận.\nTọa lạc gần sân bay, Tarasa Hotel là nơi nghỉ ngơi lý tưởng trong lúc quý khách đang chờ chuyến bay kế tiếp. Quý khách có thể tận hưởng không gian nghỉ dưỡng vừa ý nơi đây trong quá trình quá cảnh.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, Tarasa Hotel cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại Tarasa Hotel, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nNếu dự định có một kỳ nghỉ dài, thì Tarasa Hotel chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Tarasa Hotel sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDu lịch một mình cũng không hề kém phần thú vị và Tarasa Hotel là nơi thích hợp dành riêng cho những ai đề cao sự riêng tư trong kỳ lưu trú.\nDịch vụ tuyệt vời, cơ sở vật chất hoàn chỉnh và các tiện nghi khách sạn cung cấp sẽ khiến quý khách không thể phàn nàn trong suốt kỳ lưu trú tại Tarasa Hotel.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Tarasa Hotel chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nTarasa Hotel là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nVới những tiện nghi sẵn có Tarasa Hotel thực sự là một nơi lưu trú hoàn hảo.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2FTarasa%20Hotel.jpg?alt=media&token=460c3b1c-12fb-42a5-abe5-f6ff42e8e4bd','Tarasa Hotel',680000,50,1,'2023-06-04 00:00:00','2023-06-04 00:00:00',5,1,3,'191 Đống Đa, Quận Hải Châu, Đà Nẵng, Việt Nam, 550000'),(5,'2023-06-05 00:00:00','2023-06-05 00:00:00','HOTEL005','Melissa Hotel Nha Trang là một khách sạn nằm trong khu vực an ninh, toạ lạc tại Lộc Thọ.\nkhách sạn nằm cách Bến phà Vinpearl 1,14 km.\nKhông chỉ sở hữu vị trí đắc địa, Melissa Hotel Nha Trang còn là một trong những khách sạn nằm cách Trung tâm suối nước nóng Tháp Bà chưa đầy 5,35 km và Nhà Hàng Bia Tươi Louisiane chưa đầy 0,49 km.\nThông tin về Melissa Hotel Nha Trang\nDành cho những du khách muốn du lịch thoải mái cùng ngân sách tiết kiệm, Melissa Hotel Nha Trang sẽ là lựa chọn lưu trú hoàn hảo, nơi cung cấp các tiện nghi chất lượng và dịch vụ tuyệt vời.\nDù quý khách muốn tổ chức một sự kiện hay các dịp kỷ niệm đặc biệt khác, Melissa Hotel Nha Trang là lựa chọn tuyệt vời cho quý khách với phòng chức năng rộng lớn, được trang bị đầy đủ để sẵn sàng đáp ứng mọi yêu cầu.\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại Melissa Hotel Nha Trang\nBạn có phải là tín đồ mua sắm? Lưu trú tại Melissa Hotel Nha Trang chắc chắn sẽ thoả mãn bạn với hàng loạt các trung tâm mua sắm kề cận.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, Melissa Hotel Nha Trang cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại Melissa Hotel Nha Trang, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nNếu dự định có một kỳ nghỉ dài, thì Melissa Hotel Nha Trang chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Melissa Hotel Nha Trang sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDu lịch một mình cũng không hề kém phần thú vị và Melissa Hotel Nha Trang là nơi thích hợp dành riêng cho những ai đề cao sự riêng tư trong kỳ lưu trú.\nHãy sẵn sàng đón nhận trải nghiệm khó quên bằng dịch vụ độc đáo và hoàn hảo của khách sạn cùng các tiện nghi đầy đủ, đáp ứng mọi nhu cầu của quý khách.\nTrung tâm thể dục của khách sạn là một trong những tiện nghi không thể bỏ qua khi lưu trú tại đây.\nHưởng thụ một ngày thư thái đầy thú vị tại hồ bơi dù quý khách đang du lịch một mình hay cùng người thân.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Melissa Hotel Nha Trang chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nMelissa Hotel Nha Trang là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nHãy sẵn sàng đón nhận những giây phút vô giá khó phai trong suốt kỳ nghỉ của quý khách tại Melissa Hotel Nha Trang.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fmelisa%20nhatrang.jpg?alt=media&token=5a95b542-3565-4d82-bea8-25cd96a71b8c','Melissa Hotel Nha Trang',1482000,53,1,'2023-06-05 00:00:00','2023-06-06 00:00:00',5,5,3,'100A Trần Phú, Lộc Thọ, Nha Trang, Khánh Hòa, Việt Nam, 652108'),(6,'2023-06-06 00:00:00','2023-06-06 00:00:00','HOTEL006','Muong Thanh Luxury Nha Trang toạ lạc tại khu vực / thành phố Lộc Thọ.\nkhách sạn nằm cách Nha Trang Railway Station 1,87 km.\nCó rất nhiều điểm tham quan lân cận như Trung Tâm Y Tế Huyện Khánh Sơn ở khoảng cách 36,5 km, và Khu Công Nghiệp Suối Dầu ở khoảng cách 15,54 km.\nThông tin về Muong Thanh Luxury Nha Trang\nDù quý khách muốn tổ chức một sự kiện hay các dịp kỷ niệm đặc biệt khác, Muong Thanh Luxury Nha Trang là lựa chọn tuyệt vời cho quý khách với phòng chức năng rộng lớn, được trang bị đầy đủ để sẵn sàng đáp ứng mọi yêu cầu.\nKhách sạn này là lựa chọn hoàn hảo cho các kỳ nghỉ mát lãng mạn hay tuần trăng mật của các cặp đôi. Quý khách hãy tận hưởng những đêm đáng nhớ nhất cùng người thương của mình tại Muong Thanh Luxury Nha Trang\nMuong Thanh Luxury Nha Trang là lựa chọn sáng giá dành cho những ai đang tìm kiếm một trải nghiệm xa hoa đầy thú vị trong kỳ nghỉ của mình. Lưu trú tại đây cũng là cách để quý khách chiều chuộng bản thân với những dịch vụ xuất sắc nhất và khiến kỳ nghỉ của mình trở nên thật đáng nhớ.\nBạn có phải là tín đồ mua sắm? Lưu trú tại Muong Thanh Luxury Nha Trang chắc chắn sẽ thoả mãn bạn với hàng loạt các trung tâm mua sắm kề cận.\nTừ sự kiện doanh nghiệp đến họp mặt công ty, Muong Thanh Luxury Nha Trang cung cấp đầy đủ các dịch vụ và tiện nghi đáp ứng mọi nhu cầu của quý khách và đồng nghiệp.\nHãy tận hưởng thời gian vui vẻ cùng cả gia đình với hàng loạt tiện nghi giải trí tại Muong Thanh Luxury Nha Trang, một khách sạn tuyệt vời phù hợp cho mọi kỳ nghỉ bên người thân.\nNếu dự định có một kỳ nghỉ dài, thì Muong Thanh Luxury Nha Trang chính là lựa chọn dành cho quý khách. Với đầy đủ tiện nghi với chất lượng dịch vụ tuyệt vời, Muong Thanh Luxury Nha Trang sẽ khiến quý khách cảm thấy thoải mái như đang ở nhà vậy.\nDịch vụ thượng hạng song hành với hàng loạt tiện nghi phong phú sẽ đem đến cho quý khách trải nghiệm của một kỳ nghỉ viên mãn nhất.\nQuầy tiếp tân 24 giờ luôn sẵn sàng phục vụ quý khách từ thủ tục nhận phòng đến trả phòng hay bất kỳ yêu cầu nào. Nếu cần giúp đỡ xin hãy liên hệ đội ngũ tiếp tân, chúng tôi luôn sẵn sàng hỗ trợ quý khách.\nTận hưởng những món ăn yêu thích với phong cách ẩm thực đặc biệt từ Muong Thanh Luxury Nha Trang chỉ dành riêng cho quý khách.\nSóng WiFi phủ khắp các khu vực chung của khách sạn cho phép quý khách luôn kết nối với gia đình và bè bạn.\nMuong Thanh Luxury Nha Trang là khách sạn sở hữu đầy đủ tiện nghi và dịch vụ xuất sắc theo nhận định của hầu hết khách lưu trú.\nTận hưởng trải nghiệm lưu trú xa hoa đầy thú vị không đâu sánh bằng tại Muong Thanh Luxury Nha Trang.\n\n','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fmuong%20thanh%20nha%20trang.jpg?alt=media&token=84fc16c0-dbd8-495b-adfc-ef6971caaa7a','Mường Thanh Luxury Nha Trang',3000000,25,1,'2023-06-06 00:00:00','2023-06-06 00:00:00',5,5,5,'60 Trần Phú, Lộc Thọ, Nha Trang, Khánh Hòa 650000'),(7,'2023-06-07 00:00:00','2023-06-07 00:00:00','HOTEL007','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel07.jpg?alt=media&token=2de2444c-c296-40fd-be3f-1bbda00dacdb','Bali Hotel',220,15,1,'2023-07-01 00:00:00','2023-06-07 00:00:00',5,7,0,''),(8,'2023-06-08 00:00:00','2023-06-08 00:00:00','HOTEL008','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel08.jpg?alt=media&token=2f5fae48-78a8-46af-9b75-2de5754894fd','Kyoto Hotel',180,0,1,'2023-06-08 00:00:00','2023-06-08 00:00:00',5,8,0,''),(9,'2023-06-09 00:00:00','2023-06-09 00:00:00','HOTEL009','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel09.jpg?alt=media&token=13e25bca-935b-4c24-ba5d-4c10c82f8237','Athens Hotel',280,0,1,'2023-09-09 00:00:00','2023-06-09 00:00:00',5,9,0,''),(10,'2023-06-10 00:00:00','2023-06-10 00:00:00','HOTEL010','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel10.jpg?alt=media&token=1bbe0c27-d581-479d-b9c9-229e97d9eeb6','Cancun Hotel',400,0,1,'2023-06-10 00:00:00','2023-06-10 00:00:00',5,10,0,''),(11,'2023-06-11 00:00:00','2023-06-11 00:00:00','HOTEL011','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel11.jpg?alt=media&token=ac7c495b-712a-4ab3-bd59-4842e7c43f22','Banff Hotel',320,0,1,'2023-06-11 00:00:00','2023-06-11 00:00:00',5,11,0,''),(12,'2023-06-12 00:00:00','2023-06-12 00:00:00','HOTEL012','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel12.jpg?alt=media&token=e09dff74-11d6-434c-a563-bc51b7d91096','Dubai Hotel',500,30,1,'2023-07-01 00:00:00','2023-06-12 00:00:00',5,12,0,''),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','HOTEL013','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel13.jpg?alt=media&token=c6810b15-8b46-42f5-8582-a7292d1f7ac7','Aspen Hotel',380,0,1,'2023-06-13 00:00:00','2023-06-13 00:00:00',5,13,0,''),(14,'2023-06-14 00:00:00','2023-06-14 00:00:00','HOTEL014','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel14.jpg?alt=media&token=197d62bb-5512-4b07-b508-765fbe2cc259','Prague Hotel',250,10,1,'2023-07-01 00:00:00','2023-06-14 00:00:00',5,14,0,''),(15,'2023-06-15 00:00:00','2023-06-15 00:00:00','HOTEL015','All-inclusive resort in Punta Cana, Dominican Republic.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel15.jpg?alt=media&token=09cb1070-1113-45ea-afc0-21b97eddfd49','Punta Cana Hotel',450,0,1,'2023-06-15 00:00:00','2023-06-15 00:00:00',5,15,0,''),(16,'2023-06-16 00:00:00','2023-06-16 00:00:00','HOTEL016','Historic hotel in the heart of Vienna, Austria.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel16.jpg?alt=media&token=13695fb6-b042-417d-acc5-0920d4ad325d','Vienna Hotel',280,5,1,'2023-06-16 00:00:00','2023-06-16 00:00:00',5,16,0,''),(17,'2023-06-17 00:00:00','2023-06-17 00:00:00','HOTEL017','Beachfront resort in Phuket, Thailand.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel17.jpg?alt=media&token=41153c1a-d198-4e73-a105-2edd75a32fc0','Phuket Hotel',380,0,1,'2023-06-17 00:00:00','2023-06-17 00:00:00',5,17,0,''),(18,'2023-06-18 00:00:00','2023-06-18 00:00:00','HOTEL018','Luxurious hotel in the heart of Paris, France.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel18.jpg?alt=media&token=84ac0020-f3c8-4a3d-b8f6-d1ab1cb5fee0','Paris Hotel',500,0,1,'2023-06-18 00:00:00','2023-06-18 00:00:00',5,18,0,''),(19,'2023-06-19 00:00:00','2023-06-19 00:00:00','HOTEL019','Mountain lodge in the Swiss Alps.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel19.jpg?alt=media&token=3d850f6e-de15-4bbc-be97-a7dffe187d4e','Swiss Alps Hotel',320,0,1,'2023-06-19 00:00:00','2023-06-19 00:00:00',5,19,0,''),(20,'2023-06-20 00:00:00','2023-06-20 00:00:00','HOTEL020','Luxury hotel in the heart of Barcelona, Spain.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel20.jpg?alt=media&token=e5f95e45-bc2f-4436-b17d-bb82480cc19a','Barcelona Hotel',380,0,1,'2023-06-20 00:00:00','2023-06-20 00:00:00',5,20,0,'');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_amenity`
--

DROP TABLE IF EXISTS `hotel_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel_amenity` (
  `hotel_id` bigint NOT NULL,
  `amenityhotel_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`amenityhotel_id`),
  KEY `FKo28so4bgd8cf6pxmimvbjktcl` (`amenityhotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_amenity`
--

LOCK TABLES `hotel_amenity` WRITE;
/*!40000 ALTER TABLE `hotel_amenity` DISABLE KEYS */;
INSERT INTO `hotel_amenity` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74),(2,75),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(3,95),(3,96),(3,97),(3,98),(3,99),(3,100),(3,101),(3,102),(3,103),(3,104),(3,105),(3,106),(3,107),(3,108),(3,109),(3,110),(3,111),(3,112),(3,113),(3,114),(3,115),(3,116),(3,117),(3,118),(3,119),(3,120),(3,121),(3,122),(3,123),(3,124),(3,125),(3,126),(3,127),(3,128),(3,129),(3,130),(3,131),(3,132),(3,133),(3,134),(3,135),(3,136),(3,137),(3,138),(3,139),(3,140),(3,141),(3,142),(3,143),(3,144),(3,145),(3,146),(3,147),(3,148),(3,149),(3,150),(3,151),(4,152),(4,153),(4,154),(4,155),(4,156),(4,157),(4,158),(4,159),(4,160),(4,161),(4,162),(4,163),(4,164),(4,165),(4,166),(4,167),(4,168),(4,169),(4,170),(4,171),(4,172),(4,173),(4,174),(4,175),(4,176),(4,177),(4,178),(4,179),(4,180),(4,181),(4,182),(4,183),(4,184),(4,185),(4,186),(4,187),(4,188),(4,189),(4,190),(4,191),(4,192),(4,193),(4,194),(4,195),(4,196),(4,197),(4,198),(4,199),(4,200),(4,201),(4,202),(4,203),(4,204),(4,205),(4,206),(4,207),(4,208),(4,209),(4,210),(4,211),(4,212),(4,213),(4,214),(4,215),(4,216),(4,217),(4,218),(5,219),(5,220),(5,221),(5,222),(5,223),(5,224),(5,225),(5,226),(5,227),(5,228),(5,229),(5,230),(5,231),(5,232),(5,233),(5,234),(5,235),(5,236),(5,237),(5,238),(5,239),(5,240),(5,241),(5,242),(5,243),(5,244),(5,245),(5,246),(5,247),(5,248),(5,249),(5,250),(5,251),(5,252),(5,253),(5,254),(5,255),(5,256),(5,257),(5,258),(5,259),(5,260),(5,261),(5,262),(5,263),(5,264),(5,265),(5,266),(5,267),(5,268),(5,269),(5,270),(5,271),(5,272),(5,273),(5,274),(5,275),(5,276),(5,277),(5,278),(5,279),(6,280),(6,281),(6,282),(6,283),(6,284),(6,285),(6,286),(6,287),(6,288),(6,289),(6,290),(6,291),(6,292),(6,293),(6,294),(6,295),(6,296),(6,297),(6,298),(6,299),(6,300),(6,301),(6,302),(6,303),(6,304),(6,305),(6,306),(6,307),(6,308),(6,309),(6,310),(6,311),(6,312),(6,313),(6,314),(6,315),(6,316),(6,317),(6,318),(6,319),(6,320),(6,321),(6,322),(6,323),(6,324),(6,325),(6,326),(6,327),(6,328),(6,329),(6,330),(6,331),(6,332),(6,333),(6,334),(6,335),(6,336),(6,337),(6,338),(6,339);
/*!40000 ALTER TABLE `hotel_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_landmark`
--

DROP TABLE IF EXISTS `hotel_landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel_landmark` (
  `hotel_id` bigint NOT NULL,
  `landmark_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`landmark_id`),
  KEY `FKjvn3j36s694k2cvkq9mk76ogr` (`landmark_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_landmark`
--

LOCK TABLES `hotel_landmark` WRITE;
/*!40000 ALTER TABLE `hotel_landmark` DISABLE KEYS */;
INSERT INTO `hotel_landmark` VALUES (1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,20),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,21),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(5,29),(5,30),(5,31),(5,32),(5,33),(5,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(14,11),(14,12),(15,13),(15,14),(15,15),(16,1),(16,2),(16,3),(17,4),(17,5),(17,6),(18,7),(18,8),(18,9),(19,10),(19,11),(19,12),(20,13),(20,14),(20,15);
/*!40000 ALTER TABLE `hotel_landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_review`
--

DROP TABLE IF EXISTS `hotel_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel_review` (
  `hotel_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `FK93xannw8r60drn1edtfa5e1e9` (`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_review`
--

LOCK TABLES `hotel_review` WRITE;
/*!40000 ALTER TABLE `hotel_review` DISABLE KEYS */;
INSERT INTO `hotel_review` VALUES (1,31),(2,32),(3,33),(4,34),(5,35),(6,36),(7,37),(8,38),(9,39),(10,40);
/*!40000 ALTER TABLE `hotel_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_room`
--

DROP TABLE IF EXISTS `hotel_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel_room` (
  `hotel_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`room_id`),
  KEY `FK3agyuk66kblb5rv6986of98c2` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_room`
--

LOCK TABLES `hotel_room` WRITE;
/*!40000 ALTER TABLE `hotel_room` DISABLE KEYS */;
INSERT INTO `hotel_room` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(2,9),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(5,16),(5,17),(5,18),(5,19),(6,20),(6,21),(6,22),(6,23),(6,24),(6,25);
/*!40000 ALTER TABLE `hotel_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_rule`
--

DROP TABLE IF EXISTS `hotel_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hotel_rule` (
  `hotel_id` bigint NOT NULL,
  `rule_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`rule_id`),
  KEY `FK9q91ur8icuuc7x4rob09urxny` (`rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_rule`
--

LOCK TABLES `hotel_rule` WRITE;
/*!40000 ALTER TABLE `hotel_rule` DISABLE KEYS */;
INSERT INTO `hotel_rule` VALUES (1,18),(1,19),(1,20),(2,21),(2,22),(2,23),(3,24),(3,25),(3,26),(3,27),(3,28),(4,29),(4,30),(4,31),(4,32),(4,33),(4,34),(5,35),(5,36),(5,37),(6,38),(6,39),(6,40),(6,41),(6,42);
/*!40000 ALTER TABLE `hotel_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `included`
--

DROP TABLE IF EXISTS `included`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `included` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `included`
--

LOCK TABLES `included` WRITE;
/*!40000 ALTER TABLE `included` DISABLE KEYS */;
INSERT INTO `included` VALUES (1,NULL,NULL,'1 kiện xách tay chính không quá 7 kg + 1 túi nhỏ 2 kg (không cộng dồn hành lý xách tay)','1'),(2,NULL,NULL,'20 kg hành lý ký gửi (mỗi khách được phép mua thêm 1 kiện hành lí kí gửi không quá 40 kg. Chi phí mua thêm hành lí kí gửi tùy thuộc vào số kg mà hành khách cần).','1'),(3,NULL,NULL,'Xe ôtô máy lạnh hiện đại phục vụ riêng cho đoàn','1'),(4,NULL,NULL,'Các bữa ăn theo chương trình, mức ăn 150,000 đồng/khách/bữa ăn chính','1'),(5,NULL,NULL,'Ăn sáng buffet tại khách sạn.','1'),(6,NULL,NULL,'Quý khách được lo vé vào cổng tại các điểm du lịch trong chương trình.','1'),(7,NULL,NULL,'Quý khách được mua bảo hiểm du lịch suốt tuyến với mức đền bù tối đa 120,000,000 đồng/người.','1'),(8,NULL,NULL,'Quý khách được phục vụ nước suối trên xe, định mức 1 chai/người/ngày','1'),(9,NULL,NULL,'Hướng dẫn viên đón tiễn sân bay tại Hà Nội','1'),(10,NULL,NULL,'Hướng dẫn viên tại Đà Nẵng, kinh nghiệm nhiệt tình, thuyết minh tuyến điểm, phục vụ đoàn theo chương trình.','1'),(11,NULL,NULL,'Thuế VAT','1'),(12,NULL,NULL,'1 kiện xách tay chính không quá 7 kg + 1 túi nhỏ 2 kg (không cộng dồn hành lý xách tay)','1'),(13,NULL,NULL,'20 kg hành lý ký gửi (mỗi khách được phép mua thêm 1 kiện hành lí kí gửi không quá 40 kg. Chi phí mua thêm hành lí kí gửi tùy thuộc vào số kg mà hành khách cần).','1'),(14,NULL,NULL,'Xe ôtô máy lạnh hiện đại phục vụ riêng cho đoàn','1'),(15,NULL,NULL,'Nghỉ đêm tại KS Sekong 3* mặt biển hoặc tương đương, Mandila 4* hoặc tương đương; Mường Thanh 5* hoặc tương đương. Giờ nhận phòng sớm nhất từ 14h00; trả phòng muộn nhất 12h00) (02 người lớn/phòng – nhóm lẻ khách sử dụng phòng 3, trẻ em ngủ cùng bố mẹ không có tiêu chuẩn phòng riêng)','1'),(16,NULL,NULL,'Các bữa ăn theo chương trình, mức ăn 150,000 đồng/khách/bữa ăn chính','1'),(17,NULL,NULL,'Ăn sáng buffet tại khách sạn.','1'),(18,NULL,NULL,'Quý khách được lo vé vào cổng tại các điểm du lịch trong chương trình.','1'),(19,NULL,NULL,'Quý khách được mua bảo hiểm du lịch suốt tuyến với mức đền bù tối đa 120,000,000 đồng/người.','1'),(20,NULL,NULL,'Quý khách được phục vụ nước suối trên xe, định mức 1 chai/người/ngày','1'),(21,NULL,NULL,'Hướng dẫn viên đón tiễn sân bay tại Hà Nội','1'),(22,NULL,NULL,'Hướng dẫn viên tại Đà Nẵng, kinh nghiệm nhiệt tình, thuyết minh tuyến điểm, phục vụ đoàn theo chương trình.','1'),(23,NULL,NULL,'Thuế VAT','1'),(57,NULL,NULL,'01 đêm khách sạn 2 sao tại Cao Bằng','5'),(55,NULL,NULL,'03 đêm ngủ khách sạn + 01 đêm homestay, tiêu chuẩn 02 người/phòng (lẻ ghép ngủ 3)','5'),(56,NULL,NULL,'02 đêm khách sạn tiêu chuẩn tại Yên Minh và Bảo Lạc','5'),(52,NULL,NULL,'Hướng dẫn viên phục vụ đoàn theo lịch trình (thông thường cuối tuần sẽ có HDV suốt tuyến)','4'),(53,NULL,NULL,'Nước uống phục vụ trên xe ô tô ngày đi và về, 02 chai 500ml/khách/tour','4'),(54,NULL,NULL,'Xe ô tô 7 đến 29 chỗ máy lạnh, lái xe nhiều kinh nghiệm đưa đón theo chương trình','5'),(50,NULL,NULL,'Tàu thăm quan vịnh Lan Hạ','4'),(51,NULL,NULL,'Chèo Kayaking ở Hang Sáng - Hang Tối','4'),(49,NULL,NULL,'Vé thăm quan Vịnh Lan Hạ','4'),(48,NULL,NULL,'02 bữa ăn sáng theo tiêu chuẩn của khách sạn (buffet hoặc bún phở tùy ngày)','4'),(47,NULL,NULL,'Các bữa ăn theo chương trình 150.000/suất x 3 bữa chính + 1 bữa 200.000đ/ suất (ăn trưa trên vịnh)','4'),(46,NULL,NULL,'02 đêm khách sạn 2 sao hoặc 3 sao (tùy theo đăng ký tour), ngủ 02 người/phòng (lẻ ghép ngủ 3)','4'),(45,NULL,NULL,'Xe ô tô du lịch 7-16-29-35-45 chỗ (tùy số lượng khách) phục vụ theo chương trình','4'),(36,NULL,NULL,'Xe ô tô du lịch đời mới, máy lạnh đưa đón Hà Nội - Cái Rồng - Hà Nội','3'),(37,NULL,NULL,'Vé tàu cao tốc khứ hồi: Vân Đồn -  Cô Tô -  Vân Đồn','3'),(38,NULL,NULL,'Xe vận chuyển trên đảo: xe điện, xe máy (tùy lượng khách hoặc tình hình thực tế trên đảo)','3'),(39,NULL,NULL,'Khách sạn theo tiêu chuẩn đăng ký (đầy đủ tiện nghi cơ bản), 02-03-04 người/phòng (tùy lựa chọn)','3'),(40,NULL,NULL,'02 bữa ăn chính trên đất liền, mức ăn 150.000đ/suất','3'),(41,NULL,NULL,'03 bữa ăn chính trên đảo, mức ăn 200.000đ/suất','3'),(42,NULL,NULL,'02 bữa ăn sáng bún hoặc phở hoặc cháo với mức ăn 35.000đ/suất','3'),(43,NULL,NULL,'Hướng dẫn viên tiếng Việt phục vụ đoàn theo lịch trình','3'),(44,NULL,NULL,'Nước uống phục vụ trên xe ô tô ngày đi và về, 02 chai 500ml/khách/tour','3'),(58,NULL,NULL,'01 đêm homestay bản Tày ven Hồ Ba Bể','5'),(59,NULL,NULL,'09 bữa ăn chính theo chương trình (3-4 món chính, 02 món rau, cơm, canh). 04 bữa sáng tiêu chuẩn','5'),(60,NULL,NULL,'Thuyền thăm Hồ Ba Bể và các vé thăm quan các điểm có trong chương trình','5'),(61,NULL,NULL,'Hướng dẫn viên phục vụ nhiệt tình, thành thạo, chu đáo xuyên suốt tuyến du lịch','5'),(62,NULL,NULL,'Nước uống phục vụ trên xe, mỗi ngày 01 chai 500ml','5'),(63,NULL,NULL,'Vé máy bay khứ hồi HAN - DLI // NHA - HAN  của hàng không Vietjet Air (đã bao gồm 07kg hành lý xách tay và 20kg hành lý ký gửi)','6'),(64,NULL,NULL,'01 Xe vận chuyển (16c, 29c, 35c, 45c) phục vụ suốt tuyến','6'),(65,NULL,NULL,'Khách sạn tiêu chuẩn 3* tại Đà Lạt và 4* tại Nha Trang, phòng nghỉ 02 người/ phòng, nếu đoàn lẻ người hoặc lẻ nam lẻ nữ thì sử dụng phòng ba 03 người/ phòng','6'),(66,NULL,NULL,'Ăn theo chương trình: Ăn chính định mức 150.000vnd/người/bữa x 06 bữa.','6'),(67,NULL,NULL,'Ăn sáng tại khách sạn.','6'),(68,NULL,NULL,'Vé tham quan 1 lần tại các điểm tham quan theo chương trình.','6'),(69,NULL,NULL,'HDV kinh nghiệm, nhiệt tình phục vụ suốt tuyến','6'),(70,NULL,NULL,'Mũ + 01 chai nước suối 500ml/người/ngày trên xe ô tô.','6'),(71,NULL,NULL,'Hướng dẫn viên kinh nghiệm, thuyết minh tuyến điểm, phục vụ đoàn theo chương trình.','6'),(72,NULL,NULL,'Bảo hiểm du lịch chi trả tối đa 120.000.000VND/người/vụ (tùy theo từng sự vụ).','6');
/*!40000 ALTER TABLE `included` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `itinerary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary`
--

LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` VALUES (1,NULL,NULL,'1','Đi Thứ 7: 04:00 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VJ503 đi Đà Nẵng lúc 06:30 của Hàng không Vietjet Air.\n07:50 Đến sân bay Đà Nẵng, xe đón đoàn đi ăn sáng (chi phí tự túc).\nĐi Chủ Nhật: 09:00 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VJ507 đi Đà Nẵng lúc 11:35 của Hàng không Vietjet Air. 12:55 Đến sân bay Đà Nẵng, xe đưa đoàn đi ăn nhẹ (Bún/miến/phở).\nXe và HDV đón đoàn đi tham quan:\nBán Đảo Sơn Trà (Monkey Mountain) để thưởng ngoạn toàn cảnh phố biển Đà Nẵng từ trên cao, dọc theo triền núi Đông Nam để chiêm ngưỡng vẻ đẹp tuyệt mỹ của biển Đà Nẵng, viếng Linh Ứng Tự - nơi có tượng Phật Bà 65m cao nhất Việt Nam.\nTrưa: Ăn trưa tại khách sạn. Sau đó đoàn nhận phòng (Đối với đi từ thứ 7)\nChiều: Đoàn đi tham quan:\nCầu tình yêu Đà Nẵng – Dấu ấn tình yêu với những cột đèn lồng hình trái tim\nNhà thờ chính tòa Đà Nẵng.\nTối: Ăn tối tại nhà hàng,  Quý khách tự do trải nghiệm cảm giác với Vòng quay Mặt trời Sun Wheel - Top 10 vòng quay cao nhất Thế Giới, chiêm ngưởng vẻ đẹp Đà Thành về đêm (chi phí tự túc). Nghỉ đêm tại khách sạn mặt biển.','NGÀY 1: HÀ NỘI - ĐÀ NẰNG - BÁN ĐẢO SƠN TRÀ - CẦU TÌNH YÊU (ĂN TRƯA, TỐI)'),(2,NULL,NULL,'2','06:30 Ăn sáng tại khách sạn.\nLựa chọn 1: Vé cáp treo Bà Nà + ăn buffet Bà Nà: 1,190,000 đồng/người – (chi phí tự túc)\n07:30 Đoàn khởi hành đi Khu du lịch Bà Nà - nơi có thể khám phá những khoảnh khắc giao mùa bất ngờ trong một ngày. Quý khách tham quan: \nĐi cáp treo đạt 2 kỷ lục của thế giới - cáp treo một dây dài nhất (gần 6000m) và có độ cao chênh lệch giữa ga đi và ga đến lớn nhất. \nViếng chùa Linh Ứng với tượng Phật Thích Ca cao 27m, tham quan Vườn Lộc Uyển, Quan Âm Các.\nTham gia vào các trò chơi tại  Fantasy Park với các trò chơi phiêu lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như vòng quay tình yêu, Phi công Skiver, Đường đua lửa, Xe điện đụng Ngôi nhà ma...  \nĂn trưa buffet tại nhà hàng\n15:00 Trở về chân núi, xe đưa đoàn trở về nghỉ ngơi và tắm biển.\nLựa chọn 2: Nếu Quý Khách đi Huế + gồm ăn trưa: 850,000 đồng/người – (chi phí tự túc)\n07:30 Quý khách khởi hành đi Cố Đô Huế - Di sản văn hóa Thế giới, xuyên đường hầm đèo Hải Vân. Đến Huế Quý khách thăm quan Lăng Khải Định/ Lăng Tự Đức một trong những Lăng đẹp, lãng mạn, trữ tình phản ánh đúng cuộc đời của vị vua tài hoa nhưng gặp phải tình cảnh đất nước éo le.\n12:00 Ăn trưa tại nhà hàng với những món đặc sản xứ Huế.\nChiều: Quý khách tham quan Đại Nội Hoàng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối cùng của Việt Nam: Ngọ Môn, Điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh). Trải nghiệm VR thực tế ảo với chủ đề “Đi tìm Hoàng Cung đã mất”.\n15:00 : thăm quan Chùa Thiên Mụ cổ kính được xây dựng từ những năm đầu của thế kỉ XVII.\n16:00 Quý khách lên xe khởi hành về Đà Nẵng.\nLựa chọn 3: Quý khách không chọn lựa chọn 1, 2\nQuý khách tự do tắm biển, tham quan thành phố Đà Nẵng, tự túc ăn trưa\nTối: Ăn tối tại nhà hàng. Buổi tối quý khách tự do khám phá thành phố biển về đêm. Nghỉ đêm tại khách sạn mặt biển.','NGÀY 2: ĐÀ NẴNG - KDL BÀ NÀ HILL/HUẾ (ĂN SÁNG, TỐI)'),(3,NULL,NULL,'3','Ăn sáng tại khách sạn.\n07:30 Xe đón quý khách khởi hành đi Khu du lịch sinh thái Rừng dừa bảy mẫu\nĂn sáng tại khách sạn.\n07:30 Xe đón quý khách khởi hành đi Khu du lịch sinh thái Rừng dừa bảy mẫu. Tham gia các trò chơi dân gian, đạp niêu, đua thuyền, đua thúng, câu cá…\nTrưa: Ăn trưa tại nhà hàng.\n15:30 Xe đưa đoàn đi thăm khu phố cổ Hội An - được UNESCO công nhận là di sản văn hoá thế giới vào tháng 12/1999: bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà cổ Tấn Ký, chùa cầu Nhật Bản ăn tối tại Hội an tự do khám phá phố cổ về đêm.\nTối: Đoàn ăn tối tại nhà hàng ở Hội An.\nSau bữa tối, đoàn tập trung lên xe và hướng dẫn đưa đoàn khởi hành về Đà Nẵng. Nghỉ đêm tại khách sạn mặt biển.','NGÀY 3: ĐÀ NẴNG - RỪNG DỪA BẢY MẪU - PHỐ CỔ HỘI AN (ĂN SÁNG, TRƯA, TỐI)'),(4,NULL,NULL,'4','Ăn sáng tại khách sạn. Sau đó trả phòng.\n07:30 Xe đưa quý khách tham quan Bảo tàng tranh 3D - Thiên đường sống ảo “cháy máy” cho các tín đồ du lịch (Chi phí tự túc).\n09:30 Xe đưa đoàn đi mua sắm đồ về làm quà.\nVề thứ 3: Sau đó đoàn ra sân bay làm thủ tục lên chuyến bay VJ516 lúc 13:35 khởi hành về Hà Nội.\nVề thứ 4: Trưa: Ăn trưa tại khách sạn\nSau đó đoàn ra sân bay làm thủ tục lên chuyến bay VJ516 lúc 13:35 khởi hành về Hà Nội.\nVề đến sân bay Nội Bài, xe đón quý khách về điểm hẹn ban đầu, chia tay quý khách. Kết thúc chương trình.','NGÀY 4: BẢO TÀNG TRANH 3D - HÀ NỘI – HẸN GẶP LẠI'),(5,NULL,NULL,'1','Đối với các đoàn khởi hành 23/5, 03/6, 14/7, 16/7 và 24/7: 05:30 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VN165 đi Đà Nẵng lúc 08:05 của Hàng không Vietnam Airlines.\nĐối với các đoàn khởi hành 20/6, 30/6, 23/7 và 29/7: 08:45 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VN183 đi Đà Nẵng lúc 10:40 của Hàng không Vietnam Airlines.\nĐến sân bay Đà Nẵng, xe và HDV đón đoàn đi tham quan:\nBán Đảo Sơn Trà (Monkey Mountain) để thưởng ngoạn toàn cảnh phố biển Đà Nẵng từ trên cao, dọc theo triền núi Đông Nam để chiêm ngưỡng vẻ đẹp tuyệt mỹ của biển Đà Nẵng, viếng Linh Ứng Tự - nơi có tượng Phật Bà 65m cao nhất Việt Nam.\nTrưa: Ăn trưa tại nhà hàng. Sau đó, đoàn về khách sạn nhận phòng.\nChiều: Đoàn đi tham quan:\nCầu tình yêu Đà Nẵng – Dấu ấn tình yêu với những cột đèn lồng hình trái tim\nNhà thờ chính tòa Đà Nẵng\nĐối với các đoàn khởi hành 26/5, 17/6 và 22/7: 10:00 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VN167 đi Đà Nẵng lúc 12:30 của Hàng không Vietnam Airlines.\nĐến sân bay Đà Nẵng, xe và HDV đón đoàn về khách sạn nhận phòng.\nChiều: Đoàn đi tham quan:\nCầu tình yêu Đà Nẵng – Dấu ấn tình yêu với những cột đèn lồng hình trái tim\nNhà thờ chính tòa Đà Nẵng\nĐối với các đoàn khởi hành 29/6 và 28/7: 14:15 Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VN169 và VN7167 đi Đà Nẵng lúc 16:45 và 17:15 của Hàng không Vietnam Airlines.\nĐến sân bay Đà Nẵng, xe và HDV đón đoàn về khách sạn nhận phòng.\nTối: Ăn tối tại nhà hàng, Quý khách tự do trải nghiệm cảm giác với Vòng quay Mặt trời Sun Wheel - Top 10 vòng quay cao nhất Thế Giới, chiêm ngưởng vẻ đẹp Đà Thành về đêm (chi phí tự túc). Nghỉ đêm tại khách sạn gần biển.','NGÀY 1: HÀ NỘI - ĐÀ NẰNG - BÁN ĐẢO SƠN TRÀ - CẦU TÌNH YÊU (ĂN TRƯA, TỐI)'),(6,NULL,NULL,'2','06:30 Ăn sáng tại khách sạn.\nLựa chọn 1: Vé cáp treo Bà Nà + ăn buffet Bà Nà: 1,190,000 đồng/người – (chi phí tự túc)\n07:30 Đoàn khởi hành đi Khu du lịch Bà Nà - nơi có thể khám phá những khoảnh khắc giao mùa bất ngờ trong một ngày. Quý khách tham quan: \nĐi cáp treo đạt 2 kỷ lục của thế giới - cáp treo một dây dài nhất (gần 6000m) và có độ cao chênh lệch giữa ga đi và ga đến lớn nhất. \nViếng chùa Linh Ứng  với tượng Phật Thích Ca cao 27m, tham quan Vườn Lộc Uyển, Quan Âm Các.\nTham gia vào các trò chơi tại  Fantasy Park với các trò chơi phiêu lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như vòng quay tình yêu, Phi công Skiver, Đường đua lửa, Xe điện đụng Ngôi nhà ma...  \nĂn trưa buffet tại nhà hàng\n15:00 Trở về chân núi, xe đưa đoàn trở về nghỉ ngơi và tắm biển.\n06:30 Ăn sáng tại khách sạn.\nLựa chọn 1: Vé cáp treo Bà Nà + ăn buffet Bà Nà: 1,190,000 đồng/người – (chi phí tự túc)\n07:30 Đoàn khởi hành đi Khu du lịch Bà Nà - nơi có thể khám phá những khoảnh khắc giao mùa bất ngờ trong một ngày. Quý khách tham quan: \nĐi cáp treo đạt 2 kỷ lục của thế giới - cáp treo một dây dài nhất (gần 6000m) và có độ cao chênh lệch giữa ga đi và ga đến lớn nhất. \nViếng chùa Linh Ứng với tượng Phật Thích Ca cao 27m, tham quan Vườn Lộc Uyển, Quan Âm Các.\nTham gia vào các trò chơi tại  Fantasy Park với các trò chơi phiêu lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như vòng quay tình yêu, Phi công Skiver, Đường đua lửa, Xe điện đụng Ngôi nhà ma...  \nĂn trưa buffet tại nhà hàng\n15:00 Trở về chân núi, xe đưa đoàn trở về nghỉ ngơi và tắm biển.\nLựa chọn 2: Nếu Quý Khách đi Huế + gồm ăn trưa: 850,000 đồng/người – (chi phí tự túc)\n07:30 Quý khách khởi hành đi Cố Đô Huế - Di sản văn hóa Thế giới, xuyên đường hầm đèo Hải Vân. Đến Huế Quý khách thăm quan Lăng Khải Định/ Lăng Tự Đức một trong những Lăng đẹp, lãng mạn, trữ tình phản ánh đúng cuộc đời của vị vua tài hoa nhưng gặp phải tình cảnh đất nước éo le.\n12:00 Ăn trưa tại nhà hàng với những món đặc sản xứ Huế.\nChiều: Quý khách tham quan Đại Nội Hoàng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối cùng của Việt Nam: Ngọ Môn, Điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh). Trải nghiệm VR thực tế ảo với chủ đề “Đi tìm Hoàng Cung đã mất”.\n15:00 : thăm quan Chùa Thiên Mụ cổ kính được xây dựng từ những năm đầu của thế kỉ XVII.\n16:00 Quý khách lên xe khởi hành về Đà Nẵng.\nLựa chọn 3: Quý khách không chọn lựa chọn 1, 2\nQuý khách tự do tắm biển, tham quan thành phố Đà Nẵng, tự túc ăn trưa\nTối: Ăn tối tại nhà hàng. Buổi tối quý khách tự do khám phá thành phố biển về đêm. Nghỉ đêm tại khách sạn mặt biển.','NGÀY 2: ĐÀ NẴNG - KDL BÀ NÀ HILL/HUẾ (ĂN SÁNG, TỐI)'),(7,NULL,NULL,'3','Ăn sáng tại khách sạn.\n07:30 Xe đón quý khách khởi hành đi Khu du lịch sinh thái Rừng dừa bảy mẫu. Tham gia các trò chơi dân gian, đạp niêu, đua thuyền, đua thúng, câu cá…\nTrưa: Ăn trưa tại nhà hàng.\n15:30 Xe đưa đoàn đi thăm khu phố cổ Hội An - được UNESCO công nhận là di sản văn hoá thế giới vào tháng 12/1999: bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà cổ Tấn Ký, chùa cầu Nhật Bản ăn tối tại Hội an tự do khám phá phố cổ về đêm.\nTối: Đoàn ăn tối tại nhà hàng ở Hội An.\nSau bữa tối, đoàn tập trung lên xe và hướng dẫn đưa đoàn khởi hành về Đà Nẵng. Nghỉ đêm tại khách sạn mặt biển.','NGÀY 3: ĐÀ NẴNG - RỪNG DỪA BẢY MẪU – PHỐ CỔ HỘI AN (ĂN SÁNG, TRƯA, TỐI)'),(8,NULL,NULL,'4','Ăn sáng tại khách sạn. Sau đó trả phòng.\n07:30 Xe đưa quý khách tham quan Bảo tàng tranh 3D - Thiên đường sống ảo “cháy máy” cho các tín đồ du lịch (Chi phí tự túc).\n09:30 Xe đưa đoàn đi mua sắm đồ về làm quà.\nVề thứ 3: Sau đó đoàn ra sân bay làm thủ tục lên chuyến bay VJ516 lúc 13:35 khởi hành về Hà Nội.\nVề thứ 4: Trưa: Ăn trưa tại khách sạn\nSau đó đoàn ra sân bay làm thủ tục lên chuyến bay VJ516 lúc 13:35 khởi hành về Hà Nội.\nVề đến sân bay Nội Bài, xe đón quý khách về điểm hẹn ban đầu, chia tay quý khách. Kết thúc chương trình.','NGÀY 4: BẢO TÀNG TRANH 3D - HÀ NỘI (ĂN SÁNG)'),(13,NULL,NULL,'1','07h45: Xe đón Quý khách tại điểm hẹn tập trung khu vực phố Cổ khởi hành đi Cát Bà theo hướng cao tốc Hà Nội - Hải Phòng sau đó băng qua cầu Cầu Tân Vũ -  Lạch Huyện là cây cầu vượt biển dài nhất Việt Nam nối Đình Vũ với huyện đảo Cát Hải của thành phố Hải Phòng.\nLưu ý: Vào các ngày cuối tuần có thể thời gian khởi hành có thể sẽ được sắp xếp sớm hơn bình thường. Quý khách vui lòng có mặt tại điểm hẹn theo thông tin hướng dẫn viên thông báo từ chiều ngày hôm trước.\n11h30: Đến với đảo Cát Bà, Quý khách ăn trưa sau đó nhận phòng khách sạn, nghỉ ngơi.\nChiều: Quý khách tự do tắm biển tại các bãi tắm như bãi Cát Cò 1, 2, 3.\n18h30: Ăn tối. Buổi tối tự do khám phá thị trấn Cát Bà, đi chơi Chợ đêm... Nghỉ đêm tại Cát Bà.','NGÀY 1: HÀ NỘI - CÁT BÀ                                                                 (ĂN - / TRƯA / TỐI)'),(10,NULL,NULL,'1','06h00: Xe và hướng dẫn viên đón Quý khách tại điểm hẹn Nhà hát lớn khởi hành đi Vân Đồn theo hướng cao tốc Hà Nội - Hải Phòng - Vân Đồn. Trên đường xe sẽ tiếp tục đón khách tại một số điểm cố định trên hành trình như: Điểm dừng nghỉ Hưng Yên (06h45-07h00), V52 Hải Dương (07h15 - 08h00) và Quý khách tự do ăn sáng tại đây. Tiếp tục đón khách khu vực đầu cầu Bạch Đằng thuộc địa phận thành phố Hải Phòng trong khoảng 08h30 - 09h00. \n11h00: Ăn trưa tại Vân Đồn. \n12h00-13h00: Quý khách làm thủ tục lên tàu ra Cô Tô. Quý khách có khoảng 90 phút trên tàu để di chuyển ra Cô Tô, trên đường đi Quý khách tự do chụp hình với vịnh Bái Tử Long, đảo Quan Lạn... \nLưu ý: Giờ tàu có thể được điều chỉnh theo sự sắp xếp của Cảng vụ hoặc do yếu tố thời tiết.\nChiều: Đến thị trấn Cô Tô, nhận phòng khách sạn, nghỉ ngơi. Buổi chiều Quý khách có thể tự do:\nDạo bộ thăm quan thị trấn Cô Tô, thư giãn trên con đường tình yêu, thăm và chụp hình tại khu tượng đài Bác Hồ\nĐăng ký với hướng dẫn viên đi tham quan đảo Cô Tô Con (chi phí tự túc)\nTự túc thuê xe ôm hoặc xe điện thăm quan ngọn Hải Đăng Cô Tô - được ví như đôi mắt của đảo. Từ trên ngọn Hải Đăng, Quý khách có thể phóng tầm mắt ngắm nhìn toàn bộ cảnh quan xung quanh đảo với núi, biển và những hòn đảo nhỏ phía xa xa.\n18h30: Ăn tối tại nhà hàng (Lưu ý: vào ngày khởi hành, Quý khách cũng có thể thống nhất bỏ thêm chi phí và đề nghị hướng dẫn viên tổ chức bữa ăn BBQ, giao lưu văn nghệ, lửa trại hoặc đi hát Karaoke…). Buổi tối tự do khám phá thị trấn Cô Tô về đêm. Nghỉ đêm tại Cô Tô.','NGÀY 1: HÀ NỘI -  CẢNG CÁI RỒNG - CÔ TÔ                             (ĂN TRƯA / TỐI)'),(11,NULL,NULL,'2','05h00: Hướng dẫn viên đợi Quý khách tập trung tại sảnh khách sạn và lên xe đi tìm kiếm những bức hình tuyệt đẹp tại bãi đá Móng Rồng, cầu Mỵ, mũi Ông Minh bởi đó chính là thời điểm mặt trời vừa ló lên từ biển cả mênh mông. Đây chính là nơi có cảnh quan kỳ vĩ nhất đảo Cô Tô.\n07h00: Quay lại khách sạn và ăn sáng, nghỉ ngơi.\n08h00: Xe ô tô đưa Quý khách đi tắm biển tại bãi biển Vàn Chảy - bãi tắm với bờ cát trắng mịn trải dài. Sẽ không ngoa khi nói bãi tắm Vàn Chảy là bãi tắm đẹp nhất của đảo Cô Tô. Quý khách có thể tham gia các hoạt động như đá bóng bãi biển, bóng chuyền...\n11h30: Ăn trưa tại khách sạn, nghỉ ngơi.\nChiều: Xe tiếp tục đưa Quý khách đến với bãi biển Hồng Vàn - bãi biển đẹp nhất miền Bắc với biển xanh cát vàng óng, xa xa là đảo Cô Tô con, đảo Thanh Lân, Hòn Dê. Đặc biệt, quý khách sẽ có những giây phút thư giãn quý giá trong Cô Tô Park với những trò chơi hấp dẫn như: Chinh phục núi Băng, cầu trượt, thăng bằng, bóng chuyền nước, chèo thuyền kayak, thuyền buồm rực rỡ trong làn nước biển trong vắt… (chi phí vào công viên tự túc)\n18h30: Ăn tối tại khách sạn. Buổi tối tự do vui chơi. Nghỉ đêm tại Cô Tô.','NGÀY 2: BÃI ĐÁ MÓNG RỒNG - VÀN CHẢY - HỒNG VÀN                (ĂN SÁNG / TRƯA / TỐI)'),(12,NULL,NULL,'3','Sáng: Ăn sáng tại khách sạn. Buổi sáng Quý khách tự do dạo chơi thị trấn Cô Tô, mua hải sản Cô Tô về làm quà với các món ăn như mực một nắng, tu hài, sò huyết... \nLưu ý: Khi mua đồ hải sản đề nghị Quý khách đóng thùng xốp cẩn thận. Toàn bộ đồ hải sản sẽ để dưới cốp xe ô tô. Quý đoàn cũng nên cân nhắc với số lượng hải sản mua về bởi vì phía nhà cung cấp tour, lái xe hay cả hướng dẫn viên phục vụ đoàn không chịu bất kỳ trách nhiệm gì với việc hàng hóa cồng kềnh dẫn đến thiếu chỗ để hoặc mang vác hành lý của Quý khách.\n08h30: Quý khách tập trung tại khách sạn để trả phòng, thu dọn hành lý và chuẩn bị ra xe để lên tàu tàu cao tốc về lại cảng Vân Đồn. \n11h00: Ăn trưa tại nhà hàng. Sau bữa trưa, Quý khách tiếp tục lên xe về Hà Nội. Trên đường ghé dừng mua đặc sản bánh đậu xanh Hải Dương về làm quà.\n18h00: Xe đưa Quý khách về tới Hà Nội. Kết thúc chương trình. Tạm biệt Quý khách, hẹn gặp lại!','NGÀY 3: ĐẢO CÔ TÔ - CẢNG CÁI RỒNG - HÀ NỘI              (ĂN SÁNG / TRƯA / - )'),(14,NULL,NULL,'2','05h00: Nếu có thể, Quý khách nên dậy sớm đi bộ hoặc tự do kêu xe điện (hoặc xe ôm) đưa Quý khách lên thăm \"Pháo đài thần công\" tại đây Quý khách có thể phóng tầm mắt ra toàn bộ khu vực các hòn đảo xung quanh bằng mắt thường hoặc qua lăng kính của ống kính viễn vọng đặt tại đây. Sau khi ngắm bình minh trên biển, Quý khách có thể ngồi nhâm chi tách cafe buổi sáng trong không gian tươi mát của một vùng đảo ngọc.\n07h00: Qúy khách dùng bữa sáng tại nhà hàng của khách sạn\n07h45: Xe sẽ đón quý khách khởi hành ra bến Bèo (Bến tàu tham quan Vịnh Lan Hạ)\n08h00: Check in tại Du thuyền và bắt đầu hành trình khám phá Vịnh Lan Hạ - một trong những Vịnh biển đẹp nhất thế giới.\n09h30: Du thuyền đưa quý khách tham quan khu vực BA TRÁI ĐÀO hoặc đảo VẠN BỘI (tùy theo thủy triều, thuyền trưởng sẽ linh động sắp xếp)\n10h30: Thuyền tới khu vực Hang Luồn - Tay Kéo, tại đây đoàn nhận áo phao, mái chèo, thuyền Kayak, quý khách bắt đầu chèo chuyền xuyên qua các hang động. Hang Luồn - Tay Kéo khá rộng với nhiều nhũ đá bên trên, trong hang luôn có 2 dòng chảy từ trong ra ngoài. Bao quanh là các dãy núi cao. Khung cảnh như lạc vào Thiên Đường. Đoàn có thể dừng tại đây là nghỉ ngơi, tận hưởng không khí thiên nhiên hoang dã.\n11h30: Quý khách dùng bữa trưa với rất rất nhiều món hải sản đặc sắc của đảo ngọc Cát Bà. Sau bữa trưa đoàn nghỉ ngơi ít phút.\n13h30: Khám phá làng cổ VIỆT HẢI. Quý khách sẽ được thử cảm giác đi xe điện xuyên qua những cánh rừng, hang động, qua các cánh đồng để hướng về ngôi làng nhỏ nhắn xinh đẹp yên bình nằm nép sâu trong VQG Cát Bà. HDV sẽ kể cho quý khách nghe một số câu truyện về người dân nơi đây, thử một chút rượu đặc sản người dân địa phương tự tay trưng cất, nhẹ nhàng tản bộ thưởng thức cảnh quan của ngôi làng trước khi trải nghiệm MASSAGE CÁ bên dòng suối tự nhiên, sau đó đoàn quay trở lại tàu.\n15h00: SUNSET PARTY. Chúng tôi tổ chức một bữa tiệc nhỏ với nước trà, trái cây tươi được phục vụ miễn phí thay lời cảm ơn quý khách đã tin tưởng sử dụng dịch vụ và đồng hành cùng chúng tôi khám phá vẻ đẹp, hi vọng quý khách sẽ có những kỷ niệm đẹp về Cát Bà.\n18h30: Quý khách tự do dùng bữa cơm tối tại các nhà hàng trên đảo. Sau bữa cơm tối quý khách có thể tham quan Cát Bà về đêm bằng cách tản bộ - thuê xe đạp đôi hoặc đi bar - vũ trưởng - karaoke…','NGÀY 2: CÁT BÀ - VỊNH LAN HẠ - VIỆT HẢI - KAYAKING                   (ĂN SÁNG / TRƯA / - )'),(15,NULL,NULL,'3','Sáng: Quý khách ăn sáng tại khách sạn. Buổi sáng Quý khách có thể lựa chọn:\nLựa chọn 1: Tự do tắm biển hoặc nghỉ ngơi, đi chợ mua đồ hải sản\nLựa chọn 2: Đăng ký đi thăm quan Vườn Quốc Gia Cát Bà với Động Trung Trang, Hang Quân Y và đỉnh Ngự Lâm (phụ thu thêm 290.000đ/khách). Yêu cầu tổng số lượng khách đăng ký phải từ 10 người trở lên mới có thể tổ chức được.\n11h00: Quý khách có mặt tại khách sạn hoàn thành thủ tục trả phòng và ăn trưa.\n12h30: Xe đón Quý khách trở về Hà Nội. Trên đường về, Quý khách dừng nghỉ tại trạm dừng trên đường cao tốc mua đặc sản của Hải Dương về làm quà.\n17h00-17h30: Về đến Hà Nội. Kết thúc chương trình. Hẹn gặp lại Quý khách!','NGÀY 3: CÁT BÀ - VƯỜN QUỐC GIA - HÀ NỘI                                      (ĂN SÁNG / TRƯA / - )'),(16,NULL,NULL,'1','06h00: Xe ô tô và hướng dẫn viên đón Quý khách tại điểm hẹn trong khu vực Phố Cổ và Nhà hát lớn khởi hành cho chuyến đi du lịch Hà Giang. Nghỉ ngơi, tự do ăn sáng tại ngã 3 Kim Anh hoặc trên cao tốc.\nLưu ý: Xe có thể đón Quý khách tại Ngã 3 Kim Anh (đầu cao tốc Hà Nội - Lào Cai, cách sân bay Nội Bài 03km, gần khu vực các khách sạn ở Nội Bài vào khoảng 07h30 sáng). Do đó nếu khách hàng bay ra Nội Bài muộn có thể không book phòng khách sạn gần sân bay để tiết kiệm thời gian nghỉ ngơi và tiết kiệm chi phí taxi về phố Cổ.\n11h00: Quý khách ăn trưa tại thị trấn Tân Yên (Hàm Yên, Tuyên Quang).\n14h00: Dừng chân ghé thăm Đền Đôi Cô Cầu Má linh thiêng nằm ngay bên bờ Sông Lô.\n15h00: Đến thành phố Hà Giang, chụp hình kỷ niệm tại Km0 của Hà Giang.\n16h30: Dừng chân tại điểm dừng chân Cổng Trời Quản Bạ chụp hình Núi đôi Cô Tiên hay còn gọi là Núi đôi Quản Bạ và toàn cảnh thị trấn Tam Sơn từ trên cao.\n17h30: Đến Yên Minh, Quý khách nhận phòng nghỉ ngơi.\n18h30: Ăn tối. Buổi tối tự do. Nghỉ đêm tại Yên Minh.','NGÀY 1: HÀ NỘI - HÀ GIANG - QUẢN BẠ - YÊN MINH                     (ĂN - / TRƯA / TỐI)'),(17,NULL,NULL,'2','06h00: Ăn sáng và khởi hành đi chiêm ngưỡng những cảnh đẹp hùng vỹ của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn. Dọc đường đi Quý khách dừng ghé thăm:\nPhố Cáo với những ngôi nhà đặc trưng của người H\'mông bởi những hàng rào đá cung quanh nhà.\nThăm bản Sủng Là thăm ngôi nhà Cổ của người H\'mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa \"Chuyện của Pao\" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn \"Tiếng đàn môi sau bờ rào đá\" của nhà văn Đỗ Bích Thủy đã giành được 4 giải Cánh diều vàng. Quý khách dừng chân nghỉ ngơi và chụp hình hoa tam giác mạch gần dốc chín khoanh.\nDinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và quyền uy nhất Châu Đồng Văn vào đầu thế kỷ 20.\nThăm Cột Cờ Lũng Cũ - nơi địa đầu Tổ quốc, điểm có vĩ độ cao nhất trên bản đồ của Việt Nam.\n12h30: Ăn trưa tại nhà hàng.\nChiều: Tiếp tục thăm quan:\nPhố Cổ Đồng Văn đã tồn tại cùng với thời gian gần một thế kỷ. Quý khách có thể ngồi nhâm nhi thưởng thức một ly cà phê tại quán Café phố Cổ (chi phí tự túc).\nChinh phục đèo Mã Pì Lèng dài 16km nối Đồng Văn với Mèo Vạc, cũng là đoạn đẹp nhất trên con đường mang tên \"Đường Hạnh phúc\".\nChụp hình với vẻ đẹp hùng vĩ của Hẻm Tu Sản (hay còn gọi là hẻm vực Mã Pì Lèng hoặc hẻm vực sông Nho Quế) ở độ cao 1500m so với mực nước biển và độ sâu trung bình 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam.\nDu thuyền trên Sông Nho Quế: Lên thuyền ngược dòng Nho Quế đến với Hẻm Tu sản, là hẻm vực sâu nhất của Việt Nam nằm trên dòng sông Nho Quế. Dòng Nho Quế chảy vào Việt Nam từ địa phận thôn Séo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản chạy men theo chân đèo Mã Pì Lèng (Lưu ý: Chưa bao gồm chi phí thuyền 150.000đ/khách và chi phí đi xe ôm 200.000đ/khách).\n19h00: Về tới Bảo Lạc, ăn tối sau đó nhận phòng khách sạn nghỉ ngơi. Buổi tối tự do. Nghỉ đêm tại Bảo Lạc.','NGÀY 2: YÊN MINH - ĐỒNG VĂN - MÈO VẠC - BẢO LẠC     (ĂN SÁNG / TRƯA / TỐI)'),(18,NULL,NULL,'3','06h00: Trả phòng sau đó ăn sáng và lên xe khởi hành đi Cao Bằng. Trên đường đi Quý khách dừng chân chụp hình với những cảnh đẹp trên đường.\n11h00: Ăn trưa tại Quảng Uyên. Sau bữa trưa, Quý khách tiếp tục lên xe đi Bản Giốc. Buổi chiều thăm quan:\nThác Bản Giốc, thác có độ cao 53m, chia làm 3 tầng được coi là thác đẹp nhất Việt Nam và là thác lớn nhất Đông Nam Á. Đây là thác nước lớn thứ 4 trong top10 thác nước trên thế giới nằm trên đường biên giới giữa hai quốc gia.\nThăm quan động Ngườm Ngao (động Hổ), một trong những hang động đẹp nhất không chỉ của Cao Bằng mà của cả miền Bắc.\nThăm làng Rèn Phúc Sen với nghề làm dao nổi tiếng tại Quảng Uyên.\n18h30: Về đến thành phố Cao Bằng. Ăn tối sau đó về nhận phòng khách sạn nghỉ ngơi. Buổi tối Quý khách tự do thăm quan mua sắm tại khu vực chợ trung tâm thành phố, đặ biệt là hạt dẻ. Nghỉ đêm tại Cao Bằng.','NGÀY 3: BẢO LẠC - BẢN GIỐC - NGƯỜM NGAO - CAO BẰNG (ĂN SÁNG / TRƯA / TỐI)'),(19,NULL,NULL,'4','06h00: Trả phòng sau đó ăn sáng và lên xe khởi hành đi Pác Bó.\n08h00: Đến Pác Bó, Quý khách thăm quan Khu di tích lịch sử Pắc Bó. Vào thăm nơi ở và hoạt động của Chủ tịch Hồ Chí Minh trong những năm kháng chiến từ 1941 đến 1945, đoàn chụp hình lưu niệm tại Suối Lê Nin - Núi Các Mác, thăm hang Cốc Bó.\n10h00: Rời Pác Bó đi Ba Bể. Trên đường đi Quý khách ngắm nhìn những con đèo với cảnh đẹp của núi rừng như: đèo Tài Hồ Sìn, đèo Cao Bắc, đèo Khau Khang, đèo Gió.\n12h00: Dừng xe nghỉ ngơi và ăn trưa trên Đèo Gió.\n16h00: Đến Ba Bể, Nhận phòng tại nhà sàn của người Tày ven Hồ Ba Bể.\n18h00: Ăn tối và nghỉ đêm tại Ba Bể. Buổi tối, Quý khách có thể lựa chọn giao lưu văn nghệ, đốt lửa trại hoặc nghe biểu diễn hát Then của người Tày (chi phí tự túc).','NGÀY 04: CAO BẰNG - PÁC BÓ - BA BỂ                                 (ĂN SÁNG / TRƯA / TỐI)'),(20,NULL,NULL,'5','07h00: Ăn sáng tại nhà sàn sau đó nghỉ ngơi thư giãn ngắm cảnh hồ trong sương sớm. Quý khách tự do nghỉ ngơi hoặc dạo bộ quanh hồ trước khi trả phòng để về Hà Nội.\n08h00: Quý khách bách bộ lên ra bến thuyền và xuống thuyền thăm quan Hồ Ba Bể vừa thư giãn ngắm cảnh hồ, tự do chụp hình và ghé thăm các điểm sau:\nAo tiên: Ao Tiên nằm ở góc hồ ba của hồ Ba Bể, là một hồ nước nhỏ nằm lọt giữa một ngon núi nhô cao trên mặt hồ. Tương truyền là nơi xưa kia các vị thần tiên thường ngồi chơi cờ ở đây.\nĐền An Mạ: Đền nằm trên một ngọn núi nhỏ giữa lòng hồ. Tương truyền, trong chiến tranh phong kiến thời Lê - Mạc, các tướng nhà Mạc đã thất trận, chạy đến Động Puông rồi tuẫn tiết tại đó. Cảm kích tinh thần trung liệt, người dân đã dựng đền thờ họ Mạc, song lo bị quan quân nhà Lê phát hiện dẹp bỏ nên đã đổi tên thành Đền An Mạ. Hai từ “An Mạ” theo tiếng dân tộc Tày có nghĩa là “mồ yên mả đẹp”, nơi yên nghỉ của các trung thần họ Mạc.\nĐảo Bà Góa - một hòn đảo nhỏ xinh xắn nằm ngay vị trí trong tâm của Hồ, gắn liền với sự tích hình thành của Hồ. Thuyền đi chậm một vòng quanh đảo để Quý khách chụp hình.\n11h30: Ăn trưa tại nhà hàng. Sau bữa trưa, Quý khách lên xe về Hà Nội.\n17h30: Về đến Hà Nội. Kết thúc chương trình. Tạm biệt và hẹn gặp lại Quý khách!','NGÀY 05: HỒ BA BỂ - HÀ NỘI                                                        (ĂN SÁNG / TRƯA / - )'),(21,NULL,NULL,'1','Sáng: 08h00 Xe và HDV của Công ty lữ hành Hanoitourist đón Quý khách tại điểm đón trong thành phố, xe đưa đoàn ra sân bay Nội Bài, đáp chuyến bay đi Nha Trang VJ779 cất cánh lúc 10h30. Tới sân bay Cam Ranh (12h20), xe và hướng dẫn viên đón đoàn đưa về thành phố Nha Trang. Quý khách đi ăn trưa tại nhà hàng. Sau bữa trưa, đoàn đến khách sạn nhận phòng.\nChiều: Đoàn đi tham quan Hòn Chồng, chùa Long Sơn, Tháp Bà Ponaga - di tích có kiến trúc đặc trưng của nền văn hóa Chăm Pa. Quý khách tự do tắm bùn tại trung tâm khoáng bùn tháp Bà (chi phí tắm khoáng tự túc).\nTối: Xe đưa đoàn đi ăn tối tại nhà hàng, thưởng thức đặc sản của thành phố Nha Trang. \nNghỉ đêm tại khách sạn ở Nha Trang.','NGÀY 1: HÀ NỘI - CAM RANH - NHA TRANG ( ĂN TRƯA, TỐI)'),(22,NULL,NULL,'2','Sáng: Ăn sáng tại khách sạn. Trả phòng khách sạn. 08h15: Xe đưa Quý khách đến Khu du lịch Vinwonder Nha Trang - thiên đường vui chơi giải trí đẳng cấp quốc tế sẽ mang đến những giây phút thư giãn tuyệt vời. (Quý khách tự túc chi phí vào Vinpearl - Quý khách đi tàu cao tốc ra đảo tham quan: Khu công viên nước - công viên nước ngọt trên bãi biển đầu tiên\nKhu vui chơi trong nhà nhiều trò chơi phong phú: Siêu thị games, Thiên đường trẻ em, Vườn cổ tích…\nKhu vui chơi ngoài trời với những trò chơi nhẹ nhàng và độ mạo hiểm với các trò chơi cảm giác mạnh\nThuỷ cung - Thủy Cung quy mô lớn đầu tiên, thuộc hệ thống Thủy Cung hiện đại nhất Việt Nam.\nQuý khách tự túc ăn trưa trong khu vui chơi Vinpearl.\nChiều: Quý khách quay trở lại đất liền. Xe đưa đoàn trở về khách sạn.\nTối: 18h30 xe đưa đoàn đi ăn tối tại nhà hàng. Quý khách về khách sạn, nghỉ đêm.\n(Nếu quý khách không đi KDL Vinpearl thì tự do vui chơi, tắm biển, dạo chơi thành phố Nha Trang)\nNghỉ đêm tại khách sạn ở Nha Trang.','NGÀY 2: KHÁM PHÁ NHA TRANG - VINPEARL LAND         (ĂN SÁNG, TRƯA TỰ TÚC, TỐI)'),(23,NULL,NULL,'3','06h30 – 07h30 Ăn sáng tại khách sạn. \n07h45 Quý khách làm thủ tục trả phòng. \n08h00 Đoàn khởi hành đi – thành phố nằm trên cao nguyên Lâm Viên, được mệnh danh là thành phố ngàn hoa, thành phố của tình yêu và huyền thoại. Đến Đà Lạt, đoàn ăn trưa. Xe đưa đoàn về khách sạn nhận phòng.\nChiều : Xe đưa đoàn đi tham quan Ga xe lửa Đà Lạt với vẻ đẹp kiến trúc độc đáo mang đậm kiến trúc Pháp và những đoàn tàu cổ kính ghi dấu thời gian, nhà ga cổ nhất của Việt Nam. Quý khách tham quan tiếp Chùa Linh Phước - ngôi chùa còn có tên gọi khác là chùa “Ve Chai” bởi trong sân chùa có con rồng dài 49 mét được trang trí bề mặt bằng cả chục ngàn vỏ chai. Đây là công trình kiến trúc khảm sành đặc sắc của thành phố. Quý khách tiếp tục đến tham quan ngắm cảnh, chụp ảnh với Cánh đồng hoa Cẩm Tú Cầu.\n18h00 : Quý khách ăn tối tại nhà hàng. Sau bữa tối, xe đưa đoàn về khách sạn. Quý khách tự do dạo chơi, thưởng thức hương vị cafe, rượu vang Đà Lạt ngắm cảnh hồ xuân hương về đêm.\nNghỉ đêm tại khách sạn ở Đà Lạt','NGÀY 3: NHA TRANG - ĐÀ LẠT (ĂN SÁNG, TRƯA, TỐI )'),(24,NULL,NULL,'4','Sáng : 06h30-07h20 Ăn sáng tại khách sạn. \n07h30 Đoàn trả phòng khách sạn. Xe đưa đoàn tham quan Quảng Trường Lâm Viên – quý khách chụp ảnh, lưu giữ những hình ảnh đẹp, ấn tượng. Quý khách tham quan tiếp Vườn Hoa Thành Phố - là nơi hàng trăm hàng ngàn các loài hoa thi nhau khoe sắc thắm.\nTrưa : 10h15 Quý khách dùng cơm trưa tại nhà hàng.\nSau bữa trưa 11h15, xe đưa đoàn ra sân bay Liên Khương đáp chuyến bay về Hà Nội VJ406 cất cánh lúc 13h35.\nVề tới sân bay Nội Bài (15h05), xe đón đoàn về điểm đón ban đầu, kết thúc chương trình. Hẹn gặp lại quý khách trong những hành trình tiếp theo.','NGÀY 4:  ĐÀ LẠT - HÀ NỘI (ĂN SÁNG, TRƯA)');
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmarks`
--

DROP TABLE IF EXISTS `landmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `landmarks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Circle K Trần Hưng Đạo','204 m'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Bệnh Viện Phụ Sản Trung Ương Phòng Khám','303 m'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Trung tâm Hội chợ Triển lãm quốc tế I.C.E Hà Nội','422 m'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Sân bay quốc tế Nội Bài (HAN)','22.37 km'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Hồ Hoàn Kiếm','730 m'),(6,'2023-06-12 17:00:00','2023-06-12 17:00:00','Nhà thờ Lớn Hà Nội','575 m'),(7,'2023-06-12 18:00:00','2023-06-12 18:00:00','Hanoi Train Street','247 m'),(8,'2023-06-12 19:00:00','2023-06-12 19:00:00','Bệnh Viện Phụ Sản Trung Ương Phòng Khám','455 m'),(9,'2023-06-12 20:00:00','2023-06-12 20:00:00','Quan Su Pagoda','472 m'),(10,'2023-06-12 21:00:00','2023-06-12 21:00:00','Sân bay quốc tế Nội Bài (HAN)','21.79 km'),(11,'2023-06-12 22:00:00','2023-06-12 22:00:00','Hồ Hoàn Kiếm','965 m'),(12,'2023-06-12 23:00:00','2023-06-12 23:00:00','Nhà thờ Lớn Hà Nội','620 m'),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','Pham Van Dong Beach','924 m'),(14,'2023-06-13 01:00:00','2023-06-13 01:00:00','Trường Đại học Sư Phạm Kỹ thuật - Đại học Đà Nẵng','2.77 km'),(15,'2023-06-13 02:00:00','2023-06-13 02:00:00','Số 294 Trưng Nữ Vương','3.01 km'),(16,NULL,NULL,'Bệnh viện Hoàn Mỹ Đà Nẵng','3.19 km'),(17,NULL,NULL,'Sân bay quốc tế Đà Nẵng (DAD)','5.24 km'),(18,NULL,NULL,'Khu cáp treo Bà Nà Hills','22.86 km'),(19,NULL,NULL,'Chùa Linh Ứng','5.23 km'),(20,NULL,NULL,'Goethe Institut Vietnam','580 m'),(21,NULL,NULL,'Hanoi Railway Station','687 m'),(22,NULL,NULL,'Trường Đại học Sư Phạm Kỹ thuật - Đại học Đà Nẵng','287 m'),(23,NULL,NULL,'Da Nang Museum','601 m'),(24,NULL,NULL,'Da Nang Railway Station','906 m'),(25,NULL,NULL,'Bệnh viện Bình dân Đà Nẵng','1.80 km'),(26,NULL,NULL,'Sân bay quốc tế Đà Nẵng (DAD)','4.07 km'),(27,NULL,NULL,'Khu cáp treo Bà Nà Hills','20.66 km'),(28,NULL,NULL,'Chùa Linh Ứng','7.13 km'),(29,NULL,NULL,'Central Park','106 m'),(30,NULL,NULL,'Bệnh viện quốc tế Vinmec Nha Trang ','1.98 km'),(31,NULL,NULL,'Nha Trang Railway Station','2.93 km'),(32,NULL,NULL,'Sân bay quốc tế Cam Ranh (CXR)','24.12 km'),(33,NULL,NULL,'Bãi Dài','17.75 km'),(34,NULL,NULL,'Nhà thờ Núi Nha Trang','2.54 km'),(35,NULL,NULL,'Nha Trang Beach','115 m'),(36,NULL,NULL,'Nha Trang Railway Station','1.87 km'),(37,NULL,NULL,'Bệnh viện quốc tế Vinmec Nha Trang ','3.07 km'),(38,NULL,NULL,'Sân bay quốc tế Cam Ranh (CXR)','25.20 km'),(39,NULL,NULL,'Bãi Dài','18.80 km'),(40,NULL,NULL,'Nhà thờ Núi Nha Trang','1.46 km');
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `hot` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrlwg6q9t9d4gd617grgx8ylpg` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','Nội địa - Đà Nẵng',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Nội địa - Đà Nẵng',1,5),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','Nội địa - Cô Tô',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Nội địa - Cô Tô',1,5),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','Nội địa - Cát Bà',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation03.jpg?alt=media&token=fba74787-0d08-4a28-b72d-d0bdc5a118b1','Nội địa - Cát Bà',1,5),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','Nội địa - Hà Giang',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation04.jpg?alt=media&token=30b66441-6a97-49ee-b9bd-ff012a1f2222','Nội địa - Hà Giang',1,5),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','Nội địa - Đà Lạt & Nha Trang',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation05.jpg?alt=media&token=17056b6f-281a-4836-92b5-86cd1c3b48f4','Nội địa - Đà Lạt & Nha Trang',1,5),(6,'2023-06-06 10:00:00','2023-06-06 10:00:00','Hà Nội',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation06.jpg?alt=media&token=773a0873-83ba-4ec8-905b-06f18054fa3d','Hà Nội',1,5),(7,'2023-06-07 12:00:00','2023-06-07 12:00:00','Vũng Tàu',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour07.jpg?alt=media&token=53c3eb0a-5bc0-4c3f-9042-016fbe37608c','Vũng Tàu',1,5),(8,'2023-06-08 15:00:00','2023-06-08 15:00:00','Phan Thiết',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour08.jpg?alt=media&token=338a5a4a-3c2a-4473-8290-1c05390af17e','Phan Thiết',1,5),(9,'2023-06-09 14:00:00','2023-06-09 14:00:00','Nội địa - Phú Quốc',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour09.jpg?alt=media&token=94e969fc-a480-4c37-b102-1bd50e47faec','Nội địa - Phú Quốc',1,5),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','Hồ Chí Minh',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Hồ Chí Minh',1,5),(11,'2023-06-11 09:00:00','2023-06-11 09:00:00','Nội địa - Tây Nguyên',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Nội địa - Tây Nguyên',1,5),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','Nội địa - SaPa',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour12.jpg?alt=media&token=855b0b91-daa1-44b6-b6be-0ab3d1e2b8f6','Nội địa - SaPa',1,5),(13,'2023-06-13 11:00:00','2023-06-13 11:00:00','Nội địa - Quy Nhơn',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour13.jpg?alt=media&token=eb704a09-a00d-4d7a-ac13-1ffae6e731dd','Nội địa - Quy Nhơn',1,5),(14,'2023-06-14 10:00:00','2023-06-14 10:00:00','Nội địa - Cần Thơ',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour14.jpg?alt=media&token=666e6dba-974c-4aed-b3ec-6bc1198135fa','Nội địa - Cần Thơ',1,5),(15,'2023-06-15 12:00:00','2023-06-15 12:00:00','Nội địa - Côn Đảo',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour15.jpg?alt=media&token=d8e57bc7-37d4-4ad0-ad49-b57e629db6e8','Nội địa - Côn Đảo',1,5),(16,'2023-06-16 09:00:00','2023-06-16 09:00:00','The Victoria Falls is a waterfall located in southern Africa on the Zambezi River.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation16.jpg?alt=media&token=f532becf-b27c-483a-846e-1cb192afaa8e','Victoria Falls',1,5),(17,'2023-06-17 14:00:00','2023-06-17 14:00:00','The Santorini is a Greek island known for its stunning sunsets and white-washed buildings.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation17.jpg?alt=media&token=82f28b37-73d0-43f9-b6ff-6a5c5096c70d','Santorini',1,5),(18,'2023-06-18 11:00:00','2023-06-18 11:00:00','The Amazon Rainforest is a vast jungle that spans across several South American countries.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation18.jpg?alt=media&token=8a56b8e5-dc71-45b2-89f9-7c3ca178c61c','Amazon Rainforest',1,5),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','The Taj Mahal is an ivory-white marble mausoleum located in Agra, India.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Taj Mahal',1,5),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','The Great Wall of China is a series of fortifications running across northern China.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Great Wall of China',1,5);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rate` int NOT NULL,
  `star` int NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5mykw8ddeujut4h923t2xm2bd` (`admin_id`),
  KEY `FKsdlcf7wf8l1k0m00gik0m6b1m` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,NULL,NULL,'Review for Tour 1','Image 1',8,4,5,1),(2,NULL,NULL,'Review for Tour 2','Image 2',10,5,5,2),(3,NULL,NULL,'Hơi bất ngờ vì hình phòng double standard không giống trên app, ngoài ưu điểm là nhân viên khá nhiệt tình, bên cạnh đó, hiện tại nhà kế bên khách sạn đang sửa nên sẽ rất ô nhiềm tiếng ồn vào ban ngày, ai có nhu cầu đặt vào dịp này nên cân nhắc.','Image 3',9,4,5,3),(4,NULL,NULL,'Khá ổn nếu so với giá khuyến mãi, nhưng khách sạn đã xuống cấp nhiều so với lần đầu mình đi.','Image 4',6,3,5,4),(5,NULL,NULL,'Review for Vehicle 1','Image 5',10,5,5,17),(6,NULL,NULL,'Hướng dẫn viên du lịch rất chuyên nghiệp và tận tâm. Họ đã giúp tôi hiểu rõ về lịch sử và văn hóa địa phương. Cảm ơn đội ngũ hướng dẫn viên!','tour_image_6.jpg',9,5,5,6),(7,NULL,NULL,'Thời gian của tour được sắp xếp hợp lý. Tôi đã có đủ thời gian để tham quan các điểm đến quan trọng và thư giãn tận hưởng không khí của từng thành phố.','tour_image_7.jpg',10,4,5,7),(8,NULL,NULL,'Tour này đã mang đến cho tôi nhiều trải nghiệm đáng nhớ và tạo ra những kỷ niệm vô giá. Tôi chắc chắn sẽ quay lại miền Trung trong tương lai.','tour_image_8.jpg',8,4,5,8),(9,NULL,NULL,'Tôi thực sự thích điểm đến này. Bãi biển xanh biếc và cát trắng mịn đã khiến tôi cảm thấy thư giãn và sảng khoái.','tour_image_9.jpg',9,5,5,9),(10,NULL,NULL,'Tôi rất hài lòng với chất lượng của các tour du lịch cũng như sự chu đáo của nhân viên. Tôi sẽ khuyên bạn bè và người thân tham gia tour này.','tour_image_10.jpg',9,5,5,10),(11,NULL,NULL,'Tour rất tuyệt vời! Nha Trang và Đà Lạt là hai điểm đến đẹp không thể bỏ qua. Tôi thực sự thích cảnh quan tuyệt đẹp và những hoạt động thú vị trong suốt chuyến đi.','hotel_image_11.jpg',9,4,5,11),(12,NULL,NULL,'Cảm ơn bạn lễ tân đã rất nhiệt tình giúp đỡ. Ai cũng thân thiện. Phòng do nhu cầu không cần quá cao nên như vậy cũng tạm ổn. địa chỉ thuận Lợi để đi lại','hotel_image_12.jpg',8,3,5,12),(13,NULL,NULL,'Khách sạn hơi cũ tuy nhiên phù hợp mức giá. ','hotel_image_13.jpg',9,4,5,13),(14,NULL,NULL,'Dịch vụ tuyệt vời','hotel_image_14.jpg',10,5,5,14),(15,NULL,NULL,'Trải nghiệm quá tốt so với tưởng tượng, khuyến khích mọi người book hotel','hotel_image_15.jpg',9,4,5,15),(16,NULL,NULL,'Smooth and comfortable ride','vehicle_image_16.jpg',8,4,5,16),(17,NULL,NULL,'Great vehicle for group trips','vehicle_image_17.jpg',9,5,5,17),(18,NULL,NULL,'Luxurious and stylish','vehicle_image_18.jpg',10,5,5,18),(19,NULL,NULL,'Efficient and professional service','vehicle_image_19.jpg',8,4,5,19),(20,NULL,NULL,'Perfect for city exploration','vehicle_image_20.jpg',9,4,5,20),(21,NULL,NULL,'The tour exceeded my expectations','tour_image_21.jpg',10,5,5,11),(22,NULL,NULL,'Well-organized and informative','tour_image_22.jpg',9,4,5,12),(23,NULL,NULL,'Fun and engaging tour guides','tour_image_23.jpg',8,4,5,13),(24,NULL,NULL,'A must-do experience','tour_image_24.jpg',10,5,5,14),(25,NULL,NULL,'Fantastic tour with breathtaking views','tour_image_25.jpg',9,5,5,15),(26,NULL,NULL,'Impeccable service and comfortable stay','hotel_image_26.jpg',9,4,5,16),(27,NULL,NULL,'Great value for the price','hotel_image_27.jpg',8,3,5,17),(28,NULL,NULL,'Friendly staff and convenient location','hotel_image_28.jpg',9,4,5,18),(29,NULL,NULL,'Clean and spacious rooms','hotel_image_29.jpg',10,5,5,19),(30,NULL,NULL,'Relaxing and enjoyable stay','hotel_image_30.jpg',9,4,5,20),(31,NULL,NULL,'Hơi bất ngờ vì hình phòng double standard không giống trên app, ngoài ưu điểm là nhân viên khá nhiệt tình, bên cạnh đó, hiện tại nhà kế bên khách sạn đang sửa nên sẽ rất ô nhiềm tiếng ồn vào ban ngày, ai có nhu cầu đặt vào dịp này nên cân nhắc.','vehicle_image_31.jpg',8,4,5,1),(32,NULL,NULL,'Khá ổn nếu so với giá khuyến mãi, nhưng khách sạn đã xuống cấp nhiều so với lần đầu mình đi.','vehicle_image_32.jpg',9,5,5,2),(33,NULL,NULL,'Lễ tân nhiệt tình tuy nhiên dịch vụ dọn phòng khá kém. Phải yêu cầu đến lần thứ 2 mới dọn. Khăn tắm không được thay đủ, không cung cấp nước suối mới. TV không xem được.','vehicle_image_33.jpg',10,5,5,3),(34,NULL,NULL,'Cảm ơn bạn lễ tân đã rất nhiệt tình giúp đỡ. Ai cũng thân thiện. Phòng do nhu cầu không cần quá cao nên như vậy cũng tạm ổn. địa chỉ thuận Lợi để đi lại','vehicle_image_34.jpg',8,4,5,4),(35,NULL,NULL,'Khách sạn hơi cũ tuy nhiên phù hợp mức giá. ','vehicle_image_35.jpg',9,4,5,11),(36,NULL,NULL,'Dịch vụ tuyệt vời','tour_image_36.jpg',9,5,5,6),(37,NULL,NULL,'Dịch vụ tuyệt vời','tour_image_37.jpg',10,4,5,7),(38,NULL,NULL,'Trải nghiệm quá tốt so với tưởng tượng, khuyến khích mọi người book hotel','tour_image_38.jpg',8,4,5,8),(39,NULL,NULL,'Quá ư là tuyệt vời','tour_image_39.jpg',9,5,5,9),(40,NULL,NULL,'Dịch vụ tuyệt vời','tour_image_40.jpg',9,5,5,10),(41,NULL,NULL,'Exceptional service and luxurious amenities','hotel_image_41.jpg',9,4,5,1),(42,NULL,NULL,'Comfortable and relaxing stay','hotel_image_42.jpg',8,3,5,2),(43,NULL,NULL,'Breathtaking views from the hotel','hotel_image_43.jpg',9,4,5,3),(44,NULL,NULL,'Best hotel experience in years','hotel_image_44.jpg',10,5,5,4),(45,NULL,NULL,'Excellent hospitality and service','hotel_image_45.jpg',9,4,5,15),(46,NULL,NULL,'Smooth and enjoyable ride','vehicle_image_46.jpg',8,4,5,6),(47,NULL,NULL,'Spacious and comfortable vehicle','vehicle_image_47.jpg',9,5,5,7),(48,NULL,NULL,'Luxury at its finest','vehicle_image_48.jpg',10,5,5,8),(49,NULL,NULL,'Top-notch transportation service','vehicle_image_49.jpg',8,4,5,9),(50,NULL,NULL,'Convenient and efficient way to get around','vehicle_image_50.jpg',9,4,5,10);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role_code` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,'ADMIN','ADMIN'),(2,NULL,NULL,'USER','USER'),(3,NULL,NULL,'EMPLOYEE','EMPLOYEE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `bed` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` int NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` datetime DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `room_blank` varchar(255) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,NULL,NULL,'1 Giường Đôi','Chính sách hủy phòng: Miễn phí hủy phòng trước 01-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 01-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1gdoi.jpg?alt=media&token=8d88272c-5069-49ff-95be-d540b219d267','Standard Double Room',2,1270000,65,1,NULL,NULL,'2','Millennium Hanoi Hotel'),(2,NULL,NULL,'2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 01-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 01-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F2giuong.jpg?alt=media&token=f9b08c64-7a62-42f1-be38-20e17dcca23a','Deluxe Twin Room',2,1370000,65,1,NULL,NULL,'3','Millennium Hanoi Hotel'),(3,NULL,NULL,'1 Giường Cỡ King','Chính sách hủy phòng: Miễn phí hủy phòng trước 01-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 01-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdoi.jpg?alt=media&token=7d8002cc-d2eb-4e09-b35a-58a65bff105d','Deluxe Double Room',2,1370000,65,1,NULL,NULL,'3','Millennium Hanoi Hotel'),(4,NULL,NULL,'1 Giường Cỡ King','Chính sách hủy phòng: Miễn phí hủy phòng trước 01-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 01-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1gdoi.jpg?alt=media&token=8d88272c-5069-49ff-95be-d540b219d267','Deluxe Double With City View',2,1500000,65,1,NULL,NULL,'3','Millennium Hanoi Hotel'),(5,NULL,NULL,'2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F2giuong.jpg?alt=media&token=f9b08c64-7a62-42f1-be38-20e17dcca23a','Superior Twin Room',2,2200000,24,1,NULL,NULL,'5','Muong Thanh Hanoi Centre Hotel'),(6,NULL,NULL,'1 Giường Cỡ Queen','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288','Superior Double',2,2200000,24,1,NULL,NULL,'5','Muong Thanh Hanoi Centre Hotel'),(7,NULL,NULL,'1 Giường Cỡ Queen','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuong.jpg?alt=media&token=8a4c1761-c27d-4024-bdfa-e486baf98462','Deluxe Double Room',2,2500000,24,1,NULL,NULL,'5','Muong Thanh Hanoi Centre Hotel'),(8,NULL,NULL,'2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2Fdeluxetwin.jpg?alt=media&token=34f77c34-442b-47e7-a5ce-ded8ec00bf80','Deluxe Twin Room',2,2500000,24,1,NULL,NULL,'5','Muong Thanh Hanoi Centre Hotel'),(9,NULL,NULL,'1 Giường Cỡ King','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288','Executive Suite Room',2,3800000,24,1,NULL,NULL,'1','Muong Thanh Hanoi Centre Hotel'),(10,NULL,NULL,'1 Giường Cỡ King','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdoi.jpg?alt=media&token=7d8002cc-d2eb-4e09-b35a-58a65bff105d','Deluxe Double',2,1750000,69,1,NULL,NULL,'1','The Herriott Hotel & Suite'),(11,NULL,NULL,'1 Giường Đôi Hoặc 2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288','Grand Deluxe King Or Twin',2,1925000,69,1,NULL,NULL,'2','The Herriott Hotel & Suite'),(12,NULL,NULL,'1 Giường Cỡ King','Chính sách hủy phòng: Miễn phí hủy phòng trước 04-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 04-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuong.jpg?alt=media&token=8a4c1761-c27d-4024-bdfa-e486baf98462','Deluxe Apartment',2,2275000,69,1,NULL,NULL,'1','The Herriott Hotel & Suite'),(13,NULL,NULL,'1 Giường Cỡ Queen','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48ahttps://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b40828818a3-a6b0-4ce0-adc8-75ad0b408288','Superior Double',2,680000,50,1,NULL,NULL,'2','Tarasa Hotel'),(14,NULL,NULL,'2 Giường Cỡ Queen','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2Fdeluxetwin.jpg?alt=media&token=34f77c34-442b-47e7-a5ce-ded8ec00bf80','Deluxe Twin',2,800000,50,1,NULL,NULL,'2','Tarasa Hotel'),(15,NULL,NULL,'2 Giường Cỡ Queen Và 1 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2Ffamilyasd.jpg?alt=media&token=15077da0-62a6-4725-b91c-a9ece2ceb2c9','Suite Family',4,1200000,50,1,NULL,NULL,'1','Tarasa Hotel'),(16,NULL,NULL,'1 Giường Đôi','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdasda.jpg.jpg?alt=media&token=409d8e3c-bf9f-4adb-9a1a-c2f0a6cbead2','Deluxe Double Room',2,1482000,53,1,NULL,NULL,'4','Melissa Hotel Nha Trang'),(17,NULL,NULL,'2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F2giuong.jpg?alt=media&token=f9b08c64-7a62-42f1-be38-20e17dcca23a','Deluxe Twin Room',2,1482000,53,1,NULL,NULL,'2','Melissa Hotel Nha Trang'),(18,NULL,NULL,'1 Giường Đôi','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288','Senior Deluxe Double Room With Sea View',2,1812000,53,1,NULL,NULL,'2','Melissa Hotel Nha Trang'),(19,NULL,NULL,'2 Giường Đơn','Chính sách hủy phòng: Miễn phí hủy phòng trước 05-thg 7-2023 13:00. Nếu bạn hủy hoặc chỉnh sửa sau 05-thg 7-2023 13:01, bạn sẽ chịu thêm một khoản phí.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F2giuong.jpg?alt=media&token=f9b08c64-7a62-42f1-be38-20e17dcca23a','Senior Deluxe Twin Room With Sea View',2,1812000,53,1,NULL,NULL,'2','Melissa Hotel Nha Trang'),(20,NULL,NULL,'1 Giường (X 2)','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdasda.jpg.jpg?alt=media&token=409d8e3c-bf9f-4adb-9a1a-c2f0a6cbead2','Deluxe Twin Room',2,3000000,25,1,NULL,NULL,'5','Mường Thanh Luxury Nha Trang'),(21,NULL,NULL,'1 Giường Đôi','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdasda.jpg.jpg?alt=media&token=409d8e3c-bf9f-4adb-9a1a-c2f0a6cbead2','Deluxe Double Room',2,3000000,25,1,NULL,NULL,'5','Mường Thanh Luxury Nha Trang'),(22,NULL,NULL,'1 Giường (X 2)','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2Fdeluxetwin.jpg?alt=media&token=34f77c34-442b-47e7-a5ce-ded8ec00bf80','Deluxe Twin Room With Ocean View',2,3500000,25,1,NULL,NULL,'3','Mường Thanh Luxury Nha Trang'),(23,NULL,NULL,'1 Giường Đôi','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdoi.jpg?alt=media&token=7d8002cc-d2eb-4e09-b35a-58a65bff105d','Deluxe Double With Ocean View',2,3500000,25,1,NULL,NULL,'4','Mường Thanh Luxury Nha Trang'),(24,NULL,NULL,'1 Giường (X 2) Và 1 Giường Cỡ Queen','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2Ffamilyasd.jpg?alt=media&token=15077da0-62a6-4725-b91c-a9ece2ceb2c9','Deluxe Family Triple',3,4000000,25,1,NULL,NULL,'3','Mường Thanh Luxury Nha Trang'),(25,NULL,NULL,'1 Giường Cỡ King','Đặt phòng này sẽ không thể hoàn tiền và không thể đổi lịch.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/room%2F1giuongdasda.jpg.jpg?alt=media&token=409d8e3c-bf9f-4adb-9a1a-c2f0a6cbead2','Executive Suite',2,5700000,25,1,NULL,NULL,'5','Mường Thanh Luxury Nha Trang');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_amenityroom`
--

DROP TABLE IF EXISTS `room_amenityroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `room_amenityroom` (
  `room_id` bigint NOT NULL,
  `amenityroom_id` bigint NOT NULL,
  PRIMARY KEY (`room_id`,`amenityroom_id`),
  KEY `FKk7uoxto8y4i8ijnp279m5br5f` (`amenityroom_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_amenityroom`
--

LOCK TABLES `room_amenityroom` WRITE;
/*!40000 ALTER TABLE `room_amenityroom` DISABLE KEYS */;
INSERT INTO `room_amenityroom` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(4,15),(4,16),(4,17),(4,18),(5,10),(5,15),(5,16),(5,17),(5,18),(6,15),(6,17),(6,19),(6,20),(6,21),(7,1),(7,2),(7,6),(7,7),(7,8),(7,9),(7,10),(8,6),(8,7),(8,8),(8,9),(8,10),(9,6),(9,7),(9,8),(9,9),(9,10),(10,6),(10,7),(10,8),(10,9),(10,10);
/*!40000 ALTER TABLE `room_amenityroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (1,NULL,NULL,'Đặt cọc ngay sau khi đăng ký tour: 5,000,000 đồng/khách','ĐẶT TOUR:'),(2,NULL,NULL,'Hủy sau khi đặt dịch vụ: phí hủy 20% giá tour','Điều kiện hoàn hủy land tour: '),(3,NULL,NULL,'Vé đoàn: Không hoàn hủy, không đổi hành trình','Điều kiện hoàn hủy vé máy bay:'),(4,NULL,NULL,'Phụ thu 150.000đ/khách mang quốc tịch nước ngoài','Chi phí phát sinh bắt buộc:'),(5,NULL,NULL,'Trẻ 1-2 tuổi phụ thu 400.000đ tiền vé tàu cao tốc khứ hồi','Riêng phần vé tàu cao tốc:'),(6,NULL,NULL,'Trường hợp mua đồ hải sản phải được đựng trong thùng xốp dán kín và sạch sẽ. Lái xe có quyền từ chối vận chuyển nếu Quý khách mang theo đồ hải sản lên xe mà không được đóng gói cẩn thận.','Lưu ý về việc mua đồ Hải Sản:'),(7,NULL,NULL,'Phụ thu 150.000đ/khách mang quốc tịch nước ngoài','Chi phí phát sinh bắt buộc:'),(8,NULL,NULL,'Trẻ 1-2 tuổi phụ thu 400.000đ tiền vé tàu cao tốc khứ hồi','Riêng phần vé tàu cao tốc:'),(9,NULL,NULL,'Trường hợp mua đồ hải sản phải được đựng trong thùng xốp dán kín và sạch sẽ. Lái xe có quyền từ chối vận chuyển nếu Quý khách mang theo đồ hải sản lên xe mà không được đóng gói cẩn thận.','Lưu ý về việc mua đồ Hải Sản:'),(10,NULL,NULL,'Quý khách đi tour (đặc biệt là các tour liên quan đến tàu thủy, tàu hỏa, máy bay…) phải mang theo giấy tờ tùy thân hợp pháp (CMTND/Thẻ căn cước/Hộ chiếu). Trẻ dưới 14 tuổi tối thiểu phải mang theo giấy khai sinh. Trẻ em từ 14 tuổi trở lên bắt buộc phải có Thẻ căn cước hoặc hộ chiếu.','Những lưu ý khác:'),(11,NULL,NULL,'Phụ thu 300.000đ/khách Nước ngoài để làm thủ tục khai báo với Công an Hà Giang và Bản Giốc','Chi phí phát sinh bắt buộc:'),(12,NULL,NULL,'Quý khách phải mang theo: giấy tờ tùy thân hợp pháp (CMTND hoặc Passport)','Quý khách cần lưu ý:'),(13,NULL,NULL,'Khách hàng tự chịu trách nhiệm về sức khỏe và các bệnh mãn tính (tim mạch, huyết áp, tiểu đường, xương khớp…), bệnh bẩm sinh, bệnh tiềm ẩn, bệnh HIV AIDS, bệnh rối loạn tinh thần và thần kinh, phụ nữ đang mang thai... là những bệnh không nằm trong phạm vi được bảo hiểm. Khi cần thiết Quý khách phải viết cam kết về bệnh tật của bản thân khi tham gia tour. Bên tổ chức tour không chịu trách nhiệm đối với những trường hợp Quý khách không khai báo bệnh, khai báo không trung thực cũng như các trường hợp nằm ngoài phạm vi bảo hiểm du lịch trong tour.',' (*) Trách nhiệm của khách hàng:'),(14,NULL,NULL,'Đối với hoa tam giác mạch sẽ có vào dịp từ tháng 9 đến tháng 12 hàng năm','Thông tin tham khảo:'),(15,NULL,NULL,'Nếu quý khách hủy tour sau khi đăng ký và trước 30 ngày khởi hành: mất phí cọc tour','Điều kiện hoàn hủy tour:'),(16,NULL,NULL,'Giờ bay có thể thay đổi theo giờ bay của Hãng Hàng Không.','Điều kiện quy định vé máy bay:'),(17,NULL,NULL,'Trong quá trình tham gia, nếu trường hợp có quý khách nào chẳng may bị F0 thì người đó sẽ tuân thủ quy định cách ly của địa phương và tự chịu mọi chi phí cách ly đó (nếu có).','Các quy định chung:'),(18,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(19,NULL,NULL,'Please note that your children might be charged when check-in at the hotel. Please call the hotel before your check-in date for further information. Vui long luu y, tre em co the bi thu them phi khi nhan phong tai khach san. Vui long lien he khach san truoc khi nhan phong de biet them thong tin chi tiet.','Hướng Dẫn Nhận Phòng Chung'),(20,NULL,NULL,'Please note that your children might be charged when check-in at the hotel. Please call the hotel before your check-in date for further information. Vui long luu y, tre em co the bi thu them phi khi nhan phong tai khach san. Vui long lien he khach san truoc khi nhan phong de biet them thong tin chi tiet.','Chính Sách Bổ Sung'),(21,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(22,NULL,NULL,'Please note that your children might be charged when check-in at the hotel. Please call the hotel before your check-in date for further information. Vui long luu y, tre em co the bi thu them phi khi nhan phong tai khach san. Vui long lien he khach san truoc khi nhan phong de biet them thong tin chi tiet.','Hướng Dẫn Nhận Phòng Chung'),(23,NULL,NULL,'Please note that your children might be charged when check-in at the hotel. Please call the hotel before your check-in date for further information. Vui long luu y, tre em co the bi thu them phi khi nhan phong tai khach san. Vui long lien he khach san truoc khi nhan phong de biet them thong tin chi tiet.','Chính Sách Bổ Sung'),(24,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(25,NULL,NULL,'Extra charges: - Under 3 years old: free : non-extra bed - From 3 to 12 years old: 100.000/1 night (non-extra bed) - Over 12 years old: 200.000/1 night ( non-extra bed) Early Check in: - Before 8:00 AM: 100 % room charge - After 8:00 AM: 50 % room charge Late Check out: - From 12:00 to 14:00: 30% room charge - From 12:00 to 18:00: 50% room charge - After 18:00: 100% room charge','Hướng Dẫn Nhận Phòng Chung'),(26,NULL,NULL,'Bạn có thể nhận phòng sớm hơn giờ quy định của cơ sở lưu trú và có áp dụng phụ phí. Vui lòng liên hệ với cơ sở lưu trú để xác nhận thông tin.','Nhận phòng sớm'),(27,NULL,NULL,'Bạn có thể yêu cầu trả phòng trễ hơn quy định của cơ sở lưu trú và có áp dụng phụ phí. Vui lòng liên hệ với cơ sở lưu trú khi có nhu cầu.','Trả phòng trễ'),(28,NULL,NULL,'Bữa sáng tại cơ sở lưu trú được phục vụ từ 06:30 đến 09:30.','Bữa sáng'),(29,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(30,NULL,NULL,'- Stay for free if using existing bedding. If you need an extra bed, it will incur an additional charge. Guests 6 years and older are considered as adults. Must use an extra bed which will incur an additional charge.','Hướng Dẫn Nhận Phòng Chung'),(31,NULL,NULL,'Bạn có thể nhận phòng sớm hơn giờ quy định của cơ sở lưu trú và có áp dụng phụ phí. Vui lòng liên hệ với cơ sở lưu trú để xác nhận thông tin.','Nhận phòng sớm'),(32,NULL,NULL,'Bạn có thể yêu cầu trả phòng trễ hơn quy định của cơ sở lưu trú và có áp dụng phụ phí. Vui lòng liên hệ với cơ sở lưu trú khi có nhu cầu.','Trả phòng trễ'),(33,NULL,NULL,'Bữa sáng tại cơ sở lưu trú được phục vụ từ 06:30 đến 09:30.','Bữa sáng'),(34,NULL,NULL,'Cơ sở lưu trú cấm hút thuốc.','Hút Thuốc'),(35,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(36,NULL,NULL,'Children under 6 years old stay for free if using existing bed.','Hướng Dẫn Nhận Phòng Chung'),(37,NULL,NULL,'Children under 6 years old stay for free if using existing bed.','Chính Sách Bổ Sung'),(38,NULL,NULL,'Giờ nhận phòng: Từ 14:00 Giờ trả phòng: Trước 12:00','Thời gian nhận phòng/trả phòng'),(39,NULL,NULL,'You may be required to present valid government-issued identification at check-in, along with credit card or cash to cover deposits and incidentals. Special request may depend on hotel\'s availability at check-in and may cost extra fee. Special request availability is not guaranteed. Children policy : - Children are under 6 years old : will be free of charge for buffet breakfast and sharing the bed their parents. - Children from 6 to under 12 years old : will be charge 50% for breakfast rates (150.000 VND nett/child/day) and sharing the bed their parents. - Children from 12 years old and above : will be compulsory put extra bed.','Hướng Dẫn Nhận Phòng Chung'),(40,NULL,NULL,'Cơ sở lưu trú sẽ thu VND 220,000/mỗi khách khi bạn đặt thêm bữa sáng bổ sung.','Bữa sáng bổ sung'),(41,NULL,NULL,'Bữa sáng tại cơ sở lưu trú được phục vụ từ 06:00 đến 10:00.','Bữa sáng'),(42,NULL,NULL,'You may be required to present valid government-issued identification at check-in, along with credit card or cash to cover deposits and incidentals. Special request may depend on hotel\'s availability at check-in and may cost extra fee. Special request availability is not guaranteed. Children policy : - Children are under 6 years old : will be free of charge for buffet breakfast and sharing the bed their parents. - Children from 6 to under 12 years old : will be charge 50% for breakfast rates (150.000 VND nett/child/day) and sharing the bed their parents. - Children from 12 years old and above : wil be compulsory put extra bed.','Chính Sách Bổ Sung');
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` int NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` varchar(100) NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `hotel` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `location_end` varchar(255) NOT NULL,
  `location_start` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36c3pfrjym2gm3bjfxecuvmqh` (`admin_id`),
  KEY `FKm2m7jcbrvh91t2ss2vgg93rt4` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','TOUR001','Tour bắt đầu từ thành phố Đà Nẵng, một thành phố năng động và phát triển nhanh chóng ở miền Trung Việt Nam. Du khách sẽ được tham quan các điểm du lịch nổi tiếng như cầu Rồng, bãi biển Mỹ Khê, chùa Linh Ứng và Hòn Bà – đỉnh núi cao nhất của dãy núi Ngũ Hành Sơn.\nTiếp theo, tour sẽ đưa du khách đến Bà Nà Hills, một khu nghỉ dưỡng nổi tiếng với cảnh quan tuyệt đẹp và kiến trúc kiểu Pháp. Tại đây, du khách có thể tận hưởng không gian thoáng đãng, tham quan các công trình kiến trúc độc đáo như Cầu Vàng, Chùa Linh Ứng, Lâu đài Debay và tham gia vào các hoạt động giải trí thú vị như câu cá, leo núi, trượt cáp treo, vui chơi trong khu vui chơi Fantasy Park.\nSau đó, tour tiếp tục đưa du khách đến thành phố Huế, một di sản văn hóa thế giới nổi tiếng với các di tích lịch sử phong phú. Du khách sẽ được tham quan các điểm đến như Cố Đô Huế, Cung Đình Huế, Đại Nội, Thiên Mụ Pagoda và nhiều điểm tham quan khác.\nTiếp theo, tour dẫn du khách đến Rừng Dừa Bảy Mẫu, một điểm đến thiên nhiên tuyệt đẹp với hàng dừa xanh mát. Du khách sẽ có cơ hội tham gia các hoạt động như đi dạo trên con đường dừa, thưởng thức nước dừa tươi và tham gia các trò chơi dân gian.\nCuối cùng, tour kết thúc với việc ghé thăm Bảo tàng Tranh 3D, nơi du khách có thể khám phá và trải nghiệm những bức tranh tạo cảm giác sống động và thực tế. Đây là một trải nghiệm độc đáo và thú vị để du khách tận hưởng nghệ thuật 3D và tạo ra những bức ảnh độc đáo.\nTour \"Đà Nẵng – Bà Nà/Huế – Rừng Dừa Bảy Mẫu – Bảo tàng Tranh 3D\" mang đến cho du khách một hành trình tuyệt vời để khám phá vẻ đẹp và nét văn hóa đặc trưng của khu vực Trung Bộ Việt Nam.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fcauvang.jpg?alt=media&token=03ada68a-6e56-4cc9-a488-89bef98fb619','ĐÀ NẴNG – BÀ NÀ/HUẾ – RỪNG DỪA BẢY MẪU – BẢO TÀNG TRANH 3D (BAY VIETJET AIR)',10,6480000,23,1,'2023-06-02 12:00:00','1/7;2/7;8/7;15/7;16/7;22/7;30/7',5,1,'3','4 ngày 3 đêm','Ô tô, máy bay','Nội địa - Đà Nẵng','Hà Nội'),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','TOUR002','Tour bắt đầu từ thành phố Đà Nẵng, một thành phố năng động và phát triển nhanh chóng ở miền Trung Việt Nam. Du khách sẽ được tham quan các điểm du lịch nổi tiếng như cầu Rồng, bãi biển Mỹ Khê, chùa Linh Ứng và Hòn Bà – đỉnh núi cao nhất của dãy núi Ngũ Hành Sơn.\nTiếp theo, tour sẽ đưa du khách đến Bà Nà Hills, một khu nghỉ dưỡng nổi tiếng với cảnh quan tuyệt đẹp và kiến trúc kiểu Pháp. Tại đây, du khách có thể tận hưởng không gian thoáng đãng, tham quan các công trình kiến trúc độc đáo như Cầu Vàng, Chùa Linh Ứng, Lâu đài Debay và tham gia vào các hoạt động giải trí thú vị như câu cá, leo núi, trượt cáp treo, vui chơi trong khu vui chơi Fantasy Park.\nSau đó, tour tiếp tục đưa du khách đến thành phố Huế, một di sản văn hóa thế giới nổi tiếng với các di tích lịch sử phong phú. Du khách sẽ được tham quan các điểm đến như Cố Đô Huế, Cung Đình Huế, Đại Nội, Thiên Mụ Pagoda và nhiều điểm tham quan khác.\nTiếp theo, tour dẫn du khách đến Rừng Dừa Bảy Mẫu, một điểm đến thiên nhiên tuyệt đẹp với hàng dừa xanh mát. Du khách sẽ có cơ hội tham gia các hoạt động như đi dạo trên con đường dừa, thưởng thức nước dừa tươi và tham gia các trò chơi dân gian.\nCuối cùng, tour kết thúc với việc ghé thăm Bảo tàng Tranh 3D, nơi du khách có thể khám phá và trải nghiệm những bức tranh tạo cảm giác sống động và thực tế. Đây là một trải nghiệm độc đáo và thú vị để du khách tận hưởng nghệ thuật 3D và tạo ra những bức ảnh độc đáo.\nTour \"Đà Nẵng – Bà Nà/Huế – Rừng Dừa Bảy Mẫu – Bảo tàng Tranh 3D\" mang đến cho du khách một hành trình tuyệt vời để khám phá vẻ đẹp và nét văn hóa đặc trưng của khu vực Trung Bộ Việt Nam.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fcauvangdanang.jpg?alt=media&token=830bcc2d-33e9-4034-a498-1ac3745e6157','ĐÀ NẴNG – BÀ NÀ/HUẾ – RỪNG DỪA BẢY MẪU – BẢO TÀNG TRANH 3D (BAY VIETNAM AIRLINES)',10,6480000,23,1,'2023-07-01 18:00:00','17/6;20/6;29/6;30/6;14/7;23/7;24/7;28/7;29/7',5,1,'3','4 ngày 3 đêm','Ô tô, máy bay','Nội địa - Đà Nẵng','Hà Nội'),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','TOUR003','Đảo Cô Tô có hai bãi biển tuyệt đẹp: Bãi Vàn Chải nằm ở phía tây đảo, hoang vu với bờ biển uốn cong, bãi cát mịn, sạch sẽ và trắng tinh, sóng vừa đủ lớn để nô đùa thư giãn; Bãi Hồng Vàn nằm ở phía đông, nước lặng êm ả, lăn tăn như nước hồ do có đảo Thanh Lân trải dài nằm chắn gió từ ngoài biển thổi vào, bờ cát mềm mại với những thảm hoa muống biển tím ngắt.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fco_to.jpg?alt=media&token=146748fe-e9c2-4d4f-9d49-adabab26ac32','ĐẢO CÔ TÔ - THIÊN ĐƯỜNG BIỂN',10,5800000,47,1,'2023-07-01 18:00:00','hàng ngày',5,2,'3','3 ngày 2 đêm','Ô tô','Nội địa - Cô Tô','Hà Nội'),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','TOUR004','Đến Cát Bà, du khách sẽ bị hút hồn trước vẻ đẹp của biển với những bãi cát trắng phau, mịn màng, những núi đá vôi với hang động kỳ thú. Cát Bà có nhiều bãi tắm, đặc trưng là sự kín đáo, yên bình. Hai bãi tắm lý tưởng nhất là Cát Cò và Cát Dứa. Nước biển trong xanh nhìn rõ cát vàng dưới đáy.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fcat_ba.jpg?alt=media&token=05c9a5d2-e26d-4f0e-be3d-4277e5cdb65a','ĐẢO NGỌC CÁT BÀ - VỊNH LAN HẠ',20,4800000,38,1,'2023-07-01 18:00:00','hàng ngày',5,3,'3','3 ngày 2 đêm','Ô tô','Nội địa - Cát Bà','Hà Nội'),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','TOUR005','Quý khách lưu ý: Vào mùa hoa tam giác mạch từ tháng 9 đến tháng 12 hàng năm sẽ có rất nhiều các vạt hoa đẹp ở ven hai bên đường đi tại các vị trí khác nhau tùy từng thời điểm. Xe ô tô của chúng tôi sẽ dừng tại những nơi có hoa đẹp để phục vụ Quý khách chụp hình. Vào các dịp trước và sau tết âm lịch sẽ có rất nhiều hoa đào, hoa mận, hoa lê.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fha_giang_1.jpg?alt=media&token=2660478f-6b87-4b8f-a9d0-a1b6de06319d','HÀ GIANG - LŨNG CÚ - SÔNG NHO QUẾ - THÁC BẢN GIỐC - ĐỘNG NGƯỜM NGAO - PÁC BÓ - HỒ BA BỂ',15,7800000,33,1,'2023-06-09 19:00:00','thứ 4 hàng tuần',5,4,'3','5 ngày 4 đêm','Ô tô','Nội địa - Hà Giang','Hà Nội'),(6,'2023-06-06 09:00:00','2023-06-06 09:00:00','TOUR006','Tour \"Nha Trang - Đà Lạt\" là một hành trình tuyệt vời để khám phá hai điểm đến nổi tiếng ở miền Trung Việt Nam. Tour này kéo dài trong 4 ngày 3 đêm và sẽ khởi hành vào các tháng 7, 8, 9 trong năm.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/tour%2Fnha-trang.jpg?alt=media&token=9c031d41-ce06-419a-b323-9c82770433ea','NHA TRANG - ĐÀ LẠT | 4 NGÀY 3 ĐÊM - KHỞI HÀNH THÁNG 7,8,9',10,8500000,19,1,'2023-07-01 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,5,'3','4 ngày 3 đêm','Ô tô, máy bay','Nội địa - Đà Lạt & Nha Trang','Hà Nội'),(7,'2023-06-07 14:00:00','2023-06-07 14:00:00','TOUR007','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour07.jpg?alt=media&token=53c3eb0a-5bc0-4c3f-9042-016fbe37608c','Tokyo Tour',15,9800000,21,1,'2023-06-07 22:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,7,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(8,'2023-06-08 11:00:00','2023-06-08 11:00:00','TOUR008','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour08.jpg?alt=media&token=338a5a4a-3c2a-4473-8290-1c05390af17e','Angkor Wat Tour',10,7800000,14,1,'2023-06-08 19:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,8,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(9,'2023-06-09 10:00:00','2023-06-09 10:00:00','TOUR009','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour09.jpg?alt=media&token=94e969fc-a480-4c37-b102-1bd50e47faec','Swiss Alps Tour',10,7800000,14,1,'2023-06-09 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,9,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(10,'2023-06-10 12:00:00','2023-06-10 12:00:00','TOUR010','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Athens Tour',15,7800000,14,1,'2023-07-01 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,10,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(11,'2023-06-11 09:00:00','2023-06-11 09:00:00','TOUR011','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Serengeti Tour',15,7800000,13,1,'2023-06-11 17:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,11,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','TOUR012','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour12.jpg?alt=media&token=855b0b91-daa1-44b6-b6be-0ab3d1e2b8f6','Norway Tour',15,7800000,33,1,'2023-06-12 22:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,12,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(13,'2023-06-13 11:00:00','2023-06-13 11:00:00','TOUR013','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour13.jpg?alt=media&token=eb704a09-a00d-4d7a-ac13-1ffae6e731dd','Kyoto Tour',8,17000000,0,1,'2023-07-01 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,13,'4','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(14,'2023-06-14 10:00:00','2023-06-14 10:00:00','TOUR014','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour14.jpg?alt=media&token=666e6dba-974c-4aed-b3ec-6bc1198135fa','Amazon Tour',12,18000000,0,1,'2023-06-14 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,14,'4','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(15,'2023-06-15 12:00:00','2023-06-15 12:00:00','TOUR015','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour15.jpg?alt=media&token=d8e57bc7-37d4-4ad0-ad49-b57e629db6e8','Cairo Tour',20,120000000,0,1,'2023-06-15 20:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,15,'4','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(16,'2023-06-16 09:00:00','2023-06-16 09:00:00','TOUR016','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation16.jpg?alt=media&token=f532becf-b27c-483a-846e-1cb192afaa8e','New Zealand Tour',10,10000000,0,1,'2023-06-16 17:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,16,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(17,'2023-06-17 14:00:00','2023-06-17 14:00:00','TOUR017','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation17.jpg?alt=media&token=82f28b37-73d0-43f9-b6ff-6a5c5096c70d','Rome Tour',15,15000000,0,1,'2023-06-17 22:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,17,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(18,'2023-06-18 11:00:00','2023-06-18 11:00:00','TOUR018','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation18.jpg?alt=media&token=8a56b8e5-dc71-45b2-89f9-7c3ca178c61c','Bali Tour',8,20000000,0,1,'2023-06-18 19:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,18,'4','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','TOUR019','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Marrakech Tour',12,13000000,0,1,'2023-06-19 18:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,19,'3','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội'),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','TOUR020','','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Kyoto Temples Tour',20,11000000,0,1,'2023-06-20 20:00:00','15/7;22/7;5/8;12/8;19/8;2/9;9/9;16/9',5,20,'4','4 ngày 3 đêm','Ô tô, máy bay','','Hà Nội');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_exclude`
--

DROP TABLE IF EXISTS `tour_exclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_exclude` (
  `tour_id` bigint NOT NULL,
  `exclude_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`exclude_id`),
  KEY `FK8xr0utsanidbvd3t1u8ouaoj4` (`exclude_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_exclude`
--

LOCK TABLES `tour_exclude` WRITE;
/*!40000 ALTER TABLE `tour_exclude` DISABLE KEYS */;
INSERT INTO `tour_exclude` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(6,33),(6,34),(6,35),(6,36),(6,37),(6,38);
/*!40000 ALTER TABLE `tour_exclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_include`
--

DROP TABLE IF EXISTS `tour_include`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_include` (
  `tour_id` bigint NOT NULL,
  `include_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`include_id`),
  KEY `FKo0rawvd68iox5eep5rk8ku52i` (`include_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_include`
--

LOCK TABLES `tour_include` WRITE;
/*!40000 ALTER TABLE `tour_include` DISABLE KEYS */;
INSERT INTO `tour_include` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(3,36),(3,37),(3,38),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(4,45),(4,46),(4,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(5,54),(5,55),(5,56),(5,57),(5,58),(5,59),(5,60),(5,61),(5,62),(6,63),(6,64),(6,65),(6,66),(6,67),(6,68),(6,69),(6,70),(6,71),(6,72);
/*!40000 ALTER TABLE `tour_include` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_itinerary`
--

DROP TABLE IF EXISTS `tour_itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_itinerary` (
  `tour_id` bigint NOT NULL,
  `itinerary_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`itinerary_id`),
  KEY `FKjhul1wvrysowt8hv8exlgmsbk` (`itinerary_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_itinerary`
--

LOCK TABLES `tour_itinerary` WRITE;
/*!40000 ALTER TABLE `tour_itinerary` DISABLE KEYS */;
INSERT INTO `tour_itinerary` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(5,16),(5,17),(5,18),(5,19),(5,20),(6,21),(6,22),(6,23),(6,24);
/*!40000 ALTER TABLE `tour_itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_price`
--

DROP TABLE IF EXISTS `tour_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_price` (
  `tour_id` bigint NOT NULL,
  `price_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`price_id`),
  KEY `FKiq9ih8awco3glexq7ygq0ra9t` (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_price`
--

LOCK TABLES `tour_price` WRITE;
/*!40000 ALTER TABLE `tour_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_review`
--

DROP TABLE IF EXISTS `tour_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_review` (
  `tour_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `FK25q5w2n1w75vxu7461uwdqe4h` (`tour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_review`
--

LOCK TABLES `tour_review` WRITE;
/*!40000 ALTER TABLE `tour_review` DISABLE KEYS */;
INSERT INTO `tour_review` VALUES (1,6),(2,7),(3,8),(4,9),(5,10),(6,11),(7,12),(8,13),(9,14),(10,15),(11,16),(12,17),(13,18),(14,19),(15,20),(16,21),(17,22),(18,23),(19,24),(20,25),(1,26),(2,27),(3,28),(4,29),(5,30);
/*!40000 ALTER TABLE `tour_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_rule`
--

DROP TABLE IF EXISTS `tour_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_rule` (
  `tour_id` bigint NOT NULL,
  `rule_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`rule_id`),
  KEY `FK1i2yug2419kxh4of7mofmo3dp` (`rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_rule`
--

LOCK TABLES `tour_rule` WRITE;
/*!40000 ALTER TABLE `tour_rule` DISABLE KEYS */;
INSERT INTO `tour_rule` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(5,11),(5,12),(5,13),(5,14),(6,15),(6,16),(6,17);
/*!40000 ALTER TABLE `tour_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','123 Đường ABC, Thành phố A','1990-01-01 00:00:00','nguyenvana@example.com','Nguyễn Văn A','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1234567890','active','nguyenvana'),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','456 Đường XYZ, Thành phố B','1985-05-15 00:00:00','tranthib@example.com','Trần Thị B','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987654321','active','tranthib'),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','789 Đường PQR, Thành phố C','1992-12-10 00:00:00','levanc@example.com','Lê Văn C','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5432167890','active','levanc'),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','321 Đường DEF, Thành phố D','1988-07-20 00:00:00','phamthid@example.com','Phạm Thị D','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987123456','active','phamthid'),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','654 Đường GHI, Thành phố E','1995-03-25 00:00:00','hoangvane@example.com','Hoàng Văn E','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5678901234','active','hoangvane'),(6,'2023-06-12 01:55:34','2023-06-12 01:55:34','987 Đường JKL, Thành phố F','2000-02-02 00:00:00','truongthiv@example.com','Trương Thị V','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0961592648','active','truongthiv'),(7,'2023-06-06 09:00:00','2023-06-06 09:00:00','123 Đường MNO, Thành phố G','1993-08-12 00:00:00','vuthif@example.com','Vũ Thị F','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1234509876','active','vuthif'),(8,'2023-06-07 14:00:00','2023-06-07 14:00:00','456 Đường RST, Thành phố H','1991-04-18 00:00:00','dangvang@example.com','Đặng Văn G','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9876543210','active','dangvang'),(9,'2023-06-08 11:00:00','2023-06-08 11:00:00','789 Đường UVW, Thành phố I','1987-11-26 00:00:00','buithih@example.com','Bùi Thị H','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1357924680','active','buithih'),(10,'2023-06-09 13:00:00','2023-06-09 13:00:00','123 Đường XYZ, Thành phố K','1994-09-30 00:00:00','dovani@example.com','Đỗ Văn I','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2468013579','active','dovani'),(11,'2023-06-10 15:00:00','2023-06-10 15:00:00','321 Đường RST, Thành phố L','1990-03-14 00:00:00','hothik@example.com','Hồ Thị K','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','8024671359','active','hothik'),(12,'2023-06-11 12:00:00','2023-06-11 12:00:00','654 Đường DEF, Thành phố M','1986-06-22 00:00:00','ngovani@example.com','Ngô Văn L','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5792468130','active','ngovani'),(13,'2023-06-12 09:00:00','2023-06-12 09:00:00','987 Đường ABC, Thành phố N','1992-02-08 00:00:00','duongthim@example.com','Dương Thị M','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','4802468139','active','duongthim'),(14,'2023-06-13 14:00:00','2023-06-13 14:00:00','123 Đường PQR, Thành phố O','1988-10-16 00:00:00','lyvan@example.com','Lý Văn N','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','3579246801','active','lyvan'),(15,'2023-06-14 11:00:00','2023-06-14 11:00:00','456 Đường GHI, Thành phố P','1995-06-20 00:00:00','trinhthio@example.com','Trịnh Thị O','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','6801357924','active','trinhthio'),(16,'2023-06-15 13:00:00','2023-06-15 13:00:00','789 Đường MNO, Thành phố Q','1991-12-24 00:00:00','daovanp@example.com','Đào Văn P','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9134680257','active','daovanp'),(17,'2023-06-16 15:00:00','2023-06-16 15:00:00','321 Đường RST, Thành phố S','1987-04-30 00:00:00','luuthiq@example.com','Lưu Thị Q','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2579134680','active','luuthiq'),(18,'2023-06-17 12:00:00','2023-06-17 12:00:00','654 Đường UVW, Thành phố T','1994-11-04 00:00:00','phanvans@example.com','Phan Văn S','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','6802579134','active','phanvans'),(19,'2023-06-18 09:00:00','2023-06-18 09:00:00','987 Đường XYZ, Thành phố U','1990-05-08 00:00:00','maithit@example.com','Mai Thị T','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9134680257','active','maithit'),(20,'2023-06-19 14:00:00','2023-06-19 14:00:00','123 Đường DEF, Thành phố V','1986-09-12 00:00:00','vuongvanu@example.com','Vương Văn U','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2579134680','active','vuongvanu'),(22,'2023-06-28 02:02:34','2023-06-28 09:45:56','Lê Trọng Tấn, Thanh Xuân, Hà Nội',NULL,'viet132pham@example.com','Phạm Tuấn Việt','$2a$10$anxDC7x5a2HiCgeu7b6W6uakZV3uvFOTc54bRXu/04fQwCZJwKRHa','0985532872','active','viet132pham');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2),(2,2),(3,2),(4,2),(5,1),(5,3),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` int NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` datetime NOT NULL,
  `time_start` datetime NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnmp7gvlcx2re3j8ea89wfhl9a` (`admin_id`),
  KEY `FKn44dl6cxj7t5neb7lj8n54a0y` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','VEH001','Comfortable van for city tours.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi01.jpg?alt=media&token=ae146037-d118-4d6e-b1c3-2aa61a73cec0','City Tour Van',10,100,0,1,'2023-07-01 12:00:00','2023-06-01 14:00:00',5,1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','VEH002','Spacious bus for group trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi02.jpg?alt=media&token=e4b29774-9814-40d1-a6e2-43940b52dbdb','Group Trip Bus',30,200,10,1,'2023-07-01 12:00:00','2023-06-02 12:00:00',5,2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','VEH003','Luxury car for VIP transportation.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi03.jpg?alt=media&token=119a09ca-ea7a-4d11-a9b8-cb720f61be60','VIP Transport Car',4,150,0,1,'2023-08-01 12:00:00','2023-06-03 15:00:00',5,3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','VEH004','Off-road vehicle for adventure trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi04.jpg?alt=media&token=a2c78826-7d36-4ca4-82e0-01ebf9bb9ac2','Adventure Trip Vehicle',6,180,0,1,'2023-06-01 12:00:00','2023-06-04 14:00:00',5,4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','VEH005','Classic motorcycle for city exploration.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi05.jpg?alt=media&token=d09d7546-fc7a-46ae-af3a-7c36b365df11','City Exploration Motorcycle',2,80,0,1,'2023-06-01 12:00:00','2023-06-05 11:00:00',5,5),(6,'2023-06-06 10:00:00','2023-06-06 10:00:00','VEH006','Luxury limousine for special events.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi06.jpg?alt=media&token=eff07c46-ebcc-480b-9582-d53eed60c74c','Special Event Limousine',8,250,0,1,'2023-06-01 12:00:00','2023-06-06 14:00:00',5,6),(7,'2023-06-07 12:00:00','2023-06-07 12:00:00','VEH007','Compact car for everyday use.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi07.jpg?alt=media&token=866a6fb7-9903-47cf-b0c4-2afb139fbb92','Compact Car',4,80,30,1,'2023-06-01 12:00:00','2023-06-07 12:00:00',5,7),(8,'2023-06-08 15:00:00','2023-06-08 15:00:00','VEH008','SUV for family trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi08.jpg?alt=media&token=b4794d0d-7ba7-45d3-8bf0-63500999e439','Family Trip SUV',6,150,0,1,'2023-06-01 12:00:00','2023-06-08 15:00:00',5,8),(9,'2023-06-09 14:00:00','2023-06-09 14:00:00','VEH009','Convertible car for a stylish ride.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi09.jpg?alt=media&token=734dbe91-281b-4826-81d8-160231c45785','Convertible Car',2,200,0,1,'2023-06-01 12:00:00','2023-06-09 14:00:00',5,9),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','VEH010','Motorhome for a comfortable camping experience.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi10.jpg?alt=media&token=2aba0da9-49ed-4520-a0a2-835fc9842cb1','Motorhome',4,300,0,1,'2023-06-01 12:00:00','2023-06-10 11:00:00',5,10),(11,'2023-06-11 10:00:00','2023-06-11 10:00:00','VEH011','Luxury yacht for a luxurious cruise.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi11.jpg?alt=media&token=a93189b5-34a0-4706-9f9e-89cd741781e2','Luxury Yacht',12,500,0,1,'2023-06-01 12:00:00','2023-06-11 14:00:00',5,11),(12,'2023-06-12 12:00:00','2023-06-12 12:00:00','VEH012','Helicopter for a thrilling aerial tour.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi12.jpg?alt=media&token=d95e69eb-7bde-426e-8f22-4d6afed3bcf5','Helicopter',2,1000,20,1,'2023-06-01 12:00:00','2023-06-12 12:00:00',5,12),(13,'2023-06-13 15:00:00','2023-06-13 15:00:00','VEH013','Vintage car for a nostalgic ride.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi13.jpg?alt=media&token=25483fbe-2e0a-4d06-bfc9-f8bcdf2506b0','Vintage Car',2,150,0,1,'2023-06-01 12:00:00','2023-06-13 15:00:00',5,13),(14,'2023-06-14 14:00:00','2023-06-14 14:00:00','VEH014','Jet ski for an exhilarating water adventure.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi14.jpg?alt=media&token=b41f7cd1-4467-480a-be19-16db6458be33','Jet Ski',1,200,0,1,'2023-06-01 12:00:00','2023-06-14 14:00:00',5,14),(15,'2023-06-15 11:00:00','2023-06-15 11:00:00','VEH015','Scooter for convenient city travel.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi15.jpg?alt=media&token=a523c102-1fd7-4fb6-8d76-435d83e13781','Scooter',1,50,0,1,'2023-06-01 12:00:00','2023-06-15 11:00:00',5,15);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_review`
--

DROP TABLE IF EXISTS `vehicle_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_review` (
  `vehicle_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `FK6vk2hkwp57fmce9en62jy6a8b` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_review`
--

LOCK TABLES `vehicle_review` WRITE;
/*!40000 ALTER TABLE `vehicle_review` DISABLE KEYS */;
INSERT INTO `vehicle_review` VALUES (1,41),(2,42),(3,43),(4,44),(5,45),(6,46),(7,47),(8,48),(9,49),(10,50);
/*!40000 ALTER TABLE `vehicle_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 12:38:36
