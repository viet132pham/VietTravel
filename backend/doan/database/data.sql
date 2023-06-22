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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenityhotel`
--

LOCK TABLES `amenityhotel` WRITE;
/*!40000 ALTER TABLE `amenityhotel` DISABLE KEYS */;
INSERT INTO `amenityhotel` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Swimming Pool'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Fitness Center'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Restaurant'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Spa'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Concierge Services'),(6,'2023-06-12 12:00:00','2023-06-12 12:00:00','Free Wi-Fi'),(7,'2023-06-12 13:00:00','2023-06-12 13:00:00','Room Service'),(8,'2023-06-12 14:00:00','2023-06-12 14:00:00','Business Center'),(9,'2023-06-12 15:00:00','2023-06-12 15:00:00','Parking'),(10,'2023-06-12 16:00:00','2023-06-12 16:00:00','Gym'),(11,'2023-06-12 12:00:00','2023-06-12 12:00:00','Bar/Lounge'),(12,'2023-06-12 13:00:00','2023-06-12 13:00:00','Laundry Service'),(13,'2023-06-12 14:00:00','2023-06-12 14:00:00','Airport Shuttle'),(14,'2023-06-12 15:00:00','2023-06-12 15:00:00','Meeting Facilities'),(15,'2023-06-12 16:00:00','2023-06-12 16:00:00','Pet Friendly');
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitytour`
--

