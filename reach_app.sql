-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 09:52 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.3.29-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reach_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `tags_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertiser_id` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `type`, `category_id`, `tags_ids`, `advertiser_id`, `start_date`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ad first', 'paid', 3, '[1,2,4]', 3, '2021-07-09', 'ad first 2021', '2021-07-07 22:23:35', '2021-07-08 06:39:57', NULL),
(2, 'ad1', 'free', 2, '[1,2]', 1, '2021-07-09', 'ad1 2021', '2021-07-07 22:24:37', '2021-07-07 22:24:37', NULL),
(3, 'ad1', 'paid', 3, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:25:36', '2021-07-07 22:42:18', '2021-07-07 22:42:18'),
(4, 'ad1', 'free', 1, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:28:47', '2021-07-07 22:28:47', NULL),
(5, 'ad1', 'free', 1, '[1,2]', 1, '2021-07-09', 'ad1 2021', '2021-07-07 22:29:11', '2021-07-07 22:29:11', NULL),
(6, 'ad1', 'paid', 1, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:29:16', '2021-07-07 22:29:16', NULL),
(7, 'ad1', 'free', 2, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:29:17', '2021-07-07 22:29:17', NULL),
(8, 'ad1', 'free', 3, '[1,2]', 1, '2021-07-09', 'ad1 2021', '2021-07-07 22:30:36', '2021-07-07 22:30:36', NULL),
(9, 'ad1', 'paid', 3, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:31:27', '2021-07-07 22:31:27', NULL),
(10, 'ad1', 'free', 2, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:31:39', '2021-07-07 22:31:39', NULL),
(11, 'ad1', 'free', 2, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:32:48', '2021-07-07 22:32:48', NULL),
(12, 'ad22', 'paid', 1, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 22:37:07', '2021-07-07 22:37:07', NULL),
(13, 'ad22', 'paid', 1, '[1,2]', 1, '2021-07-10', 'ad1 2021', '2021-07-07 23:28:44', '2021-07-07 23:28:44', NULL),
(14, 'ad 20', 'free', 4, '[1,2]', 3, '2021-07-09', 'ad20 2021', '2021-07-08 06:39:06', '2021-07-08 06:39:06', NULL),
(15, 'ad 20', 'free', 4, '[1,2]', 3, '2021-07-09', 'ad20 2021', '2021-07-08 14:16:37', '2021-07-08 14:16:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

CREATE TABLE `advertisers` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisers`
--

INSERT INTO `advertisers` (`id`, `full_name`, `email`, `phone_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kathryne Tremblay', 'hayden.yundt@hotmail.com', '801.328.3530', '2021-07-07 22:08:36', '2021-07-07 22:08:36', NULL),
(2, 'Lucy Grady', 'jamison05@yahoo.com', '804.338.6425', '2021-07-07 22:08:36', '2021-07-07 22:08:36', NULL),
(3, 'Nicklaus Gorczany', 'hamill.jack@yahoo.com', '206.388.9664', '2021-07-07 22:08:36', '2021-07-07 22:08:36', NULL),
(4, 'Jerry Hegmann', 'audra.hill@bergnaum.com', '+1-283-247-9808', '2021-07-07 22:08:36', '2021-07-07 22:08:36', NULL),
(5, 'Irma Beier', 'catharine62@quigley.com', '+1 (870) 975-4775', '2021-07-07 22:08:36', '2021-07-07 22:08:36', NULL),
(6, 'Isabelle Hamill', 'valtenwerth@yahoo.com', '410.775.3500', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(7, 'Clinton Schumm', 'jalen64@hotmail.com', '(973) 541-4948', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(8, 'Chance Altenwerth', 'thora.considine@gmail.com', '+1.970.725.0219', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(9, 'Ali Sipes', 'zion.kovacek@ferry.com', '+1-650-430-9397', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(10, 'Gudrun Lehner', 'claudia.dietrich@mann.com', '1-707-819-1894', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(11, 'Gene Cartwright', 'ibode@hotmail.com', '+1-678-520-7977', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(12, 'Katarina Corkery', 'joanny07@yahoo.com', '+1-605-530-1617', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(13, 'Karlie Eichmann', 'rrowe@cormier.com', '1-281-932-3175', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(14, 'Brown Stamm', 'lonzo41@mcglynn.biz', '(650) 417-3411', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(15, 'Gerhard Luettgen', 'ali.beatty@yahoo.com', '(240) 629-3296', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(16, 'Billy Stark', 'hintz.dustin@hotmail.com', '214.639.2593', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(17, 'Stevie Sawayn', 'jsmitham@leuschke.info', '1-351-325-5288', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(18, 'Isaiah Kuhlman', 'antonia08@hotmail.com', '+1 (727) 486-4940', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(19, 'Leonora Grady', 'aufderhar.oren@flatley.com', '(307) 857-7952', '2021-07-07 22:08:37', '2021-07-07 22:08:37', NULL),
(20, 'Helga Graham', 'reynolds.alyce@crooks.com', '364-989-8232', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(21, 'Anne Carter', 'mwiegand@purdy.com', '+18203941786', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(22, 'Liam Conn', 'mebert@hotmail.com', '(769) 713-1851', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(23, 'Bruce Kreiger', 'brett64@yahoo.com', '1-269-299-8816', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(24, 'Sydnie Kub', 'labshire@yahoo.com', '(218) 486-7532', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(25, 'Keshaun Gleason', 'witting.ignatius@yahoo.com', '223-363-5661', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(26, 'Jailyn Wisoky', 'nhilpert@nicolas.com', '206-765-9677', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(27, 'Alicia Wolff', 'adrian30@watsica.com', '1-470-201-9521', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(28, 'Clarabelle Hoeger', 'mauricio.oconner@hotmail.com', '1-562-248-8544', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(29, 'Eladio Mueller', 'desiree18@yahoo.com', '(724) 831-7574', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(30, 'Kim Schultz', 'hoyt.cremin@hotmail.com', '+13866162817', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(31, 'Jalon Gottlieb', 'richard43@hotmail.com', '(283) 436-4833', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(32, 'Abdiel Vandervort', 'tgrady@yahoo.com', '+1-301-367-8485', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(33, 'Travis Predovic', 'arjun91@considine.com', '+1-910-501-9998', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(34, 'Lisette Upton', 'clementine52@gmail.com', '(580) 614-1855', '2021-07-07 22:08:38', '2021-07-07 22:08:38', NULL),
(35, 'Yolanda Jones', 'lamar.bechtelar@lynch.com', '+1-520-607-3308', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(36, 'Madisyn Effertz', 'lruecker@hotmail.com', '1-575-429-0395', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(37, 'Edmond Dickens', 'mosciski.katlyn@feest.biz', '1-260-549-6428', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(38, 'Jaylon Shields', 'gkilback@hotmail.com', '+1-339-667-6861', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(39, 'June Kunde', 'champlin.myra@breitenberg.com', '+1 (361) 556-9591', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(40, 'Jany Dickinson', 'lbins@mraz.com', '(660) 786-1471', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(41, 'Destiney Metz', 'zosinski@schinner.com', '1-202-516-3948', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(42, 'Madonna Senger', 'mlindgren@bailey.com', '831.873.3738', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(43, 'Anastasia Heidenreich', 'hermiston.alverta@hotmail.com', '484-200-1923', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(44, 'Larissa Wyman', 'ronaldo.johnston@hartmann.biz', '(689) 492-7747', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(45, 'Martine Gusikowski', 'stephanie44@koch.com', '1-681-705-2718', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(46, 'Joshua Haag', 'mcdermott.isaiah@gmail.com', '1-602-954-5550', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(47, 'Garnet Ankunding', 'conroy.katheryn@lubowitz.info', '276.426.4680', '2021-07-07 22:08:39', '2021-07-07 22:08:39', NULL),
(48, 'Gerson Hessel', 'ritchie.myrna@hilpert.com', '+1-786-444-3502', '2021-07-07 22:08:40', '2021-07-07 22:08:40', NULL),
(49, 'Elmo Wilkinson', 'nicole.schimmel@toy.org', '+1-972-284-5251', '2021-07-07 22:08:40', '2021-07-07 22:08:40', NULL),
(50, 'Caroline Beatty', 'grimes.emelie@osinski.com', '520.876.9885', '2021-07-07 22:08:40', '2021-07-07 22:08:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cat 1', 'category1 2021', '2021-07-07 21:21:00', '2021-07-07 21:21:00', NULL),
(2, 'cat 2', 'category2 2021', '2021-07-07 21:21:25', '2021-07-07 21:21:25', NULL),
(3, 'cat 3', 'category3 2021', '2021-07-07 21:21:34', '2021-07-07 23:27:51', '2021-07-07 23:27:51'),
(4, 'cat 3', 'category3 2021', '2021-07-07 23:27:37', '2021-07-07 23:27:37', NULL),
(5, 'cat 5', 'category5 2021', '2021-07-08 06:36:05', '2021-07-08 06:37:09', NULL),
(6, 'cat 3', 'category3 2021', '2021-07-08 14:13:12', '2021-07-08 14:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2021_07_07_142752_create_categories_table', 1),
(6, '2021_07_07_143002_create_ads_table', 1),
(7, '2021_07_07_143222_create_tags_table', 1),
(8, '2021_07_07_143650_create_advertisers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ad first', 'ad first 2021', '2021-07-07 21:21:47', '2021-07-07 22:40:48', NULL),
(2, 'tag 2', 'tag2 2021', '2021-07-07 21:21:55', '2021-07-07 21:21:55', NULL),
(3, 'tag 3', 'tag3 2021', '2021-07-07 21:22:05', '2021-07-07 23:28:35', '2021-07-07 23:28:35'),
(4, 'tag 3', 'tag3 2021', '2021-07-07 23:27:57', '2021-07-07 23:27:57', NULL),
(5, 'tag 5', 'tag5 2021', '2021-07-08 06:37:47', '2021-07-08 06:38:22', NULL),
(6, 'tag 4', 'tag4 2021', '2021-07-08 14:16:18', '2021-07-08 14:16:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisers`
--
ALTER TABLE `advertisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `advertisers`
--
ALTER TABLE `advertisers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
