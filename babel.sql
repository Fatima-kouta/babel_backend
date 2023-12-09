-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 01:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'أخبار', '2023-12-07 19:05:44', '2023-12-07 19:05:44'),
(7, 'رياضة', '2023-12-07 19:05:44', '2023-12-07 19:05:44'),
(8, 'ثقافة', '2023-12-07 19:05:44', '2023-12-07 19:05:44'),
(9, 'فيديو وصور', '2023-12-07 19:05:44', '2023-12-07 19:05:44'),
(10, 'اقتصاد', '2023-12-07 19:05:44', '2023-12-07 19:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `clicks`
--

CREATE TABLE `clicks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_06_002613_add_timestamps_to_users_table', 1),
(6, '2023_12_06_211811_add_timestamps_to_users_table', 1),
(7, '2023_12_07_202505_create_categories_table', 2),
(10, '2023_12_07_210626_create_clicks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Noemie Lemke', 'kutch.linnie@example.net', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'XchTZuAYBD', NULL, NULL),
(2, 'Prof. Merlin O\'Connell', 'lang.willy@example.net', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'd3cpcNfRXA', NULL, NULL),
(3, 'Clotilde Farrell', 'kim.brown@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'exvHrTWkhj', NULL, NULL),
(4, 'Mrs. Abbie O\'Kon PhD', 'kasey.bode@example.org', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'ZCeUILXUqk', NULL, NULL),
(5, 'Mayra Streich', 'dare.juliana@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'H3WNqTNK56', NULL, NULL),
(6, 'Dr. Cali Roob MD', 'hans38@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', '2G50fXKiwK', NULL, NULL),
(7, 'Parker Leffler', 'bergnaum.tara@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'K6vaCDNg3P', NULL, NULL),
(8, 'Jabari Doyle', 'arden93@example.org', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'vuxu2wIW1Y', NULL, NULL),
(9, 'Prof. Savion Marvin IV', 'filiberto46@example.net', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'PZJEJjyPZc', NULL, NULL),
(10, 'Dr. Jonathan Mann', 'schoen.edythe@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', 'yantIQPDcF', NULL, NULL),
(11, 'Test User', 'test@example.com', '2023-12-06 19:55:08', '$2y$12$sfpOtEfwuUWCK2gB4hEPMeeXbLFqIT5BzFYFSxxqnlV7GVjuo.3LO', '1cJXXdCiDS', NULL, NULL),
(12, 'Mrs. Valentine Strosin', 'stanton.amely@example.org', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'n3jRddbHUO', NULL, NULL),
(13, 'Miss Laila Legros', 'mittie10@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'eLXJw623Uw', NULL, NULL),
(14, 'Joanne Mayert', 'pablo89@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'X1zDiRib8M', NULL, NULL),
(15, 'Jensen Keebler IV', 'loy60@example.net', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', '7ZufeOSaFJ', NULL, NULL),
(16, 'Gladys Bogan DDS', 'ljacobi@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', '1VveWRksBf', NULL, NULL),
(17, 'Felix Feeney MD', 'osinski.cortney@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'YFZYffcRK4', NULL, NULL),
(18, 'Murray Abernathy V', 'reichel.grayce@example.org', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', '6lPWCmj3HA', NULL, NULL),
(19, 'Hilda Ullrich II', 'fgibson@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'Ta2cUA3kJg', NULL, NULL),
(20, 'Larue Stracke', 'block.sylvan@example.com', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'iqUv2lcWox', NULL, NULL),
(21, 'Lisandro Rodriguez MD', 'juvenal.mosciski@example.net', '2023-12-07 18:56:44', '$2y$12$a.9FUiku1YRgEIVHnM02EeQx.3OGqt2KJdjNBvZoshQIqQTo4wWba', 'rHZHHJroIK', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clicks_news_category_id_foreign` (`news_category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clicks`
--
ALTER TABLE `clicks`
  ADD CONSTRAINT `clicks_news_category_id_foreign` FOREIGN KEY (`news_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