LOCK TABLES `amenitytour` WRITE;
/*!40000 ALTER TABLE `amenitytour` DISABLE KEYS */;
INSERT INTO `amenitytour` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Tour guide'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Transportation'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Meals included'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Entrance fees'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Accommodation'),(6,'2023-06-12 17:00:00','2023-06-12 17:00:00','Airport transfer'),(7,'2023-06-12 18:00:00','2023-06-12 18:00:00','City tour'),(8,'2023-06-12 19:00:00','2023-06-12 19:00:00','Boat cruise'),(9,'2023-06-12 20:00:00','2023-06-12 20:00:00','Hiking guide'),(10,'2023-06-12 21:00:00','2023-06-12 21:00:00','Snorkeling equipment'),(11,'2023-06-12 22:00:00','2023-06-12 22:00:00','Wine tasting'),(12,'2023-06-12 23:00:00','2023-06-12 23:00:00','Cultural show'),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','Safari jeep'),(14,'2023-06-13 01:00:00','2023-06-13 01:00:00','Private guide'),(15,'2023-06-13 02:00:00','2023-06-13 02:00:00','Scuba diving gear');
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:30:00','Paris, the city of lights, is renowned for its exquisite architecture and diverse culture. Join me as we explore famous landmarks such as the Eiffel Tower, Versailles Palace, and the Louvre Museum. Don\'t forget to indulge in fantastic French cuisine like baguettes, cheese, and wine. Paris is definitely a must-visit destination.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog01.jpg?alt=media&token=3af36cde-0dfe-4efa-a4c4-5de3c5f38e6d','Discovering the Beauty of Paris',5),(2,'2023-06-15 14:00:00','2023-06-15 15:30:00','Escape to the tropical paradise of Bali and immerse yourself in the breathtaking beauty of its beaches, lush rice terraces, and ancient temples. Experience thrilling water sports, unwind with traditional spa treatments, and savor delicious Balinese cuisine. Bali offers a perfect blend of relaxation and adventure.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog02.jpg?alt=media&token=3926f324-cc88-42b6-8ba5-edebb6098439','Unveiling the Enchantment of Bali',5),(3,'2023-06-20 09:00:00','2023-06-20 10:30:00','Embark on an unforgettable journey to the vibrant streets of Tokyo. Discover the blend of tradition and modernity as we visit historic temples, witness the bustling Shibuya Crossing, and indulge in mouthwatering sushi. Get lost in the neon lights of Tokyo and experience the unique charm of this dynamic city.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog03.jpg?alt=media&token=8ae51514-e263-462b-9b10-7194b99bd200','Exploring the Wonders of Tokyo',5),(4,'2023-06-25 13:00:00','2023-06-25 14:30:00','Experience the enchanting beauty of Santorini, a Greek island known for its iconic blue-domed churches and breathtaking sunsets. Explore the ancient ruins of Akrotiri, relax on the stunning beaches, and indulge in delicious Greek cuisine. Santorini is a true paradise for travelers.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog04.jpg?alt=media&token=3f787ac8-ad59-4f7c-97c0-d1b7e1fa292e','Santorini: A Slice of Heaven',5),(5,'2023-06-30 11:00:00','2023-06-30 12:30:00','Discover the magic of Rome, the Eternal City, as we stroll through its ancient streets and visit iconic landmarks such as the Colosseum, Roman Forum, and Vatican City. Immerse yourself in the rich history, indulge in authentic Italian pizza and gelato, and marvel at the beauty of this captivating city.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog05.jpg?alt=media&token=4e6476de-3be5-4db7-85ed-b3c10be0cc29','Unveiling the Treasures of Rome',5),(6,'2023-07-05 15:00:00','2023-07-05 16:30:00','Immerse yourself in the natural wonders of the Amazon rainforest. Experience thrilling wildlife encounters, explore dense jungles, and cruise along the mighty Amazon River. Learn about indigenous cultures and their sustainable way of life. The Amazon offers a unique adventure for nature enthusiasts.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog06.jpg?alt=media&token=13fd7b86-66d3-4d99-96c6-4bc253f3399b','Journey into the Heart of the Amazon',5),(7,'2023-07-10 10:00:00','2023-07-10 11:30:00','Embark on a culinary journey to the food capital of the world, Barcelona. Discover the vibrant food scene, sample delicious tapas and paella, and visit bustling food markets like La Boqueria. Experience the blend of Catalan and Mediterranean flavors that make Barcelona a true gastronomic delight.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog07.jpg?alt=media&token=a73b8ac3-7825-450c-8e24-67461ccbe173','Tasting Barcelona: A Food Lover\'s Paradise',5),(8,'2023-07-15 14:00:00','2023-07-15 15:30:00','Unwind in the pristine beaches of the Maldives, known for its turquoise waters, white sandy beaches, and luxurious resorts. Immerse yourself in the tranquility of this tropical paradise, indulge in world-class diving and snorkeling, and pamper yourself with rejuvenating spa treatments.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog08.jpg?alt=media&token=13c89bfb-98e5-4594-a57b-c7112dc2183b','Paradise Found: The Maldives Experience',5),(9,'2023-07-20 09:00:00','2023-07-20 10:30:00','Discover the majestic beauty of the Grand Canyon, one of the world\'s most iconic natural wonders. Marvel at the stunning panoramic views, hike along the rim, and explore the hidden gems of this geological marvel. The Grand Canyon promises an unforgettable adventure.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog09.jpg?alt=media&token=3aa60755-5b2e-446e-9764-6449e7e32418','The Grand Canyon: A Journey into the Wild',5),(10,'2023-07-25 13:00:00','2023-07-25 14:30:00','Immerse yourself in the vibrant culture and rich history of Istanbul, the bridge between Europe and Asia. Explore the magnificent Hagia Sophia, wander through the colorful Spice Bazaar, and cruise along the Bosphorus. Indulge in delicious Turkish cuisine and experience the warm hospitality of Istanbul.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog10.jpg?alt=media&token=c938c9a2-c758-484b-90ce-e20d6a82d1bc','Istanbul: Where East Meets West',5),(11,'2023-07-30 11:00:00','2023-07-30 12:30:00','Experience the breathtaking landscapes of New Zealand as we journey through its stunning fjords, pristine lakes, and dramatic mountains. Visit iconic filming locations from \"The Lord of the Rings\" trilogy and immerse yourself in the Maori culture. New Zealand is a nature lover\'s paradise.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog11.jpg?alt=media&token=85513c3d-674b-4ab4-883d-8993b1a39575','Awe-Inspiring New Zealand: Land of Adventure',5),(12,'2023-08-05 15:00:00','2023-08-05 16:30:00','Embark on a safari adventure in the Serengeti National Park, home to the world\'s most iconic wildlife. Witness the Great Migration, spot the Big Five, and immerse yourself in the raw beauty of the African savannah. The Serengeti promises an unforgettable wildlife experience.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog12.jpg?alt=media&token=7a0f1c99-bc4b-411e-a776-2cc5ad4d05cb','Serengeti: In the Realm of Wildlife',5),(13,'2023-08-10 10:00:00','2023-08-10 11:30:00','Uncover the mysteries of ancient Egypt as we explore the majestic pyramids of Giza, cruise along the Nile River, and visit the iconic temples of Luxor and Karnak. Immerse yourself in the rich history and mythology of this ancient civilization.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog13.jpg?alt=media&token=80ec599e-8cf9-40c5-a25b-79bd68d39693','Journey to Ancient Egypt',5),(14,'2023-08-15 14:00:00','2023-08-15 15:30:00','Immerse yourself in the vibrant streets of Marrakech, Morocco\'s cultural capital. Explore the bustling souks, visit the stunning Bahia Palace, and indulge in traditional Moroccan cuisine. Experience the vibrant colors, exotic aromas, and warm hospitality of this enchanting city.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog14.jpg?alt=media&token=678b19b1-b990-422e-b8e2-361da27798ba','Marrakech: A Feast for the Senses',5),(15,'2023-08-20 09:00:00','2023-08-20 10:30:00','Discover the mesmerizing beauty of the Norwegian fjords. Cruise through steep cliffs, cascading waterfalls, and picturesque villages. Immerse yourself in the tranquility of nature and witness the Northern Lights dancing across the night sky. The Norwegian fjords offer a truly magical experience.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/blog%2Fblog15.jpg?alt=media&token=14759edb-5344-4053-9d57-71866541d410','Norwegian Fjords: Nature\'s Masterpiece',5);
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
INSERT INTO `blog_blogcategory` VALUES (1,1),(1,2),(1,5),(2,2),(2,4),(3,3),(3,4),(4,4),(4,10),(5,5),(5,7),(6,6),(6,7),(7,2),(7,6),(8,8),(8,9),(9,2),(9,9),(10,3),(10,10),(11,10),(12,4),(12,9),(13,8),(14,7),(15,6);
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogcategory`
--

LOCK TABLES `blogcategory` WRITE;
/*!40000 ALTER TABLE `blogcategory` DISABLE KEYS */;
INSERT INTO `blogcategory` VALUES (1,'2023-06-12 10:00:00','2023-06-12 10:00:00','Travel'),(2,'2023-06-12 10:00:00','2023-06-12 10:00:00','Hotel'),(3,'2023-06-12 10:00:00','2023-06-12 10:00:00','Food'),(4,'2023-06-12 10:00:00','2023-06-12 10:00:00','Adventure'),(5,'2023-06-12 11:30:00','2023-06-12 11:30:00','Nature'),(6,'2023-06-12 13:15:00','2023-06-12 13:15:00','Food'),(7,'2023-06-12 14:45:00','2023-06-12 14:45:00','Culture'),(8,'2023-06-12 16:30:00','2023-06-12 16:30:00','History'),(9,'2023-06-12 18:00:00','2023-06-12 18:00:00','Beaches'),(10,'2023-06-12 19:30:00','2023-06-12 19:30:00','Wildlife');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','WAITING',1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','PROCESS',2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','DONE',3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','DONE',4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','WAITING',4),(6,'2023-06-06 09:00:00','2023-06-06 09:00:00','WAITING',5),(7,'2023-06-07 13:00:00','2023-06-07 13:00:00','PROCESS',7),(8,'2023-06-08 16:00:00','2023-06-08 16:00:00','DONE',10),(9,'2023-06-09 10:00:00','2023-06-09 10:00:00','DONE',13),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','WAITING',9),(11,'2023-06-11 12:00:00','2023-06-11 12:00:00','WAITING',8),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','PROCESS',3),(13,'2023-06-13 15:00:00','2023-06-13 15:00:00','DONE',2),(14,'2023-06-14 16:00:00','2023-06-14 16:00:00','DONE',15),(15,'2023-06-15 09:00:00','2023-06-15 09:00:00','WAITING',18),(16,'2023-06-16 11:00:00','2023-06-16 11:00:00','WAITING',11),(17,'2023-06-17 13:00:00','2023-06-17 13:00:00','PROCESS',14),(18,'2023-06-18 15:00:00','2023-06-18 15:00:00','DONE',17),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','DONE',10),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','WAITING',12);
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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcj0jvvlv7mum72m5qblw5m1tc` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (1,1,'Item 1',10,1,'tour',1,NULL,NULL),(2,1,'Item 1',10,4,'tour',1,NULL,NULL),(3,1,'Item 2',15,2,'hotel',1,NULL,NULL),(4,2,'Item 3',8,1,'vehicle',1,NULL,NULL),(5,2,'Item 4',20,3,'tour',1,NULL,NULL),(6,3,'Item 5',12,2,'tour',1,NULL,NULL),(7,4,'Hotel 2',18,3,'hotel',1,NULL,NULL),(8,4,'Tour 5',25,12,'tour',1,NULL,NULL),(9,5,'Vehicle 2',15,2,'vehicle',1,NULL,NULL),(10,5,'Tour 6',10,17,'tour',1,NULL,NULL),(11,6,'Tour 7',12,16,'tour',1,NULL,NULL),(12,6,'Vehicle 3',8,3,'vehicle',1,NULL,NULL),(13,7,'Tour 8',20,7,'tour',1,NULL,NULL),(14,7,'Hotel 3',18,4,'hotel',1,NULL,NULL),(15,8,'Tour 9',25,6,'tour',1,NULL,NULL),(16,8,'Tour 10',10,5,'tour',1,NULL,NULL),(17,9,'Vehicle 4',15,14,'vehicle',1,NULL,NULL),(18,9,'Tour 11',12,9,'tour',1,NULL,NULL),(19,10,'Tour 12',20,10,'tour',1,NULL,NULL),(20,10,'Hotel 4',18,6,'hotel',1,NULL,NULL),(21,11,'Tour 13',10,11,'tour',1,NULL,NULL),(22,11,'Tour 14',10,14,'tour',1,NULL,NULL),(23,11,'Hotel 5',15,7,'hotel',1,NULL,NULL),(24,12,'Vehicle 5',8,5,'vehicle',1,NULL,NULL),(25,12,'Tour 15',20,3,'tour',1,NULL,NULL),(26,13,'Tour 16',12,20,'tour',1,NULL,NULL),(27,14,'Hotel 6',18,8,'hotel',1,NULL,NULL),(28,14,'Tour 17',25,2,'tour',1,NULL,NULL),(29,15,'Vehicle 6',15,13,'vehicle',1,NULL,NULL),(30,15,'Tour 18',10,19,'tour',1,NULL,NULL),(31,16,'Tour 19',12,16,'tour',1,NULL,NULL),(32,16,'Vehicle 7',8,10,'vehicle',1,NULL,NULL),(33,17,'Tour 20',20,11,'tour',1,NULL,NULL),(34,17,'Hotel 7',18,9,'hotel',1,NULL,NULL),(35,18,'Tour 21',25,8,'tour',1,NULL,NULL),(36,18,'Tour 22',10,7,'tour',1,NULL,NULL),(37,19,'Vehicle 8',15,15,'vehicle',1,NULL,NULL),(38,19,'Tour 23',12,6,'tour',1,NULL,NULL),(39,20,'Tour 24',20,5,'tour',1,NULL,NULL);
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
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`,`blog_id`,`user_id`),
  KEY `FKkap39f76wn135k7ru564fbjb7` (`blog_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'Great article!',NULL,1),(1,2,'Thank you for sharing this useful information.',NULL,2),(1,3,'I want to know more about this destination.',NULL,3),(2,4,'What a beautiful picture!',NULL,4),(2,5,'I\'ve been to Bali and really like it.',NULL,5),(2,6,'Thank you for the helpful information about Bali.',NULL,6),(3,7,'Tokyo is a great city!',NULL,7),(3,8,'I look forward to the opportunity to visit Tokyo.',NULL,8),(3,9,'Do you have any suggestions for interesting places in Tokyo?',NULL,9),(4,10,'This blog inspired my trip.',NULL,10),(4,11,'Thank you for sharing your experience.',NULL,11),(4,12,'I researched more about this place and found it interesting.',NULL,12),(5,13,'This is a great destination!',NULL,13),(5,14,'I want to know more about interesting activities here.',NULL,14),(5,15,'Thank you for sharing details about this place.',NULL,15),(6,16,'Very interesting and helpful article!',NULL,16),(6,17,'I traveled here and have great memories.',NULL,17),(6,18,'Can you recommend good restaurants in Paris?',NULL,18),(7,19,'Thank you for sharing information about this hotel.',NULL,19),(7,20,'I have stayed at this hotel and feel very satisfied with the service.',NULL,20),(8,1,'I\'m planning my trip and need some suggestions.',NULL,21),(8,2,'Thank you for the helpful information about the hotel.',NULL,22),(9,3,'I want to try local food when I come here.',NULL,23),(9,4,'Thank you for sharing the food places.',NULL,24),(10,5,'This blog helped me get an overview of the place.',NULL,25),(10,6,'I would love to have a chance to visit this place.',NULL,26);
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essentials`
--

LOCK TABLES `essentials` WRITE;
/*!40000 ALTER TABLE `essentials` DISABLE KEYS */;
INSERT INTO `essentials` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Bath Towels'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Toiletries'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Bed Linens'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Toothbrushes'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Slippers'),(6,'2023-06-12 17:00:00','2023-06-12 17:00:00','Hairdryer'),(7,'2023-06-12 18:00:00','2023-06-12 18:00:00','Iron and Ironing Board'),(8,'2023-06-12 19:00:00','2023-06-12 19:00:00','Shampoo'),(9,'2023-06-12 20:00:00','2023-06-12 20:00:00','Conditioner'),(10,'2023-06-12 21:00:00','2023-06-12 21:00:00','Body Wash'),(11,'2023-06-12 22:00:00','2023-06-12 22:00:00','Hand Soap'),(12,'2023-06-12 23:00:00','2023-06-12 23:00:00','Laundry Facilities'),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','Wi-Fi'),(14,'2023-06-13 01:00:00','2023-06-13 01:00:00','Television'),(15,'2023-06-13 02:00:00','2023-06-13 02:00:00','Coffee Maker'),(16,'2023-06-13 03:00:00','2023-06-13 03:00:00','Refrigerator'),(17,'2023-06-13 04:00:00','2023-06-13 04:00:00','Microwave'),(18,'2023-06-13 05:00:00','2023-06-13 05:00:00','Kitchenette'),(19,'2023-06-13 06:00:00','2023-06-13 06:00:00','Safe Box'),(20,'2023-06-13 07:00:00','2023-06-13 07:00:00','Air Conditioning');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'2023-06-01 00:00:00','2023-06-01 00:00:00','HOTEL001','Luxurious hotel near the Eiffel Tower in Paris, France.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel01.jpg?alt=media&token=dcbda118-047f-494a-befd-85e517d253ad','Eiffel Tower Hotel',6,'200',0,1,'2023-06-01 00:00:00','2023-06-01 00:00:00',5,1,3),(2,'2023-06-02 00:00:00','2023-06-02 00:00:00','HOTEL002','Comfortable hotel with a view of the Great Wall in Beijing, China.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel02.jpg?alt=media&token=b48a18a3-a6b0-4ce0-adc8-75ad0b408288','Great Wall Hotel',8,'300',0,1,'2023-06-02 00:00:00','2023-06-02 00:00:00',5,2,4),(3,'2023-06-03 00:00:00','2023-06-03 00:00:00','HOTEL003','Luxury hotel near the Taj Mahal in Agra, India.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel03.jpg?alt=media&token=287d0a14-1f79-4fdb-a699-24660ee5ca06','Taj Mahal Hotel',2,'180',0,1,'2023-06-03 00:00:00','2023-06-03 00:00:00',5,3,2),(4,'2023-06-04 00:00:00','2023-06-04 00:00:00','HOTEL004','Cozy hotel near Machu Picchu in Peru.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel04.jpg?alt=media&token=2a65a71f-f06b-4abe-9ad3-0bd0b6e1e641','Machu Picchu Hotel',6,'250',0,1,'2023-06-04 00:00:00','2023-06-04 00:00:00',5,4,3),(5,'2023-06-05 00:00:00','2023-06-05 00:00:00','HOTEL005','Luxury hotel in the heart of Rome, near the Colosseum.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel05.jpg?alt=media&token=4fa6bb4d-7154-428e-bbf1-63d81bfb0398','Colosseum Hotel',2,'400',0,1,'2023-06-05 00:00:00','2023-06-06 00:00:00',5,5,1),(6,'2023-06-06 00:00:00','2023-06-06 00:00:00','HOTEL006','Modern hotel in the heart of New York City.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel06.jpg?alt=media&token=0cc76879-2c7b-469b-8337-91113367fe20','New York Hotel',4,'350',0,1,'2023-06-06 00:00:00','2023-06-06 00:00:00',5,6,2),(7,'2023-06-07 00:00:00','2023-06-07 00:00:00','HOTEL007','Seaside resort with stunning views in Bali, Indonesia.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel07.jpg?alt=media&token=2de2444c-c296-40fd-be3f-1bbda00dacdb','Bali Hotel',10,'220',0,1,'2023-06-07 00:00:00','2023-06-07 00:00:00',5,7,3),(8,'2023-06-08 00:00:00','2023-06-08 00:00:00','HOTEL008','Charming boutique hotel in Kyoto, Japan.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel08.jpg?alt=media&token=2f5fae48-78a8-46af-9b75-2de5754894fd','Kyoto Hotel',3,'180',0,1,'2023-06-08 00:00:00','2023-06-08 00:00:00',5,8,4),(9,'2023-06-09 00:00:00','2023-06-09 00:00:00','HOTEL009','Historic hotel with a view of the Acropolis in Athens, Greece.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel09.jpg?alt=media&token=13e25bca-935b-4c24-ba5d-4c10c82f8237','Athens Hotel',5,'280',0,1,'2023-06-09 00:00:00','2023-06-09 00:00:00',5,9,1),(10,'2023-06-10 00:00:00','2023-06-10 00:00:00','HOTEL010','Luxury beachfront hotel in Cancun, Mexico.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel10.jpg?alt=media&token=1bbe0c27-d581-479d-b9c9-229e97d9eeb6','Cancun Hotel',12,'400',0,1,'2023-06-10 00:00:00','2023-06-10 00:00:00',5,10,2),(11,'2023-06-11 00:00:00','2023-06-11 00:00:00','HOTEL011','Rustic mountain lodge in Banff, Canada.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel11.jpg?alt=media&token=ac7c495b-712a-4ab3-bd59-4842e7c43f22','Banff Hotel',6,'320',0,1,'2023-06-11 00:00:00','2023-06-11 00:00:00',5,11,3),(12,'2023-06-12 00:00:00','2023-06-12 00:00:00','HOTEL012','Luxury hotel in the heart of Dubai, United Arab Emirates.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel12.jpg?alt=media&token=e09dff74-11d6-434c-a563-bc51b7d91096','Dubai Hotel',7,'500',0,1,'2023-06-12 00:00:00','2023-06-12 00:00:00',5,12,4),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','HOTEL013','Ski-in/ski-out resort in Aspen, Colorado.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel13.jpg?alt=media&token=c6810b15-8b46-42f5-8582-a7292d1f7ac7','Aspen Hotel',8,'380',0,1,'2023-06-13 00:00:00','2023-06-13 00:00:00',5,13,1),(14,'2023-06-14 00:00:00','2023-06-14 00:00:00','HOTEL014','Boutique hotel in the historic center of Prague, Czech Republic.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel14.jpg?alt=media&token=197d62bb-5512-4b07-b508-765fbe2cc259','Prague Hotel',4,'250',0,1,'2023-06-14 00:00:00','2023-06-14 00:00:00',5,14,2),(15,'2023-06-15 00:00:00','2023-06-15 00:00:00','HOTEL015','All-inclusive resort in Punta Cana, Dominican Republic.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel15.jpg?alt=media&token=09cb1070-1113-45ea-afc0-21b97eddfd49','Punta Cana Hotel',10,'450',0,1,'2023-06-15 00:00:00','2023-06-15 00:00:00',5,15,3),(16,'2023-06-16 00:00:00','2023-06-16 00:00:00','HOTEL016','Historic hotel in the heart of Vienna, Austria.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel16.jpg?alt=media&token=13695fb6-b042-417d-acc5-0920d4ad325d','Vienna Hotel',5,'280',0,1,'2023-06-16 00:00:00','2023-06-16 00:00:00',5,16,4),(17,'2023-06-17 00:00:00','2023-06-17 00:00:00','HOTEL017','Beachfront resort in Phuket, Thailand.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel17.jpg?alt=media&token=41153c1a-d198-4e73-a105-2edd75a32fc0','Phuket Hotel',12,'380',0,1,'2023-06-17 00:00:00','2023-06-17 00:00:00',5,17,1),(18,'2023-06-18 00:00:00','2023-06-18 00:00:00','HOTEL018','Luxurious hotel in the heart of Paris, France.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel18.jpg?alt=media&token=84ac0020-f3c8-4a3d-b8f6-d1ab1cb5fee0','Paris Hotel',7,'500',0,1,'2023-06-18 00:00:00','2023-06-18 00:00:00',5,18,2),(19,'2023-06-19 00:00:00','2023-06-19 00:00:00','HOTEL019','Mountain lodge in the Swiss Alps.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel19.jpg?alt=media&token=3d850f6e-de15-4bbc-be97-a7dffe187d4e','Swiss Alps Hotel',6,'320',0,1,'2023-06-19 00:00:00','2023-06-19 00:00:00',5,19,3),(20,'2023-06-20 00:00:00','2023-06-20 00:00:00','HOTEL020','Luxury hotel in the heart of Barcelona, Spain.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/hotel%2Fhotel20.jpg?alt=media&token=e5f95e45-bc2f-4436-b17d-bb82480cc19a','Barcelona Hotel',8,'380',0,1,'2023-06-20 00:00:00','2023-06-20 00:00:00',5,20,4);
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
INSERT INTO `hotel_amenity` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,6),(6,7),(6,8),(7,1),(7,2),(7,9),(8,2),(8,3),(8,4),(9,5),(9,6),(9,7),(10,8),(10,9),(10,10),(11,11),(11,12),(11,13),(12,1),(12,14),(12,15),(13,7),(13,10),(13,11),(14,1),(14,2),(14,20),(15,3),(15,4),(15,5),(16,6),(16,7),(16,8),(17,9),(17,10),(17,11),(18,12),(18,13),(18,14),(19,3),(19,5),(19,12),(20,6),(20,8),(20,15);
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
INSERT INTO `hotel_essential` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,1),(6,2),(6,3),(7,4),(7,5),(7,6),(8,7),(8,8),(8,9),(9,10),(9,11),(9,12),(10,13),(10,14),(10,15),(11,1),(11,2),(11,3),(12,4),(12,5),(12,6),(13,7),(13,8),(13,9),(14,10),(14,11),(14,12),(15,13),(15,14),(15,15),(16,1),(16,2),(16,3),(17,4),(17,5),(17,6),(18,7),(18,8),(18,9),(19,10),(19,11),(19,12),(20,13),(20,14),(20,15);
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
INSERT INTO `hotel_landmark` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,1),(6,2),(6,3),(7,4),(7,5),(7,6),(8,7),(8,8),(8,9),(9,10),(9,11),(9,12),(10,13),(10,14),(10,15),(11,1),(11,2),(11,3),(12,4),(12,5),(12,6),(13,7),(13,8),(13,9),(14,10),(14,11),(14,12),(15,13),(15,14),(15,15),(16,1),(16,2),(16,3),(17,4),(17,5),(17,6),(18,7),(18,8),(18,9),(19,10),(19,11),(19,12),(20,13),(20,14),(20,15);
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
  PRIMARY KEY (`review_id`),
  KEY `FK93xannw8r60drn1edtfa5e1e9` (`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES (1,'2023-06-12 12:00:00','2023-06-12 12:00:00','Central Park'),(2,'2023-06-12 13:00:00','2023-06-12 13:00:00','Times Square'),(3,'2023-06-12 14:00:00','2023-06-12 14:00:00','Empire State Building'),(4,'2023-06-12 15:00:00','2023-06-12 15:00:00','Statue of Liberty'),(5,'2023-06-12 16:00:00','2023-06-12 16:00:00','Brooklyn Bridge'),(6,'2023-06-12 17:00:00','2023-06-12 17:00:00','Grand Canyon'),(7,'2023-06-12 18:00:00','2023-06-12 18:00:00','Golden Gate Bridge'),(8,'2023-06-12 19:00:00','2023-06-12 19:00:00','Niagara Falls'),(9,'2023-06-12 20:00:00','2023-06-12 20:00:00','Machu Picchu'),(10,'2023-06-12 21:00:00','2023-06-12 21:00:00','Taj Mahal'),(11,'2023-06-12 22:00:00','2023-06-12 22:00:00','Great Wall of China'),(12,'2023-06-12 23:00:00','2023-06-12 23:00:00','Eiffel Tower'),(13,'2023-06-13 00:00:00','2023-06-13 00:00:00','Colosseum'),(14,'2023-06-13 01:00:00','2023-06-13 01:00:00','Pyramids of Giza'),(15,'2023-06-13 02:00:00','2023-06-13 02:00:00','Santorini');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','Eiffel Tower is a wrought-iron lattice tower located in Paris, France.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Eiffel Tower',1,5),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','The Great Wall of China is a series of fortifications running across northern China.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Great Wall of China',1,5),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','The Taj Mahal is an ivory-white marble mausoleum located in Agra, India.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation03.jpg?alt=media&token=fba74787-0d08-4a28-b72d-d0bdc5a118b1','Taj Mahal',1,5),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','Machu Picchu is an ancient Inca city located in the Andes Mountains, Peru.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation04.jpg?alt=media&token=30b66441-6a97-49ee-b9bd-ff012a1f2222','Machu Picchu',1,5),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','The Colosseum is an oval amphitheater located in Rome, Italy.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation05.jpg?alt=media&token=17056b6f-281a-4836-92b5-86cd1c3b48f4','Colosseum',1,5),(6,'2023-06-06 10:00:00','2023-06-06 10:00:00','The Statue of Liberty is a colossal neoclassical sculpture located in New York Harbor.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation06.jpg?alt=media&token=773a0873-83ba-4ec8-905b-06f18054fa3d','Statue of Liberty',1,5),(7,'2023-06-07 12:00:00','2023-06-07 12:00:00','The Pyramids of Giza are ancient structures located on the outskirts of Cairo, Egypt.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour07.jpg?alt=media&token=53c3eb0a-5bc0-4c3f-9042-016fbe37608c','Pyramids of Giza',1,5),(8,'2023-06-08 15:00:00','2023-06-08 15:00:00','The Sydney Opera House is a famous performing arts center located in Sydney, Australia.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour08.jpg?alt=media&token=338a5a4a-3c2a-4473-8290-1c05390af17e','Sydney Opera House',1,5),(9,'2023-06-09 14:00:00','2023-06-09 14:00:00','The Acropolis of Athens is an ancient citadel located on a rocky hilltop in Athens, Greece.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour09.jpg?alt=media&token=94e969fc-a480-4c37-b102-1bd50e47faec','Acropolis of Athens',1,5),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','The Serengeti National Park is a famous wildlife reserve located in Tanzania.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Serengeti National Park',1,5),(11,'2023-06-11 09:00:00','2023-06-11 09:00:00','The Niagara Falls is a group of three waterfalls located on the border of the United States and Canada.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Niagara Falls',1,5),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','The Angkor Wat is a temple complex located in Siem Reap, Cambodia.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour12.jpg?alt=media&token=855b0b91-daa1-44b6-b6be-0ab3d1e2b8f6','Angkor Wat',1,5),(13,'2023-06-13 11:00:00','2023-06-13 11:00:00','The Forbidden City is a palace complex located in Beijing, China.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour13.jpg?alt=media&token=eb704a09-a00d-4d7a-ac13-1ffae6e731dd','Forbidden City',1,5),(14,'2023-06-14 10:00:00','2023-06-14 10:00:00','The Grand Canyon is a steep-sided canyon carved by the Colorado River in Arizona, United States.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour14.jpg?alt=media&token=666e6dba-974c-4aed-b3ec-6bc1198135fa','Grand Canyon',1,5),(15,'2023-06-15 12:00:00','2023-06-15 12:00:00','The Petra is an archaeological site located in Jordan.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour15.jpg?alt=media&token=d8e57bc7-37d4-4ad0-ad49-b57e629db6e8','Petra',1,5),(16,'2023-06-16 09:00:00','2023-06-16 09:00:00','The Victoria Falls is a waterfall located in southern Africa on the Zambezi River.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation16.jpg?alt=media&token=f532becf-b27c-483a-846e-1cb192afaa8e','Victoria Falls',1,5),(17,'2023-06-17 14:00:00','2023-06-17 14:00:00','The Santorini is a Greek island known for its stunning sunsets and white-washed buildings.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation17.jpg?alt=media&token=82f28b37-73d0-43f9-b6ff-6a5c5096c70d','Santorini',1,5),(18,'2023-06-18 11:00:00','2023-06-18 11:00:00','The Amazon Rainforest is a vast jungle that spans across several South American countries.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation18.jpg?alt=media&token=8a56b8e5-dc71-45b2-89f9-7c3ca178c61c','Amazon Rainforest',1,5),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','The Taj Mahal is an ivory-white marble mausoleum located in Agra, India.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Taj Mahal',1,5),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','The Great Wall of China is a series of fortifications running across northern China.',1,'https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Great Wall of China',1,5);
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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,NULL,NULL,'Review for Tour 1','Image 1',8,4,5,1),(2,NULL,NULL,'Review for Tour 2','Image 2',10,5,5,2),(3,NULL,NULL,'Review for Hotel 1','Image 3',9,4,5,3),(4,NULL,NULL,'Review for Hotel 2','Image 4',6,3,5,4),(5,NULL,NULL,'Review for Vehicle 1','Image 5',10,5,5,17),(6,NULL,NULL,'Amazing tour with knowledgeable guides','tour_image_6.jpg',9,5,5,6),(7,NULL,NULL,'Unforgettable experience','tour_image_7.jpg',10,4,5,7),(8,NULL,NULL,'Highly recommended tour','tour_image_8.jpg',8,4,5,8),(9,NULL,NULL,'Great value for money','tour_image_9.jpg',9,5,5,9),(10,NULL,NULL,'Beautiful sights and friendly staff','tour_image_10.jpg',9,5,5,10),(11,NULL,NULL,'Lovely hotel with excellent service','hotel_image_11.jpg',9,4,5,11),(12,NULL,NULL,'Comfortable and convenient','hotel_image_12.jpg',8,3,5,12),(13,NULL,NULL,'Excellent location and stunning views','hotel_image_13.jpg',9,4,5,13),(14,NULL,NULL,'Best hotel experience ever','hotel_image_14.jpg',10,5,5,14),(15,NULL,NULL,'Top-notch service and amenities','hotel_image_15.jpg',9,4,5,15),(16,NULL,NULL,'Smooth and comfortable ride','vehicle_image_16.jpg',8,4,5,16),(17,NULL,NULL,'Great vehicle for group trips','vehicle_image_17.jpg',9,5,5,17),(18,NULL,NULL,'Luxurious and stylish','vehicle_image_18.jpg',10,5,5,18),(19,NULL,NULL,'Efficient and professional service','vehicle_image_19.jpg',8,4,5,19),(20,NULL,NULL,'Perfect for city exploration','vehicle_image_20.jpg',9,4,5,20),(21,NULL,NULL,'The tour exceeded my expectations','tour_image_21.jpg',10,5,5,11),(22,NULL,NULL,'Well-organized and informative','tour_image_22.jpg',9,4,5,12),(23,NULL,NULL,'Fun and engaging tour guides','tour_image_23.jpg',8,4,5,13),(24,NULL,NULL,'A must-do experience','tour_image_24.jpg',10,5,5,14),(25,NULL,NULL,'Fantastic tour with breathtaking views','tour_image_25.jpg',9,5,5,15),(26,NULL,NULL,'Impeccable service and comfortable stay','hotel_image_26.jpg',9,4,5,16),(27,NULL,NULL,'Great value for the price','hotel_image_27.jpg',8,3,5,17),(28,NULL,NULL,'Friendly staff and convenient location','hotel_image_28.jpg',9,4,5,18),(29,NULL,NULL,'Clean and spacious rooms','hotel_image_29.jpg',10,5,5,19),(30,NULL,NULL,'Relaxing and enjoyable stay','hotel_image_30.jpg',9,4,5,20),(31,NULL,NULL,'Smooth ride and attentive driver','vehicle_image_31.jpg',8,4,5,1),(32,NULL,NULL,'Comfortable and spacious vehicle','vehicle_image_32.jpg',9,5,5,2),(33,NULL,NULL,'Luxury on wheels','vehicle_image_33.jpg',10,5,5,3),(34,NULL,NULL,'Excellent transportation service','vehicle_image_34.jpg',8,4,5,4),(35,NULL,NULL,'Easy and convenient way to get around','vehicle_image_35.jpg',9,4,5,11),(36,NULL,NULL,'Knowledgeable guides and interesting facts','tour_image_36.jpg',9,5,5,6),(37,NULL,NULL,'Well-planned itinerary and stunning views','tour_image_37.jpg',10,4,5,7),(38,NULL,NULL,'Great experience for nature lovers','tour_image_38.jpg',8,4,5,8),(39,NULL,NULL,'Friendly staff and comfortable accommodations','tour_image_39.jpg',9,5,5,9),(40,NULL,NULL,'Memorable and informative tour','tour_image_40.jpg',9,5,5,10),(41,NULL,NULL,'Exceptional service and luxurious amenities','hotel_image_41.jpg',9,4,5,1),(42,NULL,NULL,'Comfortable and relaxing stay','hotel_image_42.jpg',8,3,5,2),(43,NULL,NULL,'Breathtaking views from the hotel','hotel_image_43.jpg',9,4,5,3),(44,NULL,NULL,'Best hotel experience in years','hotel_image_44.jpg',10,5,5,4),(45,NULL,NULL,'Excellent hospitality and service','hotel_image_45.jpg',9,4,5,15),(46,NULL,NULL,'Smooth and enjoyable ride','vehicle_image_46.jpg',8,4,5,6),(47,NULL,NULL,'Spacious and comfortable vehicle','vehicle_image_47.jpg',9,5,5,7),(48,NULL,NULL,'Luxury at its finest','vehicle_image_48.jpg',10,5,5,8),(49,NULL,NULL,'Top-notch transportation service','vehicle_image_49.jpg',8,4,5,9),(50,NULL,NULL,'Convenient and efficient way to get around','vehicle_image_50.jpg',9,4,5,10);
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
  `time_end` datetime NOT NULL,
  `time_start` datetime NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36c3pfrjym2gm3bjfxecuvmqh` (`admin_id`),
  KEY `FKm2m7jcbrvh91t2ss2vgg93rt4` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','TOUR001','Explore the Eiffel Tower in Paris, France.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Eiffel Tower Tour',10,'100',10,1,'2023-06-01 18:00:00','2023-06-01 10:00:00',5,1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','TOUR002','Discover the Great Wall of China in Beijing.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Great Wall Tour',15,'150',20,1,'2023-06-02 20:00:00','2023-06-02 12:00:00',5,2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','TOUR003','Experience the beauty of the Taj Mahal in Agra, India.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Taj Mahal Tour',8,'80',0,1,'2023-06-03 22:00:00','2023-06-03 15:00:00',5,3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','TOUR004','Explore the ancient city of Machu Picchu in Peru.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Machu Picchu Tour',12,'120',50,1,'2023-06-04 21:00:00','2023-06-04 14:00:00',5,4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','TOUR005','Discover the wonders of the Colosseum in Rome, Italy.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation05.jpg?alt=media&token=17056b6f-281a-4836-92b5-86cd1c3b48f4','Colosseum Tour',20,'200',0,1,'2023-06-09 19:00:00','2023-06-01 11:00:00',5,5),(6,'2023-06-06 09:00:00','2023-06-06 09:00:00','TOUR006','Experience the breathtaking landscapes of Iceland.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation06.jpg?alt=media&token=773a0873-83ba-4ec8-905b-06f18054fa3d','Iceland Tour',10,'100',0,1,'2023-06-06 17:00:00','2023-06-06 09:00:00',5,6),(7,'2023-06-07 14:00:00','2023-06-07 14:00:00','TOUR007','Explore the vibrant streets of Tokyo, Japan.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour07.jpg?alt=media&token=53c3eb0a-5bc0-4c3f-9042-016fbe37608c','Tokyo Tour',15,'150',30,1,'2023-06-07 22:00:00','2023-06-07 14:00:00',5,7),(8,'2023-06-08 11:00:00','2023-06-08 11:00:00','TOUR008','Discover the ancient ruins of Angkor Wat in Cambodia.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour08.jpg?alt=media&token=338a5a4a-3c2a-4473-8290-1c05390af17e','Angkor Wat Tour',8,'80',0,1,'2023-06-08 19:00:00','2023-06-08 11:00:00',5,8),(9,'2023-06-09 10:00:00','2023-06-09 10:00:00','TOUR009','Experience the stunning beauty of the Swiss Alps.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour09.jpg?alt=media&token=94e969fc-a480-4c37-b102-1bd50e47faec','Swiss Alps Tour',12,'120',40,1,'2023-06-09 18:00:00','2023-06-09 10:00:00',5,9),(10,'2023-06-10 12:00:00','2023-06-10 12:00:00','TOUR010','Explore the historical sites of Athens, Greece.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Athens Tour',20,'200',0,1,'2023-06-10 20:00:00','2023-06-10 12:00:00',5,10),(11,'2023-06-11 09:00:00','2023-06-11 09:00:00','TOUR011','Experience the wildlife of the Serengeti in Tanzania.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour11.jpg?alt=media&token=1d54ffe2-76c1-47ea-86f7-e6c33fdd09fd','Serengeti Tour',10,'100',0,1,'2023-06-11 17:00:00','2023-06-11 09:00:00',5,11),(12,'2023-06-12 14:00:00','2023-06-12 14:00:00','TOUR012','Discover the stunning fjords of Norway.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour12.jpg?alt=media&token=855b0b91-daa1-44b6-b6be-0ab3d1e2b8f6','Norway Tour',15,'150',25,1,'2023-06-12 22:00:00','2023-06-12 14:00:00',5,12),(13,'2023-06-13 11:00:00','2023-06-13 11:00:00','TOUR013','Explore the cultural heritage of Kyoto, Japan.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour13.jpg?alt=media&token=eb704a09-a00d-4d7a-ac13-1ffae6e731dd','Kyoto Tour',8,'80',0,1,'2023-06-13 19:00:00','2023-06-13 11:00:00',5,13),(14,'2023-06-14 10:00:00','2023-06-14 10:00:00','TOUR014','Experience the beauty of the Amazon Rainforest in Brazil.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour14.jpg?alt=media&token=666e6dba-974c-4aed-b3ec-6bc1198135fa','Amazon Tour',12,'120',35,1,'2023-06-14 18:00:00','2023-06-14 10:00:00',5,14),(15,'2023-06-15 12:00:00','2023-06-15 12:00:00','TOUR015','Discover the historical sites of Cairo, Egypt.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Ftour15.jpg?alt=media&token=d8e57bc7-37d4-4ad0-ad49-b57e629db6e8','Cairo Tour',20,'200',0,1,'2023-06-15 20:00:00','2023-06-15 12:00:00',5,15),(16,'2023-06-16 09:00:00','2023-06-16 09:00:00','TOUR016','Experience the stunning landscapes of New Zealand.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation16.jpg?alt=media&token=f532becf-b27c-483a-846e-1cb192afaa8e','New Zealand Tour',10,'100',0,1,'2023-06-16 17:00:00','2023-06-16 09:00:00',5,16),(17,'2023-06-17 14:00:00','2023-06-17 14:00:00','TOUR017','Explore the ancient ruins of Rome, Italy.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation17.jpg?alt=media&token=82f28b37-73d0-43f9-b6ff-6a5c5096c70d','Rome Tour',15,'150',20,1,'2023-06-17 22:00:00','2023-06-17 14:00:00',5,17),(18,'2023-06-18 11:00:00','2023-06-18 11:00:00','TOUR018','Discover the beautiful beaches of Bali, Indonesia.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation18.jpg?alt=media&token=8a56b8e5-dc71-45b2-89f9-7c3ca178c61c','Bali Tour',8,'80',0,1,'2023-06-18 19:00:00','2023-06-18 11:00:00',5,18),(19,'2023-06-19 10:00:00','2023-06-19 10:00:00','TOUR019','Experience the cultural richness of Marrakech, Morocco.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation01.jpg?alt=media&token=469c3541-dbcb-4fdd-b130-c3e7491e97a3','Marrakech Tour',12,'120',45,1,'2023-06-19 18:00:00','2023-06-19 10:00:00',5,19),(20,'2023-06-20 12:00:00','2023-06-20 12:00:00','TOUR020','Explore the beautiful temples of Kyoto, Japan.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/location%2Flocation02.jpg?alt=media&token=3b1d3a69-b930-4898-9055-9a08c3c0aebc','Kyoto Temples Tour',20,'200',0,1,'2023-06-20 20:00:00','2023-06-20 12:00:00',5,20);
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
INSERT INTO `tour_amenity` VALUES (1,1),(1,2),(1,5),(1,6),(2,1),(2,3),(2,7),(3,4),(3,8),(3,9),(4,1),(4,5),(4,10),(5,2),(5,6),(5,11),(6,3),(6,7),(6,12),(7,4),(7,8),(7,13),(8,1),(8,9),(8,14),(9,2),(9,10),(9,15),(10,3),(10,6),(10,11),(11,4),(11,7),(11,12),(12,1),(12,8),(12,13),(13,2),(13,9),(13,14),(14,3),(14,10),(14,15),(15,4),(15,6),(15,11),(16,1),(16,7),(16,12),(17,2),(17,8),(17,13),(18,3),(18,9),(18,14),(19,4),(19,10),(19,15),(20,1),(20,5),(20,11);
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
  PRIMARY KEY (`review_id`),
  KEY `FK25q5w2n1w75vxu7461uwdqe4h` (`tour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','123 ABC Street, City','1990-01-01 00:00:00','john@example.com','John Doe','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1234567890','active','johndoe'),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','456 XYZ Street, City','1985-05-15 00:00:00','jane@example.com','Jane Smith','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987654321','active','janesmith'),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','789 PQR Street, City','1992-12-10 00:00:00','mark@example.com','Mark Johnson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5432167890','active','markjohnson'),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','321 DEF Street, City','1988-07-20 00:00:00','emily@example.com','Emily Davis','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0987123456','active','emilydavis'),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','654 GHI Street, City','1995-03-25 00:00:00','alex@example.com','Alex Wilson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5678901234','active','alexwilson'),(6,'2023-06-12 01:55:34','2023-06-12 01:55:34','Ha Noi','2000-02-02 00:00:00','viet132pham@gmail.com','pham tuan viet','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','0961592648',NULL,'test1'),(7,'2023-06-06 09:00:00','2023-06-06 09:00:00','789 JKL Street, City','1993-08-12 00:00:00','sarah@example.com','Sarah Johnson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1234509876','active','sarahjohnson'),(8,'2023-06-07 14:00:00','2023-06-07 14:00:00','123 MNO Street, City','1991-04-18 00:00:00','michael@example.com','Michael Brown','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9876543210','active','michaelbrown'),(9,'2023-06-08 11:00:00','2023-06-08 11:00:00','456 RST Street, City','1987-11-26 00:00:00','lisa@example.com','Lisa Miller','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','1357924680','active','lisamiller'),(10,'2023-06-09 13:00:00','2023-06-09 13:00:00','789 UVW Street, City','1994-09-30 00:00:00','david@example.com','David Anderson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2468013579','active','davidanderson'),(11,'2023-06-10 15:00:00','2023-06-10 15:00:00','321 XYZ Street, City','1990-03-14 00:00:00','amy@example.com','Amy Taylor','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','8024671359','active','amytaylor'),(12,'2023-06-11 12:00:00','2023-06-11 12:00:00','654 DEF Street, City','1986-06-22 00:00:00','robert@example.com','Robert Davis','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','5792468130','active','robertdavis'),(13,'2023-06-12 09:00:00','2023-06-12 09:00:00','987 ABC Street, City','1992-02-08 00:00:00','jessica@example.com','Jessica Wilson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','4802468139','active','jessicawilson'),(14,'2023-06-13 14:00:00','2023-06-13 14:00:00','123 PQR Street, City','1988-10-16 00:00:00','daniel@example.com','Daniel Martinez','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','3579246801','active','danielmartinez'),(15,'2023-06-14 11:00:00','2023-06-14 11:00:00','456 GHI Street, City','1995-06-20 00:00:00','olivia@example.com','Olivia Anderson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','6801357924','active','oliviaanderson'),(16,'2023-06-15 13:00:00','2023-06-15 13:00:00','789 MNO Street, City','1991-12-24 00:00:00','william@example.com','William Brown','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9134680257','active','williambrown'),(17,'2023-06-16 15:00:00','2023-06-16 15:00:00','321 RST Street, City','1987-04-30 00:00:00','mia@example.com','Mia Miller','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2579134680','active','miamiller'),(18,'2023-06-17 12:00:00','2023-06-17 12:00:00','654 UVW Street, City','1994-11-04 00:00:00','james@example.com','James Johnson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','6802579134','active','jamesjohnson'),(19,'2023-06-18 09:00:00','2023-06-18 09:00:00','987 XYZ Street, City','1990-05-08 00:00:00','sophia@example.com','Sophia Smith','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','9134680257','active','sophiasmith'),(20,'2023-06-19 14:00:00','2023-06-19 14:00:00','123 DEF Street, City','1986-09-12 00:00:00','ben@example.com','Ben Wilson','$2a$10$NuBxmSFKMddTKBt03gzKxuLsOtNB9tSu2BeJ5X/o73r.aekD7vbJu','2579134680','active','benwilson'),(21,'2023-06-22 10:28:55','2023-06-22 10:28:55',NULL,NULL,'viet132pham@example.com',NULL,'$2a$10$riyHjVNUoSen2j4xA2GDHOuesLB4vpbxBr7O1McCPszax5fJcjKjm','0961592648',NULL,'viet132pham');
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
INSERT INTO `user_role` VALUES (1,2),(2,2),(3,2),(4,2),(5,1),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'2023-06-01 10:00:00','2023-06-01 10:00:00','VEH001','Comfortable van for city tours.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi01.jpg?alt=media&token=ae146037-d118-4d6e-b1c3-2aa61a73cec0','City Tour Van',10,'100',0,1,'2023-06-01 12:00:00','2023-06-01 14:00:00',5,1),(2,'2023-06-02 12:00:00','2023-06-02 12:00:00','VEH002','Spacious bus for group trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi02.jpg?alt=media&token=e4b29774-9814-40d1-a6e2-43940b52dbdb','Group Trip Bus',30,'200',0,1,'2023-06-02 14:00:00','2023-06-02 12:00:00',5,2),(3,'2023-06-03 15:00:00','2023-06-03 15:00:00','VEH003','Luxury car for VIP transportation.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi03.jpg?alt=media&token=119a09ca-ea7a-4d11-a9b8-cb720f61be60','VIP Transport Car',4,'150',0,1,'2023-06-03 17:00:00','2023-06-03 15:00:00',5,3),(4,'2023-06-04 14:00:00','2023-06-04 14:00:00','VEH004','Off-road vehicle for adventure trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi04.jpg?alt=media&token=a2c78826-7d36-4ca4-82e0-01ebf9bb9ac2','Adventure Trip Vehicle',6,'180',0,1,'2023-06-04 16:00:00','2023-06-04 14:00:00',5,4),(5,'2023-06-05 11:00:00','2023-06-05 11:00:00','VEH005','Classic motorcycle for city exploration.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi05.jpg?alt=media&token=d09d7546-fc7a-46ae-af3a-7c36b365df11','City Exploration Motorcycle',2,'80',0,1,'2023-06-05 13:00:00','2023-06-05 11:00:00',5,5),(6,'2023-06-06 10:00:00','2023-06-06 10:00:00','VEH006','Luxury limousine for special events.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi06.jpg?alt=media&token=eff07c46-ebcc-480b-9582-d53eed60c74c','Special Event Limousine',8,'250',0,1,'2023-06-06 12:00:00','2023-06-06 14:00:00',5,6),(7,'2023-06-07 12:00:00','2023-06-07 12:00:00','VEH007','Compact car for everyday use.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi07.jpg?alt=media&token=866a6fb7-9903-47cf-b0c4-2afb139fbb92','Compact Car',4,'80',0,1,'2023-06-07 14:00:00','2023-06-07 12:00:00',5,7),(8,'2023-06-08 15:00:00','2023-06-08 15:00:00','VEH008','SUV for family trips.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi08.jpg?alt=media&token=b4794d0d-7ba7-45d3-8bf0-63500999e439','Family Trip SUV',6,'150',0,1,'2023-06-08 17:00:00','2023-06-08 15:00:00',5,8),(9,'2023-06-09 14:00:00','2023-06-09 14:00:00','VEH009','Convertible car for a stylish ride.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi09.jpg?alt=media&token=734dbe91-281b-4826-81d8-160231c45785','Convertible Car',2,'200',0,1,'2023-06-09 16:00:00','2023-06-09 14:00:00',5,9),(10,'2023-06-10 11:00:00','2023-06-10 11:00:00','VEH010','Motorhome for a comfortable camping experience.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi10.jpg?alt=media&token=2aba0da9-49ed-4520-a0a2-835fc9842cb1','Motorhome',4,'300',0,1,'2023-06-10 13:00:00','2023-06-10 11:00:00',5,10),(11,'2023-06-11 10:00:00','2023-06-11 10:00:00','VEH011','Luxury yacht for a luxurious cruise.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi11.jpg?alt=media&token=a93189b5-34a0-4706-9f9e-89cd741781e2','Luxury Yacht',12,'500',0,1,'2023-06-11 12:00:00','2023-06-11 14:00:00',5,11),(12,'2023-06-12 12:00:00','2023-06-12 12:00:00','VEH012','Helicopter for a thrilling aerial tour.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi12.jpg?alt=media&token=d95e69eb-7bde-426e-8f22-4d6afed3bcf5','Helicopter',2,'1000',0,1,'2023-06-12 14:00:00','2023-06-12 12:00:00',5,12),(13,'2023-06-13 15:00:00','2023-06-13 15:00:00','VEH013','Vintage car for a nostalgic ride.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi13.jpg?alt=media&token=25483fbe-2e0a-4d06-bfc9-f8bcdf2506b0','Vintage Car',2,'150',0,1,'2023-06-13 17:00:00','2023-06-13 15:00:00',5,13),(14,'2023-06-14 14:00:00','2023-06-14 14:00:00','VEH014','Jet ski for an exhilarating water adventure.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi14.jpg?alt=media&token=b41f7cd1-4467-480a-be19-16db6458be33','Jet Ski',1,'200',0,1,'2023-06-14 16:00:00','2023-06-14 14:00:00',5,14),(15,'2023-06-15 11:00:00','2023-06-15 11:00:00','VEH015','Scooter for convenient city travel.','https://firebasestorage.googleapis.com/v0/b/do-an-61e4e.appspot.com/o/vehicle%2Fvi15.jpg?alt=media&token=a523c102-1fd7-4fb6-8d76-435d83e13781','Scooter',1,'50',0,1,'2023-06-15 13:00:00','2023-06-15 11:00:00',5,15);
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
  PRIMARY KEY (`review_id`),
  KEY `FK6vk2hkwp57fmce9en62jy6a8b` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2023-06-22 17:16:41
