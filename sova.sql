-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2024 at 05:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sova`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `password`, `photo`, `status`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Leslie Webster', 'noxiqa@mailinator.com', '$2y$12$az4BN1sSPiQsgXVQabH2c.ZFLDJT4LFIZ97gMt3gUKiitpAlsQQim', '66e158ba07b49.png', '1', '2024-10-04', '2024-09-09 08:47:18', '2024-10-07 08:56:53'),
(2, 'Erasmus Patrick', 'linet@mailinator.com', '$2y$12$uqt9ecYJ3Szf7q7nb0GWu.zETO9/dgram8nNQKh3PWOSyjdjKMTvK', NULL, '1', '2024-10-04', '2024-09-11 08:10:05', '2024-09-11 08:26:35'),
(3, 'Yuli Collier', 'fetagyce@mailinator.com', '$2y$12$itmrGQTp.0LD8cgacYEdLe7z7rmAKDGLU1jk6j4SQD0EqzicRAVti', NULL, '1', '2024-10-04', '2024-09-18 09:14:32', NULL),
(4, 'Hammett Shields', 'gubykavo@mailinator.com', '$2y$12$8AqfkdskJXZTl8JovrxAY.bY4GPEy.9.HP9MjoXgHRAI0wrRigMoe', NULL, '1', '2024-10-04', '2024-09-18 09:14:37', NULL),
(16, 'Paloma Howard', 'zymyrytiji@mailinator.com', '$2y$12$pn.SnoelMKWPBhusECNwNuf4AW3LTmr2awFoB6G5GGbQa3s9iIL3a', NULL, '1', '2024-10-04', '2024-10-04 09:21:41', '2024-10-04 09:23:27'),
(19, 'Jasper Wood', 'tahsan2.cit.bd@gmail.com', '$2y$12$C7cZb1hw1v.cJPoKGJrav..mjDHfP7iDq2smMKLvhVBKHMFXtraom', NULL, '0', '2024-10-04', '2024-10-04 09:31:22', '2024-10-04 09:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('hexov@mailinator.com|127.0.0.1', 'i:3;', 1727684906),
('hexov@mailinator.com|127.0.0.1:timer', 'i:1727684906;', 1727684906),
('linet@mailinator.com|127.0.0.1', 'i:1;', 1727684961),
('linet@mailinator.com|127.0.0.1:timer', 'i:1727684961;', 1727684961),
('noxiqa@mailinator.com|127.0.0.1', 'i:1;', 1727684946),
('noxiqa@mailinator.com|127.0.0.1:timer', 'i:1727684946;', 1727684946);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Politics', '66dac8975170a.jpg', NULL, '2024-09-06 09:17:12', NULL),
(2, 'Sports', '66dac8f4a30e2.jpg', NULL, '2024-09-06 09:18:44', NULL),
(3, 'Technology', '66dac92663cee.jpg', NULL, '2024-09-06 09:19:34', NULL),
(4, 'Education', '66dac95d42e45.jpg', NULL, '2024-09-06 09:20:29', NULL),
(5, 'International', '66dac97c907be.jpg', NULL, '2024-09-06 09:21:00', NULL),
(6, 'Business', '66dac992142d2.jpg', NULL, '2024-09-06 09:21:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `post_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_id`, `post_id`, `message`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'dhur khela parena', NULL, '2024-09-27 08:55:43', NULL),
(2, 1, 3, 'india ke harai dibe', NULL, '2024-09-27 08:56:40', NULL),
(3, 2, 3, 'khela e dekhum na', NULL, '2024-09-27 08:57:29', NULL),
(4, 2, 3, 'taile apni khelen jan', '1', '2024-09-27 09:09:22', NULL),
(5, 4, 3, 'ok team e amake jayga kore de', '1', '2024-09-27 09:29:01', NULL),
(6, 4, 3, 'ja vag', '3', '2024-09-27 09:29:23', NULL),
(7, 4, 3, 'muri kha sobai', NULL, '2024-09-27 09:29:41', NULL),
(8, 4, 2, 'valo korche', NULL, '2024-09-27 09:32:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_verifies`
--

