-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2023 at 09:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dt_live_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1- all access	',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `email`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$TiPWXGHgw0txVkj07fY5DOy1Dde1uTgA0W9OZhzKiIue.UNJXC6.q', 1, 1, '2022-04-14 17:28:24', '2023-07-03 04:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `app_section`
--

CREATE TABLE `app_section` (
  `id` int(11) NOT NULL,
  `is_home_screen` int(11) NOT NULL DEFAULT 1 COMMENT '1- home screen, 2- other screen',
  `type_id` int(11) NOT NULL COMMENT 'FK = Type Table	',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Category, 4-Language, 5- Upcoming',
  `upcoming_type` int(11) NOT NULL DEFAULT 0 COMMENT '1- Video, 2- Show',
  `title` text NOT NULL,
  `video_id` text NOT NULL COMMENT '	All Multiple Ids',
  `screen_layout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `app_section`
--

INSERT INTO `app_section` (`id`, `is_home_screen`, `type_id`, `video_type`, `upcoming_type`, `title`, `video_id`, `screen_layout`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 1, 0, 'Latest & Trending', '3,7,8,9,12,13,14,15,21,23', 'landscape', 1, '2022-08-10 13:22:34', '2023-07-03 04:57:48'),
(11, 1, 1, 1, 0, 'Recently Added Movies', '1,2,7,8,9,12,13,14,15,16,17', 'potrait', 1, '2022-08-10 13:27:00', '2023-07-03 04:57:48'),
(12, 1, 4, 2, 0, 'Recently Added Tv Shows', '3,5,6,9,10,11,12,14,15,16', 'potrait', 1, '2022-08-10 13:27:46', '2023-07-03 05:06:18'),
(13, 2, 1, 1, 0, 'Action Movies', '2,3,8,12,13,14,15,16,20,24', 'potrait', 1, '2022-08-10 13:28:41', '2023-07-03 04:57:48'),
(14, 1, 1, 1, 0, 'Top Rated IMDB Movies', '2,3,7,8,12,13,14,15,16,17,24', 'landscape', 1, '2022-08-10 13:29:33', '2023-07-03 04:57:48'),
(15, 1, 4, 2, 0, 'Original Special Series', '3,4,10,11,12,13,14,17', 'landscape', 1, '2022-08-10 13:30:22', '2023-07-03 05:06:24'),
(16, 2, 4, 2, 0, 'Tv Show We think you\'ll like', '3,4,6,9,10,11,12,13,14,15', 'potrait', 1, '2022-08-10 13:30:53', '2023-07-03 05:06:29'),
(17, 1, 1, 3, 0, 'Watch Movies in Your Language', '1,3,4,6,7,8,9,10,11,12,13', 'square', 1, '2022-08-10 13:31:19', '2023-07-03 05:06:36'),
(18, 1, 1, 4, 0, 'Movie Genres', '1,2,3,6,7,8,9,10,11,12,13,14', 'square', 1, '2022-08-10 13:31:49', '2023-07-03 05:06:42'),
(19, 1, 1, 1, 0, 'Best of 2022', '2,8,13,14,15,16,20,22', 'landscape', 1, '2022-08-10 13:32:32', '2023-07-03 04:57:48'),
(20, 1, 1, 1, 0, 'Original Special Movie', '1,2,3,9,12,14,15,16', 'landscape', 1, '2022-08-10 13:33:08', '2023-07-03 04:57:48'),
(21, 1, 1, 1, 0, 'Top Movies', '1,3,7,12,15,16,17,19,21', 'potrait', 1, '2022-09-09 09:16:12', '2023-07-03 04:57:48'),
(22, 2, 2, 1, 0, 'Top News', '25,40,41,42', 'potrait', 1, '2022-09-22 12:57:56', '2023-07-03 04:57:48'),
(23, 2, 1, 1, 0, 'Recommended movies', '1,7,12,13,14,17,19,20', 'landscape', 1, '2022-09-26 08:20:21', '2023-07-03 04:57:48'),
(24, 2, 3, 1, 0, 'Best Of IPL', '26,27,32,33,38', 'landscape', 1, '2022-09-29 17:26:53', '2023-07-03 04:57:48'),
(26, 2, 3, 1, 0, 'Best By Individual', '27,28,31,37', 'potrait', 1, '2022-09-29 17:45:18', '2023-07-03 04:57:48'),
(27, 2, 5, 1, 0, 'Top picks for you', '11,34,35,36,45,46,47,49', 'potrait', 1, '2022-09-30 09:21:43', '2023-07-03 04:57:48'),
(28, 1, 4, 2, 0, 'Top Rated Shows', '3,4,6,9,10,11,13,14,15,16', 'potrait', 1, '2022-09-30 10:12:29', '2023-07-03 05:06:50'),
(29, 2, 4, 2, 0, 'Top Web Shows', '3,4,5,10,11,13,14,17', 'landscape', 1, '2022-09-30 10:13:37', '2023-07-03 05:06:54'),
(30, 2, 1, 1, 0, 'Popular Movies', '1,2,8,9,15,16,19,21,22,23', 'potrait', 1, '2022-09-30 10:35:30', '2023-07-03 04:57:48'),
(31, 2, 4, 2, 0, 'Popular Reality Shows', '3,4,5,9,10,11,12,13,14,15,16', 'potrait', 1, '2022-09-30 13:12:58', '2023-07-03 05:06:58'),
(32, 2, 1, 1, 0, 'Best of 2022', '2,3,8,20,21,22,23,24', 'landscape', 1, '2022-10-04 13:54:43', '2023-07-03 04:57:48'),
(33, 2, 3, 1, 0, 'Olympics 2022 (Birmingham)', '4,31,37', 'landscape', 1, '2022-10-05 08:19:23', '2023-07-03 04:57:48'),
(34, 2, 3, 1, 0, 'Most Viewed Matches', '4,32,33,38', 'potrait', 1, '2022-10-05 08:22:25', '2023-07-03 04:57:48'),
(35, 2, 4, 2, 0, 'Popular Web Series', '12,13,17,20', 'landscape', 1, '2022-10-06 15:22:01', '2023-07-03 05:07:02'),
(36, 2, 5, 1, 0, 'Award-Winning Animations', '11,34,35,46,47,49,50', 'landscape', 1, '2022-10-06 15:45:54', '2023-07-03 04:57:48'),
(37, 2, 5, 1, 0, 'International Animations', '11,34,35,36,45,46,48,50', 'potrait', 1, '2022-10-06 16:08:11', '2023-07-03 04:57:48'),
(38, 2, 2, 1, 0, 'Breaking News', '25,39,40,44', 'landscape', 1, '2022-10-06 16:34:02', '2023-07-03 04:57:48'),
(39, 2, 2, 1, 0, 'Trending Flashback', '25,42,43,44', 'potrait', 1, '2022-10-06 16:43:56', '2023-07-03 04:57:48'),
(40, 1, 4, 2, 0, 'Drama Show', '3,5,9', 'landscape', 1, '2022-10-13 07:35:30', '2023-07-03 05:07:07'),
(43, 2, 7, 1, 0, 'Top Shorts', '51,53,54', 'landscape', 1, '2022-10-15 12:48:04', '2023-07-03 04:57:48'),
(44, 2, 7, 1, 0, 'Trending Shorts', '51,53,54', 'potrait', 1, '2022-10-15 12:48:58', '2023-07-03 04:57:48'),
(45, 2, 7, 1, 0, 'Latest Shorts', '53,54', 'landscape', 1, '2022-10-15 12:50:00', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Avatar 1', '1675407941.png', '2022-05-19 16:55:22', '2023-07-03 04:57:48'),
(2, 'Avatar 2', '1675407952.png', '2022-05-19 16:55:22', '2023-07-03 04:57:48'),
(3, 'Avatar 3', '1675407978.png', '2022-05-19 16:55:37', '2023-07-03 04:57:48'),
(4, 'Avatar 4', '1675407989.png', '2022-05-19 16:55:37', '2023-07-03 04:57:48'),
(5, 'Avatar 5', '1675408001.png', '2022-08-06 15:09:18', '2023-07-03 04:57:48'),
(6, 'Avatar 6', '1675408014.jpeg', '2022-08-09 16:42:07', '2023-07-03 04:57:48'),
(7, 'Avatar 7', '1663156955.png', '2022-09-14 15:32:35', '2023-07-03 04:57:48'),
(8, 'Avatar 8', '1663156965.png', '2022-09-14 15:32:45', '2023-07-03 04:57:48'),
(9, 'Avatar 9', '1663156976.png', '2022-09-14 15:32:56', '2023-07-03 04:57:48'),
(10, 'Avatar 10', '1663156987.png', '2022-09-14 15:33:07', '2023-07-03 04:57:48'),
(11, 'Avatar 11', '1663156998.jpeg', '2022-09-14 15:33:18', '2023-07-03 04:57:48'),
(12, 'Avatar 12', '1663157009.jpeg', '2022-09-14 15:33:29', '2023-07-03 04:57:48'),
(13, 'Avatar 13', '1663157025.jpeg', '2022-09-14 15:33:45', '2023-07-03 04:57:48'),
(14, 'Avatar 14', '1663157036.png', '2022-09-14 15:33:56', '2023-07-03 04:57:48'),
(15, 'Avatar 15', '1663157163.png', '2022-09-14 15:36:03', '2023-07-03 04:57:48'),
(16, 'Avatar 16', '1663157173.png', '2022-09-14 15:36:13', '2023-07-03 04:57:48'),
(17, 'Avatar 17', '1663157182.png', '2022-09-14 15:36:22', '2023-07-03 04:57:48'),
(18, 'Avatar 18', '1663157195.jpeg', '2022-09-14 15:36:35', '2023-07-03 04:57:48'),
(19, 'Avatar 19', '1663157279.jpeg', '2022-09-14 15:37:59', '2023-07-03 04:57:48'),
(20, 'Avatar 20', '1663157298.png', '2022-09-14 15:38:18', '2023-07-03 04:57:48'),
(21, 'Avatar 21', '1663157315.png', '2022-09-14 15:38:35', '2023-07-03 04:57:48'),
(22, 'Avatar 22', '1663157342.png', '2022-09-14 15:39:02', '2023-07-03 04:57:48'),
(23, 'Avatar 23', '1663157373.png', '2022-09-14 15:39:33', '2023-07-03 04:57:48'),
(24, 'Avatar 24', '1663157385.png', '2022-09-14 15:39:45', '2023-07-03 04:57:48'),
(25, 'Avatar 25', '1663157404.png', '2022-09-14 15:40:04', '2023-07-03 04:57:48'),
(26, 'Avatar 26', '1663157420.png', '2022-09-14 15:40:20', '2023-07-03 04:57:48'),
(27, 'Avatar 27', '1663498488.png', '2022-09-18 14:24:48', '2023-07-03 04:57:48'),
(28, 'Avatar 28', '1663498504.png', '2022-09-18 14:25:04', '2023-07-03 04:57:48'),
(29, 'Avatar 29', '1663498519.png', '2022-09-18 14:25:19', '2023-07-03 04:57:48'),
(30, 'Avatar 30', '1663498538.png', '2022-09-18 14:25:38', '2023-07-03 04:57:48'),
(31, 'Avatar 31', '1663498572.png', '2022-09-18 14:26:12', '2023-07-03 04:57:48'),
(32, 'Avatar 32', '1663498583.png', '2022-09-18 14:26:23', '2023-07-03 04:57:48'),
(33, 'Avatar 33', '1663498594.png', '2022-09-18 14:26:34', '2023-07-03 04:57:48'),
(34, 'Avatar 34', '1663498609.png', '2022-09-18 14:26:49', '2023-07-03 04:57:48'),
(35, 'Avatar 35', '1663498630.png', '2022-09-18 14:27:10', '2023-07-03 04:57:48'),
(36, 'Avatar 36', '1663498639.png', '2022-09-18 14:27:19', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `is_home_screen` int(11) NOT NULL DEFAULT 1 COMMENT '	1- home screen, 2- other screen	',
  `type_id` int(11) NOT NULL COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL DEFAULT 1 COMMENT '1- Video, 2- Show, 3- Category, 4-Language, 5- Upcoming	',
  `upcoming_type` int(11) NOT NULL DEFAULT 0 COMMENT '1- Video, 2- Show',
  `video_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `is_home_screen`, `type_id`, `video_type`, `upcoming_type`, `video_id`, `status`, `created_at`, `updated_at`) VALUES
(11, 2, 1, 1, 0, 3, 2, '2022-08-10 14:52:08', '2022-08-10 14:52:08'),
(23, 2, 4, 2, 0, 10, 2, '2022-08-10 15:21:05', '2022-08-10 15:21:05'),
(24, 2, 4, 2, 0, 5, 2, '2022-08-10 15:21:37', '2022-08-27 13:03:11'),
(34, 2, 1, 1, 0, 20, 2, '2022-09-26 13:18:53', '2022-09-26 13:18:53'),
(37, 2, 4, 2, 0, 15, 2, '2022-10-01 08:26:20', '2022-10-01 08:26:20'),
(39, 1, 1, 1, 0, 21, 2, '2022-10-01 09:06:34', '2022-10-01 09:06:34'),
(42, 1, 4, 2, 0, 9, 2, '2022-10-01 09:08:13', '2022-10-01 09:08:13'),
(44, 2, 1, 1, 0, 23, 2, '2022-10-01 09:11:27', '2022-10-01 09:11:27'),
(46, 2, 1, 1, 0, 15, 2, '2022-10-01 09:12:42', '2022-10-01 09:12:42'),
(47, 2, 2, 1, 0, 25, 2, '2022-10-01 09:13:43', '2022-10-01 09:13:43'),
(48, 2, 2, 1, 0, 10, 2, '2022-10-01 09:13:49', '2022-10-01 09:13:49'),
(49, 2, 3, 1, 0, 28, 2, '2022-10-01 09:14:01', '2022-10-01 09:14:01'),
(50, 2, 3, 1, 0, 4, 2, '2022-10-01 09:14:27', '2022-10-01 09:14:27'),
(51, 2, 3, 1, 0, 26, 2, '2022-10-01 09:14:32', '2022-10-01 09:14:32'),
(52, 2, 3, 1, 0, 27, 2, '2022-10-01 09:14:44', '2022-10-01 09:14:44'),
(53, 2, 4, 2, 0, 4, 2, '2022-10-01 09:15:00', '2022-10-01 09:15:00'),
(56, 2, 4, 2, 0, 9, 2, '2022-10-05 09:25:03', '2022-10-05 09:25:03'),
(60, 2, 2, 1, 0, 39, 2, '2022-10-06 16:33:04', '2022-10-06 16:33:04'),
(61, 2, 2, 1, 0, 40, 2, '2022-10-06 16:33:10', '2022-10-06 16:33:10'),
(62, 2, 2, 1, 0, 40, 2, '2022-10-06 16:33:17', '2022-10-06 16:33:17'),
(63, 2, 3, 1, 0, 38, 2, '2022-10-10 12:52:51', '2022-10-10 12:52:51'),
(73, 1, 1, 1, 0, 2, 2, '2022-10-11 18:01:17', '2022-10-11 18:01:17'),
(83, 2, 7, 1, 0, 53, 2, '2022-10-15 12:46:00', '2022-10-15 12:46:00'),
(85, 2, 7, 1, 0, 51, 2, '2022-10-15 12:46:44', '2022-10-15 12:46:44'),
(86, 2, 4, 2, 0, 13, 2, '2022-10-17 15:42:39', '2022-10-17 15:42:39'),
(87, 2, 7, 1, 0, 54, 2, '2022-10-29 11:52:56', '2022-10-29 11:52:56'),
(90, 1, 1, 1, 0, 3, 2, '2022-11-11 22:33:20', '2022-11-11 22:33:20'),
(91, 2, 1, 1, 0, 2, 2, '2022-11-15 10:07:46', '2022-11-15 10:07:46'),
(92, 1, 5, 1, 0, 29, 2, '2023-02-09 14:12:13', '2023-02-09 14:12:13'),
(93, 1, 1, 1, 0, 20, 2, '2023-02-09 14:12:30', '2023-02-09 14:12:30'),
(94, 1, 1, 1, 0, 23, 2, '2023-02-09 14:12:39', '2023-02-09 14:12:39'),
(97, 2, 1, 1, 0, 22, 2, '2023-02-11 10:44:02', '2023-02-11 10:44:02'),
(98, 1, 1, 1, 0, 58, 2, '2023-02-13 17:57:28', '2023-02-13 17:57:28'),
(102, 2, 5, 1, 0, 29, 2, '2023-02-18 10:42:09', '2023-02-18 10:42:09'),
(103, 2, 5, 1, 0, 48, 2, '2023-02-18 10:42:39', '2023-02-18 10:42:39'),
(104, 2, 5, 1, 0, 46, 2, '2023-02-18 10:43:06', '2023-02-18 10:43:06'),
(105, 1, 1, 1, 0, 66, 2, '2023-03-11 19:04:34', '2023-03-11 19:04:34'),
(106, 1, 1, 1, 0, 67, 2, '2023-03-14 13:54:58', '2023-03-14 13:54:58'),
(107, 2, 1, 1, 0, 67, 2, '2023-03-14 13:55:07', '2023-03-14 13:55:07'),
(108, 1, 1, 1, 0, 69, 2, '2023-06-27 16:31:41', '2023-06-27 16:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL DEFAULT 1 COMMENT '1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming	',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`id`, `user_id`, `video_id`, `type_id`, `video_type`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 1, 2, 1, '2022-05-09 03:45:52', '2023-07-03 04:57:48'),
(6, 4, 3, 1, 2, 1, '2022-05-09 11:21:08', '2023-07-03 04:57:48'),
(43, 0, 0, 0, 0, 1, '2022-07-29 06:32:25', '2023-07-03 04:57:48'),
(602, 8, 1, 1, 1, 1, '2022-08-03 11:05:33', '2023-07-03 04:57:48'),
(607, 7, 1, 1, 1, 1, '2022-08-08 05:15:52', '2023-07-03 04:57:48'),
(620, 26, 1, 1, 1, 1, '2022-08-09 03:57:55', '2023-07-03 04:57:48'),
(639, 35, 7, 1, 1, 1, '2022-08-14 04:27:22', '2023-07-03 04:57:48'),
(646, 36, 8, 1, 1, 1, '2022-08-14 10:05:28', '2023-07-03 04:57:48'),
(649, 38, 3, 1, 1, 1, '2022-08-22 07:21:50', '2023-07-03 04:57:48'),
(650, 38, 3, 2, 2, 1, '2022-08-22 07:23:18', '2023-07-03 04:57:48'),
(680, 42, 1, 1, 1, 1, '2022-08-29 05:10:32', '2023-07-03 04:57:48'),
(682, 43, 1, 1, 1, 1, '2022-08-29 06:00:36', '2023-07-03 04:57:48'),
(698, 1, 2, 1, 1, 1, '2022-09-06 04:51:07', '2023-07-03 04:57:48'),
(700, 50, 3, 2, 2, 1, '2022-09-06 06:00:44', '2023-07-03 04:57:48'),
(704, 4, 3, 2, 1, 1, '2022-09-07 12:19:44', '2023-07-03 04:57:48'),
(708, 50, 1, 1, 1, 1, '2022-09-08 06:16:21', '2023-07-03 04:57:48'),
(719, 32, 3, 3, 1, 1, '2022-09-08 09:28:51', '2023-07-03 04:57:48'),
(740, 68, 3, 2, 2, 1, '2022-09-08 10:52:37', '2023-07-03 04:57:48'),
(741, 68, 9, 2, 2, 1, '2022-09-08 10:55:47', '2023-07-03 04:57:48'),
(742, 68, 1, 1, 1, 1, '2022-09-08 11:05:21', '2023-07-03 04:57:48'),
(763, 32, 8, 1, 1, 1, '2022-09-09 06:01:39', '2023-07-03 04:57:48'),
(767, 73, 1, 1, 1, 1, '2022-09-09 07:43:50', '2023-07-03 04:57:48'),
(769, 76, 7, 1, 1, 1, '2022-09-10 03:45:11', '2023-07-03 04:57:48'),
(770, 76, 8, 1, 1, 1, '2022-09-10 03:45:20', '2023-07-03 04:57:48'),
(785, 71, 3, 1, 1, 1, '2022-09-15 14:10:47', '2023-07-03 04:57:48'),
(786, 71, 7, 1, 1, 1, '2022-09-16 03:12:24', '2023-07-03 04:57:48'),
(787, 32, 1, 1, 1, 1, '2022-09-16 03:22:21', '2023-07-03 04:57:48'),
(798, 32, 7, 1, 1, 1, '2022-09-22 05:00:41', '2023-07-03 04:57:48'),
(801, 84, 17, 1, 1, 1, '2022-09-23 12:11:24', '2023-07-03 04:57:48'),
(823, 4, 11, 2, 2, 1, '2022-09-26 08:27:16', '2023-07-03 04:57:48'),
(825, 4, 9, 2, 2, 1, '2022-09-26 10:49:25', '2023-07-03 04:57:48'),
(827, 87, 17, 1, 1, 1, '2022-09-28 10:17:17', '2023-07-03 04:57:48'),
(829, 4, 10, 2, 2, 1, '2022-09-30 04:17:47', '2023-07-03 04:57:48'),
(830, 32, 15, 1, 1, 1, '2022-09-30 07:29:53', '2023-07-03 04:57:48'),
(834, 90, 26, 3, 1, 1, '2022-09-30 13:58:05', '2023-07-03 04:57:48'),
(846, 98, 43, 2, 1, 1, '2022-10-06 13:15:10', '2023-07-03 04:57:48'),
(847, 32, 19, 1, 1, 1, '2022-10-07 09:09:27', '2023-07-03 04:57:48'),
(848, 100, 35, 5, 1, 1, '2022-10-07 10:17:51', '2023-07-03 04:57:48'),
(849, 100, 34, 5, 1, 1, '2022-10-07 10:21:19', '2023-07-03 04:57:48'),
(853, 100, 21, 1, 1, 1, '2022-10-12 10:57:58', '2023-07-03 04:57:48'),
(854, 0, 14, 4, 2, 1, '2022-10-14 18:23:19', '2023-07-03 04:57:48'),
(857, 118, 23, 1, 1, 1, '2022-10-15 04:47:38', '2023-07-03 04:57:48'),
(858, 115, 24, 1, 1, 1, '2022-10-15 09:32:57', '2023-07-03 04:57:48'),
(859, 115, 15, 1, 1, 1, '2022-10-15 09:33:04', '2023-07-03 04:57:48'),
(860, 32, 24, 1, 1, 1, '2022-10-15 09:41:03', '2023-07-03 04:57:48'),
(865, 32, 16, 1, 1, 1, '2022-10-15 09:49:06', '2023-07-03 04:57:48'),
(866, 32, 46, 5, 1, 1, '2022-10-15 09:53:48', '2023-07-03 04:57:48'),
(871, 123, 10, 4, 2, 0, '2022-11-09 12:36:29', '2023-07-03 04:57:48'),
(874, 123, 23, 1, 1, 0, '2022-11-10 03:40:40', '2023-07-03 04:57:48'),
(877, 141, 13, 1, 1, 1, '2022-11-10 11:32:50', '2023-07-03 04:57:48'),
(882, 123, 17, 1, 1, 1, '2022-11-11 03:23:24', '2023-07-03 04:57:48'),
(885, 156, 9, 1, 1, 1, '2022-11-11 13:42:53', '2023-07-03 04:57:48'),
(886, 163, 29, 5, 1, 1, '2022-11-12 15:30:20', '2023-07-03 04:57:48'),
(888, 152, 17, 1, 1, 1, '2022-11-14 12:44:57', '2023-07-03 04:57:48'),
(889, 152, 10, 4, 2, 1, '2022-11-14 12:47:22', '2023-07-03 04:57:48'),
(890, 152, 21, 1, 1, 1, '2022-11-14 13:17:29', '2023-07-03 04:57:48'),
(892, 182, 15, 1, 1, 1, '2022-11-15 02:18:33', '2023-07-03 04:57:48'),
(893, 186, 17, 1, 1, 1, '2022-11-15 21:01:17', '2023-07-03 04:57:48'),
(894, 181, 21, 1, 1, 1, '2022-11-18 12:17:55', '2023-07-03 04:57:48'),
(895, 200, 1, 1, 1, 1, '2022-11-20 10:34:46', '2023-07-03 04:57:48'),
(896, 122, 5, 4, 2, 1, '2023-01-25 14:57:28', '2023-07-03 04:57:48'),
(897, 122, 1, 1, 1, 1, '2023-01-25 15:44:52', '2023-07-03 04:57:48'),
(898, 122, 3, 1, 1, 1, '2023-01-25 15:52:25', '2023-07-03 04:57:48'),
(899, 122, 7, 1, 1, 1, '2023-01-25 17:35:41', '2023-07-03 04:57:48'),
(900, 123, 3, 4, 2, 1, '2023-02-02 19:14:14', '2023-07-03 04:57:48'),
(901, 123, 12, 4, 2, 0, '2023-02-03 17:43:39', '2023-07-03 04:57:48'),
(902, 123, 2, 1, 1, 0, '2023-02-04 14:24:18', '2023-07-03 04:57:48'),
(903, 118, 3, 1, 1, 1, '2023-02-06 21:54:31', '2023-07-03 04:57:48'),
(904, 118, 5, 4, 2, 0, '2023-02-08 21:07:36', '2023-07-03 04:57:48'),
(905, 212, 1, 1, 1, 0, '2023-02-10 10:53:51', '2023-07-03 04:57:48'),
(906, 212, 3, 1, 1, 0, '2023-02-10 12:37:15', '2023-07-03 04:57:48'),
(907, 212, 15, 1, 1, 0, '2023-02-10 12:52:43', '2023-07-03 04:57:48'),
(908, 123, 6, 4, 2, 0, '2023-02-11 11:31:04', '2023-07-03 04:57:48'),
(909, 212, 3, 4, 2, 1, '2023-02-11 18:22:38', '2023-07-03 04:57:48'),
(910, 213, 17, 4, 2, 1, '2023-02-11 19:07:01', '2023-07-03 04:57:48'),
(911, 123, 9, 4, 2, 1, '2023-02-14 09:00:46', '2023-07-03 04:57:48'),
(912, 123, 20, 1, 1, 0, '2023-02-14 11:26:59', '2023-07-03 04:57:48'),
(913, 118, 21, 1, 1, 1, '2023-02-14 21:52:02', '2023-07-03 04:57:48'),
(914, 122, 17, 1, 1, 1, '2023-02-15 15:57:14', '2023-07-03 04:57:48'),
(915, 123, 14, 1, 1, 1, '2023-02-22 19:42:40', '2023-07-03 04:57:48'),
(916, 217, 58, 1, 1, 1, '2023-03-01 09:32:03', '2023-07-03 04:57:48'),
(917, 217, 3, 4, 2, 1, '2023-03-01 09:32:08', '2023-07-03 04:57:48'),
(918, 217, 9, 4, 2, 1, '2023-03-01 09:32:12', '2023-07-03 04:57:48'),
(919, 217, 14, 4, 2, 1, '2023-03-01 09:32:16', '2023-07-03 04:57:48'),
(920, 217, 15, 4, 2, 1, '2023-03-01 09:32:20', '2023-07-03 04:57:48'),
(921, 217, 19, 1, 1, 1, '2023-03-01 09:32:26', '2023-07-03 04:57:48'),
(922, 217, 16, 4, 2, 1, '2023-03-01 09:32:42', '2023-07-03 04:57:48'),
(923, 217, 23, 1, 1, 1, '2023-03-01 09:56:03', '2023-07-03 04:57:48'),
(924, 221, 2, 1, 1, 1, '2023-03-04 11:01:08', '2023-07-03 04:57:48'),
(925, 221, 9, 4, 2, 1, '2023-03-04 11:14:33', '2023-07-03 04:57:48'),
(926, 221, 16, 4, 2, 1, '2023-03-04 15:09:43', '2023-07-03 04:57:48'),
(927, 221, 21, 1, 1, 0, '2023-03-04 17:13:42', '2023-07-03 04:57:48'),
(928, 216, 13, 4, 2, 1, '2023-03-06 16:55:24', '2023-07-03 04:57:48'),
(929, 212, 58, 1, 1, 1, '2023-03-10 19:02:44', '2023-07-03 04:57:48'),
(930, 212, 21, 1, 1, 1, '2023-03-10 19:12:03', '2023-07-03 04:57:48'),
(931, 217, 17, 1, 1, 0, '2023-03-10 19:18:39', '2023-07-03 04:57:48'),
(932, 122, 21, 1, 1, 1, '2023-03-16 14:55:42', '2023-07-03 04:57:48'),
(933, 122, 3, 4, 2, 1, '2023-03-23 16:08:31', '2023-07-03 04:57:48'),
(934, 122, 20, 1, 1, 1, '2023-03-25 16:20:34', '2023-07-03 04:57:48'),
(935, 571, 15, 1, 1, 1, '2023-03-25 23:26:04', '2023-07-03 04:57:48'),
(936, 582, 17, 4, 2, 1, '2023-03-26 23:46:23', '2023-07-03 04:57:48'),
(937, 582, 24, 1, 1, 0, '2023-03-27 00:13:31', '2023-07-03 04:57:48'),
(938, 582, 14, 4, 2, 1, '2023-03-27 00:32:49', '2023-07-03 04:57:48'),
(939, 589, 3, 4, 2, 1, '2023-03-27 10:32:46', '2023-07-03 04:57:48'),
(940, 290, 21, 1, 1, 1, '2023-03-28 17:30:53', '2023-07-03 04:57:48'),
(941, 290, 19, 1, 1, 1, '2023-03-28 17:31:02', '2023-07-03 04:57:48'),
(942, 604, 67, 1, 1, 1, '2023-03-29 19:46:53', '2023-07-03 04:57:48'),
(943, 606, 50, 5, 1, 1, '2023-03-29 23:57:55', '2023-07-03 04:57:48'),
(944, 612, 16, 4, 2, 0, '2023-03-30 12:45:11', '2023-07-03 04:57:48'),
(945, 123, 58, 1, 1, 1, '2023-03-30 14:48:37', '2023-07-03 04:57:48'),
(946, 605, 2, 1, 1, 1, '2023-03-31 13:03:43', '2023-07-03 04:57:48'),
(947, 628, 16, 4, 2, 1, '2023-04-01 11:58:37', '2023-07-03 04:57:48'),
(948, 628, 14, 4, 2, 1, '2023-04-01 12:18:31', '2023-07-03 04:57:48'),
(949, 605, 15, 1, 1, 1, '2023-04-01 17:17:22', '2023-07-03 04:57:48'),
(950, 605, 13, 1, 1, 1, '2023-04-01 17:17:31', '2023-07-03 04:57:48'),
(951, 605, 12, 4, 2, 1, '2023-04-01 17:17:34', '2023-07-03 04:57:48'),
(952, 633, 13, 4, 2, 1, '2023-04-02 01:22:29', '2023-07-03 04:57:48'),
(953, 621, 12, 4, 2, 0, '2023-04-02 10:10:17', '2023-07-03 04:57:48'),
(954, 642, 37, 1, 1, 1, '2023-04-03 12:27:54', '2023-07-03 04:57:48'),
(955, 628, 19, 1, 1, 1, '2023-04-04 23:05:07', '2023-07-03 04:57:48'),
(956, 628, 23, 1, 1, 1, '2023-04-04 23:05:22', '2023-07-03 04:57:48'),
(957, 649, 66, 1, 1, 1, '2023-04-04 23:37:09', '2023-07-03 04:57:48'),
(958, 654, 67, 1, 1, 1, '2023-04-06 18:06:21', '2023-07-03 04:57:48'),
(959, 663, 48, 5, 1, 1, '2023-04-08 06:31:50', '2023-07-03 04:57:48'),
(960, 668, 19, 1, 1, 1, '2023-04-08 17:35:51', '2023-07-03 04:57:48'),
(961, 443, 67, 1, 1, 1, '2023-04-10 23:03:31', '2023-07-03 04:57:48'),
(962, 688, 9, 4, 2, 1, '2023-04-12 07:00:09', '2023-07-03 04:57:48'),
(963, 615, 44, 2, 1, 0, '2023-04-13 03:12:40', '2023-07-03 04:57:48'),
(964, 499, 22, 1, 1, 1, '2023-04-16 06:36:12', '2023-07-03 04:57:48'),
(965, 499, 67, 1, 1, 1, '2023-04-16 07:04:49', '2023-07-03 04:57:48'),
(966, 707, 23, 1, 1, 1, '2023-04-16 10:04:59', '2023-07-03 04:57:48'),
(967, 719, 48, 5, 1, 1, '2023-04-18 06:15:29', '2023-07-03 04:57:48'),
(968, 719, 24, 1, 1, 1, '2023-04-18 06:16:11', '2023-07-03 04:57:48'),
(969, 728, 5, 4, 2, 1, '2023-04-19 09:56:58', '2023-07-03 04:57:48'),
(970, 730, 14, 1, 1, 1, '2023-04-20 00:42:10', '2023-07-03 04:57:48'),
(971, 738, 22, 1, 1, 1, '2023-04-20 20:20:47', '2023-07-03 04:57:48'),
(972, 123, 15, 4, 2, 1, '2023-04-21 21:04:58', '2023-07-03 04:57:48'),
(973, 123, 16, 4, 2, 1, '2023-04-21 21:05:00', '2023-07-03 04:57:48'),
(974, 123, 19, 1, 1, 1, '2023-04-21 21:05:09', '2023-07-03 04:57:48'),
(975, 742, 67, 1, 1, 1, '2023-04-23 13:51:06', '2023-07-03 04:57:48'),
(976, 721, 13, 1, 1, 0, '2023-04-24 10:25:31', '2023-07-03 04:57:48'),
(977, 747, 16, 1, 1, 1, '2023-04-24 11:15:30', '2023-07-03 04:57:48'),
(978, 123, 36, 5, 1, 0, '2023-04-25 17:08:20', '2023-07-03 04:57:48'),
(979, 429, 17, 4, 2, 1, '2023-04-26 07:22:18', '2023-07-03 04:57:48'),
(980, 765, 17, 1, 1, 1, '2023-04-27 19:45:08', '2023-07-03 04:57:48'),
(981, 783, 11, 4, 2, 0, '2023-04-30 12:36:25', '2023-07-03 04:57:48'),
(982, 782, 23, 1, 1, 1, '2023-04-30 12:42:54', '2023-07-03 04:57:48'),
(983, 782, 21, 1, 1, 1, '2023-04-30 13:30:58', '2023-07-03 04:57:48'),
(984, 794, 51, 7, 1, 1, '2023-05-02 14:43:03', '2023-07-03 04:57:48'),
(985, 797, 9, 4, 2, 1, '2023-05-03 17:17:07', '2023-07-03 04:57:48'),
(986, 802, 16, 1, 1, 1, '2023-05-04 22:04:40', '2023-07-03 04:57:48'),
(987, 805, 14, 4, 2, 1, '2023-05-05 14:08:46', '2023-07-03 04:57:48'),
(988, 754, 20, 1, 1, 1, '2023-05-05 16:08:51', '2023-07-03 04:57:48'),
(989, 754, 3, 4, 2, 1, '2023-05-05 16:09:00', '2023-07-03 04:57:48'),
(990, 754, 40, 2, 1, 1, '2023-05-05 16:11:25', '2023-07-03 04:57:48'),
(991, 814, 15, 4, 2, 1, '2023-05-08 21:16:01', '2023-07-03 04:57:48'),
(992, 819, 12, 1, 1, 1, '2023-05-09 21:01:31', '2023-07-03 04:57:48'),
(993, 833, 54, 7, 1, 1, '2023-05-11 22:44:23', '2023-07-03 04:57:48'),
(994, 833, 49, 5, 1, 1, '2023-05-11 23:11:16', '2023-07-03 04:57:48'),
(995, 393, 47, 5, 1, 0, '2023-05-15 18:57:49', '2023-07-03 04:57:48'),
(996, 393, 3, 4, 2, 1, '2023-05-15 19:01:59', '2023-07-03 04:57:48'),
(997, 393, 42, 2, 1, 1, '2023-05-15 19:02:14', '2023-07-03 04:57:48'),
(998, 662, 20, 1, 1, 0, '2023-05-16 16:20:10', '2023-07-03 04:57:48'),
(999, 662, 15, 4, 2, 1, '2023-05-16 20:55:57', '2023-07-03 04:57:48'),
(1000, 852, 16, 1, 1, 1, '2023-05-17 11:27:41', '2023-07-03 04:57:48'),
(1001, 869, 14, 4, 2, 1, '2023-05-20 11:04:03', '2023-07-03 04:57:48'),
(1002, 662, 22, 1, 1, 1, '2023-05-23 01:58:18', '2023-07-03 04:57:48'),
(1003, 752, 33, 3, 1, 1, '2023-05-23 13:49:28', '2023-07-03 04:57:48'),
(1004, 878, 22, 1, 1, 1, '2023-05-23 17:02:34', '2023-07-03 04:57:48'),
(1005, 885, 46, 5, 1, 1, '2023-05-25 15:39:19', '2023-07-03 04:57:48'),
(1006, 245, 21, 1, 1, 1, '2023-05-30 14:48:48', '2023-07-03 04:57:48'),
(1007, 429, 11, 4, 2, 1, '2023-05-30 17:02:12', '2023-07-03 04:57:48'),
(1008, 898, 3, 4, 2, 0, '2023-05-31 23:00:45', '2023-07-03 04:57:48'),
(1009, 898, 67, 1, 1, 1, '2023-05-31 23:11:43', '2023-07-03 04:57:48'),
(1010, 898, 17, 1, 1, 0, '2023-06-01 12:29:03', '2023-07-03 04:57:48'),
(1011, 429, 19, 1, 1, 1, '2023-06-01 14:23:15', '2023-07-03 04:57:48'),
(1012, 429, 2, 1, 1, 1, '2023-06-04 20:57:07', '2023-07-03 04:57:48'),
(1013, 123, 67, 1, 1, 1, '2023-06-05 13:52:35', '2023-07-03 04:57:48'),
(1014, 907, 67, 1, 1, 1, '2023-06-06 08:18:30', '2023-07-03 04:57:48'),
(1015, 910, 44, 2, 1, 1, '2023-06-06 18:48:39', '2023-07-03 04:57:48'),
(1016, 544, 17, 4, 2, 1, '2023-06-08 11:01:22', '2023-07-03 04:57:48'),
(1017, 920, 14, 4, 2, 1, '2023-06-09 14:38:59', '2023-07-03 04:57:48'),
(1018, 932, 54, 7, 1, 1, '2023-06-12 08:34:08', '2023-07-03 04:57:48'),
(1019, 936, 12, 1, 1, 1, '2023-06-13 13:41:40', '2023-07-03 04:57:48'),
(1020, 942, 1, 1, 1, 1, '2023-06-15 13:14:05', '2023-07-03 04:57:48'),
(1021, 925, 67, 1, 1, 0, '2023-06-15 16:21:29', '2023-07-03 04:57:48'),
(1022, 925, 66, 1, 1, 1, '2023-06-15 16:25:52', '2023-07-03 04:57:48'),
(1023, 925, 22, 1, 1, 1, '2023-06-16 10:48:36', '2023-07-03 04:57:48'),
(1024, 946, 16, 1, 1, 0, '2023-06-18 08:53:13', '2023-07-03 04:57:48'),
(1025, 962, 15, 1, 1, 1, '2023-06-19 19:24:07', '2023-07-03 04:57:48'),
(1026, 968, 10, 4, 2, 1, '2023-06-21 02:12:30', '2023-07-03 04:57:48'),
(1027, 970, 12, 1, 1, 1, '2023-06-21 05:37:47', '2023-07-03 04:57:48'),
(1028, 970, 66, 1, 1, 1, '2023-06-21 05:42:40', '2023-07-03 04:57:48'),
(1029, 970, 15, 1, 1, 1, '2023-06-21 05:47:16', '2023-07-03 04:57:48'),
(1030, 972, 21, 1, 1, 1, '2023-06-21 09:08:35', '2023-07-03 04:57:48'),
(1031, 970, 10, 2, 1, 1, '2023-06-24 06:42:29', '2023-07-03 04:57:48'),
(1032, 970, 25, 2, 1, 0, '2023-06-24 06:43:42', '2023-07-03 04:57:48'),
(1033, 992, 69, 1, 1, 1, '2023-06-27 16:50:46', '2023-07-03 04:57:48'),
(1034, 994, 58, 1, 1, 1, '2023-06-28 16:47:06', '2023-07-03 04:57:48'),
(1035, 995, 13, 4, 2, 1, '2023-06-29 19:39:09', '2023-07-03 04:57:48'),
(1037, 0, 10, 4, 2, 1, '2023-06-30 03:42:45', '2023-07-03 04:57:48'),
(1038, 997, 43, 2, 1, 1, '2023-06-30 23:46:40', '2023-07-03 04:57:48'),
(1039, 970, 15, 4, 2, 1, '2023-07-01 21:38:51', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `personal_info` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`id`, `name`, `image`, `type`, `personal_info`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akshay kumar', '1676347620.jpg', 'Actor', 'Rajiv Hari \"Akshay Kumar\" Om Bhatia was born on September 09, 1967, in Amritsar, Punjab to Aruna Bhatia and Hari Om Bhatia. He is an Indian actor, film producer, former model, and television personality. He went to Bangkok to learn how to use a sword and also worked as a waiter in a restaurant.', 2, '2022-04-18 06:56:26', '2023-02-14 09:37:00'),
(2, 'Ashutosh Gowariker', '1675415119.jpg', 'Actor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, '2022-05-19 16:48:50', '2023-02-03 14:37:46'),
(3, 'Michael Jackson', '1675833468.jpeg', 'Dancers', 'Michael Joseph Jackson was an American singer, songwriter, dancer, and philanthropist. Dubbed the \"King of Pop\", he is regarded as one of the most significant cultural figures of the 20th century.', 2, '2022-08-03 16:26:49', '2023-02-08 10:47:48'),
(4, 'Aishwarya Sharma', '1659764775.jpeg', 'Actress', 'Born on 8 December 1992, Aishwarya Sharma’s age is 28 years as of 2021. She was born and brought up in a middle-class Hindu family from Ujjain, Madhya Pradesh, India.\r\nShe did her early schooling at SVM School, Rishi Nagar. After that, she enrolled herself at the Indira Kala Sangit Vishwavidyalaya, Chhattisgarh from where she completed her graduation in Electronics and Communication Engineering. She also completed Visharad (6 years course) in Kathak from Khairagarh University, Chhattisgarh.\r\n\r\nShe was fascinated by acting and modeling since her childhood and has always wanted to be a part of the entertainment industry. She went to Mumbai after the completion of her graduation and within a short period, she received her first breakthrough in the industry as an actress in a supporting role.', 2, '2022-08-06 09:16:15', '2022-08-06 09:16:15'),
(5, 'Ananya Panday', '1660049639.jpeg', 'Actress', 'Ananya Panday is an Indian actress who primarily works in Hindi films. The daughter of actor Chunky Panday, she began her acting career in 2019 with roles in the teen film Student of the Year 2 and the comedy Pati Patni Aur Woh. These performances earned her the Filmfare Award for Best Female Debut.', 2, '2022-08-09 16:23:59', '2022-08-09 16:23:59'),
(6, 'Ajay Devgn', '1664453700.jpeg', 'Actor', 'Vishal Veeru Devgan, known professionally as Ajay Devgn, is an Indian actor, film director and producer who works in Hindi cinema. Devgn has appeared in over a hundred films and has won numerous accolades, including four National Film Awards and four Filmfare Awards', 2, '2022-08-09 16:24:46', '2022-09-29 15:45:00'),
(7, 'Dilip Joshi', '1660113151.jpeg', 'Actor', 'Dilip Joshi is an Indian film, television actor and a firm devotee of BAPS Swaminarayan Sanstha. He has appeared in several Indian movies and television series.', 2, '2022-08-10 10:02:31', '2022-08-10 10:02:31'),
(8, 'Popatlal Shyam Pathak', '1660113274.jpg', 'Actor', 'As Popatlal Shyam Pathak is still unmarried but in real life, he is married since 1st June 2003. He met his wife in NSD itself and then fall in love. Shyam Pathak has 2 sons and 1 daughter. Unlike other Tarak Mehta Ka Ooltah Chashmah Actors Popatlal\'s character was introduced after 6 months after the show starts.', 2, '2022-08-10 10:04:34', '2022-08-10 10:04:34'),
(9, 'Amitabh Bachchan', '1660114035.jpeg', 'Actor', 'Amitabh Bachchan is an Indian actor, film producer, television host, occasional playback singer and former politician known for his work in Hindi cinema. He is regarded as one of the most influential actors in the history of Indian cinema', 2, '2022-08-10 10:17:15', '2022-08-10 10:17:15'),
(10, 'Bear Grylls', '1660114528.jpeg', 'Other', 'Edward Michael \"Bear\" Grylls OBE is a British adventurer, writer, television presenter and businessman. He first drew attention after embarking on a number of adventures, and then became widely known for his television series Man vs. Wild.', 2, '2022-08-10 10:25:28', '2022-08-10 10:25:28'),
(11, 'Álvaro Morte', '1660114971.jpeg', 'Actor', 'Álvaro Antonio García Pérez, known professionally as Álvaro Morte, is a Spanish actor. He gained worldwide recognition by playing the role of \'The Professor\' in the television series Money Heist', 2, '2022-08-10 10:32:51', '2022-08-10 10:32:51'),
(12, 'Pedro Alonso', '1660115018.jpg', 'Actor', 'Pedro González Alonso, known as Pedro Alonso, is a Spanish actor, writer, and artist. He is best known for his role of Andrés \"Berlin\" de Fonollosa in the Spanish heist series Money Heist and for the role of Diego Murquía in the historical drama series Grand Hotel.', 2, '2022-08-10 10:33:38', '2022-08-10 10:33:38'),
(13, 'Darko Perić', '1660115053.jpeg', 'Actor', 'Darko Perić is a Serbian actor. He is best known for playing Helsinki in the Spanish crime thriller series La Casa de Papel.', 2, '2022-08-10 10:34:13', '2022-08-10 10:34:13'),
(14, 'Shailesh Lodha', '1660115265.jpeg', 'Other', 'Shailesh Lodha is an Indian poet, actor, comedian and writer. He is best known for portraying Taarak Mehta in the Hindi sitcom Taarak Mehta Ka Ooltah Chashmah.', 2, '2022-08-10 10:37:45', '2022-08-10 10:37:45'),
(15, 'Disha Vakani', '1660115342.jpeg', 'Actress', 'Disha Vakani is an Indian film and television actress. She is known for playing the role of Daya Jethalal Gada on the sitcom Taarak Mehta Ka Ooltah Chashmah.', 2, '2022-08-10 10:39:02', '2022-08-10 10:39:02'),
(16, 'R. Madhavan', '1660115459.jpeg', 'Director', 'Ranganathan Madhavan is an Indian actor, screenwriter, director, and producer who predominantly appears in Tamil and Hindi films. Madhavan has won four Filmfare Awards South and three Tamil Nadu State Film Awards. Madhavan gained recognition in Tamil cinema through Mani Ratnam\'s successful romance film Alaipayuthey.', 2, '2022-08-10 10:40:59', '2022-08-10 10:40:59'),
(17, 'Vijay Deverakonda', '1660115752.jpeg', 'Actor', 'Deverakonda Vijay Sai, known by his screen name Vijay Deverakonda, is an Indian actor and film producer who works mainly in Telugu cinema. He is the recipient of a Filmfare Award and a SIIMA Award. Deverakonda made his Telugu debut with Nuvvila and received praise for the films Yevade Subramanyam and Pelli Choopulu.', 2, '2022-08-10 10:45:52', '2022-08-10 10:45:52'),
(18, 'Rashmika Mandanna', '1661774870.jpeg', 'Actress', 'Rashmika Mandanna is an Indian actress who works predominantly in Telugu and Kannada language films, in addition to a few Tamil and Hindi films. She is a recipient of a Filmfare Award South and a SIIMA Award.', 2, '2022-08-29 15:37:50', '2022-08-29 15:37:50'),
(19, 'Vidyut Jammwal', '1661774916.jpeg', 'Actor', 'Vidyut Dev Singh Jammwal is an Indian actor, martial artist and film producer who predominantly works in Hindi films. He is also a practitioner of Kalaripayattu. He is best known for his roles in Commando film series, and is recipient of several awards including one Filmfare Award.', 2, '2022-08-29 15:38:36', '2022-08-29 15:38:36'),
(20, 'Janhvi Kapoor', '1661774975.jpeg', 'Actress', 'Janhvi Kapoor is an Indian actress who works in Hindi films. Born to Sridevi and Boney Kapoor, she made her acting debut in 2018 with the romantic drama Dhadak, which was a commercial success.', 2, '2022-08-29 15:39:35', '2022-08-29 15:39:35'),
(21, 'Yash', '1661775076.jpeg', 'Actor', 'Naveen Kumar Gowda, better known by his stage name Yash, is an Indian actor who works in Kannada films. He is the recipient of three Filmfare Awards South. Yash began his career with appearances in several television series in the 2000s. He made his film debut in 2007 with Jambada Hudugi.', 2, '2022-08-29 15:41:16', '2022-08-29 15:41:16'),
(22, 'Vin Diesel', '1661775121.jpg', 'Actor', 'Mark Sinclair, known professionally as Vin Diesel, is an American actor and producer. One of the world\'s highest-grossing actors, he is best known for playing Dominic Toretto in the Fast & Furious franchise.', 2, '2022-08-29 15:42:01', '2022-08-29 15:42:01'),
(23, 'Disha Patani', '1661775183.jpeg', 'Actress', 'Disha Patani is an Indian actress who works primarily in Hindi films. She began her acting career with the Telugu film Loafer opposite Varun Tej and gained recognition for her role in the sports biopic M.S. Dhoni: The Untold Story', 2, '2022-08-29 15:43:03', '2022-08-29 15:43:03'),
(24, 'Raj Anadkat', '1661775260.jpeg', 'Actor', 'Raj Anadkat was born in Mumbai, Maharashtra. He belongs to a middle-class Hindu family. He started his career with the Life Ok\'s show \'Mari Maa\' in 2011. In this show, he played a small role of Jhilmil\'s brother. Later he was seen many television serials like Ek Rishta Saajhedari Ka, Mahabharat, Ek Mutthi Aasmaan etc.', 2, '2022-08-29 15:44:20', '2022-08-29 15:44:20'),
(25, 'Munmun Dutta', '1661775525.jpg', 'Actress', 'Munmun Dutta is an Indian television actress and model. She is best known for her portrayal of Babita Iyer in the popular Hindi sitcom Taarak Mehta Ka Ooltah Chashmah.', 2, '2022-08-29 15:48:45', '2022-08-29 15:48:45'),
(26, 'Tanuj Mahashabde', '1661775595.jpeg', 'Actor', 'Actor. Tanuj Mahashabde is an actor, known for Taarak Mehta Ka Ooltah Chashmah (2008) and C.I.D. (1998).', 2, '2022-08-29 15:49:55', '2022-08-29 15:49:55'),
(27, 'John Abraham', '1661775969.jpeg', 'Actor', 'John Abraham is an Indian actor, film producer, writer and former model working in Hindi films. He has won a National Film Award including five nominations for Filmfare. After modelling for advertisements and companies, Abraham debuted in films with the romantic thriller Jism.', 2, '2022-08-29 15:56:09', '2022-08-29 15:56:09'),
(28, 'Nora Fatehi', '1661776286.jpg', 'Actress', 'Nora Fatehi is a Moroccan Canadian actress, model, dancer, singer, and producer who is known for her work in the Indian film industry. She has appeared in Hindi, Telugu, Malayalam and Tamil language films. She made her film debut in the Bollywood film Roar: Tigers of the Sundarbans.', 2, '2022-08-29 16:01:26', '2022-08-29 16:01:26'),
(29, 'Ranveer Singh', '1661777306.jpg', 'Actor', 'Ranveer Singh Bhavnani is an Indian actor who works in Hindi films. The recipient of several awards, including four Filmfare Awards, he is among the highest-paid Indian actors and has been featured in Forbes India\'s Celebrity 100 list since 2012.', 2, '2022-08-29 16:18:26', '2022-08-29 16:18:26'),
(30, 'Dwayne Johnson', '1661779621.jpeg', 'Actor', 'Dwayne Douglas Johnson, also known by his ring name The Rock, is an American actor, producer, businessman, and former professional wrestler.', 2, '2022-08-29 16:57:01', '2022-08-29 16:57:01'),
(31, 'Tom Hiddleston', '1662784580.jpeg', 'Actor', 'Thomas William Hiddleston is an English actor. He gained international fame portraying Loki in the Marvel Cinematic Universe, starting with Thor in 2011 and most recently in the Disney+ series Loki in 2021. He started his film career in the Joanna Hogg films Unrelated and Archipelago.', 2, '2022-09-10 08:06:20', '2022-09-10 08:06:20'),
(32, 'Kumud Mishra', '1663478102.jpeg', 'Actor', 'Kumud Mishra is an Indian actor in Hindi cinema. He mainly plays supporting roles in movies, television series, and web series but has also played lead roles in some of them.\r\n\r\nHe played Eknath, a trade union leader in the 1995 Doordarshan drama Swabhimaan. In 2011, he progressed to film acting with Rishi Kapoor and Ranbir Kapoor\'s films Patiala House and Rockstar.\r\n\r\nMishra has played supporting roles in the films Filmistaan, Revolver Rani, Jolly LLB 2, Raanjhanaa, Badlapur, Bangistan, Airlift, M. S. Dhoni: The Untold Story, Sultan, Tiger Zinda Hai, Rukh, Aiyaary, Mulk, De De Pyaar De, Article 15, Bharat, Jawaani Jaaneman, Thappad, Sooryavanshi and Tadap. In 2020, he starred in the titular role in Sony LIV original Ram Singh Charlie that follows the life of a circus artist and his subsequent struggle after the circus is shut. Mishra is an alumnus of Rashtriya Military School Belgaum, Karnataka and graduated from National School Of Drama, Delhi.', 2, '2022-09-18 08:45:02', '2022-09-18 08:45:02'),
(33, 'Ayushmann Khurrana', '1663478177.jpeg', 'Actor', 'Ayushmann Khurrana is an Indian actor, singer, and television host who works in Hindi films. Known for his portrayals of ordinary men often battling social norms, he is the recipient of several awards, including a National Film Award and four Filmfare Awards.', 2, '2022-09-18 08:46:17', '2022-09-18 08:46:17'),
(34, 'Hani Yadav', '1663478215.jpeg', 'Actor', 'Instagram\r\nTwitter\r\nStage32\r\nYouTube\r\nLinkedIn\r\nCompany\r\nXylcronix, PVT.LTD\r\nEmail\r\nKanpur, Uttarpradesh, India\r\nBangalore\r\nKanpur, Uttarpradesh 209101\r\nIndia\r\nHani Yadav is an Indian Artist, Actor, Influencer, Entrepreneur, Innovator, Businessman known for his multiple talent & Extraordinary ideas and vision, he is founder and CEO Of Xylcronix Industries, fond of modern technologies and explore more creative things in this world for humanity\r\nHani Yadav was born in Kanpur, Uttarpradesh, india. He was born in middle class family his father Narayan Singh is indian entrepreneur\r\n\r\nand businessman and her mother Sudha Devi is housewife. He has one younger brother Nikhil Yadav and no sisters. He did his schooling from Kendriya Vidyalaya J.L.A No.2, Bareilly\r\nHe stated his own journey from internet, after some time he entered in music industry and he becomes notable when his 1 song SARVNASH virals over the internet or music platforms such as Spotify, Hungama, Ganna and many other international platforms,when he became a successful artist or singers then he starts his another journey, he decides to become an entrepreneur, finally he successfully.', 2, '2022-09-18 08:46:55', '2022-09-18 08:46:55'),
(35, 'CarolAndrea Kevichüsa', '1663478352.jpeg', 'Actress', 'CarolAndrea Kevichüsa (born 18 February 2001) is an Indian model and actress from Nagaland. She made her acting debut with Anek in 2022 alongside Ayushmann Khurrana.\r\n\r\nCarolAndrea Kevichüsa was born on 18 February 2001 in Kohima, Nagaland. Her father is Angami Naga from Khonoma, and also has Mizo ancestry. Her mother is Ao Naga. Kevichüsa did her schooling from Little Flower Higher Secondary School in Kohima.', 2, '2022-09-18 08:49:12', '2022-09-18 08:49:12'),
(36, 'J. D. Chakravarthy', '1663478406.jpeg', 'Actor', 'Nagulapati Srinivasa Chakravarthy, known professionally as J. D. Chakravarthy, is an Indian actor, screenwriter, director, producer, composer, and singer known for his work primarily with Telugu cinema in addition to Hindi, Tamil, Malayalam, and Kannada films.\r\n\r\nChakravarthy has starred in more than seventy feature films in a variety of roles predominantly in Telugu, Hindi and a few Tamil, and Malayalam films. He is best known for his performances in box office hits like Neti Siddhartha (1990), Money (1993), Money Money (1995), One by Two (1993), Gulabi (1996), for which he received the state Nandi Special Jury Award, Mrugam (1996), Bombay Priyudu (1996), Anaganaga Oka Roju (1997), Egire Paavurama (1997), Nenu Premista (1997), Wife of V. Varaprasad (1998), Premaku Velayara (1999), Pape Naa Pranam (2000), Premaku Swagatam (2002), Madhyanam Hathya (2004), Dubai Seenu (2007), Homam (2008), Oppanda (2022) and Anek (2022).', 2, '2022-09-18 08:50:06', '2022-09-18 08:50:06'),
(37, 'Deeplina Deka', '1663478522.jpeg', 'Actress', 'Deeplina Deka (দীপলিনা ডেকা) also known as Pori is a multi-talented Indian Assamese singer and actor from Guwahati, Assam. Deeplina makes her debut with the Assamese box office hit movie, “Mission China” directed by Zubeen Garg. Electrical Engineer by education Deeplina is a famous singer in Assam by profession. She trained as a Kathak Dancer and held Vishard Degree in classical music. Her recent song ‘Sui Diayana‘ from “Deeplina Deka Love Series” is a hit by Strom and becoming more famous. Deeplina Deka was born on 7 February 1992 and her age is 29 years as of 2021.', 2, '2022-09-18 08:52:02', '2022-09-18 08:52:02'),
(38, 'Manoj Pahwa', '1663478576.jpeg', 'Actor', 'Manoj Pahwa (born 8 December 1963) is an Indian film and television actor who is noted for his role as Bhatia in the comedy series Office Office (2001). He has acted in over 70 films as a character actor, including 7½ Phere (2005), Being Cyrus (2005), Singh Is Kinng (2008), Dabangg 2 (2012), Jolly LLB (2013), Dil Dhadakne Do (2015), Mulk (2018), Article 15.\r\n\r\nPahwa was raised in a Punjabi family in Delhi. His father migrated from Punjab,Pakistan, after Partition. He was educated at the National Public School in Daryaganj, New Delhi.[citation needed] In an interview,Pahwa stated that he lived in East Delhi Lakshmi Nagar after his father built house for them. His father had automobile batteries business and his father wanted him to join family business. Pahwa shifted to Mumbai in his late twenties.', 2, '2022-09-18 08:52:56', '2022-09-18 08:52:56'),
(39, 'Anubhav Sinha', '1663479618.jpg', 'Director', 'Anubhav Sinha (born 22 June 1965) is an Indian film director, producer and writer who works in Hindi films. He is known for his work in Tum Bin (2001), Ra.One (2011), Mulk (2018), Article 15 (2019) and Thappad (2020), Anek (2022).\r\n\r\nSinha was born in Allahabad, India to Prem Govind Sinha and Sushila Sinha. He went to school in Kalagarh, Garhwal, Government Inter College, Allahabad and Queen\'s College, Varanasi. Sinha completed his graduation in Mechanical Engineering from The Aligarh Muslim University in 1988.[2][citation needed]\r\n\r\nHis wife Ratnaa Sinha is also a director who debuted with the 2017 film Shaadi Mein Zaroor Aana starring Rajkummar Rao and Kriti Kharbanda.[citation needed] and His Brother Anupam sinha is also a director who is known for his film Shukriya starring Aftab Shivdasani and Shriya Saran\r\n\r\nSinha worked for two years in New Delhi as a theatre artist before moving to Mumbai on 4 December 1990. He worked as an assistant director to Pankaj Parashar until 1994 before branching out as an independent director for television for Zee TV. He was noticed for his work on Shikast, the flagship show of the TV network in Mumbai. This was followed by the TV show Sea Hawks for UTV. Sea Hawks was the number one show for 35 weeks across all networks. 72 episodes later, he turned to directing music videos.[citation needed]\r\n\r\nIn 2000, he left working on music videos to start his first feature film Tum Bin. It starred Priyanshu Chatterjee, Sandali Sinha, Himanshu Malik and Raqesh Vashisth. It went on to become a major box-office success and has gained a cult status over the years.\r\n\r\nSinha\'s second feature Aapko Pehle Bhi Kahin Dekha Hai starred Priyanshu Chatterjee and Sakshi Shivanand. His third film, the multi-starrer Dus, was the eighth highest grossing film of the year 2005. This was followed by Tathastu (2006) and Cash (2007).\r\n\r\nBefore directing and producing Tum Bin II and Mulk, Sinha directed Shah Rukh Khan and Kareena Kapoor starrer superhero film, Ra.One for which he wrote the script as well along with Kanika Dhillon.\r\n\r\nIn 2019, Sinha produced and directed Article 15 under his production house Benaras Media Works with Ayushmann Khurrana in the lead. The film is based on Article 15 of the Indian Constitution, which is about prohibition of discrimination on grounds of religion, race, caste, sex or place of birth. The film generally received positive reviews from critics, and was a commercial success.\r\n\r\nIn 2020, Sinha helmed Thappad starring Taapsee Pannu, which released on 28 February 2020, and received highly positive reviews from critics, but was an average success at the box-office.\r\n\r\nSinha is also the founder and owner of Benaras Media Works, the production company which he established in 2012 to produce his films and television projects.', 2, '2022-09-18 09:10:18', '2022-09-18 09:10:18'),
(40, 'Arjun Kapoor', '1664167193.jpeg', 'Actor', 'Arjun Kapoor is an Indian actor working in Hindi films. Born to the Surinder Kapoor family, he is the son of film producer Boney Kapoor and Mona Shourie.', 2, '2022-09-26 08:09:53', '2022-09-26 08:09:53'),
(41, 'Disha Patani', '1664167565.jpeg', 'Actress', 'Disha Patani is an Indian actress who is known for her work in Hindi films. She began her acting career with the Telugu film Loafer. She gained recognition for her role in her debut Hindi sports biopic film M.S.', 2, '2022-09-26 08:10:48', '2022-09-26 08:16:05'),
(42, 'Tara Sutaria', '1664167277.jpeg', 'Actress', 'Tara Sutaria is an Indian actress who works in Hindi films. She began her career as a singer in Disney India\'s Big Bada Boom and transitioned to acting with the channel\'s sitcoms The Suite Life of Karan & Kabir and Oye Jassie.', 2, '2022-09-26 08:11:17', '2022-09-26 08:11:17'),
(43, 'John Abraham', '1664167312.jpeg', 'Actor', 'John Abraham is an Indian actor, film producer and former model working in Hindi films. He has won a National Film Award and received five Filmfare nominations. After modelling for advertisements and companies, Abraham debuted in films with Jism and had his breakthrough performance with Dhoom.', 2, '2022-09-26 08:11:52', '2022-09-26 08:11:52'),
(44, 'Shraddha Kapoor', '1664167341.jpeg', 'Actress', 'Shraddha Kapoor is an Indian actress who works in Hindi-language films. She features in listings of the most popular and highest-paid actresses in the country. She has been featured in Forbes India\'s Celebrity 100 list since 2014 and was featured by Forbes Asia in their 30 Under 30 list of 2016.', 2, '2022-09-26 08:12:21', '2022-09-26 08:12:21'),
(45, 'Mohit Suri', '1664167545.jpeg', 'Director', 'Mohit Suri is an Indian film director. Born into the Bhatt family, he is well known for directing the films Murder 2, the musical romance Aashiqui 2 and the romantic thrillers Awarapan, Ek Villain and Malang. He has been married to Udita Goswami since 2013.', 2, '2022-09-26 08:15:45', '2022-09-26 08:15:45'),
(46, 'Mithun Chakraborty', '1675416494.jpeg', 'Actor', 'Mithun Chakraborty is an Indian actor, producer and politician who predominantly worked in Hindi and Bengali language films. He is a former Rajya Sabha Member of Parliament. He is the recipient of two Filmfare Awards and three National Film Awards.', 2, '2022-09-26 13:40:51', '2023-02-03 14:58:14'),
(47, 'Chinmay Mandlekar', '1675416511.jpeg', 'Actor', 'Chinmay Mandlekar is an Indian actor, writer and stage director, mostly active in the Marathi entertainment industry. He is known for his work in Zenda, Morya, Farzand, Fatteshikast, The Kashmir Files and Pawankhind. He has also completed many episodes of a crime series as SI Rajesh Jadhav.', 2, '2022-09-26 13:43:38', '2023-02-03 14:58:31'),
(48, 'Bhasha Sumbli', '1675416530.jpeg', 'Actress', 'Bhasha Sumbli, also spelled Bhasha Sumbali, is an Indian actress. She is best known for her pivotal role in the Hindi film The Kashmir Files.', 2, '2022-09-26 13:44:06', '2023-02-03 14:58:50'),
(49, 'Pallavi Joshi', '1675416544.jpeg', 'Actress', 'Pallavi Joshi is an Indian actress, writer, and film producer who works primarily in Hindi films and television. In a career spanning across films and television, Joshi is the recipient of such accolades as two National Film Awards, and a nomination for the Filmfare Awards.', 2, '2022-09-26 13:44:33', '2023-02-03 14:59:04'),
(50, 'Anupam Kher', '1675416562.jpeg', 'Actor', 'Anupam Kher is an Indian actor and the former Chairman of Film and Television Institute of India. He has appeared in over 500 films, predominantly in Hindi films, and many plays. He is a recipient of two National Film Awards and eight Filmfare Awards.', 2, '2022-09-26 13:45:11', '2023-02-03 14:59:22'),
(51, 'Darshan Kumar', '1675416591.jpeg', 'Actor', 'Darshan Gandas, known by his stage name Darshan Kumar, is an Indian actor who appears primarily in Hindi films. He made his debut with the film Mary Kom, opposite Priyanka Chopra, as a male lead.', 2, '2022-09-26 13:45:37', '2023-02-03 14:59:51'),
(52, 'Vivek Agnihotri', '1675416606.jpeg', 'Director', 'Vivek Ranjan Agnihotri is an Indian film director, screenwriter and author who works in Hindi cinema. As of 2022, he is a member of the board of India\'s Central Board of Film Certification and a cultural representative of Indian Cinema at the Indian Council for Cultural Relations.', 2, '2022-09-26 13:46:10', '2023-02-03 15:00:06'),
(53, 'Ranbir Kapoor', '1664188620.jpeg', 'Actor', 'Ranbir Kapoor is an Indian actor known for his work in Hindi-language films. He is one of the highest-paid actors of Hindi cinema and has featured in Forbes India\'s Celebrity 100 list since 2012. Kapoor is the recipient of several awards, including six Filmfare Awards.', 2, '2022-09-26 14:00:31', '2022-09-26 14:07:00'),
(54, 'Sanjay Dutt', '1664188700.jpeg', 'Actor', 'Sanjay Balraj Dutt (born 29 July 1959) is an Indian actor who primarily works in Hindi cinema. In a career spanning over four decades, Dutt has won several accolades and acted in over 200 films, ranging from romance to comedy genres, though usually typecast in action genres, thus proving himself one of the most popular Hindi film actors of the later 1980s to 2020s.\r\n\r\nPart of the Dutt family, he is the son of actors Sunil Dutt and Nargis. Dutt made his acting debut with Rocky (1981). A career downturn followed, until the crime thriller Naam (1986) marked a turning point in his career. He rose to prominence with leading roles in Saajan (1991), Sadak (1991), Khalnayak (1993), Gumrah (1993), Aatish (1994), Daag (1999), Vaastav (1999) and Haseena Maan Jaayegi (1999).', 2, '2022-09-26 14:03:04', '2022-09-26 14:08:20'),
(55, 'Karan Malhotra', '1664188865.jpeg', 'Director', 'Karan Malhotra is an Indian film director and screenwriter. He is best known for his debut film Agneepath which emerged as one of the highest grossing Bollywood film of the year.\r\n\r\nMalhotra worked as an assistant director in the films such as Jodhaa Akbar, My Name Is Khan and Jaan-E-Mann before co-writing and directing Agneepath, a remake of the 1990 cult classic of the same name.\r\n\r\nKaran Malhotra has also directed the film Brothers in 2015, an official remake of the 2011 American film Warrior starring Akshay Kumar, Sidharth Malhotra, Jacqueline Fernandez and Jackie Shroff.\r\n\r\nMalhotra and his wife Ekta Pathak Malhotra began collaborating on the screenplay for Shuddhi which was slated for a Diwali 2016 release for Dharma Productions. Whilst working on the script both made several research-based trips to Hrishikesh, one of the prominent shooting locations for the film. In March 2013, producer Karan Johar officially announced that Dharma Productions had begun pre-production on a new film venture titled Shuddhi.', 2, '2022-09-26 14:11:05', '2022-09-26 14:11:05'),
(56, 'Vaani Kapoor', '1664191333.jpeg', 'Actress', 'Vaani Kapoor is an Indian actress known for her work in Hindi films. She made her film debut with the 2013 romantic comedy Shuddh Desi Romance, a critical and commercial success, which earned her the Filmfare Award for Best Female Debut.', 2, '2022-09-26 14:13:18', '2022-09-26 14:52:13'),
(57, 'Saurabh Shukla', '1664189181.jpeg', 'Actor', 'Saurabh Shukla is an Indian actor, screenwriter, and film director who works in Hindi films. He is famous for his roles in Satya, Yuva, Barfi!, Jolly LLB, Kick, PK, Jolly LLB 2 and Raid. He has also worked in a short documentary with Ruth Agnihotri and Rachael Agnihotri in Goa.', 2, '2022-09-26 14:16:21', '2022-09-26 14:16:21'),
(58, 'Tridha Choudhury', '1664189298.jpeg', 'Actress', 'Tridha Choudhury is an Indian actress who predominantly appears in Hindi series and films and Telugu films. She won the title, Clean & Clear Times of India Freshface 2011. Her first movie was Mishawr Rawhoshyo in 2013, directed by Srijit Mukherji.', 2, '2022-09-26 14:18:18', '2022-09-26 14:18:18'),
(59, 'Ronit Roy', '1664190149.jpeg', 'Actor', 'Ronit Bose Roy is an Indian actor, known for his works primarily in Hindi television and films. Roy has earned numerous accolades in his career including a Filmfare Award, two Screen Awards, five ITA Awards and six Indian Telly Awards.', 2, '2022-09-26 14:32:29', '2022-09-26 14:32:29'),
(60, 'Ram Charan', '1664190709.jpeg', 'Actor', 'Konidela Ram Charan Teja is an Indian actor, producer, and entrepreneur who works predominantly in Telugu cinema. One of the highest-paid Telugu film actors, he is the recipient of three Filmfare Awards and two Nandi Awards. Since 2013, he has featured in Forbes India\'s Celebrity 100 list.', 2, '2022-09-26 14:41:49', '2022-09-26 14:41:49'),
(61, 'S. S. Rajamouli', '1664190774.jpeg', 'Director', 'Koduri Srisaila Sri Rajamouli, known professionally as S. S. Rajamouli, is an Indian film director and screenwriter who primarily works in Telugu cinema. He is the highest paid director in India and is known for his work in action, fantasy, and epic films.', 2, '2022-09-26 14:42:54', '2022-09-26 14:42:54'),
(62, 'N. T. Rama Rao Jr.', '1664190850.jpeg', 'Actor', 'Nandamuri Taraka Rama Rao Jr., also known as Jr. NTR or Tarak, is an Indian actor, dancer, and television presenter who primarily works in Telugu cinema. One of the highest paid Telugu film actors, Rama Rao Jr. has won several accolades, including two Filmfare Awards, two state Nandi Awards, and four CineMAA Awards.', 2, '2022-09-26 14:44:10', '2022-09-26 14:44:10'),
(64, 'Alia Bhatt', '1664191149.jpeg', 'Actress', 'Alia Bhatt is a British actress of Indian descent who works in Hindi-language films. She has received several accolades including four Filmfare Awards.', 2, '2022-09-26 14:49:09', '2022-09-26 14:49:09'),
(65, 'Olivia Morris', '1664191200.jpeg', 'Actress', 'Olivia Kathleen F. Morris is an English actress. She is known for her roles in the Indian film RRR and the BritBox series Hotel Portofino.', 2, '2022-09-26 14:50:00', '2022-09-26 14:50:00'),
(66, 'Aarjav Trivedi', '1664252422.jpeg', 'Actor', 'Aarjav Trivedi is an Indian actor associated with the Gujarati film industry. He rose to fame with his debut movie, Chhello Divas: A New Beginning (2015). After his debut he was seen in Shubh Aarambh (2017), Duniyadari (2017) and Shu Thayu? (2018). His 2019 release includes Hellaro.', 2, '2022-09-27 07:50:22', '2022-09-27 07:50:22'),
(67, 'Raunaq Kamdar', '1664452543.jpeg', 'Actor', 'Raunaq Kamdar is an Indian actor known for his work in Gujarati cinema and Gujarati theatre. He has played lead role in several Gujarati films including Hu Tu Tu Tu – Aavi Ramat Ni Rutu, Tuu to Gayo, Family Circus, Have Thase Baap Re, and Order Order Out of Order', 2, '2022-09-27 07:51:22', '2022-09-29 15:25:43'),
(68, 'Janki Bodiwala', '1664252520.jpg', 'Actress', 'Janki Bodiwala is an Indian actress from Ahmedabad, India who predominantly works in the Gujarati film industry. She is known for Chhello Divas, Tamburo, Chhutti Jashe Chhakka and Bau Na Vichar.', 2, '2022-09-27 07:52:00', '2022-09-27 07:52:00'),
(69, 'Krishnadev Yagnik', '1664252581.jpg', 'Director', 'Krishnadev Yagnik, is an Indian film director and screenwriter, known for his works primarily in Gujarati cinema. He is known for directing films such as Chhello Divas, Karsandas Pay & Use, and Shu Thayu?. Shu Thayu? and Chhello Divas are the 3rd and 4th Highest-grossing Gujarati films respectively.', 2, '2022-09-27 07:53:01', '2022-09-27 07:53:01'),
(70, 'Yash Soni', '1664452523.jpeg', 'Actor', 'Yash Soni is an Indian theater and film actor. He debuted in cinema with Chello Divas which was the highest grossing Gujarati film at the time and was widely considered as one of the best Gujarati films. He later starred in films like Days of Tafree, Shu Thayu?.', 2, '2022-09-27 07:53:41', '2022-09-29 15:25:23'),
(71, 'Pooja Jhaveri', '1664453363.jpg', 'Actress', 'Pooja Jhaveri is an Indian actress who appears in Telugu, Tamil, Gujarati, and Kannada films. She made her debut with the Telugu film Bham Bolenath in 2015.', 2, '2022-09-29 15:25:00', '2022-09-29 15:39:23'),
(72, 'Malhar Thakar', '1664452637.jpeg', 'Actor', 'Malhar Thakar is an Indian actor who primarily works in the Gujarati film industry and theatre. He is one of the highest paid actor of gujarati cinema dhollywood. He is known for all time blockbuster movies like Chhello Divas and Love Ni Bhavai.', 2, '2022-09-29 15:27:17', '2022-09-29 15:27:17'),
(73, 'Ujjwal Chopra', '1664452707.jpeg', 'Actor', 'Ujjawal Chopra is an Indian Bollywood and television actor. He played the character of Gora Singh in Sanjay Leela Bhansali\'s Padmaavat, and as Solanki in Special 26.', 2, '2022-09-29 15:28:27', '2022-09-29 15:28:27'),
(74, 'Neeraj Joshi', '1664452999.jpeg', 'Director', 'Neeraj Joshi is an Indian writer and director best known for the Gujarati movie Cash On Delivery (2017) starring Malhar Thakkar and Vyoma Nandi. In 2018, he directed Gujarati drama Sharato Lagu, starring Malhar Thakar and Deeksha Joshi in lead roles.', 2, '2022-09-29 15:33:19', '2022-09-29 15:33:19'),
(75, 'Ajey Nagar', '1664453853.jpg', 'Actor', 'Ajey Nagar, popularly known as CarryMinati, is an Indian YouTuber and streamer from Faridabad, India. He is known for his roasting videos, comedic skits and reactions to various online topics on his channel CarryMinati. His other channel CarryisLive is dedicated to gaming and live streams.', 2, '2022-09-29 15:47:33', '2022-09-29 15:47:33'),
(76, 'Amitabh Bachchan', '1664453923.png', 'Actor', 'Amitabh Bachchan is an Indian actor, film producer, television host, occasional playback singer and former politician known for his work in Hindi cinema. He is regarded as one of the most influential actors in the history of Indian cinema.', 2, '2022-09-29 15:48:43', '2022-09-29 15:48:43'),
(77, 'Hrishikesh Pandey', '1664454136.jpg', 'Actor', 'Hrishikesh Pandey is an Indian television actor. He appeared in Hamari Betiyoon Ka Vivaah as Shakti, and plays the role of Inspector Sachin in C.I.D. Also seen in Jag Janani Maa Vaishno Devi - Kahani Mata Rani Ki as Maharaj Ratnakar Sagar.', 2, '2022-09-29 15:52:16', '2022-09-29 15:52:16'),
(78, 'Rakul Preet Singh', '1664454157.jpg', 'Actress', 'Rakul Preet Singh is an Indian actress who predominantly works in Telugu, Tamil and Hindi films. She made her acting debut with the Kannada film Gilli.', 2, '2022-09-29 15:52:37', '2022-09-29 15:52:37'),
(79, 'Ajay Devgan', '1664454497.jpeg', 'Director', 'Vishal Veeru Devgan, known professionally as Ajay Devgn, is an Indian actor, film director and producer who works in Hindi cinema. Devgn has appeared in over a hundred films and has won numerous accolades, including four National Film Awards and four Filmfare Awards.', 2, '2022-09-29 15:58:17', '2022-09-29 15:58:17'),
(80, 'Dinesh Karthik', '1664459118.jpg', 'Cricketer', 'Krishnakumar Dinesh Karthik is an Indian professional cricketer & Commentator who nationally plays for the Indian Cricket Team and currently in Indian Premier League playing for Royal Challengers Bangalore. He is also the current captain of the Tamil Nadu cricket team in domestic cricket.', 2, '2022-09-29 17:15:18', '2022-10-15 12:12:29'),
(81, 'Virat Kohli', '1664459152.jpg', 'Cricketer', 'Virat Kohli is an Indian international cricketer and former captain of the India national cricket team. He plays for Delhi in domestic cricket and Royal Challengers Bangalore in the Indian Premier League as a right-handed batsman.', 2, '2022-09-29 17:15:52', '2022-10-15 12:06:20'),
(82, 'Jasprit Jasbirsingh Bumrah', '1664459181.png', 'Cricketer', 'Jasprit Jasbirsingh Bumrah is an Indian international cricketer, who plays for the Indian national cricket team in all formats of the game. He is the first Asian bowler to take 5 wickets in a test innings in South Africa, England and Australia during the same calendar year.', 2, '2022-09-29 17:16:21', '2022-10-15 12:10:45'),
(83, 'Tim Story', '1664515715.jpeg', 'Director', 'Timothy Kevin Story is an American film director. He is best known for Barbershop, the Fantastic Four and the Ride Along franchise. He has been nominated for two NAACP Image Awards for Outstanding Directing in a Feature Film/Television Movie in 2006 and 2013.', 2, '2022-09-30 08:58:35', '2022-09-30 08:58:35'),
(84, 'Rajat Sharma', '1664522635.jpg', 'Journalist', 'Rajat Sharma is an Indian journalist and businessperson who is the chairman and Editor-in-chief of India TV, an Indian news outlet. Sharma is known for his show Aap Ki Adalat in which he is seen interviewing politicians and celebrities in a courtroom-like setting.', 2, '2022-09-30 10:53:55', '2022-10-15 12:08:45'),
(85, 'Arnab Goswami', '1664522755.jpeg', 'Journalist', 'Arnab Goswami is an Indian news anchor and journalist, who is the managing director and editor-in-chief of Republic Media Network. Before Republic TV, Goswami was the editor-in-chief and a news anchor of Times Now and ET Now, from 2006 to 2016. Previously, he had also served stints at NDTV and The Telegraph.', 2, '2022-09-30 10:55:55', '2022-10-15 12:07:01'),
(86, 'Raghav Juyal', '1664529169.jpg', 'Dancers', 'Raghav Juyal is an Indian dancer, choreographer, actor and television presenter. He has been called \"King of Slow Motion\" for his surreal dance moves in slow motion style and for his reinvention of the \"Slow Motion Walk\" in India.', 2, '2022-09-30 12:42:49', '2022-10-15 12:06:50'),
(87, 'Shakti Mohan', '1664529202.jpg', 'Dancers', 'Shakti Mohan is an Indian dancer, choreographer and television personality. She is the winner of Zee TV\'s dance reality show Dance India Dance 2.', 2, '2022-09-30 12:43:22', '2022-10-15 12:06:09'),
(88, 'Remo D\'Souza', '1664529236.jpg', 'Director', 'Remo D\'Souza, is an Indian choreographer, actor, film director and producer, based in Mumbai. He is best known for his works in Yeh Jawaani Hai Deewani and Bajirao Mastani. In a career span of more than 25 years, D\'Souza has choreographed more than 100 films.', 2, '2022-09-30 12:43:56', '2022-09-30 12:43:56'),
(89, 'Punit Pathak', '1664529269.jpg', 'Dancers', 'Punit Jayesh Pathak, is an Indian dancer, choreographer and actor. In 2019, he participated in Colors TV\'s Fear Factor: Khatron Ke Khiladi 9 and emerged as the winner.', 2, '2022-09-30 12:44:29', '2022-10-15 12:07:12'),
(90, 'Dharmesh Yelande', '1664529302.jpg', 'Dancers', 'Dharmesh Yelande is an Indian dancer, choreographer, actor and television judge.', 2, '2022-09-30 12:45:02', '2022-10-15 12:07:26'),
(91, 'Rohit Shetty', '1664530306.jpg', 'Director', 'Rohit Shetty is an Indian film director, producer and television host who works in Hindi cinema. He is considered as one of the prominent film director of Hindi Cinema, known for creating the Golmaal and Cop Universe film franchises and some other notable films include Bol Bachchan, Chennai Express and Dilwale.', 2, '2022-09-30 13:01:46', '2022-09-30 13:01:46'),
(92, 'Kapil Sharma', '1676347647.jpg', 'Director', 'Kapil Sharma is an Indian stand-up comedian, television presenter, actor and television producer known for hosting The Kapil Sharma Show. He previously hosted the television comedy shows Comedy Nights with Kapil and Family Time with Kapil.', 2, '2022-10-06 07:59:24', '2023-02-14 09:37:27'),
(93, 'Chanu Saikhom Mirabai', '1665054683.jpg', 'Other', 'Saikhom Mirabai Chanu is an Indian weightlifter. 27-year-old Mirabai Chanu lifted a total of 201 kg to win the Gold Medal which was also India\'s third medal after at the ongoing CWG 2022. She won the silver medal at the 2020 Tokyo Olympics in Women\'s 49 kg category.', 2, '2022-10-06 14:41:23', '2022-10-06 14:41:23'),
(94, 'Hardik Pandya', '1665055530.jpeg', 'Cricketer', 'Hardik Himanshu Pandya is an Indian international cricketer who plays for the India national cricket team at the international level and the Baroda cricket team in Indian domestic cricket.', 2, '2022-10-06 14:55:30', '2022-10-15 12:07:38'),
(95, 'Shefali Shah', '1665056335.jpg', 'Actress', 'Shefali Shah (born Shefali Shetty on 22 May 1972) is an Indian actress of film, television and theatre. Respected for her acting prowess, she works primarily in independent Hindi films and has received local and foreign accolades for her performances. Shah\'s acting career started on the Gujarati stage before she debuted on television in 1993. After small parts on television and a brief stint with cinema in Rangeela (1995), she gained wider recognition in 1997 for her role in the popular series Hasratein. This was followed by lead roles in the TV series Adhikar (1997), Kabhie Kabhie (1997) and Raahein (1999). A supporting role in the crime film Satya (1998) won her positive notice and a Filmfare Critics Award, and she soon shifted her focus to film acting starting with a lead role in the Gujarati drama Dariya Chhoru (1999).', 2, '2022-10-06 15:03:51', '2022-10-06 15:08:55'),
(96, 'Rasika Dugal', '1665056275.jpg', 'Actress', 'Rasika Dugal (born 17 January 1985) is an Indian actress. She is known for her roles in several Indian movies and television shows.\r\n\r\nShe made her screen debut with a small role, in the film Anwar (2007). And then she went onto star in many critically acclaimed films namely No Smoking (2007), Aurangzeb (2013), Qissa (2015), Train Station (2015), Tu Hai Mera Sunday (2017), Hamid (2018) etc. In 2018, she was seen in the biographical movie Manto based on the life of writer Saadat Hassan Manto, where she essayed the role of Safia, Manto\'s wife. For which she garnered her first Screen Award nomination in the category Best Supporting Actress. Then in 2020, she appeared in movies like Lootcase and Darbaan, for both the release her performance was appreciated. Despite films, Rasika was continuously active in the television industry. She appeared in many television serials such as Powder (2010), Kismat (2010), Upanishad Ganga (2012), P.O.W.- Bandi Yuddh Ke (2016) etc.', 2, '2022-10-06 15:07:55', '2022-10-06 15:07:55'),
(97, 'Richie Mehta', '1665056426.jpg', 'Director', 'Richie Mehta is a Canadian film director and writer. His first feature film, Amal, was released in 2008, and was nominated for Best Motion Picture and Best Director at the 29th Genie Awards.', 2, '2022-10-06 15:10:26', '2022-10-06 15:10:26'),
(98, 'Victor Moulin', '1665057776.jpg', 'Actor', 'Victor Moulin is a director of Grizzy and the Lemmings.', 2, '2022-10-06 15:32:56', '2022-10-06 15:35:58'),
(99, 'Pierre-Alain de Garrigues', '1665057868.jpg', 'Actor', 'Pierre-Alain de Garrigues is known for Nikita (1990), The Big Blue (1988) and The Longest Journey (1999).\r\nHe makes lots of narrations for French or French-dubbed documentaries, including _\"How Art Made the World\" (2005) (mini)_.', 2, '2022-10-06 15:34:28', '2022-10-06 15:34:28'),
(100, 'Josselin Charier', '1665057950.jpg', 'Director', 'Josselin Charier is a producer and writer, known for Grizzy and the Lemmings (2016), From One Shore to Another (2006) and Ad Vitam (2006).', 2, '2022-10-06 15:35:50', '2022-10-06 15:35:50'),
(101, 'Neeraj Chopra', '1665060182.jpg', 'Other', 'Neeraj Chopra is a track and field athlete from India and the reigning Olympic champion, World championship silver medalist, and the Diamond League champion in javelin throw. He is the first Asian athlete to win an Olympic gold medal in men\'s javelin throw.', 2, '2022-10-06 16:13:02', '2022-10-06 16:13:02'),
(106, 'Test Director', '1665822870.jpg', 'Director', 'Describe your director......', 2, '2022-10-15 12:04:30', '2022-10-15 12:04:30'),
(107, 'Test Actor', '1667031129.jpg', 'Actor', 'This is actor description.', 2, '2022-10-29 11:42:09', '2022-10-29 11:42:09'),
(108, 'Abhishek Sharma', '1675833468.jpeg', 'Director', '', 2, '2023-01-20 11:34:20', '2023-01-20 11:34:20'),
(109, 'Chandra Prakash Dwivedi', '1675833468.jpeg', 'Writer', '', 2, '2023-01-20 11:34:20', '2023-01-20 11:34:20'),
(110, 'Jacqueline Fernandez', '1674194660.jpg', 'Actor', 'Jacqueline Fernandez is a Bahraini-born Sri Lankan actress and model. She\'s the winner of the 2006 Miss Universe Sri Lanka pageant and represented her country at the 2006 world Miss Universe pageant. She graduated with a degree in Mass Communication from the University of Sydney, Australia, and worked as a television reporter in Sri Lanka.\n\nWhile on a modelling assignment in India in 2009, Fernandez successfully auditioned for the fantasy drama \"Aladin\", which marked her acting debut. Fernandez\'s breakthrough role came with the psychological thriller \"Murder 2\" in 2011, her first commercial success.  One of the most popular actresses in India, she is the recipient of several awards. Alongside her screen acting career, Fernandez has worked as a judge in the ninth season of the dance reality show \"Jhalak Dikhhla Jaa\" (2016–2017), is a popular celebrity endorser for various brands and products, has participated in stage shows, and is active in humanitarian work.', 2, '2023-01-20 11:34:20', '2023-01-20 11:34:20'),
(111, 'Nushrratt Bharuccha', '1674194661.jpg', 'Actor', 'Nushrat Bharucha is an Indian film actress known for her work in Bollywood films. Bharucha made her acting debut with the 2009 box office flop Kal Kissne Dekha. The 2015 buddy drama Pyaar Ka Punchnama 2 marked her first commercial success.', 2, '2023-01-20 11:34:21', '2023-01-20 11:34:21'),
(130, 'Abhinav Kashyap', '', 'Director', '', 2, '2023-01-23 09:53:00', '2023-01-23 09:53:00'),
(131, 'Dilip Shukla', '16_1674447780.jpg', 'Writer', '', 2, '2023-01-23 09:53:01', '2023-01-23 09:53:01'),
(133, 'Sonakshi Sinha', '100_1674447781.jpg', 'Actor', 'Sonakshi Sinh is an Indian actress who predominately appears in Hindi movies. fter working as a costume designer in her early career, Sonakshi made her debut in action-drama film Dabangg (2010) which led her to win the Filmfare Award for Best Female Debut.\n\nSinha has played the romantic interest of the male protagonists in several top-grossing action-dramas, including Rowdy Rathore (2012), Son of Sardaar (2012), Dabangg 2 (2012) and Holiday: A Soldier Is Never Off Duty  (2014), though she was criticised for taking up roles that offered her  limited scope. She received critical acclaim for her portrayal of a  woman suffering from tuberculosis in the romantic drama Lootera (2013), for which she was nominated for the Filmfare Award for Best Actress in 2013.', 2, '2023-01-23 09:53:01', '2023-01-23 09:53:01'),
(134, 'Sonu Sood', '81_1674447781.jpg', 'Actor', 'Sonu Sood is an Indian film actor, model, and producer who acts predominantly in Hindi, Telugu, and Tamil films. He has also appeared in a few Kannada and Punjabi films.\n\nIn 2009, he received Andhra Pradesh State Nandi Award for Best Villain and Filmfare Award for Best Supporting Actor – Telugu for his work in the Telugu blockbuster, Arundhati. In 2010, He garnered Apsara Award for Best Actor in a Negative Role and IIFA Award for Best Performance in a Negative Role for the Bollywood blockbuster, Dabangg. In 2012, He received SIIMA Award for Best Actor in a Negative Role for Julayi. \n\nIn July 2016, he established the production house Shakti Sagar Productions, which is named after his father, Shakti Sagar.', 2, '2023-01-23 09:53:01', '2023-01-23 09:53:01'),
(136, 'Umesh Shukla', '1672979776.jpg', 'Director', '', 2, '2023-02-11 10:12:26', '2023-02-11 10:12:26'),
(137, 'Alok Jha', '1676347647.jpg', 'Writer', '', 2, '2023-02-11 10:12:27', '2023-02-11 10:12:27'),
(140, 'Paresh Rawal', '64_1676090547.jpg', 'Actor', 'Paresh Rawal (born 30 May 1959) is an Indian actor of Gujarati background. Making his film debut in 1984, he mainly played supporting and villain roles throughout the 1980s and 1990s. Since 2000 he has mostly played comic roles.', 2, '2023-02-11 10:12:27', '2023-02-11 10:12:27'),
(141, 'Pratik Gandhi', '71_1676090592.jpg', 'Actor', 'A salesman during the day and a theater actor during the night - Pratik Gandhi juggled between his passion and profession until he finally found success with the Gujarati play Aa Paar Ke Pele Paar. The play went on to become a commercial success and soon Pratik featured in several plays such as Apurva Avsar, Hun Chandrkant Bakshi, Master Madam, and Mere Piya Gaye Rangoon.  In 2006, Pratik made his feature debut with the United Kingdom-Indian co-produced film Yours Emotionally. It was in 2014 that he made his Gujarati film debut with the movie Bey Yaar directed by Abhishek Jain. He has since then appeared in movies such as Wrong Side Raju (2016), Tamburo (2017), and Love Ni Bhavai (2017).', 2, '2023-02-11 10:13:12', '2023-02-11 10:13:12'),
(142, 'Shreya Dhanwanthary', '55_1676090592.jpg', 'Actor', 'Shreya Dhanwanthary is an Indian actress, model, and author associated with Hindi and Telugu language films and web series. She got her big break in 2019 as she played Zoya in the Amazon Prime Video web series The Family Man and later gained widespread critical acclaim for her portrayal of journalist Sucheta Dalal in Sony LIV\'s web series Scam 1992 (2020).', 2, '2023-02-11 10:13:12', '2023-02-11 10:13:12'),
(143, 'Hemant Kher', '79_1676090593.jpg', 'Actor', '', 2, '2023-02-11 10:13:13', '2023-02-11 10:13:13'),
(144, 'Joseph Kosinski', '63_1676290901.jpg', 'Director', 'Joseph Kosinski (born May 3, 1974) is an American film director best known for the science-fiction films \"Tron: Legacy\" (2010) and \"Oblivion\" (2013),  the drama-thriller \"Only the Brave\" (2017), and the  action-thriller \"Top Gun: Maverick\" (2022). His previous work has primarily been in the field of CGI television commercials, most notably his 2007 commercials for the video games \"Halo 3\" and \"Gears of War\".', 2, '2023-02-13 17:51:41', '2023-02-13 17:51:41');
INSERT INTO `cast` (`id`, `name`, `image`, `type`, `personal_info`, `status`, `created_at`, `updated_at`) VALUES
(145, 'Jim Cash', '1675833468.jpeg', 'Writer', 'Jim Cash  (17 January 1941 – 25 March 2000) was a film writer, noted for writing such 1980s films such as Top Gun and The Secret of My Success. He was born in Boyne City, Michigan, and later lived in Grand Rapids. He received a B.A. in English from Michigan State University (MSU) in 1970, followed by an M.A. in Television and Radio in 1972; he also taught writing and film history.\n\nDescription above from the Wikipedia article Jim Cash, licensed under CC-BY-SA, full list of contributors on Wikipedia', 2, '2023-02-13 17:51:42', '2023-02-13 17:51:42'),
(146, 'Jack Epps Jr.', '12_1676290902.jpg', 'Writer', '', 2, '2023-02-13 17:51:42', '2023-02-13 17:51:42'),
(147, 'Peter Craig', '61_1676290902.jpg', 'Writer', 'Peter Craig (born November 10, 1969) is an American novelist and screenwriter best known for writing The Batman (2022), Top Gun: Maverick (2022), The Town (2010) and The Hunger Games: Mockingjay - Part 1 & 2.', 2, '2023-02-13 17:51:42', '2023-02-13 17:51:42'),
(148, 'Tom Cruise', '37_1676290902.jpg', 'Actor', 'Thomas Cruise Mapother IV (born July 3, 1962), known professionally as Tom Cruise, is an American actor and producer. One of the world\'s highest-paid actors, he has received various accolades, including an Honorary Palme d\'Or and three Golden Globe Awards, in addition to nominations for three Academy Awards. His films have grossed over $4 billion in North America and over $11.1 billion worldwide, making him one of the highest-grossing box office stars of all time.\n\nCruise began acting in the early 1980s and made his breakthrough with leading roles in the comedy film Risky Business (1983) and action film Top Gun (1986). Critical acclaim came with his roles in the dramas The Color of Money (1986), Rain Man (1988), and Born on the Fourth of July (1989). For his portrayal of Ron Kovic in the latter, he won a Golden Globe Award and received a nomination for the Academy Award for Best Actor. As a leading Hollywood star in the 1990s, he starred in several commercially successful films, including the drama A Few Good Men (1992), the thriller The Firm (1993), the horror film Interview with the Vampire (1994), and the romance Jerry Maguire (1996). For the latter, he won a Golden Globe Award for Best Actor and received his second Academy Award nomination. Cruise\'s performance as a motivational speaker in the drama Magnolia (1999) earned him another Golden Globe Award and a nomination for the Academy Award for Best Supporting Actor.\n\nSince then, Cruise has largely starred in science fiction and action films, establishing himself as an action star, often performing his own risky stunts. He has played Ethan Hunt in all six of the Mission: Impossible films from 1996 to 2018. His other notable roles in the genre include Vanilla Sky (2001), Minority Report (2002), The Last Samurai (2003), Collateral (2004), War of the Worlds (2005), Knight and Day (2010), Jack Reacher (2012), Oblivion (2013), Edge of Tomorrow (2014), and Top Gun: Maverick (2022), with Maverick being his highest-grossing film.\n\nDescription above from the Wikipedia article Tom Cruise, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-02-13 17:51:43', '2023-02-13 17:51:43'),
(149, 'Jennifer Connelly', '85_1676290903.jpg', 'Actor', 'Jennifer Lynn Connelly (born December 12, 1970) is an American actress. She began her career as a child model before making her acting debut in the 1984 crime film Once Upon a Time in America. After having worked as a model for several years, she began to concentrate on acting, starring in a variety of films including the horror film Phenomena (1985), the musical fantasy film Labyrinth (1986), the romantic comedy Career Opportunities (1991), and the period superhero film The Rocketeer (1991). She received praise for her performance in the science fiction film Dark City (1998) and playing a drug addict in Darren Aronofsky\'s drama film Requiem for a Dream (2000).\n\nIn 2002, Connelly won the Academy Award for Best Supporting Actress for her portrayal of Alicia Nash in Ron Howard\'s biopic A Beautiful Mind (2001). Her subsequent films include the superhero film Hulk (2003), the horror film Dark Water (2005), the psychological drama Little Children (2006), the drama film Blood Diamond (2006), the science fiction film The Day the Earth Stood Still (2008), the romantic comedy He\'s Just Not That Into You (2009), and the biopic Creation (2009). In the subsequent decades, she took on supporting roles in Aronofsky\'s biblical epic film Noah (2014) and in the action films Alita: Battle Angel (2019) and Top Gun: Maverick (2022). Since 2020, she has starred in the TNT dystopian television series Snowpiercer.\n\nConnelly was named Amnesty International Ambassador for Human Rights Education in 2005. She has been the face of Balenciaga and Louis Vuitton fashion advertisements, as well as for Revlon cosmetics. In 2012, she was named the first global face of the Shiseido Company. Magazines, including Time, Vanity Fair, and Esquire, as well as the Los Angeles Times newspaper, have included her on their lists of the world\'s most beautiful women.\n\nDescription above from the Wikipedia article Jennifer Connelly, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-02-13 17:51:43', '2023-02-13 17:51:43'),
(150, 'Miles Teller', '98_1676290903.jpg', 'Actor', 'Miles Alexander Teller (born February 20, 1987) is an American actor and musician. Born in Downingtown, Pennsylvania and an alumnus of NYU\'s Tisch School of Arts, he appeared in several short films and television movies before making his feature film debut in Rabbit Hole (2010). He had supporting roles in Footloose (2011) and Project X (2012), before garnering critical acclaim for his leading performance as Sutter Keely in The Spectacular Now (2013), for which he was awarded the Sundance Film Festival Special Jury Prize for Dramatic Acting and his role as Andrew Neiman in Whiplash, for which he was nominated for the Gotham Independent Film Award for Best Actor, the Satellite Award for Best Actor - Motion Picture, and the BAFTA Rising Star Award. His other films include: Divergent (2014), Bleed for This (2016), War Dogs (2016) and Top Gun: Maverick (2022).', 2, '2023-02-13 17:51:43', '2023-02-13 17:51:43'),
(156, 'Zakir Khan', '62_1677490008.jpg', 'Writer', 'Zakir khan is one of the the brightest comedians in India and was the winner of Comedy Central\'s hunt for Best Stand-Up Comic of India and Foster\'s Lol Evenings. A writer by profession, this \'Confused Desi\' serves his take on modern India, with a hard to resist rustic humour that\'ll have you nodding your heads and clapping as you’ll relate to everything he says.', 2, '2023-02-27 14:56:48', '2023-02-27 14:56:48'),
(158, 'Hussain Dalal', '76_1677490008.jpg', 'Actor', '', 2, '2023-02-27 14:56:48', '2023-02-27 14:56:48'),
(160, 'Vicky Kaushal', '27_1677503775.jpg', 'Actor', 'Vicky Kaushal is an Indian actor who works in Hindi films. Born to the action director Sham Kaushal, he pursued an engineering degree from the Rajiv Gandhi Institute of Technology. Aspiring to a career in film, Kaushal assisted Anurag Kashyap in the crime drama Gangs of Wasseypur (2012) and went on to play minor roles in two of Kashyap\'s productions. His first leading role was in the independent drama Masaan (2015), which earned him the IIFA and Screen Awards for Best Male Debut.\n\nFollowing the leading role of an unhinged cop in Kashyap\'s psychological thriller Raman Raghav 2.0 (2016), Kaushal rose to prominence in 2018 with supporting roles in Raazi and Sanju, two of the highest-grossing Hindi films of the year.', 2, '2023-02-27 18:46:15', '2023-02-27 18:46:15'),
(162, 'Shahid Kapoor', '21_1677503866.jpg', 'Actor', 'Kapoor also known as Shahid Khattar, is an Indian actor who appears in Hindi films was born to actor Pankaj Kapoor and actor/classical dancer Neelima Azeem.\n\nKapoor made his film debut in 2003 with a leading role in the romantic comedy Ishq Vishk, a sleeper hit for which he won a Filmfare Award for Best Male Debut. Kapoor earned nominations for the Filmfare Award for Best Actor for portraying a troubled businessman in Imtiaz Ali\'s romantic comedy Jab We Met (2007) and twin brothers in Vishal Bhardwaj\'s caper thriller Kaminey (2009). \n\nCited in the media as one of the most attractive Indian celebrities, Kapoor maintains his popularity despite a fluctuating career trajectory. Initially recognised for portraying romantic roles, Kapoor has since taken on parts in action films and thrillers. He is the recipient of several awards, including three Filmfare Awards. In addition to acting, Kapoor supports charities, hosts award ceremonies, and has featured as a talent judge on the dance reality show Jhalak Dikhhla Jaa Reloaded (2015). Following a romantic relationship with the actress Kareena Kapoor, he married Mira Rajput, a student from New Delhi, with whom he has a daughter.', 2, '2023-02-27 18:47:46', '2023-02-27 18:47:46'),
(163, 'Vijay Sethupathi', '43_1677503866.jpg', 'Actor', 'Vijaya Gurunatha Sethupathi Kalimuthu known professionally as Vijay Sethupathi, is an Indian film actor, producer, lyricist, and dialogue writer. Sethupathi works predominantly in Tamil besides few Telugu, Malayalam, and Hindi productions. Often referred to by fans and media as \"Makkal Selvan\" meaning \"People\'s Treasure\", he is one of the most talented and versatile actors of his generation.', 2, '2023-02-27 18:47:46', '2023-02-27 18:47:46'),
(165, 'Darshan Kumaar', '74_1678246123.jpg', 'Actor', 'Kumar belongs to a Jaat family which was based in a small village Kishan Garh of South Delhi. At the age of 24, he moved to Mumbai and worked with Sahej theatre group for five years, and later with Motley Productions where he met and learned from Naseeruddin Shah for the next ten years. Kumar was asked to audition for the film Mary Kom by the casting director of the film. Also, he worked in TV series Devon Ke Dev...Mahadev, playing Shukracharya the guru of the demon. Kumar\'s first movie was NH10, with Anushka Sharma but, it was Mary Kom, with Priyanka Chopra that was released first.', 2, '2023-03-08 08:58:43', '2023-03-08 08:58:43'),
(186, 'B. Unnikrishnan', '83_1678541277.jpg', 'Director', 'B. Unnikrishnan (born Unnikrishnan Bhaskaran Pillai, 14 August 1970) is an Indian film director and screenwriter who works in Malayalam cinema.[1] After completing his post graduation in English Literature, he took M. Phil from Mahatma Gandhi University with first rank in 1991. He started publishing his writings on literature, politics and culture during the early 1990s. He, along with V. C. Haris, edited a series of books on postmodernism which was published by DC Books. He started his career as a screenwriter in 2000 by writing Jalamarmaram which won him the Kerala State Film Award for the Best Screenplay in 2000. This was followed by Cover Story (2000) and two films directed by Shaji Kailas—Shivam (2002) and The Tiger (2005). He directed his first film, Smart City in 2006. He continued directing films such as, Madambi and Grandmaster. Unnikrishnan is involved in organisational activities in Malayalam cinema and was the General Secretary of Film Employees Federation of Kerala (FEFKA) for a long time[quantify] before resigning from the federation. His resignation was rejected by the General Council of FEFKA who asked him to continue till the next election in 2013. In 2013, the newly elected General Council of FEFKA unanimously re-elected him as General Secretary. Unnikrishnan is a member of the advisory committee of Cine Workers Welfare Board and the director of Saamskaarika Khemanidhi in Kerala. In January 2014, at the National Conference of All India Film Employees Confederation (AIFEC) in Mumbai, he was unanimously elected as the General Secretary. He became the first Keralite elected to this venerable post', 2, '2023-03-11 18:57:57', '2023-03-11 18:57:57'),
(187, 'Udaykrishnan', '54_1678541278.jpg', 'Writer', '', 2, '2023-03-11 18:57:58', '2023-03-11 18:57:58'),
(188, 'Aishwarya Lekshmi', '99_1678541278.jpg', 'Actor', 'Aishwarya Lekshmi is an Indian model, actress, and medical doctor from Kerala. She began her career as a model in 2014 and made her acting debut with the 2017 film Njandukalude Nattil Oridavela, followed by Mayaanadhi (2017), Varathan (2018), and Vijay Superum Pournamiyum (2019) establishing herself as a lead actress in Malayalam cinema. She won several allocades including Filmfare Award for Best Female Debut – South. She was selected as the Most Desirable Woman of 2018 by Kochi Times.', 2, '2023-03-11 18:57:58', '2023-03-11 18:57:58'),
(189, 'Mammootty', '51_1678541278.jpg', 'Actor', 'Mammootty is an Indian film actor and producer who works mainly in Malayalam cinema. He has also acted in a few Tamil, Hindi, Telugu, and Kannada films. During a career spanning more than five decades, he has acted in more than 400 films. Mammootty was awarded the National Film Award for Best Actor three times. He also won five Kerala State Film Awards, and eleven Filmfare Awards. He was honoured a Doctor of Letters by University of Kerala in Jan 2010 and by University of Calicut in Dec 2010. Mammootty is Chairman of Malayalam Communications, which runs Malayalam TV channels Kairali TV, People TV, and WE TV. Mammootty has promoted humanitarian causes throughout Kerala and is the goodwill ambassador of the Akshaya project.\n\nDescription above from the Wikipedia article Mammootty, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-11 18:57:58', '2023-03-11 18:57:58'),
(190, 'Amala Paul', '35_1678541278.jpg', 'Actor', 'Amala Paul is an Indian film actress, who works in Tamil, Malayalam and Telugu film industries. After appearing in supporting roles in the Malayalam filmNeelathamara and Veerasekaran in Tamil, she received critical acclaim for the portrayal of a controversial character in the film, Sindhu Samaveli. Despite the failure of that film, Amala became noted after playing the title role in Mynaa, receiving critical acclaim for her work.\n\nAs early as 2011, when Amala was working on Deiva Thirumagal, she was romantically linked to director A. L. Vijay but denied that the pair were dating.  The pair subsequently fell in love and announced in early 2014, that  they were set to get married by mid 2014. On June 7, 2014 she got  engaged to Vijay at Aluva in Kochi. The couple got married on June 12, 2014 at Mayor Ramanathan Chettiar Hall, Chennai.', 2, '2023-03-11 18:57:59', '2023-03-11 18:57:59'),
(210, 'Louis Leterrier', '66_1678596189.jpg', 'Director', 'Louis Leterrier (born June 17, 1973) is a French film director whose notable films include the first two Transporter movies, Unleashed (2005), The Incredible Hulk (2008) and Clash of the Titans (2010).\n\nDescription above from the Wikipedia article Louis Leterrier, licensed under CC-BY-SA, full list of contributors on Wikipedia​', 2, '2023-03-12 10:13:09', '2023-03-12 10:13:09'),
(211, 'Justin Lin', '43_1678596189.jpg', 'Writer', 'Justin Lin is a Taiwanese-American film director whose films have grossed $2 billion worldwide. He is best known for his work on Better Luck Tomorrow (2002), The Fast and the Furious: Tokyo Drift  (2006), Fast & Furious (2009), Fast Five (2011), Fast & Furious 6 (2013), F9 (2021), and Star Trek Beyond (2016). He is also known for his work on television shows like Community and the second season of True Detective. Lin was born in Taipei, Taiwan, and grew up in a working-class neighborhood in Cypress, California, in Orange County. He attended Cypress High School and University of California, San Diego for two years before transferring to UCLA, where he earned a B.A. in Film & Television and a MFA in Film Directing & Production from the UCLA film school.', 2, '2023-03-12 10:13:10', '2023-03-12 10:13:10'),
(212, 'Dan Mazeau', '1675833468.jpeg', 'Writer', '', 2, '2023-03-12 10:13:10', '2023-03-12 10:13:10'),
(213, 'Gary Scott Thompson', '28_1678596190.jpg', 'Writer', 'Gary Scott Thompson is the show runner and executive producer of the reinvented 1980s classic, \"Knight Rider\". The creator and executive producer of NBC\'s hit series \"Las Vegas\", Thompson was also the writer of \"The Fast and the Furious\".  Spending much of his childhood in American Samoa, Thompson first gained exposure to the world of entertainment as an actor, studying the craft from such notable actors as Powers Boothe. Eventually settling on writing, he received a Master of Fine Arts degree from New York University and went to work as a playwright. Thompson\'s theater credits include \"Small Town Syndrome,\" \"Cowboy\'s Don\'t Cry\" and \"Private Hells.\"  His feature credits include \"The Fast and the Furious\" starring Vin Diesel, the sequel \"2 Fast 2 Furious,\" \"Hollow Man\" with Kevin Bacon, and the cult classic \"Split Second\", and \"88 Minutes,\" starring Al Pacino.  Thompson resides in Los Angeles.', 2, '2023-03-12 10:13:10', '2023-03-12 10:13:10'),
(214, 'Jordana Brewster', '94_1678596190.jpg', 'Actor', 'Jordana Brewster (born April 26, 1980) is an American actress. She began her acting career with an appearance in the soap opera All My Children (1995). After that, she joined the cast of As the World Turns (1995–2001), as a recurring role, Nikki Munson. She was later cast as one of the main characters in her first film feature film The Faculty (1998). Her role brought her to the attention of a much wider audience. She also landed a starring role in a NBC television miniseries entitled The 60s (1999).\n\nHer breakthrough role came in the action film The Fast and the Furious (2001). Other film roles include the action comedy film D.E.B.S. (2004), the horror film The Texas Chainsaw Massacre: The Beginning (2006), and the fourth and fifth films of the The Fast and the Furious film series, Fast & Furious (2009) and Fast Five (2011). She has appeared as a recurring role in the NBC television series Chuck (2008–2009).\n\nDescription above from the Wikipedia article Jordana Brewster, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-12 10:13:10', '2023-03-12 10:13:10'),
(215, 'Tyrese Gibson', '86_1678596190.jpg', 'Actor', 'Tyrese Darnell Gibson (born December 30, 1978), also known mononymously as Tyrese, is an American Grammy-nominated R&B singer, songwriter, actor, author, television producer, former fashion model and MTV VJ. He is best known for his role as Roman Pearce in the The Fast and the Furious series.', 2, '2023-03-12 10:13:10', '2023-03-12 10:13:10'),
(216, 'Sujoy Ghosh', '44_1678782116.jpg', 'Director', 'Born on 21st May 1966 in Kolkata, Sujoy Ghosh is an Indian film writer, director, actor and producer who is well known for his critically acclaimed movies like Jhankar Beats, Kahaani, Ahalya and Badla.\n\nThe film maker started the trend of multiplex movies in Bollywood with his directorial debut Jhankaar Beats in 2003 which went on to become a superhit. Ghosh\'s mystery thriller film Kahaani which released in the year 2012 was his path-breaking female lead movie for which he bagged many awards including a National Film Award for Best Screenplay and a Filmfare Award for Best Director. In 2016, his film Kahaani 2 was released which is a sequel to Kahaani. With his 15 minutes long short film - Ahalya (2015), he started the trend of mainstream directors making digital short films.\n\nHis latest crime-thriller Badla, starring Amitabh Bachchan and Taapsee Pannu received a widespread acclaim and emerged as the content film of the year for its nail-biting plot that left the audiences at the edge of their seats till the very last moment. This is his second film with Amitabh Bachchan, first being Aladin and second being the 2016 thriller film Te3n which was produced by Sujoy. Alongside writing and directing films, Sujoy also acts in the Bengali mystery-thriller Satyanweshi (2013) being his debut film as an actor where he played the role of Byomkesh Bakshi.\n\nNot many know but the popular phrase of the IPL team Kolkata Knight Riders - \"Korbo Lorbo Jeetbo Re\" was penned by Sujoy himself. With the quality driven content in his films, Sujoy Ghosh is one of the leading filmmakers in the country.', 2, '2023-03-14 13:51:57', '2023-03-14 13:51:57'),
(217, 'Advaita Kala', '1675833468.jpeg', 'Writer', '', 2, '2023-03-14 13:51:57', '2023-03-14 13:51:57'),
(218, 'Suresh Nair', '98_1678782117.jpg', 'Writer', '', 2, '2023-03-14 13:51:57', '2023-03-14 13:51:57'),
(219, 'Vidya Balan', '38_1678782117.jpg', 'Actor', 'Vidya Balan  is an Indian actress, who appears in Hindi films. After graduating with a degree in sociology, she started her career starring in music videos, television shows and commercials, before appearing in feature films.\n\nBalan made her movie debut in the Bengali film, Bhalo Theko in 2003. She later made her Hindi film debut with Parineeta (2005), which earned her a Filmfare Award for Best Female Debut as well as her first Best Actress nomination at the same ceremony. She subsequently essayed a variety of character roles, receiving her first commercial success with Rajkumar Hirani\'s Lage Raho Munna Bhai (2006). She subsequently appeared in such films as Guru, Heyy Babyy (2008) and Bhool Bhulaiya (2008), the latter earning her another Filmfare nomination.\n\nIn 2009 she appeared as a single mother of a child suffering from progeria in R. Balki\'s Paa, her performance in which ultimately won her a Best Actress award at Filmfare. 2010 saw the release of Ishqiya, starring Balan in a role for which she was praised and awarded, and she followed it with her first real-life character of Sabrina Lal in the biopic No One Killed Jessica.', 2, '2023-03-14 13:51:57', '2023-03-14 13:51:57'),
(220, 'Parambrata Chattopadhyay', '40_1678782118.jpg', 'Actor', 'Parambrata Chattopadhyay was born on June 27, 1980 in Calcutta, West Bengal, India. He is an actor and director, known for Kahaani (2012), Feluda (2017) and Bony (2020).', 2, '2023-03-14 13:51:58', '2023-03-14 13:51:58'),
(221, 'Indraneil Sengupta', '91_1678782118.jpg', 'Actor', 'Indraneil Sengupta is an Indian film and television actor, and a model living in Kolkata since 2004.', 2, '2023-03-14 13:51:58', '2023-03-14 13:51:58'),
(222, 'Vinton Heuck', '', 'Director', '', 2, '2023-03-25 17:11:26', '2023-03-25 17:11:26'),
(223, 'Scooter Tidwell', '', 'Director', '', 2, '2023-03-25 17:11:26', '2023-03-25 17:11:26'),
(224, 'Todd Waterman', '', 'Director', '', 2, '2023-03-25 17:11:27', '2023-03-25 17:11:27'),
(226, 'Austin Bitikofer', '', 'Writer', '', 2, '2023-03-25 17:14:55', '2023-03-25 17:14:55'),
(227, 'Tyler James', '', 'Writer', '', 2, '2023-03-25 17:14:56', '2023-03-25 17:14:56'),
(228, 'Alex Kurtzman', '81_1679748296.jpg', 'Writer', 'Alex Kurtzman (born September 7, 1973) is an American film and television screenwriter and producer. Kurtzman was born and raised in Los Angeles, California, where he met his high school friend and long time collaborator Roberto Orci. He attended Wesleyan University.\n\nIn 2011, Forbes magazine described Orci and Kurtzman as \"Hollywood\'s Secret Weapons\" who together \"are the quiet force behind $3 billion in box office.\" He and Orci frequently work with J. J. Abrams and Michael Bay on projects. Amongst other work, Kurtzman is the creator with Abrams and Orci of the FOX hit TV show Fringe.', 2, '2023-03-25 17:14:56', '2023-03-25 17:14:56'),
(229, 'Roberto Orci', '73_1679748296.jpg', 'Writer', 'Roberto Orci is an American film and television producer and screenwriter. Together with his friend and writing partner Alex Kurtzman, he has written several high-profile motion pictures recently, including The Island (which was directed by Michael Bay), as well as J.J Abrams\' Mission Impossible 3 and the critically-acclaimed 2009 Star Trek movie. His producing credits include Star Trek, The Legend of Zorro, Mission: Impossible III, Transformers, and Cowboys and Aliens. He is the creator alongside with J. J. Abrams and Alex Kurtzman of the FOX hit TV show Fringe.', 2, '2023-03-25 17:14:56', '2023-03-25 17:14:56'),
(231, 'Jon Voight', '15_1679748297.jpg', 'Actor', 'Jonathan Vincent \"Jon\" Voight is an American actor. He has received an Academy Award, out of four nominations, and three Golden Globe Awards, out of nine nominations.\n\nVoight came to prominence in the late 1960s with his performance as a would-be gigolo in Midnight Cowboy (1969). During the 1970s, he became a Hollywood star with his portrayals of a businessman mixed up with murder in Deliverance (1972), a paraplegic Vietnam veteran in Coming Home (1978), for which he won an Academy Award for Best Actor, and a penniless ex-boxing champion in The Champ (1979).\n\nAlthough his output slowed during the 1980s, Voight received critical acclaim for his performance as a ruthless bank robber in Runaway Train (1985). During the 1990s, he most notably starred as an unscrupulous showman attorney in The Rainmaker (1997).\n\nVoight gave critically acclaimed biographical performances during the 2000s, appearing as sportscaster Howard Cosell in Ali (2001), as Nazi officer Jürgen Stroop in Uprising (2001), and as Pope John Paul II in the television film of the same name (2005).\n\nVoight is the father of actress Angelina Jolie.', 2, '2023-03-25 17:14:57', '2023-03-25 17:14:57'),
(232, 'Anthony Anderson', '77_1679748297.jpg', 'Actor', 'Anthony Anderson (born August 15, 1970) is an American actor, comedian and game show host. He is best known for his leading roles in drama series such as Marlin Boulet on K-Ville, and as NYPD Detective Kevin Bernard on the NBC crime drama Law & Order and comedy sitcom television series Guys with Kids as well as leading roles in comedy series such as Andre \"Dre\" Johnson on Black-ish. He had major roles in feature films such as Me, Myself & Irene (2000), Kangaroo Jack (2003), Agent Cody Banks 2: Destination London (2004), The Departed (2006), Transformers (2007), and Scream 4 (2011).\n\nAnderson is also a regular judge on Food Network\'s Iron Chef America and also has more roles on other television programs such as All About the Andersons, The Bernie Mac Show, and The Shield. Since June 2016, he has served as host of the ABC version of the game show To Tell the Truth. In addition, he has served as a guest panelist for various game shows.\n\nDescription above is from the Wikipedia article Anthony Anderson, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:14:57', '2023-03-25 17:14:57'),
(233, 'John Turturro', '51_1679748297.jpg', 'Actor', 'John Michael Turturro (born February 28, 1957) is an American-Italian actor, writer and filmmaker, known for his association with the independent film movement. He has appeared in over sixty feature films and has worked frequently with the Coen brothers, Adam Sandler and Spike Lee.\n\nHe began his acting career on-screen in the early 1980s, and received early critical recognition with the independent film Five Corners (1987). Turturro\'s mainstream breakthrough came with Lee\'s Do the Right Thing (1989) and the Coens\' Miller\'s Crossing (1990) and Barton Fink (1991), for which he won the Best Actor Award at the Cannes Film Festival. His subsequent roles included Herb Stempel in Quiz Show (1994), Jesus Quintana in The Big Lebowski (1998) and The Jesus Rolls (2020), Pete Hogwallop in O Brother, Where Art Thou? (2000), Seymour Simmons in the Transformers film series and is set to play Carmine Falcone in The Batman. In 2016, in a lead role, he portrayed a lawyer in the HBO miniseries The Night Of and had a recurring role in the miniseries The Plot Against America in 2020.\n\nAn Emmy Award winner, Turturro has also been nominated for four Screen Actors Guild Awards, two Golden Globe Awards, and four Independent Spirit Awards. He directed Mac (1992), which won the Golden Camera Award at the Cannes Film Festival, Illuminata (1998), and Romance and Cigarettes (2005).\n\nDescription above from the Wikipedia article John Turturro, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:14:57', '2023-03-25 17:14:57'),
(234, 'Duane Capizzi', '', 'Writer', 'From Wikipedia, the free encyclopedia.\n\nDuane Capizzi is an American writer and television producer. He is best known for his extensive work on animated series and movies for DC Comics. He is the co-showrunner of the most recent Batman animated series, The Batman and writer of the first DC Universe animated feature, Superman: Doomsday (based on The Death of Superman saga, and directed by Bruce Timm).Other animated series producing/writing credits include \"Jackie Chan Adventures,\" \"The Big Guy &amp; Rusty the Boy Robot,\" \"Men In Black: The Animated Series,\" Darkwing Duck, Aladdin, and series development on the CG animated Roughnecks: The Starship Troopers Chronicles. He began his career in animation writing scripts for \"Robotech II: The Sentinels\" for Harmony Gold. The series was never produced, but led to writing and story-editing on the animated \"Alf\" spinoff/prequel. he is currently working on the newest Transformers cgi series named Transformers: Prime.\n\nDescription above from the Wikipedia article Duane Capizzi, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:15:41', '2023-03-25 17:15:41'),
(235, 'Peter Cullen', '71_1679748341.jpg', 'Actor', '​From Wikipedia, the free encyclopedia  Peter Claver Cullen (born December 1, 1944) is a Canadian voice actor, known as the voice of Optimus Prime in the original Transformers series, as Eeyore in the Winnie-the-Pooh franchise and the narrator in both American Voltron series. Cullen reprised his role as Optimus Prime in Michael Bay\'s live-action Transformers film series and the newly released Transformers: War for Cybertron video game. He was once again cast as Optimus Prime for the new TV series, Transformers: Prime in 2010.  Description above from the Wikipedia article Peter Cullen, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:15:41', '2023-03-25 17:15:41'),
(236, 'Frank Welker', '70_1679748342.jpg', 'Actor', 'Franklin Wendell Welker (born March 12, 1946) is an American voice actor with an extensive career spanning nearly six decades. As of 2021, Welker holds over 860 film, television, and video game credits, making him one of the most prolific voice actors of all time. With a total worldwide box-office gross of $17.4 billion, he is also the third highest-grossing film voice actor of all time.\n\nWelker is best known for voicing Fred Jones in the Scooby-Doo franchise since its inception in 1969, and Scooby-Doo himself since 2002. In 2020, Welker reprised the latter role in the CGI-animated film Scoob!, the only original voice actor from the series in the movie\'s cast. He has also voiced Oswald the Lucky Rabbit in Epic Mickey and its sequel, Megatron, Galvatron and Soundwave in the Transformers franchise, Shao Kahn and Reptile in the 1995 Mortal Kombat film, Curious George in the Curious George franchise, Garfield on The Garfield Show, Nibbler on Futurama, the titular character in Jabberjaw, Speed Buggy in the Scooby-Doo franchise, Astro and Orbitty on The Jetsons, Mushmouse on Punkin\' Puss & Mushmouse, and various characters in The Smurfs as well as numerous animal vocal effects in many works. In 2016, he was honored with an Emmy Award for his lifetime achievement.\n\nDescription above from the Wikipedia article Frank Welker, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:15:42', '2023-03-25 17:15:42'),
(237, 'Steve Blum', '56_1679748342.jpg', 'Actor', 'Steve Blum is an American voice actor, especially for animated film and television productions.', 2, '2023-03-25 17:15:42', '2023-03-25 17:15:42'),
(238, 'Rakeysh Omprakash Mehra', '22_1679748404.jpg', 'Director', 'From Wikipedia, the free encyclopedia.  Rakeysh Omprakash Mehra (born 7 July 1963) in a Hindu Punjabi Family in New Delhi. He is an Indian filmmaker and screenwriter. He is best known for writing and directing Rang De Basanti (2006), for which he won Best Director awards at the 2006 Filmfare Awards and National Film Awards and received a BAFTA Award nomination for Best Foreign Language Film. He is also the writer and director of the films Aks (2001) and Delhi-6 (2009).\n\nDescription above from the Wikipedia article Rakeysh Omprakash Mehra, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 2, '2023-03-25 17:16:44', '2023-03-25 17:16:44'),
(239, 'Prasoon Joshi', '', 'Writer', '', 2, '2023-03-25 17:16:44', '2023-03-25 17:16:44'),
(240, 'Farhan Akhtar', '42_1679748404.jpg', 'Actor', 'Farhan Akhtar is an Indian film director, screenwriter, producer, actor, playback singer and television host. Born in Mumbai to screenwriters Javed Akhtar and Honey Irani, he grew up under the influence of the Hindi film industry. He began his career in Bollywood by working as an assistant director in Lamhe (1991) and Himalay Putra (1997).\n\nAkhtar, after establishing a production company named Excel Entertainment along with Ritesh Sidhwani, made his directorial debut with Dil Chahta Hai (2001) and received critical acclaim for portraying modern youth. The film also won a National award. Following it, he made Lakshya (2004) and had his Hollywood debut through the soundtrack of Bride and Prejudice (2004), for which he wrote the lyrics. He went on to make the commercially successful Don (2006). He directed a short film titled Positive (2007), to spread awareness on HIV-AIDS.', 2, '2023-03-25 17:16:44', '2023-03-25 17:16:44'),
(241, 'Japtej Singh', '', 'Actor', '', 2, '2023-03-25 17:16:45', '2023-03-25 17:16:45'),
(242, 'Divya Dutta', '86_1679748405.jpg', 'Actor', '', 2, '2023-03-25 17:16:45', '2023-03-25 17:16:45'),
(243, 'Ritesh Shah', '', 'Writer', 'Writer, Pink (2016)', 2, '2023-05-30 14:54:18', '2023-05-30 14:54:18'),
(244, 'Abhishek Dudhaiya', '', 'Director', 'Director, Bhuj: The Pride of India (2021)', 2, '2023-05-30 14:55:35', '2023-05-30 14:55:35'),
(245, 'Raman Kumar', '', 'Writer', 'Second Unit or Assistant Director, Laal Singh Chaddha (2022)', 2, '2023-05-30 14:55:38', '2023-05-30 14:55:38'),
(246, 'Satyum Gupta', '161688367257.jpg', 'Writer', 'Writer, Ram Setu (2022)', 2, '2023-05-30 15:36:01', '2023-07-03 06:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Drama', '1685449146.jpeg', 2, '2022-04-18 06:55:20', '2023-07-03 04:57:48'),
(2, 'Action', '1685449163.png', 2, '2022-04-18 06:55:20', '2023-07-03 04:57:48'),
(3, 'Romance', '1685449189.jpeg', 2, '2022-08-03 16:26:01', '2023-07-03 04:57:48'),
(6, 'Comedy', '1685449212.jpg', 2, '2022-08-06 09:03:40', '2023-07-03 04:57:48'),
(7, 'Suspense', '1685449232.jpeg', 2, '2022-08-06 17:14:08', '2023-07-03 04:57:48'),
(8, 'Horror', '1685449246.jpeg', 2, '2022-08-06 17:14:22', '2023-07-03 04:57:48'),
(9, 'Crime', '1685449267.jpeg', 2, '2022-09-27 07:23:08', '2023-07-03 04:57:48'),
(10, 'Documentary', '1685449282.jpg', 2, '2022-09-27 07:23:26', '2023-07-03 04:57:48'),
(11, 'Mythology', '1676090347.jpg', 2, '2022-09-27 07:23:39', '2023-07-03 04:57:48'),
(12, 'Thriller', '1676090360.jpg', 2, '2022-09-27 07:23:53', '2023-07-03 04:57:48'),
(13, 'Historical', '1676090330.jpg', 2, '2022-09-27 07:27:54', '2023-07-03 04:57:48'),
(14, 'Biopic', '1676090307.jpg', 2, '2022-09-27 07:28:11', '2023-07-03 04:57:48'),
(15, 'Trending News', '1685449361.jpg', 2, '2022-09-29 16:37:20', '2023-07-03 04:57:48'),
(16, 'Breaking News', '1685449419.jpg', 2, '2022-09-29 16:37:47', '2023-07-03 04:57:48'),
(17, 'Sport', '1685449430.png', 2, '2022-09-29 17:26:20', '2023-07-03 04:57:48'),
(19, 'Adventure', '1685449443.jpeg', 2, '2023-01-20 11:34:20', '2023-07-03 04:57:48'),
(20, 'Family', '1685449470.png', 2, '2023-01-23 09:58:44', '2023-07-03 04:57:48'),
(21, 'Fantasy', '1685449478.jpeg', 2, '2023-02-11 10:12:26', '2023-07-03 04:57:48'),
(22, 'Biography', '1685449400.jpg', 2, '2023-02-11 10:13:12', '2023-07-03 04:57:48'),
(23, 'History', '1685450041.jpg', 2, '2023-02-27 18:46:15', '2023-07-03 04:57:48'),
(24, 'Mystery', '1685450010.jpg', 2, '2023-03-12 10:09:21', '2023-07-03 04:57:48'),
(25, 'Animation', '1685450032.jpg', 2, '2023-03-25 17:11:26', '2023-07-03 04:57:48'),
(27, 'Short', '1685449382.jpeg', 2, '2023-05-30 15:32:40', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `landscape` varchar(255) NOT NULL,
  `is_title` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `name`, `image`, `landscape`, `is_title`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Aaj Tak', '1660052192.jpeg', 'land_1664191041.jpeg', 2, 1, '2022-08-09 17:06:32', '2023-07-03 04:57:48'),
(7, 'India TV', '1660052439.jpeg', 'land_1664198985.jpeg', 2, 1, '2022-08-09 17:10:39', '2023-07-03 04:57:48'),
(8, 'Republic Bhart', '1664198965.png', 'land_1664198965.png', 2, 1, '2022-08-09 17:12:17', '2023-07-03 04:57:48'),
(9, 'Times Now India', '1664198942.jpeg', 'land_1664198942.jpeg', 2, 1, '2022-08-09 17:13:41', '2023-07-03 04:57:48'),
(10, 'Sony Ten 1', '1664198885.png', 'land_1664198885.png', 2, 1, '2022-08-10 09:24:29', '2023-07-03 04:57:48'),
(11, 'DD Sport', '1664198856.jpeg', 'land_1664198856.jpeg', 2, 1, '2022-08-10 09:25:55', '2023-07-03 04:57:48'),
(12, 'NBC Sport', '1660111012.png', 'land_1664198677.png', 2, 1, '2022-08-10 09:26:52', '2023-07-03 04:57:48'),
(13, 'Star Sport', '1664191297.jpeg', 'land_1664191297.jpeg', 2, 1, '2022-08-10 09:28:38', '2023-07-03 04:57:48'),
(14, 'Discovery', '1664198833.jpeg', 'land_1664198833.jpeg', 2, 1, '2022-08-10 09:29:37', '2023-07-03 04:57:48'),
(15, 'Animal Planets', '1664198811.png', 'land_1664198811.png', 1, 1, '2022-08-10 09:30:29', '2023-07-03 04:57:48'),
(16, 'Histry 18', '1664191266.jpeg', 'land_1664191266.jpeg', 1, 1, '2022-08-10 09:31:29', '2023-07-03 04:57:48'),
(17, 'Pogo', '1664198789.png', 'land_1664198789.png', 1, 1, '2022-08-10 09:33:55', '2023-07-03 04:57:48'),
(18, 'Nick Jr.', '1664198760.png', 'land_1664198760.png', 2, 1, '2022-08-10 09:34:40', '2023-07-03 04:57:48'),
(19, 'Disney Cartton', '1664198732.png', 'land_1664198732.png', 2, 1, '2022-08-10 09:35:49', '2023-07-03 04:57:48'),
(20, 'CN Cartton', '1664198704.png', 'land_1664198704.png', 2, 1, '2022-08-10 09:36:30', '2023-07-03 04:57:48'),
(21, 'Zee Cinema', '1664191244.jpeg', 'land_1664191244.jpeg', 2, 1, '2022-08-10 09:39:42', '2023-07-03 04:57:48'),
(22, '& Pictures', '1664191221.png', 'land_1664191221.png', 2, 1, '2022-08-10 09:40:31', '2023-07-03 04:57:48'),
(23, 'Sony Max', '1664191180.png', 'land_1664191180.png', 2, 1, '2022-08-10 09:41:12', '2023-07-03 04:57:48'),
(24, 'UTV Movies', '1664191157.jpeg', 'land_1664191157.jpeg', 2, 1, '2022-08-10 09:42:04', '2023-07-03 04:57:48'),
(25, 'Color Cineplex', '1664191133.jpeg', 'land_1664191133.jpeg', 2, 1, '2022-08-10 09:43:07', '2023-07-03 04:57:48'),
(26, '9XM', '1664191114.jpeg', 'land_1664191114.jpeg', 2, 1, '2022-08-10 09:43:57', '2023-07-03 04:57:48'),
(27, 'Musti Song', '1664191095.jpeg', 'land_1664191095.jpeg', 2, 1, '2022-08-10 09:45:35', '2023-07-03 04:57:48'),
(28, 'Sony Music', '1664191068.jpeg', 'land_1664191068.jpeg', 2, 1, '2022-08-10 09:46:13', '2023-07-03 04:57:48'),
(29, 'Zoom', '1664191024.jpeg', 'land_1664191024.jpeg', 2, 1, '2022-08-10 09:46:59', '2023-07-03 04:57:48'),
(30, 'Sony SAB', '1664191005.jpeg', 'land_1664191005.jpeg', 2, 1, '2022-08-10 09:50:42', '2023-07-03 04:57:48'),
(31, 'Sony Liv', '1664190964.jpeg', 'land_1664190964.jpeg', 2, 1, '2022-08-10 10:22:45', '2023-07-03 04:57:48'),
(32, 'Netflix', '1664185316.png', 'land_1664185316.png', 2, 1, '2022-08-10 10:36:14', '2023-07-03 04:57:48'),
(33, 'Test Channel', '1665822765.jpeg', 'land_1665822765.jpeg', 2, 1, '2022-10-15 12:02:45', '2023-07-03 04:57:48'),
(36, 'T Sporst', '1668451757.png', 'land_1668451757.png', 2, 1, '2022-11-14 23:19:17', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `channel_banner`
--

CREATE TABLE `channel_banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `channel_banner`
--

INSERT INTO `channel_banner` (`id`, `name`, `image`, `link`, `order_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aaj Tak', '1676289404.jpeg', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 1, 2, '2022-04-18 07:00:26', '2023-03-11 10:17:14'),
(3, 'Test Channel', '1676289462.jpg', 'https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8', 1, 2, '2022-04-18 07:00:26', '2023-02-13 17:27:42'),
(4, 'Live News 2', '1665544430.jpg', 'https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8', 1, 2, '2022-04-18 07:00:26', '2022-10-12 06:43:50'),
(6, 'Times Now India', '1678510013.jpg', 'https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8', 1, 2, '2022-04-18 07:00:26', '2023-03-11 10:16:53'),
(7, 'Times Now India', '1676289343.jpg', 'https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8', 1, 2, '2022-04-18 07:00:26', '2023-02-13 17:25:43'),
(9, 'India TV', '1676287221.jpg', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 2, 2, '2022-10-15 12:52:53', '2023-03-11 10:15:09'),
(10, 'Aaj Tak', '1676287200.jpg', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 1, 2, '2022-11-15 00:02:57', '2023-03-11 10:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `channel_section`
--

CREATE TABLE `channel_section` (
  `id` int(11) NOT NULL,
  `channel_id` text NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'Fk = Type Table',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming',
  `title` text NOT NULL,
  `video_id` text NOT NULL COMMENT 'Multiple Id',
  `tv_show_id` text NOT NULL,
  `language_id` text NOT NULL,
  `category_ids` text NOT NULL,
  `section_type` int(11) NOT NULL DEFAULT 1 COMMENT '1- Normal Screen, 2- Banner Screen',
  `screen_layout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `channel_section`
--

INSERT INTO `channel_section` (`id`, `channel_id`, `type_id`, `video_type`, `title`, `video_id`, `tv_show_id`, `language_id`, `category_ids`, `section_type`, `screen_layout`, `status`, `created_at`, `updated_at`) VALUES
(1, '21', 1, 1, 'Movies', '2,12,13,14,15,16,17,22', '', '', '', 1, 'potrait', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(2, '30', 4, 2, 'Sony Tv Top Show', '', '9', '', '', 1, 'potrait', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(3, '7', 1, 1, 'Sony Latest Movies', '14,15,16,17,19,20,21,22,23,24', '', '', '', 1, 'landscape', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(4, '4', 2, 1, 'DD Girnar show', '10,39,41,43,44', '', '', '', 1, 'landscape', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(5, '4', 2, 1, 'Top Movies', '39,41,44', '', '', '', 1, 'potrait', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(7, '4', 2, 1, 'Namaste Bharat', '25,39,40,41,42,43,44', '', '', '', 1, 'potrait', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(8, '23', 1, 1, 'TV Genres', '1,9,13,15,16,17', '', '', '', 1, 'landscape', 1, '2022-04-19 13:37:57', '2023-07-03 04:57:48'),
(9, '33', 7, 1, 'Top Shorts', '53,54', '', '', '', 1, 'landscape', 1, '2022-10-15 12:54:32', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '	Fk = Type Table',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming	',
  `other_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `user_id`, `video_id`, `type_id`, `video_type`, `other_id`, `created_at`, `updated_at`) VALUES
(34, 8, 1, 1, 1, 0, '2022-08-03 11:09:43', '2023-07-03 04:57:48'),
(52, 32, 70, 1, 1, 0, '2022-09-09 04:37:05', '2023-07-03 04:57:48'),
(53, 32, 1, 1, 1, 0, '2022-09-09 04:37:17', '2023-07-03 04:57:48'),
(54, 1, 1, 1, 1, 0, '2022-09-09 05:31:12', '2023-07-03 04:57:48'),
(65, 32, 2, 1, 1, 0, '2022-09-09 06:31:36', '2023-07-03 04:57:48'),
(66, 32, 11, 1, 1, 0, '2022-09-09 06:33:05', '2023-07-03 04:57:48'),
(71, 71, 1, 1, 1, 0, '2022-09-15 13:56:48', '2023-07-03 04:57:48'),
(72, 32, 7, 1, 1, 0, '2022-09-16 05:56:53', '2023-07-03 04:57:48'),
(110, 1, 1, 1, 2, 0, '2022-09-22 08:37:22', '2023-07-03 04:57:48'),
(112, 1, 1, 2, 2, 0, '2022-09-23 05:26:53', '2023-07-03 04:57:48'),
(116, 4, 11, 2, 2, 0, '2022-09-23 06:48:02', '2023-07-03 04:57:48'),
(119, 4, 1, 2, 2, 0, '2022-09-23 09:33:29', '2023-07-03 04:57:48'),
(120, 4, 2, 2, 2, 0, '2022-09-23 09:35:43', '2023-07-03 04:57:48'),
(121, 4, 1, 2, 2, 0, '2022-09-23 09:41:23', '2023-07-03 04:57:48'),
(122, 4, 1, 2, 2, 0, '2022-09-23 09:41:47', '2023-07-03 04:57:48'),
(131, 4, 20, 1, 1, 0, '2022-09-26 07:00:25', '2023-07-03 04:57:48'),
(135, 32, 15, 1, 1, 0, '2022-09-26 13:39:05', '2023-07-03 04:57:48'),
(136, 32, 1, 2, 2, 9, '2022-09-26 13:42:53', '2023-07-03 04:57:48'),
(179, 32, 17, 1, 1, 0, '2022-09-28 08:08:30', '2023-07-03 04:57:48'),
(196, 8, 1, 2, 2, 10, '2022-09-28 09:54:09', '2023-07-03 04:57:48'),
(197, 8, 2, 2, 2, 10, '2022-09-28 09:54:44', '2023-07-03 04:57:48'),
(198, 8, 17, 1, 1, 0, '2022-09-28 09:57:12', '2023-07-03 04:57:48'),
(214, 4, 2, 3, 1, 0, '2022-09-30 05:41:52', '2023-07-03 04:57:48'),
(215, 4, 1, 1, 1, 0, '2022-09-30 05:42:14', '2023-07-03 04:57:48'),
(217, 4, 14, 1, 1, 0, '2022-09-30 05:56:19', '2023-07-03 04:57:48'),
(220, 4, 25, 2, 1, 0, '2022-10-06 09:48:44', '2023-07-03 04:57:48'),
(221, 118, 1, 1, 1, 0, '2022-10-15 10:31:39', '2023-07-03 04:57:48'),
(222, 137, 24, 1, 1, 0, '2022-11-10 04:49:24', '2023-07-03 04:57:48'),
(223, 141, 17, 1, 1, 0, '2022-11-10 11:15:05', '2023-07-03 04:57:48'),
(224, 151, 24, 1, 1, 0, '2022-11-11 10:15:36', '2023-07-03 04:57:48'),
(225, 175, 1, 1, 1, 0, '2022-11-14 00:18:02', '2023-07-03 04:57:48'),
(229, 198, 24, 1, 1, 0, '2022-11-19 21:34:28', '2023-07-03 04:57:48'),
(230, 200, 1, 1, 1, 0, '2022-11-20 10:38:31', '2023-07-03 04:57:48'),
(231, 208, 17, 1, 1, 0, '2022-11-22 00:36:48', '2023-07-03 04:57:48'),
(232, 203, 1, 1, 1, 0, '2022-11-22 09:47:47', '2023-07-03 04:57:48'),
(233, 123, 17, 1, 1, 0, '2023-02-11 12:28:24', '2023-07-03 04:57:48'),
(240, 118, 21, 1, 1, 0, '2023-02-11 22:03:02', '2023-07-03 04:57:48'),
(243, 217, 1, 21, 1, 0, '2023-03-01 14:44:15', '2023-07-03 04:57:48'),
(285, 217, 21, 1, 1, 0, '2023-03-02 19:54:27', '2023-07-03 04:57:48'),
(329, 217, 66, 1, 1, 0, '2023-03-17 12:33:01', '2023-07-03 04:57:48'),
(330, 217, 17, 1, 1, 0, '2023-03-17 12:33:21', '2023-07-03 04:57:48'),
(360, 217, 1, 4, 2, 13, '2023-03-17 18:25:01', '2023-07-03 04:57:48'),
(361, 217, 2, 4, 2, 13, '2023-03-17 18:28:14', '2023-07-03 04:57:48'),
(362, 217, 1, 4, 2, 10, '2023-03-17 18:35:21', '2023-07-03 04:57:48'),
(363, 217, 2, 4, 2, 10, '2023-03-17 18:36:22', '2023-07-03 04:57:48'),
(364, 340, 29, 5, 1, 0, '2023-03-25 23:31:09', '2023-07-03 04:57:48'),
(366, 582, 3, 1, 1, 0, '2023-03-26 23:40:21', '2023-07-03 04:57:48'),
(367, 590, 67, 1, 1, 0, '2023-03-27 11:31:22', '2023-07-03 04:57:48'),
(368, 604, 67, 1, 1, 0, '2023-03-29 19:46:47', '2023-07-03 04:57:48'),
(370, 592, 43, 2, 1, 0, '2023-03-31 07:12:32', '2023-07-03 04:57:48'),
(371, 592, 22, 1, 1, 0, '2023-03-31 07:13:58', '2023-07-03 04:57:48'),
(372, 637, 20, 1, 1, 0, '2023-04-02 08:06:58', '2023-07-03 04:57:48'),
(373, 638, 22, 1, 1, 0, '2023-04-02 19:11:23', '2023-07-03 04:57:48'),
(374, 649, 66, 1, 1, 0, '2023-04-04 23:35:13', '2023-07-03 04:57:48'),
(375, 123, 66, 1, 1, 0, '2023-04-06 08:35:22', '2023-07-03 04:57:48'),
(377, 692, 67, 1, 1, 0, '2023-04-13 03:27:58', '2023-07-03 04:57:48'),
(378, 698, 67, 1, 1, 0, '2023-04-13 23:47:28', '2023-07-03 04:57:48'),
(379, 699, 20, 1, 1, 0, '2023-04-14 00:53:53', '2023-07-03 04:57:48'),
(381, 722, 29, 5, 1, 0, '2023-04-18 08:37:27', '2023-07-03 04:57:48'),
(383, 725, 21, 1, 1, 0, '2023-04-18 20:32:33', '2023-07-03 04:57:48'),
(385, 444, 2, 1, 1, 0, '2023-04-19 10:06:22', '2023-07-03 04:57:48'),
(388, 123, 23, 1, 1, 0, '2023-04-21 21:03:44', '2023-07-03 04:57:48'),
(390, 787, 2, 1, 1, 0, '2023-05-01 16:54:44', '2023-07-03 04:57:48'),
(391, 754, 67, 1, 1, 0, '2023-05-05 16:07:17', '2023-07-03 04:57:48'),
(392, 0, 2, 4, 2, 10, '2023-05-09 11:23:15', '2023-07-03 04:57:48'),
(393, 836, 37, 1, 1, 0, '2023-05-12 04:12:10', '2023-07-03 04:57:48'),
(394, 149, 66, 1, 1, 0, '2023-05-13 09:54:17', '2023-07-03 04:57:48'),
(395, 877, 46, 5, 1, 0, '2023-05-22 16:11:39', '2023-07-03 04:57:48'),
(396, 885, 46, 5, 1, 0, '2023-05-25 15:39:56', '2023-07-03 04:57:48'),
(397, 891, 67, 1, 1, 0, '2023-05-27 17:28:58', '2023-07-03 04:57:48'),
(398, 929, 2, 1, 1, 0, '2023-06-11 09:45:27', '2023-07-03 04:57:48'),
(399, 931, 23, 1, 1, 0, '2023-06-11 16:40:19', '2023-07-03 04:57:48'),
(400, 932, 20, 1, 1, 0, '2023-06-12 08:37:33', '2023-07-03 04:57:48'),
(401, 925, 2, 1, 1, 0, '2023-06-12 14:46:51', '2023-07-03 04:57:48'),
(402, 947, 2, 1, 1, 0, '2023-06-17 11:28:27', '2023-07-03 04:57:48'),
(404, 956, 20, 1, 1, 0, '2023-06-18 00:01:16', '2023-07-03 04:57:48'),
(405, 834, 39, 2, 1, 0, '2023-06-18 00:55:25', '2023-07-03 04:57:48'),
(406, 992, 66, 1, 1, 0, '2023-06-27 17:40:18', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'DTLive', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(2, 'host_email', 'support@divinetechs.com', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(3, 'app_version', '1.0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(4, 'Author', 'DivineTechs', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(5, 'email', 'support@divinetechs.com', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(6, 'contact', '917984798190', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(7, 'app_desripation', 'DivineTechs, a top web & mobile app development company offering innovative solutions for diverse industry verticals. We have creative and dedicated group of developers who are mastered in Apps Developments and Web Development with a nice in delivering quality solutions to customers across the globe.', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(8, 'privacy_policy', 'support@divinetechs.com', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(10, 'instrucation', 'DTLive Instruction', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(11, 'app_logo', '741688368502.jpg', '2022-08-03 12:38:42', '2023-07-03 07:15:02'),
(12, 'website', 'https://www.divinetechs.com/', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(13, 'currency', 'USD', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(14, 'currency_code', '$', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(25, 'banner_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(26, 'banner_adid', 'ca-app-pub-3940256099942544/6300978111', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(27, 'interstital_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(28, 'interstital_adid', 'ca-app-pub-3940256099942544/1033173712', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(29, 'interstital_adclick', '5', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(30, 'reward_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(31, 'reward_adid', 'ca-app-pub-3940256099942544/5224354917', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(32, 'reward_adclick', '5', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(33, 'ios_banner_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(34, 'ios_banner_adid', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(35, 'ios_interstital_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(36, 'ios_interstital_adid', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(37, 'ios_interstital_adclick', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(38, 'ios_reward_ad', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(39, 'ios_reward_adid', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(40, 'ios_reward_adclick', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(41, 'fb_native_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(42, 'fb_native_id', '684829922314226_916951262435423', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(43, 'fb_banner_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(44, 'fb_banner_id', '684829922314226_916388455825037', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(45, 'fb_interstiatial_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(46, 'fb_interstiatial_id', '684829922314226_916951759102040', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(47, 'fb_rewardvideo_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(48, 'fb_rewardvideo_id', '684829922314226_916952092435340', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(49, 'fb_native_full_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(50, 'fb_native_full_id', '684829922314226_916952472435302', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(51, 'fb_ios_native_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(52, 'fb_ios_native_id', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(53, 'fb_ios_banner_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(54, 'fb_ios_banner_id', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(55, 'fb_ios_interstiatial_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(56, 'fb_ios_interstiatial_id', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(57, 'fb_ios_rewardvideo_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(58, 'fb_ios_rewardvideo_id', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(59, 'fb_ios_native_full_status', '0', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(60, 'fb_ios_native_full_id', '', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(61, 'onesignal_apid', '08e33367-9a65-431f-a995-bbe95a0f0769', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(62, 'onesignal_rest_key', 'YjcwZWU3NjktYzM1NS00NGIyLTlkZGYtMDkyMzRmYTFjNzQz', '2022-08-03 12:38:42', '2023-07-03 04:57:48'),
(72, 'imdb_api_key', 'k_6gy4i5gl', '2023-05-30 10:39:32', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hindi', '1675498576.jpeg', 1, '2022-04-18 06:56:55', '2023-07-03 04:57:48'),
(3, 'English', '1675498603.jpg', 2, '2022-05-04 10:12:17', '2023-07-03 04:57:48'),
(4, 'Tamil', '1675498626.jpg', 1, '2022-05-04 10:12:42', '2023-07-03 04:57:48'),
(6, 'Panjabi', '1675498681.png', 1, '2022-08-06 17:38:26', '2023-07-03 04:57:48'),
(7, 'Gujarati', '1675498702.png', 1, '2022-08-10 13:40:39', '2023-07-03 04:57:48'),
(8, 'Marathi', '1675498734.png', 1, '2022-08-10 13:40:59', '2023-07-03 04:57:48'),
(9, 'Telagu', '1675498750.png', 1, '2022-08-10 13:41:34', '2023-07-03 04:57:48'),
(10, 'Malayalam', '1675498768.jpg', 1, '2022-09-27 07:31:56', '2023-07-03 04:57:48'),
(11, 'Bengali', '1675498787.png', 1, '2022-09-27 07:34:08', '2023-07-03 04:57:48'),
(12, 'kannada', '1675498847.png', 1, '2022-09-27 07:34:40', '2023-07-03 04:57:48'),
(13, 'Bhojpuri', '1675498824.jpg', 1, '2022-09-27 07:39:01', '2023-07-03 04:57:48'),
(15, 'French', '1676462583.jpg', 1, '2022-11-10 15:22:50', '2023-07-03 04:57:48'),
(16, 'castellano', '1668367229.png', 1, '2022-11-13 23:50:29', '2023-07-03 04:57:48'),
(17, 'Turkish', '1668415748.png', 1, '2022-11-14 13:19:08', '2023-07-03 04:57:48'),
(18, 'Mandarin', '', 2, '2023-01-20 13:45:49', '2023-07-03 04:57:48'),
(19, 'Spanish', '', 2, '2023-02-25 14:12:17', '2023-07-03 04:57:48'),
(20, 'Russian', '', 2, '2023-02-25 14:12:17', '2023-07-03 04:57:48'),
(21, 'Serbian', '', 2, '2023-02-25 14:12:17', '2023-07-03 04:57:48'),
(23, 'Telugu', '', 2, '2023-05-30 15:05:25', '2023-07-03 04:57:48'),
(24, 'German', '', 2, '2023-05-30 15:37:22', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `type_id` text NOT NULL,
  `watch_on_laptop_tv` varchar(255) NOT NULL,
  `ads_free_movies_shows` int(11) NOT NULL,
  `no_of_device` int(11) NOT NULL,
  `video_qulity` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `android_product_package` varchar(255) NOT NULL,
  `ios_product_package` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `type_id`, `watch_on_laptop_tv`, `ads_free_movies_shows`, `no_of_device`, `video_qulity`, `type`, `time`, `android_product_package`, `ios_product_package`, `status`, `created_at`, `updated_at`, `is_delete`) VALUES
(1, 'VIP', 299, '1,2', '0', 0, 2, '720p', 'Month', '1', 'android.test.purchased', 'com.example.productA', 1, '2022-05-19 14:05:51', '2023-07-03 04:57:48', 0),
(2, 'SUPER', 899, '1,2,3', '1', 0, 3, '1080p', 'Month', '6', 'android.test.purchased', 'com.example.productB', 1, '2022-05-19 14:06:22', '2023-07-03 04:57:48', 0),
(3, 'PREMIUM', 1499, '1,2,3,4,5,7', '1', 1, 4, '2160p', 'Year', '1', 'android.test.purchased', 'com.example.productC', 1, '2022-05-19 14:07:01', '2023-07-03 04:57:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_detail`
--

CREATE TABLE `package_detail` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_key` text NOT NULL,
  `package_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `package_detail`
--

INSERT INTO `package_detail` (`id`, `package_id`, `package_key`, `package_value`, `created_at`, `updated_at`) VALUES
(124, 3, 'All Content', '1', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(125, 3, 'Movies,News,Sport,TV Show,Kids,Shorts', '1', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(126, 3, 'Watch on tv or laptop ', '1', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(127, 3, 'Ads free movies and shows (except sports)', '1', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(128, 3, 'number of devices that can be logged in', '4', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(129, 3, 'max video quality', '2160p', '2023-02-08 13:23:11', '2023-07-03 04:57:48'),
(136, 1, 'All Content', '1', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(137, 1, 'Movies,News', '1', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(138, 1, 'Watch on tv or laptop ', '0', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(139, 1, 'Ads free movies and shows (except sports)', '0', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(140, 1, 'number of devices that can be logged in', '2', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(141, 1, 'max video quality', '720p', '2023-02-08 13:23:26', '2023-07-03 04:57:48'),
(148, 2, 'All Content', '1', '2023-02-14 12:01:17', '2023-07-03 04:57:48'),
(149, 2, 'Movies,News,Sport', '1', '2023-02-14 12:01:17', '2023-07-03 04:57:48'),
(150, 2, 'Watch on tv or laptop ', '1', '2023-02-14 12:01:17', '2023-07-03 04:57:48'),
(151, 2, 'Ads free movies and shows (except sports)', '0', '2023-02-14 12:01:17', '2023-07-03 04:57:48'),
(152, 2, 'number of devices that can be logged in', '3', '2023-02-14 12:01:17', '2023-07-03 04:57:48'),
(153, 2, 'max video quality', '1080p', '2023-02-14 12:01:17', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_name`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 'About Us', '<blockquote class=\"blockquote\"><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">DivineTechs, a top web &amp; mobile app development company offering innovative solutions for diverse industry verticals. We have creative and dedicated group of developers who are mastered in Apps Developments and Web Development with a nice in delivering quality solutions to customers across the globe.</span></h1></blockquote>', 1, '2022-09-26 04:31:44', '2023-07-03 04:57:48'),
(2, 'privacy-policy', 'Privacy Policy', '<h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\">Privacy Policy for DivineTechs</h1><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">At www.divinetechs.com, accessible from https://www.divinetechs.com/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by www.divinetechs.com and how we use it.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in www.divinetechs.com. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the&nbsp;<a href=\"https://www.privacypolicygenerator.info/\" style=\"color: rgb(51, 51, 51);\">Free Privacy Policy Generator</a>.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Consent</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Information we collect</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">How we use your information</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">We use the information we collect in various ways, including to:</p><ul style=\"margin-bottom: 10px; font-size: 16px;\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Log Files</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">www.divinetechs.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Advertising Partners Privacy Policies</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of www.divinetechs.com.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on www.divinetechs.com, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Note that www.divinetechs.com has no access to or control over these cookies that are used by third-party advertisers.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Third Party Privacy Policies</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">www.divinetechs.com\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">GDPR Data Protection Rights</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p></h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Children\'s Information</h2><h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 16px;\">www.divinetechs.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p></h1>', 1, '2022-09-26 04:31:44', '2023-07-03 04:57:48'),
(3, 'terms-and-conditions', 'Terms and Conditions', '<h1 style=\"font-size: 36px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); background-color: rgb(246, 246, 246);\">Terms and Conditions for DivineTechs</h1><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">At www.divinetechs.com, accessible from https://www.divinetechs.com/, one of our main priorities is the privacy of our visitors. This Terms and Conditions document contains types of information that is collected and recorded by www.divinetechs.com and how we use it.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">This Terms and Conditions applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in www.divinetechs.com. This policy is not applicable to any information collected offline or via channels other than this website.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Consent</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">By using our website, you hereby consent to our Terms and Conditions and agree to its terms.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Information we collect</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">How we use your information</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">We use the information we collect in various ways, including to:</p><ul style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Log Files</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">www.divinetechs.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Advertising Partners Privacy Policies</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">You may consult this list to find the Privacy Policy for each of the advertising partners of www.divinetechs.com.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on www.divinetechs.com, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Note that www.divinetechs.com has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Third Party Privacy Policies</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">www.divinetechs.com\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">GDPR Data Protection Rights</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 30px; background-color: rgb(246, 246, 246);\">Children\'s Information</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(246, 246, 246);\">www.divinetechs.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 1, '2022-09-26 04:31:44', '2023-07-03 04:57:48'),
(4, 'refund-policy', 'Refund Policy', 'Refund Policy', 1, '2023-01-21 10:21:24', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `payment_option`
--

CREATE TABLE `payment_option` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `visibility` varchar(255) NOT NULL,
  `is_live` varchar(255) NOT NULL,
  `live_key_1` varchar(255) NOT NULL,
  `live_key_2` varchar(255) NOT NULL,
  `live_key_3` varchar(255) NOT NULL,
  `test_key_1` varchar(255) NOT NULL,
  `test_key_2` varchar(255) NOT NULL,
  `test_key_3` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `payment_option`
--

INSERT INTO `payment_option` (`id`, `name`, `visibility`, `is_live`, `live_key_1`, `live_key_2`, `live_key_3`, `test_key_1`, `test_key_2`, `test_key_3`, `created_at`, `updated_at`) VALUES
(1, 'inapppurchage', '1', '0', '', '', '', '', '', '', '2022-07-29 06:26:54', '2023-07-03 04:57:48'),
(2, 'paypal', '0', '0', 'AbJ-1asur98kZGTTge40RvyNbNUuWYGiSbOXHzU22VP0tSX88Qz5_q6wYr3zK6UKA13g_Wt1KekkwpEq', '', '', 'AcLSt3E1Ts8thtUho8tJoAO4VufqlN4ptSzVk6Apb_eKvv2L4V4N8iA21fioZ53HscayoKuJ2SVokLZ3', '', '', '2022-07-29 06:26:54', '2023-07-03 04:57:48'),
(3, 'razorpay', '1', '0', '', '', '', 'rzp_test_E7TfP2p9bA9q75', 'RQwPNtNJ9ENzY7v4EF0nFAmC', '', '2022-07-29 06:27:09', '2023-07-03 04:57:48'),
(4, 'flutterwave', '0', '0', 'FLWPUBK-4ebafdb40fe04a135a27dda77cdbc80f-X', 'fa9e0ef7047255bcb7e65976', '', 'FLWPUBK_TEST-5a2cf82cce7c400595092018bd4d1941-X', 'FLWSECK_TEST5d9c80d951ff', '', '2022-07-29 06:27:09', '2023-07-03 04:57:48'),
(5, 'payumoney', '0', '0', '5840293', 'FBdVn480', '0UeejR3Tfe', '5840293', 'FBdVn480', '0UeejR3Tfe', '2022-07-29 06:27:17', '2023-07-03 04:57:48'),
(6, 'paytm', '0', '0', 'fazUIY24322420334453', '_1ouXCiFTsWVExLb', '', 'fazUIY24322420334453', '_1ouXCiFTsWVExLb', '', '2022-07-29 06:27:17', '2023-07-03 04:57:48'),
(7, 'stripe', '0', '0', '', '', '', '', '', '', '2023-05-30 10:40:44', '2023-07-03 04:57:48'),
(8, 'cash', '0', '0', '', '', '', '', '', '', '2023-07-03 05:38:01', '2023-07-03 05:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `rent_transction`
--

CREATE TABLE `rent_transction` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL DEFAULT '0' COMMENT 'FK = Coupon Table',
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'Fk = Type Table',
  `video_type` int(11) NOT NULL COMMENT '	1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming	',
  `video_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rent_transction`
--

INSERT INTO `rent_transction` (`id`, `unique_id`, `user_id`, `type_id`, `video_type`, `video_id`, `price`, `expiry_date`, `status`, `date`) VALUES
(33, '0', 122, 1, 1, 1, 99, '2023-03-07', 0, '2023-02-07 17:19:32'),
(39, '0', 212, 1, 1, 17, 49, '2023-02-09', 0, '2023-02-09 10:03:53'),
(40, '0', 212, 1, 1, 15, 209, '2023-02-09', 0, '2023-02-09 10:56:38'),
(41, '0', 212, 1, 1, 20, 69, '2023-02-09', 0, '2023-02-09 12:24:58'),
(42, '0', 212, 1, 1, 1, 99, '2023-03-10', 0, '2023-02-10 10:53:45'),
(43, '0', 212, 4, 2, 3, 199, '2023-02-10', 0, '2023-02-10 18:58:33'),
(44, '0', 122, 1, 1, 15, 209, '2023-05-11', 0, '2023-02-11 15:22:46'),
(45, '0', 122, 1, 1, 17, 49, '2023-02-18', 0, '2023-02-11 15:42:23'),
(46, '0', 212, 1, 1, 20, 69, '2023-03-13', 0, '2023-02-13 09:24:33'),
(47, '0', 212, 4, 2, 3, 199, '2023-05-13', 0, '2023-02-13 09:25:58'),
(48, '0', 212, 7, 1, 53, 99, '2023-02-15', 0, '2023-02-14 14:03:21'),
(49, '0', 212, 4, 2, 9, 69, '2023-05-25', 0, '2023-02-25 10:19:06'),
(50, 'P1rJtj', 212, 1, 1, 15, 159, '2023-05-28', 0, '2023-02-28 17:39:10'),
(51, '0', 212, 1, 1, 17, 49, '2023-03-17', 0, '2023-03-10 18:52:53'),
(52, '0', 217, 1, 1, 17, 49, '2023-03-17', 0, '2023-03-10 19:17:57'),
(53, '0', 217, 1, 1, 58, 99, '2023-03-17', 0, '2023-03-10 21:38:58'),
(54, '0', 123, 1, 1, 58, 99, '2023-04-06', 0, '2023-03-30 14:39:02'),
(55, '0', 123, 1, 1, 19, 79, '2023-04-06', 0, '2023-03-30 14:41:01'),
(56, '0', 429, 4, 2, 17, 99, '2024-04-26', 1, '2023-04-26 07:22:13'),
(57, '0', 429, 1, 1, 14, 149, '2023-06-06', 0, '2023-05-30 16:49:34'),
(58, '0', 429, 1, 1, 19, 79, '2023-06-06', 0, '2023-05-30 16:52:51'),
(59, 'HnXmlx', 429, 4, 2, 11, 99, '2023-06-30', 0, '2023-05-30 17:01:48'),
(60, '0', 907, 1, 1, 15, 209, '2023-09-06', 1, '2023-06-06 08:20:31'),
(61, '0', 962, 4, 2, 9, 69, '2023-09-20', 1, '2023-06-20 17:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `rent_video`
--

CREATE TABLE `rent_video` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming',
  `video_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rent_video`
--

INSERT INTO `rent_video` (`id`, `type_id`, `video_type`, `video_id`, `price`, `time`, `type`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 1, 15, 209, '3', 'Month', 1, '2022-09-16 06:43:04', '2023-07-03 04:57:48'),
(10, 1, 1, 14, 149, '1', 'Week', 1, '2022-09-16 06:43:29', '2023-07-03 04:57:48'),
(11, 4, 2, 11, 99, '1', 'Month', 1, '2022-09-16 06:43:59', '2023-07-03 04:57:48'),
(12, 4, 2, 12, 149, '1', 'Month', 1, '2022-09-16 06:44:19', '2023-07-03 04:57:48'),
(16, 1, 1, 19, 79, '1', 'Week', 1, '2022-09-26 09:13:20', '2023-07-03 04:57:48'),
(17, 4, 2, 13, 99, '1', 'Month', 1, '2022-09-26 09:17:03', '2023-07-03 04:57:48'),
(18, 1, 1, 17, 49, '1', 'Week', 1, '2022-09-26 09:18:52', '2023-07-03 04:57:48'),
(19, 1, 1, 18, 39, '1', 'Day', 1, '2022-09-26 09:19:30', '2023-07-03 04:57:48'),
(20, 4, 2, 5, 89, '1', 'Month', 1, '2022-09-26 09:37:35', '2023-07-03 04:57:48'),
(21, 1, 1, 21, 29, '1', 'Month', 1, '2022-09-26 14:25:49', '2023-07-03 04:57:48'),
(22, 4, 2, 9, 69, '3', 'Month', 1, '2022-09-26 14:26:09', '2023-07-03 04:57:48'),
(26, 4, 2, 3, 199, '3', 'Month', 1, '2022-10-06 07:40:23', '2023-07-03 04:57:48'),
(27, 4, 2, 14, 69, '1', 'Week', 1, '2022-10-06 07:40:40', '2023-07-03 04:57:48'),
(28, 1, 1, 16, 99, '1', 'Year', 1, '2022-10-12 07:59:36', '2023-07-03 04:57:48'),
(29, 7, 1, 53, 99, '1', 'Day', 1, '2022-10-15 12:16:07', '2023-07-03 04:57:48'),
(30, 4, 2, 17, 99, '1', 'Year', 1, '2022-10-17 15:30:20', '2023-07-03 04:57:48'),
(31, 7, 1, 54, 49, '1', 'Month', 1, '2022-10-29 11:51:10', '2023-07-03 04:57:48'),
(32, 4, 2, 20, 99, '1', 'Week', 1, '2022-10-29 11:51:38', '2023-07-03 04:57:48'),
(33, 1, 1, 1, 99, '1', 'Month', 1, '2023-02-07 17:13:37', '2023-07-03 04:57:48'),
(34, 5, 1, 50, 999, '6', 'Month', 1, '2023-02-08 10:36:26', '2023-07-03 04:57:48'),
(35, 1, 1, 58, 99, '1', 'Week', 1, '2023-02-16 17:34:26', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Season 1', 2, '2022-08-03 17:06:24', '2023-07-03 04:57:48'),
(2, 'Season 2', 2, '2022-08-03 17:06:39', '2023-07-03 04:57:48'),
(3, 'Season 3', 2, '2022-09-22 12:14:01', '2023-07-03 04:57:48'),
(4, 'Season 4', 2, '2022-09-30 10:14:07', '2023-07-03 04:57:48'),
(5, 'Season 5', 2, '2022-09-30 10:14:21', '2023-07-03 04:57:48'),
(6, 'Season 6', 2, '2022-09-30 10:14:39', '2023-07-03 04:57:48'),
(7, 'Season 7', 2, '2022-09-30 10:14:45', '2023-07-03 04:57:48'),
(8, 'Season 8', 2, '2022-09-30 10:14:52', '2023-07-03 04:57:48'),
(9, 'Season 9', 2, '2022-09-30 10:14:58', '2023-07-03 04:57:48'),
(10, 'Season 10', 2, '2022-09-30 10:15:05', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `protocol` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `protocol`, `host`, `port`, `user`, `pass`, `from_name`, `from_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp123', 'smtp.gmail.com', '587', 'developer.divinetechs@gmail.com', 'fqavqfvykhnpprzq', 'DTLive-Divinetech', 'developer.divinetechs@gmail.com', '1', '2022-08-03 10:14:04', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount_type` int(11) NOT NULL COMMENT '1- Price, 2- Percentage',
  `price` varchar(255) NOT NULL,
  `is_use` int(11) NOT NULL COMMENT '0- All, 1- One',
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`id`, `unique_id`, `name`, `start_date`, `end_date`, `amount_type`, `price`, `is_use`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uT8T4f', 'DTLive100', '2023-02-27', '2023-03-10', 1, '100', 0, 1, '2023-02-28 12:00:24', '2023-07-03 04:57:48'),
(2, 'HnXmIx', 'xzsPg8dY', '2023-02-26', '2023-03-12', 1, '50', 1, 1, '2023-02-28 14:45:37', '2023-07-03 04:57:48'),
(3, '2Q9ewj', 'WTWKmcsC', '2023-02-26', '2023-03-12', 1, '50', 1, 1, '2023-02-28 14:45:37', '2023-07-03 04:57:48'),
(4, 'vdQ40k', 'cW8FViP4', '2023-02-26', '2023-03-12', 1, '50', 1, 1, '2023-02-28 14:45:37', '2023-07-03 04:57:48'),
(5, 'P1rJtj', 'd0BUoWfl', '2023-02-26', '2023-03-12', 1, '50', 1, 1, '2023-02-28 14:45:37', '2023-07-03 04:57:48'),
(6, 'YnLna2', 'LSej1xeA', '2023-02-26', '2023-03-12', 1, '50', 1, 1, '2023-02-28 14:45:37', '2023-07-03 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_link`
--

CREATE TABLE `tbl_social_link` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_login`
--

CREATE TABLE `tbl_tv_login` (
  `id` int(11) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL DEFAULT '0' COMMENT 'FK = Coupon Table	',
  `package_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `unique_id`, `package_id`, `description`, `amount`, `payment_id`, `currency_code`, `expiry_date`, `status`, `created_at`, `updated_at`, `is_delete`) VALUES
(24, 123, '0', 1, 'VIP', '449', 'pay_LDXWB89ka3GLOU', '₹', '2023-03-07', 0, '2023-02-07 17:19:27', '2023-07-03 04:57:48', 1),
(25, 118, '0', 3, 'PREMIUM', '1499', '131731616136940873', '₹', '2024-02-08', 1, '2023-02-08 21:06:46', '2023-07-03 04:57:48', 1),
(26, 2, '0', 2, 'description', '100', '123', '₹', '2023-05-10', 0, '2023-02-10 18:38:34', '2023-07-03 04:57:48', 1),
(27, 118, '0', 2, 'SUPER', '899', '131741616131458381118', '₹', '2023-05-11', 0, '2023-02-11 22:01:35', '2023-07-03 04:57:48', 1),
(28, 217, 'YnLna2', 1, 'VIP', '249', '131781616135879507', '₹', '2023-03-28', 0, '2023-02-28 17:24:26', '2023-07-03 04:57:48', 1),
(29, 221, '0', 3, 'PREMIUM', '1499', '131771616133511664', '₹', '2024-03-04', 1, '2023-03-04 17:12:24', '2023-07-03 04:57:48', 1),
(30, 725, '0', 1, 'VIP', '299', '131771616133689317', '$', '2023-05-18', 0, '2023-04-18 20:27:38', '2023-07-03 04:57:48', 1),
(31, 123, '0', 1, 'VIP', '299', '13178161613584082', '$', '2023-05-26', 0, '2023-04-26 07:11:16', '2023-07-03 04:57:48', 1),
(32, 123, '0', 1, 'VIP', '299', '131771616138152404', '$', '2023-06-30', 0, '2023-05-30 16:45:01', '2023-07-03 04:57:48', 1),
(33, 962, '0', 1, 'VIP', '299', '131781616139767381', '$', '2023-07-20', 1, '2023-06-20 17:34:57', '2023-07-03 04:57:48', 1),
(34, 985, '0', 3, 'PREMIUM', '1499', '131761616139014174', '$', '2024-06-24', 1, '2023-06-24 21:53:58', '2023-07-03 04:57:48', 1),
(35, 987, '0', 1, 'VIP', '299', '131781616134851510', '$', '2023-07-25', 1, '2023-06-25 21:07:29', '2023-07-03 04:57:48', 1),
(36, 40, '0', 1, 'VIP', '299', 'admin', '$', '2023-07-26', 1, '2023-06-26 17:37:54', '2023-07-03 04:57:48', 1),
(37, 997, '0', 1, 'VIP', '299', '131721616138007180', '$', '2023-08-01', 1, '2023-06-30 23:40:27', '2023-07-03 04:57:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show`
--

CREATE TABLE `tv_show` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `language_id` text NOT NULL,
  `cast_id` text NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Category, 4-Language, 5- Upcoming',
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `landscape` varchar(100) NOT NULL,
  `trailer_type` varchar(255) NOT NULL COMMENT 'server_video, external, youtube	',
  `trailer_url` text NOT NULL,
  `description` text NOT NULL,
  `is_premium` int(11) NOT NULL,
  `is_title` int(11) NOT NULL,
  `release_date` varchar(255) NOT NULL DEFAULT '',
  `view` int(11) NOT NULL,
  `imdb_rating` float NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `director_id` text NOT NULL,
  `starring_id` text NOT NULL,
  `supporting_cast_id` text NOT NULL,
  `networks` text NOT NULL,
  `maturity_rating` text NOT NULL,
  `studios` text NOT NULL,
  `content_advisory` text NOT NULL,
  `viewing_rights` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tv_show`
--

INSERT INTO `tv_show` (`id`, `channel_id`, `category_id`, `language_id`, `cast_id`, `type_id`, `video_type`, `name`, `thumbnail`, `landscape`, `trailer_type`, `trailer_url`, `description`, `is_premium`, `is_title`, `release_date`, `view`, `imdb_rating`, `status`, `created_at`, `updated_at`, `director_id`, `starring_id`, `supporting_cast_id`, `networks`, `maturity_rating`, `studios`, `content_advisory`, `viewing_rights`) VALUES
(3, 31, '1', '1', '1,92', 4, 2, 'The Kapil Sharma Show', '1675426804.jpg', 'land_1677132559.jpg', '', '', 'Comedian Kapil Sharma interacts with celebrity guests about their latest films while keeping the audience laughing with his wit, humour and assorted skits.', 1, 2, '', 1456878, 9, 2, '2022-04-21 10:23:59', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(4, 23, '1', '1', '1', 4, 2, 'Ramayana', '1675426901.jpg', 'land_1675426901.jpg', '', '', 'Reamker is a Cambodian epic poem, based on the Sanskrit\'s Rāmāyana epic. The name means \"Glory of Rama\". It is the national epic of Cambodia. The earliest mention of this epic\'s manuscript in Cambodia dates back to the 7th century based on Veal Kantel inscription. The surviving text of Reamker dates from 16th century.', 1, 2, '', 4645, 8.2, 2, '2022-04-21 10:23:59', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(5, 25, '1', '1', '1', 4, 2, 'Yeh Rishta Kya Kehlata Hai', '1675426703.jpg', 'land_1675426703.jpg', '', '', 'Dr Abhimanyu, a misogamist, finds himself getting attracted to Akshara, Kartik and Naira\'s daughter. Things take a tricky turn when Akshara\'s half-sister, Arohi, falls in love with him.', 1, 2, '', 46456, 4.5, 2, '2022-04-21 10:23:59', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(6, 21, '6', '1', '4', 4, 2, 'Ghum Hai Kisikey Pyaar Meiin', '1675427383.jpg', 'land_1675427182.jpg', '', '', 'Virat, a young police officer, marries a woman to honour the promise he made to her dying father. But when his former lover re-enters his life, he finds his heart pulled in both directions.\r\nOpening theme: Ghum Hai Kisikey Pyaar Meiin\r\nWritten by: Rajesh Chawla\r\nProduction companies: Cockcrow Entertainment; Shaika Films\r\nDirected by: Jaideep Sen; Ashwini Saraswat; Arnav Chakravarti; Jafar Shaikh; Ranjeet Gupta; Rohit Fulari\r\nProducers: Pradeep Kumar; Rajesh Ram Singh; Pia Bajpiee; Shaika Parween\r\nOriginal network: Star Plus', 0, 2, '', 0, 0, 1, '2022-08-06 09:22:05', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(9, 30, '1,6', '1,3', '7,8,14,15,24,25,26', 4, 2, 'Taarak Mehta Ka Ooltah Chashmah', '1675427150.jpg', 'land_1675427150.jpg', '', '', 'The residents of a housing society help each other find solutions when they face common, real-life challenges and get involved in sticky situations.', 1, 2, '', 0, 0, 1, '2022-08-10 10:07:40', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(10, 31, '1', '1,3,4,6', '9', 4, 2, 'Kaun Banega Crorepati', '1675427470.jpg', 'land_1675427470.jpg', '', '', 'The host asks a series of questions to several contestants to test their general knowledge and give them a chance to win a cash prize.', 0, 2, '', 0, 0, 1, '2022-08-10 10:18:12', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(11, 14, '2', '1,3', '10', 4, 2, 'Man vs Wild', '1675426989.jpg', 'land_1675426989.jpg', '', '', 'Host Bear Grylls tackles extreme challenges and navigates through remote locations around the world, sharing invaluable survival strategies along the way.', 0, 2, '', 0, 0, 1, '2022-08-10 10:27:03', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(12, 32, '1,2,3,6,7', '1,3', '11,12,13', 4, 2, 'Money Heist', '1675426386.jpg', 'land_1675426386.jpg', '', '', 'A criminal mastermind who goes by \"The Professor\" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain. To help him carry out the ambitious plan, he recruits eight people with certain abilities and who have nothing to lose. The group of thieves take hostages to aid in their negotiations with the authorities, who strategize to come up with a way to capture The Professor. As more time elapses, the robbers prepare for a showdown with the police.', 1, 2, '', 0, 0, 1, '2022-08-10 10:31:29', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(13, 24, '1,2,3,6', '1,3,9', '22,30', 4, 2, 'Fast & Furious', '1675427016.jpeg', 'land_1675427063.jpeg', '', '', 'Fast & Furious is a media franchise centered on a series of action films that are largely concerned with street racing, heists, spies, and family. The franchise also includes short films, a television series, live shows, toys, video games and theme park attractions. It is distributed by Universal Pictures.', 0, 2, '', 0, 0, 1, '2022-08-29 16:53:38', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(14, 32, '1,6', '3', '10,11,12,13,83', 4, 2, 'The Big Bang Theory', '1675426954.jpg', 'land_1675426954.jpeg', '', '', 'The lives of four socially awkward friends, Leonard, Sheldon, Howard and Raj, take a wild turn when they meet the beautiful and free-spirited Penny.\r\n\r\nThe show\'s pilot episode premiered on September 24, 2007. This was the second pilot produced for the show. A different pilot was produced for the 2006–07 television season but never aired. The structure of the original unaired pilot was different from the series\' current form. The only main characters retained in both pilots were Leonard (Johnny Galecki) and Sheldon (Jim Parsons), who are named after Sheldon Leonard, a longtime figure in episodic television as producer, director and actor.', 1, 2, '', 0, 0, 1, '2022-09-30 10:11:23', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(15, 31, '1,3,6', '1,3,8', '86,87,88,89,90', 4, 2, 'Dance Plus', '1675427337.jpg', 'land_1675427337.png', '', '', 'Contestants from different parts of India showcase their dancing skills and compete against each other to win the prestigious title.', 1, 2, '', 0, 0, 1, '2022-09-30 12:50:54', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(16, 31, '2', '1', '91', 4, 2, 'Fear Factor: Khatron Ke Khiladi', '1675427573.jpg', 'land_1675427573.jpg', '', '', 'Twelve celebrity contestants face their worst fears and perform a series of death-defying stunts under the supervision of a host to win the coveted title.', 1, 2, '', 0, 0, 1, '2022-09-30 13:02:40', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(17, 32, '9', '1,3', '95,96,97', 4, 2, 'Delhi Crime', '1675426213.jpg', 'land_1675426213.jpg', '', '', 'Based on a Delhi gang rape case, this crime drama follows the Delhi Police investigation into the finding of the men who perpetrated the crime.', 1, 1, '', 0, 0, 1, '2022-10-06 15:04:47', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(19, 33, '17', '12', '106', 4, 2, 'Testing Title', '1676093609.png', 'land_1676093609.png', '', '', 'Describe your Show here........', 1, 2, '', 0, 0, 1, '2022-10-15 12:11:43', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(20, 33, '12', '1,3', '106,107', 4, 2, 'Testing TV Show', '1676093580.png', 'land_1676093580.png', '', '', 'Test tv show description go here...', 1, 2, '', 0, 0, 1, '2022-10-29 11:48:15', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(22, 24, '1,9,22', '1', '141,142,143', 4, 2, 'Scam 1992: The Harshad Mehta Story', '71_1677314552.jpg', 'land_1677314552.jpg', '', '', 'Set in 1980s and \'90s Bombay, it follows the life of Harshad Mehta, a stockbroker who took the stock market to dizzying heights and his catastrophic downfall.', 0, 1, '', 0, 9.3, 1, '2023-02-11 10:13:26', '2023-07-03 04:57:49', '', '', '', '', '', '', '', ''),
(23, 0, '1,9,12', '1', '162,163', 4, 2, 'Farzi', '71_1677503880.jpg', 'land_1677503880.jpg', 'server_video', '', 'An artist who gets pulled into the murky high stakes of a con job and a fiery task force officer on the mission to rid the country of his menaces in a fast-paced, edgy one-of-a-kind thriller.', 0, 1, '', 0, 8.6, 1, '2023-02-27 18:48:00', '2023-07-03 06:33:18', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tv_show_video`
--

CREATE TABLE `tv_show_video` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `video_type` varchar(100) NOT NULL COMMENT '1- Video, 2- Show, 3- Language, 4- Category, 5- Upcoming',
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `landscape` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `is_premium` int(11) NOT NULL DEFAULT 0,
  `is_title` int(11) NOT NULL,
  `download` int(11) NOT NULL COMMENT '	Is_Download	',
  `video_upload_type` varchar(255) NOT NULL COMMENT 'server_video, external, youtube, vimeo',
  `video_320` varchar(255) NOT NULL,
  `video_480` varchar(255) NOT NULL,
  `video_720` varchar(255) NOT NULL,
  `video_1080` varchar(255) NOT NULL,
  `video_extension` varchar(100) NOT NULL,
  `video_duration` bigint(20) NOT NULL DEFAULT 0,
  `subtitle_type` varchar(255) NOT NULL COMMENT 'server_video, external	',
  `subtitle_lang_1` varchar(255) NOT NULL,
  `subtitle_1` varchar(255) NOT NULL,
  `subtitle_lang_2` varchar(255) NOT NULL,
  `subtitle_2` varchar(255) NOT NULL,
  `subtitle_lang_3` varchar(255) NOT NULL,
  `subtitle_3` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tv_show_video`
--

INSERT INTO `tv_show_video` (`id`, `show_id`, `session_id`, `video_type`, `name`, `thumbnail`, `landscape`, `description`, `is_premium`, `is_title`, `download`, `video_upload_type`, `video_320`, `video_480`, `video_720`, `video_1080`, `video_extension`, `video_duration`, `subtitle_type`, `subtitle_lang_1`, `subtitle_1`, `subtitle_lang_2`, `subtitle_2`, `subtitle_lang_3`, `subtitle_3`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2', '', '1675852675.jpg', 'land_1675852675.jpg', 'The Kapil Sharma Show, also known as TKSS, is an Indian Hindi-language stand-up comedy and talk show broadcast by Sony Entertainment Television.', 1, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, 'server_file', '', 'o_1goo9joq8qpj1bmitap1m6114h7j.srt', '', '', '', '', 1000, 2, '2022-05-06 13:22:22', '2023-07-03 04:57:49'),
(2, 6, 1, '2', '', '1675829623.jpg', 'land_1675829623.jpg', 'Virat, a young police officer, marries a woman to honour the promise he made to her dying father. But when his former lover re-enters his life, he finds his heart pulled in both directions.\r\nOpening theme: Ghum Hai Kisikey Pyaar Meiin\r\nWritten by: Rajesh Chawla\r\nProduction companies: Cockcrow Entertainment; Shaika Films\r\nDirected by: Jaideep Sen; Ashwini Saraswat; Arnav Chakravarti; Jafar Shaikh; Ranjeet Gupta; Rohit Fulari\r\nProducers: Pradeep Kumar; Rajesh Ram Singh; Pia Bajpiee; Shaika Parween\r\nOriginal network: Star Plus', 0, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 60000, 'server_file', '', 'o_1gonjjuthe1cd5o1eh69272pd33.srt', '', '', '', '', 0, 2, '2022-08-06 09:25:51', '2023-07-03 04:57:49'),
(3, 3, 1, '2', '', '1675852514.jpg', 'land_1675852514.jpg', 'Watch The Kapil Sharma Show show/series 2018 streaming only on Sonyliv. Kapil Sharma is back with his gang - Bindu, Chandan and \'mohalle ki dhoban\' Gudiya.', 0, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, 'server_file', '', 'o_1goo9f07q11iv1r1t1g1c1bo7nkur.srt', '', '', '', '', 0, 2, '2022-08-08 15:14:42', '2023-07-03 04:57:49'),
(4, 3, 2, '2', '', '1675852440.jpg', 'land_1675852440.jpg', 'In this episode, Kapil welcomes the superstars of the Movie ‘Love Aaj Kal’ to the stage. Kapil challenges Kartik to lift Archana. He succeeds and then pretends to fall on the floor. Kartik and Sara then talk about the trending Kartik hashtag on twitter. They also discuss their gym life. Kartik tells Kapil that he loves dancing. Kapil claims he can dance well too, just in his mind. Kartik then talks about his love life. He discusses how difficult it was for him to meet his girlfriend in school. Then Kapil asks Kartik and Sara whether they ever had lice in their hair. Sara admits to having lice once while Kartik tells he had lice many times. The laughter dose increases, even more, when Kammo Bua arrives and starts flirting with Kartik’s father. After that Kartik and Sara play a guess game and Kapil encourages the audience to share their valentine\'s story. The episode ends on a high note when lookalikes of Saif Ali Khan, Anil Kapoor, and Sunny Deol collide against each other in Top Ki Adalat.', 0, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, 'server_file', '', 'o_1goo9btpbq6p1ep43fe1r0o4tbr.srt', '', '', '', '', 0, 2, '2022-08-08 15:15:18', '2023-07-03 04:57:49'),
(5, 3, 1, '2', '', '1675852353.jpg', 'land_1675852353.jpg', 'Comedian Kapil Sharma interacts with celebrity guests about their latest films while keeping the audience laughing with his wit, humour and assorted skits.', 0, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, 'server_file', '', 'o_1goo9avmpqlmqaq8b6qvg1acl7j.srt', '', '', '', '', 0, 2, '2022-08-08 15:17:06', '2023-07-03 04:57:49'),
(6, 4, 1, '2', '', '1665030165.jpg', 'land_1665030165.jpg', 'Reamker is a Cambodian epic poem, based on the Sanskrit\'s Rāmāyana epic. The name means \"Glory of Rama\". It is the national epic of Cambodia. The earliest mention of this epic\'s manuscript in Cambodia dates back to the 7th century based on Veal Kantel inscription. The surviving text of Reamker dates from 16th century.', 0, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 97000, '', '', '', '', '', '', '', 0, 2, '2022-08-08 15:23:43', '2023-07-03 04:57:49'),
(7, 5, 1, '2', '', '1676103880.jpg', 'land_1676103880.jpg', 'On their honeymoon in Greece, a flirtatious Kartik and a bold Naira pretend to be strangers and try to woo each other all over again.', 0, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 60000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-08 15:24:37', '2023-07-03 04:57:49'),
(8, 3, 2, '2', 'Episode 1', '1675852230.jpg', 'land_1675852230.jpg', 'Tonight on the Kapil Sharma Show, please welcome the gorgeous and phenomenal Bhumi Pednekar, accompanying her are the super talented actors, Sushant Singh Rajput, Ranvir Shorey, Manoj Bajpayee, and Ashutosh Rana. Watch as they have fun, crack up, and enjoy. Watch the full episode now!', 1, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'webm', 120000, 'server_file', '', 'o_1goo9bdheqcv1lpsbm41vqa1id4r.srt', '', '', '', '', 0, 2, '2022-08-09 16:48:19', '2023-07-03 04:57:49'),
(9, 7, 1, '5', '', '1660107102.jpeg', 'land_1660107102.jpeg', 'test', 1, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 0, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 08:21:42', '2023-07-03 04:57:49'),
(10, 8, 2, '1', '', '1660108685.jpg', 'land_1660108685.jpg', '346436', 2, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'jpg', 0, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 08:48:05', '2023-07-03 04:57:49'),
(11, 9, 1, '2', '', '1660119268.png', 'land_1660119268.png', 'She left the show in 2017 after giving birth to her first child, a baby girl. Meanwhile, producer Asit Modi has stated numerous times that he would welcome Disha\'s return to the show.', 0, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 136000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 11:44:28', '2023-07-03 04:57:49'),
(12, 9, 1, '2', '', '1660119348.jpeg', 'land_1660119348.jpeg', 'I think Taarak Mehta Ka Ooltah Chashmah (TMKOC) is not ending anytime soon. It is going to complete its 3000 episodes till the end of 2020 and the TRP of the show is constantly high, so for now its not going anywhere. But whenever it ends, the reason of wrapping up will be the decline in TRP.', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 321000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 11:45:48', '2023-07-03 04:57:49'),
(13, 9, 1, '2', '', '1660119386.jpeg', 'land_1660119386.jpeg', 'I think Taarak Mehta Ka Ooltah Chashmah (TMKOC) is not ending anytime soon. It is going to complete its 3000 episodes till the end of 2020 and the TRP of the show is constantly high, so for now its not going anywhere. But whenever it ends, the reason of wrapping up will be the decline in TRP.', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 157000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 11:46:26', '2023-07-03 04:57:49'),
(14, 9, 2, '2', '', '1660119423.jpeg', 'land_1660119423.jpeg', 'I think Taarak Mehta Ka Ooltah Chashmah (TMKOC) is not ending anytime soon. It is going to complete its 3000 episodes till the end of 2020 and the TRP of the show is constantly high, so for now its not going anywhere. But whenever it ends, the reason of wrapping up will be the decline in TRP.', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 1217000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 11:47:03', '2023-07-03 04:57:49'),
(15, 9, 2, '5', '', '1660119465.jpeg', 'land_1660119465.jpeg', 'I think Taarak Mehta Ka Ooltah Chashmah (TMKOC) is not ending anytime soon. It is going to complete its 3000 episodes till the end of 2020 and the TRP of the show is constantly high, so for now its not going anywhere. But whenever it ends, the reason of wrapping up will be the decline in TRP.', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 296000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 11:47:45', '2023-07-03 04:57:49'),
(16, 10, 1, '2', '', '1679058259.jpg', 'land_1679058259.jpg', 'The grand show is officially scheduled to to be started from 7th August 2022 (Sunday), as per the official announcement from Sony Television.', 0, 2, 1, 'external', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 15000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:09:33', '2023-07-03 04:57:49'),
(17, 10, 2, '2', '', '1679058183.jpg', 'land_1679058183.jpg', 'Image result KBC receives money from a variety of sources, including the telecommunications network, sponsorship from well-known brands, advertising, and an Internet communication company. KBC earns money mostly from sponsorship from renowned companies such as Byju\'s, Cadbury, and Axis Bank.', 0, 2, 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 47000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:10:20', '2023-07-03 04:57:49'),
(18, 10, 1, '2', '', '1679058102.jpg', 'land_1679058102.jpg', 'A set is being erected at Film City, Goregaon, on floor No 7. It is said to be a lucky number for the makers as previous seasons have been shot at the same spot.', 0, 2, 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 47000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:11:04', '2023-07-03 04:57:49'),
(19, 11, 1, '2', '', '1660121124.jpg', 'land_1660121124.jpg', 'Grylls also said he has been approached about doing a Man vs. Wild urban disaster 3D feature film, which he said he would \"really like to do\".', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 254000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:15:24', '2023-07-03 04:57:49'),
(20, 11, 2, '2', '', '1660121222.jpeg', 'land_1660121222.jpeg', 'Grylls also said he has been approached about doing a Man vs. Wild urban disaster 3D feature film, which he said he would \"really like to do\".', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 254000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:17:02', '2023-07-03 04:57:49'),
(21, 11, 1, '2', '', '1660121378.jpeg', 'land_1660121378.jpeg', 'Discovery spokesperson Heather Krug told The Hollywood Reporter, \"Unfortunately, Bear and Discovery have not been able to come to a mutual agreement on new programming, and he disagrees with Discovery\'s decision to terminate current productions.\"', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 335000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:19:38', '2023-07-03 04:57:49'),
(22, 12, 1, '2', '', '1675853398.jpeg', 'land_1675853398.jpeg', 'Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan. Watch all you want. This riveting crime series won Best Drama at the International Emmy Awards, Premios Fénix and Premios Iris (plus six more Iris wins).', 0, 2, 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 240000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:22:15', '2023-07-03 04:57:49'),
(23, 12, 2, '5', '', '1660121681.jpeg', 'land_1660121681.jpeg', 'Audiences love the characters with soft underbelly and frequent mistakes. The show has a unique Spanish identity, which is another reason why Money Heist is so popular. While the plot may be predictable, it still manages to hook its viewers', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 335000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:24:41', '2023-07-03 04:57:49'),
(24, 12, 1, '2', '', '1660121717.jpeg', 'land_1660121717.jpeg', 'Audiences love the characters with soft underbelly and frequent mistakes. The show has a unique Spanish identity, which is another reason why Money Heist is so popular. While the plot may be predictable, it still manages to hook its viewers', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 207000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:25:17', '2023-07-03 04:57:49'),
(25, 12, 2, '5', '', '1660121760.jpg', 'land_1660121760.jpg', 'Audiences love the characters with soft underbelly and frequent mistakes. The show has a unique Spanish identity, which is another reason why Money Heist is so popular. While the plot may be predictable, it still manages to hook its viewers', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 163000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-08-10 12:26:00', '2023-07-03 04:57:49'),
(26, 12, 3, '2', '', '1660121792.jpeg', 'land_1660121792.jpeg', 'Audiences love the characters with soft underbelly and frequent mistakes. The show has a unique Spanish identity, which is another reason why Money Heist is so popular. While the plot may be predictable, it still manages to hook its viewers', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 179000, '', '', '', '', '', '', '', 0, 2, '2022-08-10 12:26:32', '2023-07-03 04:57:49'),
(27, 13, 1, '2', '', '1676110893.jpeg', 'land_1676110893.jpeg', 'Fast & Furious is a media franchise centered on a series of action films that are largely concerned with street racing, heists, spies, and family.', 0, 2, 1, 'external', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 15000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-09-26 14:56:40', '2023-07-03 04:57:49'),
(28, 13, 1, '2', '', '1676110679.jpeg', 'land_1676110679.jpeg', 'A spate of high-speed robberies in LA brings street racer Dominic Toretto and his crew under the LAPD scanner. FBI agent Brian goes undercover and befriends Toretto in a bid to investigate the matter.', 0, 2, 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 47000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-09-26 15:01:54', '2023-07-03 04:57:49'),
(29, 13, 2, '2', '', '1677740094.jpeg', 'land_1677740094.jpeg', 'In order to avoid jail time, an errant car racer is sent to live with his father in Tokyo. However, he finds himself in trouble once again when he becomes a major competitor in drifting.', 0, 2, 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 47000, 'server_file', '', '', '', '', '', '', 0, 2, '2022-09-26 15:05:02', '2023-07-03 04:57:49'),
(30, 17, 1, '2', '', '1665056868.jpg', 'land_1665056868.jpg', 'After two victims of a brutal crime are found on a roadside, DCP Vartika Chaturvedi assigns only her most trusted officers to lead the investigation.', 0, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 145000, '', '', '', '', '', '', '', 0, 2, '2022-10-06 15:17:48', '2023-07-03 04:57:49'),
(31, 17, 1, '2', '', '1665056932.jpg', 'land_1665056932.jpg', 'With few leads to go on, Vartika\'s team focuses on identifying the exact bus where the crime occurred. Media leaks trigger backlash against the police.', 0, 1, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 145000, '', '', '', '', '', '', '', 0, 2, '2022-10-06 15:18:52', '2023-07-03 04:57:49'),
(33, 19, 11, '2', '', '1665823454.jpg', 'land_1665823454.jpg', 'Describe your episode here...........', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 30000, '', '', '', '', '', '', '', 0, 2, '2022-10-15 12:14:14', '2023-07-03 04:57:49'),
(34, 20, 1, '2', '', '1667031591.jpg', 'land_1667031591.jpeg', 'Youe episode description go here...', 1, 2, 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 30000, '', '', '', '', '', '', '', 0, 2, '2022-10-29 11:49:51', '2023-07-03 04:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Category, 4-Language, 5- Upcoming',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Movies', 1, '2022-04-14 17:23:28', '2023-07-03 04:57:49'),
(2, 'LiveTv', 1, '2022-04-14 17:23:28', '2023-07-03 04:57:49'),
(3, 'Music', 2, '2022-04-14 17:23:47', '2023-07-03 04:57:49'),
(4, 'TV Show', 2, '2022-04-14 17:26:07', '2023-07-03 04:57:49'),
(5, 'Kids', 1, '2022-04-20 05:58:14', '2023-07-03 04:57:49'),
(7, 'Shorts Films', 1, '2022-10-15 10:32:41', '2023-07-03 04:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '1- Facebook, 2- Google, 3- OTP, 4- Normal, 5- Apple',
  `status` int(11) NOT NULL DEFAULT 1,
  `expiry_date` date DEFAULT NULL,
  `api_token` varchar(255) NOT NULL DEFAULT '',
  `email_verify_token` varchar(255) NOT NULL DEFAULT '',
  `is_email_verify` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `name`, `mobile`, `email`, `password`, `image`, `type`, `status`, `expiry_date`, `api_token`, `email_verify_token`, `is_email_verify`, `created_at`, `updated_at`) VALUES
(35, '', 'Owen Duncan', '', 'owenduncan.01110@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-14 04:26:10', '2023-07-03 04:57:49'),
(36, '', 'Mary Lucas', '', 'marylucas.27140@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-14 10:04:28', '2023-07-03 04:57:49'),
(38, '', 'Boyd Schwartz', '', 'boydschwartz.65260@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-22 07:21:29', '2023-07-03 04:57:49'),
(39, '', 'Andre Jones', '', 'andrejones.68338@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-29 05:04:11', '2023-07-03 04:57:49'),
(40, '', 'Wilbur Maxwell', '', 'wilburmaxwell.48566@gmail.com', '', 'user.png', 2, 1, '2023-07-26', '', '', '', '2022-08-29 05:07:51', '2023-07-03 04:57:49'),
(41, '', 'Duane Ferguson', '', 'duaneferguson.03672@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-29 05:08:00', '2023-07-03 04:57:49'),
(42, '', 'Tyler Gutierrez', '', 'tylergutierrez.61864@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-29 05:10:00', '2023-07-03 04:57:49'),
(43, '', 'Jim Massey', '', 'jimmassey.00906@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-08-29 06:00:03', '2023-07-03 04:57:49'),
(59, '', '', '6546546544', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-09-08 04:37:02', '2023-07-03 04:57:49'),
(60, '', '', '', 'harshad.maheta@dt.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-09-08 04:59:29', '2023-07-03 04:57:49'),
(61, '', 'Sanjay 123', '1234567890123', 'sanjay@gmail.com123', '', '1668151962221-ic_launcher_round.png', 2, 1, NULL, '', '', '', '2022-09-08 05:44:43', '2023-07-03 04:57:49'),
(62, '', 'Sakshi Maheta', '', 'sakshi.maheta@dt.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-09-08 06:06:13', '2023-07-03 04:57:49'),
(71, '', 'Vraj Raval', '+916351212608', 'vraj.raval@dt.com', '', '1663157444781-71_1663157443155.jpeg', 3, 1, NULL, '', '', '', '2022-09-08 13:25:30', '2023-07-03 04:57:49'),
(79, '', 'Patel Sanjay', '8780827600', 'sanjay.patel@gmail.com', '', '1665667554.png', 2, 1, NULL, '', '', '', '2022-09-14 07:15:08', '2023-07-03 04:57:49'),
(82, '', '', '', 'shejaeddy05@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-09-21 11:57:05', '2023-07-03 04:57:49'),
(87, '', 'Carmen Frazier', '', 'carmenfrazier.40405@gmail.com', '', '1664360204389-dtlivecarmenfrazier.jpeg', 2, 1, NULL, '', '', '', '2022-09-28 10:16:44', '2023-07-03 04:57:49'),
(88, '', 'Vernetta Schafer', '', 'vernettaschafer.92393@gmail.com', '', '1664363212637-dtlivevernettaschafer.jpeg', 2, 1, NULL, '', '', '', '2022-09-28 11:06:52', '2023-07-03 04:57:49'),
(90, '', 'Nettie Hubbard', '', 'nettiehubbard.07868@gmail.com', '', '1664546255400-dtlivenettiehubbard.jpeg', 2, 1, NULL, '', '', '', '2022-09-30 13:57:34', '2023-07-03 04:57:49'),
(91, '', 'Miranda Rivera', '', 'mirandarivera.40259@gmail.com', '', '1664549386993-dtlivemirandarivera.jpeg', 2, 1, NULL, '', '', '', '2022-09-30 14:49:46', '2023-07-03 04:57:49'),
(96, '', 'Blanche Simon', '', 'blanchesimon.69059@gmail.com', '', '1664890427455-dtliveblanchesimon.jpeg', 2, 1, NULL, '', '', '', '2022-10-04 13:33:47', '2023-07-03 04:57:49'),
(97, '', 'Elmer Burton', '', 'elmerburton.19012@gmail.com', '', '1665052786600-dtliveelmerburton.jpeg', 2, 1, NULL, '', '', '', '2022-10-06 10:39:46', '2023-07-03 04:57:49'),
(98, '', 'DivinetechsDeveloper', '6312546125', 'divinetechs_xmswnbj_developer@tfbnw.net', '', '1665066225.png', 1, 1, NULL, '', '', '', '2022-10-06 11:16:34', '2023-07-03 04:57:49'),
(99, '', 'Sahdev', '8752369456', 'Kapil@gmail.com', '', '1665637075.jfif', 3, 1, NULL, '', '', '', '2022-10-07 09:40:20', '2023-07-03 04:57:49'),
(100, '', 'sanjay', '8752365641', 'patelsanjay.it@gmail.com', '', '1675760595152-3 - Copy.jpg', 3, 1, NULL, '', '', '', '2022-10-07 10:17:34', '2023-07-03 04:57:49'),
(101, '', 'Amy Arnold', '', 'amyarnold.87936@gmail.com', '', '1665138119768-dtliveamyarnold.jpeg', 2, 1, NULL, '', '', '', '2022-10-07 10:21:59', '2023-07-03 04:57:49'),
(103, '', 'Opal Barrett', '', 'opalbarrett.12138@gmail.com', '', '1665207252918-dtliveopalbarrett.jpeg', 2, 1, NULL, '', '', '', '2022-10-08 05:34:12', '2023-07-03 04:57:49'),
(106, '', 'John Dev', '8745253698', 'meets_devloper@gmail.com', '', '1665397900203-poster3.jpg', 2, 1, NULL, '', '', '', '2022-10-10 03:31:50', '2023-07-03 04:57:49'),
(113, '', 'Tarak', '8745962358', 'meetp50@gmail.com', '', '1665636980.jfif', 2, 1, NULL, '', '', '', '2022-10-12 10:03:00', '2023-07-03 04:57:49'),
(114, '', 'Kapil', '7895453525', 'test@gmail.com', '', '1665636902.jpg', 2, 1, NULL, '', '', '', '2022-10-12 12:27:59', '2023-07-03 04:57:49'),
(115, '', 'Meet', '7895452636', 'dev_meet@dt.com', '', '1665826136764-Avatar9.png', 2, 1, NULL, '', '', '', '2022-10-13 03:24:49', '2023-07-03 04:57:49'),
(116, '', 'Lowell Miles', '', 'lowellmiles.70023@gmail.com', '', '1665780745028-dtlivelowellmiles.jpeg', 2, 1, NULL, '', '', '', '2022-10-14 20:52:24', '2023-07-03 04:57:49'),
(117, '', 'Marcos Rios', '', 'marcosrios.10734@gmail.com', '', '1665781203385-dtlivemarcosrios.jpeg', 2, 1, NULL, '', '', '', '2022-10-14 21:00:03', '2023-07-03 04:57:49'),
(118, '', 'DivineTechs Developer', '78347673676', 'developer.divinetechs@gmail.com', '', '1665840290170-dtlivedivinetechsdeveloper.jpeg', 2, 1, NULL, '', '', '', '2022-10-15 04:14:40', '2023-07-03 04:57:49'),
(122, '', 'Salazar King', '+916351285929', 'salazar@dt.com', '', '1665840123666-122_1665840121589.jpeg', 3, 1, NULL, '', '', '', '2022-10-15 13:21:23', '2023-07-03 04:57:49'),
(123, '', 'Priyank Patel', '+916351285929', 'priyank24898@gmail.com', '', '1680784747.jpeg', 2, 1, NULL, '', '', '', '2022-10-15 13:24:25', '2023-07-03 04:57:49'),
(125, '', 'Myron Allison', '', 'myronallison.34174@gmail.com', '', '1665842133284-dtlivemyronallison.jpeg', 2, 1, NULL, '', '', '', '2022-10-15 13:55:33', '2023-07-03 04:57:49'),
(126, '', 'Nelia Bowens', '', 'neliabowens.95406@gmail.com', '', '1666241643922-dtliveneliabowens.jpeg', 2, 1, NULL, '', '', '', '2022-10-20 04:54:03', '2023-07-03 04:57:49'),
(129, '', 'Andy Jadeja', '+919723867744', '', '', '1667913580340-cropped3605391906973182429.jpg', 3, 1, NULL, '', '', '', '2022-11-08 13:05:46', '2023-07-03 04:57:49'),
(130, '', 'Mox Fax', '', 'moxfax25@gmail.com', '', '1668021134815-dtlivemoxfax.jpeg', 2, 1, NULL, '', '', '', '2022-11-09 19:12:14', '2023-07-03 04:57:49'),
(131, '', 'Raja pandian', '', 'pandian.subram@gmail.com', '', '1668021910920-dtliverajapandian.jpeg', 2, 1, NULL, '', '', '', '2022-11-09 19:25:10', '2023-07-03 04:57:49'),
(132, '', 'Kadir Kont', '', 'kadirkont3453@gmail.com', '', '1668028277382-dtlivekadirkont.jpeg', 2, 1, NULL, '', '', '', '2022-11-09 21:11:17', '2023-07-03 04:57:49'),
(133, '', 'Dipak Das', '', 'dipak.sb24@gmail.com', '', '1668034575418-dtlivedipakdas.jpeg', 2, 1, NULL, '', '', '', '2022-11-09 22:56:14', '2023-07-03 04:57:49'),
(134, '', '', '+2250700778587', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 03:00:11', '2023-07-03 04:57:49'),
(136, '', 'Zolo Dev', '', 'devzolo35@gmail.com', '', '1669877482338-dtlivezolodev.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 04:45:05', '2023-07-03 04:57:49'),
(137, '', 'Abc Monir', '', 'abcmonir198@gmail.com', '', '1668055870135-cropped8982721443701907104.jpg', 2, 1, NULL, '', '', '', '2022-11-10 04:47:18', '2023-07-03 04:57:49'),
(138, '', 'demiand martinez', '', 'demiandmartinez@gmail.com', '', '1668062840327-dtlivedemiandmartinez.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 06:47:19', '2023-07-03 04:57:49'),
(139, '', '', '+919377277748', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 10:50:25', '2023-07-03 04:57:49'),
(140, '', '', '+33667823421', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 11:06:09', '2023-07-03 04:57:49'),
(141, '', 'RAJESH', '+918309821661', 'rogglerajesh@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 11:12:55', '2023-07-03 04:57:49'),
(142, '', 'ola', '', 'sonikaolamodel@gmail.com', '', '1676828761402-dtlivemissola.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 11:39:49', '2023-07-03 04:57:49'),
(143, '', 'Thi Than Nguyen', '+84899083198', 'nguyenthithan2525@gmail.com', '', '1668080910322-dtlivethithannguyen.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 11:48:29', '2023-07-03 04:57:49'),
(144, '', 'King Massage TV', '', 'khanhlongsonthuy@gmail.com', '', '1668086425253-dtlivekingmassagetv.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 13:20:24', '2023-07-03 04:57:49'),
(145, '', 'Ami Shaon', '', 'amishaon51@gmail.com', '', '1669380173873-dtliveamishaon.jpeg', 2, 1, NULL, '', '', '', '2022-11-10 17:44:46', '2023-07-03 04:57:49'),
(146, '', '', '+917621902099', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 17:46:42', '2023-07-03 04:57:49'),
(147, '', 'Testing', '+256786328853', 'testuser101@testing.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-10 21:54:04', '2023-07-03 04:57:49'),
(148, '', 'Arpit Kanstiya', '', 'kanstiya@gmail.com', '', '1668130146106-dtlivearpitkanstiya.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 01:29:05', '2023-07-03 04:57:49'),
(149, '', 'Elite Moive Clips', '+2560703170517', 'walyawulapeter787@gmail.com', '', '1674004967104-dtliveelitemoiveclips.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 01:52:53', '2023-07-03 04:57:49'),
(150, '', 'Anderson Santos', '', 'andersonsa426@gmail.com', '', '1668152394616-dtliveandersonsantos.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 07:39:53', '2023-07-03 04:57:49'),
(151, '', 'Gateway Oman: Accounting & VAT Services', '', 'gatewayomangroup@gmail.com', '', '1669645027590-dtlivegatewayoman:accountingvatservices.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 10:13:53', '2023-07-03 04:57:49'),
(152, '', 'Jack Ma', '+919913269834', 'priyank24898@gmail.com', '', '1668231233096-scaled_image_picker2480406943514198319.jpg', 3, 1, NULL, '', '', '', '2022-11-11 10:17:41', '2023-07-03 04:57:49'),
(153, '', 'Sangram Online', '+919692147123', 'sangramtime@gmail.com', '', '1668169192722-dtlivesangramonline.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 12:19:52', '2023-07-03 04:57:49'),
(155, '', 'Top Summer', '', 'topsummeracaielanches@gmail.com', '', '1668170538780-dtlivetopsummer.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 12:42:17', '2023-07-03 04:57:49'),
(156, '', 'BICKY ADHIKARI', '+917011733964', 'bickyadh@gmail.com', '', '1686311292.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 13:40:37', '2023-07-03 04:57:49'),
(157, '', 'Andru Soyas', '', 'andrusoyas@gmail.com', '', '1668180712597-dtliveandrusoyas.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 15:31:51', '2023-07-03 04:57:49'),
(158, '', 'MD Rasel Biswas', '+8801650232288', 'raselbdke@gmail.com', '', '1668194584606-dtlivemdraselbiswas.jpeg', 2, 1, NULL, '', '', '', '2022-11-11 19:23:03', '2023-07-03 04:57:49'),
(159, '', '', '+2348147819921', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-11 21:39:36', '2023-07-03 04:57:49'),
(160, '', 'liliana liliana2020', '', 'liliana.amazon.111@gmail.com', '', '1668216662340-dtlivelilianaliliana2020.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 01:31:01', '2023-07-03 04:57:49'),
(161, '', 'Sandoval Kleomar', '', 'sandovalkleomar@gmail.com', '', '1668232640406-dtlivesandovalkleomar.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 05:57:19', '2023-07-03 04:57:49'),
(162, '', 'The Real Tech', '+918383984825', 'technicaltareen73710@gmail.com', '', '1674067264076-dtlivetherealtech.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 09:59:12', '2023-07-03 04:57:49'),
(163, '', 'Kisan Tv', '', 'kisantv713@gmail.com', '', '1668264507349-dtlivekisantv.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 14:48:26', '2023-07-03 04:57:49'),
(165, '', 'Joseph Manesh', '', 'skdsns@gmail.com', '', '1668274576481-dtlivejosephmanesh.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 17:36:15', '2023-07-03 04:57:49'),
(166, '', 'GIRLY', '', 'offgirlyshorts@gmail.com', '', '1668278767665-dtlivegirly.jpeg', 2, 1, NULL, '', '', '', '2022-11-12 18:46:07', '2023-07-03 04:57:49'),
(167, '', 'roggle app', '', 'roggleno1app@gmail.com', '', '1668309455469-dtliveroggleapp.jpeg', 2, 1, NULL, '', '', '', '2022-11-13 03:17:34', '2023-07-03 04:57:49'),
(168, '', 'TEST', '', 'home.marsini@gmail.com', '', '1668316830120-dtlivehomemarsini.jpeg', 2, 1, NULL, '', '', '', '2022-11-13 05:20:29', '2023-07-03 04:57:49'),
(169, '', 'Giorgi Tcharkhalashvili', '', 'g.tcharkhalashvili@gmail.com', '', '1668328709864-dtlivegiorgitcharkhalashvili.jpeg', 2, 1, NULL, '', '', '', '2022-11-13 08:38:29', '2023-07-03 04:57:49'),
(171, '', 'Claudiane Silva', '', 'claudianesilvagoncalves95@gmail.com', '', '1668357982873-dtliveclaudianesilva.jpeg', 2, 1, NULL, '', '', '', '2022-11-13 16:46:22', '2023-07-03 04:57:49'),
(172, '', 'mert', '+905354435705', 'merdyusuf3221@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-13 16:57:24', '2023-07-03 04:57:49'),
(173, '', 'Juan Mateo Ochoa', '', 'gerenciamm22@gmail.com', '', '1668369735306-dtlivejuanmateoochoa.jpeg', 2, 1, NULL, '', '', '', '2022-11-13 20:02:14', '2023-07-03 04:57:49'),
(174, '', 'Juan Florez', '+573016484837', 'florezsuarezjuanmiguel@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-14 00:01:32', '2023-07-03 04:57:49'),
(175, '', 'bbbb', '+23057125974', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-14 00:15:24', '2023-07-03 04:57:49'),
(176, '', 'MARUF “spitamens”', '+79996674334', '092196tjk@gmail.com', '', '1670929983772-dtlivemaruf“spitamens”.jpeg', 2, 1, NULL, '', '', '', '2022-11-14 00:22:13', '2023-07-03 04:57:49'),
(177, '', '', '+9779845136616', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-14 13:11:52', '2023-07-03 04:57:49'),
(178, '', 'Salim Salim', '', 'salimselim2000@gmail.com', '', '1668433781082-dtlivesalimsalim.jpeg', 2, 1, NULL, '', '', '', '2022-11-14 13:49:40', '2023-07-03 04:57:49'),
(181, '', 'Alisson Sabino Alberini', '', 'alissonalberini94@gmail.com', '', '1668453756770-dtlivealissonsabinoalberini.jpeg', 2, 1, NULL, '', '', '', '2022-11-14 19:22:35', '2023-07-03 04:57:49'),
(182, '', '', '+5534991934889', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-15 02:18:22', '2023-07-03 04:57:49'),
(183, '', 'Juan Florez', '3016484837', 'admin@admin.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-15 03:14:09', '2023-07-03 04:57:49'),
(184, '', 'Mohit Bardia', '', 'zotechofficial@gmail.com', '', '1668503337493-dtlivemohitbardia.jpeg', 2, 1, NULL, '', '', '', '2022-11-15 09:08:56', '2023-07-03 04:57:49'),
(185, '', 'Hernan', '3246432318', 'florezsuarezhernandario508@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-15 19:54:22', '2023-07-03 04:57:49'),
(186, '', 'Sebas Soto', '', 'sebassoto2315@gmail.com', '', '1668545848679-dtlivesebassoto.jpeg', 2, 1, NULL, '', '', '', '2022-11-15 20:57:28', '2023-07-03 04:57:49'),
(187, '', 'paras', '+919106627311', 'parasprajapati39@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-16 01:21:09', '2023-07-03 04:57:49'),
(188, '', 'Sudhakar Chowdary', '+919494501553', 'naanihere@gmail.com', '', '1674198378082-dtlivesudhakarchowdary.jpeg', 2, 1, NULL, '', '', '', '2022-11-16 04:18:23', '2023-07-03 04:57:49'),
(189, '', '', '+919746588896', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-16 06:11:00', '2023-07-03 04:57:49'),
(190, '', 'Windtech Group', '', 'help.windtechgroup@gmail.com', '', '1668585910133-dtlivewindtechgroup.jpeg', 2, 1, NULL, '', '', '', '2022-11-16 08:05:09', '2023-07-03 04:57:49'),
(191, '', 'javed shaikh', '', 'shaikhjaveed486@gmail.com', '', '1668587858335-dtlivejavedshaikh.jpeg', 2, 1, NULL, '', '', '', '2022-11-16 08:37:37', '2023-07-03 04:57:49'),
(192, '', 'Mohsin', '+923047565056', 'hiflix32@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-16 20:07:24', '2023-07-03 04:57:49'),
(193, '', 'FLIXMOVIES-SERIES MODS', '', 'flixmoviesseriesmods@gmail.com', '', '1668632050327-dtliveflixmovies-seriesmods.jpeg', 2, 1, NULL, '', '', '', '2022-11-16 20:54:08', '2023-07-03 04:57:49'),
(194, '', 'Abir Rayhan', '+8801682639022', 'abirrayhan400@gmail.com', '', '1668729087204-dtliveabirrayhan.jpeg', 2, 1, NULL, '', '', '', '2022-11-17 23:51:26', '2023-07-03 04:57:49'),
(195, '', 'APK GOLD', '', 'yoortiz33@gmail.com', '', '1668735617438-dtliveapkgold.jpeg', 2, 1, NULL, '', '', '', '2022-11-18 01:40:16', '2023-07-03 04:57:49'),
(196, '', 'Lena Delgado', '', 'lenadelgado.25211@gmail.com', '', '1668853552070-dtlivelenadelgado.jpeg', 2, 1, NULL, '', '', '', '2022-11-19 10:25:51', '2023-07-03 04:57:49'),
(197, '', 'sujit', '+918777541194', 'sonu.samir.sharma@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-19 18:00:18', '2023-07-03 04:57:49'),
(198, '', 'Md Rakibul Islam', '+8801812400101', 'md.rakibul447790@gmail.com', '', '1668893179870-dtlivemdrakibulislam.jpeg', 2, 1, NULL, '', '', '', '2022-11-19 21:26:19', '2023-07-03 04:57:49'),
(199, '', 'Md Rakibul Islam', '36003600', 'mrihridoy123@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-20 09:26:35', '2023-07-03 04:57:49'),
(200, '', 'Game Tech Thunder', '+2600770870934', 'xeno3441@gmail.com', '', '1672659759512-200_1672659757186.jpeg', 2, 1, NULL, '', '', '', '2022-11-20 10:32:59', '2023-07-03 04:57:49'),
(201, '', 'Aman Kumar', '', 'aman93248647@gmail.com', '', '1668949930736-dtliveamankumar.jpeg', 2, 1, NULL, '', '', '', '2022-11-20 13:12:09', '2023-07-03 04:57:49'),
(202, '', 'Md Rakibul Islam', '36003600', 'mrihridoy@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-20 16:01:21', '2023-07-03 04:57:49'),
(203, '', 'raju khai', '', 'rajukhai777@gmail.com', '', '1670117596517-dtliverajukhai.jpeg', 2, 1, NULL, '', '', '', '2022-11-21 01:13:10', '2023-07-03 04:57:49'),
(204, '', 'Butt Flix', '', 'buttflix7@gmail.com', '', '1669021993857-dtlivebuttflix.jpeg', 2, 1, NULL, '', '', '', '2022-11-21 09:13:13', '2023-07-03 04:57:49'),
(205, '', 'Arshh', '+916268220800', 'iplayhindi@gmail.com', '', '1669023675000-dtlivearshh.jpeg', 2, 1, NULL, '', '', '', '2022-11-21 09:41:14', '2023-07-03 04:57:49'),
(206, '', 'Santiago Torres', '', 'trotator72@gmail.com', '', '1676609314980-dtlivesantiagotorres.jpeg', 2, 1, NULL, '', '', '', '2022-11-21 12:05:34', '2023-07-03 04:57:49'),
(207, '', 'mickylle damgo', '', 'mckylledamgo@gmail.com', '', '1669066202199-dtlivemickylledamgo.jpeg', 2, 1, NULL, '', '', '', '2022-11-21 21:30:01', '2023-07-03 04:57:49'),
(208, '', 'Sunil jadhav', '+919773071408', 'scriptzen.in@gmail.com', '', '1669077209068-dtlivesuniljadhav.jpeg', 2, 1, NULL, '', '', '', '2022-11-22 00:33:28', '2023-07-03 04:57:49'),
(209, '', 'Fg Gg', '+919178845554', 'gtggghh45@gmail.com', '', '1669118576678-dtlivefggg.jpeg', 2, 1, NULL, '', '', '', '2022-11-22 12:02:55', '2023-07-03 04:57:49'),
(210, '', 'S Series News', '', 'moharalishah1@gmail.com', '', '1669189977643-dtlivesseriesnews.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 07:52:56', '2023-07-03 04:57:49'),
(211, '', 'ketan sonawane', '', 'ketansonawane2002@gmail.com', '', '1669201449332-dtliveketansonawane.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 11:04:07', '2023-07-03 04:57:49'),
(212, '', 'mhmoud lotfy', '', 'mhmoudlotfy405@gmail.com', '', '1669205912131-dtlivemhmoudlotfy.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 12:18:31', '2023-07-03 04:57:49'),
(213, '', 'flinton tv', '+918011489002', 'flintontvstudio@gmail.com', '', '1669209871896-dtliveflintontv.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 13:24:31', '2023-07-03 04:57:49'),
(214, '', 'Carlos Bezerra', '', 'nemdf418@gmail.com', '', '1669210501764-dtlivecarlosbezerra.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 13:35:01', '2023-07-03 04:57:49'),
(215, '', 'A S PAPPU', '', 'abusayeedpappu@gmail.com', '', '1669228684627-dtliveaspappu.jpeg', 2, 1, NULL, '', '', '', '2022-11-23 18:38:04', '2023-07-03 04:57:49'),
(216, '', '', '+919904615269', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-23 23:51:34', '2023-07-03 04:57:49'),
(217, '', '', '+917876910093', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-24 06:12:07', '2023-07-03 04:57:49'),
(218, '', '', '', 'admin@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-24 11:14:02', '2023-07-03 04:57:49'),
(219, '', 'Mcq Hub', '', 'mcqhub89@gmail.com', '', '1669481670748-dtlivemcqhub.jpeg', 2, 1, NULL, '', '', '', '2022-11-24 11:40:40', '2023-07-03 04:57:49'),
(220, '', 'testou', '3535313535435', 'nicolops@outlook.fr', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-24 19:04:01', '2023-07-03 04:57:49'),
(221, '', '', '', 'zeusmankato@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-24 23:26:59', '2023-07-03 04:57:49'),
(222, '', 'Ravi', '', '2ravi80113964@gmail.com', '', '1669350911343-dtliveravi.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 04:35:09', '2023-07-03 04:57:49'),
(223, '', 'E - SEVAI', '+919087545854', 'esevaihelp@gmail.com', '', '1669375823300-dtlivee-sevai.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 11:30:22', '2023-07-03 04:57:49'),
(224, '', '', '+917717755796', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-25 13:42:39', '2023-07-03 04:57:49'),
(225, '', 'Di Động Thanh Bình', '', 'hothanhbinhsonthuy@gmail.com', '', '1669384436353-dtlivediđộngthanhbình.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 13:53:52', '2023-07-03 04:57:49'),
(226, '', 'javem', '+917299885599', 'javem13928@arnend.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-25 14:14:45', '2023-07-03 04:57:49'),
(227, '', 'Shared', '+919529944911', 'sharaddikule25@gmail.com', '', '1669390081993-dtliveshared.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 15:28:01', '2023-07-03 04:57:49'),
(228, '', 'Amaury Brito', '', 'amaurysk@gmail.com', '', '1669391558320-dtliveamaurybrito.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 15:52:37', '2023-07-03 04:57:49'),
(229, '', 'Futy Hif', '', 'hiffuty@gmail.com', '', '1669392204912-dtlivefutyhif.jpeg', 2, 1, NULL, '', '', '', '2022-11-25 16:03:24', '2023-07-03 04:57:49'),
(230, '', 'uyuyuyuy', '25434534', 'grgfdgf@gd.fs.gr', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-25 20:17:02', '2023-07-03 04:57:49'),
(231, '', '', '', 'osnsub1010@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-26 12:50:44', '2023-07-03 04:57:49'),
(232, '', 'asaqsx', '12343445', 'demo@demo.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-26 14:17:04', '2023-07-03 04:57:49'),
(233, '', 'South Trade', '+917981282924', 'hsajjad227@gmail.com', '', '1669498474152-dtlivesouthtrade.jpeg', 2, 1, NULL, '', '', '', '2022-11-26 20:14:44', '2023-07-03 04:57:49'),
(234, '', 'Erick Richard', '+917842535922', 'erickmwema27@gmail.com', '', '1669537453732-dtliveerickrichard.jpeg', 2, 1, NULL, '', '', '', '2022-11-27 08:24:13', '2023-07-03 04:57:49'),
(235, '', 'Communication', '', 'com.ifpnr@gmail.com', '', '1669574178024-dtlivecommunication.jpeg', 2, 1, NULL, '', '', '', '2022-11-27 18:36:17', '2023-07-03 04:57:49'),
(236, '', '', '+5561991407667', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-28 01:04:41', '2023-07-03 04:57:49'),
(237, '', 'rodrigo', '56888888', 'rga333222@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-11-28 12:04:01', '2023-07-03 04:57:49'),
(238, '', 'Larry Guerrero', '', 'larryguerrero.69522@gmail.com', '', '1669637331745-dtlivelarryguerrero.jpeg', 2, 1, NULL, '', '', '', '2022-11-28 12:08:51', '2023-07-03 04:57:49'),
(239, '', 'Mehedi H Munna', '+8801643510215', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-28 12:14:49', '2023-07-03 04:57:49'),
(240, '', 'Metehan Akdag', '', 'metehan32599@gmail.com', '', '1669659701366-dtlivemetehanakdag.jpeg', 2, 1, NULL, '', '', '', '2022-11-28 18:21:41', '2023-07-03 04:57:49'),
(241, '', 'IVAN PAUCAR -', '', 'ivanpaucars19@gmail.com', '', '1669660933494-dtliveivanpaucar-.jpeg', 2, 1, NULL, '', '', '', '2022-11-28 18:42:12', '2023-07-03 04:57:49'),
(242, '', 'Rola Valdez', '', 'rolavaldez90@gmail.com', '', '1669675815322-dtliverolavaldez.jpeg', 2, 1, NULL, '', '', '', '2022-11-28 22:50:14', '2023-07-03 04:57:49'),
(243, '', 'Rogelio Stephens', '', 'rogeliostephens.57357@gmail.com', '', '1669703785815-dtliverogeliostephens.jpeg', 2, 1, NULL, '', '', '', '2022-11-29 06:36:25', '2023-07-03 04:57:49'),
(244, '', 'Prattay Chakraborty', '+919547724373', 'prattaychakraborty358@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-29 10:51:38', '2023-07-03 04:57:49'),
(245, '', '', '+917990926985', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-11-30 07:27:15', '2023-07-03 04:57:49'),
(246, '', 'Alfa Porn', '', 'pornalfa1@gmail.com', '', '1669921585315-dtlivealfaporn.jpeg', 2, 1, NULL, '', '', '', '2022-11-30 10:16:15', '2023-07-03 04:57:49'),
(247, '', 'sudhanshu singh', '', 'sudhanshuvrns@gmail.com', '', '1669825797452-dtlivesudhanshusingh.jpeg', 2, 1, NULL, '', '', '', '2022-11-30 16:29:56', '2023-07-03 04:57:49'),
(248, '', 'Sujay Sarkar', '', 'kdark7229@gmail.com', '', '1669837160068-dtlivesujaysarkar.jpeg', 2, 1, NULL, '', '', '', '2022-11-30 19:39:19', '2023-07-03 04:57:49'),
(249, '', '', '+918222055519', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-01 07:56:45', '2023-07-03 04:57:49'),
(250, '', 'BRB team', '', 'mohdniyaz762@gmail.com', '', '1669884339328-dtlivebrbteam.jpeg', 2, 1, NULL, '', '', '', '2022-12-01 08:45:38', '2023-07-03 04:57:49'),
(251, '', '', '', 'working02712@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-01 10:18:25', '2023-07-03 04:57:49'),
(252, '', '', '+88001611140462', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-01 19:23:13', '2023-07-03 04:57:49'),
(253, '', '', '+918780827603', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-02 06:09:42', '2023-07-03 04:57:49'),
(254, '', 'Dinesh Surya', '', 'dineshjob503@gmail.com', '', '1670008514921-dtlivedineshsurya.jpeg', 2, 1, NULL, '', '', '', '2022-12-02 19:15:14', '2023-07-03 04:57:49'),
(255, '', 'Megaflix Mega', '', 'megaflixmega@gmail.com', '', '1670016084569-dtlivemegaflixmega.jpeg', 2, 1, NULL, '', '', '', '2022-12-02 21:21:23', '2023-07-03 04:57:49'),
(256, '', 'Kiruthka Lakshmi', '+919514544571', 'kiruthkalakshmi@gmail.com', '', '1670047990343-dtlivekiruthkalakshmi.jpeg', 2, 1, NULL, '', '', '', '2022-12-03 06:13:09', '2023-07-03 04:57:49'),
(257, '', 'Thanushanth', '+94767956028', 'Thanushanth1234@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-03 15:28:14', '2023-07-03 04:57:49'),
(258, '', 'harish jaiswal', '+918319449014', 'harshjaish11@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-03 16:03:06', '2023-07-03 04:57:49'),
(259, '', 'Raja spanraj', '+255788221503', 'rspanraj@gmail.com', '', '1670085608811-dtliverajaspanraj.jpeg', 2, 1, NULL, '', '', '', '2022-12-03 16:40:08', '2023-07-03 04:57:49'),
(260, '', 'Fahi Ahmmed', '', 'fahiahmmed343@gmail.com', '', '1670093127261-dtlivefahiahmmed.jpeg', 2, 1, NULL, '', '', '', '2022-12-03 18:45:26', '2023-07-03 04:57:49'),
(261, '', 'Ertugrul Gazii', '', 'hamtumx123@gmail.com', '', '1670097682857-dtliveertugrulgazii.jpeg', 2, 1, NULL, '', '', '', '2022-12-03 20:01:22', '2023-07-03 04:57:49'),
(262, '', 'Igor', '+5551991040370', 'bearborgesdavila@gmail.com', '', '1674416621438-262_1674416653802.jpeg', 2, 1, NULL, '', '', '', '2022-12-04 04:31:09', '2023-07-03 04:57:49'),
(263, '', 'masho group', '+2550765434977', 'mashogroupltd@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-04 22:37:57', '2023-07-03 04:57:49'),
(264, '', 'RAKIBUL GAMING OFFICIAL', '', 'rakibahamad706@gmail.com', '', '1676171552395-dtliverakibulgamingofficial.jpeg', 2, 1, NULL, '', '', '', '2022-12-05 02:36:10', '2023-07-03 04:57:49'),
(265, '', 'Test', '15277', 'rimiloca20@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-05 07:38:33', '2023-07-03 04:57:49'),
(266, '', 'Don Pierre', '', 'donpierre865@gmail.com', '', '1670245475469-dtlivedonpierre.jpeg', 2, 1, NULL, '', '', '', '2022-12-05 13:04:33', '2023-07-03 04:57:49'),
(267, '', 'Israel Mukanzo', '', 'israelmukanzo31@gmail.com', '', '1670267105666-dtliveisraelmukanzo.jpeg', 2, 1, NULL, '', '', '', '2022-12-05 19:05:04', '2023-07-03 04:57:49'),
(268, '', 'Omotola Ogunleye', '', 'leyeomotola@gmail.com', '', '1670334180312-dtliveomotolaogunleye.jpeg', 2, 1, NULL, '', '', '', '2022-12-06 13:42:59', '2023-07-03 04:57:49'),
(269, '', '', '+918306240012', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-06 14:38:09', '2023-07-03 04:57:49'),
(270, '', 'Shehu Ahmad', '+2348096488224', 'abdul22000@gmail.com', '', '1670368366265-dtliveshehuahmad.jpeg', 2, 1, NULL, '', '', '', '2022-12-06 23:12:45', '2023-07-03 04:57:49'),
(271, '', 'Reymond Reyes', '', 'raymondantonioreyes@gmail.com', '', '1670422776638-dtlivereymondreyes.jpeg', 2, 1, NULL, '', '', '', '2022-12-07 14:19:36', '2023-07-03 04:57:49'),
(272, '', 'Pavankrishna Ganta', '', 'pavankrishnaganta27@gmail.com', '', '1670429986412-dtlivepavankrishnaganta.jpeg', 2, 1, NULL, '', '', '', '2022-12-07 16:19:45', '2023-07-03 04:57:49'),
(273, '', 'ubuntu', '+2560773528880', 'ubuntulivingston@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-07 17:30:17', '2023-07-03 04:57:49'),
(274, '', 'Wender Costha', '', 'contato.wendercostha@gmail.com', '', '1670437010441-dtlivewendercostha.jpeg', 2, 1, NULL, '', '', '', '2022-12-07 18:16:49', '2023-07-03 04:57:49'),
(275, '', 'Fale Comigo', '', 'falecomigo.ghs@gmail.com', '', '1670437932759-dtlivefalecomigo.jpeg', 2, 1, NULL, '', '', '', '2022-12-07 18:32:12', '2023-07-03 04:57:49'),
(276, '', '', '+919576180589', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-08 07:57:17', '2023-07-03 04:57:49'),
(277, '', 'Chandni Patel', '', 'chandni.patel@mobiboxsoftech.com', '', '1670488070721-dtlivechandnipatel.jpeg', 2, 1, NULL, '', '', '', '2022-12-08 08:27:49', '2023-07-03 04:57:49'),
(278, '', 'Sumanta Das', '+916295710238', 'sumantasddas123@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-08 15:50:30', '2023-07-03 04:57:49'),
(279, '', 'Juan Alex Flores Salas', '+51921393148', 'utpfloressalas@gmail.com', '', '1670516758211-dtlivejuanalexfloressalas.jpeg', 2, 1, NULL, '', '', '', '2022-12-08 16:25:57', '2023-07-03 04:57:49'),
(280, '', 'Royer Tuesta Salas', '', 'utprts@gmail.com', '', '1670517232462-dtliveroyertuestasalas.jpeg', 2, 1, NULL, '', '', '', '2022-12-08 16:29:39', '2023-07-03 04:57:49'),
(281, '', 'Jsj', '676766446', 'Jsjs@skks.sks', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-09 09:35:30', '2023-07-03 04:57:49'),
(282, '', 'Favian Portocarrero', '', 'innovate.stream@gmail.com', '', '1670611041112-dtlivefavianportocarrero.jpeg', 2, 1, NULL, '', '', '', '2022-12-09 18:37:20', '2023-07-03 04:57:49'),
(283, '', 'Maruf hossain', '+8801742853572', 'mmc.maruf@gmail.com', '', '1670662309794-dtlivemarufhossain.jpeg', 2, 1, NULL, '', '', '', '2022-12-10 08:51:48', '2023-07-03 04:57:49'),
(284, '', '', '+85569870738', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-10 17:33:42', '2023-07-03 04:57:49'),
(285, '', '', '+923060690978', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 03:12:24', '2023-07-03 04:57:49'),
(286, '', 'We Creative', '+917276553218', 'qcreativehub@gmail.com', '', '1670740784170-dtlivewecreative.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 06:39:43', '2023-07-03 04:57:49'),
(287, '', 'Sathya Prakash', '', 'sathya_p140086ce@nitc.ac.in', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-11 07:20:00', '2023-07-03 04:57:49'),
(288, '', 'Pixel Design', '', 'pixeldesigndeveloper@gmail.com', '', '1670743235944-dtlivepixeldesign.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 07:20:35', '2023-07-03 04:57:49'),
(289, '', 'Vural Satıcı', '+905373195123', 'vrlsatuci@gmail.com', '', '1673282950915-dtlivevuralsatıcı.jpeg', 3, 1, NULL, '', '', '', '2022-12-11 07:38:32', '2023-07-03 04:57:49'),
(290, '', 'Balkrushna', '', 'deysupto94@gmail.com', '', '1679889930.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 07:49:19', '2023-07-03 04:57:49'),
(291, '', 'Monkey D Luffy', '', 'futurepirateking2020@gmail.com', '', '1670746383099-dtlivemonkeydluffy.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 08:13:02', '2023-07-03 04:57:49'),
(292, '', 'Puremoney Pro', '', 'puremoneypro@gmail.com', '', '1670746903214-dtlivepuremoneypro.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 08:21:42', '2023-07-03 04:57:49'),
(293, '', 'mBillah', '', 'pnmop2001@gmail.com', '', '1679750158.jpg', 2, 1, NULL, '', '', '', '2022-12-11 08:45:00', '2023-07-03 04:57:49'),
(294, '', '', '+923006905678', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 08:53:44', '2023-07-03 04:57:49'),
(295, '', 'Tilich', '077870738', 'bizzocial@gmail.com', '', '1670752029522-a12-01.png', 2, 1, NULL, '', '', '', '2022-12-11 09:20:18', '2023-07-03 04:57:49'),
(296, '', 'The Royal Ocean Film Society', '+2001066721356', 'mly150779@gmail.com', '', '1670751868593-dtlivetheroyaloceanfilmsociety.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 09:44:28', '2023-07-03 04:57:49'),
(297, '', 'Fabio Martins', '', 'fabiourj@gmail.com', '', '1670753431729-dtlivefabiomartins.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 10:10:31', '2023-07-03 04:57:49'),
(298, '', 'Ishtiaq Ali Chughtai', '+923026881965', 'ishtiaqali141@gmail.com', '', '1679885106.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 11:01:09', '2023-07-03 04:57:49'),
(299, '', 'Carl Maas', '', 'carlmaas31@gmail.com', '', '1670759959467-dtlivecarlmaas.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 11:59:18', '2023-07-03 04:57:49'),
(300, '', 'Samyak Chaudhary', '', 'samyakchy1@gmail.com', '', '1670760245009-dtlivesamyakchaudhary.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 12:04:04', '2023-07-03 04:57:49'),
(301, '', 'DEVELOPER TJ', '+992900700042', 'developer@proday.tj', '', '1685766146.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 12:14:40', '2023-07-03 04:57:49'),
(302, '', 'Biswas Hacker', '', 'biswashacker5@gmail.com', '', '1670768829178-dtlivebiswashacker.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 14:27:08', '2023-07-03 04:57:49'),
(303, '', 'Saurav Garg', '+919006444755', 'sauravgarg5922@gmail.com', '', '1688156938.jpeg', 3, 1, NULL, '', '', '', '2022-12-11 14:51:17', '2023-07-03 04:57:49'),
(304, '', '', '+88001626321032', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 15:12:55', '2023-07-03 04:57:49'),
(305, '', 'Binaya Meher', '', 'binayakumarmeher02@gmail.com', '', '1670773318943-dtlivebinayameher.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 15:41:58', '2023-07-03 04:57:49'),
(306, '', 'smog coders', '', 'smoggrafton@gmail.com', '', '1670774622916-dtlivesmogcoders.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 16:03:41', '2023-07-03 04:57:49'),
(307, '', 'zubair', '+923453799494', 'jazzbox@hotmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 16:33:13', '2023-07-03 04:57:49'),
(308, '', 'MITHU MANDAL', '', 'email.mithumandal@gmail.com', '', '1670776438986-dtlivemithumandal.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 16:33:58', '2023-07-03 04:57:49'),
(309, '', 'اية', '', 'ayt129405@gmail.com', '', '1670776580166-dtliveاية.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 16:36:18', '2023-07-03 04:57:49'),
(310, '', '', '+255719564583', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 16:39:29', '2023-07-03 04:57:49'),
(311, '', 'remove', '+51958014206', '+51958014206', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 16:39:48', '2023-07-03 04:57:49'),
(312, '', 'Phonzie', '', 'sportsoccer360@gmail.com', '', '1671278546604-dtlivesportssoccer360.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 17:22:19', '2023-07-03 04:57:49'),
(313, '', 'Himanshu Kumar', '', 'himanshukumarc898@gmail.com', '', '1670786160031-dtlivehimanshukumar.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 19:15:59', '2023-07-03 04:57:49'),
(314, '', '', '+8801775878369', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 20:08:12', '2023-07-03 04:57:49'),
(315, '', 'renato del Villar rio', '+51960613452', 'delvillarr07@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-11 21:16:09', '2023-07-03 04:57:49'),
(316, '', 'Redx Studio', '+917003984307', 'hello.redxstudios@gmail.com', '', '1670793395964-dtliveredxstudio.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 21:16:35', '2023-07-03 04:57:49'),
(317, '', 'Victor Harmani', '', 'harmanicodes@gmail.com', '', '1670795142552-dtlivevictorharmani.jpeg', 2, 1, NULL, '', '', '', '2022-12-11 21:45:42', '2023-07-03 04:57:49'),
(318, '', 'Adil jbili', '', 'linkinx.jbili@gmail.com', '', '1670803590407-dtliveadiljbili.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 00:06:30', '2023-07-03 04:57:49'),
(319, '', 'SMTV DOTIN', '+919779821793', 'smtvdotin@gmail.com', '', '1670803696967-dtlivesmtvdotin.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 00:08:16', '2023-07-03 04:57:49'),
(320, '', 'Karan Chunara', '', 'chunarakaran@gmail.com', '', '1670810937153-dtlivekaranchunara.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 02:08:56', '2023-07-03 04:57:49'),
(321, '', 'gulku', '+491634615171', 'balpbj1@whaaatnow.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 02:34:57', '2023-07-03 04:57:49'),
(322, '', 'Lien Minh', '', 'acclienminhpro1n@gmail.com', '', '1670818752302-dtlivelienminh.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 04:19:11', '2023-07-03 04:57:49'),
(323, '', 'Android Developer', '', 'ravikarma2020@gmail.com', '', '1670819952048-dtliveandroiddeveloper.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 04:39:10', '2023-07-03 04:57:49'),
(324, '', '', '+88001866864418', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 05:16:35', '2023-07-03 04:57:49'),
(325, '', '', '+918219503445', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 05:44:44', '2023-07-03 04:57:49'),
(326, '', '', '+971501841195', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 05:50:56', '2023-07-03 04:57:49'),
(327, '', '', '+88001711378822', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 06:02:24', '2023-07-03 04:57:49'),
(328, '', 'Marta SOlaris', '+9809302531626', 'isarjanfaza.1363@gmail.com', '', '1670825776291-dtlivemartasolaris.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 06:16:15', '2023-07-03 04:57:49'),
(329, '', 'Roushan Alam', '+917004639485', 'aroushan9@gmail.com', '', '1671625304064-dtliveroushanalam.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 08:28:19', '2023-07-03 04:57:49'),
(330, '', '', '+33644627249', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 10:08:00', '2023-07-03 04:57:49'),
(331, '', 'Kadircan Oğuz', '', 'canoguz1915@gmail.com', '', '1670843085735-dtlivekadircanoğuz.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 11:04:45', '2023-07-03 04:57:49'),
(332, '', 'BUSINESS. CAREYT', '+919044901315', 'business.careyt@gmail.com', '', '1670844478473-dtlivebusiness.careyt.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 11:27:57', '2023-07-03 04:57:49'),
(333, '', 'hfjkn', '+919907209431', 'mondalrajib1@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 13:45:22', '2023-07-03 04:57:49'),
(334, '', 'Wender Costha', '', 'contato.wendercosta@gmail.com', '', '1672157775900-dtlivewendercostha.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 14:47:39', '2023-07-03 04:57:49'),
(335, '', 'mohit kumar Kumar', '+919557046165', 'sandeepkumarbjn98@gmail.com', '', '1670860485367-dtlivemohitkumarkumar.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 15:54:44', '2023-07-03 04:57:49'),
(336, '', 'Amyrul Mukmynin', '+60166673810', 'amyrulmynin@gmail.com', '', '1670865613548-dtliveamyrulmukmynin.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 17:20:12', '2023-07-03 04:57:49'),
(337, '', 'Teknobist Inc.', '', 'teknobist.com@gmail.com', '', '1670867380304-dtliveteknobistınc..jpeg', 2, 1, NULL, '', '', '', '2022-12-12 17:49:40', '2023-07-03 04:57:49'),
(338, '', '', '+256759797925', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-12 17:59:18', '2023-07-03 04:57:49'),
(339, '', 'Muhammad Saleem', '', 'saimewrites@gmail.com', '', '1672969107245-dtlivemuhammadsaleem.jpeg', 2, 1, NULL, '', '', '', '2022-12-12 18:43:34', '2023-07-03 04:57:49'),
(340, '', 'BAKTHAVACHALAM .S', '+919361590799', 'vekneshvaranselvaraj@gmail.com', '', '1683699154.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 03:42:42', '2023-07-03 04:57:49'),
(341, '', 'ashmit', '+918306121284', 'thecrazygamer', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-13 06:11:46', '2023-07-03 04:57:49'),
(342, '', 'Jay Enterprises', '', 'jaieyeweb@gmail.com', '', '1670917703311-dtlivejayenterprises.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 06:56:40', '2023-07-03 04:57:49'),
(343, '', 'Chetna Chandra', '', 'chandrachetna909@gmail.com', '', '1670915460226-dtlivechetnachandra.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 07:10:59', '2023-07-03 04:57:49'),
(344, '', 'Pricy Pepple (CB Network)', '', 'pricyypepple@gmail.com', '', '1670921098625-dtlivepricypepple(cbnetwork).jpeg', 2, 1, NULL, '', '', '', '2022-12-13 08:44:58', '2023-07-03 04:57:49'),
(345, '', 'Ahmed Lcf', '', 'ahmedlcf12@gmail.com', '', '1670935444259-dtliveahmedlcf.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 12:44:03', '2023-07-03 04:57:49'),
(346, '', 'Alief', '', 'muhamadalamin2206@gmail.com', '', '1670936980986-dtlivealief.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 13:09:40', '2023-07-03 04:57:49'),
(347, '', 'Najma', '', 'najmowarsame66@gmail.com', '', '1670945552214-dtlivenajma.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 15:32:31', '2023-07-03 04:57:49'),
(348, '', 'PostAnyThing Tv', '', 'postanythingtv@gmail.com', '', '1670963593232-dtlivepostanythingtv.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 20:33:12', '2023-07-03 04:57:49'),
(349, '', 'Trap queen', '+213796372189', 'frxtrap@gmail.com', '', '1670968773791-dtlivetrapqueen.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 21:59:33', '2023-07-03 04:57:49'),
(350, '', 'Master', '+50584323287', 'makersfree@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-13 23:10:55', '2023-07-03 04:57:49'),
(351, '', 'Oğuzhan Çiçek', '', 'bollqo@gmail.com', '', '1670974609756-dtliveoğuzhançiçek.jpeg', 2, 1, NULL, '', '', '', '2022-12-13 23:36:49', '2023-07-03 04:57:49'),
(352, '', 'Pedro Jose Dumar', '', 'dumar1893@gmail.com', '', '1670987727823-dtlivepedrojosedumar.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 03:15:27', '2023-07-03 04:57:49'),
(353, '', '', '+918319140522', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-14 03:19:47', '2023-07-03 04:57:49'),
(354, '', 'Gagan Debbarma', '', 'gaganjharia@gmail.com', '', '1671013457614-dtlivegagandebbarma.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 10:24:17', '2023-07-03 04:57:49'),
(355, '', 'dhiflixmv team', '', 'dhiflixmv@gmail.com', '', '1671018382869-dtlivedhiflixmvteam.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 11:46:22', '2023-07-03 04:57:49'),
(356, '', 'Bac Nguyen', '', 'nvvuongbac50@gmail.com', '', '1671019284316-dtlivebacnguyen.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 12:01:23', '2023-07-03 04:57:49'),
(357, '', 'Dev Test', '', 'testapkmovies@gmail.com', '', '1671030395323-dtlivedevtest.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 15:06:35', '2023-07-03 04:57:49'),
(358, '', 'Hacky Adam', '', 'hackyadam@gmail.com', '', '1671034582437-dtlivehackyadam.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 16:16:21', '2023-07-03 04:57:49'),
(359, '', 'Daniel ASC', '', 'danieltemplo657@gmail.com', '', '1684505599.png', 2, 1, NULL, '', '', '', '2022-12-14 16:27:45', '2023-07-03 04:57:49'),
(360, '', 'Jose Antonio', '', 'joseantonyoficial@gmail.com', '', '1671038735087-dtlivejoseantonio.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 17:25:33', '2023-07-03 04:57:49'),
(361, '', 'Fabio Daniel', '', 'fdanielwork24@gmail.com', '', '1671039582411-dtlivefabiodaniel.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 17:39:41', '2023-07-03 04:57:49'),
(362, '', 'Helena Models', '', 'helenamodelstv@gmail.com', '', '1671047025471-dtlivehelenamodels.jpeg', 2, 1, NULL, '', '', '', '2022-12-14 19:43:44', '2023-07-03 04:57:49'),
(363, '', 'Rodrigo do Carmo', '', 'hainghles56@gmail.com', '', '1671070982462-dtliverodrigodocarmo.jpeg', 2, 1, NULL, '', '', '', '2022-12-15 02:23:01', '2023-07-03 04:57:49'),
(364, '', '', '', 'volkantr@mail.goldflix.site', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-15 14:53:09', '2023-07-03 04:57:49'),
(365, '', 'Felix Otieno', '', 'watchtrix@gmail.com', '', '1671122697380-dtlivefelixotieno.jpeg', 2, 1, NULL, '', '', '', '2022-12-15 16:44:56', '2023-07-03 04:57:49'),
(366, '', 'Prerna Sj', '', 'preranafest2018@gmail.com', '', '1671129329188-dtliveprernasj.jpeg', 2, 1, NULL, '', '', '', '2022-12-15 18:35:28', '2023-07-03 04:57:49'),
(367, '', 'Rafael Silva', '+5561982166734', 'ranytuin@gmail.com', '', '1680902103.jpeg', 2, 1, NULL, '', '', '', '2022-12-15 19:23:44', '2023-07-03 04:57:49'),
(368, '', 'nnnn', '+919813112090', 'juucmqemhb@nightorb.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-15 20:45:55', '2023-07-03 04:57:49'),
(369, '', 'aliflix tv', '+213669513695', 'tvaliflix@gmail.com', '', '1671155753621-dtlivealiflixtv.jpeg', 2, 1, NULL, '', '', '', '2022-12-16 01:55:53', '2023-07-03 04:57:49'),
(370, '', '', '+919898352931', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-16 05:09:34', '2023-07-03 04:57:49'),
(371, '', '', '+917984859403', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-16 05:45:48', '2023-07-03 04:57:49'),
(372, '', '', '+919974598899', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-16 05:50:52', '2023-07-03 04:57:49'),
(373, '', 'All in one filmy', '', 'sujalsharma620@gmail.com', '', '1671202061595-dtliveallinonefilmy.jpeg', 2, 1, NULL, '', '', '', '2022-12-16 14:47:40', '2023-07-03 04:57:49'),
(374, '', '', '+93703056560', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-16 14:51:00', '2023-07-03 04:57:49'),
(375, '', 'Tech me', '', 'tigertechnical62069@gmail.com', '', '1671214472063-dtlivetechme.jpeg', 2, 1, NULL, '', '', '', '2022-12-16 18:14:31', '2023-07-03 04:57:49'),
(376, '', '', '+77052338360', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-17 02:46:58', '2023-07-03 04:57:49'),
(377, '', '', '', 'hastaabajolara@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-17 03:49:59', '2023-07-03 04:57:49'),
(378, '', 'jassim kml', '+9647727791436', 'jassimkml@gmail.com', '', '1671264242475-dtlivejassimkml.jpeg', 2, 1, NULL, '', '', '', '2022-12-17 08:04:01', '2023-07-03 04:57:49'),
(379, '', '', '+919090066520', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-17 09:27:39', '2023-07-03 04:57:49'),
(380, '', 'Krishna Ray', '+919798012192', 'kr0694576@gmail.com', '', '1674208999798-dtlivekrishnaray.jpeg', 2, 1, NULL, '', '', '', '2022-12-17 10:40:52', '2023-07-03 04:57:49'),
(381, '', 'Bangla Web', '+8801611644478', 'banglaweb@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-17 11:06:57', '2023-07-03 04:57:49'),
(382, '', 'Kavin Divine', '', 'kd@dt.com', '', 'user.png', 1, 1, NULL, '', '', '', '2022-12-17 11:08:52', '2023-07-03 04:57:49'),
(383, '', 'Alberto', '', 'alberto@dt.com', '', 'user.png', 1, 1, NULL, '', '', '', '2022-12-17 11:22:14', '2023-07-03 04:57:49'),
(384, '', 'Peter England', '', 'pe@dt.com', '', 'user.png', 1, 1, NULL, '', '', '', '2022-12-17 11:33:00', '2023-07-03 04:57:49'),
(385, '', 'Temp Uydg', '', 'tempuydg@gmail.com', '', '1671294920184-dtlivetempuydg.jpeg', 2, 1, NULL, '', '', '', '2022-12-17 16:35:19', '2023-07-03 04:57:49'),
(386, '', '', '+930782595996', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-17 17:03:19', '2023-07-03 04:57:49'),
(387, '', 'Zeyad Mamdouh Elsayed', '', 'zeyadgamer1178@gmail.com', '', '1671304163572-dtlivezeyadmamdouhelsayed.jpeg', 2, 1, NULL, '', '', '', '2022-12-17 19:09:23', '2023-07-03 04:57:49'),
(388, '', 'moha', '+252614421184', 'm@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-17 19:22:13', '2023-07-03 04:57:49'),
(389, '', 'Manu Cash', '', 'oyulaemmanuel@gmail.com', '', '1671310436947-dtlivemanucash.jpeg', 2, 1, NULL, '', '', '', '2022-12-17 20:53:56', '2023-07-03 04:57:49'),
(390, '', 'Divyansh Jindal', '', 'divyanshjindal360@gmail.com', '', '1671333892378-dtlivedivyanshjindal.jpeg', 2, 1, NULL, '', '', '', '2022-12-18 03:24:51', '2023-07-03 04:57:49'),
(391, '', 'Yahya Hanif', '', 'yahyahanifofficial@gmail.com', '', '1671336280412-dtliveyahyahanif.jpeg', 2, 1, NULL, '', '', '', '2022-12-18 04:04:39', '2023-07-03 04:57:49'),
(392, '', 'geoio', '+55021983210381', 'ro.com.br.br@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-18 05:01:55', '2023-07-03 04:57:49'),
(393, '', 'Simple Explanation', '', 'winexpert2021@gmail.com', '', '1684164323.jpeg', 2, 1, NULL, '', '', '', '2022-12-18 05:26:31', '2023-07-03 04:57:49'),
(394, '', '', '+21658460277', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-18 13:05:17', '2023-07-03 04:57:49'),
(395, '', 'Elson Ferreira', '', 'elson.ferreiras.costa@gmail.com', '', '1671377361723-dtliveelsonferreira.jpeg', 2, 1, NULL, '', '', '', '2022-12-18 15:29:21', '2023-07-03 04:57:49'),
(396, '', '', '', 'admin@spagreen.net', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-18 19:42:39', '2023-07-03 04:57:49'),
(397, '', '', '+917908416302', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-18 20:33:49', '2023-07-03 04:57:49'),
(398, '', '', '+256782091961', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-19 01:55:24', '2023-07-03 04:57:49'),
(399, '', 'Nasiana Merwina', '', 'nasianamerwina63@gmail.com', '', '1671418249869-dtlivenasianamerwina.jpeg', 2, 1, NULL, '', '', '', '2022-12-19 02:50:49', '2023-07-03 04:57:49'),
(400, '', '', '+917783801377', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-19 14:58:50', '2023-07-03 04:57:49'),
(401, '', 'brachii fit', '', 'brachiifit@gmail.com', '', '1671478248986-dtlivebrachiifit.jpeg', 2, 1, NULL, '', '', '', '2022-12-19 19:30:48', '2023-07-03 04:57:49'),
(402, '', 'Dat Nguyen', '', 'datnt1884@gmail.com', '', '1673620385176-dtlivedatnguyen.jpeg', 2, 1, NULL, '', '', '', '2022-12-20 04:18:48', '2023-07-03 04:57:49'),
(403, '', 'Music 24*7', '', 'liveshow41@gmail.com', '', '1671511133180-dtlivemusic24*7.jpeg', 2, 1, NULL, '', '', '', '2022-12-20 04:38:52', '2023-07-03 04:57:49'),
(404, '', 'vikkiology india', '+919487132081', 'vikkiologyindia@gmail.com', '', '1671521072947-dtlivevikkiologyindia.jpeg', 2, 1, NULL, '', '', '', '2022-12-20 07:24:32', '2023-07-03 04:57:49'),
(405, '', 'Pocket Tv', '+917019244272', 'pockettvserver@gmail.com', '', '1671532721964-dtlivepockettv.jpeg', 2, 1, NULL, '', '', '', '2022-12-20 10:38:41', '2023-07-03 04:57:49'),
(406, '', 'vishal swami', '+917206839883', 'vishalswamiv@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-20 11:27:01', '2023-07-03 04:57:49'),
(407, '', 'Health Arcade', '', 'health.arcade.official@gmail.com', '', '1671587803936-dtlivehealtharcade.jpeg', 2, 1, NULL, '', '', '', '2022-12-21 01:56:43', '2023-07-03 04:57:49'),
(408, '', 'Code zi', '+917665060232', 'codeziinfo@gmail.com', '', '1686241547.jpeg', 2, 1, NULL, '', '', '', '2022-12-21 12:15:44', '2023-07-03 04:57:49');
INSERT INTO `user` (`id`, `user_name`, `name`, `mobile`, `email`, `password`, `image`, `type`, `status`, `expiry_date`, `api_token`, `email_verify_token`, `is_email_verify`, `created_at`, `updated_at`) VALUES
(409, '', 'Tofik Siraji', '9624591740', 'tofiksiraji1@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-21 13:05:09', '2023-07-03 04:57:49'),
(410, '', '', '', 'kyla@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-21 15:38:30', '2023-07-03 04:57:49'),
(411, '', '', '+21654106518', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-21 21:32:11', '2023-07-03 04:57:49'),
(412, '', 'Winsurf Developers', '0768958217', 'info@winsurf.top', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-22 04:45:32', '2023-07-03 04:57:49'),
(413, '', 'Rizal Vfx', '', 'rizalvfx5@gmail.com', '', '1671685439376-dtliverizalvfx.jpeg', 2, 1, NULL, '', '', '', '2022-12-22 05:03:58', '2023-07-03 04:57:49'),
(414, '', 'Imdadullah Babu', '+917002746873', 'imdadullahbabu01@gmail.com', '', '1671727070977-dtliveimdadullahbabu.jpeg', 2, 1, NULL, '', '', '', '2022-12-22 16:37:50', '2023-07-03 04:57:49'),
(415, '', 'Jazba Stream', '+923028529093', 'jazbastream@gmail.com', '', '1672893414401-dtlivejazbastream.jpeg', 2, 1, NULL, '', '', '', '2022-12-23 12:46:38', '2023-07-03 04:57:49'),
(416, '', 'Yury Carvalho', '', 'carvalhoyury810@gmail.com', '', '1671814552886-dtliveyurycarvalho.jpeg', 2, 1, NULL, '', '', '', '2022-12-23 16:55:52', '2023-07-03 04:57:49'),
(417, '', 'chandan kumar', '', 'chandanyadavadsence@gmail.com', '', '1671874696751-dtlivechandankumar.jpeg', 2, 1, NULL, '', '', '', '2022-12-24 09:38:15', '2023-07-03 04:57:49'),
(418, '', 'BICKY ADHIKARI', '234567890', 'bickyadh@gmail.com', '', '1671875320754-alien-movie-poster-sigourney-weaver-movie-poster-wallpaper-preview.jpg', 2, 1, NULL, '', '', '', '2022-12-24 09:48:14', '2023-07-03 04:57:49'),
(419, '', 'Aman Kumar', '+918790284836', 'ak7702401082@gmail.com', '', '1671904357746-dtliveamankumar.jpeg', 2, 1, NULL, '', '', '', '2022-12-24 17:52:36', '2023-07-03 04:57:49'),
(420, '', 'Maya Sapira', '', 'mayasapira25@gmail.com', '', '1679818684.jpeg', 2, 1, NULL, '', '', '', '2022-12-24 21:57:35', '2023-07-03 04:57:49'),
(421, '', 'Smart Boy', '', 'zindabadp034@gmail.com', '', '1680810787.jpeg', 2, 1, NULL, '', '', '', '2022-12-25 15:32:15', '2023-07-03 04:57:49'),
(422, '', 'Francisco Javier', '+573028617146', 'fjbarazarte@gmail.com', '', '1682887354.jpeg', 2, 1, NULL, '', '', '', '2022-12-25 21:51:16', '2023-07-03 04:57:49'),
(423, '', '', '+917012444108', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-26 04:38:10', '2023-07-03 04:57:49'),
(424, '', '', '', 'sdgsdfgs@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-26 06:52:19', '2023-07-03 04:57:49'),
(425, '', 'Perix', '', 'obo.perix.yt@gmail.com', '', '1672052416638-dtliveperix.jpeg', 2, 1, NULL, '', '', '', '2022-12-26 11:00:16', '2023-07-03 04:57:49'),
(426, '', 'Business Infoline', '', 'businessinfolines@gmail.com', '', '1672058156595-dtlivebusinessinfoline.jpeg', 2, 1, NULL, '', '', '', '2022-12-26 12:35:55', '2023-07-03 04:57:49'),
(427, '', '', '+919016373736', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-26 12:50:54', '2023-07-03 04:57:49'),
(428, '', 'Nova Master', '', 'novamaster922@gmail.com', '', '1672076571202-dtlivenovamaster.jpeg', 2, 1, NULL, '', '', '', '2022-12-26 17:42:50', '2023-07-03 04:57:49'),
(429, '', 'BachuBhai Patel', '', 'bachubhai.family248@gmail.com', '', '1685455077.png', 2, 1, NULL, '', '', '', '2022-12-27 06:44:23', '2023-07-03 04:57:49'),
(430, '', 'Aaa Aa', '', 'aaa943485@gmail.com', '', '1672860431193-dtliveaaaaa.jpeg', 2, 1, NULL, '', '', '', '2022-12-27 07:05:20', '2023-07-03 04:57:49'),
(431, '', 'alvaro edurado', '', 'alvinhoeduardo21@gmail.com', '', '1672132550429-dtlivealvaroedurado.jpeg', 2, 1, NULL, '', '', '', '2022-12-27 09:15:49', '2023-07-03 04:57:49'),
(432, '', 'DivineTechs Developer', '', 'mobileapp.divinetechs@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-27 09:33:14', '2023-07-03 04:57:49'),
(433, '', '', '+919170769171', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-27 14:02:36', '2023-07-03 04:57:49'),
(434, '', '', '+93799600205', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-27 19:02:23', '2023-07-03 04:57:49'),
(435, '', 'Quang Lê Nguyễn Duy', '+840878733883', 'lequang.hs99@gmail.com', '', '1672195005426-dtlivequanglênguyễnduy.jpeg', 2, 1, NULL, '', '', '', '2022-12-28 02:36:44', '2023-07-03 04:57:49'),
(436, '', 'Mzo pop', '+201000979363', 'mzopop10@gmail.com', '', '1672221163935-dtlivemzopop.jpeg', 2, 1, NULL, '', '', '', '2022-12-28 09:52:43', '2023-07-03 04:57:49'),
(437, '', 'Dinatan', '', 'gabiborgesdavila@gmail.com', '', '1674664068440-dtliveagudosbrasil.jpeg', 2, 1, NULL, '', '', '', '2022-12-29 05:56:06', '2023-07-03 04:57:49'),
(438, '', 'bhuva divyesh', '', 'divyesh.pwtech@gmail.com', '', '1672316067255-dtlivebhuvadivyesh.jpeg', 2, 1, NULL, '', '', '', '2022-12-29 12:14:26', '2023-07-03 04:57:49'),
(439, '', 'Mary D Martin', '4358705200', 'xayayov545@dmonies.com', '', '1672319146518-favicon.png', 2, 1, NULL, '', '', '', '2022-12-29 13:05:20', '2023-07-03 04:57:49'),
(440, '', 'Jatin Kadiyan', '+919813587999', 'kadiyanjatin28@gmail.com', '', '1685885544.jpeg', 2, 1, NULL, '', '', '', '2022-12-29 17:13:20', '2023-07-03 04:57:49'),
(441, '', '', '+919813587999', '', '', 'user.png', 3, 1, NULL, '', '', '', '2022-12-29 17:14:26', '2023-07-03 04:57:49'),
(442, '', 'FLMFLIX', '', 'flmflix.help@gmail.com', '', '1672367447910-dtliveflmflix.jpeg', 2, 1, NULL, '', '', '', '2022-12-30 02:30:47', '2023-07-03 04:57:49'),
(443, '', 'Mohammad Ebrahimi', '', 'mohammadebrahimi0317@gmail.com', '', '1672406488931-dtlivemohammadebrahimi.jpeg', 2, 1, NULL, '', '', '', '2022-12-30 13:21:27', '2023-07-03 04:57:49'),
(444, '', 'Alexandro Goncalves', '91984071252', 'alexandropgoncalves@gmail.com', '', '1672445872206-dtlivealexandrogonçalves.jpeg', 2, 1, NULL, '', '', '', '2022-12-31 00:17:51', '2023-07-03 04:57:49'),
(445, '', 'Roger', '075821755', 'Kangahroger@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2022-12-31 16:18:19', '2023-07-03 04:57:49'),
(446, '', 'mbarek dhia', '', 'dhiambarek49@gmail.com', '', '1672521586144-dtlivembarekdhia.jpeg', 2, 1, NULL, '', '', '', '2022-12-31 21:19:45', '2023-07-03 04:57:49'),
(447, '', 'Rifan Ali', '', 'mdrifanali@gmail.com', '', '1672567620729-dtliverifanali.jpeg', 2, 1, NULL, '', '', '', '2023-01-01 10:07:00', '2023-07-03 04:57:49'),
(448, '', 'yasir risifa', '', 'yasirrisifastudio@gmail.com', '', '1672598769757-dtliveyasirrisifa.jpeg', 2, 1, NULL, '', '', '', '2023-01-01 18:46:09', '2023-07-03 04:57:49'),
(449, '', 'Tech Finity', '', 'contact.techfinity@gmail.com', '', '1672607199493-dtlivetechfinity.jpeg', 2, 1, NULL, '', '', '', '2023-01-01 21:06:39', '2023-07-03 04:57:49'),
(450, '', 'Tarek bukah', '', 'awbukah@gmail.com', '', '1672652762773-dtlivetarekbukah.jpeg', 2, 1, NULL, '', '', '', '2023-01-02 09:46:02', '2023-07-03 04:57:49'),
(451, '', 'deneme', '+905362766589', 'mailburakturk@gmail.com', '', '1673021801603-izleappdoğrulanmış.jpeg', 2, 1, NULL, '', '', '', '2023-01-02 17:35:47', '2023-07-03 04:57:49'),
(452, '', '58454', '84854', 'fdfsfgf@yopmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2023-01-02 20:28:11', '2023-07-03 04:57:49'),
(453, '', 'goodhd007', '', 'goodhd008@gmail.com', '', '1672713859533-dtlivegoodhd007.jpeg', 2, 1, NULL, '', '', '', '2023-01-03 02:44:19', '2023-07-03 04:57:49'),
(454, '', 'Admin', '+8801989740091', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-03 12:08:00', '2023-07-03 04:57:49'),
(455, '', 'Simon Hintringer', '', 'simonhintringer2009@gmail.com', '', '1672832355774-dtlivesimonhintringer.jpeg', 2, 1, NULL, '', '', '', '2023-01-04 11:39:15', '2023-07-03 04:57:49'),
(456, '', 'Арчи Лаки', '', 'artemlakunov@gmail.com', '', '1672957799687-dtliveарчилаки.jpeg', 2, 1, NULL, '', '', '', '2023-01-05 22:29:59', '2023-07-03 04:57:49'),
(457, '', 'Vertitect Technologies', '9831133043', 'vertitect@gmail.com', '', '1672967175287-dtlivevertitecttechnologies.jpeg', 2, 1, NULL, '', '', '', '2023-01-06 01:06:14', '2023-07-03 04:57:49'),
(458, '', 'Melinda Barton', '', 'melindabarton.74473@gmail.com', '', '1673022376968-izleappmelindabarton.jpeg', 2, 1, NULL, '', '', '', '2023-01-06 16:26:16', '2023-07-03 04:57:49'),
(459, '', 'HONQT', '', 'honqt60@gmail.com', '', '1673031956153-dtlivehonqt.jpeg', 2, 1, NULL, '', '', '', '2023-01-06 19:05:56', '2023-07-03 04:57:49'),
(460, '', 'hfg', '+919073108231', 'vertitect@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-06 20:25:47', '2023-07-03 04:57:49'),
(461, '', 'Masud Parvej Pasha', '', 'masudparvejpasa86@gmail.com', '', '1673064577327-dtlivemasudparvejpasha.jpeg', 2, 1, NULL, '', '', '', '2023-01-07 04:09:36', '2023-07-03 04:57:49'),
(462, '', 'WAHEED AHMAD', '+923020009093', 'jazbastream@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-07 09:46:56', '2023-07-03 04:57:49'),
(463, '', 'temp', '', 'temp98751@gmail.com', '', '1673115421383-dtlivetemp.jpeg', 2, 1, NULL, '', '', '', '2023-01-07 18:17:00', '2023-07-03 04:57:49'),
(464, '', 'Anas Ayub', '', 'anasayub1996@gmail.com', '', '1673206251526-dtliveanasayub.jpeg', 2, 1, NULL, '', '', '', '2023-01-08 19:30:50', '2023-07-03 04:57:49'),
(465, '', 'Face Time', '+88001866889778', 'facetime.listium@gmail.com', '', '1673272782357-dtlivefacetime.jpeg', 2, 1, NULL, '', '', '', '2023-01-09 13:59:41', '2023-07-03 04:57:49'),
(466, '', 'İbrahim Salih Deger', '+905050365647', 'ibrahimsalihd27@gmail.com', '', '1674697369920-dtliveibrahimsalihdeger.jpeg', 2, 1, NULL, '', '', '', '2023-01-09 14:02:48', '2023-07-03 04:57:49'),
(467, '', 'Mad About Sports', '', 'about.madsports@gmail.com', '', '1673279952759-dtlivemadaboutsports.jpeg', 2, 1, NULL, '', '', '', '2023-01-09 15:59:12', '2023-07-03 04:57:49'),
(468, '', 'Dipankar kolay', '', 'banglatechplus@gmail.com', '', '1673381533057-dtlivedipankarkolay.jpeg', 2, 1, NULL, '', '', '', '2023-01-10 20:12:12', '2023-07-03 04:57:49'),
(469, '', 'Mani Kant', '+918789841251', 'mksinha5550@gmail.com', '', '1673471176614-dtlivemanikant.jpeg', 2, 1, NULL, '', '', '', '2023-01-11 21:06:16', '2023-07-03 04:57:49'),
(470, '', 'Angelo Dultra', '+5518991649205', 'angelo.dultrabr@gmail.com', '', '1673480617934-470_1673480614958.jpeg', 2, 1, NULL, '', '', '', '2023-01-11 21:38:11', '2023-07-03 04:57:49'),
(471, '', 'Prasad technics & ALL', '+918498039457', 'prasadprasaf857@gmail.com', '', '1673507031448-dtliveprasadtechnicsall.jpeg', 2, 1, NULL, '', '', '', '2023-01-12 07:03:47', '2023-07-03 04:57:49'),
(472, '', 'Onur Baba', '', 'hesapbizimdir7@gmail.com', '', '1673572207809-dtliveonurbaba.jpeg', 2, 1, NULL, '', '', '', '2023-01-13 01:10:07', '2023-07-03 04:57:49'),
(473, '', '', '+918866374480', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-13 14:10:46', '2023-07-03 04:57:49'),
(474, '', '', '+593963615081', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-13 15:23:17', '2023-07-03 04:57:49'),
(475, '', '', '+918982139451', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-14 08:36:17', '2023-07-03 04:57:49'),
(476, '', 'Rami Malek', '', 'rmalek1@student.ccp.edu', '', '1673718772968-dtliveramimalek.jpeg', 2, 1, NULL, '', '', '', '2023-01-14 17:52:52', '2023-07-03 04:57:49'),
(477, '', '', '+918748039005', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-15 06:11:53', '2023-07-03 04:57:49'),
(478, '', 'Ton Res', '', 'toneres111@gmail.com', '', '1673780427248-dtlivetonres.jpeg', 2, 1, NULL, '', '', '', '2023-01-15 11:00:26', '2023-07-03 04:57:49'),
(479, '', 'test', '+919666541355', 'test@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-15 12:06:03', '2023-07-03 04:57:49'),
(480, '', 'Ahmet Sezer', '+905050365647', 'kralantepli0@gmail.com', '', '1681034477.jpeg', 2, 1, NULL, '', '', '', '2023-01-15 15:19:59', '2023-07-03 04:57:49'),
(481, '', 'Egls Movie Trailers', '', 'arjunsingh90415@gmail.com', '', '1673824491277-dtliveeglsmovietrailers.jpeg', 2, 1, NULL, '', '', '', '2023-01-15 23:14:50', '2023-07-03 04:57:49'),
(482, '', 'Saurav Garg', '+918375052733', 'sauravgarg5922@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-16 17:34:58', '2023-07-03 04:57:49'),
(483, '', '', '+918758582728', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-17 00:04:05', '2023-07-03 04:57:49'),
(484, '', 'Bella Vista', '', 'chuzaboi002@gmail.com', '', '1673947754893-dtlivebellavista.jpeg', 2, 1, NULL, '', '', '', '2023-01-17 09:29:14', '2023-07-03 04:57:49'),
(485, '', 'Waris Ali', '', 'teammoviezcinemas786@gmail.com', '', '1673976244742-dtlivewarisali.jpeg', 2, 1, NULL, '', '', '', '2023-01-17 17:24:04', '2023-07-03 04:57:49'),
(486, '', 'Банка Жмыха', '+79997971965', 'awesome.panel@gmail.com', '', '1673985929309-dtliveбанкажмыха.jpeg', 2, 1, NULL, '', '', '', '2023-01-17 20:05:29', '2023-07-03 04:57:49'),
(487, '', 'Sk Mobiles', '', 'skmobiles9047@gmail.com', '', '1674032138111-dtliveskmobiles.jpeg', 2, 1, NULL, '', '', '', '2023-01-18 08:55:37', '2023-07-03 04:57:49'),
(488, '', 'maritza valencia', '', 'maritza.valencia.mamani1@gmail.com', '', '1674039987495-dtlivemaritzavalencia.jpeg', 2, 1, NULL, '', '', '', '2023-01-18 11:06:26', '2023-07-03 04:57:49'),
(489, '', 'Shubham Sharma', '', 'shubham@snakescript.com', '', 'user.png', 2, 1, NULL, '', '', '', '2023-01-18 11:51:53', '2023-07-03 04:57:49'),
(490, '', 'Shubham Sharma', '+917986234745', 'shubham@snakescript.com', '', '1674046686828-cropped8955055625850540864.jpg', 3, 1, NULL, '', '', '', '2023-01-18 11:53:53', '2023-07-03 04:57:49'),
(491, '', 'cvv', '+8801645007201', 'cv', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-18 19:42:47', '2023-07-03 04:57:49'),
(492, '', 'mi Michael', '', 'zhangjike0707@gmail.com', '', '1674178523728-dtlivemimichael.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 01:35:22', '2023-07-03 04:57:49'),
(493, '', '', '+8801571293538', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-20 04:54:34', '2023-07-03 04:57:49'),
(494, '', 'Piyush Ghoghari', '', 'ghogharipiyush8@gmail.com', '', '1674198603740-dtlivepiyushghoghari.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 07:10:02', '2023-07-03 04:57:49'),
(495, '', 'Arvindbhai Ghoghari', '', 'alghoghari@gmail.com', '', '1674200210533-dtlivearvindbhaighoghari.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 07:36:49', '2023-07-03 04:57:49'),
(496, '', 'Developers Storydek', '', 'developers@storydek.com', '', '1674212502026-dtlivedevelopersstorydek.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 11:01:41', '2023-07-03 04:57:49'),
(497, '', 'Lalu Rathod', '', 'lalurathod3555@gmail.com', '', '1674213989511-dtlivelalurathod.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 11:26:29', '2023-07-03 04:57:49'),
(498, '', '', '+919537177877', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-20 14:23:34', '2023-07-03 04:57:49'),
(499, '', 'tg', '+919560452484', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-20 14:30:51', '2023-07-03 04:57:49'),
(500, '', 'Aksel Me', '', 'sellers.pal@gmail.com', '', '1674236625574-dtliveakselme.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 17:43:45', '2023-07-03 04:57:49'),
(501, '', 'Nazmul', '', 'nazmultuhin23@gmail.com', '', '1674243077963-dtlivenazmul.jpeg', 2, 1, NULL, '', '', '', '2023-01-20 19:31:16', '2023-07-03 04:57:49'),
(502, '', 'Sat', '+447934444554', 'sathees555@hotmail.co.uk', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-21 11:13:28', '2023-07-03 04:57:49'),
(503, '', 'Nasılsın', '+491632364287', '27yunusaydin@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-21 23:50:33', '2023-07-03 04:57:49'),
(504, '', 'ইসলামিক News 24', '', 'shariftauhid50@gmail.com', '', '1674686719070-dtliveইসলামিকnews24.jpeg', 2, 1, NULL, '', '', '', '2023-01-25 22:45:18', '2023-07-03 04:57:49'),
(505, '', 'jeckson vasquez', '', 'jeckson2121@gmail.com', '', '1674739623570-dtlivejecksonvasquez.jpeg', 2, 1, NULL, '', '', '', '2023-01-26 13:27:02', '2023-07-03 04:57:49'),
(506, '', 'Efes Comedy', '+2348140210770', 'wisdomefes2@gmail.com', '', '1675473290615-cropped2751686200144010359.jpg', 2, 1, NULL, '', '', '', '2023-01-26 15:40:01', '2023-07-03 04:57:49'),
(507, '', 'Kunal Dhirendra prasad', '', 'kunalnifft08@gmail.com', '', '1677680837683-dtlivekunaldhirendraprasad.jpeg', 2, 1, NULL, '', '', '', '2023-01-26 17:39:19', '2023-07-03 04:57:49'),
(508, '', 'Josh Broadcasting India', '', 'joshbroadcastingindia@gmail.com', '', '1674781955055-dtlivejoshbroadcastingindia.jpeg', 2, 1, NULL, '', '', '', '2023-01-27 01:12:34', '2023-07-03 04:57:49'),
(509, '', 'Pradip Vhasale', '+919021311559', 'vhasalepradip@gmail.com', '', '1674855900186-dtlivepradipvhasale.jpeg', 2, 1, NULL, '', '', '', '2023-01-27 21:44:58', '2023-07-03 04:57:49'),
(510, '', 'R creation', '+918638138411', 'alirifan47@gmail.com', '', '1674932742028-dtlivercreation.jpeg', 2, 1, NULL, '', '', '', '2023-01-28 19:05:41', '2023-07-03 04:57:49'),
(511, '', 'ANDRES FELIPE VEGA PADUA', '', 'ingeneriandres@gmail.com', '', '1674939129402-dtliveandresfelipevegapadua.jpeg', 2, 1, NULL, '', '', '', '2023-01-28 20:52:08', '2023-07-03 04:57:49'),
(512, '', '', '+573046048567', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-28 21:16:33', '2023-07-03 04:57:49'),
(513, '', 'Satyam', '+917823004460', '', '', '1674959848839-513_1674959846603.jpeg', 3, 1, NULL, '', '', '', '2023-01-29 02:33:29', '2023-07-03 04:57:49'),
(514, '', 'Sankshay Babber', '', 'babbersankshay@gmail.com', '', '1675025708034-dtlivesankshaybabber.jpeg', 2, 1, NULL, '', '', '', '2023-01-29 20:55:07', '2023-07-03 04:57:49'),
(515, '', 'Steven', '+573014757912', 'yorksvn3@gmail.com', '', '1675034461525-dtlivesteven.jpeg', 2, 1, NULL, '', '', '', '2023-01-29 23:21:01', '2023-07-03 04:57:49'),
(516, '', 'jai kk media', '', 'kirankumartj66091@gmail.com', '', '1675835487839-dtlivejaikkmedia.jpeg', 2, 1, NULL, '', '', '', '2023-01-30 07:10:41', '2023-07-03 04:57:49'),
(517, '', 'Jill Robbins', '', 'jillrobbins.52899@gmail.com', '', '1675063765633-dtlivejillrobbins.jpeg', 2, 1, NULL, '', '', '', '2023-01-30 07:29:25', '2023-07-03 04:57:49'),
(518, '', 'digimitra', '', 'hellohellowashim@gmail.com', '', '1675089484710-dtlivedigimitra.jpeg', 2, 1, NULL, '', '', '', '2023-01-30 14:38:04', '2023-07-03 04:57:49'),
(519, '', 'Flixme Live', '', 'multiverse.madness159@gmail.com', '', '1675110075611-dtliveflixmelive.jpeg', 2, 1, NULL, '', '', '', '2023-01-30 20:21:15', '2023-07-03 04:57:49'),
(520, '', 'INTL TecH4u', '', 'vvintltech4u@gmail.com', '', '1675135639820-dtliveintltech4u.jpeg', 2, 1, NULL, '', '', '', '2023-01-31 03:27:18', '2023-07-03 04:57:49'),
(521, '', '', '+18768379610', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-31 05:04:01', '2023-07-03 04:57:49'),
(522, '', '', '+919079657069', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-01-31 12:02:24', '2023-07-03 04:57:49'),
(523, '', 'Fhjk Djmkj', '+918849053020', 'fhjkdjmkj@gmail.com', '', '1675183563879-dtlivefhjkdjmkj.jpeg', 2, 1, NULL, '', '', '', '2023-01-31 16:46:03', '2023-07-03 04:57:49'),
(524, '', 'Joseph Garcia', '', 'elpidio9000@gmail.com', '', '1675233216753-dtlivejosephgarcia.jpeg', 2, 1, NULL, '', '', '', '2023-02-01 06:33:36', '2023-07-03 04:57:49'),
(525, '', 'Shamim Fakir', '', 'shamimfakir1995@gmail.com', '', '1675265779872-dtliveshamimfakir.jpeg', 2, 1, NULL, '', '', '', '2023-02-01 15:36:19', '2023-07-03 04:57:49'),
(526, '', '', '+923216758939', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-01 18:29:21', '2023-07-03 04:57:49'),
(527, '', 'susanta', '+918270007102', 'susanta.sahoo125@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-02 15:19:59', '2023-07-03 04:57:49'),
(528, '', 'Work Test', '', 'worktest0092@gmail.com', '', '1675438386920-dtliveworktest.jpeg', 2, 1, NULL, '', '', '', '2023-02-03 15:33:06', '2023-07-03 04:57:49'),
(529, '', 'rockstar 45', '', '2021rockstar45@gmail.com', '', '1675442362060-dtliverockstar45.jpeg', 2, 1, NULL, '', '', '', '2023-02-03 16:39:21', '2023-07-03 04:57:49'),
(530, '', 'klplay 3', '', 'klplay3.in@gmail.com', '', '1675443652720-dtliveklplay3.jpeg', 2, 1, NULL, '', '', '', '2023-02-03 17:00:52', '2023-07-03 04:57:49'),
(531, '', 'Gaurav Sable', '', 'gsable6@gmail.com', '', '1675457498169-dtlivegauravsable.jpeg', 2, 1, NULL, '', '', '', '2023-02-03 20:51:37', '2023-07-03 04:57:49'),
(532, '', 'one tv', '', 'app.onetv.pw@gmail.com', '', '1675510956091-dtliveonetv.jpeg', 2, 1, NULL, '', '', '', '2023-02-04 11:42:35', '2023-07-03 04:57:49'),
(533, '', 'Ayoub Chtakir', '', 'achtakir0@gmail.com', '', '1675516974728-dtliveayoubchtakir.jpeg', 2, 1, NULL, '', '', '', '2023-02-04 13:22:54', '2023-07-03 04:57:49'),
(534, '', 'SMV Entertainment', '', 'blackoutentertainmentofficial@gmail.com', '', '1675519729735-dtlivesmventertainment.jpeg', 2, 1, NULL, '', '', '', '2023-02-04 14:08:49', '2023-07-03 04:57:49'),
(535, '', 'Sks Coder', '', 'skscoder425@gmail.com', '', '1675588958330-dtliveskscoder.jpeg', 2, 1, NULL, '', '', '', '2023-02-05 09:22:37', '2023-07-03 04:57:49'),
(536, '', 'iyusu', '+243977766277', 'iyusuijart@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-05 10:48:19', '2023-07-03 04:57:49'),
(537, '', 'Sanjay KHANNA', '', 'gsjnfwfeud@gmail.com', '', '1675620917947-dtlivesanjaykhanna.jpeg', 2, 1, NULL, '', '', '', '2023-02-05 18:15:17', '2023-07-03 04:57:49'),
(538, '', 'Red Mix', '', 'redmix7543@gmail.com', '', '1675652782780-dtliveredmix.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 03:06:22', '2023-07-03 04:57:49'),
(539, '', 'Wiverson Lima', '', 'wiversonlima2016@gmail.com', '', '1675665888177-dtlivewiversonlima.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 03:19:58', '2023-07-03 04:57:49'),
(540, '', 'Nixon Ndunga', '', 'nisalu@gmail.com', '', '1675677266319-dtlivenixonndunga.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 09:54:25', '2023-07-03 04:57:49'),
(541, '', 'Ishmael Aferi Mohammed', '+2330208500523', 'aferigh@gmail.com', '', '1675694564119-dtliveishmaelaferimohammed.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 14:42:42', '2023-07-03 04:57:49'),
(542, '', 'App Developer', '', 'appdeveloper40336@gmail.com', '', '1675703715545-dtliveappdeveloper.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 17:15:14', '2023-07-03 04:57:49'),
(543, '', 'Bhavik Unagar', '', 'blustartechnology@gmail.com', '', '1675703977045-dtlivebhavikunagar.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 17:19:36', '2023-07-03 04:57:49'),
(544, '', 'Deepak Chopdar', '+919818355420', 'deepakrao0420@gmail.com', '', '1677015843290-dtlivedeepakchopdar.jpeg', 2, 1, NULL, '', '', '', '2023-02-06 19:05:39', '2023-07-03 04:57:49'),
(545, '', 'Lahlou', '+919383273559', 'lahlouding@gmail.com', '', '1675728895769-dtlivelahlou.jpeg', 2, 1, NULL, '', '', '', '2023-02-07 00:14:55', '2023-07-03 04:57:49'),
(546, '', 'مدينه الاندرويد Android Town', '', 'alimorgan161@gmail.com', '', '1675736826349-dtliveمدينهالاندرويدandroidtown.jpeg', 2, 1, NULL, '', '', '', '2023-02-07 02:27:06', '2023-07-03 04:57:49'),
(547, '', 'Babul Kar', '', 'babulkar209@gmail.com', '', '1675794288327-cropped2800575766009271677.jpg', 2, 1, NULL, '', '', '', '2023-02-07 18:23:20', '2023-07-03 04:57:49'),
(548, '', '', '+8801951848113', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-08 11:11:45', '2023-07-03 04:57:49'),
(549, '', '', '', 'cashonegroup@gmail.com', '', 'user.png', 2, 1, NULL, '', '', '', '2023-02-08 17:02:16', '2023-07-03 04:57:49'),
(550, '', 'Sunil Sharma', '+919870653325', 'codeserveltd@gmail.com', '', '1676007479145-dtlivesunilsharma.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 05:37:58', '2023-07-03 04:57:49'),
(551, '', '', '+919898916410', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-10 06:02:52', '2023-07-03 04:57:49'),
(552, '', 'Tifaout Mohssin', '', 'mohssint533@gmail.com', '', '1676009301936-dtlivetifaoutmohssin.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 06:08:21', '2023-07-03 04:57:49'),
(553, '', 'julio santos', '', 'juliosilvasant.18@gmail.com', '', '1676036647143-dtlivejuliosantos.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 13:44:06', '2023-07-03 04:57:49'),
(554, '', 'Sanjaya Patra', '+917008625719', 'sanjaya1.2007@gmail.com', '', '1676044895922-dtlivesanjayapatra.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 16:01:35', '2023-07-03 04:57:49'),
(555, '', 'Badru Ssenoga', '', 'ssenogab999@gmail.com', '', '1676048753909-dtlivebadrussenoga.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 17:05:53', '2023-07-03 04:57:49'),
(556, '', '5 ভুতুড়ে - CREEPY Paranormal', '', 'akazayngaming@gmail.com', '', '1676068999153-dtlive5ভুতুড়ে-creepyparanormal.jpeg', 2, 1, NULL, '', '', '', '2023-02-10 22:43:18', '2023-07-03 04:57:49'),
(557, '', 'Ravi Singh', '', 'ravii.bzp@gmail.com', '', '1676206408912-dtliveravisingh.jpeg', 2, 1, NULL, '', '', '', '2023-02-12 12:53:28', '2023-07-03 04:57:49'),
(558, '', 'Sneha Patel', '', 'snehapatel747@gmail.com', '', '1676212697662-dtlivesnehapatel.jpeg', 2, 1, NULL, '', '', '', '2023-02-12 14:38:17', '2023-07-03 04:57:49'),
(559, '', 'Henrique Lucas', '', 'henriquelucasdesousa@gmail.com', '', '1676332059821-dtlivehenriquelucas.jpeg', 2, 1, NULL, '', '', '', '2023-02-13 23:47:39', '2023-07-03 04:57:49'),
(560, '', 'Digital Forensic', '', 'digitalforensic21@gmail.com', '', '1676374806786-dtlivedigitalforensic.jpeg', 2, 1, NULL, '', '', '', '2023-02-14 11:40:06', '2023-07-03 04:57:49'),
(561, '', '', '+5512996849756', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-15 00:01:59', '2023-07-03 04:57:49'),
(562, '', 'EFOOTBALL LIVE GAMING', '', 'rakibul86214909@gmail.com', '', '1681987045.jpeg', 2, 1, NULL, '', '', '', '2023-02-16 07:45:45', '2023-07-03 04:57:49'),
(563, '', '', '+918368899570', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-16 08:57:00', '2023-07-03 04:57:49'),
(564, '', 'Sadakatsiz Dizisi', '+994703884222', 'sadakatsizizle@gmail.com', '', '1676544987433-dtlivesadakatsizdizisi.jpeg', 2, 1, NULL, '', '', '', '2023-02-16 10:56:27', '2023-07-03 04:57:49'),
(565, '', 'SALEM BAHRI', '', 'bahrisalem5@gmail.com', '', '1676578244364-dtlivesalembahri.jpeg', 2, 1, NULL, '', '', '', '2023-02-16 20:10:44', '2023-07-03 04:57:49'),
(566, '', 'Jinal Patel', '+917977747037', 'jinal.p@handsintechnology.com', '', '1676701712850-dtlivejinalpatel.jpeg', 2, 1, NULL, '', '', '', '2023-02-18 06:28:32', '2023-07-03 04:57:49'),
(567, '', '', '+917385851021', '', '', 'user.png', 3, 1, NULL, '', '', '', '2023-02-23 13:30:16', '2023-07-03 04:57:49'),
(568, '', '', '', 'accounts@vertitect.com', '', 'user.png', 2, 1, NULL, '', '', '', '2023-02-26 20:34:31', '2023-07-03 04:57:49'),
(569, '', 'Vertitect', '9831133043', 'contact@vertitect.com', '', 'user.png', 2, 1, NULL, '', '', '', '2023-02-26 23:01:32', '2023-07-03 04:57:49'),
(570, '', 'utpal', '+917002978577', 'ukdindia007@gmail.com', '', 'user.png', 3, 1, NULL, '', '', '', '2023-03-13 05:05:51', '2023-07-03 04:57:49'),
(571, '', 'PixelDev Support', '', 'pixeldevteams@gmail.com', '', '1679770490.jpeg', 2, 1, NULL, '', '', '', '2023-03-25 18:54:49', '2023-07-03 04:57:49'),
(572, '', 'Khair Muhammad', '', 'iamusamaabbasi@gmail.com', '', '1679775622.jpeg', 2, 1, NULL, '', '', '', '2023-03-25 20:20:22', '2023-07-03 04:57:49'),
(573, '', 'LEOMAR DUARTE', '', 'leomard209@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-25 20:51:21', '2023-07-03 04:57:49'),
(574, '', 'xoox xoxx', '+97430910777', 'xooxi0127@gmail.com', '', '1679785320.jpeg', 2, 1, NULL, '', '', '', '2023-03-25 23:01:31', '2023-07-03 04:57:49'),
(575, '', 'Naila Ijaz', '', 'in7006134@gmail.com', '', '1679785542.jpeg', 2, 1, NULL, '', '', '', '2023-03-25 23:05:42', '2023-07-03 04:57:49'),
(576, '', 'Ayush Sharma', '', 'viwoomedia@gmail.com', '', '1679792567.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 01:02:46', '2023-07-03 04:57:49'),
(577, '', 'Righttosikha', '+919406069294', 'righttosikha@gmail.com', '', '1679794505.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 01:35:04', '2023-07-03 04:57:49'),
(578, '', 'Mizanur rahman', '', 'almaruf9919@gmail.com', '', '1679819736.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 08:35:35', '2023-07-03 04:57:49'),
(579, '', '', '+8801303620631', '', '', '', 3, 1, NULL, '', '', '', '2023-03-26 08:36:34', '2023-07-03 04:57:49'),
(580, '', '', '+88001303620631', '', '', '', 3, 1, NULL, '', '', '', '2023-03-26 08:37:25', '2023-07-03 04:57:49'),
(581, '', 'Rain Man', '', 'lavibumobilez@gmail.com', '', '1679827722.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 10:48:42', '2023-07-03 04:57:49'),
(582, '', 'Nevaldo S.B', '+5585981369524', 'megasom221@gmail.com', '', '1680383805.jpeg', 3, 1, NULL, '', '', '', '2023-03-26 12:59:21', '2023-07-03 04:57:49'),
(583, '', 'KABIR SHAH', '', 'kabirshah7779@gmail.com', '', '1679839026.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 13:57:05', '2023-07-03 04:57:49'),
(584, '', 'Claude Konou', '', 'ckkonou@gmail.com', '', '1679860942.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 20:02:21', '2023-07-03 04:57:49'),
(585, '', 'Assil Imrani', '', 'assilimrani5@gmail.com', '', '1679872100.jpeg', 2, 1, NULL, '', '', '', '2023-03-26 23:08:20', '2023-07-03 04:57:49'),
(586, '', 'المحترف HD', '', 's.aldmani2022@gmail.com', '', '1679877367.jpeg', 2, 1, NULL, '', '', '', '2023-03-27 00:36:07', '2023-07-03 04:57:49'),
(587, '', 'hey', '', 'proBlu_Ray@163.com', '', '1679895376.jpeg', 2, 1, NULL, '', '', '', '2023-03-27 05:36:15', '2023-07-03 04:57:49'),
(588, '', 'Team Dope xDD', '+526632128201', 'luisenok37@gmail.com', '', '1679897619.jpeg', 2, 1, NULL, '', '', '', '2023-03-27 06:13:38', '2023-07-03 04:57:49'),
(589, '', 'Dishant Patel', '', 'dishantpatel762@gmail.com', '', '1679900858.png', 2, 1, NULL, '', '', '', '2023-03-27 07:01:46', '2023-07-03 04:57:49'),
(590, '', 'Guddu', '+916377620686', 'khushisonimls@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-03-27 07:58:54', '2023-07-03 04:57:49'),
(591, '', 'anjay mabarr', '', 'anjaymabarr700@gmail.com', '', '1679922482.jpeg', 2, 1, NULL, '', '', '', '2023-03-27 12:47:15', '2023-07-03 04:57:49'),
(592, '', 'netplay hd', '', 'netplayhd2018@gmail.com', '', '1679970743.jpeg', 2, 1, NULL, '', '', '', '2023-03-28 02:32:22', '2023-07-03 04:57:49'),
(593, '', 'Basura WildRift', '', 'basuraswildrift@gmail.com', '', '1679971359.jpeg', 2, 1, NULL, '', '', '', '2023-03-28 02:42:38', '2023-07-03 04:57:49'),
(594, '', '', '+639479971450', '', '', '', 3, 1, NULL, '', '', '', '2023-03-28 09:35:22', '2023-07-03 04:57:49'),
(595, '', 'Raju Agency', '', 'rajuagency5@gmail.com', '', '1680026988.jpeg', 2, 1, NULL, '', '', '', '2023-03-28 18:09:47', '2023-07-03 04:57:49'),
(596, '', 'Rodolfo Pereira', '', 'dcrecm@gmail.com', '', '1680040752.jpeg', 2, 1, NULL, '', '', '', '2023-03-28 21:59:11', '2023-07-03 04:57:49'),
(597, '', 'Standley Moise', '+50686533166', 'smoise273@gmail.com', '', '1680058155.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 02:49:15', '2023-07-03 04:57:49'),
(598, '', 'RAM V', '', 'vrcreations1997@gmail.com', '', '1680065149.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 04:45:48', '2023-07-03 04:57:49'),
(599, '', 'Steve Maina', '', 'sm.kaguchia@gmail.com', '', '1680070133.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 06:08:53', '2023-07-03 04:57:49'),
(600, '', 'Scholar M', '', 'scholarmwangi64@gmail.com', '', '1680073308.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 07:01:47', '2023-07-03 04:57:49'),
(601, '', 'Pappu kumar', '+919128964456', 'pappukumar9656@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-03-29 09:12:49', '2023-07-03 04:57:49'),
(602, '', 'Victor Fersant', '', 'victorlucasfersant@gmail.com', '', '1680089328.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 11:28:47', '2023-07-03 04:57:49'),
(603, '', '', '+917502071256', '', '', '', 3, 1, NULL, '', '', '', '2023-03-29 13:27:41', '2023-07-03 04:57:49'),
(604, '', 'ask Specialists', '', 'baljaabari3@gmail.com', '', '1680105553.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 15:59:13', '2023-07-03 04:57:49'),
(605, '', 'Balkrushna', '+919067875225', 'w3diary@gmail.com', '', '1680254823.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 16:29:03', '2023-07-03 04:57:49'),
(606, '', 'Bobby martin', '', 'bobby555martin@gmail.com', '', '1680121583.jpeg', 2, 1, NULL, '', '', '', '2023-03-29 20:26:22', '2023-07-03 04:57:49'),
(607, '', '', '+8801891601123', '', '', '', 3, 1, NULL, '', '', '', '2023-03-29 23:09:00', '2023-07-03 04:57:49'),
(608, '', 'ñunñun', '+542477683907', '', '', '', 3, 1, NULL, '', '', '', '2023-03-30 01:59:54', '2023-07-03 04:57:49'),
(609, '', 'Shorts Official', '+917524853265', 'shortsofficial3109@gmail.com', '', '1680157893.jpeg', 2, 1, NULL, '', '', '', '2023-03-30 06:31:32', '2023-07-03 04:57:49'),
(610, '', 'almomayaz info', '', 'almomayaz.go@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 06:45:41', '2023-07-03 04:57:49'),
(611, '', 'Lay Gyi', '', 'laypway3@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 07:48:18', '2023-07-03 04:57:49'),
(612, '', 'Chatgbt Only', '+252616658244', 'onlychatgbt@gmail.com', '', '1680168531.jpeg', 2, 1, NULL, '', '', '', '2023-03-30 09:14:44', '2023-07-03 04:57:49'),
(613, '', 'Support DivineTechs', '', 'support@divinetechs.com', '', '1680167733.png', 2, 1, NULL, '', '', '', '2023-03-30 09:15:33', '2023-07-03 04:57:49'),
(614, '', 'John Doe', '', 'jdoe76184@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 10:38:55', '2023-07-03 04:57:49'),
(615, '', 'Igor Borges', '', 'igorborgesdavila@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 10:45:21', '2023-07-03 04:57:49'),
(616, '', 'Артём Куликовских', '', 'temakul061196@gmail.com', '', '1680194800.jpeg', 2, 1, NULL, '', '', '', '2023-03-30 16:46:40', '2023-07-03 04:57:49'),
(617, '', 'technical support APK', '', 'sjameer2@gmail.com', '', '1680195565.jpeg', 2, 1, NULL, '', '', '', '2023-03-30 16:59:24', '2023-07-03 04:57:49'),
(618, '', 'Anifox Anime', '', 'anifoxtr@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 17:57:26', '2023-07-03 04:57:49'),
(619, '', 'Imtiaz Khan', '', 'imtiaz12690@gmail.com', '', '1680199284.png', 2, 1, NULL, '', '', '', '2023-03-30 18:01:24', '2023-07-03 04:57:49'),
(620, '', 'raj selvin', '', 'rajhabox@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-03-30 19:46:54', '2023-07-03 04:57:49'),
(621, '', 'ᗩᕼᗰᗴᗪ ᗪᗴᗴᑭ', '', 'oka888277@gmail.com', '', '1680418191.jpeg', 2, 1, NULL, '', '', '', '2023-03-31 00:22:37', '2023-07-03 04:57:49'),
(622, '', 'Lucas Correia Hitmaker', '', 'lukinhasgto25@gmail.com', '', '1680235025.jpeg', 2, 1, NULL, '', '', '', '2023-03-31 03:57:05', '2023-07-03 04:57:49'),
(623, '', 'Ishita Sharma', '', 'ishitasharma0195@gmail.com', '', '1680279947.png', 2, 1, NULL, '', '', '', '2023-03-31 16:25:47', '2023-07-03 04:57:49'),
(624, '', 'Wender Gomes', '', 'contato.castorfps@gmail.com', '', '1683120730.jpeg', 2, 1, NULL, '', '', '', '2023-03-31 20:12:51', '2023-07-03 04:57:49'),
(625, '', 'Spring Woods', '', 'springwoods.info@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-01 07:16:43', '2023-07-03 04:57:49'),
(626, '', 'Prokesh Roy', '+919088150581', 'prokeshroy@gmail.com', '', '1680333504.jpeg', 2, 1, NULL, '', '', '', '2023-04-01 07:18:24', '2023-07-03 04:57:49'),
(627, '', 'info tree', '', 'infotree9033@gmail.com', '', '1680335700.jpeg', 2, 1, NULL, '', '', '', '2023-04-01 07:55:00', '2023-07-03 04:57:49'),
(628, '', 'Developer Flip', '', 'developerflip5@gmail.com', '', '1680335972.png', 2, 1, NULL, '', '', '', '2023-04-01 07:59:32', '2023-07-03 04:57:49'),
(629, '', 'Geek Maker22', '', 'geekmaker22@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-01 08:50:47', '2023-07-03 04:57:49'),
(630, '', 'Mystique Glamour', '', 'mystiqueglamour2020@gmail.com', '', '1680358356.png', 2, 1, NULL, '', '', '', '2023-04-01 14:12:36', '2023-07-03 04:57:49'),
(631, '', 'mohammed harun', '', 'harunmd328@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-01 18:01:23', '2023-07-03 04:57:49'),
(632, '', '', '+917008788387', '', '', '', 3, 1, NULL, '', '', '', '2023-04-01 19:16:14', '2023-07-03 04:57:49'),
(633, '', 'coffin dance', '', 'osman.h2011@gmail.com', '', '1680385829.png', 2, 1, NULL, '', '', '', '2023-04-01 21:50:29', '2023-07-03 04:57:49'),
(634, '', 'Dr.Gordon Freeman', '', 'moh.mohx1000@gmail.com', '', '1680389828.png', 2, 1, NULL, '', '', '', '2023-04-01 22:57:08', '2023-07-03 04:57:49'),
(635, '', 'Md Hasanuzzaman Shohag', '', 'quickpanel24@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-02 01:54:25', '2023-07-03 04:57:49'),
(636, '', 'Oğuzhan Çiçek', '', 'vextumor@gmail.com', '', '1680403337.jpeg', 2, 1, NULL, '', '', '', '2023-04-02 02:42:17', '2023-07-03 04:57:49'),
(637, '', 'mr_lathiya143', '', 'skp4785@gmail.com', '', '1680410031.jpeg', 2, 1, NULL, '', '', '', '2023-04-02 04:33:50', '2023-07-03 04:57:49'),
(638, '', 'nikhil bhingradiya', '+919408160634', 'nikhilbhingradiya1606@gmail.com', '', '1680434243.jpeg', 2, 1, NULL, '', '', '', '2023-04-02 11:17:23', '2023-07-03 04:57:49'),
(639, '', 'ازياء فلة', '', 'yasminsaidbe@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-02 15:20:59', '2023-07-03 04:57:49'),
(640, '', 'The Gamedeaf JF', '', 'jeffbeckm01@gmail.com', '', '1687798038.jpeg', 2, 1, NULL, '', '', '', '2023-04-03 06:09:50', '2023-07-03 04:57:49'),
(641, '', '', '+917989982996', '', '', '', 3, 1, NULL, '', '', '', '2023-04-03 07:54:57', '2023-07-03 04:57:49'),
(642, '', 'Aziz p', '', 'azizpolat@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-03 08:54:33', '2023-07-03 04:57:49'),
(643, '', 'Dev Line', '', 'helpline.developer@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-03 23:24:42', '2023-07-03 04:57:49'),
(644, '', 'YoSoyLuis', '', 'luisitoxxd1@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-03 23:32:04', '2023-07-03 04:57:49'),
(645, '', 'Kristine Davidson', '', 'kristinedavidson.39942@gmail.com', '', '1680591722.png', 2, 1, NULL, '', '', '', '2023-04-04 07:02:02', '2023-07-03 04:57:49'),
(646, '', '', '+919220330004', '', '', '', 3, 1, NULL, '', '', '', '2023-04-04 08:22:34', '2023-07-03 04:57:49'),
(647, '', 'Ali Mhmoud', '', 'alimhmoud043@gmail.com', '', '1680602536.jpeg', 2, 1, NULL, '', '', '', '2023-04-04 10:02:15', '2023-07-03 04:57:49'),
(648, '', 'Raj', '', 'rajpatel778877@gmail.com', '', '1680602864.jpeg', 2, 1, NULL, '', '', '', '2023-04-04 10:07:43', '2023-07-03 04:57:49'),
(649, '', 'Geekdev', '+2347037280934', '', '', '1680638640.jpg', 3, 1, NULL, '', '', '', '2023-04-04 19:44:05', '2023-07-03 04:57:49'),
(650, '', 'H.I.M', '', 'greenmonday47@gmail.com', '', '1680640679.png', 2, 1, NULL, '', '', '', '2023-04-04 20:37:59', '2023-07-03 04:57:49'),
(651, '', 'Subir Baidya', '', 'subirlovesilki@gmail.com', '', '1680698648.jpeg', 2, 1, NULL, '', '', '', '2023-04-05 12:44:07', '2023-07-03 04:57:49'),
(652, '', 'Mehedi H Munna', '', 'mehedihmunnabd@gmail.com', '', '1680721757.png', 2, 1, NULL, '', '', '', '2023-04-05 19:09:17', '2023-07-03 04:57:49'),
(653, '', '', '+254758948097', '', '', '', 3, 1, NULL, '', '', '', '2023-04-06 11:29:51', '2023-07-03 04:57:49'),
(654, '', 'Camoviesfried', '', 'camoviesfried@gmail.com', '', '1680791722.jpeg', 2, 1, NULL, '', '', '', '2023-04-06 14:35:21', '2023-07-03 04:57:49'),
(655, '', 'Shripal', '+919822994260', 'jadhavshripal510@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-04-06 18:35:32', '2023-07-03 04:57:49'),
(656, '', 'Devansh Kapoor', '+918278723684', 'devanshkapoor13@gmail.com', '', '1680848207.jpeg', 2, 1, NULL, '', '', '', '2023-04-07 06:16:46', '2023-07-03 04:57:49'),
(657, '', 'Jonas Oliveira', '', 'jonas.lhp2050@gmail.com', '', '1680848611.png', 2, 1, NULL, '', '', '', '2023-04-07 06:23:31', '2023-07-03 04:57:49'),
(658, '', 'Cliford Otanku', '', 'clifordotanku@gmail.com', '', '1680856400.png', 2, 1, NULL, '', '', '', '2023-04-07 08:33:20', '2023-07-03 04:57:49'),
(659, '', 'Uma Shankar', '+917742109910', 'umashankarsharmapersonal@gmail.com', '', '1680870631.jpeg', 2, 1, NULL, '', '', '', '2023-04-07 12:30:31', '2023-07-03 04:57:49'),
(660, '', 'redflix tv', '', 'redflixtv1999@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-07 12:59:02', '2023-07-03 04:57:49'),
(661, '', 'Giveme2 Hindi', '', 'givemehindi2@gmail.com', '', '1680915535.jpeg', 2, 1, NULL, '', '', '', '2023-04-08 00:58:54', '2023-07-03 04:57:49'),
(662, '', 'Cyrus Nganga', '', 'denyvusofficial@gmail.com', '', '1681006490.jpg', 2, 1, NULL, '', '', '', '2023-04-08 01:40:10', '2023-07-03 04:57:49'),
(663, '', 'Cyrus kamau Nganga', '', 'denyvusofficial@denyvus.com', '', '', 2, 1, NULL, '', '', '', '2023-04-08 03:00:19', '2023-07-03 04:57:49'),
(664, '', '', '+917670959376', '', '', '', 3, 1, NULL, '', '', '', '2023-04-08 07:22:05', '2023-07-03 04:57:49'),
(665, '', 'Rahul Maurya', '', 'rahulmauryarob@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-08 08:04:55', '2023-07-03 04:57:49'),
(666, '', 'Documentary Belgesel Tv', '', 'turuncumedya12@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-08 10:53:42', '2023-07-03 04:57:49'),
(667, '', 'T Pachir', '', 'tpachir@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-08 11:09:32', '2023-07-03 04:57:49'),
(668, '', 'ajay', '', 'uknowxuser@gmail.com', '', '1680962679.jpg', 2, 1, NULL, '', '', '', '2023-04-08 14:00:33', '2023-07-03 04:57:49'),
(669, '', 'hesham elsawy', '', 'heshamhamdyelsawy@gmail.com', '', '1680968982.png', 2, 1, NULL, '', '', '', '2023-04-08 15:49:42', '2023-07-03 04:57:49'),
(670, '', 'Erwin Rujillo', '', 'edwint03@gmail.com', '', '1680990340.jpeg', 2, 1, NULL, '', '', '', '2023-04-08 21:45:40', '2023-07-03 04:57:49'),
(671, '', 'Ritik Ray', '', 'ritikrai2625@gmail.com', '', '1681022726.jpeg', 2, 1, NULL, '', '', '', '2023-04-09 06:45:25', '2023-07-03 04:57:49'),
(672, '', 'مرتضى نوماس', '', 'hashim.neama.996zx@gmail.com', '', '1681024691.jpeg', 2, 1, NULL, '', '', '', '2023-04-09 07:18:10', '2023-07-03 04:57:49'),
(673, '', 'Γιωργάκης Παπαδόπουλος', '', 'papadopoulosgiorgakes@gmail.com', '', '1681030252.jpeg', 2, 1, NULL, '', '', '', '2023-04-09 08:50:52', '2023-07-03 04:57:49'),
(674, '', 'UĞUR KIZMAZ', '', 'live.qarboncu@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-09 10:35:23', '2023-07-03 04:57:49'),
(675, '', 'Priyank Srivastava', '', 'priyanksriva@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-09 10:43:43', '2023-07-03 04:57:49'),
(676, '', 'Yash Gandhi', '', 'yash.avasamall@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-09 13:41:36', '2023-07-03 04:57:49'),
(677, '', 'Mattia Bertolino', '', 'ilfuspascal@gmail.com', '', '1681075389.jpeg', 2, 1, NULL, '', '', '', '2023-04-09 21:23:09', '2023-07-03 04:57:49'),
(678, '', 'PABAN SAHA', '+918073364514', 'pabansaha81@gmail.com', '', '1681178565.jpeg', 2, 1, NULL, '', '', '', '2023-04-11 02:02:45', '2023-07-03 04:57:49'),
(679, '', 'hany sreng', '', 'hany.sreng@gmail.com', '', '1681195644.png', 2, 1, NULL, '', '', '', '2023-04-11 06:47:24', '2023-07-03 04:57:49'),
(680, '', 'Techinal Muzammil', '', 'muzammilkejan0@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-11 06:56:28', '2023-07-03 04:57:49'),
(681, '', 'Braa Aljaabari', '', 'braaaljaabari29@gmail.com', '', '1681198661.png', 2, 1, NULL, '', '', '', '2023-04-11 07:37:41', '2023-07-03 04:57:49'),
(682, '', 'Rajha SELVIN', '', 'matrimonyfrance@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-11 11:20:11', '2023-07-03 04:57:49'),
(683, '', 'ugaflix help', '', 'ugaflixhelp@gmail.com', '', '1681216396.png', 2, 1, NULL, '', '', '', '2023-04-11 12:33:16', '2023-07-03 04:57:49'),
(684, '', 'viral reels', '', 'moti.viral.reels@gmail.com', '', '1681235254.png', 2, 1, NULL, '', '', '', '2023-04-11 17:47:34', '2023-07-03 04:57:49'),
(685, '', 'B', '', 'alphacoder07@gmail.com', '', '1681236064.jpeg', 2, 1, NULL, '', '', '', '2023-04-11 18:01:04', '2023-07-03 04:57:49'),
(686, '', 'TV', '', 'info@4ace.tv', '', '', 2, 1, NULL, '', '', '', '2023-04-11 18:21:47', '2023-07-03 04:57:49'),
(687, '', 'Masud Alam', '', 'masudalam.3525@gmail.com', '', '1681237333.jpeg', 2, 1, NULL, '', '', '', '2023-04-11 18:22:12', '2023-07-03 04:57:49'),
(688, '', 'Limon Islam', '', 'ajaz09090@gmail.com', '', '1681270142.png', 2, 1, NULL, '', '', '', '2023-04-12 03:29:02', '2023-07-03 04:57:49'),
(689, '', 'Riyaz Ahmed', '', 'riyazahmed2930@gmail.com', '', '1681282395.png', 2, 1, NULL, '', '', '', '2023-04-12 06:53:15', '2023-07-03 04:57:49'),
(690, '', 'Robert Ogada', '', 'ogadar@gmail.com', '', '1681310523.png', 2, 1, NULL, '', '', '', '2023-04-12 14:42:03', '2023-07-03 04:57:49'),
(691, '', 'HAISAM TOP', '', 'tophaisam@gmail.com', '', '1681959575.jpeg', 2, 1, NULL, '', '', '', '2023-04-12 21:58:02', '2023-07-03 04:57:49'),
(692, '', 'Cxazd', '', 'craze0x1@gmail.com', '', '1681343802.jpeg', 2, 1, NULL, '', '', '', '2023-04-12 23:56:41', '2023-07-03 04:57:49'),
(693, '', '', '+212656666109', '', '', '', 3, 1, NULL, '', '', '', '2023-04-13 02:52:44', '2023-07-03 04:57:49'),
(694, '', '', '+85517482883', '', '', '', 3, 1, NULL, '', '', '', '2023-04-13 04:41:04', '2023-07-03 04:57:49'),
(695, '', 'Rothana Por', '', 'rothana.por@gmail.com', '', '1681361296.png', 2, 1, NULL, '', '', '', '2023-04-13 04:48:16', '2023-07-03 04:57:49'),
(696, '', '', '+923022527129', '', '', '', 3, 1, NULL, '', '', '', '2023-04-13 09:14:25', '2023-07-03 04:57:49'),
(697, '', 'Ricky Harry', '', 'rickyharry89@gmail.com', '', '1681379645.png', 2, 1, NULL, '', '', '', '2023-04-13 09:54:05', '2023-07-03 04:57:49'),
(698, '', 'Franjo Pehar', '', 'pehar.franjo.fp@gmail.com', '', '1682367517.jpeg', 2, 1, NULL, '', '', '', '2023-04-13 20:16:40', '2023-07-03 04:57:49'),
(699, '', '', '+5521999258434', '', '', '', 3, 1, NULL, '', '', '', '2023-04-13 21:20:15', '2023-07-03 04:57:49'),
(700, '', 'Safarali Khazratkulov', '+79998194344', 'tajikxost@gmail.com', '', '1681433761.jpeg', 2, 1, NULL, '', '', '', '2023-04-14 00:30:30', '2023-07-03 04:57:49'),
(701, '', 'drm', '', 'dr.m2222dr.m@gmail.com', '', '1681434848.png', 2, 1, NULL, '', '', '', '2023-04-14 01:14:08', '2023-07-03 04:57:49'),
(702, '', '', '+918240524407', '', '', '', 3, 1, NULL, '', '', '', '2023-04-14 12:00:13', '2023-07-03 04:57:49'),
(703, '', 'Joel Mushaumuko', '', 'joel.mushaumuko.3@gmail.com', '', '1681477264.png', 2, 1, NULL, '', '', '', '2023-04-14 13:01:04', '2023-07-03 04:57:49'),
(704, '', 'Maitry Nirmal', '', 'maitrynirmal@gmail.com', '', '1681487977.jpeg', 2, 1, NULL, '', '', '', '2023-04-14 15:59:35', '2023-07-03 04:57:49'),
(705, '', 'denyvus', '', 'denyvustv@gmail.com', '', '1681492035.png', 2, 1, NULL, '', '', '', '2023-04-14 17:07:15', '2023-07-03 04:57:49'),
(706, '', '', '+4917624318206', '', '', '', 3, 1, NULL, '', '', '', '2023-04-14 22:39:51', '2023-07-03 04:57:49'),
(707, '', 'sbrm', '+254739688836', 'sbrmsportstv@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-04-14 23:40:30', '2023-07-03 04:57:49'),
(708, '', 'ShopnShopn Online Store', '', 'sbalin2000@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-15 05:22:54', '2023-07-03 04:57:49'),
(709, '', 'Perla Maria', '', 'perlax2310@gmail.com', '', '1681536618.jpeg', 2, 1, NULL, '', '', '', '2023-04-15 05:30:17', '2023-07-03 04:57:49'),
(710, '', 'ElvisIngenieroCivil', '', 'magalyacunadiaz01@gmail.com', '', '1681543729.png', 2, 1, NULL, '', '', '', '2023-04-15 07:28:49', '2023-07-03 04:57:49'),
(711, '', 'lumen xti', '', 'lumenxti2@googlemail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-15 12:09:54', '2023-07-03 04:57:49'),
(712, '', 'ghij', '', 'startupmoon2020@gmail.com', '', '1681621179.png', 2, 1, NULL, '', '', '', '2023-04-16 04:59:39', '2023-07-03 04:57:49'),
(713, '', 'LongKa Shen', '', 'shenlongkake@gmail.com', '', '1681625639.png', 2, 1, NULL, '', '', '', '2023-04-16 06:13:59', '2023-07-03 04:57:49'),
(714, '', 'kamel bensalah', '', 'kamel100bensalah@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-16 17:11:41', '2023-07-03 04:57:49'),
(715, '', 'Miqueas Dejesus-Garcia', '', 'miqueasdejesusgarcia@gmail.com', '', '1681666179.png', 2, 1, NULL, '', '', '', '2023-04-16 17:29:39', '2023-07-03 04:57:49'),
(716, '', 'shiju abdhulrasheed', '', 'shiju.a1983@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-16 17:47:28', '2023-07-03 04:57:49'),
(717, '', 'Hardik Kareliya', '', 'hardikkarelia1712@gmail.com', '', '1681724957.jpeg', 2, 1, NULL, '', '', '', '2023-04-17 09:34:19', '2023-07-03 04:57:49'),
(718, '', 'Marc Anderson', '', 'marcanderson.15092@gmail.com', '', '1681731668.jpeg', 2, 1, NULL, '', '', '', '2023-04-17 11:41:08', '2023-07-03 04:57:49'),
(719, '', 'mohammed omar', '', 'alawertane1111@gmail.com', '', '1681785807.png', 2, 1, NULL, '', '', '', '2023-04-18 02:43:27', '2023-07-03 04:57:49'),
(720, '', 'Kitt Lee', '', 'kittlsk@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-18 03:50:43', '2023-07-03 04:57:49'),
(721, '', 'Sai kumar', '+919502235919', 'yskmagicworldstudio@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-04-18 03:52:16', '2023-07-03 04:57:49'),
(722, '', 'Jack', '+919391738181', 'selfearnwithadmob@gmail.com', '', '1681792933.jpeg', 2, 1, NULL, '', '', '', '2023-04-18 04:42:12', '2023-07-03 04:57:49'),
(723, '', 'Jeki Lovenzmartin', '', 'jacksonomondi46@gmail.com', '', '1681802914.jpeg', 2, 1, NULL, '', '', '', '2023-04-18 07:28:33', '2023-07-03 04:57:49'),
(724, '', 'ANTHONY PROBAL GOMES', '', 'asyncanthony@gmail.com', '', '1681825581.jpeg', 2, 1, NULL, '', '', '', '2023-04-18 13:46:20', '2023-07-03 04:57:49'),
(725, '', 'am creations', '', 'amcreations1436@gmail.com', '', '1681837011.png', 2, 1, NULL, '', '', '', '2023-04-18 16:56:51', '2023-07-03 04:57:49'),
(726, '', '', '+2001557000084', '', '', '', 3, 1, NULL, '', '', '', '2023-04-18 22:28:31', '2023-07-03 04:57:49'),
(727, '', '', '+916370993170', '', '', '', 3, 1, NULL, '', '', '', '2023-04-19 01:59:26', '2023-07-03 04:57:49'),
(728, '', 'mac anukant', '', 'macanukant@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-19 06:26:06', '2023-07-03 04:57:49'),
(729, '', '', '+2348035202973', '', '', '', 3, 1, NULL, '', '', '', '2023-04-19 08:48:43', '2023-07-03 04:57:49'),
(730, '', 'i the one', '', 'yonatan.dem123@gmail.com', '', '1681938305.png', 2, 1, NULL, '', '', '', '2023-04-19 21:05:05', '2023-07-03 04:57:49'),
(731, '', 'Marcio Augusto Neris', '', 'manbtos@gmail.com', '', '1681955787.png', 2, 1, NULL, '', '', '', '2023-04-20 01:56:27', '2023-07-03 04:57:49'),
(732, '', 'Salim Hasan', '', 'fui_shang@hotmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-20 03:45:02', '2023-07-03 04:57:49'),
(733, '', 'sofia9_official', '', 'sofiaofficial21@gmail.com', '', '1681966623.jpeg', 2, 1, NULL, '', '', '', '2023-04-20 04:57:03', '2023-07-03 04:57:49'),
(734, '', 'All Demand', '', 'alldemand24@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-20 05:08:36', '2023-07-03 04:57:49'),
(735, '', 'vivek vasoya', '', 'vivekvasoya43@gmail.com', '', '1681969915.png', 2, 1, NULL, '', '', '', '2023-04-20 05:51:55', '2023-07-03 04:57:49');
INSERT INTO `user` (`id`, `user_name`, `name`, `mobile`, `email`, `password`, `image`, `type`, `status`, `expiry_date`, `api_token`, `email_verify_token`, `is_email_verify`, `created_at`, `updated_at`) VALUES
(736, '', 'Flying Pixels Productions', '', 'flyingpixelsindia@gmail.com', '', '1681986167.png', 2, 1, NULL, '', '', '', '2023-04-20 10:22:47', '2023-07-03 04:57:49'),
(737, '', 'Miga Movies', '', 'mostafa6egy@gmail.com', '', '1681996324.jpg', 2, 1, NULL, '', '', '', '2023-04-20 13:11:12', '2023-07-03 04:57:49'),
(738, '', 'Leonardo Santtos', '', 'seckodb@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-20 16:45:23', '2023-07-03 04:57:49'),
(739, '', 'Héritier NDUKATE', '', 'ndukateh@gmail.com', '', '1682020906.jpeg', 2, 1, NULL, '', '', '', '2023-04-20 20:01:43', '2023-07-03 04:57:49'),
(740, '', 'speedy overdose', '', 'overdosespeedy@gmail.com', '', '1682022364.png', 2, 1, NULL, '', '', '', '2023-04-20 20:26:04', '2023-07-03 04:57:49'),
(741, '', 'Muhammad Abdullah', '', 'hamaraschool786@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-22 04:06:10', '2023-07-03 04:57:49'),
(742, '', 'Gilbert Mwangi', '', 'gibrhymz@gmail.com', '', '1682233108.png', 2, 1, NULL, '', '', '', '2023-04-23 06:58:28', '2023-07-03 04:57:49'),
(743, '', 'ar ashik', '', 'arashik380@gmail.com', '', '1682248683.png', 2, 1, NULL, '', '', '', '2023-04-23 11:18:03', '2023-07-03 04:57:49'),
(744, '', 'SDH RAJULA', '', 'sdhrajula.health.amreli@gmail.com', '', '1682278060.png', 2, 1, NULL, '', '', '', '2023-04-23 19:27:40', '2023-07-03 04:57:49'),
(745, '', 'Join Nguyen', '', 'join.nguyen.2018@gmail.com', '', '1682315229.png', 2, 1, NULL, '', '', '', '2023-04-24 05:47:09', '2023-07-03 04:57:49'),
(746, '', 'Gosotek Technologies Pvt Ltd', '', 'anuj.gosotek@gmail.com', '', '1682318031.jpeg', 2, 1, NULL, '', '', '', '2023-04-24 06:33:50', '2023-07-03 04:57:49'),
(747, '', 'Tonton', '+48699513684', '', '', '', 3, 1, NULL, '', '', '', '2023-04-24 07:40:32', '2023-07-03 04:57:49'),
(748, '', 'Rasmi Offical', '', 'rasmi.offical@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-24 07:58:18', '2023-07-03 04:57:49'),
(749, '', 'Warzuni', '', 'warzuni146@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-24 16:57:27', '2023-07-03 04:57:49'),
(750, '', 'Amosy Lee', '', 'amosypiman@gmail.com', '', '1682355854.png', 2, 1, NULL, '', '', '', '2023-04-24 17:04:14', '2023-07-03 04:57:49'),
(751, '', 'Sagar Joshi', '', 'joshisagar7766@gmail.com', '', '1682364945.png', 2, 1, NULL, '', '', '', '2023-04-24 19:35:45', '2023-07-03 04:57:49'),
(752, '', 'MKALIMANGI blog', '', 'elviceelvice@gmail.com', '', '1682369237.png', 2, 1, NULL, '', '', '', '2023-04-24 20:47:17', '2023-07-03 04:57:49'),
(753, '', 'Koureissi Konaré', '', 'koureissi@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-25 08:51:53', '2023-07-03 04:57:49'),
(754, '', 'ty', '', 'shilpipatni8@gmail.com', '', '1683290198.jpeg', 2, 1, NULL, '', '', '', '2023-04-25 09:19:10', '2023-07-03 04:57:49'),
(755, '', '', '+22364930000', '', '', '', 3, 1, NULL, '', '', '', '2023-04-25 09:19:13', '2023-07-03 04:57:49'),
(756, '', 'Gilbert Mwangi', '', 'gibdesignz@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-25 14:21:07', '2023-07-03 04:57:49'),
(757, '', '', '+917302019127', '', '', '', 3, 1, NULL, '', '', '', '2023-04-26 08:37:11', '2023-07-03 04:57:49'),
(758, '', 'Ram Narayan Inter College Kathkuiyan Kushinagar', '', 'ashishpratap274@gmail.com', '', '1682514492.png', 2, 1, NULL, '', '', '', '2023-04-26 13:08:12', '2023-07-03 04:57:49'),
(759, '', 'Monika Vankar', '+918866591063', '', '', '1682529840.jpg', 3, 1, NULL, '', '', '', '2023-04-26 17:05:39', '2023-07-03 04:57:49'),
(760, '', 'Ali', '+923429488294', 'alimughal42@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-04-26 20:43:41', '2023-07-03 04:57:49'),
(761, '', 'bad boy', '', 'jokerdkdb@gmail.com', '', '1682563660.png', 2, 1, NULL, '', '', '', '2023-04-27 02:47:40', '2023-07-03 04:57:49'),
(762, '', 'TuserID Channel', '', 'tuseriid@gmail.com', '', '1682564564.jpeg', 2, 1, NULL, '', '', '', '2023-04-27 03:02:43', '2023-07-03 04:57:49'),
(763, '', 'Ezequiel Ramirez', '', 'exekiaz@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-27 04:16:39', '2023-07-03 04:57:49'),
(764, '', 'KVK M SOLUTIONS', '', 'kvkmsolutions@gmail.com', '', '1682569946.png', 2, 1, NULL, '', '', '', '2023-04-27 04:32:26', '2023-07-03 04:57:49'),
(765, '', 'Ritesh Nayaka', '', 'riteshnayaka@gmail.com', '', '1682603823.png', 2, 1, NULL, '', '', '', '2023-04-27 13:57:03', '2023-07-03 04:57:49'),
(766, '', 'King User', '', 'kinguserpkd@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-04-27 15:17:57', '2023-07-03 04:57:49'),
(767, '', 'حورس 2022', '', 'horuspoppo@gmail.com', '', '1682626743.jpeg', 2, 1, NULL, '', '', '', '2023-04-27 20:19:01', '2023-07-03 04:57:49'),
(768, '', 'jamal urlo', '', 'urlojamalo21@gmail.com', '', '1682641616.jpeg', 2, 1, NULL, '', '', '', '2023-04-28 00:04:48', '2023-07-03 04:57:49'),
(769, '', 'Gokul P G', '', 'gokulpgvkm@gmail.com', '', '1682653206.png', 2, 1, NULL, '', '', '', '2023-04-28 03:40:06', '2023-07-03 04:57:49'),
(770, '', 'Nishant Poddar', '', 'nishant.npj@gmail.com', '', '1682666230.png', 2, 1, NULL, '', '', '', '2023-04-28 07:17:10', '2023-07-03 04:57:49'),
(771, '', 'Nice Victor', '+2349048457100', 'nicevictor26@gmail.com', '', '1682677742.jpeg', 2, 1, NULL, '', '', '', '2023-04-28 10:29:01', '2023-07-03 04:57:49'),
(772, '', 'Shenouda Nagy', '', 'nagyshenouda14@gmail.com', '', '1682683945.png', 2, 1, NULL, '', '', '', '2023-04-28 12:12:25', '2023-07-03 04:57:49'),
(773, '', 'Norisk', '', 'norisk610@gmail.com', '', '1682712233.jpeg', 2, 1, NULL, '', '', '', '2023-04-28 20:03:52', '2023-07-03 04:57:49'),
(774, '', '', '+252618466528', '', '', '', 3, 1, NULL, '', '', '', '2023-04-28 21:16:32', '2023-07-03 04:57:49'),
(775, '', 'IT-DESIN', '', 'itdesinru@gmail.com', '', '1682737690.jpeg', 2, 1, NULL, '', '', '', '2023-04-29 03:08:10', '2023-07-03 04:57:49'),
(776, '', 'name is', '', 'domax0108@gmail.com', '', '1682786897.png', 2, 1, NULL, '', '', '', '2023-04-29 16:48:17', '2023-07-03 04:57:49'),
(777, '', 'Snsbhs Jdndnd', '', 'kimetsu0muzan@gmail.com', '', '1682787185.png', 2, 1, NULL, '', '', '', '2023-04-29 16:53:05', '2023-07-03 04:57:49'),
(778, '', '', '+919915711237', '', '', '', 3, 1, NULL, '', '', '', '2023-04-30 04:15:59', '2023-07-03 04:57:49'),
(779, '', 'M.M.Asfal Aslam', '', 'alexasfal@gmail.com', '', '1682834020.png', 2, 1, NULL, '', '', '', '2023-04-30 05:53:40', '2023-07-03 04:57:49'),
(780, '', '', '+51929627925', '', '', '', 3, 1, NULL, '', '', '', '2023-04-30 06:07:11', '2023-07-03 04:57:49'),
(781, '', 'Altangerel Du', '', 'aagiidu@gmail.com', '', '1682843539.png', 2, 1, NULL, '', '', '', '2023-04-30 08:32:19', '2023-07-03 04:57:49'),
(782, '', '', '+97680102053', '', '', '', 3, 1, NULL, '', '', '', '2023-04-30 08:37:12', '2023-07-03 04:57:49'),
(783, '', 'Cim Agency tz', '+2650993872381', 'agencycim@gmail.com', '', '1682845254.jpeg', 2, 1, NULL, '', '', '', '2023-04-30 09:00:53', '2023-07-03 04:57:49'),
(784, '', 'dimple', '+919021467547', 'dimpleq634@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-04-30 20:32:21', '2023-07-03 04:57:49'),
(785, '', '', '+5584987964781', '', '', '', 3, 1, NULL, '', '', '', '2023-05-01 07:21:19', '2023-07-03 04:57:49'),
(786, '', 'Rick Birmingham', '', 'thefilthyfrog@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-01 09:07:40', '2023-07-03 04:57:49'),
(787, '', 'Singapore ff', '', 'singaporeff2303@gmail.com', '', '1682947315.jpeg', 2, 1, NULL, '', '', '', '2023-05-01 13:21:54', '2023-07-03 04:57:49'),
(788, '', 'Drama World', '', 'ak2830048@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-01 15:56:58', '2023-07-03 04:57:49'),
(789, '', 'ram kumar', '', 'ramkumar11ur37@gmail.com', '', '1682957406.jpeg', 2, 1, NULL, '', '', '', '2023-05-01 16:10:05', '2023-07-03 04:57:49'),
(790, '', 'Md Shahoreyer Mostofa', '', 'mdshahoreyerm@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-01 17:13:50', '2023-07-03 04:57:49'),
(791, '', 'AmTechno Soft Solutions', '', 'amtechnosoftsolutions@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-01 18:17:14', '2023-07-03 04:57:49'),
(792, '', 'Mattia Grispo', '', 'mattiayoghi95@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-02 01:19:14', '2023-07-03 04:57:49'),
(793, '', 'Mattia Grispo', '', 'mattiayoghi95@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-02 01:19:14', '2023-07-03 04:57:49'),
(794, '', '', '+59160002585', '', '', '', 3, 1, NULL, '', '', '', '2023-05-02 10:07:43', '2023-07-03 04:57:49'),
(795, '', 'Daniel', '', 'surimaskk@gmail.com', '', '1683067985.png', 2, 1, NULL, '', '', '', '2023-05-02 22:53:05', '2023-07-03 04:57:49'),
(796, '', '', '+918291642307', '', '', '', 3, 1, NULL, '', '', '', '2023-05-03 13:37:29', '2023-07-03 04:57:49'),
(797, '', 'Jaime Johnston', '', 'jaimejohnston.27291@gmail.com', '', '1683121570.png', 2, 1, NULL, '', '', '', '2023-05-03 13:46:10', '2023-07-03 04:57:49'),
(798, '', 'Sampancrasio Peliculas', '', 'jordymartinezn7@gmail.com', '', '1683165707.png', 2, 1, NULL, '', '', '', '2023-05-04 02:01:47', '2023-07-03 04:57:49'),
(799, '', 'CACERES MT 3', '', 'caceresmt3@gmail.com', '', '1683173046.png', 2, 1, NULL, '', '', '', '2023-05-04 04:04:06', '2023-07-03 04:57:49'),
(800, '', 'Seaya henju', '', 'seaya@henjutech.com', '', '', 2, 1, NULL, '', '', '', '2023-05-04 06:36:57', '2023-07-03 04:57:49'),
(801, '', 'ING Fatt32 (Fatt32.ht)', '', 'fatt32dev@gmail.com', '', '1683208922.jpeg', 2, 1, NULL, '', '', '', '2023-05-04 14:02:02', '2023-07-03 04:57:49'),
(802, '', 'Abdulrahman Ahmed Makktof', '', 'alraies.com@gmail.com', '', '1683219422.png', 2, 1, NULL, '', '', '', '2023-05-04 16:57:02', '2023-07-03 04:57:49'),
(803, '', 'Bonnie Virgil', '', 'missbonniev01@gmail.com', '', '1686134755.jpg', 2, 1, NULL, '', '', '', '2023-05-04 17:31:52', '2023-07-03 04:57:49'),
(804, '', 'Shubhanshu Soni', '', 'soni.shubhanshu93@gmail.com', '', '1683278831.jpeg', 2, 1, NULL, '', '', '', '2023-05-05 09:27:05', '2023-07-03 04:57:49'),
(805, '', 'Toni King', '', 'toniking.06771@gmail.com', '', '1683283063.jpeg', 2, 1, NULL, '', '', '', '2023-05-05 10:37:43', '2023-07-03 04:57:49'),
(806, '', 'Metin Oktay', '', 'zapplatv@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-05 18:19:40', '2023-07-03 04:57:49'),
(807, '', 'Adel Salhi', '', 'AdelSalhiYPR@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-06 07:29:31', '2023-07-03 04:57:49'),
(808, '', 'Manoj Kumar', '+919801673178', 'developerermanoj@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-05-06 09:43:24', '2023-07-03 04:57:49'),
(809, '', 'Wambere Betty Shina', '+256701409542', 'katrinaunderwood116@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-05-06 09:48:05', '2023-07-03 04:57:49'),
(810, '', 'Santosh kumar', '', 'santoshkkrd944@gmail.com', '', '1683370841.jpeg', 2, 1, NULL, '', '', '', '2023-05-06 11:00:40', '2023-07-03 04:57:49'),
(811, '', 'Vusal İbadullayev', '', 'azdevteam1@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-07 00:16:07', '2023-07-03 04:57:49'),
(812, '', 'HOST KING', '', 'hostking2019@gmail.com', '', '1683437523.png', 2, 1, NULL, '', '', '', '2023-05-07 05:32:03', '2023-07-03 04:57:49'),
(813, '', 'Hernan Florez', '+573246432318', '', '', '1683498078.png', 3, 1, NULL, '', '', '', '2023-05-07 22:19:42', '2023-07-03 04:57:49'),
(814, '', '', '+8801733389001', '', '', '', 3, 1, NULL, '', '', '', '2023-05-08 03:52:00', '2023-07-03 04:57:49'),
(815, '', 'MD MAHFUZ HOSEN', '', 'iammahfuzhosen@gmail.com', '', '1683528654.jpeg', 2, 1, NULL, '', '', '', '2023-05-08 06:50:53', '2023-07-03 04:57:49'),
(816, '', '春樹Haruki', '', 'b684489@gmail.com', '', '1683605466.png', 2, 1, NULL, '', '', '', '2023-05-09 04:11:06', '2023-07-03 04:57:49'),
(817, '', 'Erika Rahman', '', 'rahmanerika786@gmail.com', '', '1683617279.png', 2, 1, NULL, '', '', '', '2023-05-09 07:27:59', '2023-07-03 04:57:49'),
(818, '', 'jawad husain', '', 'jawadhusain061@gmail.com', '', '1683618693.jpeg', 2, 1, NULL, '', '', '', '2023-05-09 07:51:32', '2023-07-03 04:57:49'),
(819, '', 'Ruan Cabral', '', 'ruancabral113@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-09 17:30:27', '2023-07-03 04:57:49'),
(820, '', 'Obinna Princewill eke', '', 'princewillekeobinna@gmail.com', '', '1683657944.png', 2, 1, NULL, '', '', '', '2023-05-09 18:45:44', '2023-07-03 04:57:49'),
(821, '', 'Dilshan Ramesh', '', 'edrameshprivate@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-09 18:55:21', '2023-07-03 04:57:49'),
(822, '', 'Sports TV', '', 'tsports971@gmail.com', '', '1683659922.jpeg', 2, 1, NULL, '', '', '', '2023-05-09 19:18:41', '2023-07-03 04:57:49'),
(823, '', 'kurd Planet', '', 'KurdPlanet@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-09 20:09:56', '2023-07-03 04:57:49'),
(824, '', 'Fka Ralte', '', 'lalfka27@gmail.com', '', '1683668888.jpeg', 2, 1, NULL, '', '', '', '2023-05-09 21:48:08', '2023-07-03 04:57:49'),
(825, '', '', '+917088168595', '', '', '', 3, 1, NULL, '', '', '', '2023-05-10 05:12:51', '2023-07-03 04:57:49'),
(826, '', 'At Network - نيتورك', '', 'oussamatijani100@gmail.com', '', '1683712621.jpeg', 2, 1, NULL, '', '', '', '2023-05-10 09:57:01', '2023-07-03 04:57:49'),
(827, '', '', '+919506492251', '', '', '', 3, 1, NULL, '', '', '', '2023-05-10 13:48:00', '2023-07-03 04:57:49'),
(828, '', 'Bddbdbdbd', '', 'bdbdbdbdbdjiji@gmail.com', '', '1683747312.jpeg', 2, 1, NULL, '', '', '', '2023-05-10 19:35:11', '2023-07-03 04:57:49'),
(829, '', '', '+918777431430', '', '', '', 3, 1, NULL, '', '', '', '2023-05-10 20:09:43', '2023-07-03 04:57:49'),
(830, '', 'Muhammad Abid', '', 'abiddasti06@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-11 09:35:15', '2023-07-03 04:57:49'),
(831, '', 'Muddassir Khan', '', 'muddassirkhan2024@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-11 09:43:02', '2023-07-03 04:57:49'),
(832, '', 'Useds', '', 'useds5963@gmail.com', '', '1683801195.jpeg', 2, 1, NULL, '', '', '', '2023-05-11 10:33:14', '2023-07-03 04:57:49'),
(833, '', 'Juvenir Barbosa', '', 'juvenirtx@gmail.com', '', '1683833285.jpg', 2, 1, NULL, '', '', '', '2023-05-11 19:09:24', '2023-07-03 04:57:49'),
(834, '', 'Sk Soft', '', 'sksoft0@gmail.com', '', '1683841792.jpeg', 2, 1, NULL, '', '', '', '2023-05-11 21:49:52', '2023-07-03 04:57:49'),
(835, '', 'TECHMONEY BR', '', 'fs6241025@gmail.com', '', '1683842772.png', 2, 1, NULL, '', '', '', '2023-05-11 22:06:12', '2023-07-03 04:57:49'),
(836, '', '', '+21624068240', '', '', '', 3, 1, NULL, '', '', '', '2023-05-12 00:16:17', '2023-07-03 04:57:49'),
(837, '', 'Onir Gngr', '', 'gngronir@gmail.com', '', '1683851876.jpeg', 2, 1, NULL, '', '', '', '2023-05-12 00:37:56', '2023-07-03 04:57:49'),
(838, '', 'Raja Sahin', '', 'rajasahin2022@gmail.com', '', '1683873299.png', 2, 1, NULL, '', '', '', '2023-05-12 06:34:59', '2023-07-03 04:57:49'),
(839, '', 'vv', '+917700987585', '', '', '1683874756.jpg', 3, 1, NULL, '', '', '', '2023-05-12 06:57:32', '2023-07-03 04:57:49'),
(840, '', 'Test 01', '', 't387814@gmail.com', '', '1683948668.png', 2, 1, NULL, '', '', '', '2023-05-13 03:31:08', '2023-07-03 04:57:49'),
(841, '', 'Kahariani Kahariani', '', 'kaharianikahariani@gmail.com', '', '1683990827.png', 2, 1, NULL, '', '', '', '2023-05-13 15:13:47', '2023-07-03 04:57:49'),
(842, '', 'Nil Yadav', '', 'nilyadav976@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-13 16:54:53', '2023-07-03 04:57:49'),
(843, '', '', '+916375005498', '', '', '', 3, 1, NULL, '', '', '', '2023-05-13 18:37:42', '2023-07-03 04:57:49'),
(844, '', 'Adeleke Iliasu', '+2348137794161', 'debogadgets@gmail.com', '', '1684025798.jpeg', 2, 1, NULL, '', '', '', '2023-05-14 00:56:37', '2023-07-03 04:57:49'),
(845, '', 'Raj G', '', 'rajshray.raj44@gmail.com', '', '1684042011.jpeg', 2, 1, NULL, '', '', '', '2023-05-14 05:26:50', '2023-07-03 04:57:49'),
(846, '', '', '+919774681216', '', '', '', 3, 1, NULL, '', '', '', '2023-05-14 11:51:08', '2023-07-03 04:57:49'),
(847, '', 'Ukesh Sai', '', 'ukesh1812@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-14 12:15:44', '2023-07-03 04:57:49'),
(848, '', '', '+254704999298', '', '', '', 3, 1, NULL, '', '', '', '2023-05-14 12:46:59', '2023-07-03 04:57:49'),
(849, '', 'المحترف المحترف', '', 'salhali350@gmail.com', '', '1684099132.png', 2, 1, NULL, '', '', '', '2023-05-14 21:18:52', '2023-07-03 04:57:49'),
(850, '', 'акбар муродов', '', 'akbarjon18@gmail.com', '', '1684124394.jpeg', 2, 1, NULL, '', '', '', '2023-05-15 04:19:53', '2023-07-03 04:57:49'),
(851, '', 'Rahul Khurana', '', 'rahulkhurana519@gmail.com', '', '1684159190.png', 2, 1, NULL, '', '', '', '2023-05-15 13:59:50', '2023-07-03 04:57:49'),
(852, '', 'Rainbow Fashion Design School', '', 'umarbatuusa@gmail.com', '', '1684210860.png', 2, 1, NULL, '', '', '', '2023-05-16 04:21:00', '2023-07-03 04:57:49'),
(853, '', 'rakesh raj', '', 'rakesh.raj204@gmail.com', '', '1684215499.png', 2, 1, NULL, '', '', '', '2023-05-16 05:38:19', '2023-07-03 04:57:49'),
(854, '', '', '+256700445369', '', '', '', 3, 1, NULL, '', '', '', '2023-05-16 07:34:19', '2023-07-03 04:57:49'),
(855, '', 'Movie', '', 'moviesirait@gmail.com', '', '1684223442.png', 2, 1, NULL, '', '', '', '2023-05-16 07:50:42', '2023-07-03 04:57:49'),
(856, '', '', '+916309707555', '', '', '', 3, 1, NULL, '', '', '', '2023-05-16 08:50:39', '2023-07-03 04:57:49'),
(857, '', 'Girish', '', 'spocooworld@gmail.com', '', '1684229876.png', 2, 1, NULL, '', '', '', '2023-05-16 09:37:56', '2023-07-03 04:57:49'),
(858, '', 'YouTube family', '', 'sharuskhaamau02@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-16 12:55:26', '2023-07-03 04:57:49'),
(859, '', 'Fire Roll', '', 'firerollcom@gmail.com', '', '1684293833.png', 2, 1, NULL, '', '', '', '2023-05-17 03:23:53', '2023-07-03 04:57:49'),
(860, '', '', '+252617705758', '', '', '', 3, 1, NULL, '', '', '', '2023-05-17 11:27:57', '2023-07-03 04:57:49'),
(861, '', 'Daniel Rabi', '', 'engenheirosdaweb2@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-17 13:41:51', '2023-07-03 04:57:49'),
(862, '', 'Jugs Vijayakumar', '', 'jagadeesh.vn@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-18 03:51:13', '2023-07-03 04:57:49'),
(863, '', 'Itinside Team', '', 'eliteprintingpress@gmail.com', '', '1684387711.jpeg', 2, 1, NULL, '', '', '', '2023-05-18 05:28:30', '2023-07-03 04:57:49'),
(864, '', 'Ariharan T', '', 'haripriyanjan@gmail.com', '', '1684400097.png', 2, 1, NULL, '', '', '', '2023-05-18 08:54:57', '2023-07-03 04:57:49'),
(865, '', 'saad', '+923046142057', 'rasilatv5151@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-05-18 19:32:16', '2023-07-03 04:57:49'),
(866, '', 'Kivu Unit 20', '', 'unit20kivu@gmail.com', '', '1684508661.jpeg', 2, 1, NULL, '', '', '', '2023-05-19 15:04:20', '2023-07-03 04:57:49'),
(867, '', 'az pc', '', 'azpc123@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-19 17:50:52', '2023-07-03 04:57:49'),
(868, '', 'Femi Oluwaleimu', '', 'femifalemu@gmail.com', '', '1684566675.png', 2, 1, NULL, '', '', '', '2023-05-20 07:11:15', '2023-07-03 04:57:49'),
(869, '', 'Julio', '', 'discordial294@gmail.com', '', '1684568037.png', 2, 1, NULL, '', '', '', '2023-05-20 07:33:57', '2023-07-03 04:57:49'),
(870, '', 'Genesys Group', '', 'genesysbroadcasting@gmail.com', '', '1684571560.jpeg', 2, 1, NULL, '', '', '', '2023-05-20 08:32:40', '2023-07-03 04:57:49'),
(871, '', 'Naum', '', 'naumhussain02@gmail.com', '', '1684614013.png', 2, 1, NULL, '', '', '', '2023-05-20 20:20:13', '2023-07-03 04:57:49'),
(872, '', 'Eklas Five', '', 'eklasfive@gmail.com', '', '1684674692.jpeg', 2, 1, NULL, '', '', '', '2023-05-21 12:51:17', '2023-07-03 04:57:49'),
(873, '', '', '+919790754854', '', '', '', 3, 1, NULL, '', '', '', '2023-05-21 13:01:46', '2023-07-03 04:57:49'),
(874, '', 'Leo Brama123', '', 'leobrama1@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-21 17:36:14', '2023-07-03 04:57:49'),
(875, '', 'Use Me', '', 'meuse684@gmail.com', '', '1684695609.jpeg', 2, 1, NULL, '', '', '', '2023-05-21 19:00:09', '2023-07-03 04:57:49'),
(876, '', 'Tester', '+917823004460', 'ayatullahkhan219@gmail.com', '', '1684697493.jpeg', 2, 1, NULL, '', '', '', '2023-05-21 19:17:10', '2023-07-03 04:57:49'),
(877, '', 'Britto_Sam_ Jose.J', '', 'brittosamjosej@gmail.com', '', '1684758658.jpeg', 2, 1, NULL, '', '', '', '2023-05-22 12:30:57', '2023-07-03 04:57:49'),
(878, '', 'SELVAM MUNIYANDI', '', 'bqbps7618j@gmail.com', '', '1684848692.png', 2, 1, NULL, '', '', '', '2023-05-23 13:31:32', '2023-07-03 04:57:49'),
(879, '', 'Hasini Surineni', '', 'has2672@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-23 15:17:24', '2023-07-03 04:57:49'),
(880, '', 'Alexander Garcia', '', 'neisergarciaquiliche@gmail.com', '', '1684871786.jpeg', 2, 1, NULL, '', '', '', '2023-05-23 19:56:25', '2023-07-03 04:57:49'),
(881, '', '', '+916353347726', '', '', '', 3, 1, NULL, '', '', '', '2023-05-24 05:00:05', '2023-07-03 04:57:49'),
(882, '', 'Thomas Ellis', '', 'thomasellis983@gmail.com', '', '1684919538.jpeg', 2, 1, NULL, '', '', '', '2023-05-24 09:12:18', '2023-07-03 04:57:49'),
(883, '', 'Don digiDon', '', 'rahathojaniyazow@gmail.com', '', '1684971212.jpg', 2, 1, NULL, '', '', '', '2023-05-24 23:21:23', '2023-07-03 04:57:49'),
(884, '', 'Jose Dubs', '', 'josedubs21@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-25 01:22:24', '2023-07-03 04:57:49'),
(885, '', 'app app', '', 'vishalsinghconsole@gmail.com', '', '1685015130.jpeg', 2, 1, NULL, '', '', '', '2023-05-25 11:45:29', '2023-07-03 04:57:49'),
(886, '', 'Facebrasil Gamers', '', 'Fernandoekastyell@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-25 23:19:52', '2023-07-03 04:57:49'),
(887, '', 'Prime Flix', '', 'tvflixmega@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-26 00:32:18', '2023-07-03 04:57:49'),
(888, '', 'Vinay tadhani', '', 'vinay.adsum@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-26 06:19:29', '2023-07-03 04:57:49'),
(889, '', 'Guna Borah', '', 'gunahornbills@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-26 18:52:20', '2023-07-03 04:57:49'),
(890, '', 'Sari Rifah', '+6287774480274', 'saririfah58@gmail.com', '', '1685175868.jpeg', 2, 1, NULL, '', '', '', '2023-05-27 08:22:46', '2023-07-03 04:57:49'),
(891, '', '', '+917003560913', '', '', '', 3, 1, NULL, '', '', '', '2023-05-27 13:46:02', '2023-07-03 04:57:49'),
(892, '', 'shahul hameed', '', 'shahultr@gmail.com', '', '1685197263.jpeg', 2, 1, NULL, '', '', '', '2023-05-27 14:21:02', '2023-07-03 04:57:49'),
(893, '', 'BKK Tech', '', 'bkktechs@gmail.com', '', '1685198597.jpeg', 2, 1, NULL, '', '', '', '2023-05-27 14:43:17', '2023-07-03 04:57:49'),
(894, '', 'Mundial Tec', '', 'alexmengao040@gmail.com', '', '1685321852.png', 2, 1, NULL, '', '', '', '2023-05-29 00:57:32', '2023-07-03 04:57:49'),
(895, '', 'Sayan Gupta', '', 'sayangupta858@gmail.com', '', '1685427102.png', 2, 1, NULL, '', '', '', '2023-05-30 06:11:42', '2023-07-03 04:57:49'),
(896, '', 'yunhui garment', '', 'yunhuigarment553@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-30 10:56:29', '2023-07-03 04:57:49'),
(897, '', 'ev1host', '', 'evonehost@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-05-31 06:04:12', '2023-07-03 04:57:49'),
(898, '', 'Roberto', '', 'shopiadome1@gmail.com', '', '1685561386.png', 2, 1, NULL, '', '', '', '2023-05-31 19:29:46', '2023-07-03 04:57:49'),
(899, '', 'Marrakchi hatem', '', 'gomez2047@gmail.com', '', '1685567895.png', 2, 1, NULL, '', '', '', '2023-05-31 21:18:15', '2023-07-03 04:57:49'),
(900, '', 'akne poorav', '+918294808338', 'jahsj@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-06-01 04:52:06', '2023-07-03 04:57:49'),
(901, '', '', '+919099300687', '', '', '', 3, 1, NULL, '', '', '', '2023-06-01 18:23:17', '2023-07-03 04:57:49'),
(902, '', 'Supriya Prabhat', '', 'supriyaprabhat998@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-02 08:45:44', '2023-07-03 04:57:49'),
(903, '', 'Edison Herrera', '', 'edisonherrera702@gmail.com', '', '1685738854.jpeg', 2, 1, NULL, '', '', '', '2023-06-02 20:47:29', '2023-07-03 04:57:49'),
(904, '', 'TRS Talkshow', '', 'trstalkshow@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-03 11:40:56', '2023-07-03 04:57:49'),
(905, '', 'Paweł Kotwica', '', 'tvboxnorge@gmail.com', '', '1685882774.jpeg', 2, 1, NULL, '', '', '', '2023-06-04 12:46:12', '2023-07-03 04:57:49'),
(906, '', 'shivveer', '+918587837330', 'shivveersingh2175@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-06-05 11:27:33', '2023-07-03 04:57:49'),
(907, '', 'null', '', 'jagadeesh+1@xminds.com', '', '', 2, 1, NULL, '', '', '', '2023-06-06 04:48:13', '2023-07-03 04:57:49'),
(908, '', 'Nishith Kumar', '', 'nishith1412@gmail.com', '', '1686036055.png', 2, 1, NULL, '', '', '', '2023-06-06 07:20:55', '2023-07-03 04:57:49'),
(909, '', 'vinoth kumar', '', 'vinomedia13@gmail.com', '', '1686036760.png', 2, 1, NULL, '', '', '', '2023-06-06 07:32:40', '2023-07-03 04:57:49'),
(910, '', '', '+919306648836', '', '', '', 3, 1, NULL, '', '', '', '2023-06-06 12:28:27', '2023-07-03 04:57:49'),
(911, '', 'Contato The Gusttah', '', 'contacriticalops1234@gmail.com', '', '1686206206.png', 2, 1, NULL, '', '', '', '2023-06-06 15:54:08', '2023-07-03 04:57:49'),
(912, '', 'null', '', '2v9q8946jc@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-06 18:16:33', '2023-07-03 04:57:49'),
(913, '', 'Braa Aljabari - براء الجعبري', '', 'braaaljaabari@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-06 20:05:16', '2023-07-03 04:57:49'),
(914, '', 'Entertainment Central (ECHD)', '', 'surjava5635@gmail.com', '', '1686110420.png', 2, 1, NULL, '', '', '', '2023-06-07 04:00:20', '2023-07-03 04:57:49'),
(915, '', 'atul tiwari', '', 'atultiwari1958@gmail.com', '', '1686118441.png', 2, 1, NULL, '', '', '', '2023-06-07 06:14:01', '2023-07-03 04:57:49'),
(916, '', 'Sudipta Saha', '', 'webgurustester@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-07 06:22:16', '2023-07-03 04:57:49'),
(917, '', 'mac book', '', 'demymbook@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-07 10:50:32', '2023-07-03 04:57:49'),
(918, '', 'Ahmet Serdar', '', 'ahmetsedar94@gmail.com', '', '1686177015.jpeg', 2, 1, NULL, '', '', '', '2023-06-07 22:30:13', '2023-07-03 04:57:49'),
(919, '', 'null', '', 'mxxghdmgmn@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-08 00:38:25', '2023-07-03 04:57:49'),
(920, '', 'Kuwait travels', '', 'kuwaittravels1@gmail.com', '', '1686308912.png', 2, 1, NULL, '', '', '', '2023-06-09 11:08:32', '2023-07-03 04:57:49'),
(921, '', '', '+919769523075', '', '', '', 3, 1, NULL, '', '', '', '2023-06-09 13:34:13', '2023-07-03 04:57:49'),
(922, '', 'darpan vora', '', 'getzwink@gmail.com', '', '1686334568.png', 2, 1, NULL, '', '', '', '2023-06-09 18:16:08', '2023-07-03 04:57:49'),
(923, '', 'null', '', 'kbj7c6dtpp@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-09 21:56:25', '2023-07-03 04:57:49'),
(924, '', 'Qashi Devil', '', 'qashidevil.sg@gmail.com', '', '1686378309.png', 2, 1, NULL, '', '', '', '2023-06-10 06:25:09', '2023-07-03 04:57:49'),
(925, '', 'Ronit Kumar Sahu', '', 'prsrs1098@gmail.com', '', '1687664813.jpeg', 2, 1, NULL, '', '', '', '2023-06-10 09:15:00', '2023-07-03 04:57:49'),
(926, '', 'Om Hari Sangati', '', 'sangatiomhari@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-10 20:50:31', '2023-07-03 04:57:49'),
(927, '', 'SHAH FAISAL QUADRI', '', 'faisalquadri04@gmail.com', '', '1686431432.jpeg', 2, 1, NULL, '', '', '', '2023-06-10 21:10:30', '2023-07-03 04:57:49'),
(928, '', '', '+5581987085853', '', '', '', 3, 1, NULL, '', '', '', '2023-06-11 04:56:01', '2023-07-03 04:57:49'),
(929, '', '', '+919820763264', '', '', '', 3, 1, NULL, '', '', '', '2023-06-11 06:12:46', '2023-07-03 04:57:49'),
(930, '', '', '+919431687452', '', '', '', 3, 1, NULL, '', '', '', '2023-06-11 08:46:29', '2023-07-03 04:57:49'),
(931, '', '', '+905423587040', '', '', '', 3, 1, NULL, '', '', '', '2023-06-11 13:08:37', '2023-07-03 04:57:49'),
(932, '', 'kusrat singh', '+919803265423', 'kusratsingh@gmail.com', '', '1686545931.jpeg', 2, 1, NULL, '', '', '', '2023-06-12 04:58:48', '2023-07-03 04:57:49'),
(933, '', '', '+212617043658', '', '', '', 3, 1, NULL, '', '', '', '2023-06-12 16:00:46', '2023-07-03 04:57:49'),
(934, '', 'AGiT Firm', '', 'agitfirm@gmail.com', '', '1686598516.png', 2, 1, NULL, '', '', '', '2023-06-12 19:35:16', '2023-07-03 04:57:49'),
(935, '', 'neeraj singh', '+918077608700', '', '', '1686613962.png', 3, 1, NULL, '', '', '', '2023-06-12 23:15:00', '2023-07-03 04:57:49'),
(936, '', '', '+919616622222', '', '', '', 3, 1, NULL, '', '', '', '2023-06-13 09:24:25', '2023-07-03 04:57:49'),
(937, '', 'KUldeep Kumar', '', 'kuldeep.javainindia@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-13 17:47:47', '2023-07-03 04:57:49'),
(938, '', 'null', '', 'cwqmyfhbhg@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-13 23:41:48', '2023-07-03 04:57:49'),
(939, '', 'Parthiban Rey', '', 'maddyparthi11@gmail.com', '', '1686715057.jpeg', 2, 1, NULL, '', '', '', '2023-06-14 03:57:36', '2023-07-03 04:57:49'),
(940, '', 'Muhammed Abdullah', '+923009490102', 'mabdullahsibghatullah123@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-06-14 16:29:33', '2023-07-03 04:57:49'),
(941, '', 'Jhonatan Santos', '', 'jhonassantos13@gmail.com', '', '1686760218.png', 2, 1, NULL, '', '', '', '2023-06-14 16:30:18', '2023-07-03 04:57:49'),
(942, '', 'Mohammed Obaid', '', 'MoObaid505@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-15 09:43:52', '2023-07-03 04:57:49'),
(943, '', 'Navaneetha Krishnan', '', 'caseyugapps@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-15 13:37:44', '2023-07-03 04:57:49'),
(944, '', 'null', '', 'gj86nh8pys@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-16 02:56:08', '2023-07-03 04:57:49'),
(945, '', 'Alceo Tontodonati', '', 'alceoj@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-16 13:39:27', '2023-07-03 04:57:49'),
(946, '', '', '+8801977335574', '', '', '', 3, 1, NULL, '', '', '', '2023-06-17 05:18:26', '2023-07-03 04:57:49'),
(947, '', 'Ali Exchanger', '', 'No_reply@aliexchanger.com', '', '1686987214.jpeg', 2, 1, NULL, '', '', '', '2023-06-17 05:31:59', '2023-07-03 04:57:49'),
(948, '', 'Akhtar Unar', '', 'akhtar989@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-17 06:40:22', '2023-07-03 04:57:49'),
(949, '', 'Mister F', '', 'titoukafr99@gmail.com', '', '1686989808.png', 2, 1, NULL, '', '', '', '2023-06-17 08:16:48', '2023-07-03 04:57:49'),
(950, '', 'null', '', 'nxdsffyszg@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-17 08:29:08', '2023-07-03 04:57:49'),
(951, '', 'Youtubesell', '', 'y0451673@gmail.com', '', '1686991536.png', 2, 1, NULL, '', '', '', '2023-06-17 08:45:36', '2023-07-03 04:57:49'),
(952, '', 'Fact Techie', '', 'facttechie@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-17 10:04:04', '2023-07-03 04:57:49'),
(953, '', 'Awais Rehman', '', 'awaisdev5765@gmail.com', '', '1686996790.png', 2, 1, NULL, '', '', '', '2023-06-17 10:13:10', '2023-07-03 04:57:49'),
(954, '', 'Mohammad Ali', '', 'alixchangers@gmail.com', '', '1687002097.jpeg', 2, 1, NULL, '', '', '', '2023-06-17 11:41:34', '2023-07-03 04:57:49'),
(955, '', 'Jingle Cartoons 2.0', '', 'jinglecartoons62@gmail.com', '', '1687016783.jpeg', 2, 1, NULL, '', '', '', '2023-06-17 15:46:21', '2023-07-03 04:57:49'),
(956, '', 'Reality Life', '', 'lifeofreality009@gmail.com', '', '1687113747.jpeg', 2, 1, NULL, '', '', '', '2023-06-17 20:26:56', '2023-07-03 04:57:49'),
(957, '', 'ko ye', '', 'koye80471@gmail.com', '', '1687037268.png', 2, 1, NULL, '', '', '', '2023-06-17 21:27:48', '2023-07-03 04:57:49'),
(958, '', 'Brian Carlos', '', 'bcarloskbc0@gmail.com', '', '1687038738.png', 2, 1, NULL, '', '', '', '2023-06-17 21:52:18', '2023-07-03 04:57:49'),
(959, '', '4th View', '', 'bhnnetwork@gmail.com', '', '1687095442.png', 2, 1, NULL, '', '', '', '2023-06-18 13:37:22', '2023-07-03 04:57:49'),
(960, '', 'Preethi Preethi', '', 'preethi3raj@gmail.com', '', '1687107955.jpeg', 2, 1, NULL, '', '', '', '2023-06-18 17:05:53', '2023-07-03 04:57:49'),
(961, '', '', '+919774210583', '', '', '', 3, 1, NULL, '', '', '', '2023-06-19 03:31:35', '2023-07-03 04:57:49'),
(962, '', 'Brunz Morel', '', 'morelbrunz@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-19 15:52:13', '2023-07-03 04:57:49'),
(963, '', 'Reuel Ramos', '', 'reuelramos@gmail.com', '', '1687194955.png', 2, 1, NULL, '', '', '', '2023-06-19 17:15:55', '2023-07-03 04:57:49'),
(964, '', 'Gh Gju', '', 'ghgju870@gmail.com', '', '1687202154.png', 2, 1, NULL, '', '', '', '2023-06-19 19:15:54', '2023-07-03 04:57:49'),
(965, '', 'Roy', '1234432112', 'roy@dt.com', 'admin', '1687234949.jpg', 4, 1, NULL, '', '', '', '2023-06-20 04:12:57', '2023-07-03 04:57:49'),
(966, '', 'Great Seems', '', 'greatseems2021@gmail.com', '', '1687235520.png', 2, 1, NULL, '', '', '', '2023-06-20 04:32:00', '2023-07-03 04:57:49'),
(967, '', 'Roy', '1233211231', 'roy123@dt.com', 'admin', '1687269593.png', 4, 1, NULL, '', '', '', '2023-06-20 13:59:31', '2023-07-03 04:57:49'),
(968, '', 'jh gt', '', 'harryxs222@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-20 22:40:07', '2023-07-03 04:57:49'),
(969, '', 'Abdel AHMAD', '', 'abdel95.ah@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-21 00:08:20', '2023-07-03 04:57:49'),
(970, '', 'familia222', '', 'familiatv2079@gmail.com', '', '1687312996.png', 2, 1, NULL, '', '', '', '2023-06-21 02:03:16', '2023-07-03 04:57:49'),
(971, '', '', '+919537907763', '', '', '', 3, 1, NULL, '', '', '', '2023-06-21 05:02:32', '2023-07-03 04:57:49'),
(972, '', 'Akash Nishad', '+916306392645', 'akashnishad7054@gmail.com', '', '1687325635.jpeg', 2, 1, NULL, '', '', '', '2023-06-21 05:33:53', '2023-07-03 04:57:49'),
(973, '', 'Shekhar Kulshreshtha', '', 'toshekhar2023@gmail.com', '', '1687358132.png', 2, 1, NULL, '', '', '', '2023-06-21 14:35:32', '2023-07-03 04:57:49'),
(974, '', 'LustyFlix', '+8801316004558', 'lustyflix4@gmail.com', '', '1687371894.jpeg', 2, 1, NULL, '', '', '', '2023-06-21 18:24:51', '2023-07-03 04:57:49'),
(975, '', 'Andi Yusrandi Yusuf', '', 'andiyusrandiyusuf@gmail.com', '', '1687386552.png', 2, 1, NULL, '', '', '', '2023-06-21 22:29:12', '2023-07-03 04:57:49'),
(976, '', 'null', '', 'xnmpskpg2n@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-22 02:16:16', '2023-07-03 04:57:49'),
(977, '', 'Shishir Ahmed', '', 'shishirdevilzz@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-22 14:35:23', '2023-07-03 04:57:49'),
(978, '', 'Esdras Reis', '', 'esdras.ferreira999@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-22 20:58:33', '2023-07-03 04:57:49'),
(979, '', 'Tolga Darbe', '', 'darbetolga@gmail.com', '', '1687468118.jpeg', 2, 1, NULL, '', '', '', '2023-06-22 21:08:36', '2023-07-03 04:57:49'),
(980, '', 'israel mukeba', '', 'israelmukeba@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-23 01:24:31', '2023-07-03 04:57:49'),
(981, '', 'Faizan Gondal', '', 'fazigamingyt1@gmail.com', '', '1687488539.png', 2, 1, NULL, '', '', '', '2023-06-23 02:48:59', '2023-07-03 04:57:49'),
(982, '', 'Apg India', '', 'apgindia2021@gmail.com', '', '1687496098.png', 2, 1, NULL, '', '', '', '2023-06-23 04:54:58', '2023-07-03 04:57:49'),
(983, '', 'Jam TV GO', '', 'originaljamtv@gmail.com', '', '1687508032.png', 2, 1, NULL, '', '', '', '2023-06-23 08:13:52', '2023-07-03 04:57:49'),
(984, '', 'Rupali Singh', '', 'popcornadult@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-23 20:33:10', '2023-07-03 04:57:49'),
(985, '', 'Sachin Singh', '', 'sachin.tensingh23@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-24 18:12:36', '2023-07-03 04:57:49'),
(986, '', 'Akshay Bajpei', '', 'akshaybajpei92@gmail.com', '', '1687703476.png', 2, 1, NULL, '', '', '', '2023-06-25 14:31:16', '2023-07-03 04:57:49'),
(987, '', 'okonline', '', 'karanmartstore@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-25 17:30:23', '2023-07-03 04:57:49'),
(988, '', '', '+258871000049', '', '', '', 3, 1, NULL, '', '', '', '2023-06-26 02:02:56', '2023-07-03 04:57:49'),
(989, '', 'K JT', '', 'fm1jan002@gmail.com', '', '1687768246.png', 2, 1, NULL, '', '', '', '2023-06-26 08:30:46', '2023-07-03 04:57:49'),
(990, '', 'null', '', 'renaimo.blog@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-26 15:16:21', '2023-07-03 04:57:49'),
(991, '', 'Sorin Nicorici', '+400748841500', 'bestdjsorin@gmail.com', '', '1687811241.jpeg', 2, 1, NULL, '', '', '', '2023-06-26 20:27:18', '2023-07-03 04:57:49'),
(992, '', 'null', '', 'ashlinshaju1390@gmail.com', '', '', 2, 1, NULL, '', '', '', '2023-06-27 09:43:04', '2023-07-03 04:57:49'),
(993, '', 'Shaju’s LifeStyle', '', 'shajuslifestyle@gmail.com', '', '1687862695.png', 2, 1, NULL, '', '', '', '2023-06-27 10:44:55', '2023-07-03 04:57:49'),
(994, '', '', '+919048454055', '', '', '', 3, 1, NULL, '', '', '', '2023-06-28 13:15:33', '2023-07-03 04:57:49'),
(995, '', 'null', '', 'bx9bkbb2bb@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-06-29 14:49:53', '2023-07-03 04:57:49'),
(996, '', 'Deepesh Raj', '+917004920897', 'deepeshinfotech@gmail.com', '', '', 3, 1, NULL, '', '', '', '2023-06-29 22:49:09', '2023-07-03 04:57:49'),
(997, '', '', '+919064849699', '', '', '', 3, 1, NULL, '', '', '', '2023-06-30 20:07:19', '2023-07-03 04:57:49'),
(998, '', 'Rajiya shahin', '', 'shahinrajiya573@gmail.com', '', '1688155913.png', 2, 1, NULL, '', '', '', '2023-06-30 20:11:53', '2023-07-03 04:57:49'),
(999, '', 'tara bhai', '', 'rahu661997@gmail.com', '', '1688194934.jpeg', 2, 1, NULL, '', '', '', '2023-07-01 07:02:12', '2023-07-03 04:57:49'),
(1000, '', 'Joey Boli', '+233559190246', 'adoboligh1@gmail.com', '', '1688200646.jpeg', 2, 1, NULL, '', '', '', '2023-07-01 08:37:24', '2023-07-03 04:57:49'),
(1001, '', 'null', '', 'n4dmck6jn6@privaterelay.appleid.com', '', '', 2, 1, NULL, '', '', '', '2023-07-01 22:46:28', '2023-07-03 04:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `language_id` text NOT NULL,
  `cast_id` text NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL COMMENT '1- Video, 2- Show, 3- Category, 4-Language, 5- Upcoming',
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `landscape` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `is_premium` int(11) NOT NULL DEFAULT 0,
  `is_title` varchar(255) NOT NULL,
  `download` int(11) NOT NULL COMMENT 'Is_Download',
  `video_upload_type` varchar(255) DEFAULT 'server_video' COMMENT 'server_video, external, youtube, vimeo',
  `video_320` varchar(255) NOT NULL,
  `video_480` varchar(255) NOT NULL,
  `video_720` varchar(255) NOT NULL,
  `video_1080` varchar(255) NOT NULL,
  `video_extension` varchar(100) NOT NULL,
  `video_duration` int(11) NOT NULL DEFAULT 0,
  `trailer_type` varchar(255) NOT NULL COMMENT 'server_video, external, youtube	',
  `trailer_url` text NOT NULL,
  `subtitle_type` varchar(255) NOT NULL COMMENT 'server_video, external	',
  `subtitle_lang_1` varchar(255) NOT NULL,
  `subtitle_1` varchar(255) NOT NULL,
  `subtitle_lang_2` varchar(255) NOT NULL,
  `subtitle_2` varchar(255) NOT NULL,
  `subtitle_lang_3` varchar(255) NOT NULL,
  `subtitle_3` varchar(255) NOT NULL,
  `release_date` varchar(255) NOT NULL DEFAULT '',
  `release_year` varchar(255) NOT NULL,
  `imdb_rating` float NOT NULL,
  `view` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `director_id` text NOT NULL,
  `starring_id` text NOT NULL,
  `supporting_cast_id` text NOT NULL,
  `networks` text NOT NULL,
  `maturity_rating` text NOT NULL,
  `age_restriction` varchar(255) NOT NULL,
  `max_video_quality` varchar(255) NOT NULL,
  `release_tag` varchar(255) NOT NULL,
  `video_size` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `channel_id`, `category_id`, `language_id`, `cast_id`, `type_id`, `video_type`, `name`, `thumbnail`, `landscape`, `description`, `is_premium`, `is_title`, `download`, `video_upload_type`, `video_320`, `video_480`, `video_720`, `video_1080`, `video_extension`, `video_duration`, `trailer_type`, `trailer_url`, `subtitle_type`, `subtitle_lang_1`, `subtitle_1`, `subtitle_lang_2`, `subtitle_2`, `subtitle_lang_3`, `subtitle_3`, `release_date`, `release_year`, `imdb_rating`, `view`, `status`, `created_at`, `updated_at`, `director_id`, `starring_id`, `supporting_cast_id`, `networks`, `maturity_rating`, `age_restriction`, `max_video_quality`, `release_tag`, `video_size`) VALUES
(1, 23, '2,7', '1,3,4', '2,3,4', 1, 1, 'K.G.F: Chapter 2', '1675408549.jpg', 'land_1675408549.jpg', 'Presented by Ritesh Sidhwani, Farhan Akhtar and AA FIlms\r\nWritten and Directed by Prashanth Neel\r\nProduced by Vijay Kiragandur under the Banner \"Hombale Films\".\r\nStarring: Rocking Star Yash, Sanjay Dutt, Srinidhi Shetty, Raveena Tandon, Prakash Raj, Malvika Avinash, Achyuth Kumar, Ayyappa P. Sharma, Rao Ramesh, Eshwari Rao, Archana Jois, T. S. Nagabharana, Saran, Avinash, Lakki Lakshman, Vashishta Simha, Harish Rai, Dinesh Mangalore, Tarak, Ramachandra Raju, Vinay Bidappa, Ashok Sharma, Mohan Juneja, Govinda Gowda, John Kokken, Srinivas Murthy.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 177000, 'server_video', '', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 1000, '1', '2022-04-18 06:58:12', '2023-07-03 07:14:34', '', '', '', '', '', '', '', '', 0),
(2, 32, '1,2', '1', '60,61,62,64,65', 1, 1, 'R R R', '1675427670.jpg', 'land_1675427670.jpg', 'A fearless revolutionary and an officer in the British force, who once shared a deep bond, decide to join forces and chart out an inspirational path of freedom against the despotic rulers.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 68460000, 'youtube', 'https://www.youtube.com/watch?v=GY4BgdUSpbE', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 1000, '1', '2022-04-18 06:58:12', '2023-07-03 07:14:32', '', '', '', '', '', '', '', '', 0),
(3, 32, '7', '1', '46,47,48,49,50,51,52', 1, 1, 'The Kashmir Files', '1675408698.jpg', 'land_1675416823.jpg', '32 years later, the emotions & the pain remain the same. Witness the brutally honest story of the Kashmir Genocide. #TheKashmirFilesTrailer\r\n\r\nZee Studios presents The Kashmir Files, releasing in theatres on 11th March 2022. #RightToJustice\r\n\r\nDirected & Written by Vivek Ranjan Agnihotri \r\nProduced by Zee Studios \r\nProduced by Tej Narayan Agrawal, Abhishek Agarwal, Pallavi Joshi & Vivek Ranjan Agnihotri\r\nCo-produced by Jaya Prakash Rao Dhote,  Mayank Singhania\r\nMusic on: Zee Music Company', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 734000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.2, 1000, '1', '2022-04-18 06:58:12', '2023-07-03 07:14:31', '', '', '', '', '', '', '', '', 0),
(4, 13, '2', '1,3', '2', 1, 1, 'Birmingham 2022 Commonwealth Games', '1676090072.jpg', 'land_1676090072.jpg', 'The 2022 Commonwealth Games, officially known as the XXII Commonwealth Games and commonly known as Birmingham 2022, was an international multi-sport event for members of the Commonwealth of Nations that took place in Birmingham, England between 28 July and 8 August 2022.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 61000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.1, 1000, '1', '2022-04-18 06:58:12', '2023-07-03 07:14:30', '', '', '', '', '', '', '', '', 0),
(7, 21, '1,2,3,6', '4,7', '16', 1, 1, 'Rocketry: The Nambi Effect', '1675408921.jpeg', 'land_1675408921.jpeg', 'East Indian aerospace engineer Nambi Narayanan makes enemies due to his genius and obsession, and he faces charges of espionage.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 6.7, 0, '1', '2022-08-10 10:43:56', '2023-07-03 07:14:30', '', '', '', '', '', '', '', '', 0),
(8, 22, '1,2,3', '1,4,6', '5,17', 1, 1, 'Liger : Saala Crossbreed', '1675409017.jpg', 'land_1675409017.jpeg', 'Liger is an upcoming Indian sports action film written and directed by Puri Jagannadh. Shot simultaneously in Hindi and Telugu languages, the film is produced by Dharma Productions and Puri Connects', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.5, 0, '1', '2022-08-10 10:48:36', '2023-07-03 07:14:27', '', '', '', '', '', '', '', '', 0),
(9, 23, '2,7', '1,4,6', '1', 1, 1, 'Bell Bottom', '1675408728.jpg', 'land_1675408728.jpg', 'When a flight is hijacked by terrorists, Anshul, an undercover agent, sets out to rescue the passengers held hostage. However, he must overcome several challenges to be successful in his quest.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 180000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 2.8, 0, '1', '2022-08-10 12:30:15', '2023-07-03 07:14:26', '', '', '', '', '', '', '', '', 0),
(10, 4, '2', '1', '3', 2, 1, 'Ram Mandir', '1676089804.jpeg', 'land_1676089804.jpeg', 'Jay Shree Ram', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 516000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 3.8, 0, '1', '2022-08-10 12:34:10', '2023-07-03 07:14:25', '', '', '', '', '', '', '', '', 0),
(11, 18, '1,6', '6,9', '3', 5, 1, 'Doremon', '1665753420.png', 'land_1665753084.jpg', 'Image result for doremon Sharmee. Sharmee is a female cat that lived at a time when cats and dogs evolved into humans. Sharmee first appeared in Nobita\'s Wannyan Space-Time Odyssey and became Doraemon\'s girlfriend there. Although initially one-sided, Sharmee seems impressed by Doraemon\'s love for her.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 29000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 1.2, 0, '1', '2022-08-10 12:44:56', '2023-07-03 07:14:25', '', '', '', '', '', '', '', '', 0),
(12, 21, '1,2', '1,4,8,9', '27,28', 1, 1, 'Satyameva Jayate 2', '1675408954.jpeg', 'land_1675408954.jpeg', 'In a fight against corruption, several people take a mighty stand to put an end to the social evils and establish a law-abiding society.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 197000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.6, 0, '1', '2022-08-29 15:59:43', '2023-07-03 07:14:24', '', '', '', '', '', '', '', '', 0),
(13, 23, '1,2,3', '1,4,9', '17,18', 1, 1, 'Dear Comrade', '1675409128.jpg', 'land_1675409128.jpg', 'Bobby, a student union leader with anger issues, falls in love with Lilly, a state-level cricketer. However, his temperament poses an obstacle in his path to being united with Lily.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 180000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5.9, 0, '1', '2022-08-29 16:05:31', '2023-07-03 07:14:23', '', '', '', '', '', '', '', '', 0),
(14, 25, '3,6', '3,4,9', '3,6,20,29', 1, 1, '83', '1675409102.jpg', 'land_1675409102.jpeg', 'Cricketer Kapil Dev gets an opportunity to make his country famous on the world stage when he captains the Indian national cricket team at the 1983 Cricket World Cup. Cricketer Kapil Dev gets an opportunity to make his country famous on the world stage when he captains the Indian national cricket team at the 1983 Cricket World Cup.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 180000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8, 0, '1', '2022-08-29 16:21:51', '2023-07-03 07:14:22', '', '', '', '', '', '', '', '', 0),
(15, 23, '1,2,7', '1,3', '31', 1, 1, 'Loki', '1675498935.jpg', 'land_1675695187.jpg', 'Loki is an American television series created by Michael Waldron for the streaming service Disney+, based on Marvel Comics featuring the character of the same name. It is the third television series in the Marvel Cinematic Universe produced by Marvel Studios, sharing continuity with the films of the franchise.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 9.7, 0, '1', '2022-09-10 08:05:29', '2023-07-03 07:14:22', '', '', '', '', '', '', '', '', 0),
(16, 23, '1,2,3,6', '1,3,4,6,9', '1,6,29', 1, 1, 'Sooryavanshi', '1675499153.jpeg', 'land_1675499153.jpeg', 'With the looming threat of a terrorist attack on Mumbai, ATS chief Sooryavanshi embarks on a mission to hunt for 600 kgs of missing RDX and the conspiring perpetrators.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 240000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 3.6, 0, '1', '2022-09-10 08:13:21', '2023-07-03 07:14:20', '', '', '', '', '', '', '', '', 0),
(17, 23, '2', '1', '32,33,34,35,36,37,38,39', 1, 1, 'Anek', '1675409067.jpeg', 'land_1675409067.jpg', 'Anek (transl. Many) is a 2022 Indian Hindi-language action thriller film written and directed by Anubhav Sinha who also co-produced it with T-Series. The film revolves around a government police secret agent official (played by Khurrana), who is sent to the Northeast region of India to bring a peace deal between the government and the separatist groups in the North East, who also want to break away from India. It stars Ayushmann Khurrana, Andrea Kevichüsa, Manoj Pahwa, Kumud Mishra and J. D. Chakravarthy. Anek was released in worldwide cinemas on 27 May 2022 to generally mixed to positive response from the critics with praise for it\'s performances and themes but it received criticism for it\'s screenplay and denseness.\r\n\r\nA critic for The Times of India rated the film 4 out of 5 stars and wrote \"Anek, through its runtime, draws subtle parallels between the northeast and other parts of the country, in particular Jammu and Kashmir\". Tina Das of The Print rated the film 4 out of 5 stars and wrote \"Anek manages to showcase the complex layers of the insurgency in the Northeast, and it does that well\". Phuong Le of The Guardian rated the film 4 out of 5 stars and wrote \"Anek is a rare commercial film that spotlights Northeastern Indian stories, and goes out of its way to refuse to condemn guerrilla fighters as terrorists\". Devesh Sharma of Filmfare rated the film 3.5 out of 5 stars and wrote \"The political message packs a punch, its power is somewhat diminished by the execution and the writing, which is rusty in places\". Navneet Vyasan of News 18 rated the film 3 out of 5 stars and wrote \"If it wasn\'t for its cast, Anubhav Sinha\'s directorial \'Anek\' would\'ve been a test of your patience. Thankfully, it isn\'t\". Swati Chopra of The Quint rated the film 3 out of 5 stars and wrote \"Anek is preachy in parts, but the film has its heart in the right place and it could have done better if the film didn\'t feel rushed, leading to less clarity\". Fengyen Chiu of Mashable rated the film 3 out of 5 stars and wrote \"Anek tries very hard to bring forth the problems of North-east people in India but the message doesn\'t quite reach properly\".', 0, '1', 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 193000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 6.7, 0, '1', '2022-09-18 09:04:14', '2023-07-03 07:14:13', '', '', '', '', '', '', '', '', 0),
(18, 28, '7', '1,7', '2,3,7', 1, 1, 'Hanuman Chalisa', '1676090023.jpg', 'land_1676090023.jpg', 'Jai Bajrang Bali', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 256000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.4, 0, '1', '2022-09-21 08:30:50', '2023-07-03 07:14:12', '', '', '', '', '', '', '', '', 0),
(19, 22, '2,7', '1', '2,16,18,28,37', 1, 1, 'Attack : Part 1', '1675409048.jpeg', 'land_1675409048.jpg', 'Attack: Part 1 is a 2022 Indian Hindi-language science fiction action film directed by Lakshya Raj Anand, who co-wrote the film with Sumit Batheja and Vishal Kapoor, based on a story by John Abraham, who stars in the film alongside Jacqueline Fernandez and Rakul Preet Singh, with Prakash Raj and Ratna Pathak Shah in supporting roles.\r\n\r\nAttack was released on 1 April 2022 in cinemas. The film received mixed reviews from critics who praised the action sequences while criticizing the screenplay, eventually bombing at the box office.\r\n\r\nArjun Shergill is an Indian Army officer, who embarks on a mission to capture Rehman Gul, a dreaded terrorist, who attacked the Indian army convoy two days ago. A tense shootout between the soldiers and terrorists ensues where Arjun manages to arrest Rehman. while also saving a suicide bomber, who is actually Rehman\'s son Hamid Gul.\r\n\r\nWhile leaving for his hometown at the Mumbai Airport, Arjun meets an air hostess Ayesha and the two fall in love with each other. However, their happiness is short lived, when the airport is attacked by Hamid\'s men and several other including Ayesha is killed. Arjun gets injured in the fight, but recovers two weeks later and is bound in the wheel chair with only movement in his neck. Vadraj Kumar Subramaniam/V. K. Subramaniam, who is the Chief of Indian Intelligence and Arjun\'s superior officer, proposes the idea of introducing a supersoldier program to the PM, which is operated through AI to save lives in times of war from any collateral damage. The supersoldiers are programmed by DRDO scientist Sabah Qureshi, who has been modifing the program for 7 years and is on the verge of a major breakthrough.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.8, 0, '1', '2022-09-26 08:01:18', '2023-07-03 07:14:11', '', '', '', '', '', '', '', '', 0),
(20, 31, '2,7,8', '1,3', '23,36,40,41,42,43,44,45', 1, 1, 'Ek Villain Returns', '1675925065.jpeg', 'land_1675925065.jpg', 'Ek Villain Returns is a 2022 Indian Hindi-language action thriller film written and directed by Mohit Suri, being a spiritual successor to his 2014 film Ek Villain, and produced by T-Series and Balaji Motion Pictures. It stars John Abraham, Arjun Kapoor, Disha Patani and Tara Sutaria.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 163000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.9, 0, '1', '2022-09-26 08:08:53', '2023-07-03 07:14:10', '', '', '', '', '', '', '', '', 0),
(21, 31, '1,2', '1', '53,54,55,56,57,58', 1, 1, 'Shamshera', '1675926516.jpg', 'land_1675926516.jpg', 'In the city of Kaza, a slave fights tirelessly to free his deceitfully imprisoned warrior tribe from a ruthless general.', 0, '1', 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 179000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.5, 0, '1', '2022-09-26 14:05:35', '2023-07-03 07:14:09', '', '', '', '', '', '', '', '', 0),
(22, 21, '1,2,3,6', '7', '66,67,68,69,70', 1, 1, 'Naadi Dosh', '1675499095.jpg', 'land_1675499095.jpg', 'Riddhi and Kevin are head over heels in love with each other but their families do not want them to get married owing to an age-old belief.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 120000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.7, 0, '1', '2022-09-27 08:01:41', '2023-07-03 07:14:08', '', '', '', '', '', '', '', '', 0),
(23, 25, '1,6', '7', '71,72,73,74', 1, 1, 'ગજબ થઈ ગયો!', '1675408763.jpeg', 'land_1675408763.jpg', 'Presenting the official Trailer of \"Gajab Thai Gayo !\". કુતૂહલ માં જ હલ છે બધાં.  In cinemas near you on April 7th, 2022!\r\n\r\nA principal strives to sustain one of the last existing Gujarati-medium schools. Fortunately, a graduate from Princeton University offers to teach the school\'s students for free.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 153000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.8, 0, '1', '2022-09-29 15:31:34', '2023-07-03 07:14:07', '', '', '', '', '', '', '', '', 0),
(24, 31, '2,7', '1', '6,75,76,77,78,79', 1, 1, 'Runway 34', '1664454386.jpeg', 'land_1664454386.jpg', 'Upon dealing with the rough climate in Cochin, two pilots make a risky landing in Thiruvananthapuram. But trouble ensues when personnel from the AAIB probes the matter.\r\n\r\nAjay Devgn Ffilms presents Runway 34 produced & directed by Ajay Devgn, starring himself along with Amitabh Bachchan, Boman Irani, Rakul Preet Singh, Angira Dhar, Aakanksha Singh, with a cameo by CarryMinati.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 198000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 6.6, 0, '1', '2022-09-29 15:56:26', '2023-07-03 07:14:06', '', '', '', '', '', '', '', '', 0),
(25, 4, '15', '1', '84,85', 2, 1, 'आज की पॉपुलर न्यूज । AAJ KI POPULAR NEWS । Trending News। Viral News । AT2 LIVE । Aaj Tak LIVE ।', '1665062442.jpeg', 'land_1664457265.jpg', 'Marriyum Aurangzeb Insult l Pakistan Minister Maryam Aurangzeb l Indian Railways l Bullet Train l Atal Pension Yojna l Bank Holidays In Octtober l Jacqueline Fernandez l Brahmastra l Kashmir Files l NASA DART Mission l NASA l iPhone l Grand Vitara Launched l\r\n\r\nआजतक के साथ देखिये देश-विदेश की सभी महत्वपूर्ण और बड़ी खबरें | Watch the latest Hindi \r\nnews Live on the World\'s Most Subscribed News Channel on YouTube. \r\n#LatestNews #Aajtak #HindiNews\r\n\r\nAaj Tak News Channel: \r\nआज तक भारत का सर्वश्रेष्ठ हिंदी न्‍यूज चैनल है । आज तक न्‍यूज चैनल राजनीति, मनोरंजन, बॉलीवुड, व्यापार और खेल में नवीनतम समाचारों को शामिल करता है। आज तक न्‍यूज चैनल की लाइव खबरें एवं ब्रेकिंग न्यूज के लिए बने रहें ।', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5.4, 0, '1', '2022-09-29 16:44:25', '2023-07-03 07:14:02', '', '', '', '', '', '', '', '', 0),
(26, 13, '15', '3', '80,81,82', 3, 1, 'Kohli, Gayle take RCB upto 2nd spot with thumping win over KXIP', '1664459655.jpg', 'land_1664459655.jpg', 'A century from captain Virat Kohli led the way as RCB beat KXIP in a rain-marred encounter at Bengaluru', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 154000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.4, 0, '1', '2022-09-29 17:24:15', '2023-07-03 07:14:00', '', '', '', '', '', '', '', '', 0),
(27, 13, '17', '1,3,4', '80,81,82', 1, 1, 'ABD\'s Absolute Demolition Against Rajasthan Royals', '1675829134.jpg', 'land_1675829134.jpg', 'Catch ABD score 55* in a blink of an eye, taking Royal Challengers Bangalore over the finish line vs Rajasthan Royals.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 2820000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 2.2, 0, '1', '2022-09-29 17:38:56', '2023-07-03 07:13:59', '', '', '', '', '', '', '', '', 0),
(28, 13, '16,17', '3', '80,81,82', 3, 1, 'Ab de Villiers top 10 Best Sixes in Cricket Ever || Mr 360° of cricket', '1664460860.jpg', 'land_1664460860.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 151000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 3.3, 0, '1', '2022-09-29 17:44:20', '2023-07-03 07:13:58', '', '', '', '', '', '', '', '', 0),
(29, 20, '6', '1', '83', 5, 1, 'Tom & Jerry', '1675931600.jpg', 'land_1675931600.jpeg', 'Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera. Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the rivalry between the titular characters of a cat named Tom and a mouse named Jerry.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 145000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 2.8, 0, '1', '2022-09-30 09:20:16', '2023-07-03 07:13:57', '', '', '', '', '', '', '', '', 0),
(31, 13, '17', '1,3', '93', 3, 1, 'Commonwealth Games Weightlifting', '1665054548.', 'land_1665054548.jpg', 'Saikhom Mirabai Chanu is an Indian weightlifter. 27-year-old Mirabai Chanu lifted a total of 201 kg to win the Gold Medal which was also India\'s third medal after at the ongoing CWG 2022. She won the silver medal at the 2020 Tokyo Olympics in Women\'s 49 kg category', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 87000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 9.9, 0, '1', '2022-10-06 14:39:08', '2023-07-03 07:13:56', '', '', '', '', '', '', '', '', 0),
(32, 13, '17', '1,3,4,6', '94', 3, 1, 'GL vs RR Final 2022', '1665055361.jpg', 'land_1665055361.jpg', 'The 2022 Indian Premier League final was played on 29 May 2022 at the Narendra Modi Stadium in Ahmedabad. It was a Day/Night Twenty20 match, which decided the winner of the 2022 season of the Indian Premier League, an annual Twenty20 tournament in India.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 49000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.8, 0, '1', '2022-10-06 14:52:41', '2023-07-03 07:13:54', '', '', '', '', '', '', '', '', 0),
(33, 13, '17', '1,3,4,6,7,8,9,11', '81,94', 3, 1, 'RCB vs GL', '1665056582.jpg', 'land_1665056582.jpg', 'RCB vs GT, IPL 2022 Highlights: Kohli\'s 73 guides Royal Challengers Bangalore to eight-wicket win over Gujarat Titans', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 49000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 1.5, 0, '1', '2022-10-06 15:13:02', '2023-07-03 07:13:53', '', '', '', '', '', '', '', '', 0),
(34, 32, '6,10', '1,3', '98,99,100', 5, 1, 'Grizzy and The Lemmings', '1665058259.jpg', 'land_1665058259.jpg', 'Grizzy, a grizzly bear, takes over the forest ranger\'s house every time he leaves and considers it as his own. This changes when a tribe of lemmings also moves into the house.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 145000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 9.2, 0, '1', '2022-10-06 15:40:59', '2023-07-03 07:13:52', '', '', '', '', '', '', '', '', 0),
(35, 32, '1,6', '1,3', '1,99,100', 5, 1, 'Mighty Little Bheem', '1665059423.jpg', 'land_1665059423.jpg', 'An innocent toddler\'s boundless curiosity and extraordinary might lead to mischief and adventure in his small Indian town.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 78000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.8, 0, '1', '2022-10-06 16:00:23', '2023-07-03 07:13:49', '', '', '', '', '', '', '', '', 0),
(36, 32, '2,20,25', '3', '222,223,224,228,229,234,235,236,237', 5, 1, 'Transformers Prime Beast Hunters: Predacons Rising', '37_1679748347.jpg', 'land_1679748347.jpg', 'This movie chronicles the epic battle between the Autobots and the Decepticons in their mission to defend Earth against Unicron and one day restore their homeworld Cybertron.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 3900000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2013', 7.4, 0, '1', '2022-10-06 16:06:58', '2023-07-03 07:13:47', '', '', '', '', '', '', '', '', 0),
(37, 13, '1,17,22', '1', '238,239,240,241,242', 1, 1, 'Bhaag Milkha Bhaag', '24_1679748423.jpg', 'land_1679748423.jpg', 'The truth behind the ascension of Milkha Singh, who was scarred by of the India-Pakistan partition.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 11160000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2013', 8.2, 0, '1', '2022-10-06 16:10:01', '2023-07-03 07:13:45', '', '', '', '', '', '', '', '', 0),
(38, 13, '17', '1,3,8,9', '80,81,82', 1, 1, 'MI vs RCB - Head To Head', '1675926716.jpg', 'land_1675926716.jpg', 'Virat Kohli, Faf du Plessis (c), Rajat Patidar, Glenn Maxwell, Dinesh Karthik, Mahipal Lomror, Shahbaz Ahmed, Wanindu Hasaranga Harshal Patel/Akash Deep, Siddarth Kaul/Mohammed Siraj, Josh Hazlewood', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 50000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5.1, 0, '1', '2022-10-06 16:24:37', '2023-07-03 07:13:44', '', '', '', '', '', '', '', '', 0),
(39, 4, '15,16', '1,3', '84,85', 2, 1, 'You Fight for What You Think You Can Win. And You Fight Really Hard.’', '1665062712.jpg', 'land_1665061148.jpg', 'As many as three new insurgent candidates could join Los Angeles City Council this December. If they all win, they would be following the electoral path of Fourth District Councilmember Nithya Raman, who in 2020, during a summer of protests, rose to become the first challenger in 17 years to unseat a sitting city councilmember. Raman’s grassroots campaign aimed its fire at the city’s intractable housing and homelessness crisis. U.S. Sen. Bernie Sanders endorsed her, and Vogue covered her candidacy.\r\n\r\nA year and a half into her term, Raman is settling into the less glamorous business of legislating and delivering constituent services. She touts the decrease in unsheltered homeless people in her district, a shift that she acknowledges is only a beginning. She says she is sticking to her promise to question the “culture of unanimity” on the 15-person council. Recently, Raman, Councilmember Mike Bonin and Councilmember Marqueece Harris-Dawson were the only three to vote against a proposal to make sidewalks around public schools off limits to homeless encampments.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.7, 0, '1', '2022-10-06 16:29:08', '2023-07-03 07:13:42', '', '', '', '', '', '', '', '', 0),
(40, 4, '16', '3', '84,85', 2, 1, 'Los Angeles County Struggling to Shrink Black Infant Death Rate', '1665062353.jpg', 'land_1665061256.jpg', 'Early in 2018, the Los Angeles County Department of Public Health announced an ambitious health care goal for 2023: Cut the gap between Black and white infant mortality in L.A. County by 30%.\r\n\r\nFor decades, Black babies in L.A. County were dying at a significantly higher rate than white babies, primarily because they were born too early or too small.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.3, 0, '1', '2022-10-06 16:30:56', '2023-07-03 07:13:41', '', '', '', '', '', '', '', '', 0),
(41, 4, '15,16', '1,3', '9,45,69', 2, 1, 'Beyond the pandemic: The struggles of Chhattisgarh’s Adivasis', '1665062692.jpg', 'land_1665061366.jpeg', 'The challenges faced by the Adivasis are rooted in poor implementation of policies and laws, and continuous exploitation of their lands and livelihoods.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 6.8, 0, '1', '2022-10-06 16:32:46', '2023-07-03 07:13:39', '', '', '', '', '', '', '', '', 0),
(42, 4, '15', '1,3', '39,52,99', 2, 1, 'Rick Caruso Promises to End Pay to Play Politics But Is Silent About His Own Big Political Donations', '1665062325.jpg', 'land_1665061697.jpg', 'Los Angeles mayoral hopeful and billionaire developer Rick Caruso vows that if elected, he’ll clean up corruption and increase transparency at City Hall.\r\n\r\n“We need tougher laws around transparency and reporting that reform the way development is approved in Los Angeles,” Caruso says on his campaign website.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 9, 0, '1', '2022-10-06 16:38:17', '2023-07-03 07:13:33', '', '', '', '', '', '', '', '', 0),
(43, 4, '15,16,17', '1,3', '16,69,72', 2, 1, 'Medical Industry Donations Pour in for Texas AG Ken Paxton, Other Abortion Ban Supporters', '1665062313.jpg', 'land_1665061899.jpg', 'Texas Attorney General Ken Paxton is the top law enforcement officer and a zealous anti-abortion crusader in a state that has become ground zero in the right’s efforts to eliminate access to the procedure. Abortion bans, like the one in Texas, put women’s health at risk and are likely to increase maternal mortality, according to recent studies.\r\n\r\nYet Paxton and other anti-abortion elected officials continue to receive hundreds of thousands of dollars in health care industry campaign contributions through direct fundraising and through a political action committee that bundles contributions. Drug manufacturers, hospital groups and insurance companies are some of the largest donors to anti-abortion candidates for attorneys general via the Republican Attorneys General Association.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 8.1, 0, '1', '2022-10-06 16:41:39', '2023-07-03 07:13:31', '', '', '', '', '', '', '', '', 0),
(44, 4, '15', '1', '23,27,59,77', 2, 1, 'IAS Athar Aamir Khan Wedding: इन 3 \'शर्तों\' को मानकर महरीन काजी से शादी रचा रहे IAS अतहर आमिर!', '1665063015.jpg', 'land_1665063075.jpg', 'IAS अतहर और डॉ महरीन काजी की सगाई का एक वीडियो सामने आया है, जिसमें अतहर एक \'इंगेजमेंट कॉन्ट्रैक्ट\' पर साइन करते नजर आ रहे हैं. कपल की सगाई इसी साल जु...\r\nआईएएस अतहर आमिर खान (IAS Athar Aamir Khan) डॉक्टर महरीन काजी (Dr Mehreen Qazi) संग शादी के बंधन में बंधने जा रहे हैं. इस बीच IAS अतहर और महरीन काजी की...', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 162000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 6.4, 0, '1', '2022-10-06 17:00:15', '2023-07-03 07:13:32', '', '', '', '', '', '', '', '', 0),
(45, 17, '1,2,6', '1,3', '3', 5, 1, 'Chhota Bheem\'s Adventures in Singapore - The Journey Begins | छोटा भीम Full Episode #1 in Hindi', '1676093861.jpg', 'land_1676093861.jpeg', 'Bheem is an extremely brave, strong and intelligent young boy. He often manages to solve everyone\'s problems which endears him to the townspeople of Dholakpur.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 75000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.4, 0, '1', '2022-10-13 07:07:12', '2023-07-03 07:13:25', '', '', '', '', '', '', '', '', 0),
(46, 17, '1,2,6', '1,3', '98', 5, 1, 'Chhota Bheem', '1676093832.jpeg', 'land_1676093832.jpg', 'The series is set in the fictional kingdom of Dholakpur, somewhere in rural India. The series revolves around Bheem, sometimes referred to as Chhota Bheem (little Bheem) due to his young age, a boy who is strong and intelligent.Bheem\'s rival is Kalia, who is envious of Bheem\'s popularity. Kalia, along with his sidekicks, twin brothers Dholu and Bholu, always plot to embarrass and defeat Bheem, but never succeeds.\r\n\r\nMost of the initial stories revolved around Bheem and his friends Chutki, Raju and Jaggu\'s rivalry with Kalia and his friends Dholu and Bholu. However, as the series has progressed, this topic has been adopted as the subject less often, although Kalia is still just as eager to prove himself superior to Bheem. A large number of episodes, along with all the films, also focus on Bheem and his team solving various problems affecting the village, unravelling mysteries, fighting evils that seek to harm Dholakpur or its inhabitants, and on their antics, which often get them into trouble.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 75000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5.9, 0, '1', '2022-10-13 17:20:11', '2023-07-03 07:13:26', '', '', '', '', '', '', '', '', 0),
(47, 20, '1,2,6', '1,3', '83', 5, 1, 'Tom and Jerry: The Lost Dragon', '1676093788.jpg', 'land_1676093788.jpeg', 'Timothy Kevin Story is an African American film director. He is best known for Barbershop, the Fantastic Four and the Ride Along franchise. He has been nominated for two NAACP Image Awards for Outstanding Directing in a Feature Film/Television Movie in 2006 and 2013', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 110000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 7.1, 0, '1', '2022-10-14 16:38:48', '2023-07-03 07:13:20', '', '', '', '', '', '', '', '', 0),
(48, 20, '1,2,6', '1,3', '3', 5, 1, 'Doraemon', '1676093692.jpg', 'land_1676093692.png', 'Doraemon is a cute cat robot and fictional character in the Japanese manga and animated series of the same name created by Fujiko F. Fujio, the pen name of writing team Hiroshi Fujimoto and Motoo Abiko.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 36000000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.6, 0, '1', '2022-10-14 16:52:12', '2023-07-03 07:13:19', '', '', '', '', '', '', '', '', 0),
(49, 19, '1,2,3,6', '1,3', '3', 5, 1, 'Mickey Mouse', '1676093745.jpg', 'land_1676093745.jpg', 'Mickey Mouse is an animated cartoon character co-created in 1928 by Walt Disney and Ub Iwerks. The longtime mascot of The Walt Disney Company, Mickey is an anthropomorphic mouse who typically wears red shorts, large yellow shoes, and white gloves.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 60000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5, 0, '1', '2022-10-15 07:07:30', '2023-07-03 07:13:18', '', '', '', '', '', '', '', '', 0),
(50, 19, '1,2,3,6', '1,3', '3,52', 5, 1, 'Mickey Mouse  New York Part 2', '1675829494.jpg', 'land_1675829494.jpg', 'Mickey and Donald try to buy lunch from a beachside snack shack but are turned down because of the classic, \"no shirt, no shoes, no service\" rule.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 79000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.8, 0, '1', '2022-10-15 07:15:35', '2023-07-03 07:13:16', '', '', '', '', '', '', '', '', 0),
(51, 30, '19', '1', '1,2', 7, 1, 'Testing', '1675482874.jpg', 'land_1675482874.jpeg', 'Testing............', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 1800000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 9.5, 0, '1', '2022-10-15 10:56:04', '2023-07-03 07:13:14', '', '', '', '', '', '', '', '', 0),
(53, 33, '17', '3', '106', 7, 1, 'Testing Title', '1675482554.jpg', 'land_1675482554.jpg', 'Describe your video here..............', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 8220000, '', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 4.8, 0, '1', '2022-10-15 12:09:47', '2023-07-03 07:13:11', '', '', '', '', '', '', '', '', 0),
(54, 33, '12', '1,3,9', '106,107', 7, 1, 'Testing Short Video', '1685448964.png', 'land_1685448964.png', 'This is video test description.', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 1800000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 0, '1', '2022-10-29 11:45:37', '2023-07-03 07:13:00', '', '', '', '', '', '', '', '', 0),
(56, 23, '2,19', '1', '1,108,109,110,111,246', 1, 1, 'Ram Setu', '11_1685448364.jpg', 'land_1685448364.jpg', 'An atheist archaeologist turned believer must race against time to prove the true existence of the legendary Ram Setu before evil forces destroy the pillar of India\'s heritage.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', '', 8400000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '2022', 5.2, 0, '1', '2023-01-20 17:35:16', '2023-07-03 07:13:08', '', '', '', '', '', '', '', '', 0),
(58, 32, '1,2', '3', '144,145,146,147,148,149,150', 1, 1, 'Top Gun: Maverick', '55_1677314517.jpg', 'land_1677320647.jpg', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates on a mission that demands the ultimate sacrifice from those chosen to ...', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 2163000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 0, '1', '2023-02-13 17:53:20', '2023-07-03 07:13:07', '', '', '', '', '', '', '', '', 0),
(60, 0, '2', '8', '1,23,54', 1, 1, 'Daag the Fire 3', '1677314818.jpg', 'land_1677314818.jpg', 'The Daag the fire 3 movie', 0, '1', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', '', 5722000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 0, '1', '2023-02-25 14:16:58', '2023-07-03 07:13:06', '', '', '', '', '', '', '', '', 0),
(66, 32, '2,9,12', '10', '186,187,188,189,190', 1, 1, 'Christopher', '14_1678541553.jpg', 'land_1678541553.jpg', 'A maverick, vigilante cop who is forced to misbehave the limits of law when the system fails. It weaves across past and present whilesolving the motives and moral bruises that shape his actions.', 0, '0', 1, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', '', 887000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 0, '1', '2023-03-11 19:02:33', '2023-07-03 07:12:57', '', '', '', '', '', '', '', '', 0),
(67, 31, '12,24', '1', '216,217,218,219,220,221', 1, 1, 'Kahaani 2', '13_1685446182.jpg', 'land_1685446182.jpg', 'A pregnant woman\'s search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', '', 7320000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', 'HarGharTiranga.srt', '', '', '', '', '', '', 0, 0, '1', '2023-03-14 13:54:48', '2023-07-03 07:12:55', '', '', '', '', '', '', '', '', 0),
(68, 0, '1,2,23', '1', '6,54,133,243,244,245', 1, 1, 'Bhuj: The Pride of India', '78_1685448251.jpg', 'land_1685455298.jpeg', 'During the Indo-Pakistani War of 1971, the Bhuj airbase is attacked and a race against time begins to rebuild the damaged airstrip.', 0, '0', 0, 'server_video', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'HarGharTiranga.mp4', 'mp4', 6780000, 'server_video', 'http://demo.divinetechs.com/apps/dtlive/public/images/video/HarGharTiranga.mp4', 'server_video', '', '', '', '', '', '', '', '', 0, 0, '1', '2023-05-30 15:34:12', '2023-07-03 06:33:13', '', '', '', '', '', '', '', '', 0),
(69, 4, '1', '1', '1', 1, 1, 'SK Television', '1687870888.jpeg', 'land_1687870888.jpeg', 'SK TEle', 0, '0', 0, 'external', 'http://account14.livebox.co.in/SKTELEVISIONhls/live.m3u8', '', '', '', 'm3u8', 60000, 'server_video', '', 'server_video', '', '', '', '', '', '', '', '', 0, 0, '1', '2023-06-27 16:31:28', '2023-07-03 07:12:03', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_watch`
--

CREATE TABLE `video_watch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT 'FK = Type Table',
  `video_type` int(11) NOT NULL DEFAULT 1 COMMENT '1- Video, 2- Show, 3- Language, 4- Category , 5- Upcoming',
  `stop_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `video_watch`
--

INSERT INTO `video_watch` (`id`, `user_id`, `video_id`, `type_id`, `video_type`, `stop_time`, `status`, `created_at`, `updated_at`) VALUES
(13, 4, 2, 2, 2, '6078', 1, '2022-05-26 14:07:26', '2023-07-03 04:57:49'),
(17, 7, 1, 1, 1, '5894', 1, '2022-07-25 06:05:22', '2023-07-03 04:57:49'),
(19, 35, 7, 1, 1, '48960', 1, '2022-08-14 04:27:13', '2023-07-03 04:57:49'),
(20, 39, 7, 1, 1, '45889', 1, '2022-08-29 05:05:28', '2023-07-03 04:57:49'),
(21, 41, 8, 1, 1, '38470', 1, '2022-08-29 05:09:53', '2023-07-03 04:57:49'),
(24, 4, 34, 1, 1, '5:35', 1, '2022-09-06 05:24:20', '2023-07-03 04:57:49'),
(26, 50, 1, 1, 1, '53550', 1, '2022-09-06 05:25:20', '2023-07-03 04:57:49'),
(29, 4, 6, 1, 1, '2950', 1, '2022-09-08 10:22:45', '2023-07-03 04:57:49'),
(31, 69, 1, 1, 1, '6891', 1, '2022-09-08 11:30:02', '2023-07-03 04:57:49'),
(36, 32, 5, 1, 1, '5891', 1, '2022-09-09 09:57:31', '2023-07-03 04:57:49'),
(48, 71, 7, 0, 1, '34822', 1, '2022-09-16 05:01:18', '2023-07-03 04:57:49'),
(58, 32, 51, 0, 1, '19167', 1, '2022-09-21 06:37:52', '2023-07-03 04:57:49'),
(63, 1, 9, 0, 2, '5000', 1, '2022-09-21 11:52:11', '2023-07-03 04:57:49'),
(64, 71, 11, 0, 2, '12345', 1, '2022-09-21 14:32:35', '2023-07-03 04:57:49'),
(65, 1, 20, 0, 2, '5000', 1, '2022-09-22 04:07:54', '2023-07-03 04:57:49'),
(70, 32, 18, 0, 2, '333539', 1, '2022-09-24 15:44:27', '2023-07-03 04:57:49'),
(74, 4, 20, 0, 2, '89015', 1, '2022-09-25 03:02:10', '2023-07-03 04:57:49'),
(75, 4, 18, 0, 2, '313894', 1, '2022-09-26 09:07:32', '2023-07-03 04:57:49'),
(77, 4, 21, 0, 2, '12345', 1, '2022-09-26 13:15:39', '2023-07-03 04:57:49'),
(80, 87, 17, 0, 1, '83983', 1, '2022-09-28 10:20:01', '2023-07-03 04:57:49'),
(81, 88, 7, 0, 1, '83523', 1, '2022-09-28 11:09:10', '2023-07-03 04:57:49'),
(82, 4, 23, 0, 1, '76441', 1, '2022-09-29 12:05:55', '2023-07-03 04:57:49'),
(83, 4, 8, 0, 1, '16650', 1, '2022-09-29 12:10:19', '2023-07-03 04:57:49'),
(84, 4, 26, 0, 1, '30426', 1, '2022-09-29 13:57:50', '2023-07-03 04:57:49'),
(85, 4, 6, 0, 2, '1917', 1, '2022-09-30 09:25:23', '2023-07-03 04:57:49'),
(87, 4, 15, 0, 1, '2954', 1, '2022-10-05 05:50:26', '2023-07-03 04:57:49'),
(88, 4, 7, 0, 2, '6779', 1, '2022-10-05 06:06:41', '2023-07-03 04:57:49'),
(90, 99, 18, 0, 2, '214403', 1, '2022-10-09 10:41:44', '2023-07-03 04:57:49'),
(91, 32, 14, 0, 1, '150192', 1, '2022-10-09 10:42:53', '2023-07-03 04:57:49'),
(92, 100, 37, 0, 1, '2760', 1, '2022-10-12 10:48:24', '2023-07-03 04:57:49'),
(93, 100, 13, 0, 1, '5882', 1, '2022-10-12 10:58:17', '2023-07-03 04:57:49'),
(96, 118, 1, 0, 1, '9311', 1, '2022-10-15 10:29:57', '2023-07-03 04:57:49'),
(97, 118, 21, 0, 1, '83568', 1, '2022-10-15 10:52:32', '2023-07-03 04:57:49'),
(98, 32, 21, 0, 1, '135713', 1, '2022-10-17 09:25:44', '2023-07-03 04:57:49'),
(99, 32, 53, 0, 1, '4419', 1, '2022-10-19 10:11:47', '2023-07-03 04:57:49'),
(100, 32, 13, 0, 1, '107400', 1, '2022-10-24 11:42:58', '2023-07-03 04:57:49'),
(101, 32, 12, 0, 1, '186667', 1, '2022-10-24 11:43:55', '2023-07-03 04:57:49'),
(102, 100, 17, 0, 1, '3138', 1, '2022-10-27 17:57:53', '2023-07-03 04:57:49'),
(103, 32, 54, 0, 1, '1732', 1, '2022-10-31 16:22:06', '2023-07-03 04:57:49'),
(104, 123, 17, 0, 1, '26680', 1, '2022-11-07 06:16:08', '2023-07-03 04:57:49'),
(105, 129, 17, 0, 1, '6289', 1, '2022-11-08 13:08:20', '2023-07-03 04:57:49'),
(106, 129, 13, 0, 1, '15918', 1, '2022-11-08 13:20:24', '2023-07-03 04:57:49'),
(107, 130, 17, 0, 1, '14332', 1, '2022-11-09 19:13:50', '2023-07-03 04:57:49'),
(108, 131, 10, 0, 1, '22492', 1, '2022-11-09 19:28:44', '2023-07-03 04:57:49'),
(109, 132, 17, 0, 1, '111396', 1, '2022-11-09 21:12:22', '2023-07-03 04:57:49'),
(111, 136, 24, 0, 1, '45636', 1, '2022-11-10 04:46:25', '2023-07-03 04:57:49'),
(112, 136, 28, 0, 2, '19851', 1, '2022-11-10 04:48:01', '2023-07-03 04:57:49'),
(113, 137, 12, 0, 1, '20576', 1, '2022-11-10 04:53:03', '2023-07-03 04:57:49'),
(114, 138, 10, 0, 1, '17507', 1, '2022-11-10 06:48:57', '2023-07-03 04:57:49'),
(116, 141, 39, 0, 1, '33420', 1, '2022-11-10 11:17:55', '2023-07-03 04:57:49'),
(117, 141, 13, 0, 1, '25272', 1, '2022-11-10 11:32:45', '2023-07-03 04:57:49'),
(118, 142, 18, 0, 2, '68773', 1, '2022-11-10 11:40:46', '2023-07-03 04:57:49'),
(120, 141, 17, 0, 1, '4971', 1, '2022-11-10 12:02:34', '2023-07-03 04:57:49'),
(121, 131, 40, 0, 1, '121172', 1, '2022-11-10 19:14:50', '2023-07-03 04:57:49'),
(122, 131, 28, 0, 2, '12564', 1, '2022-11-10 19:16:18', '2023-07-03 04:57:49'),
(123, 147, 38, 0, 1, '28815', 1, '2022-11-10 21:55:32', '2023-07-03 04:57:49'),
(124, 147, 24, 0, 1, '34049', 1, '2022-11-11 01:05:10', '2023-07-03 04:57:49'),
(125, 147, 51, 0, 1, '3876', 1, '2022-11-11 01:10:32', '2023-07-03 04:57:49'),
(126, 147, 17, 0, 1, '3278', 1, '2022-11-11 01:12:13', '2023-07-03 04:57:49'),
(127, 151, 24, 0, 1, '8394', 1, '2022-11-11 10:15:00', '2023-07-03 04:57:49'),
(128, 153, 38, 0, 1, '38996', 1, '2022-11-11 12:25:23', '2023-07-03 04:57:49'),
(129, 155, 17, 0, 1, '108694', 1, '2022-11-11 12:45:25', '2023-07-03 04:57:49'),
(130, 155, 39, 0, 1, '8878', 1, '2022-11-11 12:46:18', '2023-07-03 04:57:49'),
(131, 154, 9, 0, 1, '39537', 1, '2022-11-11 12:49:53', '2023-07-03 04:57:49'),
(132, 156, 11, 0, 1, '6572', 1, '2022-11-11 13:41:02', '2023-07-03 04:57:49'),
(133, 156, 9, 0, 1, '158720', 1, '2022-11-11 13:42:50', '2023-07-03 04:57:49'),
(134, 156, 13, 0, 1, '45174', 1, '2022-11-11 13:44:06', '2023-07-03 04:57:49'),
(135, 159, 12, 0, 1, '5228', 1, '2022-11-11 21:45:52', '2023-07-03 04:57:49'),
(136, 159, 1, 0, 1, '9560', 1, '2022-11-11 21:47:07', '2023-07-03 04:57:49'),
(137, 160, 9, 0, 1, '21003', 1, '2022-11-12 01:32:32', '2023-07-03 04:57:49'),
(138, 161, 29, 0, 1, '31711', 1, '2022-11-12 05:58:07', '2023-07-03 04:57:49'),
(139, 131, 11, 0, 1, '14469', 1, '2022-11-12 10:29:27', '2023-07-03 04:57:49'),
(140, 131, 1, 0, 1, '33459', 1, '2022-11-12 10:31:00', '2023-07-03 04:57:49'),
(141, 163, 1, 0, 1, '146508', 1, '2022-11-12 14:51:53', '2023-07-03 04:57:49'),
(142, 163, 25, 0, 1, '32941', 1, '2022-11-12 15:05:05', '2023-07-03 04:57:49'),
(143, 163, 24, 0, 1, '152838', 1, '2022-11-12 15:27:36', '2023-07-03 04:57:49'),
(145, 163, 29, 0, 1, '208', 1, '2022-11-12 15:30:42', '2023-07-03 04:57:49'),
(146, 164, 25, 0, 1, '1452', 1, '2022-11-12 16:56:08', '2023-07-03 04:57:49'),
(147, 167, 17, 0, 1, '89297', 1, '2022-11-13 03:20:39', '2023-07-03 04:57:49'),
(148, 168, 17, 0, 1, '35595', 1, '2022-11-13 05:25:04', '2023-07-03 04:57:49'),
(150, 170, 29, 0, 1, '23044', 1, '2022-11-13 15:03:19', '2023-07-03 04:57:49'),
(151, 171, 28, 0, 2, '64560', 1, '2022-11-13 16:57:17', '2023-07-03 04:57:49'),
(152, 174, 17, 0, 1, '16219', 1, '2022-11-14 00:04:55', '2023-07-03 04:57:49'),
(153, 175, 1, 0, 1, '18099', 1, '2022-11-14 00:17:23', '2023-07-03 04:57:49'),
(154, 176, 25, 0, 1, '20116', 1, '2022-11-14 00:23:29', '2023-07-03 04:57:49'),
(155, 142, 24, 0, 1, '192683', 1, '2022-11-14 03:39:34', '2023-07-03 04:57:49'),
(156, 172, 38, 0, 1, '18114', 1, '2022-11-14 08:53:15', '2023-07-03 04:57:49'),
(157, 152, 15, 0, 1, '31410', 1, '2022-11-14 12:55:59', '2023-07-03 04:57:49'),
(158, 152, 21, 0, 1, '90000', 1, '2022-11-14 13:00:47', '2023-07-03 04:57:49'),
(159, 177, 17, 0, 1, '6937', 1, '2022-11-14 13:14:43', '2023-07-03 04:57:49'),
(160, 178, 29, 0, 1, '34609', 1, '2022-11-14 13:50:32', '2023-07-03 04:57:49'),
(161, 180, 18, 0, 2, '8906', 1, '2022-11-14 19:05:08', '2023-07-03 04:57:49'),
(162, 181, 24, 0, 1, '110810', 1, '2022-11-14 19:23:47', '2023-07-03 04:57:49'),
(163, 149, 17, 0, 1, '56424', 1, '2022-11-15 00:24:57', '2023-07-03 04:57:49'),
(164, 149, 24, 0, 1, '42420', 1, '2022-11-15 00:42:00', '2023-07-03 04:57:49'),
(165, 186, 17, 0, 1, '29841', 1, '2022-11-15 20:58:21', '2023-07-03 04:57:49'),
(166, 187, 11, 0, 1, '27885', 1, '2022-11-16 01:21:53', '2023-07-03 04:57:49'),
(167, 187, 25, 0, 1, '7170', 1, '2022-11-16 01:22:20', '2023-07-03 04:57:49'),
(168, 187, 17, 0, 1, '11048', 1, '2022-11-16 01:24:41', '2023-07-03 04:57:49'),
(169, 188, 13, 0, 1, '40521', 1, '2022-11-16 04:21:44', '2023-07-03 04:57:49'),
(170, 188, 1, 0, 1, '37581', 1, '2022-11-16 04:22:14', '2023-07-03 04:57:49'),
(171, 189, 24, 0, 1, '45979', 1, '2022-11-16 06:11:51', '2023-07-03 04:57:49'),
(172, 189, 10, 0, 1, '5782', 1, '2022-11-16 06:12:21', '2023-07-03 04:57:49'),
(173, 189, 17, 0, 1, '24940', 1, '2022-11-16 06:13:01', '2023-07-03 04:57:49'),
(174, 136, 29, 0, 1, '28447', 1, '2022-11-16 06:57:23', '2023-07-03 04:57:49'),
(175, 192, 1, 0, 1, '156637', 1, '2022-11-16 20:16:31', '2023-07-03 04:57:49'),
(176, 131, 17, 0, 1, '15157', 1, '2022-11-17 14:51:26', '2023-07-03 04:57:49'),
(177, 131, 38, 0, 1, '30281', 1, '2022-11-17 14:52:37', '2023-07-03 04:57:49'),
(179, 194, 17, 0, 1, '171453', 1, '2022-11-17 23:54:41', '2023-07-03 04:57:49'),
(180, 195, 13, 0, 1, '36909', 1, '2022-11-18 02:16:34', '2023-07-03 04:57:49'),
(181, 194, 1, 0, 1, '86169', 1, '2022-11-18 06:53:18', '2023-07-03 04:57:49'),
(183, 194, 10, 0, 1, '1904', 1, '2022-11-18 06:55:01', '2023-07-03 04:57:49'),
(184, 194, 25, 0, 1, '4907', 1, '2022-11-18 06:55:21', '2023-07-03 04:57:49'),
(185, 194, 37, 0, 1, '6922', 1, '2022-11-18 06:56:22', '2023-07-03 04:57:49'),
(187, 195, 29, 0, 1, '2761', 1, '2022-11-19 16:27:26', '2023-07-03 04:57:49'),
(188, 197, 25, 0, 1, '86949', 1, '2022-11-19 18:05:57', '2023-07-03 04:57:49'),
(189, 197, 38, 0, 1, '22755', 1, '2022-11-19 18:06:44', '2023-07-03 04:57:49'),
(190, 198, 24, 0, 1, '95056', 1, '2022-11-19 21:34:07', '2023-07-03 04:57:49'),
(191, 198, 38, 0, 1, '23567', 1, '2022-11-19 21:36:21', '2023-07-03 04:57:49'),
(192, 200, 1, 0, 1, '35757', 1, '2022-11-20 10:34:23', '2023-07-03 04:57:49'),
(193, 200, 29, 0, 2, '11747', 1, '2022-11-20 10:40:47', '2023-07-03 04:57:49'),
(195, 204, 17, 0, 1, '35690', 1, '2022-11-21 09:13:45', '2023-07-03 04:57:49'),
(196, 204, 11, 0, 1, '15050', 1, '2022-11-21 09:14:56', '2023-07-03 04:57:49'),
(197, 205, 17, 0, 1, '8004', 1, '2022-11-21 09:41:59', '2023-07-03 04:57:49'),
(198, 205, 29, 0, 1, '67471', 1, '2022-11-21 09:42:44', '2023-07-03 04:57:49'),
(199, 206, 17, 0, 1, '14894', 1, '2022-11-21 12:41:39', '2023-07-03 04:57:49'),
(200, 207, 17, 0, 1, '151167', 1, '2022-11-21 21:30:47', '2023-07-03 04:57:49'),
(201, 208, 17, 0, 1, '85760', 1, '2022-11-22 00:36:23', '2023-07-03 04:57:49'),
(202, 208, 24, 0, 1, '20980', 1, '2022-11-22 00:45:05', '2023-07-03 04:57:49'),
(203, 133, 13, 0, 1, '27941', 1, '2022-11-23 01:03:40', '2023-07-03 04:57:49'),
(204, 123, 50, 0, 1, '38062', 1, '2023-02-08 12:03:12', '2023-07-03 04:57:49'),
(205, 118, 14, 0, 1, '9217', 1, '2023-02-08 21:07:54', '2023-07-03 04:57:49'),
(206, 212, 20, 0, 1, '39026', 1, '2023-02-09 12:27:43', '2023-07-03 04:57:49'),
(207, 212, 15, 0, 1, '5000', 1, '2023-02-09 14:52:59', '2023-07-03 04:57:49'),
(208, 212, 5, 0, 2, '50000', 1, '2023-02-09 14:55:20', '2023-07-03 04:57:49'),
(209, 123, 2, 0, 2, '30986', 0, '2023-02-10 19:04:12', '2023-07-03 04:57:49'),
(210, 123, 21, 0, 1, '22018', 1, '2023-02-11 12:20:38', '2023-07-03 04:57:49'),
(211, 123, 28, 0, 2, '26181', 1, '2023-02-11 15:52:06', '2023-07-03 04:57:49'),
(212, 212, 3, 0, 1, '128488', 1, '2023-02-11 17:53:13', '2023-07-03 04:57:49'),
(213, 123, 5, 0, 2, '2810', 1, '2023-02-13 16:26:10', '2023-07-03 04:57:49'),
(214, 123, 3, 0, 2, '39694', 1, '2023-02-13 16:26:58', '2023-07-03 04:57:49'),
(216, 123, 1, 0, 1, '16364', 0, '2023-02-13 17:32:19', '2023-07-03 04:57:49'),
(217, 123, 23, 0, 1, '36377', 1, '2023-02-25 12:02:47', '2023-07-03 04:57:49'),
(218, 123, 58, 0, 1, '143757', 1, '2023-02-27 14:37:48', '2023-07-03 04:57:49'),
(219, 217, 58, 0, 1, '986527', 1, '2023-02-28 17:55:59', '2023-07-03 04:57:49'),
(220, 217, 23, 0, 1, '30619', 1, '2023-03-05 12:43:29', '2023-07-03 04:57:49'),
(221, 217, 17, 0, 1, '61557', 1, '2023-03-10 19:18:17', '2023-07-03 04:57:49'),
(222, 217, 66, 0, 1, '153856', 1, '2023-03-11 19:05:39', '2023-07-03 04:57:49'),
(223, 122, 67, 0, 1, '31027', 1, '2023-03-16 14:58:30', '2023-07-03 04:57:49'),
(224, 221, 66, 0, 1, '490568', 1, '2023-03-16 15:14:08', '2023-07-03 04:57:49'),
(225, 32, 66, 0, 1, '662474', 1, '2023-03-17 11:30:03', '2023-07-03 04:57:49'),
(226, 221, 5, 0, 2, '31122', 1, '2023-03-18 21:12:44', '2023-07-03 04:57:49'),
(227, 267, 66, 0, 1, '351627', 1, '2023-03-25 15:28:47', '2023-07-03 04:57:49'),
(228, 470, 66, 0, 1, '293723', 1, '2023-03-25 16:11:20', '2023-07-03 04:57:49'),
(229, 122, 20, 0, 1, '143682', 1, '2023-03-25 16:24:19', '2023-07-03 04:57:49'),
(230, 340, 29, 0, 1, '15969', 1, '2023-03-25 23:29:42', '2023-07-03 04:57:49'),
(231, 340, 25, 0, 1, '6012', 1, '2023-03-25 23:32:25', '2023-07-03 04:57:49'),
(232, 340, 40, 0, 1, '3864', 1, '2023-03-25 23:32:47', '2023-07-03 04:57:49'),
(233, 576, 66, 0, 1, '3675', 1, '2023-03-26 04:34:43', '2023-07-03 04:57:49'),
(234, 576, 40, 0, 1, '5376', 1, '2023-03-26 04:35:36', '2023-07-03 04:57:49'),
(235, 576, 38, 0, 1, '3588', 1, '2023-03-26 04:35:51', '2023-07-03 04:57:49'),
(236, 576, 18, 0, 2, '3311', 1, '2023-03-26 04:37:37', '2023-07-03 04:57:49'),
(237, 420, 38, 0, 1, '16415', 1, '2023-03-26 11:49:05', '2023-07-03 04:57:49'),
(238, 582, 67, 0, 1, '34020', 1, '2023-03-26 16:32:16', '2023-07-03 04:57:49'),
(239, 584, 67, 0, 1, '6790', 1, '2023-03-26 23:34:45', '2023-07-03 04:57:49'),
(240, 582, 3, 0, 1, '23970', 1, '2023-03-26 23:40:05', '2023-07-03 04:57:49'),
(241, 582, 20, 0, 1, '78496', 1, '2023-03-26 23:45:52', '2023-07-03 04:57:49'),
(242, 582, 24, 0, 1, '7879', 1, '2023-03-27 00:13:26', '2023-07-03 04:57:49'),
(243, 582, 40, 0, 1, '39204', 1, '2023-03-27 00:31:19', '2023-07-03 04:57:49'),
(244, 582, 29, 0, 1, '3576', 1, '2023-03-27 00:34:47', '2023-07-03 04:57:49'),
(245, 585, 67, 0, 1, '189783', 1, '2023-03-27 02:39:57', '2023-07-03 04:57:49'),
(246, 298, 2, 0, 1, '68125', 1, '2023-03-27 06:19:10', '2023-07-03 04:57:49'),
(247, 290, 20, 0, 1, '27204', 1, '2023-03-27 07:38:13', '2023-07-03 04:57:49'),
(248, 587, 40, 0, 1, '83682', 1, '2023-03-27 09:08:07', '2023-07-03 04:57:49'),
(249, 340, 7, 0, 1, '37140', 1, '2023-03-27 09:11:17', '2023-07-03 04:57:49'),
(250, 589, 67, 0, 1, '13655', 1, '2023-03-27 10:33:58', '2023-07-03 04:57:49'),
(251, 590, 67, 0, 1, '43524', 1, '2023-03-27 11:30:36', '2023-07-03 04:57:49'),
(252, 579, 66, 0, 1, '8127', 1, '2023-03-27 13:04:29', '2023-07-03 04:57:49'),
(253, 579, 12, 0, 1, '17149', 1, '2023-03-27 13:04:58', '2023-07-03 04:57:49'),
(254, 591, 38, 0, 1, '15966', 1, '2023-03-27 16:43:43', '2023-07-03 04:57:49'),
(255, 591, 24, 0, 1, '7099', 1, '2023-03-27 16:46:30', '2023-07-03 04:57:49'),
(256, 592, 40, 0, 1, '14929', 1, '2023-03-28 06:03:14', '2023-07-03 04:57:49'),
(257, 592, 38, 0, 1, '13682', 1, '2023-03-28 06:03:46', '2023-07-03 04:57:49'),
(258, 593, 67, 0, 1, '69114', 1, '2023-03-28 06:13:51', '2023-07-03 04:57:49'),
(259, 594, 40, 0, 1, '6934', 1, '2023-03-28 13:07:05', '2023-07-03 04:57:49'),
(260, 594, 20, 0, 1, '3813', 1, '2023-03-28 13:07:39', '2023-07-03 04:57:49'),
(261, 598, 2, 0, 1, '121853', 1, '2023-03-29 08:27:26', '2023-07-03 04:57:49'),
(262, 601, 67, 0, 1, '99059', 1, '2023-03-29 12:44:18', '2023-07-03 04:57:49'),
(263, 599, 18, 0, 2, '12712', 1, '2023-03-29 15:52:26', '2023-07-03 04:57:49'),
(264, 590, 38, 0, 1, '68110', 1, '2023-03-29 17:27:55', '2023-07-03 04:57:49'),
(265, 604, 67, 0, 1, '119851', 1, '2023-03-29 19:31:28', '2023-07-03 04:57:49'),
(266, 251, 66, 0, 1, '9658', 1, '2023-03-29 20:05:43', '2023-07-03 04:57:49'),
(267, 606, 67, 0, 1, '85777', 1, '2023-03-29 23:59:55', '2023-07-03 04:57:49'),
(268, 606, 20, 0, 1, '17980', 1, '2023-03-30 00:35:09', '2023-07-03 04:57:49'),
(269, 606, 29, 0, 1, '27097', 1, '2023-03-30 01:43:59', '2023-07-03 04:57:49'),
(270, 274, 24, 0, 1, '54936', 1, '2023-03-30 03:30:15', '2023-07-03 04:57:49'),
(271, 608, 40, 0, 1, '4624', 1, '2023-03-30 05:30:16', '2023-07-03 04:57:49'),
(272, 609, 37, 0, 1, '12318', 1, '2023-03-30 10:03:36', '2023-07-03 04:57:49'),
(273, 609, 2, 0, 1, '1924', 1, '2023-03-30 10:04:24', '2023-07-03 04:57:49'),
(274, 613, 20, 0, 1, '4281', 1, '2023-03-30 12:46:06', '2023-07-03 04:57:49'),
(275, 612, 20, 0, 1, '7625', 1, '2023-03-30 13:03:23', '2023-07-03 04:57:49'),
(276, 614, 12, 0, 1, '11935', 1, '2023-03-30 14:09:57', '2023-07-03 04:57:49'),
(277, 615, 2, 0, 2, '46426', 1, '2023-03-30 14:36:25', '2023-07-03 04:57:49'),
(278, 444, 8, 0, 1, '192311', 1, '2023-03-30 17:31:22', '2023-07-03 04:57:49'),
(279, 599, 2, 0, 1, '6893', 1, '2023-03-30 19:22:41', '2023-07-03 04:57:49'),
(280, 618, 12, 0, 1, '41690', 1, '2023-03-30 21:28:06', '2023-07-03 04:57:49'),
(281, 621, 66, 0, 1, '110778', 1, '2023-03-31 03:58:10', '2023-07-03 04:57:49'),
(282, 622, 47, 0, 1, '51048', 1, '2023-03-31 07:30:39', '2023-07-03 04:57:49'),
(283, 622, 2, 0, 1, '95983', 1, '2023-03-31 07:33:06', '2023-07-03 04:57:49'),
(284, 606, 22, 0, 1, '32904', 1, '2023-03-31 19:00:31', '2023-07-03 04:57:49'),
(285, 451, 46, 0, 1, '29879', 1, '2023-03-31 20:32:26', '2023-07-03 04:57:49'),
(286, 340, 67, 0, 1, '18377', 1, '2023-03-31 23:00:31', '2023-07-03 04:57:49'),
(287, 625, 20, 0, 1, '151859', 1, '2023-04-01 10:47:31', '2023-07-03 04:57:49'),
(288, 625, 2, 0, 1, '78582', 1, '2023-04-01 10:47:52', '2023-07-03 04:57:49'),
(289, 625, 67, 0, 1, '4939', 1, '2023-04-01 10:48:56', '2023-07-03 04:57:49'),
(290, 626, 47, 0, 1, '18163', 1, '2023-04-01 10:48:59', '2023-07-03 04:57:49'),
(291, 625, 3, 0, 1, '2431', 1, '2023-04-01 10:49:16', '2023-07-03 04:57:49'),
(292, 627, 67, 0, 1, '48712', 1, '2023-04-01 11:25:24', '2023-07-03 04:57:49'),
(293, 627, 22, 0, 1, '61598', 1, '2023-04-01 11:26:12', '2023-07-03 04:57:49'),
(294, 605, 13, 0, 1, '51724', 1, '2023-04-01 17:18:29', '2023-07-03 04:57:49'),
(295, 582, 44, 0, 1, '10703', 1, '2023-04-02 00:47:41', '2023-07-03 04:57:49'),
(296, 634, 66, 0, 1, '9054', 1, '2023-04-02 02:28:21', '2023-07-03 04:57:49'),
(297, 635, 42, 0, 1, '47549', 1, '2023-04-02 05:25:02', '2023-07-03 04:57:49'),
(298, 635, 46, 0, 1, '1303', 1, '2023-04-02 05:25:28', '2023-07-03 04:57:49'),
(299, 636, 44, 0, 1, '16732', 1, '2023-04-02 06:12:53', '2023-07-03 04:57:49'),
(300, 637, 38, 0, 1, '32315', 1, '2023-04-02 08:04:43', '2023-07-03 04:57:49'),
(301, 637, 20, 0, 1, '2330', 1, '2023-04-02 08:05:39', '2023-07-03 04:57:49'),
(302, 637, 67, 0, 1, '1903', 1, '2023-04-02 08:22:25', '2023-07-03 04:57:49'),
(303, 637, 39, 0, 1, '2024', 1, '2023-04-02 10:24:48', '2023-07-03 04:57:49'),
(304, 616, 42, 0, 1, '13624', 1, '2023-04-03 09:39:26', '2023-07-03 04:57:49'),
(305, 640, 36, 0, 1, '22457', 1, '2023-04-03 09:40:17', '2023-07-03 04:57:49'),
(306, 641, 42, 0, 1, '6815', 1, '2023-04-03 11:32:04', '2023-07-03 04:57:49'),
(307, 268, 47, 0, 1, '188123', 1, '2023-04-03 11:52:38', '2023-07-03 04:57:49'),
(308, 268, 2, 0, 1, '739', 1, '2023-04-03 11:52:50', '2023-07-03 04:57:49'),
(309, 642, 44, 0, 1, '20860', 1, '2023-04-03 12:27:00', '2023-07-03 04:57:49'),
(310, 621, 3, 0, 1, '33459', 1, '2023-04-03 14:05:52', '2023-07-03 04:57:49'),
(311, 641, 13, 0, 1, '92624', 1, '2023-04-03 18:41:15', '2023-07-03 04:57:49'),
(312, 643, 23, 0, 1, '13889', 1, '2023-04-04 02:55:59', '2023-07-03 04:57:49'),
(313, 648, 38, 0, 1, '181643', 1, '2023-04-04 13:39:02', '2023-07-03 04:57:49'),
(314, 303, 44, 0, 1, '53825', 1, '2023-04-04 21:51:07', '2023-07-03 04:57:49'),
(315, 628, 23, 0, 1, '17528', 1, '2023-04-04 23:05:48', '2023-07-03 04:57:49'),
(316, 651, 67, 0, 1, '71002', 1, '2023-04-05 16:15:38', '2023-07-03 04:57:49'),
(317, 516, 67, 0, 1, '183923', 1, '2023-04-06 03:22:08', '2023-07-03 04:57:49'),
(318, 654, 67, 0, 1, '71312', 1, '2023-04-06 18:06:15', '2023-07-03 04:57:49'),
(319, 655, 47, 0, 1, '39742', 1, '2023-04-06 22:08:09', '2023-07-03 04:57:49'),
(320, 655, 2, 0, 1, '31921', 1, '2023-04-06 22:09:01', '2023-07-03 04:57:49'),
(321, 421, 49, 0, 1, '8692', 1, '2023-04-06 23:23:48', '2023-07-03 04:57:49'),
(322, 656, 67, 0, 1, '152707', 1, '2023-04-07 09:47:13', '2023-07-03 04:57:49'),
(323, 657, 12, 0, 1, '74474', 1, '2023-04-07 10:00:23', '2023-07-03 04:57:49'),
(324, 660, 66, 0, 1, '80792', 1, '2023-04-07 16:29:23', '2023-07-03 04:57:49'),
(325, 662, 22, 0, 1, '74355', 1, '2023-04-08 06:01:16', '2023-07-03 04:57:49'),
(326, 662, 20, 0, 1, '148309', 1, '2023-04-08 06:01:50', '2023-07-03 04:57:49'),
(327, 246, 44, 0, 1, '94144', 1, '2023-04-08 14:18:27', '2023-07-03 04:57:49'),
(328, 664, 38, 0, 1, '70366', 1, '2023-04-08 17:28:45', '2023-07-03 04:57:49'),
(329, 668, 44, 0, 1, '16079', 1, '2023-04-08 17:31:25', '2023-07-03 04:57:49'),
(330, 668, 47, 0, 1, '2584', 1, '2023-04-08 17:50:17', '2023-07-03 04:57:49'),
(331, 670, 40, 0, 1, '52283', 1, '2023-04-09 01:16:29', '2023-07-03 04:57:49'),
(332, 670, 23, 0, 1, '19311', 1, '2023-04-09 01:17:23', '2023-07-03 04:57:49'),
(333, 673, 43, 0, 1, '12716', 1, '2023-04-09 12:21:45', '2023-07-03 04:57:49'),
(334, 673, 2, 0, 1, '3882', 1, '2023-04-09 12:22:34', '2023-07-03 04:57:49'),
(335, 480, 23, 0, 1, '5268', 1, '2023-04-09 13:33:26', '2023-07-03 04:57:49'),
(336, 480, 18, 0, 2, '9896', 0, '2023-04-09 13:34:00', '2023-07-03 04:57:49'),
(337, 480, 2, 0, 2, '1784', 1, '2023-04-09 13:35:57', '2023-07-03 04:57:49'),
(338, 674, 10, 0, 1, '138197', 1, '2023-04-09 14:05:48', '2023-07-03 04:57:49'),
(339, 675, 18, 0, 2, '27514', 1, '2023-04-09 14:14:03', '2023-07-03 04:57:49'),
(340, 443, 67, 0, 1, '10607', 1, '2023-04-10 22:38:03', '2023-07-03 04:57:49'),
(341, 678, 67, 0, 1, '84859', 1, '2023-04-11 05:36:31', '2023-07-03 04:57:49'),
(342, 681, 12, 0, 1, '82456', 1, '2023-04-11 11:09:35', '2023-07-03 04:57:49'),
(343, 682, 43, 0, 1, '42159', 1, '2023-04-11 14:51:26', '2023-07-03 04:57:49'),
(344, 683, 67, 0, 1, '50433', 1, '2023-04-11 16:04:48', '2023-07-03 04:57:49'),
(345, 684, 66, 0, 1, '44952', 1, '2023-04-11 21:19:32', '2023-07-03 04:57:49'),
(346, 685, 67, 0, 1, '69362', 1, '2023-04-11 21:32:12', '2023-07-03 04:57:49'),
(347, 686, 10, 0, 1, '6972', 1, '2023-04-11 21:55:05', '2023-07-03 04:57:49'),
(348, 687, 46, 0, 1, '8047', 1, '2023-04-11 21:57:21', '2023-07-03 04:57:49'),
(349, 340, 23, 0, 1, '122376', 1, '2023-04-12 10:18:56', '2023-07-03 04:57:49'),
(350, 615, 20, 0, 1, '48919', 1, '2023-04-12 22:53:06', '2023-07-03 04:57:49'),
(351, 615, 44, 0, 1, '26167', 1, '2023-04-12 22:53:50', '2023-07-03 04:57:49'),
(352, 692, 67, 0, 1, '24058', 1, '2023-04-13 03:27:20', '2023-07-03 04:57:49'),
(353, 692, 46, 0, 1, '56912', 1, '2023-04-13 03:28:12', '2023-07-03 04:57:49'),
(354, 693, 20, 0, 1, '32994', 1, '2023-04-13 06:24:25', '2023-07-03 04:57:49'),
(355, 693, 43, 0, 1, '15874', 1, '2023-04-13 06:25:35', '2023-07-03 04:57:49'),
(356, 696, 20, 0, 1, '10188', 1, '2023-04-13 12:45:26', '2023-07-03 04:57:49'),
(357, 696, 44, 0, 1, '3902', 1, '2023-04-13 12:53:56', '2023-07-03 04:57:49'),
(358, 698, 67, 0, 1, '36239', 1, '2023-04-13 23:47:12', '2023-07-03 04:57:49'),
(359, 699, 44, 0, 1, '48043', 1, '2023-04-14 00:51:39', '2023-07-03 04:57:49'),
(360, 699, 22, 0, 1, '9332', 1, '2023-04-14 00:53:15', '2023-07-03 04:57:49'),
(361, 700, 23, 0, 1, '6461', 1, '2023-04-14 04:00:44', '2023-07-03 04:57:49'),
(362, 698, 22, 0, 1, '16631', 1, '2023-04-14 09:24:33', '2023-07-03 04:57:49'),
(363, 702, 67, 0, 1, '44333', 1, '2023-04-14 15:30:35', '2023-07-03 04:57:49'),
(364, 703, 44, 0, 1, '12849', 1, '2023-04-14 16:35:31', '2023-07-03 04:57:49'),
(365, 707, 38, 0, 1, '11842', 1, '2023-04-15 03:13:12', '2023-07-03 04:57:49'),
(366, 579, 3, 0, 1, '9325', 1, '2023-04-16 01:35:56', '2023-07-03 04:57:49'),
(367, 499, 67, 0, 1, '66979', 1, '2023-04-16 04:51:49', '2023-07-03 04:57:49'),
(368, 691, 20, 0, 1, '36964', 1, '2023-04-16 06:06:18', '2023-07-03 04:57:49'),
(369, 691, 44, 0, 1, '17205', 1, '2023-04-16 06:28:06', '2023-07-03 04:57:49'),
(370, 499, 22, 0, 1, '5329', 1, '2023-04-16 06:32:40', '2023-07-03 04:57:49'),
(371, 712, 67, 0, 1, '8835', 1, '2023-04-16 08:30:24', '2023-07-03 04:57:49'),
(372, 712, 22, 0, 1, '2322', 1, '2023-04-16 08:33:17', '2023-07-03 04:57:49'),
(373, 303, 67, 0, 1, '93983', 1, '2023-04-16 13:11:17', '2023-07-03 04:57:49'),
(374, 691, 46, 0, 1, '8634', 1, '2023-04-16 17:28:07', '2023-07-03 04:57:49'),
(375, 691, 22, 0, 1, '9931', 1, '2023-04-16 20:28:48', '2023-07-03 04:57:49'),
(376, 716, 66, 0, 1, '48646', 1, '2023-04-16 21:17:54', '2023-07-03 04:57:49'),
(377, 615, 13, 0, 1, '7044', 1, '2023-04-17 04:44:16', '2023-07-03 04:57:49'),
(378, 719, 38, 0, 1, '113274', 1, '2023-04-18 06:14:53', '2023-07-03 04:57:49'),
(379, 719, 48, 0, 1, '120474', 1, '2023-04-18 06:15:23', '2023-07-03 04:57:49'),
(380, 719, 2, 0, 1, '138628', 1, '2023-04-18 06:17:03', '2023-07-03 04:57:49'),
(381, 721, 46, 0, 1, '192216', 1, '2023-04-18 07:23:35', '2023-07-03 04:57:49'),
(382, 721, 66, 0, 1, '127603', 1, '2023-04-18 07:33:22', '2023-07-03 04:57:49'),
(383, 722, 67, 0, 1, '32750', 1, '2023-04-18 08:14:00', '2023-07-03 04:57:49'),
(384, 722, 29, 0, 1, '131863', 1, '2023-04-18 08:36:35', '2023-07-03 04:57:49'),
(385, 683, 37, 0, 1, '8616', 1, '2023-04-18 10:53:00', '2023-07-03 04:57:49'),
(386, 723, 67, 0, 1, '5797', 1, '2023-04-18 10:59:43', '2023-07-03 04:57:49'),
(387, 725, 15, 0, 1, '36041', 1, '2023-04-18 20:28:13', '2023-07-03 04:57:49'),
(388, 725, 43, 0, 1, '4036', 1, '2023-04-18 20:29:00', '2023-07-03 04:57:49'),
(389, 726, 22, 0, 1, '21073', 1, '2023-04-19 01:59:08', '2023-07-03 04:57:49'),
(390, 660, 67, 0, 1, '468', 1, '2023-04-19 07:48:33', '2023-07-03 04:57:49'),
(391, 728, 67, 0, 1, '60779', 1, '2023-04-19 09:56:36', '2023-07-03 04:57:49'),
(392, 729, 2, 0, 1, '90620', 1, '2023-04-19 12:20:15', '2023-07-03 04:57:49'),
(393, 731, 23, 0, 1, '101570', 1, '2023-04-20 05:28:11', '2023-07-03 04:57:49'),
(394, 691, 23, 0, 1, '18887', 1, '2023-04-20 06:31:08', '2023-07-03 04:57:49'),
(395, 721, 7, 0, 1, '87034', 1, '2023-04-20 09:31:42', '2023-07-03 04:57:49'),
(396, 735, 38, 0, 1, '114649', 1, '2023-04-20 10:25:46', '2023-07-03 04:57:49'),
(397, 736, 20, 0, 1, '3255', 1, '2023-04-20 13:53:19', '2023-07-03 04:57:49'),
(398, 562, 67, 0, 1, '30361', 1, '2023-04-20 14:08:17', '2023-07-03 04:57:49'),
(399, 520, 22, 0, 1, '24018', 1, '2023-04-20 15:58:56', '2023-07-03 04:57:49'),
(400, 737, 67, 0, 1, '12801', 1, '2023-04-20 16:44:22', '2023-07-03 04:57:49'),
(401, 738, 22, 0, 1, '7853', 1, '2023-04-20 20:20:38', '2023-07-03 04:57:49'),
(402, 738, 44, 0, 1, '6245', 1, '2023-04-20 20:21:24', '2023-07-03 04:57:49'),
(403, 739, 44, 0, 1, '17222', 1, '2023-04-20 23:32:53', '2023-07-03 04:57:49'),
(404, 740, 67, 0, 1, '107703', 1, '2023-04-20 23:56:31', '2023-07-03 04:57:49'),
(405, 740, 22, 0, 1, '2005', 1, '2023-04-20 23:56:58', '2023-07-03 04:57:49'),
(406, 738, 13, 0, 1, '3454', 1, '2023-04-21 02:30:51', '2023-07-03 04:57:49'),
(407, 738, 38, 0, 1, '2039', 1, '2023-04-21 02:36:18', '2023-07-03 04:57:49'),
(408, 709, 24, 0, 1, '86422', 1, '2023-04-21 14:58:58', '2023-07-03 04:57:49'),
(409, 709, 23, 0, 1, '24000', 1, '2023-04-21 15:02:33', '2023-07-03 04:57:49'),
(410, 545, 23, 0, 1, '53477', 1, '2023-04-21 23:51:32', '2023-07-03 04:57:49'),
(411, 545, 22, 0, 1, '63771', 1, '2023-04-21 23:52:00', '2023-07-03 04:57:49'),
(412, 367, 23, 0, 1, '93650', 1, '2023-04-22 06:41:25', '2023-07-03 04:57:49'),
(413, 367, 24, 0, 1, '3352', 1, '2023-04-22 06:41:47', '2023-07-03 04:57:49'),
(414, 188, 24, 0, 1, '1795', 1, '2023-04-22 22:32:00', '2023-07-03 04:57:49'),
(415, 742, 44, 0, 1, '25557', 1, '2023-04-23 10:53:06', '2023-07-03 04:57:49'),
(416, 744, 37, 0, 1, '2909', 1, '2023-04-23 22:59:37', '2023-07-03 04:57:49'),
(417, 747, 24, 0, 1, '10154', 1, '2023-04-24 11:11:19', '2023-07-03 04:57:49'),
(418, 747, 44, 0, 1, '5567', 1, '2023-04-24 11:12:28', '2023-07-03 04:57:49'),
(419, 749, 66, 0, 1, '4964', 1, '2023-04-24 20:27:57', '2023-07-03 04:57:49'),
(420, 750, 44, 0, 1, '18197', 1, '2023-04-24 21:07:46', '2023-07-03 04:57:49'),
(421, 751, 66, 0, 1, '154994', 1, '2023-04-24 23:06:53', '2023-07-03 04:57:49'),
(422, 758, 67, 0, 1, '60329', 1, '2023-04-26 16:39:51', '2023-07-03 04:57:49'),
(423, 758, 23, 0, 1, '4817', 1, '2023-04-26 16:44:29', '2023-07-03 04:57:49'),
(424, 758, 22, 0, 1, '1846', 1, '2023-04-26 16:44:41', '2023-07-03 04:57:49'),
(425, 758, 9, 0, 1, '2527', 1, '2023-04-26 16:44:58', '2023-07-03 04:57:49'),
(426, 757, 66, 0, 1, '47027', 1, '2023-04-26 18:36:29', '2023-07-03 04:57:49'),
(427, 762, 22, 0, 1, '30876', 1, '2023-04-27 06:33:37', '2023-07-03 04:57:49'),
(428, 763, 23, 0, 1, '86821', 1, '2023-04-27 07:47:31', '2023-07-03 04:57:49'),
(429, 763, 20, 0, 1, '1993', 1, '2023-04-27 07:48:27', '2023-07-03 04:57:49'),
(430, 764, 67, 0, 1, '33662', 1, '2023-04-27 08:03:21', '2023-07-03 04:57:49'),
(431, 760, 23, 0, 1, '5705', 1, '2023-04-27 15:46:27', '2023-07-03 04:57:49'),
(432, 766, 67, 0, 1, '26038', 1, '2023-04-27 18:48:15', '2023-07-03 04:57:49'),
(433, 766, 2, 0, 1, '27453', 1, '2023-04-27 20:00:18', '2023-07-03 04:57:49'),
(434, 766, 66, 0, 1, '14623', 1, '2023-04-27 21:10:05', '2023-07-03 04:57:49'),
(435, 768, 7, 0, 1, '134313', 1, '2023-04-28 03:35:09', '2023-07-03 04:57:49'),
(436, 765, 23, 0, 1, '9410', 1, '2023-04-28 05:00:55', '2023-07-03 04:57:49'),
(437, 769, 38, 0, 1, '146899', 1, '2023-04-28 07:10:51', '2023-07-03 04:57:49'),
(438, 769, 66, 0, 1, '42053', 1, '2023-04-28 07:13:12', '2023-07-03 04:57:49'),
(439, 772, 2, 0, 1, '16518', 1, '2023-04-28 15:43:54', '2023-07-03 04:57:49'),
(440, 773, 20, 0, 1, '39295', 1, '2023-04-29 05:36:34', '2023-07-03 04:57:49'),
(441, 615, 2, 0, 1, '41826', 1, '2023-04-29 22:29:56', '2023-07-03 04:57:49'),
(442, 134, 23, 0, 1, '11890', 1, '2023-04-30 02:26:40', '2023-07-03 04:57:49'),
(443, 778, 44, 0, 1, '7543', 1, '2023-04-30 07:46:27', '2023-07-03 04:57:49'),
(444, 778, 25, 0, 1, '11560', 1, '2023-04-30 07:46:54', '2023-07-03 04:57:49'),
(445, 778, 23, 0, 1, '6747', 1, '2023-04-30 07:48:42', '2023-07-03 04:57:49'),
(446, 778, 40, 0, 1, '3354', 1, '2023-04-30 07:50:04', '2023-07-03 04:57:49'),
(447, 780, 67, 0, 1, '3932', 1, '2023-04-30 09:37:34', '2023-07-03 04:57:49'),
(448, 780, 24, 0, 1, '4507', 1, '2023-04-30 09:38:57', '2023-07-03 04:57:49'),
(449, 783, 23, 0, 1, '51560', 1, '2023-04-30 12:37:49', '2023-07-03 04:57:49'),
(450, 703, 41, 0, 1, '14026', 1, '2023-04-30 16:36:39', '2023-07-03 04:57:49'),
(451, 422, 22, 0, 1, '4402', 1, '2023-05-01 00:13:21', '2023-07-03 04:57:49'),
(452, 777, 12, 0, 1, '151073', 1, '2023-05-01 15:55:34', '2023-07-03 04:57:49'),
(453, 787, 2, 0, 1, '63829', 1, '2023-05-01 16:53:58', '2023-07-03 04:57:49'),
(454, 419, 67, 0, 1, '107185', 1, '2023-05-01 19:26:29', '2023-07-03 04:57:49'),
(455, 788, 67, 0, 1, '72354', 1, '2023-05-01 19:27:21', '2023-07-03 04:57:49'),
(456, 789, 18, 0, 2, '26944', 1, '2023-05-01 19:42:29', '2023-07-03 04:57:49'),
(457, 790, 2, 0, 1, '12466', 1, '2023-05-01 20:44:27', '2023-07-03 04:57:49'),
(458, 792, 22, 0, 1, '81578', 1, '2023-05-02 04:50:56', '2023-07-03 04:57:49'),
(459, 794, 23, 0, 1, '52487', 1, '2023-05-02 13:38:47', '2023-07-03 04:57:49'),
(460, 794, 44, 0, 1, '5330', 1, '2023-05-02 13:42:39', '2023-07-03 04:57:49'),
(461, 794, 36, 0, 1, '19810', 1, '2023-05-02 14:42:34', '2023-07-03 04:57:49'),
(462, 254, 66, 0, 1, '34454', 1, '2023-05-02 22:05:05', '2023-07-03 04:57:49'),
(463, 777, 20, 0, 1, '43061', 1, '2023-05-03 13:21:25', '2023-07-03 04:57:49'),
(464, 777, 18, 0, 2, '6064', 1, '2023-05-03 13:23:35', '2023-07-03 04:57:49'),
(465, 796, 20, 0, 1, '48075', 1, '2023-05-03 17:10:09', '2023-07-03 04:57:49'),
(466, 796, 27, 0, 1, '21928', 1, '2023-05-03 17:10:40', '2023-07-03 04:57:49'),
(467, 799, 67, 0, 1, '23417', 1, '2023-05-04 07:34:36', '2023-07-03 04:57:49'),
(468, 800, 22, 0, 1, '13941', 1, '2023-05-04 10:07:44', '2023-07-03 04:57:49'),
(469, 800, 44, 0, 1, '11931', 1, '2023-05-04 10:08:27', '2023-07-03 04:57:49'),
(470, 802, 38, 0, 1, '31242', 1, '2023-05-04 20:28:00', '2023-07-03 04:57:49'),
(471, 803, 24, 0, 1, '43539', 1, '2023-05-04 21:04:34', '2023-07-03 04:57:49'),
(472, 805, 2, 0, 2, '7894', 1, '2023-05-05 14:10:38', '2023-07-03 04:57:49'),
(473, 784, 20, 0, 1, '7919', 1, '2023-05-05 14:13:27', '2023-07-03 04:57:49'),
(474, 808, 66, 0, 1, '94789', 1, '2023-05-06 13:15:00', '2023-07-03 04:57:49'),
(475, 812, 51, 0, 1, '26257', 1, '2023-05-07 09:04:30', '2023-07-03 04:57:49'),
(476, 818, 17, 0, 2, '163362', 1, '2023-05-09 11:23:01', '2023-07-03 04:57:49'),
(477, 819, 12, 0, 1, '95183', 1, '2023-05-09 21:01:08', '2023-07-03 04:57:49'),
(478, 820, 46, 0, 1, '83359', 1, '2023-05-09 22:19:59', '2023-07-03 04:57:49'),
(479, 821, 22, 0, 1, '15486', 1, '2023-05-09 22:25:44', '2023-07-03 04:57:49'),
(480, 821, 2, 0, 2, '62077', 1, '2023-05-09 22:25:59', '2023-07-03 04:57:49'),
(481, 822, 67, 0, 1, '115163', 1, '2023-05-09 22:49:25', '2023-07-03 04:57:49'),
(482, 822, 46, 0, 1, '51270', 1, '2023-05-09 22:51:18', '2023-07-03 04:57:49'),
(483, 822, 40, 0, 1, '124650', 1, '2023-05-09 23:05:35', '2023-07-03 04:57:49'),
(484, 823, 44, 0, 1, '29454', 1, '2023-05-09 23:40:12', '2023-07-03 04:57:49'),
(485, 825, 23, 0, 1, '5961', 1, '2023-05-10 10:06:46', '2023-07-03 04:57:49'),
(486, 826, 43, 0, 1, '38113', 1, '2023-05-10 13:27:42', '2023-07-03 04:57:49'),
(487, 825, 22, 0, 1, '35808', 1, '2023-05-10 19:58:19', '2023-07-03 04:57:49'),
(488, 833, 2, 0, 2, '18642', 1, '2023-05-11 22:47:07', '2023-07-03 04:57:49'),
(489, 833, 44, 0, 1, '109799', 1, '2023-05-11 22:49:24', '2023-07-03 04:57:49'),
(490, 833, 49, 0, 1, '78369', 1, '2023-05-11 22:50:19', '2023-07-03 04:57:49'),
(491, 834, 12, 0, 1, '97383', 1, '2023-05-12 01:22:04', '2023-07-03 04:57:49'),
(492, 834, 48, 0, 1, '14812', 1, '2023-05-12 01:23:52', '2023-07-03 04:57:49'),
(493, 834, 20, 0, 1, '4786', 1, '2023-05-12 01:28:11', '2023-07-03 04:57:49'),
(494, 834, 44, 0, 1, '16978', 1, '2023-05-12 01:29:05', '2023-07-03 04:57:49'),
(495, 834, 38, 0, 1, '1781', 1, '2023-05-12 01:29:34', '2023-07-03 04:57:49'),
(496, 834, 18, 0, 2, '3724', 1, '2023-05-12 01:30:49', '2023-07-03 04:57:49'),
(497, 836, 37, 0, 1, '10686', 1, '2023-05-12 04:11:37', '2023-07-03 04:57:49'),
(498, 840, 67, 0, 1, '21114', 1, '2023-05-13 07:01:31', '2023-07-03 04:57:49'),
(499, 823, 67, 0, 1, '8146', 1, '2023-05-13 08:40:01', '2023-07-03 04:57:49'),
(500, 823, 42, 0, 1, '2469', 1, '2023-05-13 08:40:41', '2023-07-03 04:57:49'),
(501, 843, 22, 0, 1, '15584', 1, '2023-05-13 22:08:20', '2023-07-03 04:57:49'),
(502, 843, 44, 0, 1, '2957', 1, '2023-05-13 22:08:58', '2023-07-03 04:57:49'),
(503, 844, 40, 0, 1, '10794', 1, '2023-05-14 04:29:29', '2023-07-03 04:57:49'),
(504, 440, 22, 0, 1, '41221', 1, '2023-05-14 11:01:07', '2023-07-03 04:57:49'),
(505, 847, 2, 0, 2, '89729', 1, '2023-05-14 15:46:27', '2023-07-03 04:57:49'),
(506, 440, 23, 0, 1, '15554', 1, '2023-05-14 18:02:42', '2023-07-03 04:57:49'),
(507, 850, 23, 0, 1, '3601', 1, '2023-05-15 07:50:23', '2023-07-03 04:57:49'),
(508, 844, 13, 0, 1, '8873', 1, '2023-05-15 12:04:51', '2023-07-03 04:57:49'),
(509, 851, 44, 0, 1, '119360', 1, '2023-05-15 17:30:26', '2023-07-03 04:57:49'),
(510, 851, 25, 0, 1, '3097', 1, '2023-05-15 17:30:52', '2023-07-03 04:57:49'),
(511, 393, 44, 0, 1, '1520', 1, '2023-05-15 18:56:03', '2023-07-03 04:57:49'),
(512, 393, 47, 0, 1, '10583', 1, '2023-05-15 18:57:28', '2023-07-03 04:57:49'),
(513, 393, 2, 0, 1, '7497', 1, '2023-05-15 19:00:59', '2023-07-03 04:57:49'),
(514, 252, 22, 0, 1, '29935', 1, '2023-05-15 20:54:15', '2023-07-03 04:57:49'),
(515, 252, 23, 0, 1, '4958', 1, '2023-05-15 21:19:19', '2023-07-03 04:57:49'),
(516, 853, 37, 0, 1, '8366', 1, '2023-05-16 09:35:02', '2023-07-03 04:57:49'),
(517, 854, 39, 0, 1, '19319', 1, '2023-05-16 11:05:26', '2023-07-03 04:57:49'),
(518, 855, 20, 0, 1, '52602', 1, '2023-05-16 11:22:47', '2023-07-03 04:57:49'),
(519, 855, 42, 0, 1, '32362', 1, '2023-05-16 11:23:29', '2023-07-03 04:57:49'),
(520, 856, 20, 0, 1, '114189', 1, '2023-05-16 12:21:28', '2023-07-03 04:57:49'),
(521, 856, 39, 0, 1, '5135', 1, '2023-05-16 12:22:07', '2023-07-03 04:57:49'),
(522, 662, 48, 0, 1, '3516', 1, '2023-05-16 18:10:32', '2023-07-03 04:57:49'),
(523, 852, 12, 0, 1, '45021', 1, '2023-05-16 19:05:21', '2023-07-03 04:57:49'),
(524, 808, 33, 0, 1, '73927', 1, '2023-05-17 10:44:17', '2023-07-03 04:57:49'),
(525, 856, 44, 0, 1, '18071', 1, '2023-05-17 10:53:52', '2023-07-03 04:57:49'),
(526, 662, 47, 0, 1, '3755', 1, '2023-05-18 05:50:40', '2023-07-03 04:57:49'),
(527, 864, 67, 0, 1, '59187', 1, '2023-05-18 12:27:29', '2023-07-03 04:57:49'),
(528, 803, 22, 0, 1, '3975', 0, '2023-05-18 17:21:21', '2023-07-03 04:57:49'),
(529, 852, 22, 0, 1, '31307', 1, '2023-05-18 18:03:38', '2023-07-03 04:57:49'),
(530, 865, 46, 0, 1, '33889', 1, '2023-05-18 23:03:51', '2023-07-03 04:57:49'),
(531, 865, 67, 0, 1, '3572', 1, '2023-05-18 23:04:15', '2023-07-03 04:57:49'),
(532, 451, 24, 0, 1, '3443', 1, '2023-05-19 07:35:55', '2023-07-03 04:57:49'),
(533, 359, 8, 0, 1, '6005', 1, '2023-05-19 19:12:05', '2023-07-03 04:57:49'),
(534, 254, 67, 0, 1, '25654', 1, '2023-05-20 20:30:30', '2023-07-03 04:57:49'),
(535, 825, 12, 0, 1, '25082', 1, '2023-05-20 20:36:30', '2023-07-03 04:57:49'),
(536, 872, 67, 0, 1, '49321', 1, '2023-05-21 16:21:41', '2023-07-03 04:57:49'),
(537, 872, 22, 0, 1, '5833', 1, '2023-05-21 16:42:48', '2023-07-03 04:57:49'),
(538, 872, 20, 0, 1, '8059', 1, '2023-05-21 16:43:19', '2023-07-03 04:57:49'),
(539, 877, 46, 0, 1, '115593', 1, '2023-05-22 16:10:18', '2023-07-03 04:57:49'),
(540, 877, 48, 0, 1, '135318', 1, '2023-05-22 16:47:11', '2023-07-03 04:57:49'),
(541, 752, 18, 0, 2, '21132', 1, '2023-05-23 13:54:56', '2023-07-03 04:57:49'),
(542, 878, 22, 0, 1, '4556', 1, '2023-05-23 17:02:58', '2023-07-03 04:57:49'),
(543, 878, 12, 0, 1, '5718', 1, '2023-05-23 17:03:23', '2023-07-03 04:57:49'),
(544, 878, 9, 0, 1, '5148', 1, '2023-05-23 17:04:16', '2023-07-03 04:57:49'),
(545, 879, 41, 0, 1, '76757', 1, '2023-05-23 18:50:16', '2023-07-03 04:57:49'),
(546, 881, 23, 0, 1, '182411', 1, '2023-05-24 08:31:10', '2023-07-03 04:57:49'),
(547, 881, 22, 0, 1, '62159', 1, '2023-05-24 08:32:09', '2023-07-03 04:57:49'),
(548, 882, 51, 0, 1, '79482', 1, '2023-05-24 12:45:22', '2023-07-03 04:57:49'),
(549, 884, 44, 0, 1, '1454', 1, '2023-05-25 04:52:33', '2023-07-03 04:57:49'),
(550, 885, 46, 0, 1, '97254', 1, '2023-05-25 15:39:05', '2023-07-03 04:57:49'),
(551, 885, 44, 0, 1, '42105', 1, '2023-05-25 15:43:17', '2023-07-03 04:57:49'),
(552, 885, 23, 0, 1, '136569', 1, '2023-05-25 15:47:57', '2023-07-03 04:57:49'),
(553, 886, 20, 0, 1, '14405', 1, '2023-05-26 04:10:55', '2023-07-03 04:57:49'),
(554, 885, 3, 0, 1, '3416', 1, '2023-05-26 10:27:33', '2023-07-03 04:57:49'),
(555, 890, 44, 0, 1, '6876', 1, '2023-05-27 11:54:54', '2023-07-03 04:57:49'),
(556, 892, 67, 0, 1, '12762', 1, '2023-05-27 17:52:49', '2023-07-03 04:57:49'),
(557, 893, 44, 0, 1, '19606', 1, '2023-05-27 18:14:13', '2023-07-03 04:57:49'),
(558, 149, 67, 0, 1, '48611', 1, '2023-05-28 04:58:40', '2023-07-03 04:57:49'),
(559, 149, 66, 0, 1, '4572', 1, '2023-05-28 05:03:45', '2023-07-03 04:57:49'),
(560, 848, 44, 0, 1, '11615', 1, '2023-05-29 10:24:57', '2023-07-03 04:57:49'),
(561, 895, 67, 0, 1, '39397', 1, '2023-05-30 09:41:56', '2023-07-03 04:57:49'),
(562, 245, 67, 0, 1, '32813', 1, '2023-05-30 16:29:17', '2023-07-03 04:57:49'),
(563, 897, 22, 0, 1, '29241', 1, '2023-05-31 09:34:33', '2023-07-03 04:57:49'),
(564, 898, 67, 0, 1, '4398', 1, '2023-05-31 23:11:38', '2023-07-03 04:57:49'),
(565, 898, 23, 0, 1, '1907', 1, '2023-05-31 23:12:22', '2023-07-03 04:57:49'),
(566, 900, 20, 0, 1, '78133', 1, '2023-06-01 08:25:59', '2023-07-03 04:57:49'),
(567, 554, 2, 0, 1, '24081', 1, '2023-06-01 16:45:25', '2023-07-03 04:57:49'),
(568, 301, 40, 0, 1, '16802', 1, '2023-06-03 07:53:01', '2023-07-03 04:57:49'),
(569, 440, 3, 0, 1, '7990', 1, '2023-06-04 17:05:35', '2023-07-03 04:57:49'),
(570, 897, 23, 0, 1, '30442', 1, '2023-06-05 00:04:16', '2023-07-03 04:57:49'),
(571, 906, 2, 0, 2, '79139', 1, '2023-06-05 14:58:53', '2023-07-03 04:57:49'),
(572, 906, 2, 0, 1, '144191', 1, '2023-06-05 15:02:18', '2023-07-03 04:57:49'),
(573, 541, 67, 0, 1, '115095', 1, '2023-06-05 19:16:16', '2023-07-03 04:57:49'),
(574, 907, 2, 0, 1, '48709', 1, '2023-06-06 08:19:17', '2023-07-03 04:57:49'),
(575, 907, 40, 0, 1, '4776', 1, '2023-06-06 08:21:42', '2023-07-03 04:57:49'),
(576, 907, 22, 0, 1, '4848', 1, '2023-06-06 08:33:46', '2023-07-03 04:57:49'),
(577, 908, 8, 0, 1, '4546', 1, '2023-06-06 10:52:44', '2023-07-03 04:57:49'),
(578, 909, 13, 0, 1, '193482', 1, '2023-06-06 11:04:18', '2023-07-03 04:57:49'),
(579, 909, 7, 0, 1, '3961', 1, '2023-06-06 11:05:12', '2023-07-03 04:57:49'),
(580, 909, 33, 0, 1, '4736', 1, '2023-06-06 11:05:35', '2023-07-03 04:57:49'),
(581, 911, 22, 0, 1, '21502', 1, '2023-06-06 19:29:51', '2023-07-03 04:57:49'),
(582, 911, 38, 0, 1, '6272', 1, '2023-06-06 19:31:40', '2023-07-03 04:57:49'),
(583, 912, 67, 0, 1, '114979', 1, '2023-06-06 21:47:28', '2023-07-03 04:57:49'),
(584, 913, 67, 0, 1, '119006', 1, '2023-06-06 23:39:44', '2023-07-03 04:57:49'),
(585, 408, 9, 0, 1, '26959', 1, '2023-06-07 05:22:31', '2023-07-03 04:57:49'),
(586, 910, 22, 0, 1, '1524', 1, '2023-06-07 08:06:46', '2023-07-03 04:57:49'),
(587, 916, 7, 0, 1, '6406', 1, '2023-06-07 09:53:41', '2023-07-03 04:57:49'),
(588, 408, 66, 0, 1, '53824', 1, '2023-06-07 11:39:20', '2023-07-03 04:57:49'),
(589, 301, 25, 0, 1, '15056', 1, '2023-06-07 14:03:21', '2023-07-03 04:57:49'),
(590, 917, 20, 0, 1, '4699', 1, '2023-06-07 14:21:41', '2023-07-03 04:57:49'),
(591, 803, 12, 0, 1, '25357', 1, '2023-06-07 14:22:08', '2023-07-03 04:57:49'),
(592, 544, 23, 0, 1, '58589', 1, '2023-06-07 15:26:56', '2023-07-03 04:57:49'),
(593, 181, 23, 0, 1, '10922', 1, '2023-06-07 17:55:07', '2023-07-03 04:57:49'),
(594, 919, 20, 0, 1, '6725', 1, '2023-06-08 04:09:18', '2023-07-03 04:57:49'),
(595, 544, 22, 0, 1, '8468', 1, '2023-06-08 10:58:04', '2023-07-03 04:57:49'),
(596, 892, 40, 0, 1, '8765', 1, '2023-06-08 11:28:50', '2023-07-03 04:57:49'),
(597, 156, 2, 0, 1, '5463', 1, '2023-06-09 15:10:36', '2023-07-03 04:57:49'),
(598, 156, 18, 0, 2, '87221', 1, '2023-06-09 15:12:46', '2023-07-03 04:57:49'),
(599, 921, 18, 0, 2, '154326', 1, '2023-06-09 17:05:05', '2023-07-03 04:57:49'),
(600, 922, 67, 0, 1, '8266', 1, '2023-06-09 21:47:11', '2023-07-03 04:57:49'),
(601, 923, 44, 0, 1, '44249', 1, '2023-06-10 01:27:54', '2023-07-03 04:57:49'),
(602, 924, 44, 0, 1, '16427', 1, '2023-06-10 09:55:29', '2023-07-03 04:57:49'),
(603, 816, 18, 0, 2, '7352', 1, '2023-06-10 10:51:45', '2023-07-03 04:57:49'),
(604, 925, 67, 0, 1, '6269', 1, '2023-06-10 12:45:55', '2023-07-03 04:57:49'),
(605, 925, 37, 0, 1, '31693', 1, '2023-06-10 18:32:25', '2023-07-03 04:57:49'),
(606, 927, 44, 0, 1, '61411', 1, '2023-06-11 00:41:07', '2023-07-03 04:57:49'),
(607, 928, 67, 0, 1, '24469', 1, '2023-06-11 08:28:20', '2023-07-03 04:57:49'),
(608, 928, 22, 0, 1, '86611', 1, '2023-06-11 08:31:31', '2023-07-03 04:57:49'),
(609, 929, 66, 0, 1, '45128', 1, '2023-06-11 09:43:59', '2023-07-03 04:57:49'),
(610, 929, 2, 0, 1, '6898', 1, '2023-06-11 09:44:56', '2023-07-03 04:57:49'),
(611, 931, 23, 0, 1, '50335', 1, '2023-06-11 16:38:51', '2023-07-03 04:57:49'),
(612, 498, 33, 0, 1, '58589', 1, '2023-06-12 14:03:38', '2023-07-03 04:57:49'),
(613, 498, 3, 0, 1, '10511', 1, '2023-06-12 14:05:49', '2023-07-03 04:57:49'),
(614, 925, 66, 0, 1, '16162', 1, '2023-06-12 14:43:57', '2023-07-03 04:57:49'),
(615, 934, 44, 0, 1, '44473', 1, '2023-06-12 23:06:02', '2023-07-03 04:57:49'),
(616, 935, 3, 0, 1, '68778', 1, '2023-06-13 06:52:47', '2023-07-03 04:57:49'),
(617, 936, 12, 0, 1, '6020', 1, '2023-06-13 12:59:49', '2023-07-03 04:57:49'),
(618, 937, 67, 0, 1, '21297', 1, '2023-06-13 21:18:15', '2023-07-03 04:57:49'),
(619, 938, 67, 0, 1, '5576', 1, '2023-06-14 03:12:10', '2023-07-03 04:57:49'),
(620, 938, 40, 0, 1, '9461', 1, '2023-06-14 03:13:24', '2023-07-03 04:57:49'),
(621, 939, 22, 0, 1, '25800', 1, '2023-06-14 07:29:19', '2023-07-03 04:57:49'),
(622, 939, 66, 0, 1, '113686', 1, '2023-06-14 07:59:40', '2023-07-03 04:57:49'),
(623, 940, 66, 0, 1, '191629', 1, '2023-06-14 20:01:49', '2023-07-03 04:57:49'),
(624, 273, 18, 0, 2, '22249', 1, '2023-06-15 01:19:20', '2023-07-03 04:57:49'),
(625, 925, 20, 0, 1, '6636', 1, '2023-06-15 16:21:04', '2023-07-03 04:57:49'),
(626, 945, 44, 0, 1, '3430', 1, '2023-06-16 17:09:37', '2023-07-03 04:57:49'),
(627, 946, 20, 0, 1, '77706', 1, '2023-06-17 08:50:28', '2023-07-03 04:57:49'),
(628, 948, 12, 0, 1, '11460', 1, '2023-06-17 10:12:13', '2023-07-03 04:57:49'),
(629, 947, 20, 0, 1, '20316', 1, '2023-06-17 11:10:14', '2023-07-03 04:57:49'),
(630, 947, 22, 0, 1, '182117', 1, '2023-06-17 11:25:10', '2023-07-03 04:57:49'),
(631, 947, 2, 0, 1, '2561', 1, '2023-06-17 11:25:31', '2023-07-03 04:57:49'),
(632, 946, 41, 0, 1, '5688', 1, '2023-06-17 11:40:09', '2023-07-03 04:57:49'),
(633, 949, 44, 0, 1, '27375', 1, '2023-06-17 11:47:43', '2023-07-03 04:57:49'),
(634, 949, 37, 0, 1, '4642', 1, '2023-06-17 11:48:02', '2023-07-03 04:57:49'),
(635, 954, 12, 0, 1, '29145', 1, '2023-06-17 15:14:17', '2023-07-03 04:57:49'),
(636, 954, 51, 0, 1, '8962', 1, '2023-06-17 15:31:34', '2023-07-03 04:57:49'),
(637, 955, 22, 0, 1, '10878', 1, '2023-06-17 19:18:02', '2023-07-03 04:57:49'),
(638, 955, 44, 0, 1, '1797', 1, '2023-06-17 19:19:25', '2023-07-03 04:57:49'),
(639, 955, 23, 0, 1, '49121', 1, '2023-06-17 19:20:11', '2023-07-03 04:57:49'),
(640, 956, 20, 0, 1, '188442', 0, '2023-06-17 23:58:40', '2023-07-03 04:57:49'),
(641, 956, 67, 0, 1, '91912', 1, '2023-06-17 23:59:12', '2023-07-03 04:57:49'),
(642, 834, 39, 0, 1, '192405', 1, '2023-06-18 00:53:21', '2023-07-03 04:57:49'),
(643, 957, 23, 0, 1, '21232', 1, '2023-06-18 00:59:08', '2023-07-03 04:57:49'),
(644, 834, 9, 0, 1, '5099', 1, '2023-06-18 01:01:54', '2023-07-03 04:57:49'),
(645, 946, 43, 0, 1, '13386', 1, '2023-06-18 08:54:27', '2023-07-03 04:57:49'),
(646, 954, 20, 0, 1, '182508', 1, '2023-06-18 14:24:12', '2023-07-03 04:57:49'),
(647, 959, 23, 0, 1, '8422', 1, '2023-06-18 17:07:59', '2023-07-03 04:57:49'),
(648, 901, 33, 0, 1, '50594', 1, '2023-06-19 13:27:48', '2023-07-03 04:57:49'),
(649, 963, 20, 0, 1, '17784', 1, '2023-06-19 20:46:34', '2023-07-03 04:57:49'),
(650, 963, 44, 0, 1, '99015', 1, '2023-06-19 21:41:20', '2023-07-03 04:57:49'),
(651, 964, 18, 0, 2, '175990', 1, '2023-06-19 22:46:32', '2023-07-03 04:57:49'),
(652, 963, 23, 0, 1, '106436', 1, '2023-06-19 23:05:43', '2023-07-03 04:57:49'),
(653, 823, 25, 0, 1, '7434', 1, '2023-06-20 13:11:35', '2023-07-03 04:57:49'),
(654, 823, 40, 0, 1, '899', 1, '2023-06-20 13:15:06', '2023-07-03 04:57:49'),
(655, 968, 18, 0, 2, '41182', 1, '2023-06-21 02:12:21', '2023-07-03 04:57:49'),
(656, 969, 40, 0, 1, '58500', 1, '2023-06-21 03:39:29', '2023-07-03 04:57:49'),
(657, 970, 67, 0, 1, '128521', 1, '2023-06-21 05:34:02', '2023-07-03 04:57:49'),
(658, 970, 12, 0, 1, '96871', 1, '2023-06-21 05:37:44', '2023-07-03 04:57:49'),
(659, 970, 22, 0, 1, '7009', 1, '2023-06-21 05:49:53', '2023-07-03 04:57:49'),
(660, 971, 13, 0, 2, '63918', 1, '2023-06-21 08:34:44', '2023-07-03 04:57:49'),
(661, 971, 66, 0, 1, '3502', 1, '2023-06-21 08:34:58', '2023-07-03 04:57:49'),
(662, 971, 2, 0, 1, '2153', 1, '2023-06-21 08:35:07', '2023-07-03 04:57:49'),
(663, 971, 67, 0, 1, '5658', 1, '2023-06-21 08:35:19', '2023-07-03 04:57:49'),
(664, 972, 2, 0, 1, '62094', 1, '2023-06-21 09:05:50', '2023-07-03 04:57:49'),
(665, 971, 38, 0, 1, '2360', 1, '2023-06-21 10:33:09', '2023-07-03 04:57:49'),
(666, 709, 67, 0, 1, '27708', 1, '2023-06-21 19:54:47', '2023-07-03 04:57:49'),
(667, 925, 44, 0, 1, '1650', 1, '2023-06-21 20:23:10', '2023-07-03 04:57:49'),
(668, 977, 44, 0, 1, '46312', 1, '2023-06-22 18:05:41', '2023-07-03 04:57:49'),
(669, 979, 44, 0, 1, '8345', 1, '2023-06-23 00:39:26', '2023-07-03 04:57:49'),
(670, 979, 40, 0, 1, '3000', 1, '2023-06-23 00:39:40', '2023-07-03 04:57:49'),
(671, 980, 44, 0, 1, '10398', 1, '2023-06-23 04:54:53', '2023-07-03 04:57:49'),
(672, 970, 10, 0, 1, '121099', 1, '2023-06-24 06:42:20', '2023-07-03 04:57:49'),
(673, 985, 67, 0, 1, '14010', 1, '2023-06-24 21:55:22', '2023-07-03 04:57:49'),
(674, 985, 44, 0, 1, '4631', 1, '2023-06-24 21:55:50', '2023-07-03 04:57:49'),
(675, 985, 15, 0, 1, '11786', 1, '2023-06-24 21:56:07', '2023-07-03 04:57:49'),
(676, 987, 7, 0, 1, '113397', 1, '2023-06-25 21:00:49', '2023-07-03 04:57:49'),
(677, 985, 58, 0, 1, '13379', 1, '2023-06-25 21:33:05', '2023-07-03 04:57:49'),
(678, 985, 14, 0, 2, '2185', 1, '2023-06-25 22:09:37', '2023-07-03 04:57:49'),
(679, 988, 42, 0, 1, '14673', 1, '2023-06-26 05:33:45', '2023-07-03 04:57:49'),
(680, 989, 68, 0, 1, '19027', 1, '2023-06-26 12:02:43', '2023-07-03 04:57:49'),
(681, 989, 67, 0, 1, '5075', 1, '2023-06-26 12:03:50', '2023-07-03 04:57:49'),
(682, 640, 2, 0, 1, '11966', 1, '2023-06-26 20:10:38', '2023-07-03 04:57:49'),
(683, 259, 43, 0, 1, '9117', 1, '2023-06-26 20:12:13', '2023-07-03 04:57:49'),
(684, 640, 51, 0, 1, '43111', 1, '2023-06-26 20:12:21', '2023-07-03 04:57:49'),
(685, 640, 44, 0, 1, '6129', 1, '2023-06-26 20:18:39', '2023-07-03 04:57:49'),
(686, 992, 44, 0, 1, '81011', 1, '2023-06-27 13:16:37', '2023-07-03 04:57:49'),
(687, 993, 44, 0, 1, '118588', 1, '2023-06-27 14:15:42', '2023-07-03 04:57:49'),
(688, 993, 23, 0, 1, '5952', 1, '2023-06-27 16:48:18', '2023-07-03 04:57:49'),
(689, 993, 22, 0, 1, '3386', 1, '2023-06-27 16:49:35', '2023-07-03 04:57:49'),
(690, 992, 20, 0, 1, '43446', 1, '2023-06-27 17:48:40', '2023-07-03 04:57:49'),
(691, 683, 20, 0, 1, '19144', 1, '2023-06-27 18:27:12', '2023-07-03 04:57:49'),
(692, 992, 38, 0, 1, '5118', 1, '2023-06-27 20:04:01', '2023-07-03 04:57:49'),
(693, 995, 43, 0, 1, '17369', 1, '2023-06-29 18:20:54', '2023-07-03 04:57:49'),
(694, 995, 18, 0, 2, '8838', 1, '2023-06-29 18:23:42', '2023-07-03 04:57:49'),
(695, 995, 48, 0, 1, '56462', 1, '2023-06-29 18:25:02', '2023-07-03 04:57:49'),
(696, 995, 45, 0, 1, '5552', 1, '2023-06-29 18:25:16', '2023-07-03 04:57:49'),
(697, 995, 47, 0, 1, '4962', 1, '2023-06-29 18:25:57', '2023-07-03 04:57:49'),
(698, 995, 24, 0, 1, '13893', 1, '2023-06-29 19:38:17', '2023-07-03 04:57:49'),
(699, 996, 22, 0, 1, '85006', 1, '2023-06-30 02:22:11', '2023-07-03 04:57:49'),
(700, 996, 44, 0, 1, '14052', 1, '2023-06-30 02:23:14', '2023-07-03 04:57:49'),
(701, 996, 46, 0, 1, '3715', 1, '2023-06-30 02:23:54', '2023-07-03 04:57:49'),
(702, 697, 22, 0, 1, '79791', 1, '2023-06-30 06:53:15', '2023-07-03 04:57:49'),
(703, 380, 67, 0, 1, '15218', 1, '2023-06-30 18:12:47', '2023-07-03 04:57:49'),
(704, 997, 7, 0, 2, '12009', 1, '2023-06-30 23:40:55', '2023-07-03 04:57:49'),
(705, 998, 37, 0, 1, '13117', 1, '2023-06-30 23:46:24', '2023-07-03 04:57:49'),
(706, 998, 44, 0, 1, '9665', 1, '2023-06-30 23:47:17', '2023-07-03 04:57:49'),
(707, 997, 5, 0, 2, '189125', 0, '2023-07-01 00:16:03', '2023-07-03 04:57:49'),
(708, 997, 13, 0, 2, '2871', 1, '2023-07-01 00:17:12', '2023-07-03 04:57:49'),
(709, 970, 44, 0, 1, '58780', 1, '2023-07-01 21:44:47', '2023-07-03 04:57:49'),
(710, 970, 34, 0, 1, '3255', 1, '2023-07-01 21:47:23', '2023-07-03 04:57:49'),
(711, 970, 51, 0, 1, '5619', 1, '2023-07-01 21:49:58', '2023-07-03 04:57:49'),
(712, 1001, 12, 0, 1, '9182', 1, '2023-07-02 02:16:57', '2023-07-03 04:57:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_section`
--
ALTER TABLE `app_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_banner`
--
ALTER TABLE `channel_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_section`
--
ALTER TABLE `channel_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_detail`
--
ALTER TABLE `package_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_option`
--
ALTER TABLE `payment_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_transction`
--
ALTER TABLE `rent_transction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_video`
--
ALTER TABLE `rent_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_link`
--
ALTER TABLE `tbl_social_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tv_login`
--
ALTER TABLE `tbl_tv_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_show`
--
ALTER TABLE `tv_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_show_video`
--
ALTER TABLE `tv_show_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_watch`
--
ALTER TABLE `video_watch`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_section`
--
ALTER TABLE `app_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `channel_banner`
--
ALTER TABLE `channel_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `channel_section`
--
ALTER TABLE `channel_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_detail`
--
ALTER TABLE `package_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_option`
--
ALTER TABLE `payment_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rent_transction`
--
ALTER TABLE `rent_transction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `rent_video`
--
ALTER TABLE `rent_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social_link`
--
ALTER TABLE `tbl_social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tv_login`
--
ALTER TABLE `tbl_tv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tv_show`
--
ALTER TABLE `tv_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tv_show_video`
--
ALTER TABLE `tv_show_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `video_watch`
--
ALTER TABLE `video_watch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
