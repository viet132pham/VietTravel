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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenityhotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenityhotel`
--

LOCK TABLES `amenityhotel` WRITE;
/*!40000 ALTER TABLE `amenityhotel` DISABLE KEYS */;
INSERT INTO `amenityhotel` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Swimming Pool'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Fitness Center'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Restaurant'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Spa'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Concierge Services');
/*!40000 ALTER TABLE `amenityhotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenitytour`
--

DROP TABLE IF EXISTS `amenitytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenitytour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitytour`
--

LOCK TABLES `amenitytour` WRITE;
/*!40000 ALTER TABLE `amenitytour` DISABLE KEYS */;
INSERT INTO `amenitytour` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Tour guide'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Transportation'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Meals included'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Entrance fees'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Accommodation');
/*!40000 ALTER TABLE `amenitytour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:30:00','Paris, the city of lights, is renowned for its exquisite architecture and diverse culture. Join me as we explore famous landmarks such as the Eiffel Tower, Versailles Palace, and the Louvre Museum. Don\'t forget to indulge in fantastic French cuisine like baguettes, cheese, and wine. Paris is definitely a must-visit destination.','paris.jpg','Discovering the Beauty of Paris',5),(2,'2023-06-15 14:00:00','2023-06-15 15:30:00','Escape to the tropical paradise of Bali and immerse yourself in the breathtaking beauty of its beaches, lush rice terraces, and ancient temples. Experience thrilling water sports, unwind with traditional spa treatments, and savor delicious Balinese cuisine. Bali offers a perfect blend of relaxation and adventure.','bali.jpg','Unveiling the Enchantment of Bali',5),(3,'2023-06-20 09:00:00','2023-06-20 10:30:00','Embark on an unforgettable journey to the vibrant streets of Tokyo. Discover the blend of tradition and modernity as we visit historic temples, witness the bustling Shibuya Crossing, and indulge in mouthwatering sushi. Get lost in the neon lights of Tokyo and experience the unique charm of this dynamic city.','tokyo.jpg','Exploring the Wonders of Tokyo',5);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcategory`
--

DROP TABLE IF EXISTS `blog_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogcategory` (
  `blog_id` bigint NOT NULL,
  `blogcategory_id` bigint NOT NULL,
  PRIMARY KEY (`blog_id`,`blogcategory_id`),
  KEY `FKlo1gmgqycaibjfh98vt16sj8y` (`blogcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcategory`
--

LOCK TABLES `blog_blogcategory` WRITE;
/*!40000 ALTER TABLE `blog_blogcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogcategory`
--

DROP TABLE IF EXISTS `blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogcategory`
--

LOCK TABLES `blogcategory` WRITE;
/*!40000 ALTER TABLE `blogcategory` DISABLE KEYS */;
INSERT INTO `blogcategory` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:00:00','Travel'),(2,'2023-06-12 10:00:00','2023-06-12 10:00:00','Hotel'),(3,'2023-06-12 10:00:00','2023-06-12 10:00:00','Food'),(4,'2023-06-12 10:00:00','2023-06-12 10:00:00','Adventure'),(5,'2023-06-12 11:30:00','2023-06-12 11:30:00','Nature'),(6,'2023-06-12 13:15:00','2023-06-12 13:15:00','Food'),(7,'2023-06-12 14:45:00','2023-06-12 14:45:00','Culture'),(8,'2023-06-12 16:30:00','2023-06-12 16:30:00','History');
/*!40000 ALTER TABLE `blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','1',1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','0',2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','1',3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','0',4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','1',2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcj0jvvlv7mum72m5qblw5m1tc` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (1,1,'Item 1',10,1,'tour',0),(2,1,'Item 1',10,4,'tour',0),(3,1,'Item 2',15,2,'hotel',0),(4,2,'Item 3',8,1,'vehicle',0),(5,2,'Item 4',20,3,'tour',0),(6,3,'Item 5',12,2,'tour',0);
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `blog_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `content` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`blog_id`,`user_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essentials`
--

DROP TABLE IF EXISTS `essentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `essentials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essentials`
--

