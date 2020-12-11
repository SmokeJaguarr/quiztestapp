-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 02:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `attemp_count` int(11) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `user_id`, `test_id`, `question_id`, `option_id`, `attemp_count`, `correct`, `session_id`, `created_at`) VALUES
(40, 2, 2, 6, 1, 0, 0, '5fd255bae282a', '2020-12-10 19:07:08'),
(41, 2, 2, 7, 6, 0, 1, '5fd255bae282a', '2020-12-10 19:07:10'),
(42, 2, 2, 8, 10, 0, 1, '5fd255bae282a', '2020-12-10 19:07:11'),
(43, 2, 2, 6, 3, 0, 0, '5fd255d220c57', '2020-12-10 19:07:33'),
(44, 2, 2, 7, 6, 0, 1, '5fd255d220c57', '2020-12-10 19:07:39'),
(45, 2, 2, 8, 10, 0, 1, '5fd255d220c57', '2020-12-10 19:07:45'),
(46, 2, 2, 6, 2, 0, 0, '5fd25648542d7', '2020-12-10 19:09:34'),
(47, 2, 2, 7, 7, 0, 0, '5fd25648542d7', '2020-12-10 19:09:38'),
(48, 2, 2, 8, 10, 0, 1, '5fd25648542d7', '2020-12-10 19:09:41'),
(49, 2, 2, 6, 1, 0, 0, '5fd25de19801e', '2020-12-10 19:42:59'),
(50, 2, 2, 7, 6, 0, 1, '5fd25de19801e', '2020-12-10 19:43:01'),
(51, 2, 2, 8, 10, 0, 1, '5fd25de19801e', '2020-12-10 19:43:03'),
(52, 2, 2, 6, 1, 0, 0, '5fd260121c45a', '2020-12-10 19:51:23'),
(53, 2, 2, 7, 6, 0, 1, '5fd260121c45a', '2020-12-10 19:51:25'),
(54, 2, 2, 8, 10, 0, 1, '5fd260121c45a', '2020-12-10 19:51:27'),
(55, 2, 2, 6, 1, 0, 0, '5fd260462f78b', '2020-12-10 19:52:07'),
(56, 2, 2, 7, 6, 0, 1, '5fd260462f78b', '2020-12-10 19:52:13'),
(57, 2, 2, 8, 10, 0, 1, '5fd260462f78b', '2020-12-10 19:52:16'),
(58, 2, 2, 6, 1, 0, 0, '5fd263336006f', '2020-12-10 20:04:37'),
(59, 2, 2, 7, 6, 0, 1, '5fd263336006f', '2020-12-10 20:04:40'),
(60, 2, 2, 8, 10, 0, 1, '5fd263336006f', '2020-12-10 20:04:42'),
(61, 2, 2, 6, 1, 0, 0, '5fd263dd3b86f', '2020-12-10 20:07:27'),
(62, 2, 2, 7, 6, 0, 1, '5fd263dd3b86f', '2020-12-10 20:07:28'),
(63, 2, 2, 8, 10, 0, 1, '5fd263dd3b86f', '2020-12-10 20:07:29'),
(64, 2, 2, 6, 1, 0, 0, '5fd264168c849', '2020-12-10 20:08:23'),
(65, 2, 2, 7, 6, 0, 1, '5fd264168c849', '2020-12-10 20:08:25'),
(66, 2, 2, 8, 10, 0, 1, '5fd264168c849', '2020-12-10 20:08:26'),
(67, 2, 2, 6, 1, 0, 0, '5fd2644e7d91f', '2020-12-10 20:09:21'),
(68, 2, 2, 7, 8, 0, 1, '5fd2644e7d91f', '2020-12-10 20:09:23'),
(69, 2, 2, 8, 10, 0, 1, '5fd2644e7d91f', '2020-12-10 20:09:24'),
(70, 2, 2, 6, 1, 0, 0, '5fd2644e7d91f', '2020-12-10 20:26:29'),
(71, 2, 2, 7, 6, 0, 1, '5fd2644e7d91f', '2020-12-10 20:26:30'),
(72, 2, 2, 8, 10, 0, 1, '5fd2644e7d91f', '2020-12-10 20:26:32'),
(73, 2, 2, 6, 2, 0, 0, '5fd2644e7d91f', '2020-12-10 20:26:48'),
(74, 2, 2, 7, 7, 0, 0, '5fd2644e7d91f', '2020-12-10 20:26:51'),
(75, 2, 2, 8, 10, 0, 1, '5fd2644e7d91f', '2020-12-10 20:26:53'),
(76, 2, 2, 6, 3, 0, 0, '5fd2644e7d91f', '2020-12-10 20:26:58'),
(77, 2, 2, 7, 8, 0, 1, '5fd2644e7d91f', '2020-12-10 20:27:00'),
(78, 2, 2, 8, 10, 0, 1, '5fd2644e7d91f', '2020-12-10 20:27:01'),
(79, 2, 2, 6, 1, 0, 0, '5fd268d0bb1a6', '2020-12-10 20:28:34'),
(80, 2, 2, 7, 6, 0, 1, '5fd268d0bb1a6', '2020-12-10 20:28:35'),
(81, 2, 2, 8, 10, 0, 1, '5fd268d0bb1a6', '2020-12-10 20:28:36'),
(82, 2, 2, 6, 1, 0, 0, '5fd2697bbd5f6', '2020-12-10 20:31:25'),
(83, 2, 2, 7, 6, 0, 1, '5fd2697bbd5f6', '2020-12-10 20:31:27'),
(84, 2, 2, 8, 10, 0, 1, '5fd2697bbd5f6', '2020-12-10 20:31:28'),
(85, 2, 2, 6, 1, 0, 0, '5fd2698bdd873', '2020-12-10 20:31:41'),
(86, 2, 2, 7, 6, 0, 1, '5fd2698bdd873', '2020-12-10 20:31:42'),
(87, 2, 2, 8, 10, 0, 1, '5fd2698bdd873', '2020-12-10 20:31:45'),
(88, 2, 2, 6, 1, 0, 0, '5fd26a8a352ac', '2020-12-10 20:35:57'),
(89, 2, 2, 7, 6, 0, 1, '5fd26a8a352ac', '2020-12-10 20:35:59'),
(90, 2, 2, 8, 10, 0, 1, '5fd26a8a352ac', '2020-12-10 20:36:01'),
(91, 2, 2, 6, 1, 0, 0, '5fd26ad363b26', '2020-12-10 20:37:09'),
(92, 2, 2, 7, 6, 0, 1, '5fd26ad363b26', '2020-12-10 20:37:10'),
(93, 2, 2, 8, 10, 0, 1, '5fd26ad363b26', '2020-12-10 20:37:12'),
(94, 2, 2, 6, 3, 0, 0, '5fd26cc6dfefc', '2020-12-10 20:45:36'),
(95, 2, 2, 7, 8, 0, 1, '5fd26cc6dfefc', '2020-12-10 20:45:38'),
(96, 2, 2, 8, 10, 0, 1, '5fd26cc6dfefc', '2020-12-10 20:45:47'),
(97, 2, 2, 6, 1, 0, 0, '5fd26d1aaa549', '2020-12-10 20:46:52'),
(98, 2, 2, 7, 7, 0, 0, '5fd26d1aaa549', '2020-12-10 20:46:54'),
(99, 2, 2, 8, 9, 0, 0, '5fd26d1aaa549', '2020-12-10 20:46:56'),
(100, 2, 2, 6, 2, 0, 0, '5fd26d60b5c87', '2020-12-10 20:48:06'),
(101, 2, 2, 7, 6, 0, 1, '5fd26d60b5c87', '2020-12-10 20:48:10'),
(102, 2, 2, 8, 10, 0, 1, '5fd26d60b5c87', '2020-12-10 20:48:14'),
(103, 2, 2, 6, 2, 0, 0, '5fd26da5c77cc', '2020-12-10 20:49:15'),
(104, 2, 2, 7, 6, 0, 1, '5fd26da5c77cc', '2020-12-10 20:49:20'),
(105, 2, 2, 8, 10, 0, 1, '5fd26da5c77cc', '2020-12-10 20:49:23'),
(106, 2, 2, 6, 4, 0, 1, '5fd26e3238e86', '2020-12-10 20:52:35'),
(107, 2, 2, 7, 8, 0, 1, '5fd26e3238e86', '2020-12-10 20:52:40'),
(108, 2, 2, 8, 10, 0, 1, '5fd26e3238e86', '2020-12-10 20:52:44'),
(109, 2, 2, 6, 1, 0, 0, '5fd26fbc10379', '2020-12-10 20:58:06'),
(110, 2, 2, 7, 6, 0, 1, '5fd26fbc10379', '2020-12-10 20:58:08'),
(111, 2, 2, 8, 10, 0, 1, '5fd26fbc10379', '2020-12-10 20:58:10'),
(112, 2, 2, 6, 1, 0, 0, '5fd2824e099cc', '2020-12-10 22:17:19'),
(113, 2, 2, 7, 8, 0, 1, '5fd2824e099cc', '2020-12-10 22:17:21'),
(114, 2, 2, 8, 10, 0, 1, '5fd2824e099cc', '2020-12-10 22:17:22'),
(115, 2, 2, 6, 1, 0, 0, '5fd2875048393', '2020-12-10 22:38:42'),
(116, 2, 2, 7, 8, 0, 1, '5fd2875048393', '2020-12-10 22:38:43'),
(117, 2, 2, 8, 9, 0, 0, '5fd2875048393', '2020-12-10 22:38:45'),
(118, 2, 2, 6, 1, 0, 0, '5fd28bb79c3c1', '2020-12-10 22:57:29'),
(119, 2, 2, 7, 6, 0, 1, '5fd28bb79c3c1', '2020-12-10 22:57:31'),
(120, 2, 2, 8, 10, 0, 1, '5fd28bb79c3c1', '2020-12-10 22:57:32'),
(121, 2, 2, 6, 1, 0, 0, '5fd32cdda2827', '2020-12-11 10:25:03'),
(122, 2, 2, 7, 8, 0, 1, '5fd32cdda2827', '2020-12-11 10:25:07'),
(123, 2, 2, 8, 10, 0, 1, '5fd32cdda2827', '2020-12-11 10:25:09'),
(124, 2, 2, 6, 1, 0, 0, '5fd32ed2081a3', '2020-12-11 10:33:41'),
(125, 2, 2, 7, 6, 0, 1, '5fd32ed2081a3', '2020-12-11 10:38:17'),
(126, 2, 2, 8, 9, 0, 0, '5fd32ed2081a3', '2020-12-11 11:27:40'),
(127, 2, 2, 6, 1, 0, 0, '5fd33ba454ba5', '2020-12-11 11:28:07'),
(128, 2, 2, 7, 6, 0, 1, '5fd33ba454ba5', '2020-12-11 11:28:09'),
(129, 2, 2, 8, 10, 0, 1, '5fd33ba454ba5', '2020-12-11 11:28:11'),
(130, 2, 2, 6, 4, 0, 1, '5fd33c5f84656', '2020-12-11 11:31:13'),
(131, 2, 2, 7, 6, 0, 1, '5fd33c5f84656', '2020-12-11 11:31:15'),
(132, 2, 2, 8, 9, 0, 0, '5fd33c5f84656', '2020-12-11 11:31:17'),
(133, 2, 2, 6, 5, 0, 0, '5fd33c6983442', '2020-12-11 11:31:23'),
(134, 2, 2, 7, 7, 0, 0, '5fd33c6983442', '2020-12-11 11:31:26'),
(135, 2, 2, 8, 9, 0, 0, '5fd33c6983442', '2020-12-11 11:31:28'),
(136, 2, 2, 6, 5, 0, 0, '5fd33c7621ec4', '2020-12-11 11:31:36'),
(137, 2, 2, 7, 8, 0, 1, '5fd33c7621ec4', '2020-12-11 11:31:38'),
(138, 2, 2, 8, 9, 0, 0, '5fd33c7621ec4', '2020-12-11 11:32:14'),
(139, 2, 2, 6, 1, 0, 0, '5fd34144a03d5', '2020-12-11 11:52:07'),
(140, 2, 2, 7, 8, 0, 1, '5fd34144a03d5', '2020-12-11 11:52:08'),
(141, 2, 2, 8, 10, 0, 1, '5fd34144a03d5', '2020-12-11 11:52:16'),
(142, 2, 2, 6, 1, 0, 0, '5fd3423a3a35e', '2020-12-11 11:56:11'),
(143, 2, 2, 7, 6, 0, 1, '5fd3423a3a35e', '2020-12-11 11:56:13'),
(144, 2, 2, 8, 9, 0, 0, '5fd3423a3a35e', '2020-12-11 11:56:15'),
(145, 2, 2, 6, 1, 0, 0, '5fd34824d731f', '2020-12-11 12:24:34'),
(146, 2, 2, 7, 7, 0, 0, '5fd34824d731f', '2020-12-11 12:24:41'),
(147, 2, 2, 8, 9, 0, 0, '5fd34824d731f', '2020-12-11 12:25:26'),
(148, 2, 2, 6, 1, 0, 0, '5fd34956f314e', '2020-12-11 12:35:57'),
(149, 2, 2, 7, 8, 0, 1, '5fd34956f314e', '2020-12-11 12:35:59'),
(150, 2, 2, 8, 9, 0, 0, '5fd34956f314e', '2020-12-11 12:36:01'),
(151, 2, 2, 6, 1, 0, 0, '5fd34e3277e2c', '2020-12-11 12:47:17'),
(152, 2, 2, 7, 7, 0, 0, '5fd34e3277e2c', '2020-12-11 12:47:19'),
(153, 2, 2, 8, 9, 0, 0, '5fd34e3277e2c', '2020-12-11 12:47:21'),
(154, 2, 2, 6, 1, 0, 0, '5fd34fa87fe91', '2020-12-11 12:53:40'),
(155, 2, 2, 7, 8, 0, 1, '5fd34fa87fe91', '2020-12-11 12:59:55'),
(156, 2, 2, 8, 10, 0, 1, '5fd34fa87fe91', '2020-12-11 12:59:58'),
(157, 2, 2, 6, 5, 0, 0, '5fd351458e069', '2020-12-11 13:00:29'),
(158, 2, 2, 7, 6, 0, 1, '5fd351458e069', '2020-12-11 13:01:00'),
(159, 2, 2, 8, 9, 0, 0, '5fd351458e069', '2020-12-11 13:01:05'),
(160, 2, 2, 6, 1, 0, 0, '5fd351b53e03d', '2020-12-11 13:02:27'),
(161, 2, 2, 7, 7, 0, 0, '5fd351b53e03d', '2020-12-11 13:02:31'),
(162, 2, 2, 8, 9, 0, 0, '5fd351b53e03d', '2020-12-11 13:02:34'),
(163, 2, 3, 9, 12, 0, 0, '5fd35797549ef', '2020-12-11 13:27:23'),
(164, 2, 3, 10, 16, 0, 0, '5fd35797549ef', '2020-12-11 13:27:30'),
(165, 2, 3, 9, 11, 0, 1, '5fd357a72563a', '2020-12-11 13:27:49'),
(166, 2, 3, 10, 13, 0, 1, '5fd357a72563a', '2020-12-11 13:27:52'),
(167, 2, 2, 6, 2, 0, 0, '5fd357ee75c8b', '2020-12-11 13:28:48'),
(168, 2, 2, 7, 7, 0, 0, '5fd357ee75c8b', '2020-12-11 13:28:49'),
(169, 2, 2, 8, 10, 0, 1, '5fd357ee75c8b', '2020-12-11 13:32:25'),
(170, 2, 4, 11, 23, 0, 1, '5fd35a76dbb9e', '2020-12-11 13:39:40'),
(171, 2, 4, 12, 24, 0, 1, '5fd35a76dbb9e', '2020-12-11 13:39:45'),
(172, 2, 3, 9, 11, 0, 1, '5fd35a8f04d71', '2020-12-11 13:40:00'),
(173, 2, 3, 10, 16, 0, 0, '5fd35a8f04d71', '2020-12-11 13:40:19'),
(174, 2, 2, 6, 4, 0, 1, '5fd35ab264f49', '2020-12-11 13:40:51'),
(175, 2, 2, 7, 8, 0, 1, '5fd35ab264f49', '2020-12-11 13:40:53'),
(176, 2, 2, 8, 10, 0, 1, '5fd35ab264f49', '2020-12-11 13:40:56'),
(177, 3, 2, 6, 1, 0, 0, '5fd35c92395c2', '2020-12-11 13:48:36'),
(178, 3, 2, 7, 8, 0, 1, '5fd35c92395c2', '2020-12-11 13:48:38'),
(179, 3, 2, 8, 10, 0, 1, '5fd35c92395c2', '2020-12-11 13:48:39'),
(180, 3, 2, 6, 1, 0, 0, '5fd35cca97e23', '2020-12-11 13:49:32'),
(181, 3, 2, 7, 6, 0, 1, '5fd35cca97e23', '2020-12-11 13:49:33'),
(182, 3, 2, 8, 10, 0, 1, '5fd35cca97e23', '2020-12-11 13:49:35'),
(183, 3, 2, 6, 1, 0, 0, '5fd35cf176e8f', '2020-12-11 13:50:10'),
(184, 3, 2, 7, 6, 0, 1, '5fd35cf176e8f', '2020-12-11 13:50:12'),
(185, 3, 2, 8, 10, 0, 1, '5fd35cf176e8f', '2020-12-11 13:50:13'),
(186, 2, 4, 11, 23, 0, 1, '5fd35e4a38dc3', '2020-12-11 13:56:02'),
(187, 2, 4, 12, 24, 0, 1, '5fd35e4a38dc3', '2020-12-11 13:56:04'),
(188, 2, 2, 6, 1, 0, 0, '5fd35e58de25f', '2020-12-11 13:56:10'),
(189, 2, 2, 7, 7, 0, 0, '5fd35e58de25f', '2020-12-11 13:56:11'),
(190, 2, 2, 8, 17, 0, 0, '5fd35e58de25f', '2020-12-11 13:56:13'),
(191, 8, 2, 6, 1, 0, 0, '5fd35fa2d5b93', '2020-12-11 14:01:40'),
(192, 8, 2, 7, 6, 0, 1, '5fd35fa2d5b93', '2020-12-11 14:01:42'),
(193, 8, 2, 8, 17, 0, 0, '5fd35fa2d5b93', '2020-12-11 14:01:44'),
(194, 2, 4, 11, 22, 0, 0, '5fd3659566a99', '2020-12-11 14:27:03'),
(195, 2, 4, 12, 24, 0, 1, '5fd3659566a99', '2020-12-11 14:27:04'),
(196, 2, 4, 11, 22, 0, 0, '5fd365b3a2da9', '2020-12-11 14:27:33'),
(197, 2, 4, 12, 24, 0, 1, '5fd365b3a2da9', '2020-12-11 14:27:34'),
(198, 2, 2, 6, 1, 0, 0, '5fd3666bef991', '2020-12-11 14:30:37'),
(199, 2, 2, 7, 6, 0, 1, '5fd3666bef991', '2020-12-11 14:30:39'),
(200, 2, 2, 8, 10, 0, 1, '5fd3666bef991', '2020-12-11 14:30:41'),
(201, 2, 3, 9, 11, 0, 1, '5fd36675aca8b', '2020-12-11 14:30:47'),
(202, 2, 3, 10, 16, 0, 0, '5fd36675aca8b', '2020-12-11 14:30:49'),
(203, 2, 4, 11, 22, 0, 0, '5fd3667d28019', '2020-12-11 14:30:55'),
(204, 2, 4, 12, 24, 0, 1, '5fd3667d28019', '2020-12-11 14:30:57'),
(205, 2, 2, 6, 1, 0, 0, '5fd366d2152ec', '2020-12-11 14:32:19'),
(206, 2, 2, 7, 6, 0, 1, '5fd366d2152ec', '2020-12-11 14:32:21'),
(207, 2, 2, 8, 10, 0, 1, '5fd366d2152ec', '2020-12-11 14:32:31'),
(208, 2, 4, 11, 21, 0, 0, '5fd36729eae55', '2020-12-11 14:33:55'),
(209, 2, 4, 12, 25, 0, 0, '5fd36729eae55', '2020-12-11 14:33:57'),
(210, 2, 4, 11, 22, 0, 0, '5fd36739e5443', '2020-12-11 14:34:03'),
(211, 2, 4, 12, 25, 0, 0, '5fd36739e5443', '2020-12-11 14:34:04'),
(212, 2, 2, 6, 2, 0, 0, '5fd3673f03a97', '2020-12-11 14:34:08'),
(213, 2, 2, 7, 6, 0, 1, '5fd3673f03a97', '2020-12-11 14:34:09'),
(214, 2, 2, 8, 10, 0, 1, '5fd3673f03a97', '2020-12-11 14:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `finished_test`
--

CREATE TABLE `finished_test` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finished_test`
--

INSERT INTO `finished_test` (`id`, `test_id`, `User_id`, `correct_answers`, `session_id`, `created_at`) VALUES
(1, 2, 2, 0, '5fd26d1aaa549', '2020-12-10 20:47:24'),
(2, 2, 2, 2, '5fd26d60b5c87', '2020-12-10 20:48:14'),
(3, 2, 2, 2, '5fd26da5c77cc', '2020-12-10 20:49:23'),
(4, 2, 2, 3, '5fd26e3238e86', '2020-12-10 20:52:44'),
(5, 2, 2, 2, '5fd26fbc10379', '2020-12-10 20:58:10'),
(6, 2, 2, 2, '5fd2824e099cc', '2020-12-10 22:17:22'),
(7, 2, 2, 1, '5fd2875048393', '2020-12-10 22:38:45'),
(8, 2, 2, 2, '5fd28bb79c3c1', '2020-12-10 22:57:32'),
(9, 2, 2, 2, '5fd32cdda2827', '2020-12-11 10:25:09'),
(10, 2, 2, 1, '5fd32ed2081a3', '2020-12-11 11:27:40'),
(11, 2, 2, 2, '5fd33ba454ba5', '2020-12-11 11:28:11'),
(12, 2, 2, 2, '5fd33c5f84656', '2020-12-11 11:31:17'),
(13, 2, 2, 0, '5fd33c6983442', '2020-12-11 11:31:28'),
(14, 2, 2, 1, '5fd33c7621ec4', '2020-12-11 11:32:14'),
(15, 2, 2, 2, '5fd34144a03d5', '2020-12-11 11:52:17'),
(16, 2, 2, 1, '5fd3423a3a35e', '2020-12-11 11:56:15'),
(17, 2, 2, 0, '5fd34824d731f', '2020-12-11 12:25:26'),
(18, 2, 2, 1, '5fd34956f314e', '2020-12-11 12:36:01'),
(19, 2, 2, 0, '5fd34e3277e2c', '2020-12-11 12:47:22'),
(20, 2, 2, 2, '5fd34fa87fe91', '2020-12-11 12:59:58'),
(21, 2, 2, 1, '5fd351458e069', '2020-12-11 13:01:05'),
(22, 2, 2, 0, '5fd351b53e03d', '2020-12-11 13:02:34'),
(23, 3, 2, 0, '5fd35797549ef', '2020-12-11 13:27:30'),
(24, 3, 2, 2, '5fd357a72563a', '2020-12-11 13:27:52'),
(25, 2, 2, 1, '5fd357ee75c8b', '2020-12-11 13:32:25'),
(26, 4, 2, 2, '5fd35a76dbb9e', '2020-12-11 13:39:45'),
(27, 3, 2, 1, '5fd35a8f04d71', '2020-12-11 13:40:19'),
(28, 2, 2, 3, '5fd35ab264f49', '2020-12-11 13:40:56'),
(29, 2, 3, 2, '5fd35c92395c2', '2020-12-11 13:48:39'),
(30, 2, 3, 2, '5fd35cca97e23', '2020-12-11 13:49:35'),
(31, 2, 3, 2, '5fd35cf176e8f', '2020-12-11 13:50:13'),
(32, 4, 2, 2, '5fd35e4a38dc3', '2020-12-11 13:56:04'),
(33, 2, 2, 0, '5fd35e58de25f', '2020-12-11 13:56:13'),
(34, 2, 8, 1, '5fd35fa2d5b93', '2020-12-11 14:01:44'),
(35, 4, 2, 1, '5fd3659566a99', '2020-12-11 14:27:04'),
(36, 4, 2, 1, '5fd365b3a2da9', '2020-12-11 14:27:35'),
(37, 2, 2, 2, '5fd3666bef991', '2020-12-11 14:30:41'),
(38, 3, 2, 1, '5fd36675aca8b', '2020-12-11 14:30:49'),
(39, 4, 2, 1, '5fd3667d28019', '2020-12-11 14:30:57'),
(40, 2, 2, 2, '5fd366d2152ec', '2020-12-11 14:32:31'),
(41, 4, 2, 0, '5fd36729eae55', '2020-12-11 14:33:57'),
(42, 4, 2, 0, '5fd36739e5443', '2020-12-11 14:34:04'),
(43, 2, 2, 2, '5fd3673f03a97', '2020-12-11 14:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `answer_bool` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `answer_bool`) VALUES
(1, 6, 'PreHypertext processor.', 0),
(2, 6, 'Hypertext Preprocessor', 0),
(3, 6, 'Hypertext Patheticprocessor', 0),
(4, 6, 'Hypertext processor', 1),
(5, 6, 'Just PHP', 0),
(6, 7, 'PHP syntax resembles Perl and C', 1),
(7, 7, 'PHP syntax resembles Python and Pearl', 0),
(8, 7, 'PHP syntax resembles C and Pearl', 1),
(9, 8, 'Write in command-line interpreter php -e', 0),
(10, 8, 'Write in command-line interpreter php -a', 1),
(11, 9, 'Inner join return rows when there is at least one match of rows between the tables', 1),
(12, 9, 'Inner join return rows when there is one match of rows between the tables', 0),
(13, 10, 'Full join return rows when there are matching rows in any one of the tables', 1),
(14, 10, 'Full join returns all the rows from the left hand side table and all the rows from the right hand side table.', 1),
(15, 10, 'Simply, it returns all the rows from Left hand side table even though there are no matches in the Right hand side table.', 0),
(16, 10, 'Simply, it returns all the rows from the right hand side table even though there are no matches in the left hand side table.', 0),
(17, 8, 'Write in command-line interpreter php -p', 0),
(21, 11, 'One time', 0),
(22, 11, 'One to ten times', 0),
(23, 11, 'As many times you want to', 1),
(24, 12, 'In Vue, props (or properties), are the way that we pass data from a parent component down to it\'s child components', 1),
(25, 12, 'In Vue, props (or properties), are the way that we can store data in components.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question_text`, `test_id`) VALUES
(6, 'What do the initials of PHP stand for?', 2),
(7, 'Which programming language does PHP resemble?', 2),
(8, 'How to run the interactive PHP shell from the command line interface?', 2),
(9, 'What is Inner Join.', 3),
(10, 'What is Full Join', 3),
(11, 'How many times you can reuse a component?', 4),
(12, 'What is props in Vue.js ?', 4);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `test_name`) VALUES
(2, 'PHP Basics'),
(3, 'Advanced SQL'),
(4, 'Vue.js components');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(2, 'Davis Talums', 'it@lh.lv', '$2y$10$Vt8NXmDyXwBAQ16rOYt6J.iyX0PCIYiQq3mTXv4D6EHwtAS6hii7O', '2020-12-09 21:23:23'),
(3, 'test2User', 'test2@test.com', '$2y$10$3T6wQJmwb3vtgy4DqWM2b.3AUofzecb.xUyjGtUEAyeNg8WKXwBOK', '2020-12-11 13:48:06'),
(4, 'sadsa', 'sadsad@sad.sda', '$2y$10$Jj6CgcTyXc4viGBsNdnqWui1Sba1lA2GqoWhcs/cyi1xy187mg6aK', '2020-12-11 13:56:57'),
(5, 'sadsad', 'it@lh.lv', '$2y$10$2c2K4i.2S2QLI8FQMJc6reA58DI3aWcDohP8fDmc0sdetnPE0Sl76', '2020-12-11 13:58:17'),
(7, 'test2User', 'test22@test.com2', '$2y$10$L1TtmKZYKaCWoGVa8jspjevMtrWzMOkaiGqCFa2upA4MKflpOFT6O', '2020-12-11 14:01:05'),
(8, 'Aivars', 'aivars@aivars.lv', '$2y$10$eAOQ4msl/xvvy0v6Nwb6rOArnlXiL/1BcxBOAxGrhkhX7l0ExaME2', '2020-12-11 14:01:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `finished_test`
--
ALTER TABLE `finished_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `finished_test`
--
ALTER TABLE `finished_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`),
  ADD CONSTRAINT `answer_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `answer_ibfk_4` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`);

--
-- Constraints for table `finished_test`
--
ALTER TABLE `finished_test`
  ADD CONSTRAINT `finished_test_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `finished_test_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
