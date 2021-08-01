-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 01:13 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
(20, 33, 510, '2021-07-15 05:27:35', '2021-07-15 05:35:17'),
(21, 35, 520, '2021-07-15 06:06:22', '2021-07-15 07:00:09'),
(22, 39, 950, '2021-07-15 09:54:34', '2021-07-25 06:09:31'),
(23, 37, 530, '2021-07-26 11:07:21', '2021-07-26 11:07:21');

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
(46, 'Test Book', 'no_image.png', '8', 200, 2, '1', '2021-07-15 07:21:18', '2021-07-25 05:31:52', 'dafgbsfd', '<p>abcd</p>'),
(48, 'computer fundamental', 'no_image.png', '8', 490, 0, '39', '2021-07-15 10:10:37', '2021-07-15 10:10:37', 'ismail jabiullah', '<p>miidium condition.two years old.fourth edition</p>'),
(49, 'Theory of Computing', 'no_image.png', '8', 370, 0, '39', '2021-07-19 14:51:29', '2021-07-19 14:51:29', 'Jonathon Clarke', '<p>condition is medium.Five months old.</p>'),
(50, 'test', 'no_image.png', 'null', 1000, 1, '39', '2021-07-25 05:04:30', '2021-07-25 05:18:39', 'test', '<p>jfctrtr</p>'),
(51, 'Theory of Computing', 'no_image.png', '8', 550, 1, '39', '2021-07-25 05:59:08', '2021-07-25 06:09:08', 'Jonathon Clarke', '<p>yukfyukt</p>'),
(53, 'environmental science', '1627295860.jpg', '8', 330, 1, '37', '2021-07-26 10:37:40', '2021-07-26 10:39:44', 'foster zayne', '<p>best condition</p>'),
(54, 'Computer Algorithm', '1627296605.jpg', '8', 200, 1, '37', '2021-07-26 10:50:05', '2021-07-26 10:56:30', 'Valancia jacob', '<p>Book condition medium.All pages are available.</p>');

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
(18, '2021_07_15_131712_add_description_to_books_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `book_id`, `status`, `created_at`, `updated_at`) VALUES
(35, 39, 46, 1, '2021-07-25 05:25:28', '2021-07-25 05:32:28');

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
-- Table structure for table `recharges`
--

CREATE TABLE `recharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recharges`
--

INSERT INTO `recharges` (`id`, `user_id`, `number`, `amount`, `trans_id`, `method`, `confirmed`, `created_at`, `updated_at`, `type`) VALUES
(22, 39, 1915970075, 100, 'avbc1234', 'Bkash', 1, '2021-07-25 05:34:41', '2021-07-25 05:39:24', 'cashin'),
(23, 39, 1813083311, 500, 'lkjh9876', 'Bkash', 1, '2021-07-25 05:47:18', '2021-07-25 05:51:22', 'cashout');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `recharge_id` int(11) DEFAULT NULL,
  `credit` tinyint(1) NOT NULL,
  `debit` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `book_id`, `recharge_id`, `credit`, `debit`, `price`, `comment`, `created_at`, `updated_at`) VALUES