LOCK TABLES `essentials` WRITE;
/*!40000 ALTER TABLE `essentials` DISABLE KEYS */;
INSERT INTO `essentials` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Bath Towels'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Toiletries'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Bed Linens'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Toothbrushes'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Slippers');
/*!40000 ALTER TABLE `essentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` varchar(255) NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` datetime NOT NULL,
  `time_start` datetime NOT NULL,
  `admin_id` bigint NOT NULL,
  `location_id` bigint NOT NULL,
  `number_room` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKquc5qf8daoda0dnmbaflucssh` (`admin_id`),
  KEY `FK67s51cnq7o3nlcjh6pm27dqxb` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'2023-06-01 00:00:00','2023-06-01 00:00:00','HOTEL001','Luxurious hotel near the Eiffel Tower in Paris, France.','eiffel_tower_hotel.jpg','Eiffel Tower Hotel',6,'200',0,1,'2023-06-01 00:00:00','2023-06-01 00:00:00',5,1,3),(2,'2023-06-02 00:00:00','2023-06-02 00:00:00','HOTEL002','Comfortable hotel with a view of the Great Wall in Beijing, China.','great_wall_hotel.jpg','Great Wall Hotel',8,'300',0,1,'2023-06-02 00:00:00','2023-06-02 00:00:00',5,2,4),(3,'2023-06-03 00:00:00','2023-06-03 00:00:00','HOTEL003','Luxury hotel near the Taj Mahal in Agra, India.','taj_mahal_hotel.jpg','Taj Mahal Hotel',2,'180',0,1,'2023-06-03 00:00:00','2023-06-03 00:00:00',5,3,2),(4,'2023-06-04 00:00:00','2023-06-04 00:00:00','HOTEL004','Cozy hotel near Machu Picchu in Peru.','machu_picchu_hotel.jpg','Machu Picchu Hotel',6,'250',0,1,'2023-06-04 00:00:00','2023-06-04 00:00:00',5,4,3),(5,'2023-06-05 00:00:00','2023-06-05 00:00:00','HOTEL005','Luxury hotel in the heart of Rome, near the Colosseum.','colosseum_hotel.jpg','Colosseum Hotel',2,'400',0,1,'2023-06-05 00:00:00','2023-06-06 00:00:00',5,5,1);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_amenity`
--

DROP TABLE IF EXISTS `hotel_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_amenity` (
  `hotel_id` bigint NOT NULL,
  `amenityhotel_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`amenityhotel_id`),
  KEY `FKo28so4bgd8cf6pxmimvbjktcl` (`amenityhotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_amenity`
--

LOCK TABLES `hotel_amenity` WRITE;
/*!40000 ALTER TABLE `hotel_amenity` DISABLE KEYS */;
INSERT INTO `hotel_amenity` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `hotel_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_essential`
--

