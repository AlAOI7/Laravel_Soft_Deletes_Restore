-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 مارس 2025 الساعة 20:50
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_soft_deletes`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Edmond Mante', 'etha.bradtke@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', '2025-03-19 16:46:40', '4XtcgZo47i', '2025-03-19 16:34:49', '2025-03-19 16:46:40'),
(2, 'Irma Haag PhD', 'angelita07@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '644pQfGi7J', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(3, 'Muhammad Hansen', 'larson.dusty@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'dvrl92e5ld', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(4, 'Ms. Annamae Moore', 'kellen.miller@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'nu4XTXt5XB', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(5, 'Rosie Rowe', 'narciso.rohan@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'mAhsicWGHJ', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(6, 'Prof. Toni Bernhard PhD', 'kameron66@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'kOODz3fwxl', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(7, 'Harley Gorczany', 'hhyatt@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'C4PaiMGpZs', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(8, 'Vernon Wunsch MD', 'laverne96@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'fxJASpbXta', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(9, 'Mrs. Lessie Johnston', 'borer.cordia@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'NspPsJluOw', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(10, 'Harmon Crooks', 'janelle.weber@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'qAKlMD6DxU', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(11, 'Dr. Elliott Collins I', 'okeefe.leonie@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'TbetJ2KHId', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(12, 'Dr. Geoffrey Gulgowski', 'nina62@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'kI6OzLpLdk', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(13, 'Zetta Olson', 'theodore16@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'RZCD6h4lVQ', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(14, 'Dr. Eusebio Lueilwitz I', 'wbergnaum@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'q5JuOKOgjC', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(15, 'Bethany Tremblay', 'abraham76@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'SC1A4ANG03', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(16, 'Hector Kunze', 'dwest@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'MDxI3f7woJ', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(17, 'Prof. Hector Keeling DDS', 'humberto07@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '34eeYrwhKs', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(18, 'Kyla Fahey V', 'doug.halvorson@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'sn6MfggShr', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(19, 'Liliana Reinger', 'bkiehn@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'iYEi9OmAyN', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(20, 'Vickie Haley', 'gulgowski.kurt@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'okaQFgmg2n', '2025-03-19 16:34:49', '2025-03-19 16:34:49'),
(21, 'Miss Letitia Gutmann DDS', 'gutmann.rodrick@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '1MVShfdiCY', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(22, 'Jazlyn Lind', 'nbuckridge@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '4D4AQrmhdk', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(23, 'Izaiah Hintz', 'gottlieb.laurel@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '2WP7TcH68f', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(24, 'Jade Zulauf V', 'gerhard86@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'iSm5SM1iOG', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(25, 'Corbin Pfannerstill', 'camden53@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'IApSdbDFyU', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(26, 'Helena Jerde', 'turner.filomena@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'A2477tbikF', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(27, 'Prof. Magnus Fahey', 'conn.jordane@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'GmTlbSLfak', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(28, 'Barrett Pagac', 'bret.boyer@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'tn4m9vaQQt', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(29, 'Raina Crona', 'ezra.wisozk@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'BjNP0aV5u9', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(30, 'Mr. Ali Dietrich I', 'jaron.murphy@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'rIEThVEv6X', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(31, 'Abel Herzog', 'karli.ziemann@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'aGGz2VUizp', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(32, 'Ramon Marvin', 'xfisher@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'lGSVHta2Wr', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(33, 'Vicky Bernhard', 'okeefe.jayson@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '9mxDsVCko8', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(34, 'Clifford Spencer', 'hrunolfsson@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'ucAXF9yx68', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(35, 'Prof. Jeromy Reinger', 'jaquelin66@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'UMlIjXC0Dn', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(36, 'Allen Strosin Sr.', 'czieme@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'pyWJMqTH7t', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(37, 'Adelle Howe DVM', 'tyree.hermann@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'Mz9CGO2acE', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(38, 'Miss Cheyenne Pollich DVM', 'zokeefe@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'xO4xLDHLR7', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(39, 'Dariana Zieme', 'shania.weber@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'qOyswSyvcQ', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(40, 'Ms. Britney Kuvalis', 'orosenbaum@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'jio4lJhEZA', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(41, 'Miss Alisa Pouros DDS', 'hessel.christiana@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'MHIvRXRCbL', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(42, 'Stanton Emard', 'leanne50@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'eM2tsXUmXO', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(43, 'Noemi Schowalter', 'lia.dooley@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'ieAeSsgVRW', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(44, 'Bettie Carroll', 'epacocha@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '11i2Bt1Fdk', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(45, 'Prof. Treva Bednar', 'aleen68@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'IdIvEdiGuL', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(46, 'Stephania Johnson', 'porter72@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'E9XBN96FJQ', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(47, 'Theresia Rath', 'anne70@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'NsoIVwu9Ff', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(48, 'Aryanna Kshlerin', 'bconn@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'CDz275zU6U', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(49, 'Prof. Selena Dickinson V', 'sidney00@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'mv8uT8ZBGM', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(50, 'Prof. Gail Larson IV', 'shanahan.maude@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '3MREgquptH', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(51, 'Felipe Mosciski MD', 'hills.dorthy@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '4OAXgwJmi6', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(52, 'Mr. Webster Dooley II', 'torp.shayna@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '4aiSPpNh0B', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(53, 'Carolyne Rippin', 'kiana61@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 's3M0TWPpB1', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(54, 'Ransom Yundt', 'jalen44@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'nAIc0ev4sq', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(55, 'Dr. Amanda Donnelly III', 'kling.jettie@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'YxfcOt0LzI', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(56, 'Filomena Brakus', 'octavia.kuvalis@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'KFoZf27Hhy', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(57, 'Mr. Maximilian O\'Reilly Sr.', 'verdie.gibson@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'bSvgEDKeuA', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(58, 'Florine Turcotte', 'albert.glover@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'DOCYnxTJXl', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(59, 'Stephon Brown', 'bwelch@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'IUgfZoS6L5', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(60, 'Kaley Schowalter', 'xabbott@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'QOigSg3bsX', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(61, 'Elisabeth Waelchi', 'gulgowski.kendrick@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '5Bqrlw45FY', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(62, 'Mr. Mateo Gutkowski', 'kovacek.zakary@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'eHtL6yKpVx', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(63, 'Dr. Maggie Kuhn I', 'adriel60@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'isxEwcHD0w', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(64, 'Annabel Kautzer DDS', 'dyost@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'tT3UwEE8j2', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(65, 'Maxime Johns', 'jortiz@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'swoqARUj2D', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(66, 'Adolfo Bins PhD', 'ahyatt@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'XOiCaPa8Eq', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(67, 'Tad Prohaska', 'roob.tre@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'shRt0PX8pE', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(68, 'Vincenza Simonis', 'shanie54@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'KrCBHnChb4', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(69, 'Charlene Bergstrom', 'jovan.mccullough@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'WJQMBazZax', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(70, 'Coy Mante', 'tom55@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'b5kYv7w3UE', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(71, 'Hector Bernier', 'keven29@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'KK8e88f0JB', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(72, 'Stanford Von', 'hintz.lane@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '7X0siLf8UC', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(73, 'Alek Ondricka', 'abeier@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'EkogMAGhnU', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(74, 'Miss Coralie Pagac V', 'oreilly.madalyn@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '9gsxkQd27u', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(75, 'Aisha Roberts', 'xfeest@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '7g8XeThUOJ', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(76, 'Ivory Klocko DDS', 'retha.schuster@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'spOgnd3Q4b', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(77, 'Miss Katrine Kessler', 'ndicki@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'xPq46Gdfux', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(78, 'Sallie Collins', 'tkshlerin@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'LWrXlYP1nU', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(79, 'Hortense Blanda', 'daren.white@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'd2LZN40tFj', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(80, 'Dr. Isabel Simonis IV', 'zvon@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 't169GjQ1kG', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(81, 'Earline Bergstrom', 'hparisian@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'ZlNCdrlaHz', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(82, 'Mrs. Natasha Windler', 'rkling@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'fwlllaF9KB', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(83, 'Rosetta Ziemann Sr.', 'watson.dare@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '95JBxaNDxp', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(84, 'Mrs. Chelsea Welch', 'ddach@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'eQw9BQ8srF', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(85, 'Ralph Grant', 'randall07@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'nCwn2MV61Z', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(86, 'Carlos Pacocha', 'nicolas90@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'LJbNzlcdIC', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(87, 'Golden Beer I', 'hillary60@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'uwd8hgNf4z', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(88, 'Prof. Era Ullrich I', 'tillman.lesley@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '4TbRH4Fhqu', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(89, 'Bertram Rosenbaum', 'kohler.sherwood@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '1Lb9zHGL0r', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(90, 'Mr. Ulices Runolfsdottir DDS', 'lesch.kailyn@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'iNtv52M4DD', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(91, 'Phoebe Kris', 'pattie.kulas@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'FNseW2vCit', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(92, 'Mabelle Renner', 'nelson82@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'UGb7CWg08c', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(93, 'Timmy Roob', 'pmayert@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'K9NqNzC8k3', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(94, 'Juliet Wiza', 'ethan.cole@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '5S3iyzYPxV', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(95, 'Dr. Rosella Balistreri', 'jerde.jordyn@example.org', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'gIQWz6EBAA', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(96, 'Dr. Roel Buckridge', 'fgislason@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '7umrsfhD9w', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(97, 'Shane Johnson', 'adaline.casper@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'joZ2iQwOsx', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(98, 'Ellen Nikolaus', 'horeilly@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'QL01oqDCmX', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(99, 'Mrs. Myah Bosco DVM', 'nedra61@example.net', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, 'ov0UYDiytV', '2025-03-19 16:34:50', '2025-03-19 16:34:50'),
(100, 'Dr. Isidro Mann DDS', 'chaim.bahringer@example.com', '2025-03-19 16:34:49', '$2y$12$3v4sCOw1UzRU3UOVe8GZu.AO929tKyoDbcBWz3FOLsPgN/xj7DDgu', NULL, '8MH032AZcv', '2025-03-19 16:34:50', '2025-03-19 16:34:50');

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
