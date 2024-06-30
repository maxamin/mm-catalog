SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `catalog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `catalog`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_priority_index` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `title`, `priority`)
VALUES
(1,NULL,'Stimulants',10000),
  (2,1,'Cocaine',9900),
  (3,1,'Amphetamine',9890),
  (4,1,'Methamphetamine',9880),
  (5,1,'Miscellaneous',9870),
  (6,NULL,'Marijuana',9500),
  (7,6,'Bumps',9400),
  (8,6,'Hashish',9390),
  (9,6,'Plan',9380),
  (10,6,'Miscellaneous',9370),
  (11,NULL,'Psychedelics',9000),
  (12,11,'LSD',8900),
  (13,11,'Mushrooms',8890),
  (14,11,'TO*',8880),
  (15,11,'*-NBOMe',8870),
  (16,11,'2C-*',8860),
  (17,11,'Mescaline',8850),
  (18,11,'Miscellaneous',8840),
  (19,NULL,'Euphoretics',8500),
  (20,19,'MDMA',8400),
  (21.19,'Tablets',8390),
  (22,19,'Mephedrone',8380),
  (23,19,'MDA',8370),
  (24,19,'Methylone (bk-MDMA)',8360),
  (25,19,'Miscellaneous',8350),
  (26,NULL,'Pharmacy',8000),
  (27,26,'Tranquilizers',7900),
  (28,26,'Depressants',7890),
  (29,26,'Miscellaneous',7880),
  (30,NULL,'Dissociatives',7500),
  (31.30,'Ketamine',7400),
  (32.30,'Methoxetamine (MXE)',7390),
  (33,30,'Miscellaneous',7380),
  (34,NULL,'Opiates',7000),
  (35,34,'Heroin',6900),
  (36.34,'Methadone',6890),
  (37.34,'Tramadol',6880),
  (38.34,'Fentanyl',6870),
  (39,34,'Miscellaneous',6860),
  (40,NULL,'Sets',6500),
  (41.40,'For a large company',6400),
  (42.40,'For two',6390),
  (43,40,'Into space',6380),
  (44,40,'Miscellaneous',6370);
  /*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `cities_priority_index` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;

INSERT INTO `cities` (`id`, `title`, `priority`)
VALUES
(1,'Moscow',10000),
  (2,'Moscow region',9950),
  (3,'St. Petersburg',9900),
  (4,'Shipping within Russia',9850),
  (5,'Shipping within Ukraine',9800),
  (6,'Dispatching throughout Russia and the CIS',9750),
  (7,'No region',9700),
  (8,'Adler',8000),
  (9,'Anapa',7950),
  (10,'Arkhangelsk',7900),
  (11,'Astrakhan',7850),
  (12,'Barnaul',7800),
  (13,'Belgorod',7750),
  (14,'Biysk',7700),
  (15,'Blagoveshchensk',7650),
  (16,'Borovsk (Kaluga region)',7600),
  (17,'Bryansk',7550),
  (18,'Veliky Novgorod',7500),
  (19,'Vladivostok',7450),
  (20,'Vladimir',7400),
  (21,'Volgograd',7350),
  (22,'Vologda',7300),
  (23,'Voronezh',7250),
  (24,'Vyshny Volochek',7200),
  (25,'Gelendzhik',7150),
  (26,'Dzerzhinsk (Nizhny Novgorod region)',7100),
  (27,'Dnepropetrovsk',7050),
  (28,'Evpatoria',7000),
  (29,'Ekaterinburg',6950),
  (30,'Zaporozhye',6900),
  (31,'Zelenograd',6850),
  (33,'Ivanovo',6750),
  (34,'Izhevsk',6700),
  (35,'Irkutsk',6650),
  (36,'Yoshkar-Ola',6600),
  (37,'Kazan',6550),
  (38,'Kaluga',6500),
  (39,'Kemerovo',6450),
  (40,'Kerch',6400),
  (41,'Kyiv',6350),
  (42,'Kirov',6300),
  (43,'Wedge',6250),
  (44,'Koktebel',6200),
  (45,'Kolomna',6150),
  (46,'Kostroma',6100),
  (47,'Krasnodar',6050),
  (48,'Krasnoyarsk',6000),
  (49,'Crimea',5950),
  (50,'Kstovo (Nizhny Novgorod region)',5900),
  (51,'Kurgan',5850),
  (52,'Kursk',5800),
  (53,'Lipetsk',5750),
  (54,'Lviv',5700),
  (55,'Lyubertsy MO',5650),
  (56,'Magnitogorsk',5600),
  (57,'Miass',5550),
  (58,'Minsk',5500),
  (59,'Naberezhnye Chelny',5450),
  (60,'Naro-Fominsk',5400),
  (61,'Nizhnevartovsk',5350),
  (62,'Nizhny Novgorod',5300),
  (63,'Novokuznetsk',5250),
  (64,'Novomoskovsk',5200),
  (65,'Novorossiysk',5150),
  (66,'Novosibirsk',5100),
  (67,'Obninsk',5050),
  (68,'Odessa',5000),
  (69,'Omsk',4950),
  (70,'Eagle',4900),
  (71,'Orenburg',4850),
  (72,'Penza',4800),
  (73,'Pervouralsk',4750),
  (74,'Perm',4700),
  (75,'Petrozavodsk',4650),
  (76,'Pskov',4600),
  (77,'Rostov-on-Don',4550),
  (78,'Ryazan',4500),
  (79,'Samara',4450),
  (80,'Saratov',4400),
  (81,'Sevastopol',4350),
  (83,'Serpukhov',4250),
  (84,'Simferopol',4200),
  (85,'Smolensk',4150),
  (86,'Sochi',4100),
  (87,'Stavropol',4050),
  (88,'Sterlitamak',4000),
  (89,'Pike perch',3950),
  (90,'Surgut',3900),
  (91,'Sukhinichi',3850),
  (92,'Tambov',3800),
  (93,'Tver',3750),
  (94,'Tobolsk',3700),
  (95,'Tolyatti',3650),
  (96,'Tomsk',3600),
  (97,'Torzhok',3550),
  (98,'Tula',3500),
  (99,'Tyumen',3450),
  (100,'Ulyanovsk',3400),
  (101,'Ufa',3350),
  (102,'Feodosia',3300),
  (103,'Khabarovsk',3250),
  (104,'Kharkov',3200),
  (105,'Cheboksary',3150),
  (106,'Chelyabinsk',3100),
  (107,'Cherepovets',3050),
  (108,'Shchekino',3000),
  (109,'Yakutsk',2950),
  (110,'Yalta',2900),
  (111,'Yaroslavl',2850);

/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table fetched_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fetched_images`;

CREATE TABLE `fetched_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fetched_images_app_id_index` (`app_id`),
  KEY `fetched_images_remote_url_index` (`remote_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_good_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url_local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cached` tinyint(1) NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_quests` tinyint(1) NOT NULL,
  `has_ready_quests` tinyint(1) NOT NULL,
  `buy_count` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_app_id_index` (`app_id`),
  KEY `goods_city_id_index` (`city_id`),
  KEY `goods_city_id_category_id_index` (`city_id`,`category_id`),
  KEY `goods_app_id_app_good_id_index` (`app_id`,`app_good_id`),
  KEY `goods_app_id_has_quests_index` (`app_id`,`has_quests`),
  KEY `goods_city_id_has_quests_index` (`city_id`,`has_quests`),
  KEY `goods_city_id_category_id_has_quests_index` (`city_id`,`category_id`,`has_quests`),
  KEY `goods_app_id_has_quests_has_ready_quests_index` (`app_id`,`has_quests`,`has_ready_quests`),
  KEY `goods_city_id_has_ready_quests_index` (`city_id`,`has_ready_quests`),
  KEY `goods_city_id_category_id_has_ready_quests_index` (`city_id`,`category_id`,`has_ready_quests`),
  KEY `goods_has_quests_index` (`has_quests`),
  KEY `goods_has_quests_has_ready_quests_index` (`has_quests`,`has_ready_quests`),
  KEY `goods_city_id_has_quests_has_ready_quests_index` (`city_id`,`has_quests`,`has_ready_quests`),
  KEY `goods_category_id_has_quests_has_ready_quests_index` (`category_id`,`has_quests`,`has_ready_quests`),
  KEY `goods_city_id_category_id_has_quests_has_ready_quests_index` (`city_id`,`category_id`,`has_quests`,`has_ready_quests`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table goods_packages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods_packages`;

CREATE TABLE `goods_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_good_id` int(11) NOT NULL,
  `app_package_id` int(11) NOT NULL,
  `amount` double(16,8) NOT NULL,
  `measure` enum('gr','piece','ml') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(16,8) NOT NULL,
  `currency` enum('btc','rub','usd') COLLATE utf8mb4_unicode_ci NOT NULL,
  `preorder` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_packages_app_id_index` (`app_id`),
  KEY `goods_packages_good_id_index` (`good_id`),
  KEY `goods_packages_app_id_app_good_id_index` (`app_id`,`app_good_id`),
  KEY `goods_packages_app_id_good_id_index` (`app_id`,`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table goods_positions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods_positions`;

CREATE TABLE `goods_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_package_id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `app_custom_place_id` int(11) DEFAULT NULL,
  `app_custom_place_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_positions_app_id_index` (`app_id`),
  KEY `goods_positions_good_id_index` (`good_id`),
  KEY `goods_positions_package_id_index` (`package_id`),
  KEY `goods_positions_good_id_package_id_index` (`good_id`,`package_id`),
  KEY `search` (`package_id`,`region_id`,`app_custom_place_id`,`app_custom_place_title`),
  KEY `goods_positions_app_id_package_id_index` (`app_id`,`package_id`),
  KEY `goods_positions_app_id_app_package_id_index` (`app_id`,`app_package_id`),
  KEY `goods_positions_app_id_region_id_index` (`app_id`,`region_id`),
  KEY `goods_positions_app_id_package_id_region_id_index` (`app_id`,`package_id`,`region_id`),
  KEY `goods_positions_app_id_app_package_id_region_id_index` (`app_id`,`app_package_id`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `text`, `author`, `created_at`, `updated_at`)
VALUES
(1,'Welcome to the Ex-Solaris catalog!','<p>We welcome all users reading this news. We, Zanzi and the team, are pleased to present to you the long-awaited update - the first version of the general catalog of stores on the Ex-Solaris platform. The version number indicates that this is our first step towards creating a truly powerful and multifunctional product. Having gone a long way and working closely with the largest sellers, we have created the best tool for doing business. Our main principles are honesty, reliability, mutual respect and a constant desire to move forward. </p>\n\n<p>The latest events in the world of the darknet have completely changed the rules of the game, and the stronghold of stability that existed for a long time has disappeared, creating a wave of chaos in the shadow segment of the Internet. The market that we knew and loved is becoming a thing of the past, opening up. new ways of development. The main property of any social community is the ability to adapt. It is the ability to adapt and adapt that is the engine of evolution - a natural process that continuously occurs in any environment. Therefore, the Ex-Solaris project sets itself a very important goal: we want to become a new round of evolution that will take the darknet market to a new level. We invite all users to take part in shaping our joint future.</p>\n\n<p>Good luck!</p>','Ex-Solaris','2017-09-04 05:32:59',' 2017-09-04 05:33:03');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_order_id` int(11) NOT NULL,
  `app_good_id` int(11) NOT NULL,
  `good_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `good_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `good_image_url_local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `good_image_cached` tinyint(1) NOT NULL DEFAULT '0',
  `package_amount` double(16,8) NOT NULL,
  `package_measure` enum('gr','piece','ml') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` double(16,8) NOT NULL,
  `package_currency` enum('btc','rub','usd') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_preorder` tinyint(1) NOT NULL,
  `package_preorder_time` enum('24','48','72') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('preorder_paid','paid','problem','finished') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `app_created_at` timestamp NULL DEFAULT NULL,
  `app_updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_app_id_index` (`app_id`),
  KEY `orders_app_id_user_id_index` (`app_id`,`user_id`),
  KEY `orders_user_id_index` (`user_id`),
  KEY `orders_user_id_good_image_cached_index` (`user_id`,`good_image_cached`),
  KEY `orders_created_at_index` (`created_at`),
  KEY `orders_app_created_at_index` (`app_created_at`),
  KEY `orders_user_id_good_image_cached_app_created_at_index` (`user_id`,`good_image_cached`,`app_created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table orders_positions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_positions`;

CREATE TABLE `orders_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `quest` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_positions_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table orders_reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_reviews`;

CREATE TABLE `orders_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_good_id` int(11) NOT NULL,
  `app_order_id` int(11) NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_rating` int(11) NOT NULL,
  `dropman_rating` int(11) NOT NULL,
  `item_rating` int(11) NOT NULL,
  `reply_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_reviews_app_id_index` (`app_id`),
  KEY `orders_reviews_good_id_index` (`good_id`),
  KEY `orders_reviews_app_id_good_id_index` (`app_id`,`good_id`),
  KEY `orders_reviews_app_good_id_index` (`app_good_id`),
  KEY `orders_reviews_app_id_app_good_id_index` (`app_id`,`app_good_id`),
  KEY `orders_reviews_order_id_index` (`order_id`),
  KEY `orders_reviews_app_id_order_id_index` (`app_id`,`order_id`),
  KEY `orders_reviews_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table regions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `regions`;

CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `regions_city_id_index` (`city_id`),
  KEY `regions_parent_id_index` (`parent_id`),
  KEY `regions_priority_index` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;

INSERT INTO `regions` (`id`, `city_id`, `parent_id`, `title`, `priority`)
VALUES
  (1,1,NULL,'CAO',1000),
  (2,1,NULL,'VAO',990),
  (3,1,NULL,'SAO',980),
  (4,1,NULL,'SWAO',970),
  (5,1,NULL,'YUWAO',960),
  (6,1,NULL,'YUAO',950),
  (7,1,NULL,'YUZAO',940),
  (8,1,NULL,'ZAO',930),
  (9,1,NULL,'SZAO',920),
  (10,1,NULL,'NAO',910),
  (11,1,NULL,'TAO',900),
  (12,1,NULL,'Zelenograd',890),
  (13,3,NULL,'Admiralty District',1000),
  (14,3,NULL,'Vasileostrovsky district',990),
  (15,3,NULL,'Vyborg district',980),
  (16,3,NULL,'Kalininsky district',970),
  (17,3,NULL,'Kirov district',960),
  (18,3,NULL,'Kolpinsky district',950),
  (19,3,NULL,'Krasnogvardeyskiy district',940),
  (20,3,NULL,'Krasnoselsky District',930),
  (21,3,NULL,'Kronstadt District',920),
  (22,3,NULL,'Resort Area',910),
  (23,3,NULL,'Moscow district',900),
  (24,3,NULL,'Nevsky District',890),
  (25,3,NULL,'Petrograd district',880),
  (26,3,NULL,'Petrodvortsovy district',870),
  (27,3,NULL,'Primorsky District',860),
  (28,3,NULL,'Pushkin district',850),
  (29,3,NULL,'Frunzensky District',840),
  (30,3,NULL,'Central District',830);

/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shops
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url_local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cached` tinyint(1) NOT NULL DEFAULT '0',
  `users_count` int(11) NOT NULL,
  `orders_count` int(11) NOT NULL,
  `rating` double(16,8) NOT NULL DEFAULT '0.00000000',
  `bitcoin_connections` int(11) NOT NULL,
  `bitcoin_block_count` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `eos_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_sync_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shops_app_id_index` (`app_id`),
  KEY `shops_app_key_index` (`app_key`),
  KEY `shops_last_sync_at_index` (`last_sync_at`),
  KEY `shops_enabled_index` (`enabled`),
  KEY `shops_enabled_last_sync_at_index` (`enabled`,`last_sync_at`),
  KEY `shops_image_cached_index` (`image_cached`),
  KEY `shops_image_cached_enabled_index` (`image_cached`,`enabled`),
  KEY `shops_image_cached_enabled_last_sync_at_index` (`image_cached`,`enabled`,`last_sync_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totp_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_jabber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `buy_count` int(11) NOT NULL DEFAULT '0',
  `buy_sum` double(16,8) NOT NULL DEFAULT '0.00000000',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