DROP TABLE IF EXISTS `hotel_essential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_essential` (
  `hotel_id` bigint NOT NULL,
  `essential_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`essential_id`),
  KEY `FKf82u8qwn9v7ql0s1sm1kayp27` (`essential_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_essential`
--

LOCK TABLES `hotel_essential` WRITE;
/*!40000 ALTER TABLE `hotel_essential` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_essential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_landmark`
--

DROP TABLE IF EXISTS `hotel_landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_landmark` (
  `hotel_id` bigint NOT NULL,
  `landmark_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`,`landmark_id`),
  KEY `FKjvn3j36s694k2cvkq9mk76ogr` (`landmark_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_landmark`
--

LOCK TABLES `hotel_landmark` WRITE;
/*!40000 ALTER TABLE `hotel_landmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_review`
--

DROP TABLE IF EXISTS `hotel_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_review` (
  `hotel_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`hotel_id`),
  KEY `FKfxesqr784aeova07ljgpfg70t` (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_review`
--

LOCK TABLES `hotel_review` WRITE;
/*!40000 ALTER TABLE `hotel_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmarks`
--

DROP TABLE IF EXISTS `landmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landmarks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Central Park'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Times Square'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Empire State Building'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Statue of Liberty'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Brooklyn Bridge');
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','Eiffel Tower is a wrought-iron lattice tower located in Paris, France.',1,'eiffel_tower.jpg','Eiffel Tower',1,5),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','The Great Wall of China is a series of fortifications running across northern China.',1,'great_wall.jpg','Great Wall of China',1,5),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','The Taj Mahal is an ivory-white marble mausoleum located in Agra, India.',1,'taj_mahal.jpg','Taj Mahal',1,5),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','Machu Picchu is an ancient Inca city located in the Andes Mountains, Peru.',1,'machu_picchu.jpg','Machu Picchu',1,5),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','The Colosseum is an oval amphitheater located in Rome, Italy.',1,'colosseum.jpg','Colosseum',1,5);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,NULL,NULL,'Review for Tour 1','Image 1',8,4,5,1),(2,NULL,NULL,'Review for Tour 2','Image 2',10,5,5,2),(3,NULL,NULL,'Review for Hotel 1','Image 3',9,4,5,3),(4,NULL,NULL,'Review for Hotel 2','Image 4',6,3,5,4),(5,NULL,NULL,'Review for Vehicle 1','Image 5',10,5,5,5);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role_code` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,'ADMIN','ADMIN'),(2,NULL,NULL,'USER','USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` varchar(255) NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` varchar(255) NOT NULL,
  `time_start` varchar(255) NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36c3pfrjym2gm3bjfxecuvmqh` (`admin_id`),
  KEY `FKm2m7jcbrvh91t2ss2vgg93rt4` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','TOUR001','Explore the Eiffel Tower in Paris, France.','eiffel_tower_tour.jpg','Eiffel Tower Tour',10,'100',10,1,'2023-06-01 18:00:00','2023-06-01 10:00:00',5,1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','TOUR002','Discover the Great Wall of China in Beijing.','great_wall_tour.jpg','Great Wall Tour',15,'150',20,1,'2023-06-02 20:00:00','2023-06-02 12:00:00',5,2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','TOUR003','Experience the beauty of the Taj Mahal in Agra, India.','taj_mahal_tour.jpg','Taj Mahal Tour',8,'80',0,1,'2023-06-03 22:00:00','2023-06-03 15:00:00',5,3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','TOUR004','Explore the ancient city of Machu Picchu in Peru.','machu_picchu_tour.jpg','Machu Picchu Tour',12,'120',50,1,'2023-06-04 21:00:00','2023-06-04 14:00:00',5,4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','TOUR005','Discover the wonders of the Colosseum in Rome, Italy.','colosseum_tour.jpg','Colosseum Tour',20,'200',0,1,'2023-06-09 19:00:00','2023-06-01 11:00:00',5,5);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_amenity`
--

DROP TABLE IF EXISTS `tour_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_amenity` (
  `tour_id` bigint NOT NULL,
  `amenitytour_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`,`amenitytour_id`),
  KEY `FKfbq8dmt57d6fmb6huf0al76ga` (`amenitytour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_amenity`
--

LOCK TABLES `tour_amenity` WRITE;
/*!40000 ALTER TABLE `tour_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_review`
--

DROP TABLE IF EXISTS `tour_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_review` (
  `tour_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `FKpw7br2gj5j32mngmm0benb9m6` (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_review`
--

LOCK TABLES `tour_review` WRITE;
/*!40000 ALTER TABLE `tour_review` DISABLE KEYS */;
INSERT INTO `tour_review` VALUES (1,1),(5,1);
/*!40000 ALTER TABLE `tour_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','123 ABC Street, City','1990-01-01 00:00:00','john@example.com','John Doe','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1234567890','active','johndoe'),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','456 XYZ Street, City','1985-05-15 00:00:00','jane@example.com','Jane Smith','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987654321','active','janesmith'),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','789 PQR Street, City','1992-12-10 00:00:00','mark@example.com','Mark Johnson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5432167890','active','markjohnson'),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','321 DEF Street, City','1988-07-20 00:00:00','emily@example.com','Emily Davis','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987123456','active','emilydavis'),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','654 GHI Street, City','1995-03-25 00:00:00','alex@example.com','Alex Wilson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5678901234','active','alexwilson'),(6,'2023-06-12 01:55:34','2023-06-12 01:55:34','Ha Noi','2000-02-02 00:00:00','viet132pham@gmail.com','pham tuan viet','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0961592648',NULL,'test1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2),(2,2),(3,2),(4,2),(5,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_guest` int NOT NULL,
  `price` varchar(255) NOT NULL,
  `sale` int NOT NULL,
  `status` int NOT NULL,
  `time_end` datetime NOT NULL,
  `time_start` datetime NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnmp7gvlcx2re3j8ea89wfhl9a` (`admin_id`),
  KEY `FKn44dl6cxj7t5neb7lj8n54a0y` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','VEH001','Comfortable van for city tours.','city_tour_van.jpg','City Tour Van',10,'100',0,1,'2023-06-01 12:00:00','2023-06-01 14:00:00',5,1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','VEH002','Spacious bus for group trips.','group_trip_bus.jpg','Group Trip Bus',30,'200',0,1,'2023-06-02 14:00:00','2023-06-02 12:00:00',5,2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','VEH003','Luxury car for VIP transportation.','vip_transport_car.jpg','VIP Transport Car',4,'150',0,1,'2023-06-03 17:00:00','2023-06-03 15:00:00',5,3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','VEH004','Off-road vehicle for adventure trips.','adventure_trip_vehicle.jpg','Adventure Trip Vehicle',6,'180',0,1,'2023-06-04 16:00:00','2023-06-04 14:00:00',5,4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','VEH005','Classic motorcycle for city exploration.','city_exploration_motorcycle.jpg','City Exploration Motorcycle',2,'80',0,1,'2023-06-05 13:00:00','2023-06-05 11:00:00',5,5);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_review`
--

DROP TABLE IF EXISTS `vehicle_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_review` (
  `vehicle_id` bigint NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FKdeffgqu5y0dfelti0xyrc2f3i` (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_review`
--

LOCK TABLES `vehicle_review` WRITE;
/*!40000 ALTER TABLE `vehicle_review` DISABLE KEYS */;
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

-- Dump completed on 2023-06-20 22:31:10
