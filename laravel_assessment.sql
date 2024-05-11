-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 12:20 AM
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
-- Database: `laravel_assessment`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_25_020411_create_projects_table', 1),
(6, '2024_03_25_020914_create_timesheets_table', 1),
(7, '2024_03_25_022004_create_project_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 12, 'api-token', 'efd4b5d21b70b46432084c14bf86cf7ddfc80060b4dfc3005f4e5a796480a735', '[\"*\"]', NULL, '2024-05-11 16:49:14', '2024-05-11 16:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `department`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pansy Dickinson', '3932 Wiegand Corners', '1998-06-13 07:35:15', '1974-02-22 09:32:53', '4', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(2, 'Prof. Amely Rogahn', '9122 Pollich Corners Suite 823', '1971-10-05 08:25:53', '2003-01-09 08:55:21', '0', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(3, 'Ms. Carolanne Stracke IV', '1755 Justice Common', '1976-11-01 00:34:27', '2006-04-20 10:45:39', '3', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(4, 'Lance Lehner', '7101 Rath Loaf', '2003-02-08 11:01:59', '2024-03-09 12:38:05', '1', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(5, 'Judd Zemlak', '5955 Allen Mount Suite 013', '2015-10-30 09:46:53', '1997-11-19 22:22:23', '0', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(6, 'Ivy Hansen', '98623 Parker Fall Apt. 893', '1998-08-26 00:13:44', '2018-04-18 19:56:45', '4', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(7, 'Chadrick Donnelly', '27435 Kessler Forest Suite 261', '2010-04-15 22:46:28', '2011-12-30 21:13:19', '1', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(8, 'Mr. Herminio Larkin I', '645 Wallace Mountain', '1985-10-28 11:56:06', '2007-04-22 06:50:07', '1', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(9, 'Giovani Rice', '621 Jairo Place', '1996-11-01 20:01:31', '2008-11-07 12:54:17', '3', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(10, 'Sister Considine', '44353 Berenice Tunnel', '1972-11-26 00:53:47', '1972-06-12 10:42:16', '2', '2024-05-11 16:39:09', '2024-05-11 16:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 8, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(2, 3, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(3, 6, 4, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(4, 10, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(5, 2, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(6, 3, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(7, 4, 7, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(8, 2, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(9, 4, 1, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(10, 9, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(11, 6, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(12, 6, 5, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(13, 7, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(14, 10, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(15, 5, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(16, 9, 5, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(17, 2, 7, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(18, 6, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(19, 1, 2, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(20, 4, 2, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(21, 7, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(22, 10, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(23, 3, 6, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(24, 10, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(25, 9, 3, '2024-05-11 16:39:09', '2024-05-11 16:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `hours` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `task_name`, `date`, `hours`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'I did: there\'s no.', '2024-05-11', '3', 1, 1, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(2, 'Some of the doors.', '2024-05-11', '4', 9, 6, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(3, 'Hatter were having.', '2024-05-11', '7', 7, 5, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(4, 'Don\'t let me hear.', '2024-05-11', '7', 6, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(5, 'As there seemed to.', '2024-05-11', '4', 2, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(6, 'AT ALL. Soup does.', '2024-05-11', '3', 7, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(7, 'I suppose?\' \'Yes,\'.', '2024-05-11', '5', 5, 4, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(8, 'How puzzling all.', '2024-05-11', '7', 6, 8, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(9, 'I shall see it pop.', '2024-05-11', '7', 8, 9, '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(10, 'I should like to.', '2024-05-11', '5', 1, 10, '2024-05-11 16:39:09', '2024-05-11 16:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Malcolm', 'Franecki', '1991-01-27', 'male', 'scottie.aufderhar@yahoo.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BuxHNyDC9j', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(2, 'data', 'Volkman', '2002-06-03', 'male', 'kstanton@harvey.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xh5UDmfzZG', '2024-05-11 16:39:09', '2024-05-11 16:43:25'),
(3, 'Enos', 'Kshlerin', '1989-05-04', 'male', 'bins.romaine@hotmail.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TCh7vmSzxe', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(4, 'Bennett', 'Bayer', '1971-02-22', 'male', 'jaskolski.nelda@yahoo.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mr9UbbryrQ', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(5, 'Prudence', 'Farrell', '2024-02-25', 'female', 'idaugherty@parker.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1tL9EhBU5i', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(6, 'Skye', 'Cassin', '1992-03-26', 'male', 'georgianna82@hotmail.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ElgcdnJRjs', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(7, 'Alec', 'Braun', '1976-04-06', 'male', 'clinton68@yahoo.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWRdhsaqxB', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(8, 'Erika', 'Kirlin', '1974-08-05', 'male', 'ostanton@hotmail.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oEl6LH4BXt', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(9, 'Cielo', 'Jast', '2021-08-21', 'male', 'shayna18@yahoo.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eEwZUpDtbX', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(10, 'Ruben', 'Rosenbaum', '1992-07-04', 'female', 'mohr.efren@hotmail.com', '2024-05-11 16:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uMqpH8a19p', '2024-05-11 16:39:09', '2024-05-11 16:39:09'),
(11, 'example', 'ze', '1997-01-01', 'male', 'vveum@hill.com', NULL, '$2y$10$BDlDulBmjLDzb6H9qiS3RuZEHA0CQq5GIw/OjHbBL2atMF.VPC5VK', NULL, '2024-05-11 16:43:02', '2024-05-11 16:43:02'),
(12, 'example', 'ze', '1997-01-01', 'male', 'vveum@hill.com2', NULL, '$2y$10$WGlYCgDNRXQFeVEDEsB8LuJZsoCIRMp.rha/u9HpWfBRgTLm4M0hO', NULL, '2024-05-11 16:49:14', '2024-05-11 16:49:14');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
