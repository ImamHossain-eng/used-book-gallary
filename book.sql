-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 08:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `confirmed` int(1) DEFAULT NULL,
  `user` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `image`, `category`, `price`, `confirmed`, `user`, `created_at`, `updated_at`, `author`, `description`) VALUES
(42, 'Caleb Wise', 'no_image.png', '12', 561, 1, '1', '2021-07-14 17:28:43', '2021-07-14 17:31:37', 'Quia atque vero nesc', NULL),
(43, 'Shellie Love', 'no_image.png', '10', 967, 1, '1', '2021-07-15 05:49:12', '2021-07-15 05:49:12', 'Quos deserunt quis q', NULL),
(44, 'Basic Statistics and Probability', 'no_image.png', '10', 500, 2, '1', '2021-07-15 05:52:11', '2021-07-15 06:12:12', 'R E Walpole and R H Myers', NULL),
(46, 'Test Book', 'no_image.png', '8', 200, 1, '1', '2021-07-15 07:21:18', '2021-07-15 07:28:35', 'dafgbsfd', '<p>abcd</p>'),
(48, 'Bradley Turner', 'no_image.png', 'null', 731, 1, '1', '2021-07-15 08:53:17', '2021-07-15 08:53:17', 'Nihil minima minus c', '<p>svd</p>'),
(49, 'Demetrius Robbins', 'no_image.png', '11', 841, 2, '1', '2021-07-15 09:16:42', '2021-08-02 15:40:56', 'Aliquam natus ut nec', '<p>xfgjnfgyhn</p>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_20_181814_create_feedback_table', 2),
(5, '2021_06_21_162507_create_types_table', 3),
(6, '2021_06_22_152648_create_books_table', 4),
(7, '2021_06_26_160011_add_config_to_users_table', 5),
(8, '2021_07_02_135607_add_author_to_books_table_', 6),
(9, '2021_07_03_154710_create_accounts_table', 7),
(10, '2021_07_03_155055_create_transactions_table', 8),
(11, '2021_07_07_204756_create_orders_table', 9),
(12, '2021_07_12_220033_create_recharges_table', 10),
(13, '2021_07_12_224920_add_user_id_to_recharges_table', 11),
(14, '2021_07_12_220034_create_recharges_table', 12),
(15, '2021_07_12_220035_create_recharges_table', 13),
(16, '2021_07_13_201640_add_recharge_id_to_transactions_table', 14),
(17, '2021_07_14_215113_add_type_to_recharges_table', 15),
(18, '2021_07_15_131712_add_description_to_books_table', 16),
(19, '2021_08_01_193934_add_varsity_to_users_table', 17),
(20, '2021_08_01_194839_create_varsities_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(8, 'Computer Science', '2021-07-14 17:25:05', '2021-07-14 17:25:05'),
(9, 'Electrical Engineering', '2021-07-14 17:25:15', '2021-07-14 17:25:15'),
(10, 'Mathematics', '2021-07-14 17:25:23', '2021-07-14 17:25:23'),
(11, 'English', '2021-07-14 17:25:30', '2021-07-14 17:25:30'),
(12, 'Economics', '2021-07-14 17:25:37', '2021-07-14 17:25:37'),
(13, 'Business Administration', '2021-07-14 17:26:02', '2021-07-14 17:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `config` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `varsity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`, `config`, `varsity`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, 1, '$2y$10$BJIkAoirKsMPbIV30TUDVOpkaRZTaxC9HxI1C5XUehlmP9Rd81446', NULL, '2021-06-20 12:15:10', '2021-07-08 15:38:20', '0', NULL),
(34, 'sub admin', 'admin_sub@gmail.com', NULL, 1, '$2y$10$y0aI4esFlJRSVFUuWeNqAOCCvM8DDQo1qTofuen2qJ/IKowI2zy/q', NULL, '2021-07-14 17:41:21', '2021-07-14 17:41:21', NULL, NULL),
(37, 'abul', 'abul@gmail.com', NULL, NULL, '$2y$10$hD4R0ubGonf2MQrXeRetW.Izg/VrwSvVt2VMgoLEY6O.V7r1iHWRS', NULL, '2021-07-15 10:11:19', '2021-07-15 10:11:29', '0', NULL),
(40, 'Mahbub', 'mahbub@gmail.com', NULL, NULL, '$2y$10$/qL1GDfEkMqeEOJX4UaTBuNnw0IFavPmXcNM759OvawtK/q/wPZ3W', NULL, '2021-08-03 18:19:37', '2021-08-03 18:19:37', NULL, NULL),
(41, 'Zahid', 'zahid@gmail.com', NULL, NULL, '$2y$10$y/Je//drBZ/jJJsPKCKHH.5I2Ozg89TDxV0zQ35SGhIA60r5/h6Je', NULL, '2021-08-03 18:29:14', '2021-08-03 18:29:14', NULL, '3');

-- --------------------------------------------------------

--
-- Table structure for table `varsities`
--

CREATE TABLE `varsities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varsities`
--

INSERT INTO `varsities` (`id`, `name`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(3, 'Hamdard University Bangladesh', 'Gazaria, Munshiganj - 1510', 1776439000, '2021-08-03 17:39:02', '2021-08-03 17:39:02'),
(4, 'BRAC University', '66 Mohakhali, Dhaka - 1212', 222226405, '2021-08-03 17:43:20', '2021-08-03 17:43:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `varsities`
--
ALTER TABLE `varsities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `varsities`
--
ALTER TABLE `varsities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
