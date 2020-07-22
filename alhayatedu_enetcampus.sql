-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2020 at 04:50 AM
-- Server version: 10.2.30-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alhayatedu_enetcampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `aims_user`
--

CREATE TABLE `aims_user` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_on` int(11) NOT NULL,
  `deleted_on` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aims_user`
--

INSERT INTO `aims_user` (`id`, `group_id`, `account_id`, `full_name`, `l_name`, `user_name`, `email`, `mobile_no`, `password`, `status`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(1, 1, 2, 'Misha ', '', 'misha', 'misha@gmail.com', '123', 'misha', 'Active', 0, 0, 0, 0),
(2, 1, 2, 'Salman', 'Raza', 'salman', 'salmanrazabwn@gmail.com', '03156402906', 'salman', '', 2147483647, 0, 0, 0),
(4, 1, 2, 'Faheem', 'Akram', 'faheem', 'salmanrazabwn@gmail.com', '03156402906', 'faheem', '', 2147483647, 0, 0, 0),
(5, 1, 11, 'Huzefa', 'Ahmad', 'huzefa', 'huzefa@gmail.com', '0201999992929', 'huzefa', 'Active', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `st_id`, `class_id`, `section_id`, `Date`, `attendance`) VALUES
(62, 11, 1, 3, '2019-09-15', 'Present'),
(63, 17, 1, 3, '2019-09-15', 'Absent'),
(64, 18, 1, 3, '2019-09-15', 'Leave'),
(65, 19, 1, 3, '2019-09-15', 'Present'),
(66, 20, 1, 3, '2019-09-15', 'Present'),
(67, 10, 1, 4, '2019-09-15', 'Present'),
(68, 12, 1, 4, '2019-09-15', 'Present'),
(69, 13, 1, 4, '2019-09-15', 'Present'),
(70, 14, 1, 4, '2019-09-15', 'Present'),
(71, 15, 1, 4, '2019-09-15', 'Absent'),
(72, 16, 1, 4, '2019-09-15', 'Absent'),
(73, 11, 5, 1, '2019-09-15', 'Present'),
(74, 17, 5, 1, '2019-09-15', 'Absent'),
(75, 18, 5, 1, '2019-09-15', 'Absent'),
(76, 19, 5, 1, '2019-09-15', 'Absent'),
(77, 20, 5, 1, '2019-09-15', 'Absent'),
(78, 10, 4, 1, '2019-09-15', 'Present'),
(79, 12, 4, 1, '2019-09-15', 'Present'),
(80, 13, 4, 1, '2019-09-15', 'Leave'),
(81, 14, 4, 1, '2019-09-15', 'Absent'),
(82, 15, 4, 1, '2019-09-15', 'Absent'),
(83, 16, 4, 1, '2019-09-15', 'Absent'),
(84, 21, 4, 2, '2019-09-15', 'Absent'),
(85, 22, 4, 2, '2019-09-15', 'Absent'),
(86, 23, 4, 2, '2019-09-15', 'Absent'),
(87, 24, 4, 3, '2019-09-15', 'Absent'),
(88, 25, 4, 3, '2019-09-15', 'Absent'),
(89, 26, 4, 3, '2019-09-15', 'Absent'),
(90, 27, 5, 2, '2019-09-15', 'Absent'),
(91, 28, 5, 2, '2019-09-15', 'Absent'),
(92, 29, 5, 2, '2019-09-15', 'Absent'),
(93, 30, 5, 3, '2019-09-15', 'Absent'),
(94, 10, 4, 1, '2019-09-16', 'Present'),
(95, 12, 4, 1, '2019-09-16', 'Present'),
(96, 13, 4, 1, '2019-09-16', 'Present'),
(97, 14, 4, 1, '2019-09-16', 'Present'),
(98, 15, 4, 1, '2019-09-16', 'Present'),
(99, 16, 4, 1, '2019-09-16', 'Absent'),
(100, 21, 4, 2, '2019-09-16', 'Present'),
(101, 22, 4, 2, '2019-09-16', 'Present'),
(102, 23, 4, 2, '2019-09-16', 'Absent'),
(103, 11, 5, 1, '2019-09-16', 'Present'),
(104, 17, 5, 1, '2019-09-16', 'Absent'),
(105, 18, 5, 1, '2019-09-16', 'Absent'),
(106, 19, 5, 1, '2019-09-16', 'Absent'),
(107, 20, 5, 1, '2019-09-16', 'Absent'),
(108, 10, 4, 1, '2019-09-17', 'Present'),
(109, 12, 4, 1, '2019-09-17', 'Absent'),
(110, 13, 4, 1, '2019-09-17', 'Absent'),
(111, 14, 4, 1, '2019-09-17', 'Absent'),
(112, 15, 4, 1, '2019-09-17', 'Present'),
(113, 16, 4, 1, '2019-09-17', 'Present'),
(114, 31, 4, 1, '2019-09-17', 'Present'),
(115, 11, 5, 1, '2019-09-17', 'Present'),
(116, 17, 5, 1, '2019-09-17', 'Absent'),
(117, 18, 5, 1, '2019-09-17', 'Absent'),
(118, 19, 5, 1, '2019-09-17', 'Absent'),
(119, 20, 5, 1, '2019-09-17', 'Absent'),
(120, 24, 4, 3, '2019-09-17', 'Present'),
(121, 25, 4, 3, '2019-09-17', 'Absent'),
(122, 26, 4, 3, '2019-09-17', 'Absent'),
(123, 21, 4, 2, '2019-09-17', 'Present'),
(124, 22, 4, 2, '2019-09-17', 'Absent'),
(125, 23, 4, 2, '2019-09-17', 'Absent'),
(126, 10, 4, 1, '2019-09-18', 'Present'),
(127, 12, 4, 1, '2019-09-18', 'Absent'),
(128, 13, 4, 1, '2019-09-18', 'Absent'),
(129, 14, 4, 1, '2019-09-18', 'Absent'),
(130, 15, 4, 1, '2019-09-18', 'Absent'),
(131, 16, 4, 1, '2019-09-18', 'Absent'),
(132, 31, 4, 1, '2019-09-18', 'Absent'),
(133, 16, 5, 4, '2019-09-21', 'Present'),
(134, 17, 5, 4, '2019-09-21', 'Absent'),
(135, 20, 5, 4, '2019-09-21', 'Absent'),
(136, 28, 5, 4, '2019-09-21', 'Present'),
(137, 32, 5, 4, '2019-09-21', 'Present'),
(138, 10, 4, 1, '2019-09-21', 'Present'),
(139, 11, 4, 1, '2019-09-21', 'Absent'),
(140, 12, 4, 1, '2019-09-21', 'Absent'),
(141, 13, 4, 1, '2019-09-21', 'Absent'),
(142, 15, 4, 1, '2019-09-21', 'Absent'),
(143, 27, 4, 1, '2019-09-21', 'Present'),
(144, 33, 4, 1, '2019-09-21', 'Present'),
(145, 36, 8, 6, '2019-09-21', 'Absent'),
(146, 36, 8, 6, '2019-09-22', 'Absent'),
(147, 15, 5, 4, '2019-09-24', 'Present'),
(148, 16, 5, 4, '2019-09-24', 'Absent'),
(149, 17, 5, 4, '2019-09-24', 'Absent'),
(150, 20, 5, 4, '2019-09-24', 'Absent'),
(151, 28, 5, 4, '2019-09-24', 'Absent'),
(152, 32, 5, 4, '2019-09-24', 'Leave'),
(153, 12, 4, 1, '2019-10-01', 'Present'),
(154, 13, 4, 1, '2019-10-01', 'Absent'),
(155, 27, 4, 1, '2019-10-01', 'Absent'),
(156, 33, 4, 1, '2019-10-01', 'Absent'),
(157, 9, 4, 2, '2019-10-01', 'Absent'),
(158, 10, 4, 2, '2019-10-01', 'Absent'),
(159, 21, 4, 2, '2019-10-01', 'Present'),
(160, 22, 4, 2, '2019-10-01', 'Present'),
(161, 15, 5, 4, '2019-10-01', 'Absent'),
(162, 16, 5, 4, '2019-10-01', 'Absent'),
(163, 17, 5, 4, '2019-10-01', 'Present'),
(164, 20, 5, 4, '2019-10-01', 'Present'),
(165, 28, 5, 4, '2019-10-01', 'Present'),
(166, 32, 5, 4, '2019-10-01', 'Present'),
(167, 12, 4, 1, '2019-10-02', 'Present'),
(168, 13, 4, 1, '2019-10-02', 'Absent'),
(169, 27, 4, 1, '2019-10-02', 'Absent'),
(170, 33, 4, 1, '2019-10-02', 'Present'),
(171, 15, 5, 4, '2019-10-02', 'Absent'),
(172, 16, 5, 4, '2019-10-02', 'Present'),
(173, 17, 5, 4, '2019-10-02', 'Absent'),
(174, 20, 5, 4, '2019-10-02', 'Absent'),
(175, 28, 5, 4, '2019-10-02', 'Absent'),
(176, 32, 5, 4, '2019-10-02', 'Present'),
(177, 9, 4, 2, '2019-10-05', 'Absent'),
(178, 10, 4, 2, '2019-10-05', 'Absent'),
(179, 21, 4, 2, '2019-10-05', 'Present'),
(180, 22, 4, 2, '2019-10-05', 'Present'),
(181, 12, 4, 1, '2019-10-05', 'Present'),
(182, 13, 4, 1, '2019-10-05', 'Absent'),
(183, 27, 4, 1, '2019-10-05', 'Absent'),
(184, 33, 4, 1, '2019-10-05', 'Absent'),
(185, 12, 4, 1, '2019-10-06', 'Present'),
(186, 13, 4, 1, '2019-10-06', 'Present'),
(187, 18, 4, 1, '2019-10-06', 'Present'),
(188, 27, 4, 1, '2019-10-06', 'Absent'),
(189, 33, 4, 1, '2019-10-06', 'Absent'),
(190, 38, 4, 1, '2019-10-06', 'Absent'),
(191, 14, 4, 3, '2019-10-06', 'Present'),
(192, 24, 4, 3, '2019-10-06', 'Absent'),
(193, 21, 4, 2, '2019-10-06', 'Present'),
(194, 22, 4, 2, '2019-10-06', 'Absent'),
(195, 16, 5, 4, '2019-10-06', 'Present'),
(196, 17, 5, 4, '2019-10-06', 'Absent'),
(197, 20, 5, 4, '2019-10-06', 'Present'),
(198, 28, 5, 4, '2019-10-06', 'Absent'),
(199, 32, 5, 4, '2019-10-06', 'Present'),
(200, 36, 5, 4, '2019-10-06', 'Absent'),
(201, 34, 5, 5, '2019-10-06', 'Absent'),
(202, 35, 5, 5, '2019-10-06', 'Present'),
(203, 40, 11, 7, '2019-10-06', 'Present'),
(204, 41, 8, 6, '2019-10-06', 'Absent'),
(205, 12, 4, 1, '2019-10-07', 'Present'),
(206, 13, 4, 1, '2019-10-07', 'Present'),
(207, 15, 4, 1, '2019-10-07', 'Present'),
(208, 18, 4, 1, '2019-10-07', 'Absent'),
(209, 27, 4, 1, '2019-10-07', 'Absent'),
(210, 33, 4, 1, '2019-10-07', 'Absent'),
(211, 38, 4, 1, '2019-10-07', 'Present'),
(212, 40, 11, 7, '2019-10-07', 'Absent'),
(213, 21, 4, 2, '2019-10-07', 'Absent'),
(214, 22, 4, 2, '2019-10-07', 'Absent'),
(215, 14, 4, 3, '2019-10-07', 'Present'),
(216, 24, 4, 3, '2019-10-07', 'Present'),
(217, 16, 5, 4, '2019-10-07', 'Present'),
(218, 17, 5, 4, '2019-10-07', 'Present'),
(219, 20, 5, 4, '2019-10-07', 'Absent'),
(220, 28, 5, 4, '2019-10-07', 'Present'),
(221, 32, 5, 4, '2019-10-07', 'Absent'),
(222, 36, 5, 4, '2019-10-07', 'Absent'),
(223, 39, 5, 4, '2019-10-07', 'Absent'),
(224, 34, 5, 5, '2019-10-07', 'Present'),
(225, 35, 5, 5, '2019-10-07', 'Absent'),
(226, 41, 8, 6, '2019-10-07', 'Absent'),
(227, 12, 4, 1, '2019-10-11', 'Present'),
(228, 13, 4, 1, '2019-10-11', 'Present'),
(229, 15, 4, 1, '2019-10-11', 'Present'),
(230, 18, 4, 1, '2019-10-11', 'Present'),
(231, 33, 4, 1, '2019-10-11', 'Absent'),
(232, 38, 4, 1, '2019-10-11', 'Absent'),
(233, 16, 5, 4, '2019-10-19', 'Absent'),
(234, 17, 5, 4, '2019-10-19', 'Absent'),
(235, 20, 5, 4, '2019-10-19', 'Absent'),
(236, 28, 5, 4, '2019-10-19', 'Absent'),
(237, 36, 5, 4, '2019-10-19', 'Absent'),
(238, 39, 5, 4, '2019-10-19', 'Absent'),
(239, 21, 4, 2, '2019-10-19', 'Absent'),
(240, 22, 4, 2, '2019-10-19', 'Absent'),
(241, 12, 4, 1, '2019-10-19', 'Present'),
(242, 13, 4, 1, '2019-10-19', 'Present'),
(243, 15, 4, 1, '2019-10-19', 'Present'),
(244, 18, 4, 1, '2019-10-19', 'Present'),
(245, 33, 4, 1, '2019-10-19', 'Present'),
(246, 12, 4, 1, '2019-10-20', 'Present'),
(247, 13, 4, 1, '2019-10-20', 'Absent'),
(248, 15, 4, 1, '2019-10-20', 'Absent'),
(249, 18, 4, 1, '2019-10-20', 'Absent'),
(250, 33, 4, 1, '2019-10-20', 'Present'),
(251, 21, 4, 2, '2019-10-20', 'Absent'),
(252, 22, 4, 2, '2019-10-20', 'Absent'),
(253, 12, 4, 1, '2019-10-22', 'Present'),
(254, 13, 4, 1, '2019-10-22', 'Absent'),
(255, 15, 4, 1, '2019-10-22', 'Absent'),
(256, 18, 4, 1, '2019-10-22', 'Absent'),
(257, 33, 4, 1, '2019-10-22', 'Present'),
(258, 21, 4, 2, '2019-10-22', 'Present'),
(259, 22, 4, 2, '2019-10-22', 'Present'),
(260, 49, 18, 15, '2019-10-22', 'Present'),
(261, 50, 18, 15, '2019-10-22', 'Present'),
(262, 12, 4, 1, '2019-10-25', 'Absent'),
(263, 13, 4, 1, '2019-10-25', 'Present'),
(264, 15, 4, 1, '2019-10-25', 'Present'),
(265, 18, 4, 1, '2019-10-25', 'Absent'),
(266, 33, 4, 1, '2019-10-25', 'Absent'),
(267, 14, 4, 3, '2019-10-25', 'Present'),
(268, 24, 4, 3, '2019-10-25', 'Absent'),
(269, 16, 5, 4, '2019-10-25', 'Absent'),
(270, 17, 5, 4, '2019-10-25', 'Absent'),
(271, 20, 5, 4, '2019-10-25', 'Present'),
(272, 28, 5, 4, '2019-10-25', 'Present'),
(273, 36, 5, 4, '2019-10-25', 'Present'),
(274, 39, 5, 4, '2019-10-25', 'Absent'),
(275, 51, 9, 16, '2019-10-25', 'Absent'),
(276, 12, 4, 1, '2019-10-26', 'Present'),
(277, 13, 4, 1, '2019-10-26', 'Absent'),
(278, 15, 4, 1, '2019-10-26', 'Absent'),
(279, 18, 4, 1, '2019-10-26', 'Absent'),
(280, 33, 4, 1, '2019-10-26', 'Present'),
(281, 21, 4, 2, '2019-10-26', 'Present'),
(282, 22, 4, 2, '2019-10-26', 'Present'),
(283, 16, 5, 4, '2019-10-26', 'Present'),
(284, 17, 5, 4, '2019-10-26', 'Present'),
(285, 20, 5, 4, '2019-10-26', 'Absent'),
(286, 28, 5, 4, '2019-10-26', 'Absent'),
(287, 36, 5, 4, '2019-10-26', 'Absent'),
(288, 39, 5, 4, '2019-10-26', 'Present'),
(289, 34, 5, 5, '2019-10-26', 'Present'),
(290, 35, 5, 5, '2019-10-26', 'Absent'),
(291, 14, 4, 3, '2019-10-26', 'Present'),
(292, 24, 4, 3, '2019-10-26', 'Absent'),
(293, 51, 9, 16, '2019-10-26', 'Absent'),
(294, 12, 4, 1, '2019-10-27', 'Present'),
(295, 13, 4, 1, '2019-10-27', 'Absent'),
(296, 15, 4, 1, '2019-10-27', 'Absent'),
(297, 18, 4, 1, '2019-10-27', 'Absent'),
(298, 33, 4, 1, '2019-10-27', 'Absent'),
(299, 52, 4, 1, '2019-10-27', 'Present'),
(300, 21, 4, 2, '2019-10-27', 'Present'),
(301, 22, 4, 2, '2019-10-27', 'Absent'),
(302, 12, 4, 1, '2019-10-28', 'Present'),
(303, 13, 4, 1, '2019-10-28', 'Present'),
(304, 15, 4, 1, '2019-10-28', 'Absent'),
(305, 18, 4, 1, '2019-10-28', 'Absent'),
(306, 33, 4, 1, '2019-10-28', 'Absent'),
(307, 52, 4, 1, '2019-10-28', 'Absent'),
(308, 2, 12, 27, '2019-10-29', 'Present'),
(309, 6, 11, 25, '2019-11-01', 'Absent'),
(310, 3, 1, 1, '2019-11-01', 'Present'),
(311, 4, 3, 5, '2019-11-01', 'Present'),
(312, 5, 5, 10, '2019-11-01', 'Present'),
(313, 9, 6, 13, '2019-11-01', 'Present'),
(314, 7, 8, 19, '2019-11-01', 'Present'),
(315, 4, 3, 5, '2019-11-03', 'Present'),
(316, 3, 1, 1, '2019-11-03', 'Present'),
(317, 69, 7, 17, '2019-11-09', 'Present'),
(318, 70, 7, 17, '2019-11-09', 'Present'),
(319, 72, 7, 17, '2019-11-09', 'Present'),
(320, 73, 7, 17, '2019-11-09', 'Present'),
(321, 76, 7, 17, '2019-11-09', 'Present'),
(322, 77, 7, 17, '2019-11-09', 'Absent'),
(323, 78, 7, 17, '2019-11-09', 'Absent'),
(324, 79, 7, 17, '2019-11-09', 'Absent'),
(325, 80, 7, 17, '2019-11-09', 'Absent'),
(326, 81, 7, 17, '2019-11-09', 'Absent'),
(327, 82, 7, 17, '2019-11-09', 'Absent'),
(328, 83, 7, 17, '2019-11-09', 'Absent'),
(329, 84, 7, 17, '2019-11-09', 'Present'),
(330, 97, 1, 1, '2019-11-11', 'Present'),
(331, 120, 1, 1, '2019-11-11', 'Present'),
(332, 121, 1, 1, '2019-11-11', 'Present'),
(333, 130, 1, 1, '2019-11-11', 'Present'),
(334, 97, 1, 1, '2019-11-12', 'Present'),
(335, 120, 1, 1, '2019-11-12', 'Present'),
(336, 121, 1, 1, '2019-11-12', 'Present'),
(337, 130, 1, 1, '2019-11-12', 'Present'),
(338, 233, 1, 1, '2019-11-12', 'Present'),
(339, 238, 1, 1, '2019-11-12', 'Present'),
(340, 250, 1, 1, '2019-11-12', 'Present'),
(341, 252, 1, 1, '2019-11-12', 'Present'),
(342, 254, 1, 1, '2019-11-12', 'Absent'),
(343, 256, 1, 1, '2019-11-12', 'Absent'),
(344, 258, 1, 1, '2019-11-12', 'Absent'),
(345, 261, 1, 1, '2019-11-12', 'Absent'),
(346, 263, 1, 1, '2019-11-12', 'Absent'),
(347, 264, 1, 1, '2019-11-12', 'Present'),
(348, 265, 1, 1, '2019-11-12', 'Present'),
(349, 266, 1, 1, '2019-11-12', 'Present'),
(350, 267, 1, 1, '2019-11-12', 'Present'),
(351, 269, 1, 1, '2019-11-12', 'Present'),
(352, 272, 1, 1, '2019-11-12', 'Present'),
(353, 273, 1, 1, '2019-11-12', 'Present'),
(354, 275, 1, 1, '2019-11-12', 'Present'),
(355, 276, 1, 1, '2019-11-12', 'Present'),
(356, 282, 1, 1, '2019-11-12', 'Present'),
(357, 283, 1, 1, '2019-11-12', 'Present'),
(358, 284, 1, 1, '2019-11-12', 'Present'),
(359, 285, 1, 1, '2019-11-12', 'Present'),
(360, 286, 1, 1, '2019-11-12', 'Present'),
(361, 287, 1, 1, '2019-11-12', 'Present'),
(362, 288, 1, 1, '2019-11-12', 'Present'),
(363, 289, 1, 1, '2019-11-12', 'Present'),
(364, 290, 1, 1, '2019-11-12', 'Present'),
(365, 291, 1, 1, '2019-11-12', 'Present'),
(366, 292, 1, 1, '2019-11-12', 'Present'),
(367, 293, 1, 1, '2019-11-12', 'Present'),
(368, 294, 1, 1, '2019-11-12', 'Absent'),
(369, 295, 1, 1, '2019-11-12', 'Absent'),
(370, 97, 1, 1, '2019-11-13', 'Present'),
(371, 120, 1, 1, '2019-11-13', 'Present'),
(372, 121, 1, 1, '2019-11-13', 'Present'),
(373, 130, 1, 1, '2019-11-13', 'Present'),
(374, 233, 1, 1, '2019-11-13', 'Present'),
(375, 238, 1, 1, '2019-11-13', 'Present'),
(376, 250, 1, 1, '2019-11-13', 'Present'),
(377, 252, 1, 1, '2019-11-13', 'Absent'),
(378, 254, 1, 1, '2019-11-13', 'Absent'),
(379, 256, 1, 1, '2019-11-13', 'Absent'),
(380, 258, 1, 1, '2019-11-13', 'Absent'),
(381, 261, 1, 1, '2019-11-13', 'Present'),
(382, 263, 1, 1, '2019-11-13', 'Present'),
(383, 264, 1, 1, '2019-11-13', 'Present'),
(384, 265, 1, 1, '2019-11-13', 'Present'),
(385, 266, 1, 1, '2019-11-13', 'Present'),
(386, 267, 1, 1, '2019-11-13', 'Present'),
(387, 269, 1, 1, '2019-11-13', 'Present'),
(388, 272, 1, 1, '2019-11-13', 'Present'),
(389, 273, 1, 1, '2019-11-13', 'Present'),
(390, 275, 1, 1, '2019-11-13', 'Present'),
(391, 276, 1, 1, '2019-11-13', 'Present'),
(392, 282, 1, 1, '2019-11-13', 'Present'),
(393, 283, 1, 1, '2019-11-13', 'Present'),
(394, 284, 1, 1, '2019-11-13', 'Present'),
(395, 285, 1, 1, '2019-11-13', 'Present'),
(396, 286, 1, 1, '2019-11-13', 'Present'),
(397, 287, 1, 1, '2019-11-13', 'Present'),
(398, 288, 1, 1, '2019-11-13', 'Present'),
(399, 289, 1, 1, '2019-11-13', 'Present'),
(400, 290, 1, 1, '2019-11-13', 'Present'),
(401, 291, 1, 1, '2019-11-13', 'Present'),
(402, 292, 1, 1, '2019-11-13', 'Present'),
(403, 293, 1, 1, '2019-11-13', 'Present'),
(404, 294, 1, 1, '2019-11-13', 'Present'),
(405, 295, 1, 1, '2019-11-13', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `a_gl_vu`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`alhayatedu`@`localhost` SQL SECURITY DEFINER VIEW `a_gl_vu`  AS  select `gl`.`vch_id` AS `vch_id`,`gl`.`vch_remarks` AS `vch_remarks`,`gl`.`preparedby` AS `preparedby`,`gl`.`vch_date` AS `vch_date`,`gl`.`vch_num` AS `vch_num`,`gl`.`cmp_id` AS `cmp_id`,`gld`.`ch_code` AS `ch_code`,`gld`.`gld_desc` AS `gld_desc`,`gld`.`gld_dr` AS `gld_dr`,`gld`.`gld_cr` AS `gld_cr`,`gld`.`bill_no` AS `bill_no`,`gld`.`rate` AS `rate`,`gld`.`qty` AS `qty`,`vt`.`vt_id` AS `vt_shortname` from ((`a_gl` `gl` join `a_gld` `gld`) join `acs_vchtype` `vt`) where `gl`.`vch_id` = `gld`.`vch_id` and `vt`.`vt_id` = `gl`.`vt_id` union all select `p`.`trn` AS `vch_id`,`p`.`remarks` AS `vch_remarks`,`p`.`preparedby` AS `preparedby`,`p`.`purchase_date` AS `vch_date`,`p`.`purchasenum` AS `vch_num`,`p`.`cmp_id` AS `cmp_id`,`p`.`ch_code` AS `ch_code`,`p`.`remarks` AS `gld_desc`,0 AS `gld_dr`,sum(`pd`.`value`) AS `gld_cr`,`p`.`partyinvnum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'pv' AS `vt_shortname` from ((`i_purchase` `p` join `i_purchased` `pd`) join `a_chart` `c`) where `p`.`trn` = `pd`.`trn` and `p`.`cmp_id` = `pd`.`cmp_id` and `c`.`ch_code` = `p`.`ch_code` and `p`.`cmp_id` = `c`.`cmp_id` group by `p`.`purchase_date`,`p`.`purchasenum`,`p`.`cmp_id`,`p`.`ch_code`,`c`.`ch_desc`,'0','0','0','0','pv' union all select `p`.`trn` AS `vch_id`,`p`.`remarks` AS `vch_remarks`,`p`.`preparedby` AS `preparedby`,`p`.`purchase_date` AS `vch_date`,`p`.`purchasenum` AS `vch_num`,`p`.`cmp_id` AS `cmp_id`,`cmp`.`purchaseacc` AS `purchaseacc`,`p`.`remarks` AS `gld_desc`,sum(`pd`.`value` - `pd`.`s_taxamount`) AS `gld_dr`,0 AS `gld_cr`,`p`.`partyinvnum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'pv' AS `vt_shortname` from (((`i_purchase` `p` join `i_purchased` `pd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `p`.`trn` = `pd`.`trn` and `p`.`ch_code` = `c`.`ch_code` and `p`.`cmp_id` = `c`.`cmp_id` and `p`.`cmp_id` = `cmp`.`cmp_id` group by `p`.`purchase_date`,`p`.`purchasenum`,`p`.`cmp_id`,`cmp`.`purchaseacc`,`c`.`ch_desc`,'0','0','0','0','pv' union all select `p`.`trn` AS `vch_id`,`p`.`remarks` AS `vch_remarks`,`p`.`preparedby` AS `preparedby`,`p`.`purchase_date` AS `vch_date`,`p`.`purchasenum` AS `vch_num`,`p`.`cmp_id` AS `cmp_id`,`cmp`.`saletax_receiveable` AS `purchaseacc`,`p`.`remarks` AS `gld_desc`,sum(`pd`.`s_taxamount`) AS `gld_dr`,0 AS `gld_cr`,`p`.`partyinvnum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'pv' AS `vt_shortname` from (((`i_purchase` `p` join `i_purchased` `pd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `p`.`trn` = `pd`.`trn` and `p`.`ch_code` = `c`.`ch_code` and `p`.`cmp_id` = `c`.`cmp_id` and `p`.`cmp_id` = `cmp`.`cmp_id` group by `p`.`purchase_date`,`p`.`purchasenum`,`p`.`cmp_id`,`cmp`.`purchaseacc`,`c`.`ch_desc`,'0','0','0','0','pv' having sum(`pd`.`s_taxamount`) > 0 union all select `rp`.`trn` AS `vch_id`,`rp`.`remarks` AS `vch_remarks`,`rp`.`preparedby` AS `preparedby`,`rp`.`purchase_date` AS `vch_date`,`rp`.`purchasenum` AS `vch_num`,`rp`.`cmp_id` AS `cmp_id`,`rp`.`ch_code` AS `ch_code`,`rp`.`remarks` AS `gld_desc`,sum(`rpd`.`value`) AS `gld_dr`,0 AS `gld_cr`,0 AS `bill_no`,0 AS `rate`,0 AS `qty`,'prv' AS `vt_shortname` from ((`i_rpurchase` `rp` join `i_rpurchased` `rpd`) join `a_chart` `c`) where `rp`.`trn` = `rpd`.`trn` and `c`.`ch_code` = `rp`.`ch_code` and `rp`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = 26 group by `rp`.`purchase_date`,`rp`.`purchasenum`,`rp`.`cmp_id`,`rp`.`ch_code`,`c`.`ch_desc`,'0','0','0','0','prv' union all select `rp`.`trn` AS `vch_id`,`rp`.`remarks` AS `vch_remarks`,`rp`.`preparedby` AS `preparedby`,`rp`.`purchase_date` AS `vch_date`,`rp`.`purchasenum` AS `vch_num`,`rp`.`cmp_id` AS `cmp_id`,`cmp`.`purchaseracc` AS `purchaseracc`,`rp`.`remarks` AS `gld_desc`,0 AS `gld_dr`,sum(`rpd`.`value`) AS `gld_cr`,0 AS `bill_no`,0 AS `rate`,0 AS `qty`,'prv' AS `vt_shortname` from (((`i_rpurchase` `rp` join `i_rpurchased` `rpd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `rp`.`trn` = `rpd`.`trn` and `c`.`ch_code` = `cmp`.`purchaseracc` and `rp`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = `cmp`.`cmp_id` and `c`.`cmp_id` = 26 group by `rp`.`trn`,`rp`.`remarks`,`rp`.`preparedby`,`rp`.`purchase_date`,`rp`.`purchasenum`,`rp`.`cmp_id`,`cmp`.`purchaseracc`,`rp`.`remarks` union all select `rs`.`trn` AS `vch_id`,`rs`.`remarks` AS `vch_remarks`,`rs`.`preparedby` AS `preparedby`,`rs`.`saledate` AS `vch_date`,`rs`.`salenum` AS `vch_num`,`rs`.`cmp_id` AS `cmp_id`,`rs`.`ch_code` AS `ch_code`,`rs`.`remarks` AS `gld_desc`,0 AS `gld_dr`,sum(`rsd`.`value`) AS `gld_cr`,0 AS `bill_no`,0 AS `rate`,0 AS `qty`,'srv' AS `vt_shortname` from ((`i_rsale` `rs` join `i_rsaled` `rsd`) join `a_chart` `c`) where `rs`.`trn` = `rsd`.`trn` and `c`.`ch_code` = `rs`.`ch_code` and `rs`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = 26 group by `rs`.`saledate`,`rs`.`salenum`,`rs`.`cmp_id`,`rs`.`ch_code`,`c`.`ch_desc`,'0','0','0','0','srv' union all select `rs`.`trn` AS `vch_id`,`rs`.`remarks` AS `vch_remarks`,`rs`.`preparedby` AS `preparedby`,`rs`.`saledate` AS `vch_date`,`rs`.`salenum` AS `vch_num`,`rs`.`cmp_id` AS `cmp_id`,`cmp`.`saleracc` AS `saleracc`,`rs`.`remarks` AS `gld_desc`,`rsd`.`value` AS `gld_dr`,0 AS `gld_cr`,0 AS `bill_no`,0 AS `rate`,0 AS `qty`,'srv' AS `vt_shortname` from (((`i_rsale` `rs` join `i_rsaled` `rsd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `rs`.`trn` = `rsd`.`trn` and `c`.`ch_code` = `cmp`.`saleracc` and `rs`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = `cmp`.`cmp_id` and `c`.`cmp_id` = 26 union all select `s`.`trn` AS `vch_id`,`s`.`remarks` AS `vch_remarks`,`s`.`preparedby` AS `preparedby`,`s`.`saledate` AS `vch_date`,`s`.`salenum` AS `vch_num`,`s`.`cmp_id` AS `cmp_id`,`s`.`ch_code` AS `ch_code`,`s`.`remarks` AS `gld_desc`,sum(`sd`.`value`) - `s`.`discountamount` AS `gld_dr`,0 AS `gld_cr`,`s`.`invoicenum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'sv' AS `vt_shortname` from ((`i_sale` `s` join `i_saled` `sd`) join `a_chart` `c`) where `s`.`trn` = `sd`.`trn` and `c`.`ch_code` = `s`.`ch_code` and `s`.`cmp_id` = `c`.`cmp_id` group by `s`.`saledate`,`s`.`salenum`,`s`.`cmp_id`,`s`.`ch_code`,`c`.`ch_desc`,'0','0','0','0','sv' union all select `s`.`trn` AS `vch_id`,`s`.`remarks` AS `vch_remarks`,`s`.`preparedby` AS `preparedby`,`s`.`saledate` AS `vch_date`,`s`.`salenum` AS `vch_num`,`s`.`cmp_id` AS `cmp_id`,`cmp`.`saleacc` AS `ch_code`,`s`.`remarks` AS `gld_desc`,0 AS `gld_dr`,sum(`sd`.`value` - `sd`.`s_taxamount`) AS `gld_cr`,`s`.`invoicenum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'sv' AS `vt_shortname` from (((`i_sale` `s` join `i_saled` `sd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `s`.`trn` = `sd`.`trn` and `c`.`ch_code` = `cmp`.`saleacc` and `s`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = `cmp`.`cmp_id` group by `s`.`saledate`,`s`.`salenum`,`s`.`cmp_id`,`cmp`.`saleacc`,`c`.`ch_desc`,'0','0','0','0','sv' union all select `s`.`trn` AS `vch_id`,`s`.`remarks` AS `vch_remarks`,`s`.`preparedby` AS `preparedby`,`s`.`saledate` AS `vch_date`,`s`.`salenum` AS `vch_num`,`s`.`cmp_id` AS `cmp_id`,`cmp`.`discount_account` AS `ch_code`,`s`.`remarks` AS `gld_desc`,`s`.`discountamount` AS `gld_dr`,0 AS `gld_cr`,`s`.`invoicenum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'sv' AS `vt_shortname` from ((`i_sale` `s` join `acs_cmp` `cmp`) join `a_chart` `c`) where `s`.`cmp_id` = `c`.`cmp_id` and `c`.`ch_code` = `cmp`.`discount_account` and `c`.`cmp_id` = `cmp`.`cmp_id` and `s`.`discountamount` <> 0 union all select `s`.`trn` AS `vch_id`,`s`.`remarks` AS `vch_remarks`,`s`.`preparedby` AS `preparedby`,`s`.`saledate` AS `vch_date`,`s`.`salenum` AS `vch_num`,`s`.`cmp_id` AS `cmp_id`,`cmp`.`saletax_payable` AS `ch_code`,`s`.`remarks` AS `gld_desc`,0 AS `gld_dr`,sum(`sd`.`s_taxamount`) AS `gld_cr`,`s`.`invoicenum` AS `bill_no`,0 AS `rate`,0 AS `qty`,'sv' AS `vt_shortname` from (((`i_sale` `s` join `i_saled` `sd`) join `a_chart` `c`) join `acs_cmp` `cmp`) where `s`.`trn` = `sd`.`trn` and `c`.`ch_code` = `cmp`.`saleacc` and `s`.`cmp_id` = `c`.`cmp_id` and `c`.`cmp_id` = `cmp`.`cmp_id` group by `s`.`saledate`,`s`.`salenum`,`s`.`cmp_id`,`cmp`.`saleacc`,`c`.`ch_desc`,'0','0','0','0','sv' having sum(`sd`.`s_taxamount`) > 0 ;
-- Error reading data for table alhayatedu_enetcampus.a_gl_vu: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `alhayatedu_enetcampus`.`a_gl_vu`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `is_deleted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `code`, `class`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(1, '1', 'Nursury', '2019-10-29', '', '', '0'),
(2, '2', 'Prep', '2019-10-29', '', '', '0'),
(3, '3', 'ONE', '2019-10-29', '', '', '0'),
(4, '4', 'Two', '2019-10-29', '', '', '0'),
(5, '5', 'Three', '2019-10-29', '', '', '0'),
(6, '6', 'Four', '2019-10-29', '', '', '0'),
(7, '7', 'Five', '2019-10-29', '', '', '0'),
(8, '8', '6th', '2019-10-29', '', '', '0'),
(9, '9', '7th', '2019-10-29', '', '', '0'),
(10, '10', '8th', '2019-10-29', '', '', '0'),
(11, '11', '9th', '2019-10-29', '', '', '0'),
(12, '12', '10th', '2019-10-29', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `credit_hours` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(250) NOT NULL,
  `deleted_on` varchar(250) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `class_id`, `department_id`, `code`, `type`, `course_name`, `credit_hours`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(1, 6, 2, '13123', 'Thoery', 'huzaifam', '2', '', '', '', 0),
(3, 4, 2, 'n', 'jn', 'jasdna', 'jn', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `qualification_id` int(11) NOT NULL,
  `is_deleted` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `created_on` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`id`, `degree`, `qualification_id`, `is_deleted`, `deleted_on`, `updated_on`, `created_on`) VALUES
(1, 'Urdu', 2, '0', '', '2019-09-21', '2019-09-20'),
(2, 'English', 2, '0', '', '2019-09-21', '2019-09-21'),
(3, 'Mathematics', 3, '0', '', '2019-09-21', '2019-09-21'),
(4, 'Physics', 3, '0', '', '2019-09-21', '2019-09-21'),
(5, 'Biology', 3, '0', '', '', '2019-09-21'),
(6, 'Computer Science', 3, '0', '', '', '2019-09-21'),
(7, 'Bussiness', 3, '0', '', '', '2019-09-21'),
(8, 'Information Technology', 3, '0', '', '', '2019-09-21'),
(9, 'Mechanical Engineering', 3, '0', '', '', '2019-09-21'),
(10, 'Electrical Enjineering', 3, '0', '', '', '2019-09-21'),
(11, 'Psycology', 3, '0', '', '', '2019-09-21'),
(12, 'Pakistan Studies', 2, '0', '', '', '2019-09-21'),
(13, 'History', 2, '0', '', '', '2019-09-21'),
(14, 'Philosophy', 2, '0', '', '', '2019-09-21'),
(15, 'Political Science', 2, '0', '', '', '2019-09-21'),
(16, 'Sociology', 2, '0', '', '', '2019-09-21'),
(17, 'Economics', 3, '0', '', '', '2019-09-21'),
(18, 'Islamic Education', 2, '0', '', '', '2019-09-21'),
(19, 'Islamic Studies', 2, '0', '', '', '2019-09-21'),
(20, 'Physical Education', 3, '0', '', '', '2019-09-21'),
(21, 'Biotechnology', 3, '0', '', '', '2019-09-21'),
(22, 'Geography', 3, '0', '', '', '2019-09-21'),
(23, 'Chemistry', 3, '0', '', '', '2019-09-21'),
(24, 'English', 7, '0', '', '', '2019-09-21'),
(25, 'Urdu', 7, '0', '', '', '2019-09-21'),
(26, 'Islamic Studies', 7, '0', '', '', '2019-09-21'),
(27, 'Islamic Education', 7, '0', '', '', '2019-09-21'),
(28, 'Pakistan Studies', 7, '0', '', '', '2019-09-21'),
(29, 'History', 7, '0', '', '', '2019-09-21'),
(30, 'Political Science', 7, '0', '', '', '2019-09-21'),
(31, 'Sociology', 2, '0', '', '', '2019-09-21'),
(32, 'Physics', 8, '0', '', '', '2019-09-21'),
(33, 'Mathematics', 8, '0', '', '', '2019-09-21'),
(34, 'Chemistry', 8, '0', '', '', '2019-09-21'),
(35, 'Biology', 8, '0', '', '', '2019-09-21'),
(36, 'Botony', 8, '0', '', '', '2019-09-21'),
(37, 'Zoology', 8, '0', '', '', '2019-09-21'),
(38, 'Phsycology', 8, '0', '', '', '2019-09-21'),
(39, 'Economics', 8, '0', '', '', '2019-09-21'),
(40, 'Computer Science', 8, '0', '', '', '2019-09-21'),
(41, 'Information Technology', 8, '0', '', '', '2019-09-21'),
(42, 'Electrical Enjineering', 8, '0', '', '', '2019-09-21'),
(43, 'Mechanical Engineering', 8, '0', '', '', '2019-09-21'),
(44, 'Physical Education', 8, '0', '', '', '2019-09-21'),
(45, 'Bussiness', 8, '0', '', '', '2019-09-21'),
(46, 'N/A', 4, '0', '', '', '2019-09-21'),
(47, 'N/A', 6, '0', '', '', '2019-09-21'),
(48, 'N/A', 6, '1', '2019-09-21', '', '2019-09-21'),
(49, 'N/A', 5, '0', '', '', '2019-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(200) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `department`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(2, '123acsda', ' h hasdasd', '0', '2019-09-16', '2019-09-16', 0),
(3, '2', 'Mcs', '2019-09-16', '', '2019-09-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expense` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `is_deleted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `expense`, `amount`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(1, 'Electricity Expense', '50000', '2019-09-18', '', '2019-09-18', '1'),
(2, 'Others', '25000', '2019-09-18', '2019-09-18', '', '0'),
(3, 'Electricity Expense', '500', '2019-09-18', '', '', '0'),
(4, 'Gas Expense', '1212', '2019-09-21', '', '2019-09-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fee_collection`
--

CREATE TABLE `fee_collection` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `total_fee` int(11) NOT NULL,
  `pay_amount` int(11) NOT NULL,
  `rem_amount` int(11) NOT NULL,
  `fee_concession` varchar(255) NOT NULL,
  `date` varchar(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_collection`
--

INSERT INTO `fee_collection` (`id`, `std_id`, `section_id`, `class_id`, `total_fee`, `pay_amount`, `rem_amount`, `fee_concession`, `date`) VALUES
(24, 31, 1, 4, 100, 0, 100, '0', '09-19'),
(25, 31, 1, 4, 100, 0, 100, '0', '09-19'),
(26, 31, 1, 4, 100, 0, 100, '0', '09-19'),
(27, 31, 1, 4, 100, 0, 100, '0', '09-19'),
(28, 31, 1, 4, 100, 0, 100, '0', '09-19'),
(29, 15, 1, 4, 1000, 3, 997, '3', '09-19'),
(30, 15, 1, 4, 1000, 3, 997, '3', '09-19'),
(31, 15, 1, 4, 1000, 3, 997, '3', '09-19'),
(32, 16, 1, 4, 3, 9, 9, '9', '09-19'),
(33, 13, 1, 4, 100, 200, -100, '2', '09-19'),
(34, 10, 1, 4, 1000, 900, 100, '0', '09-19'),
(35, 12, 1, 4, 1000, 500, 500, '0', '09-19'),
(36, 12, 1, 4, 1000, 500, 500, '0', '09-19'),
(37, 12, 1, 4, 1000, 500, 500, '0', '09-19'),
(38, 12, 1, 4, 1000, 500, 500, '0', '09-19'),
(39, 12, 1, 4, 1000, 500, 500, '0', '09-19'),
(40, 27, 1, 4, 1000, 500, 500, '0', '09-19'),
(41, 27, 1, 4, 1000, 500, 500, '0', '09-19'),
(42, 27, 1, 4, 1000, 500, 500, '0', '09-19'),
(43, 27, 1, 4, 1000, 500, 500, '0', '09-19'),
(44, 13, 1, 4, 1000, 500, 500, '0', '10-19'),
(45, 13, 1, 4, 1000, 500, 500, '0', '10-19'),
(46, 13, 1, 4, 1000, 500, 500, '0', '10-19'),
(47, 33, 1, 4, 1000, 1000, 0, '0', '10-19'),
(48, 33, 1, 4, 1000, 1000, 0, '0', '10-19'),
(49, 33, 1, 4, 1000, 1000, 0, '0', '10-19'),
(50, 33, 1, 4, 1000, 1000, 0, '0', '10-19'),
(51, 27, 1, 4, 100, 2, 98, '0', '10-19'),
(52, 12, 1, 4, 1000, 500, 500, '4', '10-19'),
(53, 38, 1, 4, 1000, 500, 500, '0', '10-19'),
(54, 38, 1, 4, 1000, 500, 500, '0', '10-19'),
(55, 38, 1, 4, 1000, 500, 500, '0', '10-19'),
(56, 21, 2, 4, 2000, 0, 2000, '0', '10-19'),
(57, 16, 4, 5, 1000, 800, 200, '0', '10-19'),
(58, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(59, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(60, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(61, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(62, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(63, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(64, 18, 1, 4, 1000, 1000, 0, '0', '10-19'),
(65, 40, 7, 11, 1000, 1000, 0, '0', '10-19'),
(66, 15, 1, 4, 1000, 1000, 0, '0', '10-19'),
(67, 17, 4, 5, 1000, 1000, 0, 'd', '10-19'),
(68, 20, 4, 5, 1000, 600, 400, '3', '10-19'),
(69, 28, 4, 5, 1000, 800, 200, '0', '10-19'),
(70, 32, 4, 5, 1000, 1000, 0, '2', '10-19'),
(71, 39, 4, 5, 1000, 1000, 0, '0', '10-19'),
(72, 34, 5, 5, 1000, 1000, 0, 's', '10-19'),
(73, 35, 5, 5, 1000, 1000, 0, 's', '10-19'),
(74, 22, 2, 4, 1000, 199, 801, '0', '10-19'),
(75, 36, 4, 5, 1000, 800, 200, '0', '10-19'),
(76, 6, 25, 11, 1000, 200, 800, '00', '10-19'),
(77, 159, 9, 4, 1000, 1000, 0, '0', '11-19'),
(78, 97, 1, 1, 1000, 1000, 0, '0', '11-19');

-- --------------------------------------------------------

--
-- Table structure for table `heros`
--

CREATE TABLE `heros` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `bonus` varchar(255) NOT NULL,
  `absent_plenty` varchar(255) NOT NULL,
  `plenty` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `tch_id`, `bonus`, `absent_plenty`, `plenty`, `invoice_no`, `date`) VALUES
(0, 21, '300', '0', '0', '15', '2019-11-07'),
(1, 13, '300', '0', '0', 'n23', '2019-10-19'),
(2, 13, '', '0', '', '', '2019-10-26'),
(3, 14, '600', '0', '300', '324', '2019-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `i_item_vu`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`alhayatedu`@`localhost` SQL SECURITY DEFINER VIEW `i_item_vu`  AS  select `i`.`cmp_id` AS `cmp_id`,`i`.`item_id` AS `item_id`,`i`.`item_name` AS `item_name`,`i`.`item_unit` AS `item_unit`,`id`.`wh_id` AS `wh_id`,`id`.`item_opqty` AS `item_qty`,`wh`.`wh_name` AS `wh_name` from ((`i_item` `i` join `i_itemd` `id` on(`i`.`item_id` = `id`.`item_id` and `i`.`cmp_id` = `id`.`cmp_id`)) left join `i_whouse` `wh` on(`id`.`wh_id` = `wh`.`wh_id` and `id`.`cmp_id` = `wh`.`cmp_id`)) ;
-- Error reading data for table alhayatedu_enetcampus.i_item_vu: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `alhayatedu_enetcampus`.`i_item_vu`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `i_trn_vu`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`alhayatedu`@`localhost` SQL SECURITY DEFINER VIEW `i_trn_vu`  AS  select 'Purchase' AS `doctype`,`p`.`trn` AS `trn`,`p`.`purchasenum` AS `docnum`,`p`.`purchase_date` AS `doc_date`,`p`.`ch_code` AS `ch_code`,`pd`.`item_id` AS `item_id`,`pd`.`qty` AS `qty`,`pd`.`qty` AS `qty2`,`pd`.`rate` AS `rate`,`pd`.`value` AS `value`,`pd`.`value` AS `costprice`,`p`.`wh_id` AS `wh_id`,`p`.`cmp_id` AS `cmp_id`,'1' AS `trn_order` from (`i_purchase` `p` join `i_purchased` `pd`) where `p`.`trn` = `pd`.`trn` union all select 'Sale' AS `doctype`,`s`.`trn` AS `trn`,`s`.`salenum` AS `docnum`,`s`.`saledate` AS `doc_date`,`s`.`ch_code` AS `ch_code`,`sd`.`item_id` AS `item_id`,`sd`.`qty` AS `qty`,0 - `sd`.`qty` AS `qty2`,`sd`.`rate` AS `rate`,`sd`.`value` AS `value`,`sd`.`costprice` AS `costprice`,`s`.`wh_id` AS `wh_id`,`s`.`cmp_id` AS `cmp_id`,'5' AS `trn_order` from (`i_sale` `s` join `i_saled` `sd`) where `s`.`trn` = `sd`.`trn` union all select 'P.Return' AS `doctype`,`rp`.`trn` AS `trn`,`rp`.`purchasenum` AS `docnum`,`rp`.`purchase_date` AS `doc_date`,`rp`.`ch_code` AS `ch_code`,`rpd`.`item_id` AS `item_id`,`rpd`.`qty` AS `qty`,0 - `rpd`.`qty` AS `qty2`,`rpd`.`rate` AS `rate`,`rpd`.`value` AS `value`,`rpd`.`value` AS `costprice`,`rp`.`wh_id` AS `wh_id`,`rp`.`cmp_id` AS `cmp_id`,'6' AS `trn_order` from (`i_rpurchase` `rp` join `i_rpurchased` `rpd`) where `rp`.`trn` = `rpd`.`trn` union all select 'S.Return' AS `doctype`,`rs`.`trn` AS `trn`,`rs`.`salenum` AS `docnum`,`rs`.`saledate` AS `doc_date`,`rs`.`ch_code` AS `ch_code`,`rsd`.`item_id` AS `item_id`,`rsd`.`qty` AS `qty`,`rsd`.`qty` AS `qty2`,`rsd`.`rate` AS `rate`,`rsd`.`value` AS `value`,`rsd`.`value` AS `costprice`,`rs`.`wh_id` AS `wh_id`,`rs`.`cmp_id` AS `cmp_id`,'2' AS `trn_order` from (`i_rsale` `rs` join `i_rsaled` `rsd`) where `rs`.`trn` = `rsd`.`trn` union all select 'Issue' AS `doctype`,`i`.`trn` AS `trn`,`i`.`issue_no` AS `docnum`,`i`.`issue_date` AS `doc_date`,' ' AS `ch_code`,`id`.`item_id` AS `item_id`,`id`.`qty` AS `qty`,0 - `id`.`qty` AS `qty2`,`id`.`rate` AS `rate`,`id`.`value` AS `value`,`id`.`rate` AS `costprice`,`i`.`wh_id` AS `wh_id`,`i`.`cmp_id` AS `cmp_id`,'7' AS `trn_order` from (`i_issue` `i` join `i_issued` `id`) where `i`.`trn` = `id`.`trn` union all select 'Production' AS `doctype`,`p`.`prod_id` AS `trn`,`p`.`prod_num` AS `docnum`,`p`.`prod_date` AS `doc_date`,`p`.`ch_code` AS `ch_code`,`pd`.`prodd_item` AS `item_id`,`pd`.`prodd_qty` AS `qty`,`pd`.`prodd_qty` AS `qty2`,`pd`.`rate` AS `rate`,`pd`.`value` AS `value`,`pd`.`value` AS `costprice`,`p`.`wh_id` AS `wh_id`,`p`.`cmp_id` AS `cmp_id`,'3' AS `trn_order` from (`i_prod` `p` join `i_prodd` `pd`) where `p`.`prod_id` = `pd`.`prod_id` union all select 'tout' AS `doctype`,`t`.`t_id` AS `trn`,'' AS `docnum`,`t`.`t_date` AS `doc_date`,' ' AS `ch_code`,`td`.`item_id` AS `item_id`,`td`.`item_qty` AS `qty`,0 - `td`.`item_qty` AS `qty2`,'' AS `rate`,'' AS `value`,'' AS `costprice`,`t`.`t_fromwhouse` AS `wh_id`,`t`.`cmp_id` AS `cmp_id`,'8' AS `trn_order` from (`i_transfer` `t` join `i_transferd` `td`) where `t`.`t_id` = `td`.`t_id` union all select 'tin' AS `doctype`,`t`.`t_id` AS `trn`,'' AS `docnum`,`t`.`t_date` AS `doc_date`,' ' AS `ch_code`,`td`.`item_id` AS `item_id`,`td`.`item_qty` AS `qty`,`td`.`item_qty` AS `qty2`,'' AS `rate`,'' AS `value`,'' AS `costprice`,`t`.`t_towhouse` AS `wh_id`,`t`.`cmp_id` AS `cmp_id`,'9' AS `trn_order` from (`i_transfer` `t` join `i_transferd` `td`) where `t`.`t_id` = `td`.`t_id` ;
-- Error reading data for table alhayatedu_enetcampus.i_trn_vu: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `alhayatedu_enetcampus`.`i_trn_vu`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `i_vouchertype_vu`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`alhayatedu`@`localhost` SQL SECURITY DEFINER VIEW `i_vouchertype_vu`  AS  select `alhayatedu_enetcampus`.`acs_vchtype`.`vt_id` AS `vt_id`,`alhayatedu_enetcampus`.`acs_vchtype`.`vt_desc` AS `vt_desc` from `acs_vchtype` union all select 'sv' AS `vt_id`,'Sale Voucher' AS `vt_desc` union all select 'pv' AS `vt_id`,'Purchase Voucher' AS `vt_desc` union all select 'srv' AS `vt_id`,'Sale Return Voucher' AS `vt_desc` union all select 'prv' AS `vt_id`,'Purchase Return Voucher' AS `vt_desc` ;
-- Error reading data for table alhayatedu_enetcampus.i_vouchertype_vu: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `alhayatedu_enetcampus`.`i_vouchertype_vu`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_on` varchar(250) NOT NULL,
  `updated_on` varchar(200) NOT NULL,
  `deleted_on` varchar(200) NOT NULL,
  `is_deleted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `image`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(1, 'Al Hayat', 'School Building', '0000.jpg', '2019-11-03', '', '', '0'),
(2, 'Campus', 'School Internal View', '03.jpg', '2019-11-03', '', '', '0'),
(3, 'Al Hayat', 'External View', '08.jpg', '2019-11-03', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `is_deleted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `qualification`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(1, 'Under Matirc', '2019-11-07', '', '', '0'),
(2, 'Matric', '2019-11-07', '', '', '0'),
(3, 'Fa', '2019-11-07', '', '', '0'),
(4, 'FSC', '2019-11-07', '', '', '0'),
(5, 'FSC', '2019-11-07', '', '', '0'),
(6, 'ICS', '2019-11-07', '', '', '0'),
(7, 'BA', '2019-11-07', '', '', '0'),
(8, 'Bsc', '2019-11-07', '', '', '0'),
(10, 'BS(Hon)', '2019-11-07', '', '', '0'),
(11, 'MA', '2019-11-07', '', '', '0'),
(12, 'MSC', '2019-11-07', '', '', '0'),
(13, 'M Phill', '2019-11-07', '', '', '0'),
(14, 'PHD', '2019-11-07', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `urdu` int(11) NOT NULL,
  `english` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `gk` int(11) NOT NULL,
  `islamic_study` int(11) NOT NULL,
  `pak_study` int(11) NOT NULL,
  `arabic` int(11) NOT NULL,
  `computer` int(11) NOT NULL,
  `elective8` int(11) NOT NULL,
  `physics` int(11) NOT NULL,
  `chemistry` int(11) NOT NULL,
  `elective_matric` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `urdu_oral` int(11) NOT NULL,
  `english_oral` int(11) NOT NULL,
  `math_oral` int(11) NOT NULL,
  `nazra` int(11) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `section`, `class_id`, `updated_on`, `deleted_on`, `created_on`, `is_deleted`) VALUES
(1, 'A', 1, '', '', '2019-10-29', 0),
(2, 'B', 1, '', '', '2019-10-29', 0),
(3, 'A', 2, '', '', '2019-10-29', 0),
(4, 'B', 2, '', '', '2019-10-29', 0),
(5, 'A', 3, '', '', '2019-10-29', 0),
(6, 'B', 3, '', '', '2019-10-29', 0),
(7, 'C', 3, '', '', '2019-10-29', 0),
(8, 'A', 4, '', '', '2019-10-29', 0),
(9, 'B', 4, '', '', '2019-10-29', 0),
(10, 'A', 5, '', '', '2019-10-29', 0),
(11, 'B', 5, '', '', '2019-10-29', 0),
(12, 'C', 5, '', '', '2019-10-29', 0),
(13, 'A', 6, '', '', '2019-10-29', 0),
(14, 'B', 6, '', '', '2019-10-29', 0),
(15, 'C', 6, '', '', '2019-10-29', 0),
(16, 'A', 7, '', '', '2019-10-29', 0),
(17, 'B', 7, '', '', '2019-10-29', 0),
(18, 'C', 7, '', '', '2019-10-29', 0),
(19, 'A', 8, '', '', '2019-10-29', 0),
(20, 'B', 8, '', '', '2019-10-29', 0),
(21, 'A', 9, '', '', '2019-10-29', 0),
(22, 'B', 9, '', '', '2019-10-29', 0),
(23, 'A', 10, '', '', '2019-10-29', 0),
(24, 'B', 10, '', '', '2019-10-29', 0),
(25, 'A', 11, '', '', '2019-10-29', 0),
(26, 'B', 11, '', '', '2019-10-29', 0),
(27, 'A', 12, '', '', '2019-10-29', 0),
(28, 'B', 12, '', '', '2019-10-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `is_deleted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `code`, `session`, `created_on`, `updated_on`, `deleted_on`, `is_deleted`) VALUES
(2, 's', ' jasdas', '', '', '2019-09-16', '0'),
(3, 'as2er', 'asda', '2019-09-16', '2019-10-19', '2019-10-19', '1'),
(4, 'j bjsdf', 'asdada', '2019-10-19', '2019-10-19', '2019-10-19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `tch_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_detail`
--

CREATE TABLE `staff_detail` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cnic` varchar(250) NOT NULL,
  `phone_1` varchar(250) NOT NULL,
  `phone_2` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `doj` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `basic_pay` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `mothername` varchar(255) NOT NULL,
  `b_form` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `father_cnic` varchar(200) NOT NULL,
  `father_occupation` varchar(200) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `bform_img` varchar(255) NOT NULL,
  `cnic_img` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `admission_date` varchar(255) NOT NULL,
  `previous_school` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `father_education` varchar(255) NOT NULL,
  `mother_education` varchar(255) NOT NULL,
  `father_income` varchar(255) NOT NULL,
  `household_income` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_cnic` varchar(255) NOT NULL,
  `mother_cnic` varchar(200) NOT NULL,
  `no_of_children` varchar(200) NOT NULL,
  `mother_profession` varchar(250) NOT NULL,
  `mother_income` varchar(250) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `inclusive` varchar(255) NOT NULL,
  `is_orphan` varchar(255) NOT NULL,
  `is_briklin` varchar(200) NOT NULL,
  `is_osc` varchar(200) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `updated_on` varchar(200) NOT NULL,
  `is_deleted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(1, 'Ayesha_shahid', 'Shahid', '', '31101_1777600_8', '03014052509', '3110109371867', 'Job-Holder', '2014-01-20', 'female', 'user.png', 'faisal colony', '1978', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-07', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Shahid', '3110109371867', '3560382952100', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(4, 'M Abu Bakar', 'M Shahid', '', '3110198135169', '03014052509', '3110109371869', 'Bussiness', '2011-11-15', 'male', 'user.png', 'Hussain Abad Bwn', '1688', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-11', '0', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'M Shahid', '3110109371869', '3660382952100', '3', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(5, 'Aftab Ali', 'Nazir Ahmed', '', '311019473516', '03033149262', '3110158012661', 'Bussiness', '2012-01-01', 'male', 'user.png', 'Bipas Bwn', '1708', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-25', '0', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Nazir Ahmed', '3110158012661', '3110172691936', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(6, 'Maham', 'Shakeel Qamar', '', '31101176818732', '03027721300', '3110409371867', 'Job-Holder', '2014-01-01', 'female', 'user.png', 'jattoo wala Bwn', '1983', 'In-Progress', 3, 2, '', '', 'Pakistan', '2019-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'SHAKEEL qamar', '3110409371867', '', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '2019-11-11', '0'),
(7, 'M Tuaseen', 'M Yaseen', '', '3110153455019', '03017681524', '3110114210407', 'Job-Nil', '2012-05-02', 'male', 'user.png', 'Basti Sadiqpur Bwn', '1753', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-25', '0', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M Yaseen', '3110114210407', '3110118938824', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(8, 'M Aziz', 'M Wazeer', '', '3110152187175', '03013112482', '311019467641', 'Job-Nil', '2012-04-16', 'male', 'user.png', 'Mohla Wala Gali', '1754', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-25', '0', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M Wazeer', '311019467641', '3110161318120', '3', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(9, 'Mohsin Iqbal', 'Zafar Iqbal', '', '3110132726889', '03026927194', '3110119552939', 'Bussiness', '2011-11-30', 'male', 'user.png', 'Dinpur Sharif Bwn', '1770', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-08-31', '0', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'Zafar Iqbal', '3110119552939', '3110166801548', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(10, 'Alishba', 'Niaz  Ahmad', '', '3110169221835', '03024890957', '3110120053809', 'Bussiness', '2013-02-07', 'female', 'user.png', 'Hafiza Abad', '1986', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'Niaz Ahmad', '3110120053809', '', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '2019-11-11', '0'),
(11, 'Alishba', 'Niaz  Ahmad', '', '3110169221835', '03024890957', '3110120053809', 'Bussiness', '2013-02-07', 'female', 'user.png', 'Hafiza Abad', '1986', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'Niaz Ahmad', '3110120053809', '3110188314534', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(12, 'M Shoaib Akhtar', 'Zulfiqar Ali ', '', '3650249468933', '03007583468', '3650213534557', 'Job-Nil', '2013-01-05', 'male', 'user.png', 'Pal Nadar Shah Bwn', '2154', 'In-Progress', 9, 4, '', '', 'Pakistani', '2018-08-30', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Zulfiqar Ali ', '3650213534557', '0', '3', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(13, 'Amain Fatima', 'Ismail ', '', '3110153196968', '03003445166', '31101904553721', 'Job-Holder', '2014-01-05', 'female', 'user.png', 'Jodana BWN', '1987', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'Ismail', '3310190441086', '3110118441086', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(14, 'Amain Fatima', 'Ismail ', '', '3110153196968', '03003445166', '31101904553721', 'Job-Holder', '2014-01-05', 'female', 'user.png', 'Jodana BWN', '1987', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'Ismail', '3310190441086', '3110118441086', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(15, 'AyeshaAbbas', 'M.Abbas', '', '3110179863890', '03086528956', '3110505931947', 'Bussiness', '2014-01-02', 'female', 'user.png', 'Quraish Colony', '1992', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Abbas', '3310505931947', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(16, 'Nafeesa', 'Muhammad Akram', '', '3110101423894', '03067259036', '3110183688407', 'Bussiness', '2014-02-20', 'female', 'user.png', 'Hussaina Abad', '1995', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'Muhammad Akram', '3110183688407', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(17, 'Nafeesa', 'Muhammad Akram', '', '3110101423894', '03067259036', '3110183688407', 'Bussiness', '2014-02-20', 'female', 'user.png', 'Hussaina Abad', '1995', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'Muhammad Akram', '3110183688407', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(18, 'kbbra', 'Naveed ul Hassan', '', '31101515435621', '03458811113', '3110116256621', 'Bussiness', '2012-06-01', 'female', 'user.png', 'Nadra shah', '1996', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '15000', '15000', 'Naveed ul Hassan', '3110116256621', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(19, 'kbbra', 'Naveed ul Hassan', '', '31101515435621', '03458811113', '3110116256621', 'Bussiness', '2012-06-01', 'female', 'user.png', 'Nadra shah', '1996', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '15000', '15000', 'Naveed ul Hassan', '3110116256621', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(20, 'Sadaf', 'Kaleem', '', '3110237862650', '03017912432', '3110213748579', 'Job-Holder', '2014-01-01', 'female', 'user.png', 'affesar colony bwn', '2004', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Teacher', 'uneducated', 'uneducated', '5000', 'No Income', 'Kaleem', '3110213748579', '311096637346', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(21, 'Ume amain', 'zafar ali', '', '3110162420402', '03329629487', '3110123511377', 'Job-Holder', '2013-08-24', 'female', 'user.png', 'dak khana bwn', '2014', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'zafar ali', '3110123511377', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(22, 'iqra bibi', 'Saddar din', '', '31101453733250', '03067853512', '3110171359095', 'Bussiness', '2013-12-21', 'female', 'user.png', 'quresh colony', '2016', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'Saddar din', '3110171359095', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(23, 'iqra bibi', 'Saddar din', '', '31101453733250', '03067853512', '3110171359095', 'Bussiness', '2013-12-21', 'female', 'user.png', 'quresh colony', '2016', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'Saddar din', '3110171359095', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(24, 'iqra bibi', 'Saddar din', '', '31101453733250', '03067853512', '3110171359095', 'Bussiness', '2013-12-21', 'female', 'user.png', 'quresh colony', '2016', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'Saddar din', '3110171359095', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(25, 'Nazish', 'Ahmad hussain', '', '3110138435026', '03067638130', '3110171359095', 'Job-Holder', '2014-12-21', 'female', 'user.png', 'quresh colony', '2017', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Teacher', '4', '4', '20000', '20000', 'Ahmad hussain', '3110171359095', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(26, 'Zainab', 'Gulam mustafa', '', '3110186745530', '03067683130', '311013982919', 'Job-Holder', '2015-02-01', 'female', 'user.png', 'Quresh colony', '2020', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Teacher', '4', 'uneducated', '20000', '20000', 'Gulam mustafa', '311013982919', '311019383218', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(27, 'Nafisa', 'M iqbal', '', '3110156138252', '03069416744', '3110124821603', 'Bussiness', '2013-07-13', 'female', 'user.png', 'Nadar shah bwn', '2022', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Farmer', 'uneducated', '4', '15000', '15000', 'M iqbal', '3110124821603', '3110187910362', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(28, 'Musfara', 'Shabeer ahmad', '', '3110165697820', '03005154958', '3110163242109', 'Job-Nil', '2013-09-03', 'female', 'user.png', 'nader shah bwn', '2027', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', 'uneducated', 'uneducated', '5000', '5000', 'Shabeer ahmad', '3110163242109', '3110125763926', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(29, 'Manahil', 'Nadeem abbas', '', '3110130535422', '03069416744', '3110145031790', 'Job-Holder', '2014-09-08', 'female', 'user.png', 'new quresh colony', '2023', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '7', '7', '20000', '20000', 'Misbah bibi', '3110145031790', '0', '2', 'Job-Holder', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(30, 'Rumasa', 'M ibrar', '', '3110166312534', '03005154958', '3110116517865', 'Job-Nil', '2014-12-19', 'female', 'user.png', 'shah samander bwn', '2033', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Teacher', '4', 'uneducated', '5000', '5000', 'M ibrar', '3110116517865', '0', '3', 'Other', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(31, 'Alia', 'Atiq u rehman', '', '3110189589078', '03007928277', '3110116824469', 'Job-Holder', '2013-06-13', 'female', 'user.png', 'Quresh colony bwn', '2041', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', 'uneducated', '5000', '5000', 'Atiq u rehman', '3110116824469', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(32, 'Gulam ayesha', 'Abid hassan', '', '3110169586110', '03078304627', '3110167651377', 'Bussiness', '2013-10-10', 'female', 'user.png', 'tobba maqsadh', '2042', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', '4', 'uneducated', '15000', '15000', 'Abid hassan', '3110167651377', '3110232235635', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(33, 'Areeba Khalid', 'Khalid mehmood', '', '311016858457', '0', '3110185074365', 'Bussiness', '2014-05-17', 'female', 'user.png', 'basti mattro bwn', '2049', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-19', 'no', 'Other', '4', 'uneducated', '15000', '15000', 'khalid mehmood', '3110185074365', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(34, 'marayam javeed', 'M.Javeed', '', '3110127468108', '03048252500', '3110175294279', 'Job-Nil', '2014-08-12', 'female', 'user.png', 'Quraish colony', '2056', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-02-19', 'no', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'M.javeed', '3110175294279', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(35, 'Tayyaba batool', 'M.Ahamd', '', '3110199943128', '03049703270', '3110147850925', 'Bussiness', '2014-04-09', 'female', 'user.png', 'mahiwali bwn', '2059', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-20', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'M.Ahmad', '3110147850925', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(36, 'Jannat Bibi', 'Ali Arfan', '', '3110185651724', '03049703270', '3110160974245', 'Bussiness', '2012-12-17', 'female', 'user.png', 'moh bwnali', '2064', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-02-20', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'Ali arfan', '3110160974245', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(37, 'Jannat Bibi', 'Ali Arfan', '', '3110185651724', '03049703270', '3110160974245', 'Bussiness', '2012-12-17', 'female', 'user.png', 'moh bwnali', '2064', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-02-20', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'Ali arfan', '3110160974245', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '2019-11-08', '', '1'),
(38, 'Anabia ', 'naeem tahir', '', '3110157903492', '03074230338', '3110113262365', 'Bussiness', '2014-11-20', 'female', 'user.png', 'hafiza abad colony', '2065', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-20', 'no', 'Other', '4', 'uneducated', '10000', '10000', 'naeem tahir', '3110113262365', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(39, 'nimra', 'ghulam Nabi', '', '3110190752518', '03457055944', '3110179022617', 'Bussiness', '2014-10-21', 'female', 'user.png', 'tibbi mahwali', '2066', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-20', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Gulam Nabi', '3110179022617', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(40, 'marayam irfan', 'M.irfan', '', '3110190752518', '03017680576', '3110149210661', 'Bussiness', '2014-10-21', 'female', 'user.png', 'quraish colony', '2070', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-26', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'M.irfan', '311014910661', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(41, 'iqra riaz', 'riaz ahmad', '', '3110151411204', '0', '3110102996459', 'Bussiness', '2014-08-10', 'female', 'user.png', 'hafiza abad', '2073', 'In-Progress', 3, 2, '', '', 'Pakistan', '2016-03-26', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'riaz ahmad', '3110102996459', '0', '3', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(42, 'khadija raza', 'Rraiz ur rehman', '', '3110151411204', '03043513012', '3110154944067', 'Bussiness', '2012-09-01', 'female', 'user.png', 'Raja walakhob BWN', '2074', 'In-Progress', 3, 2, '', '', 'Pakistan', '2016-03-26', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '15000', '15000', 'nill', '311015494406', '0', '5', 'Job-Holder', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(43, 'Urooj fatima', 'M yaseen', '', '3110196933356', '03062134721', '311019969657', 'Job-Nil', '2014-06-08', 'female', 'user.png', 'Quresh colony', '2077', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-28', 'no', 'Other', 'uneducated', '4', '15000', 'No Income', 'nill', '31019969657', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(44, 'Mah noor', 'Khalid Mehmood', '', '3110187031582', '03027858693', '3110173990895', 'Job-Nil', '2014-10-27', 'female', 'user.png', 'Basti mittra BWN', '2083', 'In-Progress', 3, 2, '', '', 'Pakistan', '2016-03-26', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'nill', '3110173990895', '0', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(45, 'Ayesha Mushtaq', 'M Mushtaq', '', '3110102474588', '03042687493', '3110286761551', 'Job-Nil', '2014-10-27', 'female', 'user.png', 'Hafiz abad', '2114', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-27', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'nill', '3110186761551', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(46, 'Ayesha Mushtaq', 'M Mushtaq', '', '3110102474588', '03042687493', '3110286761551', 'Job-Nil', '2014-10-27', 'female', 'user.png', 'Hafiz abad', '2114', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-27', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'nill', '3110186761551', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(47, 'Ayesha Shafiq', 'M Shafique', '', '3110195248894', '03002025906', '3110116639479', 'Job-Holder', '2019-03-09', 'female', 'user.png', 'Niazam pora BWN', '2209', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-27', 'no', 'Docotor', '8', '4', '20000', '30000', 'nill', '3110116639479', '0', '6', 'Job-Holder', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(48, 'Aiman fatima', 'M ashraf', '', 'nill', '0', '3660220454901', 'Job-Nil', '2014-12-31', 'female', 'user.png', 'Hafiz abad', '2255', 'In-Progress', 3, 2, '', '', 'Pakistan', '2016-03-03', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'nill', '3660220454901', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(49, 'Amina', 'Mumtaz ahmad', '', '3110168204820', '0', '3110159998305', 'Job-Nil', '2013-03-23', 'female', 'user.png', '22by pass hafiz abad', '2361', 'In-Progress', 3, 2, '', '', 'Pakistan', '2017-03-23', 'no', 'Shopkeeper', '4', 'uneducated', '5000', '5000', 'nill', '3110159998305', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(50, 'Samreen', 'Shafee M', '', '3110101916606', '0', '3110144332201', 'Job-Nil', '2013-01-01', 'female', 'user.png', 'jalwa nhar BWN', '2322', 'In-Progress', 3, 2, '', '', 'Pakistan', '2015-03-24', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '15000', '15000', 'nill', '3110144332201', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(51, 'Arooj fatima', 'M shafique', '', '3110166444730', '0', '310186449075', 'Job-Nil', '2014-05-20', 'female', 'user.png', 'Hussain abad BWN', '2374', 'In-Progress', 3, 2, '', '', 'Pakistan', '2014-03-23', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'nill', '3110186449075', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(52, 'Shahzaib Rafique', 'Muhammad Rafique', '', '3110109185097', '03074874017', '311018324159', 'Job-Holder', '2009-01-01', 'male', 'user.png', 'Pull Furtwah Bahawalnagar', '803', 'In-Progress', 15, 6, '', '', 'Pakstani', '2012-05-04', 'no', 'Other', '4', '7', '10000', 'No Income', 'Muhammad Rafique', '311018324159', '12', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(53, 'Saif Ullah', 'Ahmad Ali', '', '3110166892165', '03089116694', '3110160622595', 'Job-Holder', '2008-04-27', 'male', 'user.png', 'Deen Pur Shareef Bwn', '1105', 'In-Progress', 15, 6, '', '', 'Pakstani', '2014-05-04', 'no', 'Other', 'uneducated', '1', '15000', 'No Income', 'Ahmad Ali', '3110160622595', '123', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(54, 'Iftkhar Ali', 'Nazeer Ahmad', '', '3110133244197', '03033149262', '3110158012661', 'Bussiness', '2009-02-19', 'male', 'user.png', 'Rabnawaz pura basti meeran shah bwn', '1114', 'In-Progress', 15, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Farmer', 'uneducated', '1', '15000', 'No Income', 'Nazeer Ahmad', '3110158012661', '123', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(55, 'Muhammad Tanveer Tayab', 'Muhammad Tayyab', '', '3110165994411', '03068632767', '3110166821471', 'Bussiness', '2010-05-19', 'male', 'user.png', 'Hussain abad Deen pur shareef Bwn', '1115', 'In-Progress', 15, 6, '', '', 'Pakstani', '2014-04-05', 'no', 'Other', '2', '1', '15000', 'No Income', 'Muhammad Tayyab', '3110166821471', '123', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(56, 'Swayba Madni', 'Muhammad Muhtram Madni', '', '3110165569706', '03007922741', '3110142067629', 'Bussiness', '2010-01-15', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1180', 'In-Progress', 15, 6, '', '', 'Pakstani', '2014-04-05', 'no', 'Other', '2', '1', '15000', 'No Income', 'Muhammad Muhtram Madni', '3110142067629', '123', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(57, 'Muhammad Moazim', 'Muhammad Yaseen', '', '3110194700697', '03017264650', '3110111752043', 'Job-Holder', '2010-01-15', 'male', 'user.png', 'Hafiz Abad  Bahawal Nagar', '1217', 'In-Progress', 15, 6, '', '', 'Pakstani', '2014-04-05', 'no', 'Labour', '1', '1', '15000', 'No Income', 'Muhammad Yaseen', '3110111752043', '123', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(58, 'Areesha Shabeer', 'Shabeer Ahmad', '', '3110144735396', '03059712811', '3110116450797', 'Bussiness', '2009-01-10', 'female', 'user.png', 'Nadir shah bahawalnagar', '1259', 'In-Progress', 15, 6, '', '', 'Pakistan', '2914-05-05', 'no', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'Shabeer Ahmad', '3110116450797', '123', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(59, 'Tasmeel Fatima', 'Muhammad Waris', '', '3110144135284', '03007926002', '3110198006987', 'Job-Holder', '2012-05-15', 'female', 'user.png', 'Nadir shah rabnwaz pura bwn', '1336', 'In-Progress', 15, 6, '', '', 'Pakstani', '2014-10-09', 'no', 'Other', '11', '2', '30000', 'No Income', 'Muhammad Waris', '3110198006987', '12', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(60, 'Ahmad Raza', 'Abdul Hameed', '', '3110134384771', '03057384724', '3110128585537', 'Bussiness', '2010-10-08', 'male', 'user.png', 'shrif cote bwn', '1392', 'In-Progress', 15, 6, '', '', 'Pakstani', '2015-04-03', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Abdul Hameed', '3110128585537', '12', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(61, 'Muhammad Abdullah Farooqi', 'Abdul Hameed', '', '3110163650689', '03038042407', '3110166088927', 'Job-Holder', '2012-01-28', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1474', 'In-Progress', 15, 6, '', '', 'Pakstani', '2015-05-02', 'no', 'Other', '11', '2', '30000', 'No Income', 'Abdul Hameed', '3110166088927', '1', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(62, 'Mahnoor Fatima', 'Hafiz Abdul Rehman Jami', '', '3110169996712', '03014855614', '3520267934041', 'Bussiness', '2016-08-29', 'female', 'user.png', 'Basti Chragh Deen', '1477', 'In-Progress', 15, 6, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '7', '1', '30000', 'No Income', 'Hafiz Abdul Rehman Jami', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(63, 'Zeeshan Waheed', 'Abdul Waheed', '', '3110122835871', '03036313604', '3110132307429', 'Bussiness', '2009-03-28', 'male', 'user.png', 'chatha bakhhar bwn', '1523', 'In-Progress', 15, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Farmer', '3', '2', '15000', '5000', 'Abdul Waheed', '3110132307429', '12', '3', 'Bussiness', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(64, 'Muhammad Ahsan Ameen', 'Muhammad Ameen', '', '3110193835681', '03024997128', '3110125790231', 'Job-Holder', '2009-03-28', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1564', 'In-Progress', 15, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', '1', '1', '10000', 'No Income', 'Muhammad Ameen', '3110125790231', '3110151984570', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(65, 'Ali Hassan', 'Muhammad Ameen', '', '3110193930681', '03024997128', '3110125790231', 'Job-Holder', '2010-06-25', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1565', 'In-Progress', 15, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', '1', '1', '10000', 'No Income', 'Muhammad Ameen', '3110125790231', '3110151984570', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(66, 'Shahzad Ahmad', 'Muhammad Arshad', '', '3110153380187', '03007641020', '3110152074243', 'Job-Holder', '2008-09-22', 'male', 'user.png', 'Regran Basti Bwn', '1600', 'In-Progress', 15, 6, '', '', 'Pakistan', '2016-04-01', 'no', 'Other', '1', '1', '15000', 'No Income', 'Muhammad Arshad', '3110152074243', '3110171749898', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(67, 'Hamza Murtaza', 'Ghulam Murtaza', '', '3110138919061', '03074983041', '3110169735375', 'Bussiness', '2011-03-10', 'male', 'user.png', 'Chah Ranjhy wala Bwn', '1648', 'In-Progress', 15, 6, '', '', 'Pakistan', '2016-04-05', 'no', 'Farmer', '1', 'uneducated', '10000', 'No Income', 'Ghulam Murtaza', '3110169735375', '3110117185086', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(68, 'Adeeba Waheed', 'Abdul Waheed', '', '3110181397554', '03088808021', '3110187729777', 'Bussiness', '2010-06-08', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1676', 'In-Progress', 15, 6, '', '', 'Pakstani', '2016-04-05', 'no', 'Other', '11', 'uneducated', '30000', 'No Income', 'Abdul Waheed', '3110187729777', '3110179314990', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(69, 'salman ali', 'akhtar ali', '', '3110151181647', '1234', '3110147825265', 'Bussiness', '2009-08-02', 'male', 'user.png', 'din pur sharif jajju wala', '1013', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-01', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'akhtar ali', '3110147825265', '123', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(70, 'ali hasnain', 'allah rakha', '', '3110150356159', '03026523640', '3110172924277', 'Bussiness', '2007-08-23', 'male', 'user.png', 'hafiz abad colony bwn', '1019', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-01', 'no', 'Other', 'uneducated', '1', '30000', 'No Income', 'allah rakha', '3110172924277', '3110148206038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(71, 'ali hasnain', 'allah rakha', '', '3110150356159', '03026523640', '3110172924277', 'Bussiness', '2007-08-23', 'male', 'user.png', 'hafiz abad colony bwn', '1019', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-01', 'no', 'Other', 'uneducated', '1', '30000', 'No Income', 'allah rakha', '3110172924277', '3110148206038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '2019-11-09', '', '1'),
(72, 'm.haris madni', 'm.mohtram madni', '', '3110197386249', '03007922741', '3110142067629', 'Job-Holder', '0008-08-05', 'male', 'user.png', 'din pur sharif jajju wala', '1055', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-28', 'no', 'Other', '1', '1', '15000', 'No Income', 'm. mohtram madni', '3110142067629', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(73, 'roman ghani', 'ghan zanfar ali', '', '3110138768063', '03067853147', '3110114141347', 'Job-Holder', '2009-01-11', 'male', 'user.png', 'din pur sharif jajju wala', '1059', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-09-02', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'ghan zanfar ali', '3110114141347', '3110170735974', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(74, 'm.mohsin', 'm.fiaz', '', '3110157664817', '1234', '3110180100151', 'Bussiness', '2007-03-23', 'male', 'user.png', 'sobay wali Basti', '1062', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-09-02', 'no', 'Farmer', 'uneducated', 'uneducated', 'No Income', 'No Income', 'm. fiaz', '3110180100151', '', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '2019-11-11', '0'),
(75, 'Tahir rehman', 'M.Ibrahim', '', '3110157010431', '03007582998', '3110116273083', 'Bussiness', '0007-03-27', 'male', 'user.png', 'pull nadar shah b.w.n', '1070', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-02-09', 'no', 'Farmer', '1', '1', '10000', 'No Income', 'M.Ibrahim', '3110116273083', '3110140287712', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(76, 'Muzamil Abbas', 'M.abbas', '', '3110126385699', '03063699981', '3110153882907', 'Bussiness', '2006-08-13', 'male', 'user.png', 'Multani chowk bwn', '1088', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-11-01', 'no', 'Shopkeeper', '1', 'uneducated', '10000', 'No Income', 'M.abbas', '3110153882907', '3110187573198', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(77, 'M.Zakwan Umar', 'M.umar Khubaib', '', '3110154647983', '03007927644', '3110150399123', 'Bussiness', '2009-05-24', 'male', 'user.png', 'Faisal colony bwn', '1107', 'In-Progress', 17, 7, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '2', '2', '20000', 'No Income', 'M.umar khubaib', '3110150399123', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(78, 'M.Sohaib Hassan', 'M.Hassan', '', '3110174462789', '03014243616', '3110115977549', 'Job-Holder', '2008-06-15', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1132', 'In-Progress', 17, 7, '', '', 'Pakistan', '2014-04-05', 'no', 'Teacher', '1', 'uneducated', '10000', 'No Income', 'M.Hassan', '3110115977549', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(79, 'M.Shahzad', 'M.Yar', '', '3110160158561', '1234', '3110116517881', 'Bussiness', '2009-04-03', 'male', 'user.png', 'Moza Qamar Din', '1164', 'In-Progress', 17, 7, '', '', 'Pakistan', '2014-04-05', 'no', 'Farmer', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Yar', '3110116517881', '3110141346614', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(80, 'Ali Hadir', 'Zaheed Ameen', '', '3110165657155', '03027549480', '3110155609653', 'Job-Holder', '2007-06-23', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1169', 'In-Progress', 17, 7, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '1', '1', '40000', 'No Income', 'Zaheed Ameen', '31110155609653', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(81, 'Abdur Rehman', 'Abdul Ghafar', '', '3110156757993', '03037056404', '3110114721447', 'Job-Holder', '2009-12-23', 'male', 'user.png', 'Tibbi Mahi Wali', '1219', 'In-Progress', 17, 7, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '2', '1', '20000', 'No Income', 'Abdul Ghafar', '3110114721447', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(82, 'Mamoon Nazeer', 'Nazeer Ahmad', '', '3120393520263', '03027852340', '3120329760749', 'Job-Holder', '2009-07-02', 'male', 'user.png', 'din pur sharif jajju wala', '2161', 'In-Progress', 17, 7, '', '', 'Pakistan', '2018-09-11', 'no', 'Teacher', '1', '3', '10000', 'No Income', 'Nazeer Ahmad', '3120329760749', '3120395450920', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(83, 'M.yahya Tahir', 'M.Tahir', '', '4250141505661', '03333146213', '4250119592127', 'Job-Nil', '2010-01-28', 'male', 'user.png', 'Ahmad colony city bwn', '2248', 'In-Progress', 17, 7, '', '', 'Pakistan', '2019-03-27', 'no', 'Other', '3', '1', 'No Income', 'No Income', 'M.Tahir', '4250119592127', '3310590906454', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(84, 'Haroon-ul-Islam', 'Hafiz Arshad Mehmood', '', '3110160419491', '03007580603', '3110115898023', 'Job-Holder', '2009-01-01', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '901', 'In-Progress', 17, 7, '', '', 'Pakistan', '2012-12-01', 'no', 'Other', '2', 'uneducated', '40000', 'No Income', 'Hafiz Arshad Mehmood', '3110115898023', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(85, 'M.Noman Asif', 'M.Asif', '', '3110154179607', '03007095844', '3110161489947', 'Job-Holder', '2009-01-19', 'male', 'user.png', 'Ranja Town bwn', '917', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '3', '1', '20000', 'No Income', 'M.Asif', '3110161489947', '3110184846628', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(86, 'Junaid Ahmad', 'M.Ahmad', '', '3110120316131', '03012392445', '3110185362093', 'Bussiness', '2009-02-02', 'male', 'user.png', 'Ranja Town bwn', '918', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Farmer', '3', 'uneducated', '10000', 'No Income', 'M.Ahmad', '3110185362093', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(87, 'Ali Hasnain', 'M.Rafiq', '', '3110167584773', '03061276233', '3110183348571', 'Bussiness', '2008-12-10', 'male', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '926', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Rafiq', '3110183348571', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(88, 'Usman Ghani', 'Ghazanfar Ali', '', '3110138769013', '03067853147', '3110114141347', 'Bussiness', '2007-07-17', 'male', 'user.png', 'din pur sharif jajju wala', '912', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Ghazanfar Ali', '3110114141347', '3110170735974', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(89, 'Hadia Firdos', 'M.Mushan', '', '1234', '03214132733', '3110115825669', 'Job-Holder', '2012-11-25', 'female', 'user.png', 'Hafiz Abad  Bahawal Nagar', '1466', 'In-Progress', 8, 4, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Moshan', '3110115825669', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(90, 'Ariba Sarwar', 'M.Sarwar', '', '3110544324508', '03057466781', '3110571836311', 'Bussiness', '2011-01-27', 'female', 'user.png', 'Quraish colony bwn', '1506', 'In-Progress', 8, 4, '', '', 'Pakistan', '2015-05-04', 'no', 'Shopkeeper', '1', 'uneducated', '10000', 'No Income', 'M.Sarwar', '3110571836311', '3110130969590', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(91, 'Mafia Shabir', 'Shabeer Ahmad', '', '3110177538408', '03067850769', '3110193849215', 'Job-Holder', '2012-02-05', 'female', 'user.png', 'Husnain  Abad bwn', '1527', 'In-Progress', 8, 4, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', '2', '1', '15000', 'No Income', 'Shabeer Ahmad', '3110193849215', '3110128867304', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(92, 'Amina Bibi', 'M.Safdar', '', '3110186559366', '03007587729', '3110184744511', 'Bussiness', '2011-09-06', 'female', 'user.png', 'Raja wala bwn', '1537', 'In-Progress', 8, 4, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'M.Safdar', '3110184744511', '3110157912242', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(93, 'Tafia Tayyab', 'M.Tayyab', '', '3110167838194', '03068632767', '3110166821571', 'Bussiness', '2012-04-05', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1596', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-01', 'no', 'Other', '2', '1', '15000', 'No Income', 'M.Tayyab', '3110166821571', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(95, 'Rimsha Irshad', 'M.Irshad', '', '3110111706322', '03007641020', '3110152074243', 'Bussiness', '2012-04-21', 'female', 'user.png', 'Quraish colony bwn', '1598', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-01', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Irshad', '3110152074243', '3110171749898', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-09', '', '', '0'),
(96, 'M.Asad', 'Mazhar Fareed', '', '4230164806003', '03024996822', '3110137924133', 'Bussiness', '2015-05-24', 'male', 'user.png', 'Basti Ali Muhammad Arain BWN', '2197', 'In-Progress', 2, 1, '', '', 'pakistan', '2019-09-03', 'nill', 'Other', '2', 'uneducated', '10000', '10000', 'nill', '3110137924133', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(97, 'Rehan Ahmad', 'Ahmad Hussan', '', '3110123568189', '03014347061', '311011625664', 'Bussiness', '2015-08-09', 'male', 'user.png', 'Nadar Shah', '2214', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'nill', 'Farmer', 'uneducated', 'uneducated', '10000', '10000', 'nill', '3110116256645', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(98, 'Umar Shareef', 'Muhammad Munir ', '', '3110114156437', '0', '3110167906591', 'Job-Holder', '2015-07-18', 'male', 'user.png', 'Hafiz Abad Colony', '1713', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-01', 'No', 'Other', '2', 'uneducated', '20000', '20000', 'M.Munir', '3110167906591', '3110167906591', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(99, 'Ali Raza', 'M.Hassan', '', '3110141393601', '03012854324', '3110132580396', 'Job-Nil', '2016-07-16', 'male', 'user.png', 'Basti Ganay Wali', '2215', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-09-03', 'nill', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'nill', '3110132580396', '3110132580396', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(100, 'Abdul wahab', 'Abdul Jabbar', '', '31101070310443', '03008574940', '3110163702049', 'Job-Holder', '2003-02-20', 'male', 'user.png', 'Hafiz abad colony', '1793', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-01-04', 'No', 'Labour', '2', '1', '20000', 'No Income', 'Abdul Jabbar', '3110163702049', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(101, 'Maaz Tariq', 'Maaz Tariq', '', '3110176255583', '03023713346', '3110166416625', 'Job-Holder', '2019-08-10', 'male', 'user.png', 'Hafiz Abad colony bwn', '2218', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-09-03', 'nill', 'Other', '2', 'uneducated', '35000', '35000', 'nill', '3110166416625', '3110188938216', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(102, 'Rehan Bashir', 'Bashir Ahmad', '', '3110133127423', '0', '3110110169327', 'Job-Holder', '2013-05-08', 'male', 'user.png', 'Hafiz Abad Colony', '1798', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Labour', '2', 'uneducated', '20000', 'No Income', 'Bashir Ahmad', '3110110169327', '3110111761418', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(103, 'Saad Ali', 'Muhammad Maqsood', '', '3110127029701', '03017685855', '3110105253157', 'Job-Holder', '2012-10-05', 'male', 'user.png', 'Hafiz Abad Colony', '1796', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '3', 'uneducated', '15000', 'No Income', 'Muhammad Maqsood', '3110105253157', '311014155985', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(104, 'M Usman ghani', 'M.Younas', '', '3110104279733', '03001869401', '3110183732709', 'Job-Nil', '2015-02-25', 'male', 'user.png', 'Basti Ghulam Arain bwn', '2228', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-26', 'nill', 'Labour', '2', 'uneducated', '20000', '20000', 'M.Younas', '3110183732709', '3110182327670', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(105, 'Muhammad Faizan Faisal', 'Faisal Iqbal', '', '3110198002965', '0', '3110146918211', 'Job-Holder', '2012-09-04', 'male', 'user.png', 'Hafiz Abad Colony', '1799', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'Faisal Iqbal', '3110146918211', '3110122748664', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(106, 'M Arslan', 'M Arshad', '', '3110145244709', '03014883794', '3110124130589', 'Job-Nil', '2014-05-11', 'male', 'user.png', 'nill', '2230', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-26', 'nill', 'Labour', 'uneducated', 'uneducated', '5000', '5000', 'M Arshad', '3110124130589', '3110138117400', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(107, 'Talha Akram', 'Muhammad Akram', '', '3110129546145', '0', '3110147266023', 'Job-Nil', '2012-09-15', 'male', 'user.png', 'Hafiz Abad Colony', '1800', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Akram', '3110147266023', '3110111955990', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(108, 'Hassain Ahmad', 'M Ahmad', '', '3110144737095', '03007641020', '31101773142239', 'Job-Nil', '2014-01-01', 'male', 'user.png', 'Nai Abadi quresha colony  phatk', '2238', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-26', 'nill', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'M Ahmad', '31101773142239', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(109, 'Ajwad Hayat', 'Muhammad Amjad', '', '3110166174883', '03004119960', '3110119592057', 'Job-Holder', '2014-08-24', 'male', 'user.png', 'Hafiz Abad Colony', '1813', 'In-Progress', 5, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '11', '11', '20000', '30000', 'Muhammad Amjad', '3110119592057', '3110115832586', '5', 'Job-Holder', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(110, 'Haseeb Rehman ', 'Ali Abass ', '', '3110106243273', '0', '3110115821325', 'Job-Holder', '2014-04-29', 'male', 'user.png', 'Quraish Colony', '1815', 'In-Progress', 5, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '7', '1', '20000', '20000', 'Ali Abass ', '3110115821325', '311012288880', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(111, 'M Salman', 'Fakhar Zaman', '', '3110140065817', '03356756237', '3110140065817', 'Job-Nil', '2015-08-12', 'male', 'user.png', 'Basti Gorana bwn', '2247', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Labour', '1', '1', '10000', '10000', 'Fakhar Zaman', '3110140065817', '3110125557398', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(112, 'Haseeb Ullah', 'Muhammad Munawar', '', '3110131474881', '0', '3110196505195', 'Job-Nil', '2013-01-31', 'male', 'user.png', 'Hafiz Abad Colony', '1829', 'In-Progress', 5, 3, '', '', 'Pakistan', '2017-04-07', 'No', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Munawar', '3110196505195', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(113, 'Mukram Bilal', 'Bilal Ahmad', '', '3110199029379', '03069416747', '3110168809335', 'Job-Holder', '2015-05-15', 'male', 'user.png', 'Pul noor shah rab nawaz pura bwn', '2258', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '3', 'uneducated', '20000', '20000', 'Bilal Ahmad', '3110168809335', '3110115603802', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(114, 'Umar Farooq', 'Zahor Ahmad', '', '3110103684657', '0', '3110235446207', 'Job-Holder', '2012-08-09', 'male', 'user.png', 'Hafiz Abad Colony', '1835', 'In-Progress', 5, 3, '', '', 'Pakistan', '2017-04-25', 'No', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'Zahor Ahmad', '3110235446207', '31102578675400', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(115, 'M habbib aslam', 'M aslam', '', '3110141124203', '03447397798', '3110106356697', 'Job-Nil', '2015-01-01', 'male', 'user.png', 'Basti hajhi chragh din bwn', '2260', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '3', 'uneducated', '10000', 'No Income', 'M aslam', '3110106356697', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(116, 'M umar', 'Jamshed iqbal', '', '3110107417059', '03064998913', '3110106892471', 'Job-Holder', '2017-03-11', 'male', 'user.png', 'Mohala quresh colony bwn', '2261', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '1', 'uneducated', '20000', '20000', 'Jamshed iqbal', '3110106892471', '3110165139226', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(117, 'Ubaid Akhtar', 'Zulfiqar Ali', '', '3650367274491', '03007583468', '3650213534557', 'Bussiness', '2016-10-15', 'male', 'user.png', 'pull nadar shah', '2153', 'In-Progress', 7, 3, '', '', 'Pakistan', '2018-08-30', 'no', 'Farmer', 'uneducated', 'uneducated', '5000', '5000', 'Zulfiqar Ali', '3650213534557', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(118, 'Abdullah Riaz', 'Muhammad Riaz', '', '3110112265895', '0', '3110120694253', 'Job-Holder', '2012-12-16', 'male', 'user.png', 'Hafiz Abad Colony', '1845', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-11', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Muhammad Riaz', '3110120694253', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(119, 'Ch SamiUllah', 'Ilyas', '', '3110128608391', '0', '3110172160019', 'Job-Holder', '2013-12-18', 'male', 'user.png', 'Hafiz Abad Colony', '1857', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Labour', '2', '1', '5000', '5000', 'Ilyas', '3110172160019', '3110172687764', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(120, 'Sahil ali', 'Sajid hussain', '', 'nill', '03083590221', '0', 'Job-Nil', '0001-01-01', 'male', 'user.png', 'nill', '2262', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Sajid hussain', '0', '0', '0', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(121, 'Sahil ali', 'Sajid hussain', '', 'nill', '03083590221', '0', 'Job-Nil', '0001-01-01', 'male', 'user.png', 'nill', '2262', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Sajid hussain', '0', '0', '0', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(122, 'Abdul Rehman', 'hafiz atta ur rehman', '', '3110136312039', '03005920616', '3110127469307', 'Job-Holder', '2013-08-21', 'male', 'user.png', 'mord wala khoh', '2219', 'In-Progress', 5, 3, '', '', 'Pakistan', '2018-08-30', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'atta ur rehman', '3110127469307', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(123, 'Tasawar Ishaq', 'Muhammad Ishaq', '', '0', '0', '0', 'Job-Holder', '2013-11-21', 'male', 'user.png', 'Bahi Pass', '1858', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Muhammad Ishaq', '0', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(124, 'M Rizwan Aslam', 'M Aslam', '', '3110174349021', '03096501378', '3110104325947', 'Job-Holder', '2015-01-18', 'male', 'user.png', 'Hafiz abad  colony bwn', '1263', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Labour', 'uneducated', 'uneducated', '5000', '5000', 'M Aslam', '3110104325947', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(125, 'Munawar Ishaq', 'Muhammad Ishaq', '', '0', '0', '0', 'Job-Holder', '2013-12-18', 'male', 'user.png', 'Bahi Pass', '1859', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Ishaq', '0', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(126, 'Mateen Rehman', 'Hafiz abdullah', '', '3110143458233', '0300377500', '3520267934041', 'Job-Holder', '2013-10-08', 'male', 'user.png', 'Arif Wala Road', '1863', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-13', 'No', 'Other', '7', '1', '30000', '30000', 'Hafiz abdullah', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(127, 'Mateen Rehman', 'Hafiz abdullah', '', '3110143458233', '0300377500', '3520267934041', 'Job-Holder', '2013-10-08', 'male', 'user.png', 'Arif Wala Road', '1863', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-13', 'No', 'Other', '7', '1', '30000', '30000', 'Hafiz abdullah', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(128, 'M noman', 'M Asad', '', '3110117987257', '03008877522', '3120455395329', 'Bussiness', '2016-01-01', 'male', 'user.png', 'Hafiz abad colony bwn', '2265', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '11', '1', '15000', '15000', 'M Asad', '3120455395329', '3110124319288', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(129, 'Umair ', 'Raseed Ahmad', '', '3110104472945', '0', '3110124952773', 'Job-Holder', '2013-01-01', 'male', 'user.png', 'Hafiz Abad Colony', '1864', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Labour', 'uneducated', '2', '20000', 'No Income', 'Raseed Ahmad', '3110124952773', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(130, 'Abdullah shahzad', 'Shahzad basheer', '', '3110164889150', '03467555994', '3110145089917', 'Job-Holder', '2013-09-10', 'male', 'user.png', 'officer colony mkan no 17/D bwn', '2268', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'nill', 'Other', '7', 'uneducated', '15000', '15000', 'Shahzad basheer', '3110145089917', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(131, 'Muavia', 'Ahamad Ali', '', '3110120721365', '0', '3110160622595', 'Job-Holder', '2013-02-25', 'male', 'user.png', 'Jato Wala pul', '1865', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'Ahamad Ali', '3110160622595', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(132, 'Sana u Allah', 'abdul latif', '', '0', '03038798356', '3110157111752', 'Job-Nil', '2013-01-01', 'female', 'user.png', 'hafizaabad colony', '1931', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-05-18', 'no', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'abdul latif', '3110157111752', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(133, 'Awais arshad', 'Muhammad Arshad', '', '3110230063', '0', '3110124808535', 'Job-Holder', '2012-11-01', 'male', 'user.png', 'Jato Wala Pul', '1870', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'Muhammad Arshad', '3110124808535', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(134, 'M Awais', 'Allah Rakha', '', '311017292427', '03026523640', '31101729224277', 'Job-Nil', '2014-07-12', 'male', 'user.png', 'Hafiz abad  colony bwn', '2269', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-03', 'nill', 'Labour', 'uneducated', '1', '20000', 'No Income', 'Allah Rakha', '31101729224277', '3110148206038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(135, 'Muhammad Noman', 'Fakhar Zaman', '', '3110122362859', '0', '3110112572391', 'Job-Holder', '2013-04-05', 'male', 'user.png', 'Hafiz Abad Colony', '1872', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-15', 'No', 'Labour', 'uneducated', 'uneducated', '15000', '15000', 'Fakhar Zaman', '3110112572391', '31101225557398', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(136, 'M Awais', 'Allah Rakha', '', '311017292427', '03026523640', '31101729224277', 'Job-Nil', '2014-07-12', 'male', 'user.png', 'Hafiz abad  colony bwn', '2269', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-03', 'nill', 'Labour', 'uneducated', '1', '20000', 'No Income', 'Allah Rakha', '31101729224277', '3110148206038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(137, 'Muhammad Noman', 'Fakhar Zaman', '', '3110122362859', '0', '3110112572391', 'Job-Holder', '2013-04-05', 'male', 'user.png', 'Hafiz Abad Colony', '1872', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-15', 'No', 'Labour', 'uneducated', 'uneducated', '15000', '15000', 'Fakhar Zaman', '3110112572391', '31101225557398', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(138, 'M adeel', 'M Irshad', '', '311014043', '03089045132', '3110128323757', 'Job-Holder', '2016-01-01', 'male', 'user.png', 'samnda arain bwn', '2300', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-05', 'nill', 'Labour', '2', '1', '10000', '10000', 'M Irshad', '3110128323757', '311012410792', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(139, 'M Mohsan Hussain', 'Shahid hussain', '', '3110163850539', '03007925202', '3110142998713', 'Job-Nil', '2013-04-26', 'male', 'user.png', 'chak hotiana bwn', '2305', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'nill', 'Other', '1', 'uneducated', '15000', 'No Income', 'Shahid hussain', '3110142998713', '3110188326986', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(140, 'Alishba bibi', 'Muhammad  Muzammil', '', '3110197852146', '03022613363', '3110134090799', 'Bussiness', '2010-06-25', 'female', 'user.png', 'basti miran bwn', '1725', 'In-Progress', 15, 6, '', '', 'Pakistani', '2016-04-25', 'no', 'Farmer', '1', '2', '10000', 'No Income', 'Muhammad  Muzammil', '3110134090799', '1', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(141, 'Muhammad Talha Zubair Makki', 'Ali Muvia', '', '3110117478260', '03007923847', '3110116483777', 'Bussiness', '2011-12-13', 'male', 'user.png', 'mavia street', '1751', 'In-Progress', 15, 6, '', '', 'Pakistani', '2016-06-25', 'no', 'Labour', '2', '3', '20000', '50000', 'Ali Muvia', '3110116483777', '3110115812536', '6', 'Job-Holder', '50000', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(143, 'Muhammad Ameen', 'Allah Ditta', '', '3110112021783', '03063014946', '3110104177157', 'Bussiness', '2008-12-05', 'male', 'user.png', 'chah ranjhy waly bwn', '1810', 'In-Progress', 15, 6, '', '', 'Pakistani', '2017-04-05', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Allah Ditta', '3110104177157', '1', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(144, 'Javaria Naeem', 'Naeem Tahir', '', '3110157809442', '03074233038', '3110113262365', 'Bussiness', '2011-11-10', 'female', 'user.png', 'Basti Regran Bwn', '1967', 'In-Progress', 15, 6, '', '', 'Pakistani', '2018-03-01', 'no', 'Other', '2', '1', '15000', 'No Income', 'Naeem Tahir', '3110113262365', '1', '7', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(145, 'Rehan Aslam', 'Muhammad Aslam', '', '3110102648539', '03057107892', '3110192661303', 'Job-Holder', '2009-11-10', 'male', 'user.png', 'Basti Sadiq Pur', '2127', 'In-Progress', 15, 6, '', '', 'Pakistani', '2018-04-12', 'no', 'Other', '11', '2', '15000', 'No Income', 'Muhammad Aslam', '3110192661303', '1', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(146, 'Faizan Zafar', 'Zafar Iqbal Rana', '', '3120161253153', '03006809878', '3120103168727', 'Bussiness', '2009-04-07', 'male', 'user.png', 'Canal Garden Bwn', '2175', 'In-Progress', 15, 6, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '2', '2', '20000', 'No Income', 'Zafar Iqbal Rana', '3120103168727', '312012704653', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(147, 'Ch Farooq Riaz', 'Riaz Hussan', '', '3110191346893', '03018869904', '311017705902', 'Bussiness', '2011-02-05', 'male', 'user.png', 'Faisal colony bwn', '2193', 'In-Progress', 15, 6, '', '', 'Pakistani', '2014-10-09', 'no', 'Other', '7', '1', '10000', '10000', 'Riaz Hussan', '311017705902', '3110148339678', '3', 'Bussiness', '10000', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(148, 'Muhammad Abuzar', 'Muhammad Tayyab', '', '3110191346893', '03076854429', '3110116165467', 'Bussiness', '2012-01-01', 'male', 'user.png', 'Nadir Shah Rabnawaz pura Bwn', '1334', 'In-Progress', 15, 6, '', '', 'Pakistan', '2014-10-09', 'no', 'Other', '1', '1', '10000', 'No Income', 'Muhammad Tayyab', '3110116165467', '3110115418922', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(149, 'Abdul Rehman', 'M Akram', '', '3110134198875', '03045063890', '3110189136335', 'Job-Holder', '2011-02-25', 'male', 'user.png', 'hafiz abad colony bwn', '1504', 'In-Progress', 15, 6, '', '', 'Pakistani', '2015-05-04', 'no', 'Other', '11', '1', '20000', 'No Income', 'M Akram', '3110189136335', '1', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(150, 'Noor Fatima', 'Ghulam Mustafa', '', '3110101960170', '03057393722', '3110130927353', 'Bussiness', '2011-05-24', 'female', 'user.png', 'hafiz abad  bwn', '1735', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-05-02', 'no', 'Labour', 'uneducated', '1', '10000', 'No Income', 'Ghulam Mustafa', '3110130927353', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(151, 'Hajra Rani', 'M.Ayaz', '', '3110196879880', '03321601665', '3110194755807', 'Bussiness', '2011-10-19', 'female', 'user.png', 'hafiz abad  bwn', '1748', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-05-13', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '5000', 'No Income', 'M.Ayaz', '3110194755807', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(152, 'Alishba Fatim', 'Sajid Mehmood', '', '3110120209014', '03023455515', '3110185772551', 'Job-Holder', '2013-06-19', 'female', 'user.png', 'Faisal colony bwn', '1759', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-05-25', 'no', 'Other', '2', '2', '40000', 'No Income', 'Sajid Mehmood', '3110185772551', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(153, 'Ume -Roman', 'M.Saleem', '', '3110163086888', '03007586566', '3110116202953', 'Bussiness', '2012-12-12', 'female', 'user.png', 'hafiz abad  bwn', '1763', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-08-22', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Saleem', '3110116202953', '3110128309022', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(154, 'Alisha Fatima', 'M.Kashif Ali', '', '3110106953604', '03043119750', '3110186862853', 'Bussiness', '2012-03-03', 'female', 'user.png', 'hafiz abad  bwn', '1847', 'In-Progress', 8, 4, '', '', 'Pakistan', '2017-04-11', 'no', 'Labour', '1', '1', '20000', 'No Income', 'M.Kashif Ali', '3110186862853', '3110199183220', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(155, 'Muqads Sarwar', 'M.Sarwar', '', '3110147370436', '03087212815', '3110116443857', 'Bussiness', '2012-07-01', 'female', 'user.png', 'Qumar Deen Hans bwn', '2096', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Farmer', '3', '3', '10000', 'No Income', 'M.Sarwar', '3110116443857', '3110205998668', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(156, 'Manahil Fatima', 'M.Azam', '', '3110121630436', '03057646800', '3110167560965', 'Job-Holder', '2011-11-30', 'female', 'user.png', 'Quraish Colony bwn', '2115', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '1', 'uneducated', '10000', 'No Income', 'M.azam', '3110167560965', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(157, 'Amina Ashraf', 'M.AshrAF', '', '1234', '03087124343', '3110116638137', 'Job-Nil', '2013-02-20', 'female', 'user.png', 'hafiz abad  bwn', '2256', 'In-Progress', 8, 4, '', '', 'Pakistan', '2019-03-27', 'no', 'Other', '2', 'uneducated', 'No Income', 'No Income', 'M.ASHRAF', '3110116638137', '1234', '4', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(159, 'AMINA RIAZ', 'M.RIAZ', '', '3110129257728', '03081836632', '3110160384611', 'Bussiness', '2006-07-07', 'female', 'user.png', 'hafiz abad  bwn', '2324', 'In-Progress', 9, 4, '', '', 'Pakistan', '2019-04-08', 'no', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'M.rIAZ', '3110160384611', '3110150759822', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(160, 'MEHK', 'Mumtaz Ahmad', '', '3110173312078', '03007919406', '3110159998305', 'Job-Nil', '2011-08-04', 'female', 'user.png', 'hafiz abad  bwn', '2360', 'In-Progress', 8, 4, '', '', 'Pakistan', '2019-05-25', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Mumtaz Ahmad', '3110159998305', '3530138646005', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(161, 'Ume Habiba', 'M.Shabeer', '', '3110139729870', '03029806408', '3110109753265', 'Bussiness', '2008-08-12', 'female', 'user.png', 'hafiz abad  bwn', '1916', 'In-Progress', 8, 4, '', '', 'Pakistan', '2017-05-06', 'no', 'Labour', 'uneducated', 'uneducated', '5000', 'No Income', 'M.Shabeer', '3110109753265', '3110127095372', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(162, 'Sidra Sadiq', 'M.Sadiq', '', '3110130222540', '1234', '3110183441319', 'Bussiness', '2011-12-01', 'female', 'user.png', 'hafiz abad  bwn', '2098', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Sadiq', '3110183441319', '3110193821056', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(163, 'Tehreem Fatima', 'M.Ibrahim', '', '3110149330322', '03007582998', '3110116273083', 'Bussiness', '2012-03-15', 'female', 'user.png', 'Nadir sha BWN', '2100', 'In-Progress', 8, 4, '', '', 'Pakistan', '2008-04-04', 'no', 'Farmer', 'uneducated', '1', '10000', 'No Income', 'M.Ibrahim', '3110116273083', '3110140287712', '8', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(164, 'Ariba Hassan', 'M.Mansha', '', '3110195461160', '03068638395', '3110116151633', 'Job-Holder', '2011-09-02', 'female', 'user.png', 'Chak Hutiana BWN', '2101', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-04', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'M.Mansha', '3110116151633', '3110224212646', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(165, 'Aiman Fatima', 'Shahzad Basheer', '', '3110165839150', '03479244635', '3110145089917', 'Bussiness', '2011-03-26', 'female', 'user.png', 'JatO wala BWN', '2110', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Labour', '2', '1', '15000', 'No Income', 'Shahzad Basheer', '3110144089917', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(166, 'Fizza Batool', 'M.Riaz', '', '3110171562804', '03012785443', '3110116443463', 'Bussiness', '2013-09-17', 'female', 'user.png', 'Jattu Wala BWN', '2111', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Farmer', '2', 'uneducated', '15000', 'No Income', 'M.Riaz', '3110116443463', '3110112239480', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(167, 'Savaira Javaid', 'M.Javaid', '', '3110128503608', '03086038201', '311017529429', 'Job-Holder', '2012-09-12', 'female', 'user.png', 'hafiz abad  bwn', '2112', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '2', '1', '20000', 'No Income', 'M.Javaid', '311017529429', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(168, 'Saba Akram', 'M.Akram', '', '3110193414606', '1234', '3110183688407', 'Job-Holder', '2011-01-02', 'female', 'user.png', 'Jattu wala BWN', '2113', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Akram', '3110183688407', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(169, 'Ammara Tahir', 'M.Tahir', '', '3110110965726', '03313143623', '3640154840947', 'Job-Holder', '2011-09-04', 'female', 'user.png', 'Sadiq City new abadi bwn', '2124', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-04-10', 'no', 'Other', '2', '1', '40000', 'No Income', 'M.Tahir', '3640154840947', '3640145680910', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(170, 'Awaisha Maryam', 'M.Shafiq', '', '3110198657896', '03007927644', '3110186449075', 'Job-Holder', '2011-11-11', 'female', 'user.png', 'Faisal colony bwn', '2160', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-09-11', 'no', 'Docotor', '2', '2', '20000', 'No Income', 'M.Shafiq', '3110186449075', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '2019-11-11', '', '1'),
(171, 'Aqsa Shafiq', 'M.Shafiq', '', '3110184240598', '03007947661', '3110186449075', 'Job-Holder', '2017-03-14', 'female', 'user.png', 'Jattu wala BWN', '2377', 'In-Progress', 8, 4, '', '', 'Pakistan', '2019-08-28', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Shafiq', '3110186449075', '3110182146624', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(172, 'Awaisha Maryam', 'M.Umar Khubaib', '', '3110198657896', '03007927644', '3110150399123', 'Job-Holder', '2011-11-11', 'female', 'user.png', 'Faisal colony bwn', '2160', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-09-11', 'no', 'Docotor', '2', '2', '20000', 'No Income', 'M.Umar Khubaib', '3110150399123', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(173, 'Majid Hussain', 'M.Hussain', '', '3110159157387', '03048333841', '3110132633805', 'Job-Holder', '2007-07-21', 'female', 'user.png', 'Chack matran bwn', '776', 'In-Progress', 20, 8, '', '', 'Pakistan', '2012-04-05', 'no', 'Labour', '2', 'uneducated', '10000', 'No Income', 'M.Hussain', '3110132633805', '3110179457976', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(174, 'M.Amjad', 'M.Asghar', '', '3110141493027', '03347021080', '3110183793855', 'Job-Holder', '2005-12-12', 'male', 'user.png', 'Basti smandha bwn', '876', 'In-Progress', 20, 8, '', '', 'Pakistan', '2012-05-28', 'no', 'Other', '2', 'uneducated', '30000', 'No Income', 'M.Asghar', '3110183793855', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(175, 'M.Ahmad', 'M.Yaseen', '', '3110133646503', '1234', '3110161375833', 'Bussiness', '2006-07-02', 'male', 'user.png', 'hafiz abad  bwn', '888', 'In-Progress', 20, 8, '', '', 'Pakistan', '2012-05-28', 'no', 'Labour', '1', 'uneducated', '10000', 'No Income', 'M.Yaseen', '3110161375833', '3110179140182', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(176, 'M.Abd-ul-Rehman Asif', 'M.Asif', '', '3110124832089', '03007095844', '3110161489947', 'Bussiness', '2007-12-15', 'male', 'user.png', 'Ranjhay wala basti', '916', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-04-01', 'no', 'Labour', '2', '1', '10000', 'No Income', 'M.Asif', '3110161489947', '3110184846628', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(177, 'M.Huzaifa', 'M.Akram', '', '3110108640827', '03068638109', '3110111955990', 'Job-Nil', '0011-11-26', 'male', 'user.png', 'hafiz abad  bwn', '920', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', 'uneducated', '1', '10000', 'No Income', 'M.Akram', '3110111955990', '3110111955990', '4', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(180, 'M.Waqas', 'M.Ameen', '', '3110112758003', '03086920964', '3110190466853', 'Job-Holder', '2008-09-06', 'male', 'user.png', 'Ranjhay walabasti', '938', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '7', '2', '30000', 'No Income', 'M.Ameen', '3110190466853', '3110189056454', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(181, 'M.Abdullah', 'M.Yaseen', '', '3110194606647', '03017264650', '3110111752043', 'Job-Holder', '2009-08-01', 'female', 'user.png', 'hafiz abad  bwn', '944', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Yaseen', '3110111752043', '3110115514266', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(182, 'M.Yaseen', 'Rasheed Ahmad', '', '3110186168999', '03078195313', '3110115783687', 'Bussiness', '2003-11-11', 'male', 'user.png', 'Hussaina Abad bwn', '1008', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-05-01', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Rasheed Ahmad', '3110115783687', '3110179625492', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(183, 'Mursleen Ahmad', 'Rasheed Ahmad', '', '3110187224449', '03078195313', '3110115783687', 'Bussiness', '2005-08-14', 'male', 'user.png', 'Hussain Abad bwn', '1009', 'In-Progress', 20, 8, '', '', 'Pakistan', '2013-05-01', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Rasheed Ahmad', '3110115783687', '3110179625492', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(184, 'Salman Sarwar', 'M.Sarwar', '', '3110567115895', '03057466781', '3110571836311', 'Bussiness', '2007-07-10', 'male', 'user.png', 'Quraish colony bwn', '1407', 'In-Progress', 20, 8, '', '', 'Pakistan', '2015-04-03', 'no', 'Labour', '1', 'uneducated', '10000', 'No Income', 'M.Sarwar', '3110571836311', '3110130969590', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(185, 'M.Noman', 'M.Riaz', '', '3110155126913', '03041285057', '3110130816285', 'Bussiness', '2008-09-05', 'male', 'user.png', 'Basti Nadar shsh bwn', '1561', 'In-Progress', 20, 8, '', '', 'Pakistan', '2015-05-28', 'no', 'Labour', 'uneducated', '1', '10000', 'No Income', 'M.Riaz', '3110130816285', '3110107141064', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(186, 'Usman', 'M.Nawaz', '', '3110122234093', '03087250820', '3110191598661', 'Bussiness', '2006-03-15', 'male', 'user.png', 'hafiz abad  bwn', '1572', 'In-Progress', 20, 8, '', '', 'Pakistan', '2016-01-01', 'no', 'Labour', '2', '1', '10000', 'No Income', 'M.Nawaz', '3110191598661', '3110115909010', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(187, 'Zain bin Tahir', 'M.Tahir', '', '3110132894101', '03313143623', '3640154840947', 'Job-Holder', '2006-12-15', 'male', 'user.png', 'Quraish colony bwn', '2125', 'In-Progress', 20, 8, '', '', 'Pakistan', '2018-04-10', 'no', 'Other', '2', '1', '40000', 'No Income', 'M.Tahir', '3640154840947', '3640145680910', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(188, 'M.Hassan Iqbal', 'M.Iqbal', '', '3110102811777', '03014351554', '3110124821603', 'Bussiness', '2011-05-01', 'male', 'user.png', 'pull nadar shah b.w.n', '1507', 'In-Progress', 12, 5, '', '', 'Pakistan', '2015-05-04', 'no', 'Farmer', '2', 'uneducated', '20000', 'No Income', 'M.Iqbal', '3110124821603', '3110187910362', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(189, 'M.Kashif Iqbal', 'M.Iqbal', '', '3110154485479', '03044461186', '3110180470665', 'Job-Holder', '2010-01-08', 'male', 'user.png', 'shrif cote Rojha wali', '1602', 'In-Progress', 12, 5, '', '', 'Pakistan', '2016-04-01', 'no', 'Labour', 'uneducated', 'uneducated', '30000', 'No Income', 'M.Iqbal', '3110180470665', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(190, 'Asad uIlah', 'M.Shahid', '', '3110105187807', '03014052509', '3110109371867', 'Bussiness', '2010-09-02', 'male', 'user.png', 'Faisal colony qabrestan bwn', '1689', 'In-Progress', 12, 5, '', '', 'Pakistan', '2016-04-11', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Shahid', '3110109371867', '3660382952100', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(191, 'Saqib Ali', 'M.Yaseen', '', '3110148284523', '03017303826', '3520291545747', 'Job-Holder', '2008-12-20', 'male', 'user.png', 'Chack Nadar Shah BWN', '1762', 'In-Progress', 12, 5, '', '', 'Pakistan', '2016-08-22', 'no', 'Other', '1', 'uneducated', '20000', 'No Income', 'M.Yaseen', '3520291545747', '3110171518274', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(192, 'Ameer Hamza', 'Ghaznafer Ali', '', '3110174258339', '03067853147', '3110114141347', 'Bussiness', '2010-12-04', 'male', 'user.png', 'Hussain Abad bwn', '1486', 'In-Progress', 12, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '2', 'uneducated', '15000', 'No Income', 'Ghaznafer ALI', '3110114141347', '3110170735974', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(193, 'Abdullah', 'M.yousef', '', '3110138559207', '0305618804', '3110138559207', 'Bussiness', '2010-04-30', 'male', 'user.png', 'Jattu wala BWN', '1843', 'In-Progress', 12, 5, '', '', 'Pakistan', '2017-04-10', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Yousef', '3110138559207', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(194, 'Ameer Hamza', 'M.Ishfaq', '', '3120386578501', '03026931470', '3120391642091', 'Bussiness', '2009-05-10', 'male', 'user.png', 'Jattu Wala bwn', '1832', 'In-Progress', 12, 5, '', '', 'Pakistan', '2010-04-10', 'no', 'Other', '1', '2', '10000', 'No Income', 'M.Ishfaq', '3120391642091', '1234', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(195, 'Abdul Rehman', 'Ghulam Mustafa', '', '3110161205843', '03067850976', '3110131786461', 'Bussiness', '2011-07-10', 'male', 'user.png', 'NILL', '1841', 'In-Progress', 12, 5, '', '', 'Pakistan', '2017-04-10', 'no', 'Shopkeeper', '2', 'uneducated', '10000', 'No Income', 'Ghulam Mustafa', '3110131786461', '1234', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(196, 'M.Adeel Kaleem', 'M.Kaleem', '', '3110243403517', '03045945032', '3110213748579', 'Job-Holder', '2010-04-06', 'male', 'user.png', 'Faisal colony bwn', '1964', 'In-Progress', 12, 5, '', '', 'Pakistan', '2018-03-01', 'no', 'Other', '2', 'uneducated', '30000', 'No Income', 'M.Kaleem', '3110213748579', '3110296637346', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(197, 'Hamdan AkbAR', 'M.Akbar', '', '3110189056917', '03023337774', '3110162133433', 'Bussiness', '2011-04-01', 'male', 'user.png', 'Qamar-ud_deen hans BWN', '1541', 'In-Progress', 12, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Akbar', '3110162133433', '3110154046460', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(198, 'Hassnain Ali', 'M.Mansha', '', '3110146027389', '03438035718', '311016388041', 'Bussiness', '2009-08-14', 'male', 'user.png', 'hafiz abad  bwn', '2146', 'In-Progress', 12, 5, '', '', 'Pakistan', '2018-04-13', 'no', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Mansha', '311016388041', '3110177085050', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(199, 'Ahmad Hassan', 'M.Ameen', '', '3110193931631', '03024979128', '3110125790231', 'Bussiness', '2013-05-10', 'male', 'user.png', 'NILL', '1566', 'In-Progress', 12, 5, '', '', 'PakistanA', '2015-08-22', 'no', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Ameen', '3110125790231', '3110151984570', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(200, 'GulFam', 'M.Fiaz', '', '311041239723', '03087716453', '3110416642387', 'Bussiness', '2011-11-11', 'male', 'user.png', 'hafiz abad  bwn', '1801', 'In-Progress', 12, 5, '', '', 'PakistanG', '2017-04-05', 'no', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Fiaz', '3110416642387', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(201, 'M.Wajid Hussain', 'M.Shaheed  Hussain', '', '3110181552547', '1234', '3110142998713', 'Bussiness', '2010-10-19', 'male', 'user.png', 'Chack Hutiana BWN', '1544', 'In-Progress', 12, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', '1', 'uneducated', '20000', 'No Income', 'M.Shaheed Hussain', '3110142998713', '3110188326986', '5', 'Bussiness', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(202, 'Ahmad Raza', 'Ghulam Mustafa', '', '3110569828169', '03073979755', '3110590896911', 'Bussiness', '2011-05-08', 'male', 'user.png', 'Chack Sanetteka BWN', '1901', 'In-Progress', 12, 5, '', '', 'Pakistan', '2017-04-20', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Ghulam Mustafa', '311059089691', '3110517386982', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(203, 'Allah Rakha', 'Allah wadhaya', '', '3110114372129', '03006913429', '3110140658383', 'Job-Holder', '2010-10-24', 'male', 'user.png', 'Chack Sanetteka BWN', '1947', 'In-Progress', 12, 5, '', '', 'Pakistan', '2017-08-16', 'no', 'Other', '3', 'uneducated', '15000', 'No Income', 'Allah Wadhaya', '3110140658383', '3110172910728', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(204, 'Abdul wasee', 'Hafiz ghulam Fareed', '', '3110127213619', '03078638842', '3110135678123', 'Bussiness', '2013-01-01', 'male', 'user.png', 'Basti Ali Muhamma Hafiza Abad bWN', '1481', 'In-Progress', 12, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Farmer', '11', 'uneducated', '30000', 'No Income', 'Hafiz Ghulam Fareed', '3110135678123', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(205, 'M.Haneef', 'M.Shareef', '', '3110196468107', '03082717742', '3110132131549', 'Job-Holder', '2012-08-01', 'male', 'user.png', 'Basti muhammad Shareef BWN', '1661', 'In-Progress', 12, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Shareef', '3110132131549', '3110110928876', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(206, 'Usman ghani', 'M.Mansha', '', '3110104372595', '03216980268', '3110159906191', 'Bussiness', '2010-01-01', 'male', 'user.png', 'Hussain Abad bwn', '1686', 'In-Progress', 12, 5, '', '', 'Pakistan', '2016-04-11', 'no', 'Farmer', '2', 'uneducated', '10000', 'No Income', 'M.Mansha', '3110159906191', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(207, 'Farhan Ahmad', 'Ahmad Hassan', '', '3110110965079', '03014347061', '3110116256645', 'Bussiness', '2010-03-15', 'male', 'user.png', 'Nadar Shah BWN', '1306', 'In-Progress', 12, 5, '', '', 'Pakistan', '2014-08-11', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Ahmad Hassan', '3110116256645', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(208, 'Habibullah', 'M.Shabeer', '', '311018127685', '03064589662', '3110109753265', 'Bussiness', '2010-10-17', 'male', 'user.png', 'New Abadi BWN', '1919', 'In-Progress', 12, 5, '', '', 'Pakistan', '2017-05-06', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Shabeer', '3110109753265', '3110127095372', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(209, 'M.Ali Hamza', 'Ghulam Mustafa', '', '3110192906441', '03068638130', '3110139829119', 'Job-Holder', '2016-02-12', 'male', 'user.png', 'Quraish COLONY BWN', '2021', 'In-Progress', 12, 5, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'Ghulam Mustafa', '3110139829119', '3110179383218', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(210, 'M.Islam', 'Zahoor Ahmad', '', '3110124261155', '03027092864', '3110115783625', 'Bussiness', '2007-06-01', 'male', 'user.png', 'Basti Hussain Abad BWN', '1099', 'In-Progress', 12, 5, '', '', 'Pakistan', '2014-04-05', 'no', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'Zahoor Ahmad', '3110115783625', '3110101816896', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(211, 'Hammad', 'Riaz Ahmad', '', '311014796137', '03084454671', '311016258491', 'Bussiness', '2006-08-01', 'male', 'user.png', 'Basti Hafiza abad BWN', '2179', 'In-Progress', 12, 5, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', 'uneducated', '1', '30000', 'No Income', 'Riaz Ahmad', '311016258491', '311012759606', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(212, 'Amara Sultan', 'M.Sultan', '', '3110180143642', '03058522799', '3110176266619', 'Bussiness', '2012-11-22', 'female', 'user.png', 'hafiz abad  bwn', '1794', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'M.Sultan', '3110176266619', '3110103544494', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(213, 'Hamad Ullah Madni', 'Muhammad Mohsin', '', '3110159842265', '0', '3110115825669', 'Job-Holder', '2014-08-18', 'male', 'user.png', 'Hafiz Abad Colony', '1888', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Muhammad Mohsin', '3110115825669', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(214, 'Alia', 'allah rakha', '', '3110151171396', '03026523640', '3110172924277', 'Bussiness', '2012-04-19', 'female', 'user.png', 'Quraish colony bwn', '1802', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '2', '15000', 'No Income', 'allah rakha', '3110172924277', '3110148206038', '4', 'Bussiness', '10000', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(215, 'Mahnoor Fatima', 'allah rakha', '', '3110168608464', '03067807869', '3110147946057', 'Bussiness', '2013-05-12', 'female', 'user.png', 'Basti Jattu wala', '1814', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', 'uneducated', '1', '30000', 'No Income', 'allah rakha', '3110147946057', '1234', '4', 'Bussiness', '15000', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(216, 'Arooj Fatima', 'Muneer Ahmad', '', '3110173528464', '03072274315', '3110151758285', 'Job-Holder', '2012-06-20', 'female', 'user.png', 'Court Fatiha-m', '1830', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Muneer Ahmad', '3110151758285', '1234', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(217, 'Muhammad Hussnain', 'Muhammad  Abbas', '', '3110147028523', '0', '3640256067109', 'Job-Holder', '2013-03-03', 'male', 'user.png', 'Hafiz Abad Colony', '1893', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Muhammad  Abbas', '3640256067109', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(218, 'Mahreen Fatima', 'Tariq Mahmood', '', '3110195528370', '03004841124', '3110116427703', 'Job-Holder', '2013-07-01', 'female', 'user.png', 'Basti Mahi Wali', '1831', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', '1', '20000', 'No Income', 'Tariq Mahmood', '3110116427703', '3110186154556', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(219, 'Bubashir hussain', 'Mudammad Munsha', '', '311019310764', '03068638355', '3110116151633', 'Job-Holder', '2013-05-30', 'male', 'user.png', 'Arif wala road chunk hotyana B.W.N', '1940', 'In-Progress', 7, 3, '', '', 'pakistan', '2017-08-15', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'nill', '0', '3110224212646', '5', 'Other', 'No Income', 'islam', 'No', '0', '0', '0', '2019-11-11', '', '', '0'),
(220, 'Ayesha Bibi', 'M.Hussain', '', '3110185707344', '03043775000', '3110109865877', 'Bussiness', '2013-06-08', 'female', 'user.png', 'Basti Haji Chraj', '1837', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Farmer', '1', '1', '10000', 'No Income', 'M.Hussain', '3110109865877', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(221, 'mudasir', 'Mudammad Talib', '', '3110150071435', '03085559073', '3110126359893', 'Job-Nil', '2013-01-21', 'male', 'user.png', 'Hafiz abid colony b.w.n', '1945', 'In-Progress', 7, 3, '', '', 'pakistan', '2017-08-15', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(222, 'Um-Rubab', 'M.Kashif', '', '3110143316170', '03007585573', '3110186862853', 'Job-Holder', '2013-07-04', 'female', 'user.png', 'Nai Abadi bwn', '1846', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '3', '1', '20000', 'No Income', 'M.Kashif', '3110186862853', '3110199183220', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(223, 'ali hussain', 'Mudammad aslam', '', 'nill', '03067686414', '3110191485086', 'Job-Nil', '2014-01-01', 'male', 'user.png', 'hafiz abad colony b.w.n', '1990', 'In-Progress', 7, 3, '', '', 'pakistan', '2018-03-02', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'nill', '0', '311018469916', '2', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(224, 'Ansha', 'Gulam -M', '', '3110130507900', '03077859957', '3110128955857', 'Bussiness', '2013-11-02', 'female', 'user.png', 'Chogta Aryian', '1862', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Farmer', '1', '2', '10000', 'No Income', 'Gulam-M', '3110128955857', '3110137364668', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(225, 'Mariam', 'M.Ashraf', '', '3110112809532', '03084659369', '3110134721387', 'Job-Nil', '2012-08-01', 'female', 'user.png', 'Basti Rab Tavkal', '1866', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', 'uneducated', '1', '15000', 'No Income', 'M.Ashraf', '3110134721387', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(226, 'nimra basheer', 'Mudammad basheer', '', '3110155305102', '03006627334', '3110135942929', 'Job-Nil', '2012-09-18', 'female', 'user.png', 'basti ali ahmad b.w.n', '2204', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-09', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'nill', '0', '3110123037996', '5', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(227, 'Segha Tul Haq', 'Muhammad Maqbool', '', '3110115796803', '0', '3640191655619', 'Job-Holder', '2014-01-15', 'male', 'user.png', 'Hafiz Abad Colony', '1899', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'Muhammad Maqbool', '3640191655619', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(228, 'Amara', 'Ahmad Yar', '', '3110185011288', '03007922381', '3110115796909', 'Job-Holder', '2013-07-30', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1867', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '1', 'uneducated', '20000', 'No Income', 'Ahmad Yar', '3110115796909', '3110115323356', '10', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(229, 'Fezan Abbas', 'Fakhir Abbas', '', '3110166038543', '03075088203', '3110148809269', 'Job-Holder', '2013-09-15', 'male', 'user.png', 'Hafiz Abad Colony', '1891', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', '11', 'uneducated', '20000', 'No Income', 'Fakhir Abbas', '3110148809269', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(230, 'mudassir hussain', 'Mudammad hussain', '', '3110121089843', '03048333841', '3110132633805', 'Job-Nil', '2012-12-05', 'male', 'user.png', 'chak matra b.w.n', '2231', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'nill', '0', '3110179457976', '8', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(231, 'Muhammad Adeel', 'Muhammad Shabir', '', '3110194388113', '03067682615', '3110163242109', 'Job-Holder', '2013-04-01', 'male', 'user.png', 'Bahi Pass', '1900', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', '3', 'uneducated', '20000', 'No Income', 'Muhammad Shabir', '3110163242109', '3110125763926', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(232, 'azmeer-ul-tamsh', 'Mudammad Munawar', '', '3110175516879', '03015152808', '3110160393967', 'Job-Holder', '2013-02-23', 'male', 'user.png', 'hazif abad  colony b.w.n', '2235', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '7', '1', '30000', 'No Income', 'nill', '0', '311012135137', '5', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(233, 'Rimsha', 'M.Akram', '', '3110116965286', '03037919228', '3110107723851', 'Bussiness', '2014-07-12', 'female', 'user.png', 'Hafiz abad colony B.W.N', '2195', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Farmer', '2', 'uneducated', '15000', 'No Income', 'M.Akram', '3110107723851', '3110113385200', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(234, 'Ahmad Zeshan', 'Muhammad Mohatram', '', '3110160267755', '0', '3110142067629', 'Job-Holder', '2013-01-05', 'male', 'user.png', 'Hafiz Abad Colony', '1902', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Muhammad Mohatram', '3110142067629', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(235, 'yaseem', 'abdul majeed', '', '311013853458', '03026987701', '3110146758711', 'Job-Nil', '2012-03-11', 'female', 'user.png', 'hazif abad colony b.w.n', '2236', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '1', '1', '10000', 'No Income', 'nill', '0', '310190881002', '3', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(236, 'fahad', 'allah dita', '', '310159554973', '03039461534', '3110182690579', 'Job-Nil', '2011-02-02', 'male', 'user.png', 'hazif abad colony b.w.n', '2237', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'nill', '0', '3110105563734', '6', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(237, 'Zainul Abdein', 'Muhammad Bakhsh', '', '3110146291921', '0308869202', '3110116483171', 'Job-Holder', '2018-05-11', 'male', 'user.png', 'Arif Wala Road', '1903', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-20', 'No', 'Other', '7', '2', '20000', '20000', 'Muhammad Bakhsh', '3110116483171', '3110115814044', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(238, 'Fatima-ul-Zahra', 'M.Muneer', '', '3110161885840', '03006627334', '31101355942929', 'Bussiness', '2014-01-28', 'female', 'user.png', 'Basti Ali Muhammad Arain', '2196', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Farmer', '1', 'uneducated', '10000', 'No Income', 'M.Muneer', '31101355942929', '3110123037996', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(239, 'm.noman', 'm.akram', '', '3110127498027', '03070367674', '3110107723851', 'Job-Nil', '2011-09-01', 'male', 'user.png', 'hazif abad colony b.w.n', '2239', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(240, 'ubed-ul-allah nazeer', 'nazeer ahmad', '', '3120313280511', '03027852340', '3120329760749', 'Job-Nil', '2012-06-23', 'male', 'user.png', 'jatto wala b.w.n', '2240', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '1', '1', '10000', 'No Income', 'nill', '0', '3120395450920', '3', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(241, 'Muhammad Zubeer', 'Muhammad Sarfaraz', '', '3110183778333', '0', '3110159579373', 'Job-Holder', '2012-07-01', 'male', 'user.png', 'Chak Nadar Shah', '1908', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-27', 'No', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'Muhammad Sarfaraz', '3110159579373', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(242, 'Muhammad Haseeb ', 'Muhammad Mazhar Fareed', '', '4230164805053', '0', '3110137924133', 'Job-Holder', '2013-11-27', 'male', 'user.png', 'Hafiz Abad Colony', '1920', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-05-06', 'No', 'Labour', '3', 'uneducated', '20000', '20000', 'Muhammad Mazhar Fareed', '3110137924133', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(243, 'Sana Fatima', 'Abdul Rehman', '', '3110159704666', '03012498630', '3110151665331', 'Job-Holder', '2014-03-11', 'female', 'user.png', 'Basti Husaina Abad', '1879', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'Abdul Rehman', '3110151665331', '3110181935734', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(244, 'm.usman ghani', 'm.zulfqar', '', '310197103827', '03087922639', '3110174945943', 'Job-Holder', '2011-01-10', 'male', 'user.png', 'tebi mahiwali b.w.n', '2242', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-16', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'nill', '0', '3110162420916', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(245, 'Muhammad', 'Muhammad Fiaz', '', '3110127059309', '03015711784', '3110113052003', 'Job-Holder', '2012-04-25', 'male', 'user.png', 'Hafiz Abad Colony', '1958', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-08-29', 'No', 'Labour', 'uneducated', 'uneducated', '20000', '20000', 'Muhammad Fiaz', '3110113052003', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(246, 'Abdul Waheed', 'Naeem Tahir', '', '3110199718483', '03074233038', '3110113262365', 'Job-Holder', '2013-11-09', 'male', 'user.png', 'Hafiz Abad Colony', '1966', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-03-01', 'No', 'Labour', '2', 'uneducated', '20000', '20000', 'Naeem Tahir', '3110113262365', '0', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(247, 'abdullah', 'abdul gahafoor', '', '3110113081067', '03037056404', '3110114721447', 'Job-Holder', '0013-01-07', 'male', 'user.png', 'tebi mahiwali b.w.n', '2243', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-26', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(248, 'Musfira', 'M.Mohmian', '', '3520143573252', '03007386300', '3110153792921', 'Job-Holder', '2013-12-31', 'female', 'user.png', 'Basti Hafiza Abad', '1892', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '2', 'uneducated', '20000', 'No Income', 'M.Mohmian', '3110153792921', '', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '2019-11-11', '0'),
(249, 'M Hussnain', 'Muhammad Yaseen', '', '3110133645553', '03016529637', '3110161375833', 'Job-Holder', '2012-02-09', 'male', 'user.png', 'Hafiz Abad Colony', '2348', 'In-Progress', 6, 3, '', '', 'Pakistan', '2019-04-10', 'No', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Yaseen', '3110161375833', '3110179140182', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(250, 'Mariyam Ameen', 'M.Ameen', '', '3110134497710', '03024997128', '3110125790231', 'Bussiness', '2014-08-08', 'female', 'user.png', 'Hafiz Abad B.W.N', '2200', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Ameen', '3110125790231', '3110151984570', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(251, 'Muhammad Ahmad', 'Abdul Rehman', '', '3110111273967', '0', '3110108913927', 'Job-Holder', '2011-01-04', 'male', 'user.png', 'Hafiz Abad Colony', '2388', 'In-Progress', 6, 3, '', '', 'Pakistan', '2019-09-04', 'No', 'Labour', 'uneducated', 'uneducated', '20000', '20000', 'Abdul Rehman', '3110108913927', '3110183690144', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(252, 'Faika Faisal', 'Faisal Iqball', '', '3110179482898', '03002652625', '3110146918211', 'Bussiness', '2015-04-04', 'female', 'user.png', 'Muhala Islam Nagar', '2206', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Farmer', 'uneducated', '1', '15000', 'No Income', 'Faisal Iqball', '3110146918211', '3110122748661', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(253, 'Zineet bibi', 'Zuhoor Ahmad', '', '3110157176022', '03454139651', '3110179962579', 'Job-Holder', '2013-04-25', 'female', 'user.png', 'Basti Jodrana wali', '1911', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '2', 'uneducated', '10000', 'No Income', 'Zuhoor Ahmad', '3110179962579', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(254, 'Ayesha Farooq', 'Khalid Faroow', '', '3110106883130', '03002799170', '3110181586841', 'Bussiness', '2014-08-09', 'female', 'user.png', 'Basti Sohny Wale', '2226', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-16', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Father', '3110181586841', '31101', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(255, 'Kashaf Arooj', 'basheer Ahmad', '', '3110176673908', '03067850769', '3110193849215', 'Job-Holder', '2013-10-16', 'female', 'user.png', 'Basti Hussaina Abad', '1914', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', '2', '20000', 'No Income', 'Basheer Ahmad', '3110193849215', '', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '2019-11-11', '0'),
(256, 'Aqsa', 'M.Shabeer', '', '3110157621688', '03064589662', '3110109753265', 'Bussiness', '2014-08-09', 'female', 'user.png', 'Quraish colony', '2227', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-16', 'No', 'Labour', '1', 'uneducated', '10000', 'No Income', 'Father', '3110109753265', '3110127095372', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(257, 'Mahnial Ahmad', 'M.Ahmad', '', '3110174021118', '03457063962', '3110167038157', 'Bussiness', '2014-03-08', 'female', 'user.png', 'Basti Qamar Den', '1918', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Ahmad', '3110167038157', '3110183014132', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(258, 'Ifra Akbar', 'M.Akbar', '', '3110123598618', '03023337774', '3110162133433', 'Bussiness', '2015-07-01', 'female', 'user.png', 'Chak Abdullah Walla', '2229', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-16', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Father', '3110162133436', '3110154046460', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(259, 'Awasa Akbar', 'M.Akbar', '', '3110143400126', '03023337774', '3110162133433', 'Bussiness', '2013-01-10', 'female', 'user.png', 'Basti Qamar Den', '1921', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'M.Akbar', '3110162133433', '3110154046460', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(260, 'Hor_e_Ain', 'M.Ahmad', '', '3110120142836', '03089045296', '3110123468703', 'Bussiness', '2013-09-05', 'female', 'user.png', 'Basti rana wali', '1930', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Farmer', '1', '2', '10000', 'No Income', 'M.Ahmad', '3110123468703', '3110154012562', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(261, 'Mehnaz Fatima', 'M.Haneef', '', '3110101567188', '03006147152', '3110195488003', 'Bussiness', '2016-04-20', 'female', 'user.png', 'Basti Mian M.Ghany Wali', '2241', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-22', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Father', '3110195488003', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(262, 'zain', 'gulzar ahmad', '', '3110185112955', '03096584506', '3110117696765', 'Job-Nil', '2015-10-18', 'male', 'user.png', 'hafizaabad', '2306', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'gulzar ahmad', '3110117696765', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(263, 'Javeria Yaseen', 'M.Yassen', '', '3110165019296', '03017681524', '3110114210407', 'Bussiness', '2015-03-24', 'female', 'user.png', 'Basti Sadiq Pur Chatta', '2254', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'No', 'Other', '2', 'uneducated', '10000', 'No Income', 'Father', '3110114210407', '3110118938824', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(264, 'rashid sadiq', 'M.sadiq', '', '311015861527', '0', '311053178049', 'Job-Nil', '2018-01-08', 'male', 'user.png', 'bipass bwm', '2309', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'M,sadiq', '311053178049', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(265, 'Amna', 'Ishaq', '', '3110165019296', '03004229981', '3110144720857', 'Bussiness', '2015-03-24', 'female', 'user.png', 'Din Pur Sharif', '2259', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Father', '3110144720857', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(266, 'Fatima B. B', 'M.Wazeer', '', '3110165162220', '03013112482', '3110594674641', 'Bussiness', '2014-10-10', 'female', 'user.png', 'Basti Jodana B.W.N', '2275', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'No', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Waazeer', '3110594674641', '3110161318120', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(267, 'Muskan Tahir', 'M.Tahir', '', '3110116026616', '03314143623', '3110154840947', 'Job-Holder', '2015-03-16', 'female', 'user.png', 'Sadique City Housing Colony', '2277', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-29', 'No', 'Engineer', '2', '1', '20000', 'No Income', 'M.Tahir', '3110154840947', '3110145680910', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(268, 'altaf ali', 'nazeer ahmad', '', '3110194823581', '0303314922', '3110158012661', 'Job-Nil', '2015-02-02', 'male', 'user.png', 'shareef lakha basti', '2310', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'nazeer ahmad', '3110158012661', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(269, 'Aleeza Fatima', 'Ali Imran', '', '3110175958494', '03076594199', '311012408961', 'Bussiness', '2015-08-25', 'female', 'user.png', 'Muhala Islam Nagar', '2284', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'Ali Imran', '311012408961', '3110119447650', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(270, 'abu bakar sadiq', 'm.fayaz', '', '3110114445749', '03015711734', '3110113052203', 'Bussiness', '2014-11-07', 'male', 'user.png', 'takht mahal', '2313', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-07', 'no', 'Other', '1', 'uneducated', '10000', '10000', 'M.fayaz', '3110113052203', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(271, 'Asad ullah', 'abdull razaq', '', '3110119969834', '03087267323', '3110129823199', 'Bussiness', '2015-11-02', 'male', 'user.png', 'hafizaabad', '2315', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-02-09', 'no', 'Other', '1', '1', '10000', '10000', 'abdull razaq', '3110129823199', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(272, 'Zainab Hussain', 'M.Husain', '', '3110102883428', '03008148344', '3110122285093', 'Bussiness', '2015-05-28', 'female', 'user.png', 'Din Pur sharif B.W .N', '2293', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-02', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'M.Husain', '3110122285093', '3110192689796', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(273, 'waqas arshad', 'm arshad', '', '3110161884257', '0', '3110124808535', 'Job-Holder', '2015-06-13', 'male', 'user.png', 'deenpoor shareef', '2319', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-02-09', 'no', 'Other', '7', '1', '20000', '20000', 'm.arshad', '3110222480535', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(274, 'moiz ahmad', 'ahmad hassan', '', '3110114949709', '03336314615', '3110171359095', 'Job-Holder', '2016-03-30', 'male', 'user.png', 'Hafiza Abad', '2321', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', '2', 'uneducated', '20000', '20000', 'ahmad hassan', '311017190965', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(275, 'm zuhaib', 'm akasha', '', '0', '0', '0', 'Job-Nil', '2000-01-01', 'male', 'user.png', '0', '2325', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'nill', '0', '0', '0', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(276, 'zain ul abideen', 'M.ibrahim', '', '3110117511103', '03007582998', '3110116273083', 'Bussiness', '2013-10-25', 'male', 'user.png', 'pull nadar shah', '2329', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', '11', 'uneducated', '20000', '20000', 'm ibrahim', '3110116273083', '0', '2', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(277, 'M abdullah', 'hafiz m muneer', '', '3110152507281', '03006627334', '3110135942929', 'Job-Holder', '2015-07-16', 'male', 'user.png', 'basti ali muhammad arain', '2338', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Shopkeeper', '2', '1', '20000', 'No Income', 'nill', '0', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(278, 'm zeeshan', 'm yaseen', '', '311018435581', '0', '3110199697657', 'Job-Holder', '2015-04-01', 'male', 'user.png', 'muhalla nayai abadi', '2343', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-10', 'no', 'Other', 'uneducated', '1', '10000', '10000', 'm yaseen', '3110199697657', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(279, 'ahsan ullah  madni', 'm mohsin', '', '0', '0', '0', 'Job-Nil', '2019-01-01', 'male', 'user.png', 'Hafiza Abad', '2355', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-06-20', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'nill', '0', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(280, 'abdul wahab', 'mumtaaz ahmad', '', '3110162946541', '03353013864', '3110159998305', 'Job-Holder', '2015-08-01', 'male', 'user.png', 'Hafiza Abad', '2362', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-02-28', 'no', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'mumtaz', '0', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(281, 'm farhan rasheed', 'rasheed farooq', '', '3110156989201', '03007582057', '3110116639271', 'Job-Nil', '2014-12-12', 'male', 'user.png', 'faisal colony', '2683', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-08-31', 'no', 'Other', '1', 'uneducated', '15000', '15000', 'rasheed farooq', '0', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(282, 'Arooj', 'M.Rehman', '', '3110187764718', '03062513266', '3110114609705', 'Job-Holder', '2015-04-24', 'female', 'user.png', 'Hafiz abad colony B.W.N', '2294', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-02', 'No', 'Other', '2', 'uneducated', '35000', 'No Income', 'M.Rehman', '3110114609705', '3110162345638', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(283, 'Saba Hussain', 'M.Shahid Hussain', '', '3110173668864', '03007925207', '3110142998713', 'Bussiness', '2015-10-25', 'female', 'user.png', 'Chak Hotyana', '2304', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-11-11', 'No', 'Other', '2', 'uneducated', '10000', 'No Income', 'M.Shahid Hussain', '3110142998713', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(284, 'Eman', 'M.Bashir', '', '0', '03083361160', '0', 'Bussiness', '2015-03-13', 'female', 'user.png', 'Quraish colony', '2307', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-06', 'No', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Bashir', '0', '3110138867410', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-11', '', '', '0'),
(285, 'Arooj Fatima', 'M.Yassen', '', '3110103916944', '03027058118', '3110188369131', 'Bussiness', '2015-01-01', 'female', 'user.png', 'Diin Pur Sharif', '2308', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-06', 'No', 'Farmer', '1', 'uneducated', '15000', 'No Income', 'M.Yassen', '3110188369131', '3110134860806', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(286, 'Hajjab', 'M.Maqsood', '', '3110137578692', '03046689836', '3110150753631', 'Bussiness', '2014-04-11', 'female', 'user.png', 'Basti Ramzan Joya', '2314', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-06', 'No', 'Farmer', '2', 'uneducated', '15000', 'No Income', 'M.Maqsood', '3110150753631', '3110160888632', '4', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(287, 'Shafia', 'Naveed-ul-Hussan', '', '311012706$8621', '03008134284', '3110116256621', 'Bussiness', '2015-01-01', 'female', 'user.png', 'Hafiz abad colony B.W.N', '2316', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-08', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Naveed--Hussan', '3110116256621', '3110148167840', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(288, 'Nimra Fatima', 'Fakhar Abbas', '', '3110195777282', '03085088230', '3110148909269', 'Bussiness', '2015-06-06', 'female', 'user.png', 'Hafiz abad colony B.W.N', '2320', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-08', 'No', 'Other', '3', 'uneducated', '15000', 'No Income', 'Fakhar Abbas', '3110148909269', '3110148809269', '2', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(289, 'Ayesha Eaheed', 'Abdul-ul-Waheed', '', '3110193734304', '03067193126', '3110193946595', 'Bussiness', '2014-07-14', 'female', 'user.png', 'Din Pur Sharif', '2365', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-08-28', 'No', 'Farmer', '1', 'uneducated', '15000', 'No Income', 'Abdul-ul-Waheed', '3110193946595', '3110109725794', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(290, 'Zulykha Asif', 'M.Asif', '', '3110184513680', '03064950085', '3110105799355', 'Bussiness', '2015-08-14', 'female', 'user.png', 'Chak Qamar Din Bodla', '2364', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-08-28', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'M.Asif', '311015799355', '3110147420322', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(291, 'Abrish Fatima', 'M.Amjaf', '', '3110112114758', '03004119966', '3110119592057', 'Job-Holder', '2015-08-14', 'female', 'user.png', 'Hafiz abad colony B.W.N', '2323', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-08', 'No', 'Teacher', '12', '7', '30000', 'No Income', 'M.Amjad', '3110119592057', '3110115835286', '4', 'Job-Holder', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(292, 'Safia Shaban', 'M.Shaban', '', '3110103365042', '03068456841', '3110185988345', 'Bussiness', '2014-02-23', 'female', 'user.png', 'Chak Nathy Wala', '2366', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-08-28', 'No', 'Shopkeeper', '1', '1', '15000', 'No Income', 'M.Shaban', '3110185988345', '0', '1', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(293, 'Tahreem Fatima', 'M.Shaban', '', '3110104304592', '03068416841', '3110185988345', 'Bussiness', '2014-07-28', 'female', 'user.png', 'Chak Nathy Wala', '2367', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-28', 'No', 'Shopkeeper', '1', '1', '15000', 'No Income', 'M.Shaban', '3110185988345', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(294, 'M.Farhan Rashid', 'Rashid Farooq', '', '3110156989207', '03007582057', '3110116639271', 'Bussiness', '2014-12-12', 'male', 'user.png', 'Qamar Din Hans', '2368', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-08-28', 'No', 'Farmer', '2', '1', '15000', 'No Income', 'Rashid Farooq', '3110116639271', '3110139302932', '3', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(295, 'Saklain Satar', 'Abdul-Satar', '', '3110124561015', '03037066730', '3110190470257', 'Bussiness', '2014-06-10', 'male', 'user.png', 'Afair colony', '2276', 'In-Progress', 1, 1, '', '', 'Pakistan', '2020-02-29', 'No', 'Other', '1', '1', '15000', 'No Income', 'Abdul-Satar', '3110190470257', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(296, 'aiman noor', 'naveed akhtar', '', '3110191892600', '03078635586', '3110140844189', 'Job-Nil', '2012-06-06', 'female', 'user.png', 'hazif abad colony b.w.n', '2266', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-27', 'no', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'nill', '0', '0', '2', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(297, 'iram fatima', 'Mudammad shafique', '', '31012853721', '03065244560', '311015710107', 'Job-Nil', '2013-02-09', 'female', 'user.png', 'deen poor shareef jattoowala b.w.n', '2273', 'In-Progress', 5, 3, '', '', 'pakistan', '2019-03-28', 'no', 'Labour', '2', 'uneducated', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(298, 'm.ehtasham', 'Mudammad asghar', '', 'nill', '03086686959', '3110536128053', 'Job-Nil', '2012-12-05', 'male', 'user.png', 'hazifabad b.w.n', '2274', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-28', 'no', 'Farmer', '2', 'uneducated', 'No Income', 'No Income', 'nill', '0', '0', '5', 'Other', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(299, 'm.khezar zahoor', 'zahoor ahmad', '', '3110199935063', '03027775826', '3110183929099', 'Job-Holder', '2011-12-31', 'male', 'user.png', 'rahjy wala khan b.w.n', '2272', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-28', 'no', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'nill', '0', '0', '6', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(300, 'zobia', 'Mudammad Muntaz', '', '311016711967', '03017921214', '311014998960', 'Job-Nil', '2011-09-25', 'female', 'user.png', 'hazif abad colony b.w.n', '2278', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-09-20', 'no', 'Labour', 'uneducated', 'uneducated', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(301, 'samya bibi', 'm.ishaq', '', '3110133275120', '03045607088', '31101128199910', 'Job-Nil', '2015-05-13', 'female', 'user.png', 'faty kot b.w.n', '2279', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-29', 'no', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'nill', '0', '3110183751872', '3', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(302, 'azeem mohsin', 'Mudammad ismaeel', '', '3110123804091', '03007986123', '311010416217', 'Job-Nil', '2013-08-05', 'male', 'user.png', 'deen poorsharef b.w.n', '2280', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-01-29', 'no', 'Farmer', '2', 'uneducated', '20000', 'No Income', 'nill', '0', '0', '3', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(303, 'seerat fatima', 'Mudammad  aslam', '', '3110194898900', '03447397796', '3110106356697', 'Bussiness', '2012-02-25', 'female', 'user.png', 'pull fordwar b.w.n', '2281', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-29', 'no', 'Shopkeeper', '3', '1', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(304, 'zohar reyaz', 'reyaz ahmad', '', '3110153717573', '03084454671', '3110116258491', 'Job-Nil', '2011-11-01', 'male', 'user.png', 'hazif abad colony b.w.n', '2285', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-02-24', 'no', 'Labour', 'uneducated', 'uneducated', '30000', 'No Income', 'nill', '0', '3110127596062', '5', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(305, 'ali raza', 'Mudammad fiyaz', '', '3110195389113', '03029824494', '3110133878839', 'Job-Nil', '2007-08-16', 'male', 'user.png', 'hazif abad colony b.w.n', '2287', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-04-02', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(306, 'Hamza Hussain', 'Muhammad Husain', '', '3110192110325', '12345', '3110142135341', 'Bussiness', '2002-08-16', 'male', 'user.png', 'Bahawalnagar', '122', 'In-Progress', 28, 12, '', '', 'Pakistani', '2019-11-12', 'no', 'Other', '2', '1', '15000', 'No Income', 'Muhammad Husain', '3110142135341', '1', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(307, 'Muhammad Sayyam', 'M.Asghar', '', '3110562576699', '12', '3110136128053', 'Job-Nil', '2003-07-17', 'male', 'user.png', 'Bahawalnagar', '151', 'In-Progress', 28, 12, '', '', 'Pakistan', '0001-11-01', 'no', 'Other', 'uneducated', '1', '5000', 'No Income', 'M.Asghar', '3110136128053', '1234', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(308, 'Abuzar Shafi', 'Muhammad Shafi', '', '3110168068005', '1', '3110132578783', 'Bussiness', '2004-03-23', 'male', 'user.png', 'Bahawalnagar', '333', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-19', 'no', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Muhammad Shafi', '3110132578783', '1', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(309, 'Ali Ahmad', 'Muhammad Ahmad', '', '3110105746823', '1', '3110161630575', 'Bussiness', '2005-12-25', 'male', 'user.png', 'Bahawalnagar', '363', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Ahmad', '3110161630575', '1', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(310, 'Muhammad Arbaz Khan', 'Muhammad Mushtaq', '', '3110156585513', '1', '3110195987147', 'Bussiness', '20006-01-10', 'male', 'user.png', 'Bahawalnagar', '467', 'In-Progress', 28, 12, '', '', 'Pakistani', '2019-11-12', 'no', 'Other', '2', '1', '30000', 'No Income', 'Muhammad Mushtaq', '3110195987147', '1', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(311, 'Khalid Hussain', 'Mumtaz Ahmad', '', '3110129477195', '12345', '3110137098713', 'Job-Nil', '2002-08-20', 'male', 'user.png', 'Bahawalnagar', '535', 'In-Progress', 28, 12, '', '', 'Pakistani', '2019-11-12', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Mumtaz Ahmad', '3110137098713', '1', '1', 'House Hold', '50000+', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(312, 'Ghulam Nabi', 'Falak Shair', '', '12', '1', '3110164054493', 'Bussiness', '2004-01-05', 'male', 'user.png', 'Bahawalnagar', '686', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'No', 'Farmer', '1', '2', '10000', 'No Income', 'Falak Shair', '3110164054493', '1', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(313, 'Hafeez Ur Rehman', 'Muhammad Ashraf', '', '3110142419933', '1', '3110177920063', 'Job-Nil', '2001-11-15', 'male', 'user.png', 'Bahawalnagar', '1146', 'In-Progress', 28, 12, '', '', 'Pakistani', '2019-11-12', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Ashraf', '3110177920063', '1', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(314, 'Mohsin Ali', 'Muhammad Zaman', '', '3110148602265', '1', '3110116070237', 'Job-Nil', '2004-10-10', 'male', 'user.png', 'Bahawalnagar', '1156', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Muhammad Zaman', '3110116070237', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(315, 'Adnan Rafique', 'Muhammad Rafique', '', '3110120296477', '1', '3110122163617', 'Bussiness', '2006-07-30', 'male', 'user.png', 'Bahawalnagar', '1552', 'In-Progress', 28, 12, '', '', 'Pakistan', '2006-07-30', 'no', 'Other', '1', '1', '10000', 'No Income', 'Muhammad Rafique', '3110122163617', '1', '2', 'Bussiness', 'No Income', 'islam', 'No', '0', '0', '0', '2019-11-12', '', '', '0'),
(316, 'Muhammad Waseem', 'Allah Ditta', '', '3110189876767', '1', '3110115818745', 'Bussiness', '2005-03-07', 'male', 'user.png', 'Bahawalnagar', '1811', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', '2', 'uneducated', '20000', '50000+', 'Allah Ditta', '3110115818745', '1', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(317, 'Chan Zaib', 'Muhammad Iqbal', '', '3110190191217', '1', '31101', 'Job-Holder', '2001-11-13', 'male', 'user.png', 'Bahawalnagar', '2107', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', '3', 'uneducated', '40000', 'No Income', 'Muhammad Iqbal', '31', '1', '3', 'Bussiness', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(318, 'Bilal Ahmad', 'Abdul Sattar', '', '3110127288193', '1', '31101', 'Bussiness', '2001-02-28', 'male', 'user.png', 'Bahawalnagar', '2108', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', '1', '1', 'No Income', '20000', 'Abdul Sattar', '31101', '1', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(319, 'Kaleem Ullah', 'Azmat Ullah', '', '12', '1', '3110106302831', 'Bussiness', '2004-09-01', 'male', 'user.png', 'Bahawalnagar', '2128', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'Azmat Ullah', '3110106302831', '1', '2', 'Bussiness', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(320, 'Muhammad Uzair', 'Malik Ghulam Mujtaba', '', '3310552068497', '1', '3310539199079', 'Bussiness', '2005-03-07', 'male', 'user.png', 'Bahawalnagar', '2085', 'In-Progress', 28, 12, '', '', 'Pakistan', '2019-11-12', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Malik Ghulam Mujtaba', '3310539199079', '1', '1', 'Bussiness', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(321, 'fareha rasool', 'gulam rasool', '', '3110154993514', '03057304724', '3110138951780', 'Bussiness', '2015-01-20', 'female', 'user.png', 'shareef coat', '2380', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-08-28', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'gulam rasool', '0', '00', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(322, 'waleed ahmad', 'm.muhiman', '', '3520172097211', '0', '3110153792921', 'Job-Nil', '2015-02-12', 'male', 'user.png', 'Hafiza Abad', '2391', 'In-Progress', 2, 1, '', '', 'Pakistan', '2018-08-28', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'muhiman', '0', '0', '2', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(323, 'M.Tahir Tayab', 'M.Tayab', '', '3110196299339', '1', '3110166821471', 'Job-Nil', '2008-06-15', 'male', 'user.png', 'bwn', '941', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '1', 'uneducated', '10000', 'No Income', 'M.Tayab', '3110166821471', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(324, 'Ahmad Raza', 'Riaz Ahmad', '', '3110117485487', '1', '3110107232915', 'Job-Nil', '2009-11-11', 'male', 'user.png', 'bwn', '943', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Riaz Ahmad', '3110107232915', '3110107322982', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(325, 'Abdullah Jabbar', 'Abdul Jabbar', '', '3110188038789', '1', '3110163702049', 'Job-Nil', '2008-08-19', 'male', 'user.png', 'bwn', '959', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Abdul Jabbar', '311016370204', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(326, 'Hamad Ghulam Nabi ', 'Ghulam Nabi', '', '3110157352183', '1', '3110179022617', 'Job-Nil', '2008-06-12', 'male', 'user.png', 'bwn', '961', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-04-01', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Ghulam Nabi', '3110179022617', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(327, 'M.Nasir', 'Ghulam Mustafa', '', '3110112638155', '1', '3110131786461', 'Job-Nil', '2008-07-30', 'male', 'user.png', 'Bahawalnagar', '1011', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-01', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Ghulam Mustafa', '3110131786461', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(328, 'Mustaqeem', 'Rasheed Ahmad', '', '3110108476681', '1', '3110115783687', 'Job-Nil', '2007-09-03', 'male', 'user.png', 'Bahawalnagar', '1056', 'In-Progress', 17, 7, '', '', 'Pakistan', '2013-05-28', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Rasheed Ahmad', '3110115783687', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(329, 'M.Zeeshan Khalid', 'M.Khalid', '', '1234', '1', '12', 'Job-Nil', '2019-11-15', 'male', 'user.png', 'Bahawalnagar', '1426', 'In-Progress', 17, 7, '', '', 'Pakistan', '2019-11-13', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Khalid', '1223', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(330, 'Ali Haidar', 'Jahangir', '', '3110104078833', '1234', '3110149067679', 'Job-Nil', '2008-01-15', 'male', 'user.png', 'Bahawalnagar', '1962', 'In-Progress', 17, 7, '', '', 'Pakistan', '2017-08-29', 'no', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Jahangir', '3110149067679', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(331, 'Aroosa', 'mitee Rehman', '', '3110108870516', '03006104675', '3110131807577', 'Job-Holder', '2013-02-19', 'female', 'user.png', 'Poster quraish colony', '1944', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Mitee Rehman', '3110131807577', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(332, 'Sara Bilal', 'M.Bilal', '', '3110194335602', '03069416747', '3110168809385', 'Job-Holder', '2013-04-10', 'female', 'user.png', 'Nadar Shahpul bwn', '1946', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '3', 'uneducated', '20000', 'No Income', 'M.Bilal', '3110168809385', '3110115603802', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(333, 'Kashaf', 'M.Yaseen', '', '3110117349656', '03017264650', '3110111752043', 'Job-Holder', '2014-06-05', 'female', 'user.png', 'hafiz abad  bwn', '1957', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Yaseen', '3110111752043', '3110115514266', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(334, 'Uzma Bashir', 'M.bashir', '', '3110161911194', '03017264650', '3110158082303', 'Job-Nil', '2014-11-01', 'female', 'user.png', 'hafiz abad  bwn', '1979', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Bashir', '3110158082303', '31101149007204', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(335, 'Tasmia Fatima', 'M.Waras', '', '3110143281234', '03007926002', '3110198006987', 'Job-Holder', '2014-01-05', 'female', 'user.png', 'Nadar Shahpul bwn', '1980', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '11', '1', '30000', 'No Income', 'M.Waras', '3110198006987', '311011185703', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(336, 'Samreen Arfarn', 'M.Arfarn', '', '31101', '03017680576', '3110149210661', 'Job-Holder', '2012-11-09', 'female', 'user.png', 'Nai Abadi bwn', '2069', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '3', '10000', 'No Income', 'M.Arfarn', '3110149210661', '3110104628536', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(337, 'Noor Fatima', 'M.Yaseen', '', '3110118053804', '03078630283', '3110199697657', 'Job-Holder', '2013-01-17', 'female', 'user.png', 'Multani chowk bwn', '2078', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', '2', '15000', 'No Income', 'M.Yaseen', '3110199697657', '3110290952460', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(338, 'Mahwish', 'M.Allah Data', '', '3110177004772', '03013114232', '3110159265755', 'Job-Holder', '2011-11-20', 'female', 'user.png', 'din pur sharif jajju wala', '2135', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Allah Data', '3110159265755', '3110151815768', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(339, 'Hajib Akhtar', 'M.Akhtar', '', '4240153955702', '03061071441', '4240158355123', 'Job-Nil', '2015-03-11', 'female', 'user.png', 'Basti Hafiz Wala', '2140', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Akhtar', '4240158355123', '', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '2019-11-13', '0'),
(340, 'Khadija Fatima', 'M.Hashan', '', '3110191735828', '03012854324', '3110116189089', 'Job-Holder', '2014-01-01', 'female', 'user.png', 'hafiz abad  bwn', '2148', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Hashan', '3110116189089', '3110132580396', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(341, 'Aman Fatima', 'M.Iqbal', '', '3110132380776', '03052558564', '3110163058441', 'Job-Holder', '2012-09-23', 'female', 'user.png', 'Nadar Shah bwn', '2166', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', '2', '30000', 'No Income', 'M.Iqbal', '3110163058441', '3110174304728', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(342, 'Mahtab Yaseen', 'M.Yaseen', '', '3110130090136', '03076928717', '3110101587261', 'Job-Holder', '2007-05-15', 'female', 'user.png', 'hafiz abad  bwn', '2350', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '1', '1', '10000', 'No Income', 'M.Yaseen', '3110101587261', '1234', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(343, 'Ayiza Muddasir', 'M.Muddsir', '', '3110198183282', '03017689429', '3110160867213', 'Job-Holder', '2012-11-05', 'female', 'user.png', 'Basti Hafiz abad', '2385', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '1', 'uneducated', '10000', 'No Income', 'M.Muddsir', '3110160867213', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(344, 'Asifa Parveen', 'M.Abbas', '', '3110177777944', '03063699981', '3110153882907', 'Bussiness', '2011-11-11', 'female', 'user.png', 'Basti Gulam Hussain', '2386', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Shopkeeper', '1', 'uneducated', '10000', 'No Income', 'M.Abbas', '3110153882907', '3110187513198', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(345, 'Tayybia Ismail', 'M.Ismail', '', '3110134166442', '03027540945', '3110186919553', 'Job-Holder', '2010-01-12', 'female', 'user.png', 'Basti Hafiza Abad', '2387', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '1', 'uneducated', '30000', 'No Income', 'M.Ismail', '3110186919553', '1234', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(346, 'Gulam Ayesha', 'M.Jalil', '', '3110159600486', '03045389125', '3110157444689', 'Job-Holder', '2009-12-01', 'female', 'user.png', 'Nadar Shahl bwn', '1937', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '1', 'uneducated', '10000', 'No Income', 'M.Jalil', '3110157444689', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(347, 'Mah Noor', 'M.Mumtaz', '', '3110141171862', '03068639172', '3110173919941', 'Job-Holder', '2012-09-13', 'female', 'user.png', 'shrif cote bwn', '1605', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-01', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Mumtaz', '3110173919941', '3110165735306', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(348, 'Saman parveen', 'M Ramzan', '', '3110176317918', '03053768894', '3110127775425', 'Job-Holder', '2011-08-20', 'female', 'user.png', 'hafiz abad  bwn', '1607', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-01', 'no', 'Other', '2', 'uneducated', '15000', 'No Income', 'M.Ramzan', '3110127775425', '3110161259136', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(349, 'Maryam', 'Mati-ur- Rehman', '', '3110127436074', '03006104675', '3110131807577', 'Bussiness', '2010-06-10', 'female', 'user.png', 'Quraish colony bwn', '1611', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-01', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'Mati-ur-Rehman', '3110131807577', '3110165735306', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(350, 'Laiba Bibi', 'M.Zaman', '', '3110190586874', '03064262672', '3110116070237', 'Bussiness', '2013-10-19', 'female', 'user.png', 'Basti Sohny wali bwn', '1675', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-05', 'no', 'Farmer', '2', '1', '10000', 'No Income', 'M.Zaman', '3110116070237', '3110180555376', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(351, 'Zahra Shabeer', 'M.Shabbir', '', '3110125106934', '03043304624', '3110194066163', 'Bussiness', '2011-10-20', 'female', 'user.png', 'hafiz abad  bwn', '1701', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-11', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Shabbir', '3110194066163', '3110132768212', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(352, 'Faiza Rehman', 'Rasheed-ur-Rehman', '', '3110145352234', '03007921899', '3110115783625', 'Job-Holder', '2012-08-31', 'female', 'user.png', 'hafiz abad  bwn', '1703', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-11', 'no', 'Teacher', '3', 'uneducated', '10000', 'No Income', 'Rasheed-ur-REhman', '3110115783625', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(353, 'Sania Bibi', 'Zahoor Ahmad', '', '3110154634028', '03027092864', '3110115783625', 'Job-Holder', '2011-03-02', 'female', 'user.png', 'hafiz abad  bwn', '1720', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-04-25', 'no', 'Labour', 'uneducated', 'uneducated', '5000', 'No Income', 'Zahoor Ahmad', '3110115783625', '3110101816896', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(354, 'Alishba Fatima', 'Sajid Mehmood', '', '3110120209014', '03023455515', '3110185772551', 'Job-Holder', '2013-06-19', 'female', 'user.png', 'Faisal colony bwn', '1759', 'In-Progress', 8, 4, '', '', 'Pakistan', '2016-05-25', 'no', 'Other', '2', '2', '40000', 'No Income', 'Sajid Mehmood', '311018577551', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-13', '', '', '0'),
(355, 'Salman Mohsin', 'M Ismaeel', '', '0', '03061276233', '3110104162179', 'Job-Nil', '2019-11-07', 'male', '', 'Din Pur Sharif Bwn', '1464', 'In-Progress', 9, 4, '', '', 'Pakistani', '2019-11-07', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Ismaeel', '3110104162179', '0', '0', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(356, 'M Atif', 'M Ameen', '', '311016851805', '03086920964', '3110190466853', 'Job-Nil', '2011-09-22', 'male', '', 'Basti Chah Ranjhe Wala Bwn', '1595', 'In-Progress', 9, 4, '', '', 'Pakistani', '2018-04-01', '0', 'Other', '7', 'uneducated', '30000', 'No Income', 'M Ameen', '3110190466853', '0', '3', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(357, 'Faizan Mehmood', 'Khalid Mehmood', '', '3110101965991', '03007924315', '3110129571441', 'Job-Holder', '2011-03-12', 'male', '', 'Quraish Colony Bwn', '1597', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', '0', 'Teacher', '2', 'uneducated', '50000', 'No Income', 'Khalid Mehmood', '3110129571441', '3110112976084', '5', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(358, 'Zain Ali', 'Abdul Hafeez', '', '3110192038607', '03077853138', '3110194724747', 'Bussiness', '2012-10-03', 'male', '', 'Din Pur Sharif Bwn', '1609', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', '0', 'Shopkeeper', 'uneducated', 'uneducated', '15000', 'No Income', 'Abdul Hafeez', '3110194724747', '0', '5', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(359, 'Ali Sajjad', 'M Ibraheem', '', '3110107853805', '03329629487', '3110116273083', 'Job-Nil', '2010-04-19', 'male', '', 'Nadar Shah Bwn', '1617', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Ibraheem', '3110116273083', '3110140287712', '8', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(360, 'Ali Husnain', 'Zulfiqar Ali', '', '3110139177167', '03037056404', '3110123511737', 'Bussiness', '2011-11-18', 'male', '', 'Nadar Shah Bwn', '1633', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-05', '0', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'Zulfiqar Ali', '3110123511737', '0', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(361, 'M Hassan', 'M Husain', '', '3110186486679', '03068054875', '3110109865877', 'Job-Nil', '2012-01-30', 'male', '', 'Bhutta Wala Khu Bwn', '1649', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-04', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Husain', '3110109865877', '0', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(362, 'M Mohsin', 'Hafiz Abdul Rehman', '', '3110137493885', '03017302983', '3520267934041', 'Bussiness', '2011-08-26', 'male', '', 'Bhutta Wala Khu Bwn', '1651', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Shopkeeper', '7', 'uneducated', '40000', 'No Income', 'Hafiz Abdul Rehman', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(363, 'M Nazir', 'M Jahangir', '', '31101', '03083690221', '311013213154', 'Job-Nil', '2011-08-26', 'male', '', 'Quraish Colony Bwn', '1660', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Jahangir', '311013213154', '3110110928876', '5', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(364, 'M Ammar ', 'M Mughira', '', '3110196563197', '03036548839', '3110161489945', 'Job-Holder', '2013-08-18', 'male', '', 'Hafiza Abad Bwn', '1671', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M Mughira', '3110161489944', '3110187134300', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(365, 'Muzzam Waheed', 'Abdul Waheed', '', '3110115172429', '03014052509', '3110187729777', 'Job-Holder', '2012-03-03', 'male', '', 'Dinpur Sharif Bwn', '1677', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Abdul Waheed', '3110187729777', '3110179314990', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(366, 'M Awais', 'M Manshah', '', '3110105227595', '03033149262', '3110159906191', 'Job-Nil', '2012-09-27', 'male', '', 'Din Pur Sharif Bwn', '1687', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-11', '0', 'Farmer', '2', 'uneducated', '30000', 'No Income', 'M Mansha', '3110159906191', '0', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(367, 'Noreen Fatima', 'M.Yar', '', '3110193026618', '03078965473', '3110116517881', 'Job-Holder', '2010-05-10', 'female', 'user.png', 'Ranjhy wala khu', '1239', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '3', '3', '10000', 'No Income', 'M.Yar', '3110116517881', '3110141346614', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(368, 'Saira Sultan', 'sultan Ahmad', '', '3110199465128', '03058522799', '3110176266619', 'Bussiness', '2010-10-15', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1318', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Shopkeeper', '1', '3', '15000', 'No Income', 'Sultan Ahmad', '3110176266619', '3110141346614', '3', 'Bussiness', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(369, 'Mahrab Akram', 'M.Akram', '', '3110163998932', '03037180280', '3110147266023', 'Job-Holder', '2010-05-03', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1302', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-08-18', 'no', 'Other', '3', '1', '10000', 'No Income', 'M.Akram', '3110147266023', '3110111955990', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(370, 'Sana bibi', 'A.Rakha', '', '3110108078691', '03026523640', '3110172924277', 'Job-Holder', '2009-11-28', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1255', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '1', '1', '30000', 'No Income', 'A.Rakha', '3110172924277', '3110148206038', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(371, 'Zanab bibi', 'Akhtar Ali', '', '3110185619918', '03057967883', '3110147825265', 'Job-Holder', '2013-09-24', 'female', 'user.png', 'Jattu wala bwn', '1325', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Other', '1', '1', '10000', 'No Income', 'Akhtar Ali', '3110147825265', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(372, 'Sundas Sarwar', 'M.Sarwar', '', '3110143095862', '03087212815', '3110116443857', 'Bussiness', '2010-09-28', 'female', 'user.png', 'Ranjhy wala khu', '1328', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-10-01', 'no', 'Farmer', '3', '3', '10000', 'No Income', 'M.Sarwar', '3110116443857', '3110205998668', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(373, 'Iqra Abbas', 'M.Abbas', '', '3110119226906', '03027058118', '3110105931947', 'Job-Holder', '2010-11-11', 'female', 'user.png', 'Coat Fateh Mahmood', '1364', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '11', '3', '10000', 'No Income', 'M.Abbas', '3110105931947', '3110151260572', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(374, 'Manahil Asif', 'M.Asif', '', '3110150063282', '03007095644', '3110161489947', 'Job-Holder', '2012-02-21', 'female', 'user.png', 'Ranjhy wala khu', '1365', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '3', '1', '10000', 'No Income', 'M.Asif', '3110161489947', '3110184846628', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(375, 'Rimsha Shaheen', 'M.Ishaq ', '', '3110120345578', '03075074728', '3110108860581', 'Job-Holder', '2008-08-08', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1375', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '1', '3', '20000', 'No Income', 'M.Ishaq', '3110108860581', '31101', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(376, 'Tehreen Fatima', 'M.Anwar', '', '3110149639720', '03002843792', '3110112511461', 'Bussiness', '2011-04-26', 'female', 'user.png', 'Faisal colony bwn', '1376', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '2', '3', '30000', 'No Income', 'M.Anwar', '3110112511461', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(377, 'Maryam Bibi', 'Allah Bakhsh', '', '3110103413768', '03006627836', '3110110777643', 'Bussiness', '2009-01-01', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1378', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Farmer', '1', '1', '10000', 'No Income', 'Allah Bakhsh', '3110110777643', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(378, 'Nabila Shahzadi', 'M.Alyas', '', '3110159557296', '03005156498', '3110172160019', 'Bussiness', '2010-12-23', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1380', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Shopkeeper', '2', '1', '30000', 'No Income', 'M.Alyas', '3110172160019', '3110172687764', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(379, 'Haleema Rani', 'G.Qadir', '', '3110106478006', '03062579953', '3110116426293', 'Job-Holder', '2010-09-08', 'female', 'user.png', 'Basti Sharif coat', '1399', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Other', '3', '3', '30000', 'No Income', 'G.Qadir', '3110116426293', '3110198714846', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(380, 'Aima Khan', 'M.Mazhar.F', '', '423018157046', '03083396630', '3110137924133', 'Job-Holder', '2011-10-12', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1430', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Other', '3', '3', '20000', 'No Income', 'M.Mazhar.F', '3110137924133', '1234', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(381, 'Iqra Bashir', 'Bashir Ahmad', '', '3110178152354', '03042582416', '3110110169327', 'Bussiness', '2011-09-09', 'female', 'user.png', 'hafiz abad  bwn', '1457', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Shopkeeper', '3', '2', '30000', 'No Income', 'Bashir Ahmad', '3110110169327', '3110111761418', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(382, 'Maria Fiaz', 'M.Fiaz', '', '3110192791976', '03025080696', '3110180100151', 'Bussiness', '2011-01-01', 'female', 'user.png', 'Gardhari wala bwn', '1509', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-04', 'no', 'Farmer', '3', '1', '20000', 'No Income', 'M.Fiaz', '3110180100151', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(383, 'Sawera Shabeer', 'Shabir ahmad', '', '3110280058426', '03088302927', '311020477089', 'Bussiness', '2011-09-23', 'female', 'user.png', 'Tebi Mahi Wali', '1555', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Shopkeeper', '2', '1', '30000', 'No Income', 'Shabir Ahmad', '311020477089', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(384, 'Mehr-un-Nisa', 'M.Ahmad', '', '3110180686720', '03089045296', '31101', 'Bussiness', '2010-12-16', 'female', 'user.png', 'Qamar din hans', '1556', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Farmer', '3', '2', '20000', 'No Income', 'M.Ahmad', '31101', '1234', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(385, 'Saba Ahmad', 'M.Ahmad', '', '3110143514790', '03086915729', '3110167038157', 'Job-Holder', '2012-12-03', 'female', 'user.png', 'Maharan wala khu', '1624', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Ahmad', '3110167038157', '3110183014132', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(386, 'Muqaddas Hussain', 'M.Hussain', '', '3110119378482', '03347004228', '3110132633805', 'Bussiness', '2009-03-15', 'female', 'user.png', 'Basti Matran', '1628', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '2', '3', '10000', 'No Income', 'M.Hussain', '3110132633805', '311017945797', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(387, 'Atiqa Asif', 'M.Asif', '', '3110111738176', '03087244140', '3110512288313', 'Bussiness', '2011-10-15', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1824', 'In-Progress', 10, 5, '', '', 'Pakistan', '2017-04-06', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Asif', '3110512288313', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(388, 'Khansa Mushtaq', 'Mushtaq Ahmad', '', '3110143278887', '03017345873', '3110143278887', 'Bussiness', '2012-04-13', 'female', 'user.png', 'Jhulan Arain', '1680', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-11', 'no', 'Farmer', '1', '1', '20000', 'No Income', 'Mushtaq Ahmad', '3110143278887', '3110143892518', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(389, 'Ayasha Yaseen', 'M.Yaseen', '', '3110131083944', '03024990243', '3110153477985', 'Bussiness', '2006-09-05', 'female', 'user.png', 'Nai Abadi bwn', '1780', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-10-18', 'no', 'Other', '2', '3', '10000', 'No Income', 'M.Yaseen', '3110153477985', '311017275362', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(390, 'Qurat-ul-ain', 'M.Ramzan', '', '3110106815972', '03007923436', '3110114989541', 'Bussiness', '2009-09-05', 'female', 'user.png', 'Basti Hafiza Abad', '1934', 'In-Progress', 10, 5, '', '', 'Pakistan', '2017-05-16', 'no', 'Other', '3', '3', '10000', 'No Income', 'M.Ramzan', '3110114989541', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(391, 'Maffia Yasmeen', 'Bashir Ahmad', '', '3110195964084', '03083937620', '3110172949775', 'Job-Holder', '2008-12-10', 'female', 'user.png', 'hafiz abad colony bwn', '1977', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-03-01', 'no', 'Other', '1', '3', '15000', 'No Income', 'Bashir Ahmad', '3110172949775', '3110154252946', '9', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(392, 'Zara Batool', 'Zafar Iqbal', '', '3120142220536', '03006809878', '3120103168727', 'Job-Holder', '2012-12-28', 'female', 'user.png', 'canal Garden', '2185', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '2', '2', '20000', 'No Income', 'Zafar Iqbal', '3120103168727', '3120127046538', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(393, 'Bushra Shafique', 'M.Shafique', '', '3110183701234', '03002025906', '3110116639479', 'Job-Holder', '2009-06-22', 'female', 'user.png', 'hafiz abad colony bwn', '2210', 'In-Progress', 10, 5, '', '', 'Pakistan', '2019-03-09', 'no', 'Docotor', '7', '2', '30000', 'No Income', 'M.Shafique', '3110116639479', '3110115924418', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(394, 'Ammara Atta', 'H.Atta-ur-Rehman', '', '3110101257328', '03005920616', '3110127469607', 'Bussiness', '2011-06-12', 'female', 'user.png', 'Basti Haji Sulaman', '2220', 'In-Progress', 10, 5, '', '', 'Pakistan', '2019-11-01', 'no', 'Other', '1', '3', '15000', 'No Income', 'H.Atta-ur-Rehman', '3110127469307', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(395, 'Abdul Malik', 'M.Ishaq', '', '3110135920681', '03017386500', '3110112819991', 'Bussiness', '2011-03-28', 'male', 'user.png', 'hafiz abad  bwn', '1768', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-08-22', 'no', 'Farmer', 'uneducated', '1', '10000', 'No Income', 'M.Ishaq', '3110112819991', '3110183751872', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(396, 'Ume Kalsoom', 'Abdul Majeed', '', '3110156341092', '03026987701', '3110146758711', 'Job-Holder', '2010-07-17', 'male', 'user.png', 'hafiz abad  bwn', '1778', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-09-28', 'no', 'Other', '1', '1', '10000', 'No Income', 'Abdul Majeed', '3110146758711', '3110190881002', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(397, 'Iman Fatima', 'M.Aslam', '', '3110149244998', '03067686414', '3110184699168', 'Bussiness', '2012-01-17', 'male', 'user.png', 'hafiz abad  bwn', '1991', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Aslam', '3110184699168', '3110184699168', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(398, 'Mateen Ahmad', 'M.Ahmad', '', '3110108834585', '03004221093', '3110116429815', 'Bussiness', '2013-08-16', 'male', 'user.png', 'Basti Ameer Ahmad', '2031', 'In-Progress', 11, 5, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '2', 'uneducated', '30000', 'No Income', 'M.Ahmad', '3110116429815', '31101', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(399, 'M.Waqas', 'M.Zulafqar', '', '3110178461319', '03087922639', '3110174945943', 'Job-Holder', '2009-03-10', 'male', 'user.png', 'Tebi Mahiwali', '2183', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '1', '1', '30000', 'No Income', 'M.Zulafqar', '3110174945943', '3110162420916', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(400, 'M.Salman', 'M.safdar', '', '3110153764367', '03007587729', '3110184744511', 'Job-Holder', '2019-12-17', 'male', 'user.png', 'Chak Hotiana', '2335', 'In-Progress', 11, 5, '', '', 'Pakistan', '2019-04-08', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Safdar', '3110184744511', '3110157912242', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(401, 'M.Salman', 'M.Younas', '', '3110184700935', '03008169401', '3110183732709', 'Job-Holder', '2010-03-20', 'male', 'user.png', 'Pull Fortwh', '2336', 'In-Progress', 11, 5, '', '', 'Pakistan', '2019-04-08', 'no', 'Other', '2', '1', '20000', 'No Income', 'M.Younas', '3110183732709', '3110182317670', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(402, 'Ahmad bin Abdul Qayom', 'Abdul Qayom', '', '3110116616079', '03018464292', '3110161398563', 'Job-Holder', '2007-11-19', 'male', 'user.png', 'hafiz abad  bwn', '2376', 'In-Progress', 11, 5, '', '', 'Pakistan', '2019-08-28', 'no', 'Other', '2', 'uneducated', '50000+', 'No Income', 'Abdul Qayom', '3110161398563', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `syllabus` text NOT NULL,
  `updated_on` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `deleted_on` varchar(200) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `class_id`, `syllabus`, `updated_on`, `created_on`, `deleted_on`, `is_deleted`) VALUES
(1, 4, '3.png', '', '2019-09-16', '2019-09-16', 1),
(2, 5, '8.jpeg', '2019-09-17', '2019-09-16', '2019-09-21', 1),
(3, 5, '8.jpeg', '2019-09-21', '2019-09-16', '', 0),
(4, 4, '1.jpg', '2019-09-17', '2019-09-16', '2019-09-18', 1),
(5, 4, '8.jpeg', '2019-09-17', '2019-09-17', '2019-09-17', 1),
(6, 4, '6.jpeg', '', '2019-09-18', '2019-09-21', 1),
(7, 6, '5.jpg', '', '2019-09-18', '', 0),
(8, 6, '6.jpeg', '', '2019-09-21', '2019-09-21', 1),
(9, 7, 'a.jpg', '', '2019-09-21', '', 0),
(10, 4, 'Al-Hannan Public School.pdf', '', '2019-10-05', '2019-10-19', 1),
(11, 4, 'Al-Hannan Public School.pdf', '', '2019-10-05', '2019-10-05', 1),
(12, 4, 'Android+Basics+Nanodegree+Syllabus.pdf', '', '2019-10-05', '2019-10-19', 1),
(13, 4, '2.docx', '', '2019-10-19', '2019-10-19', 1),
(14, 4, '840ef17cc8ab26b7263e1aea93f5d46d.pdf', '', '2019-10-19', '2019-10-19', 1),
(15, 4, '8-removebg-preview.png', '', '2019-10-19', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tch_registration`
--

CREATE TABLE `tch_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fathername` varchar(200) NOT NULL,
  `cnic` varchar(200) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `degree_id` int(11) NOT NULL,
  `pay` varchar(255) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `age` varchar(255) NOT NULL,
  `date_of_joining` varchar(255) NOT NULL,
  `father_cnic` varchar(200) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `past_experience` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `deleted_on` varchar(255) NOT NULL,
  `updated_on` varchar(200) NOT NULL,
  `is_deleted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aims_user`
--
ALTER TABLE `aims_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_collection`
--
ALTER TABLE `fee_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heros`
--
ALTER TABLE `heros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_detail`
--
ALTER TABLE `staff_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tch_registration`
--
ALTER TABLE `tch_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aims_user`
--
ALTER TABLE `aims_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_collection`
--
ALTER TABLE `fee_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_detail`
--
ALTER TABLE `staff_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tch_registration`
--
ALTER TABLE `tch_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
