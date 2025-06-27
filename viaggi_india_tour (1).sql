-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 12:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viaggi_india_tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Helpers', 'icon-cogs', '', NULL, '2025-06-20 01:41:02', '2025-06-25 23:48:12'),
(9, 8, 9, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2025-06-20 01:41:02', '2025-06-25 23:48:12'),
(10, 8, 10, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2025-06-20 01:41:02', '2025-06-25 23:48:12'),
(11, 8, 11, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2025-06-20 01:41:02', '2025-06-25 23:48:12'),
(12, 8, 12, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2025-06-20 01:41:02', '2025-06-25 23:48:12'),
(13, 0, 13, 'Home-banners', 'icon-file', 'home-banners', NULL, '2025-06-20 03:33:34', '2025-06-25 23:48:12'),
(14, 0, 14, 'Contacts', 'icon-file', 'contacts', NULL, '2025-06-21 00:29:13', '2025-06-25 23:48:12'),
(16, 24, 19, 'Regions', 'icon-file', 'regions', NULL, '2025-06-21 04:15:53', '2025-06-25 23:49:17'),
(17, 0, 15, 'Destinations', 'icon-file', 'destinations', NULL, '2025-06-21 04:56:18', '2025-06-25 23:48:12'),
(19, 24, 21, 'Budgets', 'icon-file', 'budgets', NULL, '2025-06-24 05:25:53', '2025-06-25 23:49:17'),
(20, 24, 20, 'Durations', 'icon-file', 'durations', NULL, '2025-06-24 05:39:11', '2025-06-25 23:49:17'),
(21, 24, 22, 'Traveler Types', 'icon-file', 'traveler-types', NULL, '2025-06-24 06:05:28', '2025-06-25 23:49:17'),
(22, 24, 23, 'Experience Types', 'icon-file', 'experience-types', NULL, '2025-06-24 06:32:43', '2025-06-25 23:49:17'),
(23, 0, 16, 'Packages', 'icon-file', 'packages', NULL, '2025-06-25 00:06:02', '2025-06-25 23:49:17'),
(24, 0, 18, 'Fillers', 'icon-align-justify', NULL, NULL, '2025-06-25 23:46:25', '2025-06-25 23:49:17'),
(26, 0, 0, 'Testimonials', 'icon-address-book', 'testimonials', '*', '2025-06-26 00:51:02', '2025-06-26 00:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-20 01:50:57', '2025-06-20 01:50:57'),
(2, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-20 01:52:38', '2025-06-20 01:52:38'),
(3, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-20 02:15:46', '2025-06-20 02:15:46'),
(4, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-20 02:51:13', '2025-06-20 02:51:13'),
(5, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"home_banner\",\"model_name\":\"App\\\\Models\\\\HomeBanner\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomeBannerController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"iiQ8t9VoeDeDXITFxFkarI5BcdUE8ZwELZZhxgVI\"}', '2025-06-20 03:33:20', '2025-06-20 03:33:20'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-20 03:33:37', '2025-06-20 03:33:37'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-20 03:33:56', '2025-06-20 03:33:56'),
(8, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 03:34:00', '2025-06-20 03:34:00'),
(9, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 03:35:41', '2025-06-20 03:35:41'),
(10, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 03:35:49', '2025-06-20 03:35:49'),
(11, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 03:36:22', '2025-06-20 03:36:22'),
(12, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 03:36:31', '2025-06-20 03:36:31'),
(13, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-20 04:20:44', '2025-06-20 04:20:44'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-21 00:27:59', '2025-06-21 00:27:59'),
(15, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 00:28:17', '2025-06-21 00:28:17'),
(16, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 00:29:12', '2025-06-21 00:29:12'),
(17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 00:29:15', '2025-06-21 00:29:15'),
(18, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 00:29:31', '2025-06-21 00:29:31'),
(19, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 00:29:34', '2025-06-21 00:29:34'),
(20, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 00:29:57', '2025-06-21 00:29:57'),
(21, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 03:42:56', '2025-06-21 03:42:56'),
(22, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 03:43:02', '2025-06-21 03:43:02'),
(23, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 03:43:03', '2025-06-21 03:43:03'),
(24, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:43:09', '2025-06-21 03:43:09'),
(25, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-06-21 03:43:12', '2025-06-21 03:43:12'),
(26, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"name\":\"Discover The World Like Never Before\",\"short_content\":\"From hidden gems to iconic landmarks \\u2014 we plan every detail so you can explore worry-free\\r\\nand make memories that last a lifetime\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 03:45:36', '2025-06-21 03:45:36'),
(27, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:45:37', '2025-06-21 03:45:37'),
(28, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:46:31', '2025-06-21 03:46:31'),
(29, 1, 'admin/home-banners/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 03:46:44', '2025-06-21 03:46:44'),
(30, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 03:47:02', '2025-06-21 03:47:02'),
(31, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:47:02', '2025-06-21 03:47:02'),
(32, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:47:12', '2025-06-21 03:47:12'),
(33, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:47:22', '2025-06-21 03:47:22'),
(34, 1, 'admin/home-banners/create', 'GET', '127.0.0.1', '[]', '2025-06-21 03:47:26', '2025-06-21 03:47:26'),
(35, 1, 'admin/home-banners', 'POST', '127.0.0.1', '{\"name\":\"Ride to the Roof of the World  Ladakh Awaits!\",\"short_content\":\"A journey through breathtaking landscapes, ancient monasteries, and timeless culture \\u2014\\r\\ndiscover the true spirit of Ladakh\",\"link\":\"http:\\/\\/127.0.0.1:8000\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 03:48:15', '2025-06-21 03:48:15'),
(36, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:48:15', '2025-06-21 03:48:15'),
(37, 1, 'admin/home-banners/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 03:48:16', '2025-06-21 03:48:16'),
(38, 1, 'admin/home-banners/2', 'PUT', '127.0.0.1', '{\"name\":\"Ride to the Roof of the World  Ladakh Awaits!\",\"short_content\":\"A journey through breathtaking landscapes, ancient monasteries, and timeless culture \\u2014\\r\\ndiscover the true spirit of Ladakh\",\"link\":\"http:\\/\\/127.0.0.1:8000\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 03:48:32', '2025-06-21 03:48:32'),
(39, 1, 'admin/home-banners', 'GET', '127.0.0.1', '[]', '2025-06-21 03:48:33', '2025-06-21 03:48:33'),
(40, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:09:03', '2025-06-21 04:09:03'),
(41, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"region\",\"model_name\":\"App\\\\Models\\\\Region\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RegionController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:12:26', '2025-06-21 04:12:26'),
(42, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:12:29', '2025-06-21 04:12:29'),
(43, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:12:51', '2025-06-21 04:12:51'),
(44, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:12:54', '2025-06-21 04:12:54'),
(45, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:16', '2025-06-21 04:14:16'),
(46, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:20', '2025-06-21 04:14:20'),
(47, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:24', '2025-06-21 04:14:24'),
(48, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:27', '2025-06-21 04:14:27'),
(49, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:27', '2025-06-21 04:14:27'),
(50, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:28', '2025-06-21 04:14:28'),
(51, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:28', '2025-06-21 04:14:28'),
(52, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:29', '2025-06-21 04:14:29'),
(53, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:29', '2025-06-21 04:14:29'),
(54, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:30', '2025-06-21 04:14:30'),
(55, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:30', '2025-06-21 04:14:30'),
(56, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:31', '2025-06-21 04:14:31'),
(57, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:32', '2025-06-21 04:14:32'),
(58, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:32', '2025-06-21 04:14:32'),
(59, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:32', '2025-06-21 04:14:32'),
(60, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:33', '2025-06-21 04:14:33'),
(61, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:33', '2025-06-21 04:14:33'),
(62, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:34', '2025-06-21 04:14:34'),
(63, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:34', '2025-06-21 04:14:34'),
(64, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:43', '2025-06-21 04:14:43'),
(65, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:46', '2025-06-21 04:14:46'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:49', '2025-06-21 04:14:49'),
(67, 1, 'admin/auth/menu/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:14:53', '2025-06-21 04:14:53'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:53', '2025-06-21 04:14:53'),
(69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:56', '2025-06-21 04:14:56'),
(70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-06-21 04:14:58', '2025-06-21 04:14:58'),
(71, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:15:00', '2025-06-21 04:15:00'),
(72, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"region\",\"model_name\":\"App\\\\Models\\\\Region\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RegionController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:15:53', '2025-06-21 04:15:53'),
(73, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:15:54', '2025-06-21 04:15:54'),
(74, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:16:02', '2025-06-21 04:16:02'),
(75, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:16:04', '2025-06-21 04:16:04'),
(76, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:17:53', '2025-06-21 04:17:53'),
(77, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:04', '2025-06-21 04:18:04'),
(78, 1, 'admin/regions', 'POST', '127.0.0.1', '{\"name\":\"Ladakh\",\"slug\":null,\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:18:18', '2025-06-21 04:18:18'),
(79, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:18', '2025-06-21 04:18:18'),
(80, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:25', '2025-06-21 04:18:25'),
(81, 1, 'admin/regions', 'POST', '127.0.0.1', '{\"name\":\"Manali\",\"slug\":null,\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:18:32', '2025-06-21 04:18:32'),
(82, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:32', '2025-06-21 04:18:32'),
(83, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:34', '2025-06-21 04:18:34'),
(84, 1, 'admin/regions', 'POST', '127.0.0.1', '{\"name\":\"Rajasthan\",\"slug\":null,\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:18:42', '2025-06-21 04:18:42'),
(85, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:43', '2025-06-21 04:18:43'),
(86, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:44', '2025-06-21 04:18:44'),
(87, 1, 'admin/regions', 'POST', '127.0.0.1', '{\"name\":\"Kerala\",\"slug\":null,\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:18:52', '2025-06-21 04:18:52'),
(88, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:53', '2025-06-21 04:18:53'),
(89, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:18:55', '2025-06-21 04:18:55'),
(90, 1, 'admin/regions', 'POST', '127.0.0.1', '{\"name\":\"North East India\",\"slug\":null,\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:19:13', '2025-06-21 04:19:13'),
(91, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:19:13', '2025-06-21 04:19:13'),
(92, 1, 'admin/regions/create', 'GET', '127.0.0.1', '[]', '2025-06-21 04:19:15', '2025-06-21 04:19:15'),
(93, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:19:21', '2025-06-21 04:19:21'),
(94, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-21 04:19:27', '2025-06-21 04:19:27'),
(95, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:19:50', '2025-06-21 04:19:50'),
(96, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:04', '2025-06-21 04:22:04'),
(97, 1, 'admin/regions/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:05', '2025-06-21 04:22:05'),
(98, 1, 'admin/regions/1', 'PUT', '127.0.0.1', '{\"name\":\"Ladakh\",\"slug\":\"ladakh\",\"seo_title\":\"t\",\"seo_description\":\"d\",\"seo_keyword\":\"k\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 04:22:14', '2025-06-21 04:22:14'),
(99, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:15', '2025-06-21 04:22:15'),
(100, 1, 'admin/regions/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:17', '2025-06-21 04:22:17'),
(101, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:20', '2025-06-21 04:22:20'),
(102, 1, 'admin/regions/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:23', '2025-06-21 04:22:23'),
(103, 1, 'admin/regions/2', 'PUT', '127.0.0.1', '{\"name\":\"Manali\",\"slug\":\"manali\",\"seo_title\":\"t\",\"seo_description\":\"d\",\"seo_keyword\":\"k\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 04:22:31', '2025-06-21 04:22:31'),
(104, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:31', '2025-06-21 04:22:31'),
(105, 1, 'admin/regions/3/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:33', '2025-06-21 04:22:33'),
(106, 1, 'admin/regions/3', 'PUT', '127.0.0.1', '{\"name\":\"Rajasthan\",\"slug\":\"rajasthan\",\"seo_title\":\"t\",\"seo_description\":\"d\",\"seo_keyword\":\"k\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 04:22:40', '2025-06-21 04:22:40'),
(107, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:40', '2025-06-21 04:22:40'),
(108, 1, 'admin/regions/4/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:42', '2025-06-21 04:22:42'),
(109, 1, 'admin/regions/4', 'PUT', '127.0.0.1', '{\"name\":\"Kerala\",\"slug\":\"kerala\",\"seo_title\":\"t\",\"seo_description\":\"d\",\"seo_keyword\":\"k\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 04:22:48', '2025-06-21 04:22:48'),
(110, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:48', '2025-06-21 04:22:48'),
(111, 1, 'admin/regions/5/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:49', '2025-06-21 04:22:49'),
(112, 1, 'admin/regions/5', 'PUT', '127.0.0.1', '{\"name\":\"North East India\",\"slug\":\"north-east-india\",\"seo_title\":\"t\",\"seo_description\":\"d\",\"seo_keyword\":\"k\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\",\"_method\":\"PUT\"}', '2025-06-21 04:22:55', '2025-06-21 04:22:55'),
(113, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:55', '2025-06-21 04:22:55'),
(114, 1, 'admin/regions/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:57', '2025-06-21 04:22:57'),
(115, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:22:59', '2025-06-21 04:22:59'),
(116, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-21 04:27:06', '2025-06-21 04:27:06'),
(117, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:28:25', '2025-06-21 04:28:25'),
(118, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"destinetions\",\"model_name\":\"App\\\\Models\\\\Destinetions\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DestinetionDetai;lsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:29:09', '2025-06-21 04:29:09'),
(119, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:29:10', '2025-06-21 04:29:10'),
(120, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"destination\",\"model_name\":\"App\\\\Models\\\\Destinations\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DestinationDetailsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"region_id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"thumnail_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Banner_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"gallery\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_days\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"itinerary\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 04:56:17', '2025-06-21 04:56:17'),
(121, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 04:56:18', '2025-06-21 04:56:18'),
(122, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 05:04:50', '2025-06-21 05:04:50'),
(123, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"toure_details_insert\",\"model_name\":\"App\\\\Models\\\\Tourdetails\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TourListController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"order_num\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"lgLPvdmzMZXX8IQgt7UoSU7PZtt6f6qblmaiYeTw\"}', '2025-06-21 05:27:56', '2025-06-21 05:27:56'),
(124, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 05:28:01', '2025-06-21 05:28:01'),
(125, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-21 05:28:14', '2025-06-21 05:28:14'),
(126, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-21 05:28:19', '2025-06-21 05:28:19'),
(127, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-21 05:28:22', '2025-06-21 05:28:22'),
(128, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 05:32:02', '2025-06-21 05:32:02'),
(129, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 05:43:28', '2025-06-21 05:43:28'),
(130, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 05:48:34', '2025-06-21 05:48:34'),
(131, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:39:21', '2025-06-21 06:39:21'),
(132, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:46:54', '2025-06-21 06:46:54'),
(133, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:47:54', '2025-06-21 06:47:54'),
(134, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-21 06:48:11', '2025-06-21 06:48:11'),
(135, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:48:13', '2025-06-21 06:48:13'),
(136, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:48:56', '2025-06-21 06:48:56'),
(137, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:49:24', '2025-06-21 06:49:24'),
(138, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:50:04', '2025-06-21 06:50:04'),
(139, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-21 06:50:17', '2025-06-21 06:50:17'),
(140, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-22 23:16:56', '2025-06-22 23:16:56'),
(141, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:03', '2025-06-22 23:17:03'),
(142, 1, 'admin/tourdetails/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:07', '2025-06-22 23:17:07'),
(143, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:18', '2025-06-22 23:17:18'),
(144, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:20', '2025-06-22 23:17:20'),
(145, 1, 'admin/tourdetails/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:23', '2025-06-22 23:17:23'),
(146, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:29', '2025-06-22 23:17:29'),
(147, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:31', '2025-06-22 23:17:31'),
(148, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:17:33', '2025-06-22 23:17:33'),
(149, 1, 'admin/destinations', 'POST', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"Day 1 : Delhi (Arrival)\",\"description\":\"Welcome to Delhi! Arrive and check into the hotel. Rest of the day is at leisure.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"Day 2 : Delhi Sightseeing\",\"description\":\"Visit Red Fort, India Gate, Qutub Minar and other attractions.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\"}', '2025-06-22 23:23:06', '2025-06-22 23:23:06'),
(150, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:23:09', '2025-06-22 23:23:09'),
(151, 1, 'admin/destinations', 'POST', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new___LA_KEY__\":{\"order_num\":\"2\",\"name\":\"Day 2 : Delhi Sightseeing\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia\\u2019s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia\\u2019s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"id\":null,\"_remove_\":\"1\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\"}', '2025-06-22 23:26:13', '2025-06-22 23:26:13'),
(152, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:26:14', '2025-06-22 23:26:14'),
(153, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:26:16', '2025-06-22 23:26:16'),
(154, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:26:39', '2025-06-22 23:26:39'),
(155, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:26:39', '2025-06-22 23:26:39'),
(156, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:26:41', '2025-06-22 23:26:41'),
(157, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:27:16', '2025-06-22 23:27:16'),
(158, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:27:17', '2025-06-22 23:27:17'),
(159, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:27:21', '2025-06-22 23:27:21'),
(160, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:29:38', '2025-06-22 23:29:38'),
(161, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:29:39', '2025-06-22 23:29:39'),
(162, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:29:41', '2025-06-22 23:29:41'),
(163, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:29:50', '2025-06-22 23:29:50'),
(164, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:29:51', '2025-06-22 23:29:51'),
(165, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:30:30', '2025-06-22 23:30:30'),
(166, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:30:57', '2025-06-22 23:30:57'),
(167, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:30:59', '2025-06-22 23:30:59'),
(168, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:31:49', '2025-06-22 23:31:49'),
(169, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:31:58', '2025-06-22 23:31:58'),
(170, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:32:15', '2025-06-22 23:32:15'),
(171, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:32:16', '2025-06-22 23:32:16'),
(172, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:32:19', '2025-06-22 23:32:19'),
(173, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:32:22', '2025-06-22 23:32:22'),
(174, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:32:28', '2025-06-22 23:32:28'),
(175, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:33:56', '2025-06-22 23:33:56'),
(176, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:33:59', '2025-06-22 23:33:59'),
(177, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:38:46', '2025-06-22 23:38:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(178, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"destination_name\":\"Delhi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:38:59', '2025-06-22 23:38:59'),
(179, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:39:00', '2025-06-22 23:39:00'),
(180, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:09', '2025-06-22 23:40:09'),
(181, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:12', '2025-06-22 23:40:12'),
(182, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"slug\":null,\"destination_name\":\"Delhi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:40:14', '2025-06-22 23:40:14'),
(183, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:15', '2025-06-22 23:40:15'),
(184, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:52', '2025-06-22 23:40:52'),
(185, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:54', '2025-06-22 23:40:54'),
(186, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:55', '2025-06-22 23:40:55'),
(187, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Goa Getaway Sun, Sand & Serenity Await\",\"slug\":null,\"destination_name\":\"Delhi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:40:57', '2025-06-22 23:40:57'),
(188, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:40:57', '2025-06-22 23:40:57'),
(189, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:42:23', '2025-06-22 23:42:23'),
(190, 1, 'admin/destinations', 'POST', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":null,\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"Day 1: Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market.<\\/p>\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"Day 2: Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"order_num\":\"3\",\"name\":\"Explore Solang Valley\",\"description\":\"<p>Explore Solang Valley for adventure activities like paragliding and zorbing, or visit the Atal Tunnel.<\\/p>\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\"}', '2025-06-22 23:50:28', '2025-06-22 23:50:28'),
(191, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-22 23:50:29', '2025-06-22 23:50:29'),
(192, 1, 'admin/destinations', 'POST', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":null,\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new___LA_KEY__\":{\"order_num\":\"3\",\"name\":\"Explore Solang Valley\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia\\u2019s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\"}', '2025-06-22 23:50:37', '2025-06-22 23:50:37'),
(193, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:50:38', '2025-06-22 23:50:38'),
(194, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:50:48', '2025-06-22 23:50:48'),
(195, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Explore Solang Valley\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia\\u2019s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden\\u2019s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:52:35', '2025-06-22 23:52:35'),
(196, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:52:35', '2025-06-22 23:52:35'),
(197, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:52:37', '2025-06-22 23:52:37'),
(198, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:53:42', '2025-06-22 23:53:42'),
(199, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:53:42', '2025-06-22 23:53:42'),
(200, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:53:44', '2025-06-22 23:53:44'),
(201, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"new_1\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:54:27', '2025-06-22 23:54:27'),
(202, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:54:28', '2025-06-22 23:54:28'),
(203, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:54:29', '2025-06-22 23:54:29'),
(204, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":\"4\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:54:47', '2025-06-22 23:54:47'),
(205, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:54:47', '2025-06-22 23:54:47'),
(206, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:55:39', '2025-06-22 23:55:39'),
(207, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-22 23:55:50', '2025-06-22 23:55:50'),
(208, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:55:53', '2025-06-22 23:55:53'),
(209, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:56:26', '2025-06-22 23:56:26'),
(210, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Delhi Getaway Sun, Sand & Serenity Await\",\"slug\":\"goa-getaway-sun-sand-serenity-await\",\"destination_name\":\"Delhi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-22 23:57:10', '2025-06-22 23:57:10'),
(211, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-22 23:57:10', '2025-06-22 23:57:10'),
(212, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-22 23:57:13', '2025-06-22 23:57:13'),
(213, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-23 00:17:41', '2025-06-23 00:17:41'),
(214, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:27', '2025-06-23 01:39:27'),
(215, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:29', '2025-06-23 01:39:29'),
(216, 1, 'admin/destinations/1', 'PUT', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"title\":\"Delhi Getaway Sun, Sand & Serenity Await\",\"slug\":\"delhi-getaway-sun-sand-serenity-await\",\"destination_name\":\"Delhi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Jaipur - Delhi\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1 :Arrive in Delhi\",\"description\":\"<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.<\\/p>\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2 :Delhi Sightseeing\",\"description\":\"<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.<\\/p>\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo description\",\"seo_keyword\":\"Seo keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-23 01:39:31', '2025-06-23 01:39:31'),
(217, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:31', '2025-06-23 01:39:31'),
(218, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:33', '2025-06-23 01:39:33'),
(219, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:36', '2025-06-23 01:39:36'),
(220, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:38', '2025-06-23 01:39:38'),
(221, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":\"4\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-23 01:39:41', '2025-06-23 01:39:41'),
(222, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 01:39:41', '2025-06-23 01:39:41'),
(223, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 02:09:20', '2025-06-23 02:09:20'),
(224, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 02:09:30', '2025-06-23 02:09:30'),
(225, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 02:09:32', '2025-06-23 02:09:32'),
(226, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":\"4\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-23 02:09:43', '2025-06-23 02:09:43'),
(227, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 02:09:44', '2025-06-23 02:09:44'),
(228, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 02:09:48', '2025-06-23 02:09:48'),
(229, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 04:27:45', '2025-06-23 04:27:45'),
(230, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 04:27:51', '2025-06-23 04:27:51'),
(231, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 04:27:58', '2025-06-23 04:27:58'),
(232, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 05:12:01', '2025-06-23 05:12:01'),
(233, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":\"4\",\"_remove_\":\"0\"},\"new_1\":{\"order_num\":\"3\",\"name\":\"Explore Solang Valley\",\"description\":\"Explore Solang Valley for adventure activities like paragliding and zorbing, or visit the Atal Tunnel.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-23 05:12:55', '2025-06-23 05:12:55'),
(234, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 05:12:56', '2025-06-23 05:12:56'),
(235, 1, 'admin/destinations/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-23 05:13:00', '2025-06-23 05:13:00'),
(236, 1, 'admin/destinations/2', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"title\":\"Manali Getaway Sun, Sand & Serenity Await\",\"slug\":\"manali-getaway-sun-sand-serenity-await\",\"destination_name\":\"Manali\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Delhi-Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"3\":{\"order_num\":\"1\",\"name\":\"Travel to Manali\",\"description\":\"<p>check into your hotel, and perhaps take a stroll through the local market. <\\/p>\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"order_num\":\"2\",\"name\":\"Visit Hadimba Devi Temple\",\"description\":\"<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.<\\/p>\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"3\",\"name\":\"Explore Solang Valley\",\"description\":\"<p>Explore Solang Valley for adventure activities like paragliding and zorbing, or visit the Atal Tunnel.<\\/p>\",\"id\":\"5\",\"_remove_\":\"0\"}},\"seo_title\":\"Manali title\",\"seo_description\":\"Manali Description\",\"seo_keyword\":\"Manali keyword\",\"_token\":\"1ksb8LdO77apMoOfdWZ46LDcpfuInoz95ZFjBsCK\",\"_method\":\"PUT\"}', '2025-06-23 05:13:16', '2025-06-23 05:13:16'),
(237, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 05:13:17', '2025-06-23 05:13:17'),
(238, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 06:55:35', '2025-06-23 06:55:35'),
(239, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-23 23:28:59', '2025-06-23 23:28:59'),
(240, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 23:29:18', '2025-06-23 23:29:18'),
(241, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-23 23:29:23', '2025-06-23 23:29:23'),
(242, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 23:29:26', '2025-06-23 23:29:26'),
(243, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-23 23:29:29', '2025-06-23 23:29:29'),
(244, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-23 23:29:49', '2025-06-23 23:29:49'),
(245, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 00:05:48', '2025-06-24 00:05:48'),
(246, 1, 'admin/destinations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 00:07:17', '2025-06-24 00:07:17');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(247, 1, 'admin/destinations', 'POST', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"title\":\"Jaipur Destination\",\"slug\":null,\"destination_name\":\"Jaipur\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"6 Nights\\/ 7 Days\",\"tour_location\":\"Delhi-Jaipur\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"E6i0oA64Z5FnYZPw055J3fv3TdKzp4YIpxTEnuJ4\"}', '2025-06-24 00:39:47', '2025-06-24 00:39:47'),
(248, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-24 00:39:49', '2025-06-24 00:39:49'),
(249, 1, 'admin/destinations/3/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 00:39:52', '2025-06-24 00:39:52'),
(250, 1, 'admin/destinations/3', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"title\":\"Jaipur Destination\",\"slug\":\"jaipur-destination\",\"destination_name\":\"Jaipur\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"6 Nights\\/ 7 Days\",\"tour_location\":\"Delhi-Jaipur\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"E6i0oA64Z5FnYZPw055J3fv3TdKzp4YIpxTEnuJ4\",\"_method\":\"PUT\"}', '2025-06-24 00:45:52', '2025-06-24 00:45:52'),
(251, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-24 00:45:53', '2025-06-24 00:45:53'),
(252, 1, 'admin/destinations/3/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 00:45:55', '2025-06-24 00:45:55'),
(253, 1, 'admin/destinations/3', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"title\":\"Jaipur Destination\",\"slug\":\"jaipur-destination\",\"destination_name\":\"Jaipur\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"6 Nights\\/ 7 Days\",\"tour_location\":\"Delhi-Jaipur\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"Day 1: Arrival and Jaipur Exploration\",\"description\":\"Arrive in Jaipur, check into your hotel, and freshen up.\\r\\nAfternoon: Visit City Palace, Jantar Mantar (observatory), and Hawa Mahal (Palace of Winds). \\r\\nEvening: Enjoy a stroll in the illuminated old city area.\\r\\nConsider visiting the Birla Mandir (Laxmi Narayan Temple) and Albert Hall Museum in the evening.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur Forts and Gardens\",\"description\":\"Morning: Visit the magnificent Amber Fort, ascend on an elephant (or jeep), and explore the fort\'s intricate architecture and historical significance. \\r\\nAfternoon: Explore Jaigarh Fort and Nahargarh Fort, enjoying panoramic views of the city. \\r\\nEvening: Relax or shop for souvenirs at local markets like Bapu Bazaar or Johari Bazaar.\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Pushkar & Ajmer\",\"description\":\"Morning: Drive from Jaipur to Pushkar (approx. 3 hours). En route, visit Ajmer, including the Ajmer Sharif Dargah and Nasiyan Jain Temple. \\r\\nAfternoon: Check into your Pushkar hotel.\\r\\nEvening: Explore Pushkar Lake, visit Brahma Temple and Savitri Temple.\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"order_num\":\"4\",\"name\":\"Day 4: Pushkar to Jodhpur\",\"description\":\"Morning: After breakfast, visit Brahma and Savitri Temple.\\r\\nAfternoon: Drive to Jodhpur (approx. 4 hours), enjoying the scenic route.\\r\\nOptional: Stop at Nimaj Palace for lunch en route.\\r\\nEvening: Check into your Jodhpur hotel and relax.\",\"id\":null,\"_remove_\":\"0\"},\"new_5\":{\"order_num\":\"5\",\"name\":\"Day 5: Jodhpur Exploration\",\"description\":\"Morning: Visit Mehrangarh Fort, one of the largest forts in India, and explore its various palaces and museums.\\r\\nAfternoon: Visit Jaswant Thada, a beautiful marble cenotaph, and Umaid Bhawan Palace, now a hotel and museum.\\r\\nEvening: Enjoy a stroll through Jodhpur\'s vibrant markets.\",\"id\":null,\"_remove_\":\"0\"},\"new_6\":{\"order_num\":\"6\",\"name\":\"Day 6: Jodhpur to Udaipur\",\"description\":\"Morning: Check out from your Jodhpur hotel and drive to Udaipur (approx. 5 hours). \\r\\nAfternoon: Check into your Udaipur hotel.\\r\\nEvening: Relax or enjoy a boat ride on Lake Pichola.\",\"id\":null,\"_remove_\":\"0\"},\"new_7\":{\"order_num\":\"7\",\"name\":\"Day 7: Udaipur Sightseeing and Departure\",\"description\":\"Full day sightseeing: Visit City Palace, Jag Mandir, Jagdish Temple, and Saheliyon-ki-Bari.\\r\\nEvening: Depart from Udaipur airport or railway station.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"E6i0oA64Z5FnYZPw055J3fv3TdKzp4YIpxTEnuJ4\",\"_method\":\"PUT\"}', '2025-06-24 00:49:08', '2025-06-24 00:49:08'),
(254, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(255, 1, 'admin/destinations/3/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 00:49:10', '2025-06-24 00:49:10'),
(256, 1, 'admin/destinations/3', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"title\":\"Jaipur Destination\",\"slug\":\"jaipur-destination\",\"destination_name\":\"Jaipur\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"6 Nights\\/ 7 Days\",\"tour_location\":\"Delhi-Jaipur\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"touretailsinsert\":{\"6\":{\"order_num\":\"1\",\"name\":\"Day 1: Arrival and Jaipur Exploration\",\"description\":\"Arrive in Jaipur, check into your hotel, and freshen up.\\r\\nAfternoon: Visit City Palace, Jantar Mantar (observatory), and Hawa Mahal (Palace of Winds). \\r\\nEvening: Enjoy a stroll in the illuminated old city area.\\r\\nConsider visiting the Birla Mandir (Laxmi Narayan Temple) and Albert Hall Museum in the evening.\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur Forts and Gardens\",\"description\":\"Morning: Visit the magnificent Amber Fort, ascend on an elephant (or jeep), and explore the fort\'s intricate architecture and historical significance. \\r\\nAfternoon: Explore Jaigarh Fort and Nahargarh Fort, enjoying panoramic views of the city. \\r\\nEvening: Relax or shop for souvenirs at local markets like Bapu Bazaar or Johari Bazaar.\",\"id\":\"7\",\"_remove_\":\"0\"},\"8\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Pushkar & Ajmer\",\"description\":\"Morning: Drive from Jaipur to Pushkar (approx. 3 hours). En route, visit Ajmer, including the Ajmer Sharif Dargah and Nasiyan Jain Temple. \\r\\nAfternoon: Check into your Pushkar hotel.\\r\\nEvening: Explore Pushkar Lake, visit Brahma Temple and Savitri Temple.\",\"id\":\"8\",\"_remove_\":\"0\"},\"9\":{\"order_num\":\"4\",\"name\":\"Day 4: Pushkar to Jodhpur\",\"description\":\"Morning: After breakfast, visit Brahma and Savitri Temple.\\r\\nAfternoon: Drive to Jodhpur (approx. 4 hours), enjoying the scenic route.\\r\\nOptional: Stop at Nimaj Palace for lunch en route.\\r\\nEvening: Check into your Jodhpur hotel and relax.\",\"id\":\"9\",\"_remove_\":\"0\"},\"10\":{\"order_num\":\"5\",\"name\":\"Day 5: Jodhpur Exploration\",\"description\":\"Morning: Visit Mehrangarh Fort, one of the largest forts in India, and explore its various palaces and museums.\\r\\nAfternoon: Visit Jaswant Thada, a beautiful marble cenotaph, and Umaid Bhawan Palace, now a hotel and museum.\\r\\nEvening: Enjoy a stroll through Jodhpur\'s vibrant markets.\",\"id\":\"10\",\"_remove_\":\"0\"},\"11\":{\"order_num\":\"6\",\"name\":\"Day 6: Jodhpur to Udaipur\",\"description\":\"Morning: Check out from your Jodhpur hotel and drive to Udaipur (approx. 5 hours). \\r\\nAfternoon: Check into your Udaipur hotel.\\r\\nEvening: Relax or enjoy a boat ride on Lake Pichola.\",\"id\":\"11\",\"_remove_\":\"0\"},\"12\":{\"order_num\":\"7\",\"name\":\"Day 7: Udaipur Sightseeing and Departure\",\"description\":\"Full day sightseeing: Visit City Palace, Jag Mandir, Jagdish Temple, and Saheliyon-ki-Bari.\\r\\nEvening: Depart from Udaipur airport or railway station.\",\"id\":\"12\",\"_remove_\":\"0\"}},\"seo_title\":\"jaipur title\",\"seo_description\":\"jaipur description\",\"seo_keyword\":\"jaipur keyword\",\"_token\":\"E6i0oA64Z5FnYZPw055J3fv3TdKzp4YIpxTEnuJ4\",\"_method\":\"PUT\"}', '2025-06-24 00:49:49', '2025-06-24 00:49:49'),
(257, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-24 00:49:49', '2025-06-24 00:49:49'),
(258, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-24 05:22:05', '2025-06-24 05:22:05'),
(259, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:23:23', '2025-06-24 05:23:23'),
(260, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"budget\",\"model_name\":\"App\\\\Models\\\\Budget\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BudgetController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:25:51', '2025-06-24 05:25:51'),
(261, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:25:55', '2025-06-24 05:25:55'),
(262, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:26:05', '2025-06-24 05:26:05'),
(263, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:26:29', '2025-06-24 05:26:29'),
(264, 1, 'admin/budgets/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:27:15', '2025-06-24 05:27:15'),
(265, 1, 'admin/budgets', 'POST', '127.0.0.1', '{\"name\":\"Under \\u20b95,000\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:28:08', '2025-06-24 05:28:08'),
(266, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:28:08', '2025-06-24 05:28:08'),
(267, 1, 'admin/budgets/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 05:28:14', '2025-06-24 05:28:14'),
(268, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:28:41', '2025-06-24 05:28:41'),
(269, 1, 'admin/budgets/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:30:51', '2025-06-24 05:30:51'),
(270, 1, 'admin/budgets', 'POST', '127.0.0.1', '{\"name\":\"\\u20b95,000\\u2013\\u20b910,000\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:30:54', '2025-06-24 05:30:54'),
(271, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:30:54', '2025-06-24 05:30:54'),
(272, 1, 'admin/budgets/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:30:59', '2025-06-24 05:30:59'),
(273, 1, 'admin/budgets', 'POST', '127.0.0.1', '{\"name\":\"\\u20b910,000\\u2013\\u20b920,000\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:31:22', '2025-06-24 05:31:22'),
(274, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:31:22', '2025-06-24 05:31:22'),
(275, 1, 'admin/budgets/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:31:59', '2025-06-24 05:31:59'),
(276, 1, 'admin/budgets', 'POST', '127.0.0.1', '{\"name\":\"\\u20b920,000\\u2013\\u20b930,000\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:32:10', '2025-06-24 05:32:10'),
(277, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:32:10', '2025-06-24 05:32:10'),
(278, 1, 'admin/budgets/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:32:24', '2025-06-24 05:32:24'),
(279, 1, 'admin/budgets', 'POST', '127.0.0.1', '{\"name\":\"\\u20b950,000+\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:32:42', '2025-06-24 05:32:42'),
(280, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 05:32:42', '2025-06-24 05:32:42'),
(281, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:38:29', '2025-06-24 05:38:29'),
(282, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"duration\",\"model_name\":\"App\\\\Models\\\\Duration\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DurationController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:39:11', '2025-06-24 05:39:11'),
(283, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:39:11', '2025-06-24 05:39:11'),
(284, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:39:47', '2025-06-24 05:39:47'),
(285, 1, 'admin/durations', 'GET', '127.0.0.1', '[]', '2025-06-24 05:40:07', '2025-06-24 05:40:07'),
(286, 1, 'admin/durations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:40:08', '2025-06-24 05:40:08'),
(287, 1, 'admin/durations', 'POST', '127.0.0.1', '{\"name\":\"1-3 Days\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:40:41', '2025-06-24 05:40:41'),
(288, 1, 'admin/durations', 'GET', '127.0.0.1', '[]', '2025-06-24 05:40:41', '2025-06-24 05:40:41'),
(289, 1, 'admin/durations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:40:46', '2025-06-24 05:40:46'),
(290, 1, 'admin/durations', 'POST', '127.0.0.1', '{\"name\":\"4-7 Days\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:40:58', '2025-06-24 05:40:58'),
(291, 1, 'admin/durations', 'GET', '127.0.0.1', '[]', '2025-06-24 05:40:59', '2025-06-24 05:40:59'),
(292, 1, 'admin/durations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:41:05', '2025-06-24 05:41:05'),
(293, 1, 'admin/durations', 'POST', '127.0.0.1', '{\"name\":\"8-10 Days\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:41:17', '2025-06-24 05:41:17'),
(294, 1, 'admin/durations', 'GET', '127.0.0.1', '[]', '2025-06-24 05:41:17', '2025-06-24 05:41:17'),
(295, 1, 'admin/durations/create', 'GET', '127.0.0.1', '[]', '2025-06-24 05:41:19', '2025-06-24 05:41:19'),
(296, 1, 'admin/durations', 'POST', '127.0.0.1', '{\"name\":\"10+ Days\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 05:41:32', '2025-06-24 05:41:32'),
(297, 1, 'admin/durations', 'GET', '127.0.0.1', '[]', '2025-06-24 05:41:33', '2025-06-24 05:41:33'),
(298, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 05:52:15', '2025-06-24 05:52:15'),
(299, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"travelertype\",\"model_name\":\"App\\\\Models\\\\TravelerType\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TravelerTypeController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:05:28', '2025-06-24 06:05:28'),
(300, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:05:29', '2025-06-24 06:05:29'),
(301, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:05:44', '2025-06-24 06:05:44'),
(302, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:05:56', '2025-06-24 06:05:56'),
(303, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:05:59', '2025-06-24 06:05:59'),
(304, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-24 06:06:05', '2025-06-24 06:06:05'),
(305, 1, 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 06:06:08', '2025-06-24 06:06:08'),
(306, 1, 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Traveler Types\",\"icon\":\"icon-file\",\"uri\":\"traveler-types\",\"roles\":[null],\"permission\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\",\"_method\":\"PUT\"}', '2025-06-24 06:06:20', '2025-06-24 06:06:20'),
(307, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-24 06:06:21', '2025-06-24 06:06:21'),
(308, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-24 06:06:24', '2025-06-24 06:06:24'),
(309, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:06:27', '2025-06-24 06:06:27'),
(310, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:07:35', '2025-06-24 06:07:35'),
(311, 1, 'admin/traveler-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:07:37', '2025-06-24 06:07:37'),
(312, 1, 'admin/traveler-types', 'POST', '127.0.0.1', '{\"name\":\"Solo\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:13:05', '2025-06-24 06:13:05'),
(313, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:13:06', '2025-06-24 06:13:06'),
(314, 1, 'admin/traveler-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:13:07', '2025-06-24 06:13:07'),
(315, 1, 'admin/traveler-types', 'POST', '127.0.0.1', '{\"name\":\"Couple\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:13:14', '2025-06-24 06:13:14'),
(316, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:13:15', '2025-06-24 06:13:15'),
(317, 1, 'admin/traveler-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:13:17', '2025-06-24 06:13:17'),
(318, 1, 'admin/traveler-types', 'POST', '127.0.0.1', '{\"name\":\"Family\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:13:22', '2025-06-24 06:13:22'),
(319, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:13:23', '2025-06-24 06:13:23'),
(320, 1, 'admin/traveler-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:17:19', '2025-06-24 06:17:19'),
(321, 1, 'admin/traveler-types', 'POST', '127.0.0.1', '{\"name\":\"Group\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:17:28', '2025-06-24 06:17:28'),
(322, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:17:28', '2025-06-24 06:17:28'),
(323, 1, 'admin/traveler-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:18:11', '2025-06-24 06:18:11'),
(324, 1, 'admin/traveler-types', 'POST', '127.0.0.1', '{\"name\":\"Corporate\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:18:28', '2025-06-24 06:18:28'),
(325, 1, 'admin/traveler-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:18:28', '2025-06-24 06:18:28'),
(326, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:32:01', '2025-06-24 06:32:01'),
(327, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"experiencetype\",\"model_name\":\"App\\\\Models\\\\ExperienceType\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ExperienceTypeController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:32:42', '2025-06-24 06:32:42'),
(328, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:32:43', '2025-06-24 06:32:43'),
(329, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 06:33:14', '2025-06-24 06:33:14'),
(330, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:33:20', '2025-06-24 06:33:20'),
(331, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-24 06:33:23', '2025-06-24 06:33:23'),
(332, 1, 'admin/auth/menu/22/edit', 'GET', '127.0.0.1', '[]', '2025-06-24 06:33:26', '2025-06-24 06:33:26'),
(333, 1, 'admin/auth/menu/22', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Experience Types\",\"icon\":\"icon-file\",\"uri\":\"experience-types\",\"roles\":[null],\"permission\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\",\"_method\":\"PUT\"}', '2025-06-24 06:33:34', '2025-06-24 06:33:34'),
(334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-24 06:33:35', '2025-06-24 06:33:35'),
(335, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:03', '2025-06-24 06:36:03'),
(336, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:22', '2025-06-24 06:36:22'),
(337, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Adventure\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:36:36', '2025-06-24 06:36:36'),
(338, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:36', '2025-06-24 06:36:36'),
(339, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:39', '2025-06-24 06:36:39'),
(340, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Honeymoon\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:36:49', '2025-06-24 06:36:49'),
(341, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:49', '2025-06-24 06:36:49'),
(342, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:36:51', '2025-06-24 06:36:51'),
(343, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Spiritual\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:37:17', '2025-06-24 06:37:17'),
(344, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:37:18', '2025-06-24 06:37:18'),
(345, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:37:19', '2025-06-24 06:37:19'),
(346, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Wildlife & Nature\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:37:37', '2025-06-24 06:37:37'),
(347, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:37:38', '2025-06-24 06:37:38'),
(348, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:37:39', '2025-06-24 06:37:39'),
(349, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Luxury Tour\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:40:33', '2025-06-24 06:40:33'),
(350, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:40:33', '2025-06-24 06:40:33'),
(351, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:40:35', '2025-06-24 06:40:35'),
(352, 1, 'admin/experience-types', 'POST', '127.0.0.1', '{\"name\":\"Cultural Heritage\",\"slug\":null,\"_token\":\"9ETW1wGEhhGEQXUsoQId9kOzMkAppWtPeWadCAZM\"}', '2025-06-24 06:40:58', '2025-06-24 06:40:58'),
(353, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:40:58', '2025-06-24 06:40:58'),
(354, 1, 'admin/experience-types/create', 'GET', '127.0.0.1', '[]', '2025-06-24 06:41:00', '2025-06-24 06:41:00'),
(355, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:41:04', '2025-06-24 06:41:04'),
(356, 1, 'admin/experience-types', 'GET', '127.0.0.1', '[]', '2025-06-24 06:41:08', '2025-06-24 06:41:08'),
(357, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-24 23:18:16', '2025-06-24 23:18:16'),
(358, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-24 23:20:33', '2025-06-24 23:20:33'),
(359, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 23:20:44', '2025-06-24 23:20:44'),
(360, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-24 23:20:45', '2025-06-24 23:20:45'),
(361, 1, 'admin/budgets', 'GET', '127.0.0.1', '[]', '2025-06-24 23:21:36', '2025-06-24 23:21:36'),
(362, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-24 23:25:03', '2025-06-24 23:25:03'),
(363, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"package\",\"model_name\":\"App\\\\Models\\\\Package\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PackageController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"region_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"budget_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"duration_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"traveler_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"experience_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"destination_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_days\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tour_location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"stars\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"reviews\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"attractions\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"itinerary\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"thumnail_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"banner_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"gallery\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Q18zTQjA4lPMmbxrBUG4I7U18QJAVaXg47w7n1ta\"}', '2025-06-25 00:06:01', '2025-06-25 00:06:01'),
(364, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-25 00:06:04', '2025-06-25 00:06:04'),
(365, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-25 00:06:21', '2025-06-25 00:06:21'),
(366, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-25 00:06:23', '2025-06-25 00:06:23'),
(367, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-25 00:06:25', '2025-06-25 00:06:25'),
(368, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-06-25 23:44:41', '2025-06-25 23:44:41'),
(369, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-25 23:44:52', '2025-06-25 23:44:52'),
(370, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:44:56', '2025-06-25 23:44:56'),
(371, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"search_terms\":null,\"title\":\"Fillers\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-25 23:45:24', '2025-06-25 23:45:24'),
(372, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:45:32', '2025-06-25 23:45:32'),
(373, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Fillers\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-25 23:46:24', '2025-06-25 23:46:24'),
(374, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:46:28', '2025-06-25 23:46:28'),
(375, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:46:33', '2025-06-25 23:46:33'),
(376, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-25 23:47:06', '2025-06-25 23:47:06'),
(377, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:47:09', '2025-06-25 23:47:09'),
(378, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '[]', '2025-06-25 23:47:26', '2025-06-25 23:47:26'),
(379, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"24\",\"search_terms\":null,\"title\":\"Budgets\",\"icon\":\"icon-file\",\"uri\":\"budgets\",\"roles\":[null],\"permission\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-25 23:47:32', '2025-06-25 23:47:32'),
(380, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:47:32', '2025-06-25 23:47:32'),
(381, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"17\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"24\\\",\\\"children\\\":[{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"22\\\"},{\\\"id\\\":\\\"23\\\"}]}]\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-25 23:48:12', '2025-06-25 23:48:12'),
(382, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:12', '2025-06-25 23:48:12'),
(383, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:15', '2025-06-25 23:48:15'),
(384, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:21', '2025-06-25 23:48:21'),
(385, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:27', '2025-06-25 23:48:27'),
(386, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:28', '2025-06-25 23:48:28'),
(387, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:37', '2025-06-25 23:48:37'),
(388, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:42', '2025-06-25 23:48:42'),
(389, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-25 23:48:43', '2025-06-25 23:48:43'),
(390, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-25 23:49:06', '2025-06-25 23:49:06'),
(391, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:49:11', '2025-06-25 23:49:11'),
(392, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"17\\\"},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"24\\\",\\\"children\\\":[{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"19\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"22\\\"}]}]\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-25 23:49:17', '2025-06-25 23:49:17'),
(393, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:49:18', '2025-06-25 23:49:18'),
(394, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-25 23:49:20', '2025-06-25 23:49:20'),
(395, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-25 23:49:23', '2025-06-25 23:49:23'),
(396, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-26 00:26:29', '2025-06-26 00:26:29'),
(397, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"package_details_insert\",\"model_name\":\"App\\\\Models\\\\Packagedetails\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PackagedetailsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"order_num\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"package_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 00:30:01', '2025-06-26 00:30:01'),
(398, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-26 00:30:04', '2025-06-26 00:30:04'),
(399, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2025-06-26 00:30:24', '2025-06-26 00:30:24'),
(400, 1, 'admin/packagedetails', 'GET', '127.0.0.1', '[]', '2025-06-26 00:30:26', '2025-06-26 00:30:26'),
(401, 1, 'admin/packagedetails', 'GET', '127.0.0.1', '[]', '2025-06-26 00:50:24', '2025-06-26 00:50:24'),
(402, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2025-06-26 00:50:28', '2025-06-26 00:50:28'),
(403, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 00:50:36', '2025-06-26 00:50:36'),
(404, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Testimonials\",\"icon\":\"icon-address-book\",\"uri\":\"testimonials\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 00:51:01', '2025-06-26 00:51:01'),
(405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 00:51:02', '2025-06-26 00:51:02'),
(406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 00:51:04', '2025-06-26 00:51:04'),
(407, 1, 'admin/testimonials', 'GET', '127.0.0.1', '[]', '2025-06-26 00:51:09', '2025-06-26 00:51:09'),
(408, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-26 00:59:56', '2025-06-26 00:59:56'),
(409, 1, 'admin/destinations/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 00:59:59', '2025-06-26 00:59:59'),
(410, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-26 01:00:03', '2025-06-26 01:00:03'),
(411, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-26 01:12:00', '2025-06-26 01:12:00'),
(412, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:12:03', '2025-06-26 01:12:03'),
(413, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:12:06', '2025-06-26 01:12:06'),
(414, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:17:04', '2025-06-26 01:17:04'),
(415, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 01:17:08', '2025-06-26 01:17:08'),
(416, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:17:10', '2025-06-26 01:17:10'),
(417, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:17:12', '2025-06-26 01:17:12'),
(418, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:22:25', '2025-06-26 01:22:25'),
(419, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:24:53', '2025-06-26 01:24:53'),
(420, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:24:56', '2025-06-26 01:24:56'),
(421, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 01:24:58', '2025-06-26 01:24:58'),
(422, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:24:59', '2025-06-26 01:24:59'),
(423, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:25:01', '2025-06-26 01:25:01'),
(424, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:27:45', '2025-06-26 01:27:45'),
(425, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:27:47', '2025-06-26 01:27:47'),
(426, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 01:27:49', '2025-06-26 01:27:49'),
(427, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:27:51', '2025-06-26 01:27:51'),
(428, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:27:52', '2025-06-26 01:27:52'),
(429, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:29:40', '2025-06-26 01:29:40'),
(430, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:29:41', '2025-06-26 01:29:41'),
(431, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:36:26', '2025-06-26 01:36:26'),
(432, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:36:31', '2025-06-26 01:36:31'),
(433, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:36:33', '2025-06-26 01:36:33'),
(434, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:38:48', '2025-06-26 01:38:48'),
(435, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:40:38', '2025-06-26 01:40:38'),
(436, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:41:22', '2025-06-26 01:41:22'),
(437, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:41:30', '2025-06-26 01:41:30'),
(438, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:44:08', '2025-06-26 01:44:08'),
(439, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:44:45', '2025-06-26 01:44:45'),
(440, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 01:44:55', '2025-06-26 01:44:55'),
(441, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 01:44:56', '2025-06-26 01:44:56'),
(442, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 03:37:12', '2025-06-26 03:37:12'),
(443, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 03:38:17', '2025-06-26 03:38:17'),
(444, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 03:39:09', '2025-06-26 03:39:09'),
(445, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"region_id\":\"5\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":null,\"slug\":null,\"destination_name\":null,\"short_description\":null,\"tour_days\":null,\"tour_location\":null,\"description\":null,\"price\":null,\"stars\":null,\"reviews\":null,\"attractions\":[null],\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 03:49:32', '2025-06-26 03:49:32'),
(446, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 03:49:34', '2025-06-26 03:49:34'),
(447, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":null,\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":null,\"stars\":null,\"reviews\":null,\"attractions\":[null],\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 03:54:02', '2025-06-26 03:54:02'),
(448, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 03:54:03', '2025-06-26 03:54:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(449, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 03:54:05', '2025-06-26 03:54:05'),
(450, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"11 Night \\/ 12 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 03:55:35', '2025-06-26 03:55:35'),
(451, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 03:55:35', '2025-06-26 03:55:35'),
(452, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 03:55:37', '2025-06-26 03:55:37'),
(453, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"11 Night \\/ 12 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"new_1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 03:59:15', '2025-06-26 03:59:15'),
(454, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 03:59:15', '2025-06-26 03:59:15'),
(455, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 03:59:17', '2025-06-26 03:59:17'),
(456, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"11 Night \\/ 12 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:00:13', '2025-06-26 04:00:13'),
(457, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:00:14', '2025-06-26 04:00:14'),
(458, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:00:16', '2025-06-26 04:00:16'),
(459, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"11 Night \\/ 12 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:01:45', '2025-06-26 04:01:45'),
(460, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:01:46', '2025-06-26 04:01:46'),
(461, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:01:56', '2025-06-26 04:01:56'),
(462, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"11 Night \\/ 12 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":\"Varanasi Title\",\"seo_description\":\"Varanasi Description\",\"seo_keyword\":\"Varanasi Keyword\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:02:45', '2025-06-26 04:02:45'),
(463, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:02:45', '2025-06-26 04:02:45'),
(464, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:45', '2025-06-26 04:04:45'),
(465, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:47', '2025-06-26 04:04:47'),
(466, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:48', '2025-06-26 04:04:48'),
(467, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:48', '2025-06-26 04:04:48'),
(468, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:49', '2025-06-26 04:04:49'),
(469, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:49', '2025-06-26 04:04:49'),
(470, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:50', '2025-06-26 04:04:50'),
(471, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:51', '2025-06-26 04:04:51'),
(472, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:51', '2025-06-26 04:04:51'),
(473, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:52', '2025-06-26 04:04:52'),
(474, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:52', '2025-06-26 04:04:52'),
(475, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:53', '2025-06-26 04:04:53'),
(476, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:54', '2025-06-26 04:04:54'),
(477, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:54', '2025-06-26 04:04:54'),
(478, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:55', '2025-06-26 04:04:55'),
(479, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:56', '2025-06-26 04:04:56'),
(480, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:56', '2025-06-26 04:04:56'),
(481, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:57', '2025-06-26 04:04:57'),
(482, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:57', '2025-06-26 04:04:57'),
(483, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:58', '2025-06-26 04:04:58'),
(484, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:59', '2025-06-26 04:04:59'),
(485, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:04:59', '2025-06-26 04:04:59'),
(486, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:02', '2025-06-26 04:05:02'),
(487, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:02', '2025-06-26 04:05:02'),
(488, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:03', '2025-06-26 04:05:03'),
(489, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:04', '2025-06-26 04:05:04'),
(490, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:04', '2025-06-26 04:05:04'),
(491, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:05', '2025-06-26 04:05:05'),
(492, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:05', '2025-06-26 04:05:05'),
(493, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:06', '2025-06-26 04:05:06'),
(494, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:07', '2025-06-26 04:05:07'),
(495, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:07', '2025-06-26 04:05:07'),
(496, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:08', '2025-06-26 04:05:08'),
(497, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:08', '2025-06-26 04:05:08'),
(498, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:09', '2025-06-26 04:05:09'),
(499, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:10', '2025-06-26 04:05:10'),
(500, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:10', '2025-06-26 04:05:10'),
(501, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:11', '2025-06-26 04:05:11'),
(502, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:12', '2025-06-26 04:05:12'),
(503, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:12', '2025-06-26 04:05:12'),
(504, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:13', '2025-06-26 04:05:13'),
(505, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:13', '2025-06-26 04:05:13'),
(506, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:14', '2025-06-26 04:05:14'),
(507, 1, 'admin/packages/1', 'GET', '127.0.0.1', '[]', '2025-06-26 04:05:17', '2025-06-26 04:05:17'),
(508, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 04:06:45', '2025-06-26 04:06:45'),
(509, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:06:46', '2025-06-26 04:06:46'),
(510, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"off\",\"after-save\":\"exit\"}', '2025-06-26 04:06:49', '2025-06-26 04:06:49'),
(511, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"on\",\"after-save\":\"exit\"}', '2025-06-26 04:06:59', '2025-06-26 04:06:59'),
(512, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"off\",\"after-save\":\"exit\"}', '2025-06-26 04:07:04', '2025-06-26 04:07:04'),
(513, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:07:10', '2025-06-26 04:07:10'),
(514, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:07:47', '2025-06-26 04:07:47'),
(515, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:08:51', '2025-06-26 04:08:51'),
(516, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:23', '2025-06-26 04:09:23'),
(517, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:31', '2025-06-26 04:09:31'),
(518, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:32', '2025-06-26 04:09:32'),
(519, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:33', '2025-06-26 04:09:33'),
(520, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:33', '2025-06-26 04:09:33'),
(521, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:34', '2025-06-26 04:09:34'),
(522, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:34', '2025-06-26 04:09:34'),
(523, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:35', '2025-06-26 04:09:35'),
(524, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:36', '2025-06-26 04:09:36'),
(525, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:36', '2025-06-26 04:09:36'),
(526, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:37', '2025-06-26 04:09:37'),
(527, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:37', '2025-06-26 04:09:37'),
(528, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:38', '2025-06-26 04:09:38'),
(529, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:39', '2025-06-26 04:09:39'),
(530, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:39', '2025-06-26 04:09:39'),
(531, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:40', '2025-06-26 04:09:40'),
(532, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:41', '2025-06-26 04:09:41'),
(533, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:41', '2025-06-26 04:09:41'),
(534, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:42', '2025-06-26 04:09:42'),
(535, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:43', '2025-06-26 04:09:43'),
(536, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:43', '2025-06-26 04:09:43'),
(537, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:44', '2025-06-26 04:09:44'),
(538, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:45', '2025-06-26 04:09:45'),
(539, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:45', '2025-06-26 04:09:45'),
(540, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:46', '2025-06-26 04:09:46'),
(541, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:47', '2025-06-26 04:09:47'),
(542, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:47', '2025-06-26 04:09:47'),
(543, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:48', '2025-06-26 04:09:48'),
(544, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:49', '2025-06-26 04:09:49'),
(545, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:49', '2025-06-26 04:09:49'),
(546, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:50', '2025-06-26 04:09:50'),
(547, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:50', '2025-06-26 04:09:50'),
(548, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:51', '2025-06-26 04:09:51'),
(549, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:52', '2025-06-26 04:09:52'),
(550, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:52', '2025-06-26 04:09:52'),
(551, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:53', '2025-06-26 04:09:53'),
(552, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:53', '2025-06-26 04:09:53'),
(553, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:54', '2025-06-26 04:09:54'),
(554, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:55', '2025-06-26 04:09:55'),
(555, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:55', '2025-06-26 04:09:55'),
(556, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:09:58', '2025-06-26 04:09:58'),
(557, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:05', '2025-06-26 04:10:05'),
(558, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:06', '2025-06-26 04:10:06'),
(559, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:06', '2025-06-26 04:10:06'),
(560, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:07', '2025-06-26 04:10:07'),
(561, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:08', '2025-06-26 04:10:08'),
(562, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:08', '2025-06-26 04:10:08'),
(563, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:09', '2025-06-26 04:10:09'),
(564, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:10', '2025-06-26 04:10:10'),
(565, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:10', '2025-06-26 04:10:10'),
(566, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:11', '2025-06-26 04:10:11'),
(567, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:10:17', '2025-06-26 04:10:17'),
(568, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:44', '2025-06-26 04:12:44'),
(569, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:44', '2025-06-26 04:12:44'),
(570, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:45', '2025-06-26 04:12:45'),
(571, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:45', '2025-06-26 04:12:45'),
(572, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:46', '2025-06-26 04:12:46'),
(573, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:12:47', '2025-06-26 04:12:47'),
(574, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:13:47', '2025-06-26 04:13:47'),
(575, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":null,\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"\\u20b9 11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[null],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":\"3\",\"_remove_\":\"0\"}},\"seo_title\":\"Varanasi Title\",\"seo_description\":\"Varanasi Description\",\"seo_keyword\":\"Varanasi Keyword\",\"is_featured\":\"off\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:13:54', '2025-06-26 04:13:54'),
(576, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:13:56', '2025-06-26 04:13:56'),
(577, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"on\",\"after-save\":\"exit\"}', '2025-06-26 04:14:00', '2025-06-26 04:14:00'),
(578, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"off\",\"after-save\":\"exit\"}', '2025-06-26 04:14:11', '2025-06-26 04:14:11'),
(579, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"on\",\"after-save\":\"exit\"}', '2025-06-26 04:14:18', '2025-06-26 04:14:18'),
(580, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"off\",\"after-save\":\"exit\"}', '2025-06-26 04:15:35', '2025-06-26 04:15:35'),
(581, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_featured\":\"on\",\"after-save\":\"exit\"}', '2025-06-26 04:15:41', '2025-06-26 04:15:41'),
(582, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:16:41', '2025-06-26 04:16:41'),
(583, 1, 'admin/packagedetails', 'GET', '127.0.0.1', '[]', '2025-06-26 04:16:50', '2025-06-26 04:16:50'),
(584, 1, 'admin/packagedetails/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 04:16:54', '2025-06-26 04:16:54'),
(585, 1, 'admin/packagedetails', 'GET', '127.0.0.1', '[]', '2025-06-26 04:16:54', '2025-06-26 04:16:54'),
(586, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:17:03', '2025-06-26 04:17:03'),
(587, 1, 'admin/packages/create', 'GET', '127.0.0.1', '[]', '2025-06-26 04:17:05', '2025-06-26 04:17:05'),
(588, 1, 'admin/packages', 'POST', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":null,\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"\\u20b910000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"new_1\":{\"order_num\":null,\"name\":null,\"description\":null,\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"is_featured\":null,\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 04:22:24', '2025-06-26 04:22:24'),
(589, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:22:24', '2025-06-26 04:22:24'),
(590, 1, 'admin/packages/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:22:27', '2025-06-26 04:22:27');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(591, 1, 'admin/packages/2', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":\"jaipur\",\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"\\u20b910000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"4\":{\"order_num\":\"1\",\"name\":\"Day 1: Delhi to Jaipur \\u2013 Arrival and Local Sightseeing\",\"description\":\"Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\\r\\n\\r\\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\\r\\n\\r\\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique fa\\u00e7ade.\\r\\n\\r\\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"4\",\"_remove_\":\"0\"},\"new_1\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur \\u2013 Heritage Tour\",\"description\":\"Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don\\u2019t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\\r\\n\\r\\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\\r\\n\\r\\nEnjoy lunch at a local restaurant or rooftop caf\\u00e9, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\\r\\n\\r\\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf\\u00e9.\\r\\n\\r\\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Delhi \\u2013 Return Journey\",\"description\":\"After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\\r\\n\\r\\nBirla Mandir (Laxmi Narayan Temple) \\u2013 a peaceful and elegant white marble temple.\\r\\n\\r\\nGaltaji Temple (Monkey Temple) \\u2013 an ancient Hindu pilgrimage site nestled between hills.\\r\\n\\r\\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You\\u2019ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.\",\"id\":null,\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:23:41', '2025-06-26 04:23:41'),
(592, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:23:42', '2025-06-26 04:23:42'),
(593, 1, 'admin/packages/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:23:44', '2025-06-26 04:23:44'),
(594, 1, 'admin/packages/2', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":\"jaipur\",\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"\\u20b910000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"4\":{\"order_num\":\"1\",\"name\":\"Day 1: Delhi to Jaipur \\u2013 Arrival and Local Sightseeing\",\"description\":\"Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\\r\\n\\r\\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\\r\\n\\r\\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique fa\\u00e7ade.\\r\\n\\r\\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur \\u2013 Heritage Tour\",\"description\":\"Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don\\u2019t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\\r\\n\\r\\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\\r\\n\\r\\nEnjoy lunch at a local restaurant or rooftop caf\\u00e9, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\\r\\n\\r\\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf\\u00e9.\\r\\n\\r\\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Delhi \\u2013 Return Journey\",\"description\":\"After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\\r\\n\\r\\nBirla Mandir (Laxmi Narayan Temple) \\u2013 a peaceful and elegant white marble temple.\\r\\n\\r\\nGaltaji Temple (Monkey Temple) \\u2013 an ancient Hindu pilgrimage site nestled between hills.\\r\\n\\r\\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You\\u2019ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.\",\"id\":\"6\",\"_remove_\":\"0\"}},\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:24:43', '2025-06-26 04:24:43'),
(595, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:24:43', '2025-06-26 04:24:43'),
(596, 1, 'admin/packages/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 04:24:46', '2025-06-26 04:24:46'),
(597, 1, 'admin/packages/2', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":\"jaipur\",\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"\\u20b910000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"4\":{\"order_num\":\"1\",\"name\":\"Day 1: Delhi to Jaipur \\u2013 Arrival and Local Sightseeing\",\"description\":\"Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\\r\\n\\r\\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\\r\\n\\r\\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique fa\\u00e7ade.\\r\\n\\r\\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur \\u2013 Heritage Tour\",\"description\":\"Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don\\u2019t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\\r\\n\\r\\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\\r\\n\\r\\nEnjoy lunch at a local restaurant or rooftop caf\\u00e9, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\\r\\n\\r\\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf\\u00e9.\\r\\n\\r\\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Delhi \\u2013 Return Journey\",\"description\":\"After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\\r\\n\\r\\nBirla Mandir (Laxmi Narayan Temple) \\u2013 a peaceful and elegant white marble temple.\\r\\n\\r\\nGaltaji Temple (Monkey Temple) \\u2013 an ancient Hindu pilgrimage site nestled between hills.\\r\\n\\r\\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You\\u2019ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.\",\"id\":\"6\",\"_remove_\":\"0\"}},\"seo_title\":\"Jaipur Title\",\"seo_description\":\"Jaipur Description\",\"seo_keyword\":\"jaipur keyword\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 04:25:23', '2025-06-26 04:25:23'),
(598, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:25:23', '2025-06-26 04:25:23'),
(599, 1, 'admin/destinations', 'GET', '127.0.0.1', '[]', '2025-06-26 04:26:03', '2025-06-26 04:26:03'),
(600, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 04:26:05', '2025-06-26 04:26:05'),
(601, 1, 'admin/regions', 'GET', '127.0.0.1', '[]', '2025-06-26 04:26:08', '2025-06-26 04:26:08'),
(602, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:03', '2025-06-26 05:21:03'),
(603, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:07', '2025-06-26 05:21:07'),
(604, 1, 'admin/packagedetails', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:09', '2025-06-26 05:21:09'),
(605, 1, 'admin/tourdetails', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:13', '2025-06-26 05:21:13'),
(606, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:22', '2025-06-26 05:21:22'),
(607, 1, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 05:21:29', '2025-06-26 05:21:29'),
(608, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:29', '2025-06-26 05:21:29'),
(609, 1, 'admin/auth/menu/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\"}', '2025-06-26 05:21:33', '2025-06-26 05:21:33'),
(610, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:33', '2025-06-26 05:21:33'),
(611, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:37', '2025-06-26 05:21:37'),
(612, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:40', '2025-06-26 05:21:40'),
(613, 1, 'admin/packages/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:42', '2025-06-26 05:21:42'),
(614, 1, 'admin/packages/2', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":\"jaipur\",\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"\\u20b910000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"4\":{\"order_num\":\"1\",\"name\":\"Day 1: Delhi to Jaipur \\u2013 Arrival and Local Sightseeing\",\"description\":\"Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\\r\\n\\r\\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\\r\\n\\r\\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique fa\\u00e7ade.\\r\\n\\r\\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur \\u2013 Heritage Tour\",\"description\":\"Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don\\u2019t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\\r\\n\\r\\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\\r\\n\\r\\nEnjoy lunch at a local restaurant or rooftop caf\\u00e9, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\\r\\n\\r\\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf\\u00e9.\\r\\n\\r\\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Delhi \\u2013 Return Journey\",\"description\":\"After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\\r\\n\\r\\nBirla Mandir (Laxmi Narayan Temple) \\u2013 a peaceful and elegant white marble temple.\\r\\n\\r\\nGaltaji Temple (Monkey Temple) \\u2013 an ancient Hindu pilgrimage site nestled between hills.\\r\\n\\r\\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You\\u2019ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.\",\"id\":\"6\",\"_remove_\":\"0\"}},\"seo_title\":\"Jaipur Title\",\"seo_description\":\"Jaipur Description\",\"seo_keyword\":\"jaipur keyword\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 05:21:57', '2025-06-26 05:21:57'),
(615, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:21:58', '2025-06-26 05:21:58'),
(616, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 05:25:04', '2025-06-26 05:25:04'),
(617, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":null,\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[null],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Varanasi Title\",\"seo_description\":\"Varanasi Description\",\"seo_keyword\":\"Varanasi Keyword\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 05:25:10', '2025-06-26 05:25:10'),
(618, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:25:11', '2025-06-26 05:25:11'),
(619, 1, 'admin/packages/2/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 05:25:13', '2025-06-26 05:25:13'),
(620, 1, 'admin/packages/2', 'PUT', '127.0.0.1', '{\"region_id\":\"3\",\"search_terms\":null,\"budget_id\":\"2\",\"duration_id\":\"1\",\"traveler_id\":\"1\",\"experience_id\":\"6\",\"title\":\"Jaipur\",\"slug\":\"jaipur\",\"destination_name\":\"Jaipur\",\"short_description\":\"Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.\",\"tour_days\":\"3 days - 2 Nights\",\"tour_location\":\"Delhi - Jaipur\",\"description\":\"<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City<\\/strong>. The drive takes approximately <strong>5 to 6 hours<\\/strong> by road, covering around <strong>280 kilometers<\\/strong>. You can travel via a private car, Volvo bus, or take a morning train.<\\/p>\\r\\n\\r\\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace<\\/strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar<\\/strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.<\\/p>\\r\\n\\r\\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar<\\/strong> and <strong>Johari Bazaar<\\/strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal<\\/strong> (Palace of Winds) to admire its unique fa&ccedil;ade.<\\/p>\\r\\n\\r\\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani<\\/strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort<\\/strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)<\\/strong> inside.<\\/p>\\r\\n\\r\\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal<\\/strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.<\\/p>\\r\\n\\r\\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort<\\/strong> or <strong>Jaigarh Fort<\\/strong>, which offer panoramic views of Jaipur city.<\\/p>\\r\\n\\r\\n<p>In the late afternoon, visit the <strong>Albert Hall Museum<\\/strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.<\\/p>\\r\\n\\r\\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.<\\/p>\\r\\n\\r\\n<p><strong>Overnight stay in Jaipur.<\\/strong><br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Birla Mandir (Laxmi Narayan Temple)<\\/strong> &ndash; a peaceful and elegant white marble temple.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Galtaji Temple (Monkey Temple)<\\/strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\",\"price\":\"10,000\",\"stars\":\"3.5\",\"reviews\":\"11k\",\"attractions\":[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"4\":{\"order_num\":\"1\",\"name\":\"Day 1: Delhi to Jaipur \\u2013 Arrival and Local Sightseeing\",\"description\":\"Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\\r\\n\\r\\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\\r\\n\\r\\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique fa\\u00e7ade.\\r\\n\\r\\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"order_num\":\"2\",\"name\":\"Day 2: Jaipur \\u2013 Heritage Tour\",\"description\":\"Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don\\u2019t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\\r\\n\\r\\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\\r\\n\\r\\nEnjoy lunch at a local restaurant or rooftop caf\\u00e9, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\\r\\n\\r\\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf\\u00e9.\\r\\n\\r\\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\\r\\n\\r\\nOvernight stay in Jaipur.\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"order_num\":\"3\",\"name\":\"Day 3: Jaipur to Delhi \\u2013 Return Journey\",\"description\":\"After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\\r\\n\\r\\nBirla Mandir (Laxmi Narayan Temple) \\u2013 a peaceful and elegant white marble temple.\\r\\n\\r\\nGaltaji Temple (Monkey Temple) \\u2013 an ancient Hindu pilgrimage site nestled between hills.\\r\\n\\r\\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You\\u2019ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.\",\"id\":\"6\",\"_remove_\":\"0\"}},\"seo_title\":\"Jaipur Title\",\"seo_description\":\"Jaipur Description\",\"seo_keyword\":\"jaipur keyword\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 05:25:22', '2025-06-26 05:25:22'),
(621, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:25:22', '2025-06-26 05:25:22'),
(622, 1, 'admin/packages/1/edit', 'GET', '127.0.0.1', '[]', '2025-06-26 05:39:14', '2025-06-26 05:39:14');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(623, 1, 'admin/packages/1', 'PUT', '127.0.0.1', '{\"region_id\":\"2\",\"search_terms\":null,\"budget_id\":\"3\",\"duration_id\":\"4\",\"traveler_id\":\"1\",\"experience_id\":\"3\",\"title\":\"Varanasi\",\"slug\":\"varanasi\",\"destination_name\":\"Varanasi\",\"short_description\":\"Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\\r\\nGoan escape starts here.\",\"tour_days\":\"11 Nights\\/12 Days\",\"tour_location\":\"Varanasi - Manali\",\"description\":\"<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\\r\\n\\r\\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.<\\/p>\",\"price\":\"11,000\",\"stars\":\"4.5\",\"reviews\":\"1.5k\",\"attractions\":[\"10 Night \\/ 11 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"],\"packagedetailsinsert\":{\"1\":{\"order_num\":\"1\",\"name\":\"Day 1: Varanasi \\u2192 Delhi (By Train or Flight)\",\"description\":\"Morning: Board a flight\\/train from Varanasi to Delhi.\\r\\nAfternoon: Check in to hotel.\\r\\nEvening: Quick sightseeing \\u2013 India Gate, Connaught Place, or Akshardham Temple.\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"order_num\":\"2\",\"name\":\"Day 2: Delhi \\u2192 Manali (By Overnight Volvo or Private Cab)\",\"description\":\"Morning: Local sightseeing or rest.\\r\\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\\r\\nOvernight: In transit.\",\"id\":\"2\",\"_remove_\":\"0\"}},\"seo_title\":\"Varanasi Title\",\"seo_description\":\"Varanasi Description\",\"seo_keyword\":\"Varanasi Keyword\",\"is_featured\":\"1\",\"is_featured_cb\":\"on\",\"_token\":\"khzyVcYoAKJo5yjY1C6UzMgZCEhe1ifJfkrZwWMB\",\"_method\":\"PUT\"}', '2025-06-26 05:39:48', '2025-06-26 05:39:48'),
(624, 1, 'admin/packages', 'GET', '127.0.0.1', '[]', '2025-06-26 05:39:48', '2025-06-26 05:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2025-06-20 01:41:02', '2025-06-20 01:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2025-06-20 01:40:40', '2025-06-20 01:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$yPbGW5SYDFD9hdDfRqrMmuhyyWlKG3hs38QY17iMe0FSCmjhRQgE2', 'Administrator', NULL, NULL, '2025-06-20 01:40:40', '2025-06-20 01:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Under ₹5,000', 'under-5-000', '2025-06-24 05:28:08', '2025-06-24 05:28:08'),
(2, '₹5,000–₹10,000', '-5-000-10-000', '2025-06-24 05:30:54', '2025-06-24 05:30:54'),
(3, '₹10,000–₹20,000', '-10-000-20-000', '2025-06-24 05:31:22', '2025-06-24 05:31:22'),
(4, '₹20,000–₹30,000', '-20-000-30-000', '2025-06-24 05:32:10', '2025-06-24 05:32:10'),
(5, '₹50,000+', '-50-000-', '2025-06-24 05:32:42', '2025-06-24 05:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Reece Puckett', 'mawig@mailinator.com', 'Deleniti necessitati', '2025-06-25 01:13:09', '2025-06-25 01:13:09'),
(2, 'Imelda Roman', 'tido@mailinator.com', 'Sed cum repellendus', '2025-06-25 01:13:29', '2025-06-25 01:13:29'),
(3, 'Kibo Knox', 'divo@mailinator.com', 'Officiis voluptatem', '2025-06-25 01:13:42', '2025-06-25 01:13:42'),
(4, 'Paki Lowe', 'qigis@mailinator.com', 'Fugit iure elit qu', '2025-06-25 01:13:49', '2025-06-25 01:13:49'),
(5, 'Damian Wilkerson', 'nylorapiz@mailinator.com', 'Ea maiores est fugi', '2025-06-25 01:13:56', '2025-06-25 01:13:56'),
(6, 'karan prajapat', 'karanprajapat@gmail.com', 'hjkhkh', '2025-06-25 01:16:40', '2025-06-25 01:16:40'),
(7, 'Daryl Hester', 'nogyqutubu@mailinator.com', 'Consequuntur magnam', '2025-06-25 01:38:01', '2025-06-25 01:38:01'),
(8, 'Cally Nolan', 'faxasal@mailinator.com', 'Dolore reprehenderit', '2025-06-25 01:57:46', '2025-06-25 01:57:46'),
(9, 'Susan Vang', 'lakezyf@mailinator.com', 'Ea magni delectus s', '2025-06-25 23:28:13', '2025-06-25 23:28:13'),
(10, 'dccdcdcd', 'dccdcdccdd@gmail.com', 'hgjdhadgjahsgajdhagdjhdjhd asjdahagjhas asdadadad', '2025-06-25 23:36:30', '2025-06-25 23:36:30'),
(11, 'Murphy Torres', 'waxufe@gmail.com', 'Voluptatem et quam q', '2025-06-26 00:02:08', '2025-06-26 00:02:08'),
(12, 'Blossom Lester', 'bexazyq@gmail.com', 'jlkjkdjjj', '2025-06-26 00:22:34', '2025-06-26 00:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `thumnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `region_id`, `thumnail_image`, `banner_image`, `gallery`, `title`, `slug`, `destination_name`, `short_description`, `tour_days`, `tour_location`, `description`, `itinerary`, `created_at`, `updated_at`, `seo_title`, `seo_description`, `seo_keyword`) VALUES
(1, 5, 'images/Lotus temple.webp', 'images/Contactimg_1.webp', '[\"images\\/Goature1.webp\",\"images\\/Goature2.webp\"]', 'Delhi Getaway Sun, Sand & Serenity Await', 'delhi-getaway-sun-sand-serenity-await', 'Delhi', 'Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\r\nGoan escape starts here.', '11 Nights/12 Days', 'Jaipur - Delhi', '<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>', NULL, '2025-06-22 23:26:13', '2025-06-22 23:57:10', 'Seo Title', 'Seo description', 'Seo keyword'),
(2, 2, 'images/manali_3.webp', 'images/Detailes-image_3.webp', '[\"images\\/manali_4.webp\",\"images\\/Ladakh.webp\",\"images\\/manali_1.webp\",\"images\\/peric.webp\"]', 'Manali Getaway Sun, Sand & Serenity Await', 'manali-getaway-sun-sand-serenity-await', 'Manali', 'Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\r\nGoan escape starts here.', '11 Nights/12 Days', 'Delhi-Manali', '<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>', NULL, '2025-06-22 23:50:37', '2025-06-23 02:09:44', 'Manali title', 'Manali Description', 'Manali keyword'),
(3, 3, 'images/dexter-fernandes-y97sM41-g9k-unsplash.jpg', 'images/ved-SRAUI9X4Ep8-unsplash.jpg', '[\"images\\/dexter-fernandes-y97sM41-g9k-unsplash_1.jpg\",\"images\\/ved-SRAUI9X4Ep8-unsplash_1.jpg\",\"images\\/corridor-5587351_1920.jpg\",\"images\\/amber-gone-3238314_1280.jpg\",\"images\\/amber-653180_1280.jpg\",\"images\\/hawa-mahal-6156123_1280.jpg\"]', 'Jaipur Destination', 'jaipur-destination', 'Jaipur', 'Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\r\nGoan escape starts here.', '6 Nights/ 7 Days', 'Delhi-Jaipur', '<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>', NULL, '2025-06-24 00:39:48', '2025-06-24 00:49:49', 'jaipur title', 'jaipur description', 'jaipur keyword');

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

CREATE TABLE `duration` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1-3 Days', '1-3-days', '2025-06-24 05:40:41', '2025-06-24 05:40:41'),
(2, '4-7 Days', '4-7-days', '2025-06-24 05:40:59', '2025-06-24 05:40:59'),
(3, '8-10 Days', '8-10-days', '2025-06-24 05:41:17', '2025-06-24 05:41:17'),
(4, '10+ Days', '10-days', '2025-06-24 05:41:32', '2025-06-24 05:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `experiencetype`
--

CREATE TABLE `experiencetype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiencetype`
--

INSERT INTO `experiencetype` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Adventure', 'adventure', '2025-06-24 06:36:36', '2025-06-24 06:36:36'),
(2, 'Honeymoon', 'honeymoon', '2025-06-24 06:36:49', '2025-06-24 06:36:49'),
(3, 'Spiritual', 'spiritual', '2025-06-24 06:37:17', '2025-06-24 06:37:17'),
(4, 'Wildlife & Nature', 'wildlife-nature', '2025-06-24 06:37:38', '2025-06-24 06:37:38'),
(5, 'Luxury Tour', 'luxury-tour', '2025-06-24 06:40:33', '2025-06-24 06:40:33'),
(6, 'Cultural Heritage', 'cultural-heritage', '2025-06-24 06:40:58', '2025-06-24 06:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banner`
--

CREATE TABLE `home_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banner`
--

INSERT INTO `home_banner` (`id`, `name`, `image`, `short_content`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Discover The World Like Never Before', 'images/Baner.webp', 'From hidden gems to iconic landmarks — we plan every detail so you can explore worry-free\r\nand make memories that last a lifetime', '2025-06-21 03:45:37', '2025-06-21 03:45:37', 'http://127.0.0.1:8000/'),
(2, 'Ride to the Roof of the World  Ladakh Awaits!', 'images/Detailes-image.webp', 'A journey through breathtaking landscapes, ancient monasteries, and timeless culture —\r\ndiscover the true spirit of Ladakh', '2025-06-21 03:48:15', '2025-06-21 03:48:32', 'http://127.0.0.1:8000');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_06_20_090322_create_home_banner_table', 2),
(7, '2025_06_21_055912_create_contact_table', 3),
(8, '2025_06_21_094226_create_region_table', 4),
(9, '2025_06_21_094553_create_region_table', 5),
(10, '2025_06_21_102618_create_destination_table', 6),
(11, '2025_06_21_105757_create_toure_details_insert_table', 7),
(12, '2025_06_24_105551_create_budget_table', 8),
(13, '2025_06_24_110911_create_duration_table', 9),
(14, '2025_06_24_113528_create_travelertype_table', 10),
(15, '2025_06_24_120242_create_experiencetype_table', 11),
(16, '2025_06_25_053601_create_package_table', 12),
(17, '2025_06_26_060001_create_package_details_insert_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traveler_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attractions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerarys` blob DEFAULT NULL,
  `thumnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `region_id`, `budget_id`, `duration_id`, `traveler_id`, `experience_id`, `title`, `slug`, `destination_name`, `short_description`, `tour_days`, `tour_location`, `description`, `price`, `stars`, `reviews`, `attractions`, `itinerarys`, `thumnail_image`, `banner_image`, `gallery`, `seo_title`, `seo_description`, `seo_keyword`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, '2', '3', '4', '1', '3', 'Varanasi', 'varanasi', 'Varanasi', 'Discover the perfect blend of beaches, nightlife, culture, and relaxation. Your unforgettable\r\nGoan escape starts here.', '11 Nights/12 Days', 'Varanasi - Manali', '<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>Located at the base of the Zabarwan Mountain is the Indira Gandhi Memorial Tulip Garden Asia&rsquo;s largest tulip garden and a key attraction in Srinagar. This seven-terraced garden is celebrated for its 48 varieties of tulip flowers, appealing to both adults and children alike.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>\r\n\r\n<p>The garden is also home to a diverse array of other flowers, including daffodils, hyacinths, roses, narcissus, and various ornamental plants. A water channel flowing through the terraces enhances the garden&rsquo;s beauty, providing an idyllic setting for memorable photographs.</p>', '11,000', '4.5', '1.5k', '[\"10 Night \\/ 11 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"]', NULL, 'images/Varanasi_4.webp', 'images/Varanasi_5.webp', '[\"images\\/Detailes-image_4.webp\",\"images\\/Goature2_1.webp\",\"images\\/Goature1_1.webp\"]', 'Varanasi Title', 'Varanasi Description', 'Varanasi Keyword', 1, '2025-06-26 03:54:02', '2025-06-26 05:39:48'),
(2, '3', '2', '1', '1', '6', 'Jaipur', 'jaipur', 'Jaipur', 'Jaipur, also known as the Pink City, is the capital of Rajasthan, India. Famous for its rich history, majestic palaces, vibrant bazaars, and unique pink-colored buildings, Jaipur is a major tourist destination. Founded in 1727 by Maharaja Sawai Jai Singh II, the city is renowned for landmarks like Amber Fort, City Palace, Hawa Mahal, and Jantar Mantar. Blending traditional Rajasthani culture with modern charm, Jaipur is also part of the popular Golden Triangle tourist circuit, along with Delhi and Agra.', '3 days - 2 Nights', 'Delhi - Jaipur', '<p>Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the <strong>Pink City</strong>. The drive takes approximately <strong>5 to 6 hours</strong> by road, covering around <strong>280 kilometers</strong>. You can travel via a private car, Volvo bus, or take a morning train.</p>\r\n\r\n<p>Upon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the <strong>City Palace</strong>, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is <strong>Jantar Mantar</strong>, a UNESCO World Heritage site famous for its collection of astronomical instruments.</p>\r\n\r\n<p>In the evening, enjoy a walk through the vibrant markets like <strong>Bapu Bazaar</strong> and <strong>Johari Bazaar</strong>, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the <strong>Hawa Mahal</strong> (Palace of Winds) to admire its unique fa&ccedil;ade.</p>\r\n\r\n<p>End your day with a traditional Rajasthani dinner at <strong>Chokhi Dhani</strong> (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.</p>\r\n\r\n<p><strong>Overnight stay in Jaipur.</strong><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Start your day with a delicious breakfast at the hotel, then head to <strong>Amber Fort</strong>, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don&rsquo;t miss the mesmerizing <strong>Sheesh Mahal (Mirror Palace)</strong> inside.</p>\r\n\r\n<p>After Amber Fort, make a photo stop at <strong>Jal Mahal</strong> (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.</p>\r\n\r\n<p>Enjoy lunch at a local restaurant or rooftop caf&eacute;, then proceed to <strong>Nahargarh Fort</strong> or <strong>Jaigarh Fort</strong>, which offer panoramic views of Jaipur city.</p>\r\n\r\n<p>In the late afternoon, visit the <strong>Albert Hall Museum</strong> in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden caf&eacute;.</p>\r\n\r\n<p>Return to your hotel and spend the evening at leisure or explore nearby local eateries.</p>\r\n\r\n<p><strong>Overnight stay in Jaipur.</strong><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Birla Mandir (Laxmi Narayan Temple)</strong> &ndash; a peaceful and elegant white marble temple.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Galtaji Temple (Monkey Temple)</strong> &ndash; an ancient Hindu pilgrimage site nestled between hills.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Start your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You&rsquo;ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', '10,000', '3.5', '11k', '[\"2 Night \\/ 3 Days\",\"Hotel + Meals + Cab\",\"Sightseeing Included\"]', NULL, 'images/dexter-fernandes-y97sM41-g9k-unsplash_3.jpg', 'images/amber-gone-3238314_1280_1.jpg', '[\"images\\/dexter-fernandes-y97sM41-g9k-unsplash_2.jpg\",\"images\\/ved-SRAUI9X4Ep8-unsplash_2.jpg\",\"images\\/corridor-5587351_1920_1.jpg\",\"images\\/amber-gone-3238314_1280_2.jpg\",\"images\\/amber-653180_1280_1.jpg\",\"images\\/hawa-mahal-6156123_1280_1.jpg\"]', 'Jaipur Title', 'Jaipur Description', 'jaipur keyword', 1, '2025-06-26 04:22:24', '2025-06-26 05:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `package_details_insert`
--

CREATE TABLE `package_details_insert` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_details_insert`
--

INSERT INTO `package_details_insert` (`id`, `order_num`, `name`, `description`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Day 1: Varanasi → Delhi (By Train or Flight)', 'Morning: Board a flight/train from Varanasi to Delhi.\r\nAfternoon: Check in to hotel.\r\nEvening: Quick sightseeing – India Gate, Connaught Place, or Akshardham Temple.', '1', '2025-06-26 03:59:15', '2025-06-26 03:59:15'),
(2, 2, 'Day 2: Delhi → Manali (By Overnight Volvo or Private Cab)', 'Morning: Local sightseeing or rest.\r\nEvening: Board a Volvo bus or hire a cab to Manali (12-14 hrs).\r\nOvernight: In transit.', '1', '2025-06-26 03:59:15', '2025-06-26 03:59:15'),
(4, 1, 'Day 1: Delhi to Jaipur – Arrival and Local Sightseeing', 'Your journey begins early in the morning as you depart from Delhi and head towards Jaipur, the capital of Rajasthan, also known as the Pink City. The drive takes approximately 5 to 6 hours by road, covering around 280 kilometers. You can travel via a private car, Volvo bus, or take a morning train.\r\n\r\nUpon arrival in Jaipur around noon, check into your hotel and relax for a while. After freshening up and having lunch, begin your exploration of the city with a visit to the City Palace, a stunning complex of courtyards, gardens, and buildings that reflects a blend of Mughal and Rajasthani architecture. Right next to it is Jantar Mantar, a UNESCO World Heritage site famous for its collection of astronomical instruments.\r\n\r\nIn the evening, enjoy a walk through the vibrant markets like Bapu Bazaar and Johari Bazaar, where you can shop for traditional handicrafts, jewelry, textiles, and souvenirs. On your way back, stop by the Hawa Mahal (Palace of Winds) to admire its unique façade.\r\n\r\nEnd your day with a traditional Rajasthani dinner at Chokhi Dhani (optional), a themed village resort offering folk dances, music, camel rides, and authentic cuisine.\r\n\r\nOvernight stay in Jaipur.', '2', '2025-06-26 04:22:24', '2025-06-26 04:23:41'),
(5, 2, 'Day 2: Jaipur – Heritage Tour', 'Start your day with a delicious breakfast at the hotel, then head to Amber Fort, located on the outskirts of the city. This majestic fort, built with red sandstone and marble, offers breathtaking views of the Aravalli hills. You can reach the fort via an elephant ride or jeep, and don’t miss the mesmerizing Sheesh Mahal (Mirror Palace) inside.\r\n\r\nAfter Amber Fort, make a photo stop at Jal Mahal (Water Palace), a beautiful palace situated in the middle of Man Sagar Lake. Although visitors are not allowed inside, the scenic view is perfect for photography.\r\n\r\nEnjoy lunch at a local restaurant or rooftop café, then proceed to Nahargarh Fort or Jaigarh Fort, which offer panoramic views of Jaipur city.\r\n\r\nIn the late afternoon, visit the Albert Hall Museum in Ram Niwas Garden to learn about the history and art of Rajasthan. You can also explore the colorful lanes of the old city or relax in a garden café.\r\n\r\nReturn to your hotel and spend the evening at leisure or explore nearby local eateries.\r\n\r\nOvernight stay in Jaipur.', '2', '2025-06-26 04:23:41', '2025-06-26 04:23:41'),
(6, 3, 'Day 3: Jaipur to Delhi – Return Journey', 'After breakfast, check out from your hotel and, if time permits, visit a few last-minute attractions such as:\r\n\r\nBirla Mandir (Laxmi Narayan Temple) – a peaceful and elegant white marble temple.\r\n\r\nGaltaji Temple (Monkey Temple) – an ancient Hindu pilgrimage site nestled between hills.\r\n\r\nStart your return journey to Delhi by noon. You can stop along the way for lunch at a highway restaurant. You’ll arrive back in Delhi by early evening, bringing a memorable end to your short yet enriching Jaipur trip.', '2', '2025-06-26 04:23:41', '2025-06-26 04:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `slug`, `created_at`, `updated_at`, `seo_title`, `seo_description`, `seo_keyword`, `seo_image`) VALUES
(1, 'Ladakh', 'ladakh', '2025-06-21 04:18:18', '2025-06-21 04:22:14', 't', 'd', 'k', NULL),
(2, 'Manali', 'manali', '2025-06-21 04:18:32', '2025-06-21 04:22:31', 't', 'd', 'k', NULL),
(3, 'Rajasthan', 'rajasthan', '2025-06-21 04:18:42', '2025-06-21 04:22:40', 't', 'd', 'k', NULL),
(4, 'Kerala', 'kerala', '2025-06-21 04:18:52', '2025-06-21 04:22:48', 't', 'd', 'k', NULL),
(5, 'North East India', 'north-east-india', '2025-06-21 04:19:13', '2025-06-21 04:22:55', 't', 'd', 'k', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `company`, `title`, `image`, `position`, `message`, `review_date`, `description`, `created_at`, `updated_at`) VALUES
(2, 'karan prajapat', 'a2group', 'jkjdklj', 'images/image1.jpg', 'CEO', 'kdljkldjl', '2025-06-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiu  tempor incididunt ut labore et dolore magna aliqua.', '2025-06-25 05:41:08', '2025-06-25 07:51:03'),
(3, 'ajay', 'a2group', 'jdkljdjkljd', 'images/Image1_1200x1200.webp', 'developer', 'jdkljljdl', '2025-06-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua.', '2025-06-25 05:45:45', '2025-06-25 07:51:58'),
(4, 'rohit', 'ITcompany', 'lkdLKLFKD', 'images/image4.jpg', 'Designer', 'jfkjljfl', '2025-06-20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmo tempor incididunt ut labore et dolore magna aliqua.', '2025-06-25 05:47:05', '2025-06-25 07:54:42'),
(5, 'ravi', 'RC Company', 'kl;dkl;dk', 'images/image5.jpg', 'manger', 'lkdlkld', '2025-06-20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-06-25 05:48:14', '2025-06-25 07:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `toure_details_insert`
--

CREATE TABLE `toure_details_insert` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toure_details_insert`
--

INSERT INTO `toure_details_insert` (`id`, `order_num`, `name`, `description`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Day 1 :Arrive in Delhi', '<p>Hello and welcome to India!!!!! Transfer to the hotel for accommodation upon arrival in Delhi.</p>', '1', '2025-06-22 23:29:38', '2025-06-22 23:29:38'),
(2, 2, 'Day 2 :Delhi Sightseeing', '<p>Breakfast. Today we set out to explore historic Delhi and the biggest mosque in India which is it\'s Jama Masjid and the Raj Ghat which is the place of incineration of Mahatma\'s Gandhi, which is a place of honor. We\'ll walk through the bazaars and market areas of the vibrant Chandni Chowk. Lunch in a nearby restaurant. In the afternoon, we\'ll explore the new area in the town. We will visit the magnificent and impressive Qutub Minar , we will visit it as the Gateway of India and we will see the government structures as well as the Parliamentary area, as well as The Presidential Palace. We will then take a trip to The Sikh Gurudwara Bangla Sahib Temple that will allow us to understand more about Sikhism. When we have finished our visit, we\'ll return to the hotel for a place to stay.</p>', '1', '2025-06-22 23:29:38', '2025-06-22 23:29:38'),
(3, 1, 'Travel to Manali', '<p>check into your hotel, and perhaps take a stroll through the local market. </p>', '2', '2025-06-22 23:50:37', '2025-06-22 23:53:42'),
(4, 2, 'Visit Hadimba Devi Temple', '<p>Visit Hadimba Devi Temple, Vashisht village, and Manu Temple.</p>', '2', '2025-06-22 23:54:27', '2025-06-22 23:54:47'),
(5, 3, 'Explore Solang Valley', '<p>Explore Solang Valley for adventure activities like paragliding and zorbing, or visit the Atal Tunnel.</p>', '2', '2025-06-23 05:12:56', '2025-06-23 05:13:16'),
(6, 1, 'Day 1: Arrival and Jaipur Exploration', 'Arrive in Jaipur, check into your hotel, and freshen up.\r\nAfternoon: Visit City Palace, Jantar Mantar (observatory), and Hawa Mahal (Palace of Winds). \r\nEvening: Enjoy a stroll in the illuminated old city area.\r\nConsider visiting the Birla Mandir (Laxmi Narayan Temple) and Albert Hall Museum in the evening.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(7, 2, 'Day 2: Jaipur Forts and Gardens', 'Morning: Visit the magnificent Amber Fort, ascend on an elephant (or jeep), and explore the fort\'s intricate architecture and historical significance. \r\nAfternoon: Explore Jaigarh Fort and Nahargarh Fort, enjoying panoramic views of the city. \r\nEvening: Relax or shop for souvenirs at local markets like Bapu Bazaar or Johari Bazaar.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(8, 3, 'Day 3: Jaipur to Pushkar & Ajmer', 'Morning: Drive from Jaipur to Pushkar (approx. 3 hours). En route, visit Ajmer, including the Ajmer Sharif Dargah and Nasiyan Jain Temple. \r\nAfternoon: Check into your Pushkar hotel.\r\nEvening: Explore Pushkar Lake, visit Brahma Temple and Savitri Temple.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(9, 4, 'Day 4: Pushkar to Jodhpur', 'Morning: After breakfast, visit Brahma and Savitri Temple.\r\nAfternoon: Drive to Jodhpur (approx. 4 hours), enjoying the scenic route.\r\nOptional: Stop at Nimaj Palace for lunch en route.\r\nEvening: Check into your Jodhpur hotel and relax.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(10, 5, 'Day 5: Jodhpur Exploration', 'Morning: Visit Mehrangarh Fort, one of the largest forts in India, and explore its various palaces and museums.\r\nAfternoon: Visit Jaswant Thada, a beautiful marble cenotaph, and Umaid Bhawan Palace, now a hotel and museum.\r\nEvening: Enjoy a stroll through Jodhpur\'s vibrant markets.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(11, 6, 'Day 6: Jodhpur to Udaipur', 'Morning: Check out from your Jodhpur hotel and drive to Udaipur (approx. 5 hours). \r\nAfternoon: Check into your Udaipur hotel.\r\nEvening: Relax or enjoy a boat ride on Lake Pichola.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09'),
(12, 7, 'Day 7: Udaipur Sightseeing and Departure', 'Full day sightseeing: Visit City Palace, Jag Mandir, Jagdish Temple, and Saheliyon-ki-Bari.\r\nEvening: Depart from Udaipur airport or railway station.', '3', '2025-06-24 00:49:09', '2025-06-24 00:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `travelertype`
--

CREATE TABLE `travelertype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelertype`
--

INSERT INTO `travelertype` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Solo', 'solo', '2025-06-24 06:13:05', '2025-06-24 06:13:05'),
(2, 'Couple', 'couple', '2025-06-24 06:13:14', '2025-06-24 06:13:14'),
(3, 'Family', 'family', '2025-06-24 06:13:23', '2025-06-24 06:13:23'),
(4, 'Group', 'group', '2025-06-24 06:17:28', '2025-06-24 06:17:28'),
(5, 'Corporate', 'corporate', '2025-06-24 06:18:28', '2025-06-24 06:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duration`
--
ALTER TABLE `duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencetype`
--
ALTER TABLE `experiencetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_banner`
--
ALTER TABLE `home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details_insert`
--
ALTER TABLE `package_details_insert`
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
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toure_details_insert`
--
ALTER TABLE `toure_details_insert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelertype`
--
ALTER TABLE `travelertype`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `duration`
--
ALTER TABLE `duration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiencetype`
--
ALTER TABLE `experiencetype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_banner`
--
ALTER TABLE `home_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_details_insert`
--
ALTER TABLE `package_details_insert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `toure_details_insert`
--
ALTER TABLE `toure_details_insert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travelertype`
--
ALTER TABLE `travelertype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
