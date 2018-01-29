-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id` int(5) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Alexandr','Ivanov'),(2,'Ivan','Petrov'),(3,'Dmitriy','Shevchenko'),(4,'Oleg','Shpytsya'),(5,'Igor','Grusha'),(6,'Oksana','Petrova'),(7,'Ivana','Ivanova'),(8,'Iryna','Shevchenko'),(9,'Olga','Petrova'),(10,'Yulia','Dovga');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(5) NOT NULL AUTO_INCREMENT,
  `post_title` text,
  `post_text` text,
  `post_date` date DEFAULT NULL,
  `author_id` int(5) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Article 1','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2018-01-28',1),(2,'Article 2','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2018-01-28',1),(3,'Article 3','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2018-01-28',2),(4,'Article 4','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-10-15',2),(5,'Article 5','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-08-03',3),(6,'Article 6','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-10-25',3),(7,'Simple Article 7','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-12-21',4),(8,'Simple Article 8','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-02-25',4),(9,'Simple Article 9','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-07-02',5),(10,'Simple Article 10','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-07-05',5),(11,'Simple Article 11','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-09-15',6),(12,'Article 12','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-10-15',7),(13,'Article 13','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-11-16',8),(14,'Article 14','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-08-15',9),(15,'Article 15','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia ea, praesentium sint odio quis impedit esse reprehenderit optio assumenda cumque, libero illo autem, nostrum quae nam natus sapiente quidem ex, velit non inventore hic. Incidunt explicabo dignissimos rem repudiandae temporibus, voluptate quisquam, dolor. Unde quos repellendus iste, quo deserunt rerum!','2017-12-15',10);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_tags` (
  `post_id` int(5) NOT NULL,
  `tag_name` varchar(50) NOT NULL,
  KEY `post_id` (`post_id`),
  KEY `tag_name` (`tag_name`),
  CONSTRAINT `posts_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `posts_tags_ibfk_2` FOREIGN KEY (`tag_name`) REFERENCES `tags` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES (1,'sport'),(1,'culture'),(2,'science'),(3,'policy'),(4,'IT'),(5,'economy'),(6,'sport'),(10,'culture'),(11,'science'),(12,'policy'),(13,'IT'),(14,'economy'),(15,'sport'),(15,'culture'),(15,'science'),(13,'policy'),(14,'IT'),(11,'economy'),(10,'sport'),(5,'culture'),(6,'science'),(4,'policy'),(3,'IT'),(2,'economy');
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_name`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('culture'),('economy'),('IT'),('news'),('policy'),('science'),('sport');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-29 17:19:13
