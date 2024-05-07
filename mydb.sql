-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Phone'),(2,'Keyboard'),(3,'LapTop'),(4,'Headphone'),(5,'Mouse'),(9,'Freezer');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (10);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `weight` double NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Màn hình Liquid Retina HD LCD 6.1 inch3\r\nChống nước và chống bụi (chống nước ở độ sâu 2 mét trong vòng tối đa 30 phút, đạt mức IP68)1\r\nHệ thống camera kép 12MP với camera Ultra Wide và Wide; chế độ Ban Đêm, chế độ Chân Dung, và khả năng quay video 4K tốc độ tối đa 60 fps\r\nCamera trước TrueDepth 12MP với chế độ Chân Dung, có khả năng quay video 4K, và quay video chậm\r\nXác thực bảo mật với Face ID\r\nChip A13 Bionic với Neural Engine thế hệ thứ ba\r\nKhả năng sạc nhanh\r\nSạc không dây4\r\niOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác','c5b49af6b52996611eb0e6a348030514.jpg','iPhone 11 64GB',520,500,1),(4,'easas','BBQchicken.jpg','BBQ Chicken',9,10,3),(5,'Thiết kế chắc chắn\r\nLaptop Dell Vostro 3405 P132G002ABL được thiết kế với tone màu đen truyền thống, các cạnh xung quanh được thiết kế vát gọn lại sẽ tạo cảm giác thanh thoát hơn, máy có trọng lượng khá nhẹ, chỉ 1.6kg sẽ rất thuận tiện cho người dung trong việc di chuyển. \r\n\r\nHiệu năng đủ dùng\r\nDell Vostro 3405 sử dụng cpu AMD Ryzen (TM) R3 - 3250U  2 nhân 4 luồng, xung nhịp 2.6Ghz up to 3.5 Ghz kết hợp với VGA AMD A PU ; Ram 8GB DDR4 2400Mhz; ổ cứng  1TB 5400 rpm 2.5\" SATA HDD cho hiệu quả xử lý nhanh các tác vụ văn phòng và ứng dụng cơ bản phổ biến. \r\nTouchpad rộng rãi, cho phản ứng nhanh và chính xác với các thao tác vuốt, cuộn, kéo.\r\n\r\nMàn hình sắc nét\r\nMàn hình của V3405 có kích thước 14.0-inch, độ phân giải 14.0-inch FHD (1920x1080) chống chói, LED Backlight với viền màn hình hẹp 2 giúp cho không gian làm việc rộng rãi hơn và thoải mái hơn khi làm việc trong môi trường ánh sáng ngoài trời. ','7c79bc4164e157897beab72adc9f0919.jpg','Laptop Dell Vostro 3405 P132G002ABL',700,3200,3),(6,'CÔNG NGHỆ KHÔNG DÂY LIGHTSPEED SIÊU CAO CẤP\r\nLightSpeed là công nghệ không dây tiên tiên nhất trên thế giới do chính Logitech nghiên cứu và phát triển, đã được ứng dụng rất nhiều trên các loại chuột gaming không dây cao cấp. Và nay, lần đầu tiên được ứng dụng cho tai nghe gaming với phiên bản Logitech G733 LightSpeed Wireless. Nhờ công nghệ này, Logitech G733 LightSpeed Wireless có khả năng kết nối ổn định và gần như không có độ trễ, đặc biệt phạm vi hoạt động lên tới 20m (so với khoảng 10m với công nghệ thông thường).','47fbb16a299990be59609abc53b16d0a.png','Tai nghe Gaming Logitech G733 LIGHTSPEED Wireless 7.1 RGB',110,200,4),(7,'- Đèn led nền và led phím với nhiều màu và tắt mở bằng phím Scroll Lock (trên phím home)\r\n\r\n- Số Phím: 104 phím - Antighost bấm 1 lần được nhiều phím\r\n\r\n- Phím giả cơ nghe âm thanh rất thanh và êm\r\n\r\n- Chuột Chuyên Game được thiết kế riêng dành cho game thủ và phòng nét.\r\n\r\n- Với đường nét thiết kế góc cạnh tạo nên sự khác biệt với nhiều sản phẩm khác.\r\n\r\n- Con lăn thiết kế nhỏ nhưng dể dàng di chuyển và có độ bền cao.\r\n\r\n- 2 viền bên cạnh được thiết kế nhô ra và ma sát giúp game thủ dể dàng cầm và di chuyển khi sử dụng đặc biệt là khi chơi game với tốc độ cao mà không hề bị mỏi.\r\n\r\n- Phù hợp với nhiều loại hệ điều hành khác nhau, nhiều cấu hình máy của PC hoặc laptop.\r\n\r\n- Đèn Led bắt mắt, phù hợp cho các game thủ chơi Game vào ban đêm.','0207d89c19fa8c1d5268e2597806e691.jpg','Bộ Bàn Phím Giả Cơ và Chuột Chuyên Game G21 Led 7 Màu',10,500,2),(11,'Đặc điểm nổi bật\r\nCửa thiết kế kín, ngăn sự thoát nhiệt, tiết kiệm điện tối đa\r\nHệ thống 7 ngăn linh hoạt giúp dễ phân loại các ngăn đựng \r\nDàn lạnh làm bằng nhôm làm lạnh nhanh, giữ nhiệt tốt\r\nNút điều chỉnh nhiệt độ nằm bên ngoài, dễ dàng điều chỉnh\r\nThân tủ từ nhựa ABS cao cấp, sang trọng và độ bền cao\r\nThiết kế chân tủ chắc chắn và vững chãi, an toàn sử dụng\r\nTủ đông sử dụng gas R134a thân thiện với môi trường','10021251-tu-dong-sanaky-230l-vh-230hy-1_710h-c7.jpg','Tủ đông Sanaky 230 lít VH-230HY',0,0,9);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,1),(1,2),(5,2),(8,2),(9,2),(10,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','Admin','emsi','$2a$10$DqARHWN6FYDc2Iw5IURhe.OwRypjKRURIOaM6TTzKJKs/C1EXrxt.'),(2,'1111@gmail.com','emsi','Nguyễn','$2a$10$DqARHWN6FYDc2Iw5IURhe.OwRypjKRURIOaM6TTzKJKs/C1EXrxt.'),(5,'emsi@gmail.com','Công','Nguyễn','$2a$10$DqARHWN6FYDc2Iw5IURhe.OwRypjKRURIOaM6TTzKJKs/C1EXrxt.'),(8,'emsikorea1309@gmail.com','Công','Nguyễn',NULL),(9,'cdz13091999@gmail.com','thần','chết',NULL),(10,'hoagao6791@gmail.com','Thị Hoa','Bùi',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 20:29:15
