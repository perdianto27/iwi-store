-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 05:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intan`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(14, '2016_06_01_000004_create_oauth_clients_table', 1),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0cad4f919e6486b82f20949a26ab4ac84125521a03c921bb4f9a11df21151be40131676cbbb97ed5', 2, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:05:23', '2023-10-07 08:05:23', '2024-10-07 15:05:23'),
('13a3e284e8292ec3a4c43a431d9e88050188134ffb0a45ab60574a5cbfab748e47f7c3b4fc928d4f', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:04:11', '2023-10-07 08:04:11', '2024-10-07 15:04:11'),
('2e61f07c27c0807e34d2da10fe97edd37bc377730c64fdaa61f570ee6215b1c623ded74bf80cd730', 5, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:26:11', '2023-10-07 08:26:11', '2024-10-07 15:26:11'),
('3752c06b6f128244f9d01ce1076765888195001d659d43cf59d10a5dd83bfd6dd5f1d653cfad80f5', 7, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:28:29', '2023-10-07 08:28:29', '2024-10-07 15:28:29'),
('389451a5fd869608c80bda0b8cd942dadbee251638ad891d64f112811a04295af5ea31e7b01301a4', 6, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:27:37', '2023-10-07 08:27:37', '2024-10-07 15:27:37'),
('3c0fce4dba461af345e956408ed150902f1270072dfdf476eebfb308d75c29ab37b66372fc544df7', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 06:32:58', '2023-10-07 06:32:58', '2024-10-07 13:32:58'),
('514450422ff654ee1071379fa67935d5562838f732e656ae1d0c68efe4a0a758030290cfb9a688d8', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-06 05:59:50', '2023-10-06 05:59:50', '2024-10-06 12:59:50'),
('83497df4f7a06e5e0598bf6f281933fc5d219c008946e2288f6747cdd352e59457318087b8b0b029', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-06 06:20:37', '2023-10-06 06:20:37', '2024-10-06 13:20:37'),
('96ae63255745d39039322e47f42d54ed8e9ad0d0257bd956784771b4fee380a03974374d96cb5996', 3, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-06 20:25:12', '2023-10-06 20:25:12', '2024-10-07 03:25:12'),
('b48017edffca172010f9ca7c7472affa3122ce8ae4607bd87a2b51f5cadc2e1cf35841208263e1cc', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 07:24:29', '2023-10-07 07:24:29', '2024-10-07 14:24:29'),
('c87935b85f97a352f71e83070a61dd941263078c630933107d6b13e894b6a8e763db54333ccaaca9', 2, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-06 06:06:10', '2023-10-06 06:06:10', '2024-10-06 13:06:10'),
('e2e28a7e110f4aeb34f5440822b782b342cf6446522b8745a403a156db0383aef2486c160bc2c607', 1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:02:53', '2023-10-07 08:02:53', '2024-10-07 15:02:53'),
('fb74164cabf35a446ce44bed674f2631422e6c55810620f5e51a7436b80ecf238da55f8e3e0d7841', 4, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', 'MyApp', '[]', 0, '2023-10-07 08:25:31', '2023-10-07 08:25:31', '2024-10-07 15:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9a4dfae2-c602-43cc-b2fa-90e70c3a804e', NULL, 'Laravel Personal Access Client', 'FEjVnk2wX5fEyKXENSSjDjayfW0R53sSmGv22HqG', NULL, 'http://localhost', 1, 0, 0, '2023-10-06 05:58:43', '2023-10-06 05:58:43'),
('9a4dfae3-2a68-4184-ba61-9628cd6247c4', NULL, 'Laravel Password Grant Client', 'qBGGQe4J5RXu2atn1kFd7GWxVOfP0OiDdmUqZ65b', 'users', 'http://localhost', 0, 1, 0, '2023-10-06 05:58:43', '2023-10-06 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9a4dfae2-c602-43cc-b2fa-90e70c3a804e', '2023-10-06 05:58:43', '2023-10-06 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Perdianto', 'perdianto_27email@yahoo.co.id', NULL, '$2y$10$fN85STQ00WMy1eEwVwTElOCtf8.McOEVbvNAUrww65TUQKCSDNepO', NULL, '2023-10-06 05:59:49', '2023-10-06 05:59:49', 2),
(2, 'Perdianto', 'perdianto@gmail.com', NULL, '$2y$10$udNdjnMpqrZa9A37Zg1K.u1AEjn2AoDe2.8QC8FlAfj7C09PWSIqy', NULL, '2023-10-06 06:06:10', '2023-10-06 06:06:10', 1),
(3, 'Perdi', 'perdianto@yahoo.co.id', NULL, '$2y$10$seOBCPvBll6JgJrpZ6Wd9ejTJ87opww2otKtTZ/A6SgNhsRHiW8DW', NULL, '2023-10-06 20:25:10', '2023-10-06 20:25:10', 1),
(4, 'Eni', 'eni@ymail.com', NULL, '$2y$10$HMNxT3XVLaarr.QJdRsHdeEXeUIe0c/N84ebhQ6218/vsPGOMc3a2', NULL, '2023-10-07 08:25:31', '2023-10-07 08:25:31', NULL),
(5, 'Ega', 'ega@yahoo.com', NULL, '$2y$10$YtmOAt/GVTzAGTFJ2V3E.ObOAZiikveRfsgV0bFu.zJe3vvlZRf8i', NULL, '2023-10-07 08:26:11', '2023-10-07 08:26:11', NULL),
(6, 'arif', 'arif@ymail.com', NULL, '$2y$10$6QX45P.waNUECLpG2kGl4.IGG4jb9rEELyZXQylKfNPxNREO51JWm', NULL, '2023-10-07 08:27:37', '2023-10-07 08:27:37', NULL),
(7, 'wahyu', 'wahyu@gmail.com', NULL, '$2y$10$gvVpPg0kazy.L17zhUSfrucr97vJBVZqCH/QTRGey26gxcQ12dn0e', NULL, '2023-10-07 08:28:29', '2023-10-07 08:28:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