CREATE TABLE `email_verifies` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Accusamus velit qui', 'Ad esse nisi assume', NULL, '2024-10-09 09:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_09_02_151627_create_categories_table', 2),
(6, '2024_09_06_150552_create_tags_table', 3),
(7, '2024_09_09_143545_create_authors_table', 4),
(8, '2024_09_18_142612_create_posts_table', 5),
(9, '2024_09_25_151610_create_populars_table', 6),
(10, '2024_09_27_144639_create_comments_table', 7),
(11, '2024_09_30_143905_create_permission_tables', 8),
(12, '2024_10_04_151304_create_email_verifies_table', 9),
(13, '2024_10_07_142148_create_pass_resets_table', 10),
(14, '2024_10_09_144822_create_faqs_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 13),
(5, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pass_resets`
--

CREATE TABLE `pass_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add_user', 'web', '2024-09-30 08:45:37', '2024-09-30 08:45:37'),
(2, 'user_del', 'web', '2024-09-30 08:46:17', '2024-09-30 08:46:17'),
(3, 'author', 'web', '2024-09-30 08:46:35', '2024-09-30 08:46:35'),
(4, 'category_add', 'web', '2024-09-30 08:46:57', '2024-09-30 08:46:57'),
(5, 'category', 'web', '2024-09-30 08:47:04', '2024-09-30 08:47:04'),
(6, 'trash_category', 'web', '2024-09-30 08:47:16', '2024-09-30 08:47:16'),
(7, 'tag', 'web', '2024-09-30 08:47:22', '2024-09-30 08:47:22'),
(8, 'tag_add', 'web', '2024-09-30 08:47:29', '2024-09-30 08:47:29'),
(9, 'post_add', 'web', '2024-09-30 08:47:36', '2024-09-30 08:47:36'),
(10, 'post', 'web', '2024-09-30 08:47:41', '2024-09-30 08:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `populars`
--

CREATE TABLE `populars` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `populars`
--

INSERT INTO `populars` (`id`, `post_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 19, NULL, '2024-09-27 09:32:28'),
(2, 3, 59, NULL, '2024-09-27 09:31:41'),
(4, 4, 2, NULL, '2024-09-25 09:22:28'),
(5, 5, 11, NULL, NULL),
(6, 6, 20, NULL, NULL),
(7, 7, 12, NULL, '2024-09-27 08:34:58'),
(8, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int NOT NULL,
  `read_time` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `read_time`, `title`, `slug`, `desp`, `tags`, `thumbnail`, `preview`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 5, 'দেশ ছেড়েছেন আওয়ামী লীগের অনেকেই', 'দেশ-ছেড়েছেন-আওয়ামী-লীগের-অনেকেই-248224', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ছাত্র-জনতার গণ-অভ্যুত্থানে শেখ হাসিনা সরকার পতনের এক মাস পরও আওয়ামী লীগের অনেক নেতা-কর্মী, সাবেক মন্ত্রী ও সংসদ সদস্য অবৈধভাবে দেশত্যাগের চেষ্টা করছেন। ইতিমধ্যে অনেকে দেশ ছেড়ে পালিয়ে গেছেন। পালাতে গিয়ে সীমান্তে ধরাও পড়েছেন কেউ কেউ। সীমান্ত পার হতে গিয়ে মৃত্যুর ঘটনাও ঘটেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">সংশ্লিষ্ট একাধিক সূত্র থেকে জানা গেছে, গত সপ্তাহে সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খান, সাবেক বস্ত্র ও পাটমন্ত্রী জাহাঙ্গীর কবির নানক, আওয়ামী লীগের যুগ্ম সাধারণ সম্পাদক সাবেক সংসদ সদস্য আ ফ ম বাহাউদ্দিন নাছিম সীমান্ত পাড়ি দিয়েছেন। এঁদের আগে (৫ আগস্টের পর) দেশ ত্যাগ করেছেন সাবেক পররাষ্ট্রমন্ত্রী হাছান মাহমুদ, সাবেক স্থানীয় সরকারমন্ত্রী মো. তাজুল ইসলাম, সাবেক শিক্ষামন্ত্রী মহিবুল হাসান চৌধুরী (নওফেল), সাবেক তথ্য প্রতিমন্ত্রী মোহাম্মদ আলী আরাফাত, সাবেক সংসদ সদস্য আলাউদ্দিন আহমেদ (নাসিম) ও আলোচিত আওয়ামী লীগ নেতা নারায়ণগঞ্জের সংসদ সদস্য শামীম ওসমানসহ অনেকে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">যাঁরা পালিয়ে গেছেন বা পালানোর চেষ্টায় আছেন, তাঁদের প্রায় সবাই হত্যাসহ বিভিন্ন মামলার আসামি। এ অবস্থায় প্রশ্ন উঠেছে, সরকার পতনের এত দিন পরও কীভাবে এসব ব্যক্তি দেশ ছেড়ে পালাতে পারছেন।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">আওয়ামী লীগের সাধারণ সম্পাদক ও সাবেক সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের, যুগ্ম সাধারণ সম্পাদক মাহবুব উল আলম হানিফ, সাবেক মন্ত্রী শ ম রেজাউল করিমসহ কেন্দ্রীয় আওয়ামী লীগের আরও বেশ কয়েকজন নেতার দেশ ছাড়ার গুঞ্জন রয়েছে। তবে তাঁদের বর্তমান অবস্থান সম্পর্কে নিশ্চিত হওয়া যায়নি।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">আওয়ামী লীগের নেতাদের অনেকেরই ধারণা, শেখ হাসিনা সরকারের পতনের পরপর ওবায়দুল কাদের সীমান্তবর্তী এলাকায় আশ্রয় নেন। পরে সীমান্ত অতিক্রম করে ভারত চলে যান। সাবেক একজন মন্ত্রী প্রথম আলোকে বলেছেন, তিনি শুনেছেন ওবায়দুল কাদের এখন দুবাই আছেন।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><br></p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">শেখ হাসিনার নিকটাত্মীয় ও সাবেক সংসদ সদস্যদের মধ্যে শেখ ফজলুল করিম সেলিম, শেখ হেলাল উদ্দিন ও তাঁর ছেলে শেখ সারহান নাসের (তন্ময়), হেলালের ভাই সাবেক সংসদ সদস্য শেখ সালাহউদ্দিন জুয়েল এবং আবুল হাসানাত আবদুল্লাহর ছেলে ও বরিশালের সাবেক মেয়র সাদিক আবদুল্লাহ এখনো দেশ ছাড়ার সুযোগ পাননি। তাঁরা দেশের ভেতরে আছেন বলে বিভিন্ন সূত্র থেকে জানা গেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">শেখ হাসিনার আরেক আত্মীয় আবুল হাসানাত আবদুল্লাহ ছাত্র-জনতার গণ-অভ্যুত্থানের কিছুদিন আগেই ভারতে চলে যান। আর ঢাকা দক্ষিণ সিটি করপোরেশনের মেয়র শেখ ফজলে নূর তাপস ৩ আগস্ট রাতে পরিবারসহ দেশ ছাড়েন। তিনি ঢাকা থেকে সিঙ্গাপুর যান। তাঁর পরিবার পৃথক ফ্লাইটে যায় লন্ডনে। তাপসের ভাই যুবলীগের চেয়ারম্যান শেখ ফজলে শামস (পরশ) সরকার পতনের কয়েক দিন আগে, ৩১ জুলাই যুক্তরাষ্ট্র থেকে দেশে ফিরেছিলেন। তিনিও দেশে আছেন বলে জানা গেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">সাবেক অর্থমন্ত্রী আ হ ম মুস্তফা কামালও আন্দোলনের সময় সপরিবার সিঙ্গাপুরে চলে যান। সাবেক বিদ্যুৎ প্রতিমন্ত্রী নসরুল হামিদের (বিপু) অবস্থান সম্পর্কে নিশ্চিত করে কিছু জানা যায়নি। তবে তাঁর ঘনিষ্ঠ হিসেবে পরিচিত সাবেক আইনমন্ত্রী আনিসুল হক ও শেখ হাসিনার উপদেষ্টা সালমান এফ রহমান অবশ্য সরকার পতনের পর শুরুতেই গ্রেপ্তার হয়েছেন। বিদেশ যাওয়ার চেষ্টাকালে গ্রেপ্তার হয়েছেন সাবেক তথ্যপ্রযুক্তি প্রতিমন্ত্রী জুনাইদ আহ্‌মেদও। গতকাল মঙ্গলবার পর্যন্ত মোট ৩০ জন আওয়ামী লীগের সাবেক মন্ত্রী, সংসদ সদস্য ও নেতা গ্রেপ্তার হয়েছেন।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">৫ আগস্টের পর দেশ ছেড়েছেন আওয়ামী লীগের এমন অন্তত ১৫ কেন্দ্রীয় নেতা, সাবেক মন্ত্রী ও সংসদ সদস্যের নাম বিভিন্ন সূত্র থেকে জানা গেছে। অবৈধ পথে দেশ ছাড়ায় ইমিগ্রেশন বিভাগের নথিতে তাঁদের দেশত্যাগের তথ্য নেই। এর বাইরে আওয়ামী লীগ, যুবলীগ, ছাত্রলীগ এবং অন্যান্য সংগঠনের সাবেক ও বর্তমান নেতাদের মধ্যে অন্তত ২৭ জনের দেশ ছাড়ার খবর জানা গেছে। তবে দেশ ছেড়ে পালানো ব্যক্তিদের প্রকৃত সংখ্যা কয়েক শ হবে বলে ধারণা করা হচ্ছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">এ ছাড়া পরিস্থিতি আঁচ করতে পেরে ৫ আগস্টের কিছুদিন আগে বিদেশে পাড়ি জমিয়ে আর দেশে ফেরেননি আওয়ামী লীগের বিভিন্ন পর্যায়ের এমন অন্তত ১৩ নেতার নাম জানা গেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">অবৈধ পথে এভাবে দেশ ছাড়ার বিষয়ে জানতে চাইলে স্বরাষ্ট্র উপদেষ্টা লেফটেন্যান্ট জেনারেল (অব.) মো. জাহাঙ্গীর আলম চৌধুরী তাঁর মুখপাত্রের মাধ্যমে প্রথম আলোকে বলেন, সীমান্তে নজরদারি রয়েছে। সরকার পদক্ষেপ নিচ্ছে বলেই সাবেক সংসদ সদস্য ও অবসরপ্রাপ্ত বিচারপতিসহ অনেকেই বিভিন্ন সীমান্তে ধরা পড়ছেন। এই তৎপরতা অব্যাহত থাকবে।</p>', '2,1', '66ea9481e44ca.webp', '66ea948206314.webp', 1, '2024-09-18 08:51:14', '2024-09-18 09:36:11'),
(3, 1, 2, 6, 'আমি বাংলাদেশকে অভিনন্দন জানাই পাকিস্তানে ওদের পারফরম্যান্সের জন্য। তবে এটা নতুন সিরিজ, নতুন প্রতিপক্ষ।', 'আমি-বাংলাদেশকে-অভিনন্দন-জানাই-পাকিস্তানে-ওদের-পারফরম্যান্সের-জন্য।-তবে-এটা-নতুন-সিরিজ,-নতুন-প্রতিপক্ষ।-81799', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">এমন আবহে চেন্নাইয়ে কাল থেকে শুরু হতে যাওয়া ভারত-বাংলাদেশের দুই ম্যাচের টেস্ট সিরিজের প্রথম টেস্ট পূর্ব সংবাদ সম্মেলনে এলেন গম্ভীর। নতুন দায়িত্ব নেওয়ার পর প্রথম টেস্ট সিরিজ যেহেতু, বেশির ভাগ প্রশ্ন হলো ভারত কেমন টেস্ট ক্রিকেট খেলবে তা নিয়ে। ব্রেন্ডন ম্যাককালাম ইংল্যান্ড ক্রিকেটের দায়িত্ব নেওয়ার পর যেমন ‘বাজবল’ এর জন্ম, তেমন কিছু ভারতীয় ক্রিকেটে হবে না তো? গম্ভীর অবশ্য সেভাবে ভাবতে চান না।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">তাঁর কিছু শক্ত যুক্তিও আছে, ‘দেখুন, আমি সব সময় বিশ্বাস করে এসেছি, সেটাই সেরা স্টাইল যে স্টাইলে খেললে দল জিতে। আমরা সেই দল হতে চাই যারা সব পরিস্থিতিতে মানিয়ে নেয় এবং দ্রুত সবকিছু রপ্ত করে। আমরা ম্যাচের অবস্থা ও কন্ডিশন বুঝে খেলতে চাই এবং উন্নতি করতে চাই।’</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><span style=\"font-size: 18px;\">পরে শুরুতে বলা কথাটায় আরও জোর দিয়ে বললেন, ‘এই যে কেউ একটা স্টাইলে খেলা শুরু করা, সেটার নাম দেওয়া…দেখুন, খেলার মূল কথা হচ্ছে জয়। যেটা মাত্রই বললাম, সেটাই সেরা স্টাইল যে স্টাইলে খেললে জেতা যায়।’</span><br></p>', '6', '66ea9585d29cc.webp', '66ea9585e32d7.webp', 1, '2024-09-18 08:55:33', '2024-09-18 09:36:11'),
(4, 2, 6, 6, 'বাংলাদেশে ভারতের রপ্তানিতে বড় পতন, আগস্টে কমেছে ২৮ শতাংশ', 'বাংলাদেশে-ভারতের-রপ্তানিতে-বড়-পতন,-আগস্টে-কমেছে-২৮-শতাংশ-128465', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ভারত থেকে বাংলাদেশে রপ্তানি আগস্ট মাসে ২৮ শতাংশ কমে গেছে। এ মাসে বাংলাদেশে ৬৮ কোটি ১০ লাখ ডলারের পণ্য রপ্তানি হয়েছে, যা গত বছরের আগস্টে ছিল ৯৪ কোটি ৩০ লাখ ডলার। ভারতের বাণিজ্য ও শিল্প মন্ত্রণালয়ের প্রকাশ করা পরিসংখ্যানের বরাত দিয়ে ইন্ডিয়ান এক্সপ্রেস এ তথ্য দিয়েছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">সংবাদে বলা হয়েছে, বাংলাদেশে বিক্ষোভ ও সংঘাতের কারণে বৈদেশিক মুদ্রার সংকট আরও গভীর হওয়ায় আগস্ট মাসে ভারতের রপ্তানি কমে গেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">এদিকে ঋণমান নির্ণয়কারী প্রতিষ্ঠান ক্রিসিল বলেছে, বাংলাদেশের সাম্প্রতিক ঘটনাবলি ভারতের বাণিজ্যের ওপর উল্লেখযোগ্য প্রভাব ফেলেনি। তবে দেশটিতে অস্থিরতা যদি দীর্ঘস্থায়ী হয়, তাহলে তা ভারতের কিছু রপ্তানিমুখী শিল্পের জন্য আয় ও চলতি মূলধন ঘাটতির কারণ হতে পারে। বাংলাদেশ এসব শিল্পের জন্য চাহিদার অথবা উৎপাদনের কেন্দ্র।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ভারত থেকে বাংলাদেশে সবচেয়ে বেশি রপ্তানি হয় তুলা। পরিসংখ্যানে দেখা গেছে, আগস্ট মাসে ভারতের তুলা রপ্তানি প্রায় ১০ শতাংশ কমেছে। ওই মাসে রপ্তানির পরিমাণ ছিল ১০০ কোটি ডলার, গত বছরের আগস্টে যা ছিল ১১১ কোটি ডলার। বিক্ষোভের কারণে বাংলাদেশে পোশাকের ক্রয়াদেশ কমে যাওয়ার মধ্যে ভারতের তুলা রপ্তানি পড়ে গেছে।</p>', '19,11,21', '66ea961ca457b.webp', '66ea961cb659a.webp', 1, '2024-09-18 08:58:04', '2024-09-18 09:36:10'),
(5, 2, 5, 5, 'গাজায় যুদ্ধ বন্ধের আহ্বান কমলার, চান না ইসরায়েলি দখলদারি', 'গাজায়-যুদ্ধ-বন্ধের-আহ্বান-কমলার,-চান-না-ইসরায়েলি-দখলদারি-266261', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">গাজায় যুদ্ধ বন্ধের আহ্বান জানিয়েছেন যুক্তরাষ্ট্রের প্রেসিডেন্ট নির্বাচনে ডেমোক্রেটিক পার্টির প্রার্থী কমলা হ্যারিস। যুদ্ধ শেষ হওয়ার পর ফিলিস্তিনি এ উপত্যকাটি ফের ইসরায়েলের দখল করা উচিত হবে না বলেও মনে করেন তিনি।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ফিলাডেলফিয়ায় গতকাল মঙ্গলবার ন্যাশনাল অ্যাসোসিয়েশন অব ব্ল্যাক জার্নালিস্টসের (এনএবিজে) সঙ্গে আলাপে এসব কথা বলেন কমলা। সেখানে তিনি ইসরায়েল ও ফিলিস্তিনি স্বাধীনতাকামী সংগঠন হামাসের মধ্যে একটি যুদ্ধবিরতি চুক্তির আহ্বান জানান।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">কমলা ইসরায়েল ও ফিলিস্তিনিদের মধ্যে সংকট নিরসনে দ্বিরাষ্ট্রীয় সমাধানের কথাও বলেন। তিনি বলেন, মধ্যপ্রাচ্যে এমনভাবে স্থিতিশীলতা ফিরিয়ে আনতে হবে, যেন ইরান ক্ষমতাশালী হয়ে ওঠার সুযোগ না পায়।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><span style=\"font-size: 18px;\">একই দিন আফ্রিকান-আমেরিকান সাংবাদিক, শিক্ষার্থী এবং সংবাদমাধ্যম পেশাজীবীদের সংগঠন এনএবিজের তিন সাংবাদিক গাজা যুদ্ধ বিষয়ে কমলাকে প্রশ্ন করেন। জবাবে মার্কিন ভাইস প্রেসিডেন্ট বলেন, ‘আমরা খুব ভালো করে জানি, এ অঞ্চলের সবার সর্বোত্তম স্বার্থের জন্য ওই চুক্তি হওয়া দরকার।’</span><br></p>', '17,16', '66ea96a84cc75.webp', '66ea96a85cbca.webp', 1, '2024-09-18 09:00:24', '2024-09-18 09:36:09'),
(6, 3, 4, 6, 'ছাত্র আন্দোলনে নিহত শিক্ষার্থীদের আর্থিক সহায়তা দেবে জাতীয় বিশ্ববিদ্যালয়', 'ছাত্র-আন্দোলনে-নিহত-শিক্ষার্থীদের-আর্থিক-সহায়তা-দেবে-জাতীয়-বিশ্ববিদ্যালয়-151588', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">বৈষম্যবিরোধী ছাত্র আন্দোলনে নিহত শিক্ষার্থীদের আর্থিক সহায়তা দেবে জাতীয় বিশ্ববিদ্যালয়। ২৬ সেপ্টেম্বরের মধ্যে তালিকা পাঠাতে নির্দেশ দিয়েছে বিশ্ববিদ্যালয় প্রশাসন। আজ মঙ্গলবার জাতীয় বিশ্ববিদ্যালয়ের ওয়েবসাইটে এ–সংক্রান্ত বিজ্ঞপ্তি প্রকাশ করা হয়েছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">বিজ্ঞপ্তিতে বলা হয়েছে, জাতীয় বিশ্ববিদ্যালয়ের অধিভুক্ত কলেজ ও শিক্ষাপ্রতিষ্ঠানগুলোকে বৈষম্যবিরোধী ছাত্র আন্দোলনে নিহত শিক্ষার্থীদের আর্থিক সহায়তা প্রদানের লক্ষ্যে ২৬ সেপ্টেম্বরের মধ্যে তালিকা পাঠাতে নির্দেশ প্রদান করেছে বিশ্ববিদ্যালয় প্রশাসন</p>', '15,14', '66ea9779141de.webp', '66ea97792430c.webp', 1, '2024-09-18 09:03:53', '2024-09-18 09:36:08'),
(7, 4, 3, 5, 'TikTok says US ban would have ‘staggering’ impact on free speech', 'tiktok-says-us-ban-would-have-‘staggering’-impact-on-free-speech-61893', '<p class=\"sc-eb7bd5f6-0 fYAfXe\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: &quot;BBC Reith Serif&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(32, 34, 36); letter-spacing: -0.36px;\">TikTok argued in court on Monday that a US law - which would see it banned unless it is sold by ByteDance - would have a “staggering” impact on the free speech of its US users.</p><p class=\"sc-eb7bd5f6-0 fYAfXe\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: &quot;BBC Reith Serif&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(32, 34, 36); letter-spacing: -0.36px;\">The law was prompted by concerns that US users\' data is vulnerable to exploitation by China\'s government.</p><p class=\"sc-eb7bd5f6-0 fYAfXe\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: &quot;BBC Reith Serif&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(32, 34, 36); letter-spacing: -0.36px;\">TikTok and ByteDance have repeatedly denied links to the Chinese authorities.</p><p class=\"sc-eb7bd5f6-0 fYAfXe\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: &quot;BBC Reith Serif&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(32, 34, 36); letter-spacing: -0.36px;\">The companies sued to block the legislation in early May, calling it unconstitutional and an effective ban on the speech of its 170 million US users.</p>', '13,11', '66ea98b5db282.webp', '66ea98b5eeeda.webp', 1, '2024-09-18 09:09:10', '2024-09-18 09:37:14'),
(8, 4, 5, 6, 'Israeli defense officials at odds with Netanyahu over Hamas, Hezbollah cease-fire conditions', 'israeli-defense-officials-at-odds-with-netanyahu-over-hamas,-hezbollah-cease-fire-conditions-14529', '<p class=\"EkqkG nlgHS yuUao MvWXB TjIXL aGjvy ebVHC\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: var(--articleBody-body-firstChild-marginTop,auto); margin-right: 0px; margin-bottom: var(--articleBody-p-marginBottom-regular,32px); margin-left: 0px; font-size: 18px; font-family: TiemposText;\"><span class=\"oyrPY qlwaB AGxeB\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: inherit; font: var(--articleBody-dateline-font); text-transform: var(--articleBody-dateline-textTransform); letter-spacing: var(--articleBody-dateline-letterSpacing);\">TEL AVIV --&nbsp;</span>Officials in&nbsp;<a class=\"zZygg UbGlr iFzkS qdXbA WCDhQ DbOXS tqUtK GpWVU iJYzE \" data-testid=\"prism-linkbase\" href=\"https://abcnews.go.com/alerts/israel\" id=\"_ap_link_Israel_Israel_\" target=\"_blank\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-image: ; background-position-x: ; background-position-y: ; background-size: ; background-repeat: ; background-attachment: ; background-origin: ; background-clip: ; text-decoration: var(--articleBody-p-a-textDecoration,underline); outline: 0px; cursor: pointer; color: var(--hyperlink-resting-color); display: var(--hyperlink-display,inline); height: var(--hyperlink-height,auto); width: var(--hyperlink-width,auto); font: var(--articleBody-p-a-font,inherit); border-bottom: var(--hyperlink-borderBottom,none); text-underline-offset: var(--hyperlink-textUnderlineOffset,auto);\">Israel</a>\'s defense establishment are now strenuously contradicting Israeli Prime Minister Benjamin Netanyahu\'s insistence that Israel maintain control of the narrow strip of land along the Gaza-Egypt border known as the&nbsp;<a class=\"zZygg UbGlr iFzkS qdXbA WCDhQ DbOXS tqUtK GpWVU iJYzE \" data-testid=\"prism-linkbase\" href=\"https://www.goodmorningamerica.com/news/video/inside-rafah-idf-war-rages-113697790\" target=\"_blank\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-image: ; background-position-x: ; background-position-y: ; background-size: ; background-repeat: ; background-attachment: ; background-origin: ; background-clip: ; text-decoration: var(--articleBody-p-a-textDecoration,underline); outline: 0px; cursor: pointer; color: var(--hyperlink-resting-color); display: var(--hyperlink-display,inline); height: var(--hyperlink-height,auto); width: var(--hyperlink-width,auto); font: var(--articleBody-p-a-font,inherit); border-bottom: var(--hyperlink-borderBottom,none); text-underline-offset: var(--hyperlink-textUnderlineOffset,auto);\">Philadelphi Corridor</a>, and warning that Netanyahu\'s reluctance to sign a cease-fire deal with Hamas is pushing Israel into a potentially disastrous war with Hezbollah in Lebanon, according to Israeli military and senior defense officials who spoke with ABC News.</p><p class=\"EkqkG nlgHS yuUao lqtkC TjIXL aGjvy\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-right: 0px; margin-bottom: var(--articleBody-p-marginBottom-regular,32px); margin-left: 0px; font-size: 18px; font-family: TiemposText;\">A war with Hezbollah in Lebanon \"is easy to start, but very hard to end,\" one such official said, on condition of anonymity. \"We are losing the war, we are losing deterrence, we are losing the hostages.\"</p><p class=\"EkqkG nlgHS yuUao lqtkC TjIXL aGjvy\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-right: 0px; margin-bottom: var(--articleBody-p-marginBottom-regular,32px); margin-left: 0px; font-size: 18px; font-family: TiemposText;\">ABC News, along with other journalists and accompanied by Israeli Defense Forces (IDF) personnel, was given access to the Philadelphi Corridor Friday – a narrow strip of territory roughly a half-mile wide that runs along the entirety of the southern Gaza border with Egypt. What were once blocks of apartments there are now piles of rubble amid a wasteland of dunes. Military officials told ABC News their work in the corridor was mostly done.</p><p class=\"EkqkG nlgHS yuUao lqtkC TjIXL aGjvy\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-right: 0px; margin-bottom: var(--articleBody-p-marginBottom-regular,32px); margin-left: 0px; font-size: 18px; font-family: TiemposText;\">IDF and other Israeli military officials, including Defense Minister Yoav Gallant, have called a cease-fire and hostage release deal with Hamas the key to reaching a solution to Israel\'s current regional strife. Israel and Hezbollah, which has been launching frequent&nbsp;<a class=\"zZygg UbGlr iFzkS qdXbA WCDhQ DbOXS tqUtK GpWVU iJYzE \" data-testid=\"prism-linkbase\" href=\"https://www.goodmorningamerica.com/news/video/tensions-rise-middle-east-amid-israel-hezbollah-strikes-113132532\" target=\"_blank\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-image: ; background-position-x: ; background-position-y: ; background-size: ; background-repeat: ; background-attachment: ; background-origin: ; background-clip: ; text-decoration: var(--articleBody-p-a-textDecoration,underline); outline: 0px; cursor: pointer; color: var(--hyperlink-resting-color); display: var(--hyperlink-display,inline); height: var(--hyperlink-height,auto); width: var(--hyperlink-width,auto); font: var(--articleBody-p-a-font,inherit); border-bottom: var(--hyperlink-borderBottom,none); text-underline-offset: var(--hyperlink-textUnderlineOffset,auto);\">rocket attacks</a>&nbsp;against northern Israel from Lebanon, have each agreed to the broad parameters of a deal to decrease hostilities, but Hezbollah has said its participation is contingent on Israel reaching a cease-fire deal with Hamas in Gaza – which Hamas says must include all Israeli forces leaving Gaza.</p>', '1,11', '66ea99c3c8d6e.avif', '66ea99c462fe7.avif', 1, '2024-09-18 09:13:40', '2024-09-18 09:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'SuperAdmin', 'web', '2024-09-30 08:58:56', '2024-09-30 08:58:56'),
(4, 'Admin', 'web', '2024-09-30 09:00:30', '2024-09-30 09:00:30'),
(5, 'Moderator', 'web', '2024-09-30 09:01:27', '2024-09-30 09:01:27'),
(6, 'Editor', 'web', '2024-09-30 09:02:06', '2024-09-30 09:02:06'),
(7, 'Gorib', 'web', '2024-09-30 09:02:23', '2024-09-30 09:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(1, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(10, 5),
(4, 6),
(5, 6),
(9, 6),
(10, 6),
(5, 7),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ppjjs4KDcT1qjI6zMDXvb1eoNYUzT8Q4SCDCifl5', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRjY1R0ZkYnJFc1dYNEdXQjNocDI3WDV2c1MxMjdnY0NTbVVqUk1sUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYXEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1728464777);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 'BAL', '2024-09-06 09:21:45', NULL),
(2, 'BNP', '2024-09-06 09:21:51', NULL),
(3, 'Hasina', '2024-09-06 09:21:57', NULL),
(4, 'Jamat', '2024-09-06 09:22:24', NULL),
(5, 'Football', '2024-09-06 09:22:42', NULL),
(6, 'Cricket', '2024-09-06 09:22:49', NULL),
(7, 'Tennis', '2024-09-06 09:22:54', NULL),
(8, 'Video Games', '2024-09-06 09:23:04', NULL),
(9, 'Computer', '2024-09-06 09:23:13', NULL),
(10, 'Laptop', '2024-09-06 09:23:18', NULL),
(11, 'Internet', '2024-09-06 09:23:23', NULL),
(12, 'Programming', '2024-09-06 09:23:33', NULL),
(13, 'Mobile', '2024-09-06 09:23:38', NULL),
(14, 'Higher Study', '2024-09-06 09:23:51', NULL),
(15, 'Scholarship', '2024-09-06 09:24:08', NULL),
(16, 'Trump', '2024-09-06 09:24:18', NULL),
(17, 'Putin', '2024-09-06 09:24:23', NULL),
(18, 'Kim jong un', '2024-09-06 09:24:40', NULL),
(19, 'Modi', '2024-09-06 09:25:01', NULL),
(20, 'Garments', '2024-09-06 09:25:14', NULL),
(21, 'share market', '2024-09-06 09:25:20', NULL),
(22, 'Currency', '2024-09-06 09:25:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Hamilton Figueroa', 'tuzywosy@mailinator.com', NULL, '$2y$12$zpATBiBQOWkOjNNsjzRTKOPdsQFJI1lvQk4jxFckysLMUpWK4E0iO', '66d57894aa43a.png', 'KIAdeeyaJk4Jvb8MMaxT5WTIHnQEBWky2OOH5OgSY7kESdfg21t2VzUln0Ak', '2024-08-26 03:05:54', '2024-09-02 02:34:28'),
(13, 'Ila Mays', 'xonyrovyz@mailinator.com', NULL, '$2y$12$h16EuWtySb22LJnT2Ypt2O.AoumO6NL3zTjcrewzhXzFwpr0J5d9O', NULL, NULL, '2024-09-02 08:59:00', NULL),
(14, 'Victoria Cleveland', 'sokavozeb@mailinator.com', NULL, '$2y$12$zPwGF1w/EXcNAc/1YQ4DQ.QxRc3Dse0iF39K/bXVobMYItWvqUJyW', NULL, NULL, '2024-09-02 08:59:51', NULL),
(15, 'Rashad Winters', 'puqumutubi@mailinator.com', NULL, '$2y$12$htpCZ6DJ268Gv0JYnElZ9e4PpRVX70xgN4xwWpxSllGTMqUaXFKru', NULL, NULL, '2024-09-02 08:59:53', NULL),
(16, 'Jane Ferguson', 'kupytapef@mailinator.com', NULL, '$2y$12$xwbMkgZG4BTY1clLK2bbPO3fXJoUV3YaSemLGCcKhJ2kAJTpw0EZ6', NULL, NULL, '2024-09-02 08:59:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifies`
--
ALTER TABLE `email_verifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pass_resets`
--
ALTER TABLE `pass_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `populars`
--
ALTER TABLE `populars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `email_verifies`
--
ALTER TABLE `email_verifies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pass_resets`
--
ALTER TABLE `pass_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `populars`
--
ALTER TABLE `populars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