(34, 30, 37, NULL, 0, 1, 530, NULL, '2021-07-12 07:06:38', '2021-07-12 07:06:38'),
(35, 28, 34, NULL, 0, 1, 100, NULL, '2021-07-12 15:52:02', '2021-07-12 15:52:02'),
(37, 28, 0, 4, 1, 0, 1020, NULL, '2021-07-13 15:08:35', '2021-07-13 15:08:35'),
(38, 28, 0, 1, 1, 0, 1020, NULL, '2021-07-13 15:20:17', '2021-07-13 15:20:17'),
(40, 28, 0, 6, 0, 1, 510, NULL, '2021-07-14 16:56:38', '2021-07-14 16:56:38'),
(41, 28, 0, 8, 0, 1, 205, NULL, '2021-07-14 17:01:50', '2021-07-14 17:01:50'),
(42, 31, 0, 10, 1, 0, 1020, NULL, '2021-07-14 17:10:33', '2021-07-14 17:10:33'),
(43, 31, 0, 12, 0, 1, 510, NULL, '2021-07-14 17:16:54', '2021-07-14 17:16:54'),
(44, 1, 42, 0, 1, 0, 561, NULL, '2021-07-14 17:31:37', '2021-07-14 17:31:37'),
(45, 33, 0, 14, 1, 0, 1020, NULL, '2021-07-15 05:30:15', '2021-07-15 05:30:15'),
(46, 33, 0, 15, 0, 1, 510, NULL, '2021-07-15 05:34:47', '2021-07-15 05:34:47'),
(48, 35, 44, 0, 0, 1, 500, NULL, '2021-07-15 06:12:12', '2021-07-15 06:12:12'),
(49, 35, 0, 17, 1, 0, 1020, NULL, '2021-07-15 06:33:35', '2021-07-15 06:33:35'),
(50, 35, 0, 18, 0, 1, 200, NULL, '2021-07-15 06:35:23', '2021-07-15 06:35:23'),
(51, 35, 0, 20, 1, 0, 700, NULL, '2021-07-15 06:57:05', '2021-07-15 06:57:05'),
(52, 35, 0, 21, 0, 1, 500, NULL, '2021-07-15 06:59:57', '2021-07-15 06:59:57'),
(53, 39, 50, 0, 1, 0, 1000, NULL, '2021-07-25 05:18:39', '2021-07-25 05:18:39'),
(54, 39, 46, 0, 0, 1, 200, NULL, '2021-07-25 05:32:28', '2021-07-25 05:32:28'),
(55, 39, 0, 22, 1, 0, 100, NULL, '2021-07-25 05:39:24', '2021-07-25 05:39:24'),
(56, 39, 0, 23, 0, 1, 500, NULL, '2021-07-25 05:51:22', '2021-07-25 05:51:22'),
(57, 39, 51, 0, 1, 0, 550, NULL, '2021-07-25 06:09:08', '2021-07-25 06:09:08'),
(59, 37, 53, 0, 1, 0, 330, NULL, '2021-07-26 10:39:43', '2021-07-26 10:39:43'),
(60, 37, 54, 0, 1, 0, 200, NULL, '2021-07-26 10:56:30', '2021-07-26 10:56:30');

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
(13, 'Business Administration', '2021-07-14 17:26:02', '2021-07-14 17:26:02'),
(14, 'Unani and Ayurbedic Medicine', '2021-07-19 14:43:01', '2021-07-19 14:43:01'),
(15, 'Social Science', '2021-07-19 14:44:11', '2021-07-19 14:44:11');

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
  `config` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`, `config`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, 1, '$2y$10$BJIkAoirKsMPbIV30TUDVOpkaRZTaxC9HxI1C5XUehlmP9Rd81446', NULL, '2021-06-20 12:15:10', '2021-07-08 15:38:20', '0'),
(34, 'sub admin', 'admin_sub@gmail.com', NULL, 1, '$2y$10$y0aI4esFlJRSVFUuWeNqAOCCvM8DDQo1qTofuen2qJ/IKowI2zy/q', NULL, '2021-07-14 17:41:21', '2021-07-14 17:41:21', NULL),
(37, 'mokles', 'mokles123@gmail.com', NULL, NULL, '$2y$10$qXHpreXQB6eVoIvX5WB72uL8p6AT7KFoEr3ey55ZulWWfKGRbkobi', NULL, '2021-07-15 08:46:35', '2021-07-15 08:48:59', '0'),
(39, 'saiful islam', 'saifulislam123@gmail.com', NULL, NULL, '$2y$10$DmiaqBJhVGPfW.UQlLHbYOpVAG3ydLgrBhJbFFTrn.wfaNRV/H/Xi', NULL, '2021-07-15 09:53:33', '2021-07-15 09:53:53', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recharges`
--
ALTER TABLE `recharges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recharges_trans_id_unique` (`trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `recharges`
--
ALTER TABLE `recharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
