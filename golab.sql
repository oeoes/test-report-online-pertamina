Terminal close -- exit!
trib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: golab
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `after_reports`
--

DROP TABLE IF EXISTS `after_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `after_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `master_data_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `after_reports_product_id_foreign` (`product_id`),
  KEY `after_reports_master_data_id_foreign` (`master_data_id`),
  CONSTRAINT `after_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `after_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `after_reports`
--

LOCK TABLES `after_reports` WRITE;
/*!40000 ALTER TABLE `after_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `after_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `before_reports`
--

DROP TABLE IF EXISTS `before_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `before_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `master_data_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `before_reports_product_id_foreign` (`product_id`),
  KEY `before_reports_master_data_id_foreign` (`master_data_id`),
  CONSTRAINT `before_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `before_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `before_reports`
--

LOCK TABLES `before_reports` WRITE;
/*!40000 ALTER TABLE `before_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `before_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coq_reports`
--

DROP TABLE IF EXISTS `coq_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coq_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `master_data_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coq_reports_product_id_foreign` (`product_id`),
  KEY `coq_reports_master_data_id_foreign` (`master_data_id`),
  CONSTRAINT `coq_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coq_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coq_reports`
--

LOCK TABLES `coq_reports` WRITE;
/*!40000 ALTER TABLE `coq_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `coq_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution_reports`
--

DROP TABLE IF EXISTS `distribution_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribution_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `master_data_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `distribution_reports_product_id_foreign` (`product_id`),
  KEY `distribution_reports_master_data_id_foreign` (`master_data_id`),
  CONSTRAINT `distribution_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `distribution_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution_reports`
--

LOCK TABLES `distribution_reports` WRITE;
/*!40000 ALTER TABLE `distribution_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `distribution_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make_test_reports`
--

DROP TABLE IF EXISTS `make_test_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `make_test_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `master_data_id` bigint(20) unsigned NOT NULL,
  `coq` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `make_test_reports_product_id_foreign` (`product_id`),
  KEY `make_test_reports_master_data_id_foreign` (`master_data_id`),
  CONSTRAINT `make_test_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `make_test_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make_test_reports`
--

LOCK TABLES `make_test_reports` WRITE;
/*!40000 ALTER TABLE `make_test_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `make_test_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_data`
--

DROP TABLE IF EXISTS `master_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_max` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `master_data_product_id_foreign` (`product_id`),
  CONSTRAINT `master_data_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_data`
--

LOCK TABLES `master_data` WRITE;
/*!40000 ALTER TABLE `master_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_30_144800_create_test_requests_table',1),(5,'2019_09_30_144907_create_test_reports_table',1),(6,'2019_10_06_154820_create_spesific_reports_table',1),(7,'2019_10_10_045048_create_release_reports_table',1),(8,'2019_10_17_152554_create_products_table',1),(9,'2019_10_17_171303_create_master_data_table',1),(10,'2019_10_22_155055_create_make_test_reports_table',1),(11,'2019_10_23_051643_create_coq_reports_table',1),(12,'2019_10_23_053414_create_before_reports_table',1),(13,'2019_10_23_053424_create_after_reports_table',1),(14,'2019_10_23_053436_create_distribution_reports_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_reports`
--

DROP TABLE IF EXISTS `release_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_ambil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_terima` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_reports`
--

LOCK TABLES `release_reports` WRITE;
/*!40000 ALTER TABLE `release_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `release_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spesific_reports`
--

DROP TABLE IF EXISTS `spesific_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spesific_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_coq` tinyint(4) NOT NULL DEFAULT '0',
  `print_before` tinyint(4) NOT NULL DEFAULT '0',
  `print_after` tinyint(4) NOT NULL DEFAULT '0',
  `print_distribution` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spesific_reports`
--

LOCK TABLES `spesific_reports` WRITE;
/*!40000 ALTER TABLE `spesific_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `spesific_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_reports`
--

DROP TABLE IF EXISTS `test_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_max` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coq_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_reports_user_id_foreign` (`user_id`),
  CONSTRAINT `test_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_reports`
--

LOCK TABLES `test_reports` WRITE;
/*!40000 ALTER TABLE `test_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_requests`
--

DROP TABLE IF EXISTS `test_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `urutan_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_sample` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengambil_sample` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `approved` datetime DEFAULT NULL,
  `approved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted` datetime DEFAULT NULL,
  `accepted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `sampled_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrived` datetime DEFAULT NULL,
  `arrived_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testing` datetime DEFAULT NULL,
  `tested_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `released` datetime DEFAULT NULL,
  `released_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progress` enum('waiting','accepted','sampling','arrived','testing','released') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','refused') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_requests`
--

LOCK TABLES `test_requests` WRITE;
/*!40000 ALTER TABLE `test_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('lv1','lv2','maintainer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','verified') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maintainer','maintainer@pertamina.com','2019-10-24 04:07:28','$2y$10$flwvkbrjwFLhqTnUV9Ea/ecfH0KOvrMPpFygr26yDM3niSdr26Wcu','maintainer','verified','ZFLPHlzWuC','2019-10-24 04:07:28','2019-10-24 04:07:28');
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

-- Dump completed on 2019-10-24 11:10:26
