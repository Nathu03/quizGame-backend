-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 05:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_react_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_16_073940_create_scores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '2851388cc2499eef5eb53ad172d764182ff12a4cdd96f5cff005410ba5642bd9', '[\"*\"]', '2023-12-07 20:25:33', NULL, '2023-12-07 19:45:03', '2023-12-07 20:25:33'),
(2, 'App\\Models\\User', 3, 'token', '639bd1d4931ba393a46bafcc385452dad97b26b348366a8b82660e1bf37044a8', '[\"*\"]', '2023-12-07 20:39:12', NULL, '2023-12-07 20:35:07', '2023-12-07 20:39:12'),
(3, 'App\\Models\\User', 1, 'token', 'deb1e8485142590ea2ab93edb23897053cc4f39f4019bd7c1622a29c4bd503f1', '[\"*\"]', '2023-12-07 20:53:17', NULL, '2023-12-07 20:39:18', '2023-12-07 20:53:17'),
(4, 'App\\Models\\User', 1, 'token', '9fd580923fec6d659efbffc197b7b76d1028ca43f4e4a9d585e3a6906999237f', '[\"*\"]', '2023-12-07 20:59:33', NULL, '2023-12-07 20:53:30', '2023-12-07 20:59:33'),
(5, 'App\\Models\\User', 4, 'token', 'b759531ba2ebb80519c455ffbe2d6fadc06f05bce7740ed70bac90bb9cdc9fa7', '[\"*\"]', '2023-12-07 21:04:59', NULL, '2023-12-07 21:01:22', '2023-12-07 21:04:59'),
(6, 'App\\Models\\User', 5, 'token', '7c8f9e7020b2d3f8cabed0426539b9f6e1513c362bee0317c908c5e1687ce2c2', '[\"*\"]', '2023-12-07 21:17:28', NULL, '2023-12-07 21:14:01', '2023-12-07 21:17:28'),
(7, 'App\\Models\\User', 1, 'token', '1f7f919d185c0d1498dd3b6d5afdc1f6a11b729071b416b1a4df2876df544b56', '[\"*\"]', '2023-12-07 23:27:16', NULL, '2023-12-07 23:23:21', '2023-12-07 23:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coins` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `life_count` int(11) NOT NULL,
  `time_remaining` int(11) NOT NULL,
  `selected_level` varchar(255) NOT NULL,
  `selected_category` varchar(255) NOT NULL,
  `next_level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `coins`, `level`, `life_count`, `time_remaining`, `selected_level`, `selected_category`, `next_level`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '4', 0, 100, 'low', 'child', 0, '2023-12-05 14:53:05', '2023-12-05 14:53:05'),
(2, 1, 25, '3', 0, 68, 'medium', 'child', 0, '2023-12-05 01:29:05', '2023-12-05 01:29:05'),
(3, 1, 15, '2', 0, 25, 'hard', 'adult', 0, '2023-12-07 10:00:05', '2023-12-07 10:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Narthanan', 'narthanan@yahoo.com', '$2y$12$Iy4ayIhT26j1NSFpTS6Oue8FvMLGoxEgg5spDtzfcrcEEXCnL0UN.', '2023-12-07 19:44:57', '2023-12-07 19:44:57'),
(3, 'test 1', 'test@yahoo.com', '$2y$12$gEE2mzx99T.ZUhwdO4A8E.OpfUcmQvcDmjhcLqbOPDJzWSmXdrywq', '2023-12-07 20:34:36', '2023-12-07 20:34:36'),
(4, 'test 1', 'test2@yahoo.com', '$2y$12$n1gm929BkZHfH5Kpg1Z8UOUSk3F6sHdcqz.x1qOrG8VCp1R551A4W', '2023-12-07 21:01:06', '2023-12-07 21:01:06'),
(5, 'test 3', 'test3@yahoo.com', '$2y$12$R.6b94plHYrUQySmKFkn/eJCQ.sbygcKOr6Bnodz6IG17JPaX2yYi', '2023-12-07 21:13:50', '2023-12-07 21:13:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
