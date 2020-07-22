-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 12:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `while_example` ()  wholeblock:BEGIN
  declare str VARCHAR(255) default '';
  declare x INT default 0;
  SET x = 1;

  WHILE x <= 5 DO
    SET str = CONCAT(str,x,',');
    SET x = x + 1;
  END WHILE;

  select str;
END$$

DELIMITER ;

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
(1, 1, 0, 'Salman', 'Raza', 'super_admin', 'salmanrazabwn@gmail.com', '03452', 'super_admin', '', 2147483647, 0, 0, 0),
(2, 1, 0, 'Salman', 'Raza', 'salman', 'salmanrazabwn@gmail.com', '03156402906', 'salman', '', 2147483647, 0, 0, 0);

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
(1, 6, 11, 25, '2019-11-04', 'Leave'),
(2, 10, 11, 25, '2019-11-05', 'Absent'),
(3, 11, 11, 25, '2019-11-04', 'Absent'),
(4, 3, 1, 1, '2019-11-06', 'Absent'),
(5, 4, 3, 5, '2019-11-06', 'Absent'),
(6, 6, 11, 25, '2019-11-06', 'Absent'),
(7, 10, 11, 25, '2019-11-06', 'Absent'),
(8, 11, 11, 25, '2019-11-06', 'Leave'),
(9, 97, 1, 1, '2019-11-19', 'Present'),
(10, 120, 1, 1, '2019-11-19', 'Present'),
(11, 121, 1, 1, '2019-11-19', 'Present'),
(12, 130, 1, 1, '2019-11-19', 'Present'),
(13, 233, 1, 1, '2019-11-19', 'Present'),
(14, 238, 1, 1, '2019-11-19', 'Absent'),
(15, 250, 1, 1, '2019-11-19', 'Present'),
(16, 252, 1, 1, '2019-11-19', 'Absent'),
(17, 254, 1, 1, '2019-11-19', 'Present'),
(18, 256, 1, 1, '2019-11-19', 'Present'),
(19, 258, 1, 1, '2019-11-19', 'Present'),
(20, 261, 1, 1, '2019-11-19', 'Present'),
(21, 263, 1, 1, '2019-11-19', 'Present'),
(22, 264, 1, 1, '2019-11-19', 'Present'),
(23, 265, 1, 1, '2019-11-19', 'Present'),
(24, 266, 1, 1, '2019-11-19', 'Present'),
(25, 267, 1, 1, '2019-11-19', 'Present'),
(26, 269, 1, 1, '2019-11-19', 'Present'),
(27, 272, 1, 1, '2019-11-19', 'Present'),
(28, 273, 1, 1, '2019-11-19', 'Present'),
(29, 275, 1, 1, '2019-11-19', 'Present'),
(30, 276, 1, 1, '2019-11-19', 'Present'),
(31, 282, 1, 1, '2019-11-19', 'Present'),
(32, 283, 1, 1, '2019-11-19', 'Present'),
(33, 284, 1, 1, '2019-11-19', 'Present'),
(34, 285, 1, 1, '2019-11-19', 'Present'),
(35, 286, 1, 1, '2019-11-19', 'Present'),
(36, 287, 1, 1, '2019-11-19', 'Present'),
(37, 288, 1, 1, '2019-11-19', 'Present'),
(38, 289, 1, 1, '2019-11-19', 'Present'),
(39, 290, 1, 1, '2019-11-19', 'Present'),
(40, 291, 1, 1, '2019-11-19', 'Present'),
(41, 292, 1, 1, '2019-11-19', 'Present'),
(42, 293, 1, 1, '2019-11-19', 'Present'),
(43, 294, 1, 1, '2019-11-19', 'Present'),
(44, 295, 1, 1, '2019-11-19', 'Present'),
(45, 97, 1, 1, '2019-11-23', 'Present'),
(46, 120, 1, 1, '2019-11-23', 'Present'),
(47, 121, 1, 1, '2019-11-23', 'Present'),
(48, 130, 1, 1, '2019-11-23', 'Present'),
(49, 233, 1, 1, '2019-11-23', 'Present'),
(50, 238, 1, 1, '2019-11-23', 'Present'),
(51, 250, 1, 1, '2019-11-23', 'Present'),
(52, 252, 1, 1, '2019-11-23', 'Present'),
(53, 254, 1, 1, '2019-11-23', 'Present'),
(54, 256, 1, 1, '2019-11-23', 'Present'),
(55, 258, 1, 1, '2019-11-23', 'Present'),
(56, 261, 1, 1, '2019-11-23', 'Present'),
(57, 263, 1, 1, '2019-11-23', 'Present'),
(58, 264, 1, 1, '2019-11-23', 'Present'),
(59, 265, 1, 1, '2019-11-23', 'Present'),
(60, 266, 1, 1, '2019-11-23', 'Present'),
(61, 267, 1, 1, '2019-11-23', 'Present'),
(62, 269, 1, 1, '2019-11-23', 'Present'),
(63, 272, 1, 1, '2019-11-23', 'Present'),
(64, 273, 1, 1, '2019-11-23', 'Present'),
(65, 275, 1, 1, '2019-11-23', 'Present'),
(66, 276, 1, 1, '2019-11-23', 'Present'),
(67, 282, 1, 1, '2019-11-23', 'Present'),
(68, 283, 1, 1, '2019-11-23', 'Present'),
(69, 284, 1, 1, '2019-11-23', 'Present'),
(70, 285, 1, 1, '2019-11-23', 'Present'),
(71, 286, 1, 1, '2019-11-23', 'Present'),
(72, 287, 1, 1, '2019-11-23', 'Present'),
(73, 288, 1, 1, '2019-11-23', 'Present'),
(74, 289, 1, 1, '2019-11-23', 'Present'),
(75, 290, 1, 1, '2019-11-23', 'Present'),
(76, 291, 1, 1, '2019-11-23', 'Present'),
(77, 292, 1, 1, '2019-11-23', 'Present'),
(78, 293, 1, 1, '2019-11-23', 'Present'),
(79, 294, 1, 1, '2019-11-23', 'Present'),
(80, 295, 1, 1, '2019-11-23', 'Present'),
(81, 96, 1, 2, '2019-11-23', 'Present'),
(82, 99, 1, 2, '2019-11-23', 'Present'),
(83, 101, 1, 2, '2019-11-23', 'Present'),
(84, 104, 1, 2, '2019-11-23', 'Present'),
(85, 106, 1, 2, '2019-11-23', 'Present'),
(86, 108, 1, 2, '2019-11-23', 'Present'),
(87, 111, 1, 2, '2019-11-23', 'Absent'),
(88, 113, 1, 2, '2019-11-23', 'Absent'),
(89, 115, 1, 2, '2019-11-23', 'Present'),
(90, 116, 1, 2, '2019-11-23', 'Present'),
(91, 124, 1, 2, '2019-11-23', 'Present'),
(92, 128, 1, 2, '2019-11-23', 'Present'),
(93, 134, 1, 2, '2019-11-23', 'Present'),
(94, 136, 1, 2, '2019-11-23', 'Present'),
(95, 138, 1, 2, '2019-11-23', 'Present'),
(96, 139, 1, 2, '2019-11-23', 'Present'),
(97, 262, 1, 2, '2019-11-23', 'Present'),
(98, 268, 1, 2, '2019-11-23', 'Present'),
(99, 270, 1, 2, '2019-11-23', 'Present'),
(100, 271, 1, 2, '2019-11-23', 'Present'),
(101, 274, 1, 2, '2019-11-23', 'Present'),
(102, 277, 1, 2, '2019-11-23', 'Present'),
(103, 278, 1, 2, '2019-11-23', 'Present'),
(104, 279, 1, 2, '2019-11-23', 'Present'),
(105, 280, 1, 2, '2019-11-23', 'Present'),
(106, 281, 1, 2, '2019-11-23', 'Present'),
(107, 321, 1, 2, '2019-11-23', 'Present'),
(108, 322, 1, 2, '2019-11-23', 'Present');

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
(1, 'Urdu', 11, '0', '', '', '2019-11-23'),
(2, 'Computer Scince', 12, '0', '', '', '2019-11-23');

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
(76, 6, 25, 11, 1000, 200, 800, '00', '10-19');

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

--
-- Dumping data for table `heros`
--

INSERT INTO `heros` (`id`, `std_id`, `class_id`, `section_id`, `position`, `marks`, `remarks`, `session`) VALUES
(2, 10, 4, 1, '3', '3', '3', '3'),
(11, 33, 5, 4, '12', '1312', '2123', '2'),
(15, 12, 4, 1, '213', '2333', '32', '2'),
(18, 10, 4, 1, '23', '43', '34', '2'),
(19, 15, 4, 1, '1st', '500', 'Excellent', '2'),
(23, 21, 4, 2, '123', '3', '3', '2'),
(24, 21, 4, 2, '23', '3', '3', '2'),
(25, 21, 4, 2, '23', '366', '3', '2'),
(33, 18, 4, 1, '12', '709', '097097', '2'),
(34, 33, 4, 1, '09', '809', '098', '2');

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
(1, 1, '200', '0', '100', '', '2019-11-23');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `std_id`, `class_id`, `section_id`, `urdu`, `english`, `math`, `gk`, `islamic_study`, `pak_study`, `arabic`, `computer`, `elective8`, `physics`, `chemistry`, `elective_matric`, `subject`, `urdu_oral`, `english_oral`, `math_oral`, `nazra`, `created_on`, `date`) VALUES
(1, 3, 1, 1, 55, 55, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 555, 55, 55, 55, '2019-12-07', '2019-11-07 03:18:58'),
(2, 3, 1, 1, 22, 5555555, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 55, 55, 5, 55, '2019-11-07', '2019-11-07 03:19:39');

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

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `tch_id`, `date`, `attendance`) VALUES
(1, 1, '2019-11-23', 'Absent');

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
(12, 'M Shoaib Akhtar', 'Zulfiqar Ali ', '', '3650249468933', '03007583468', '3650213534557', 'Job-Nil', '2013-01-05', 'male', 'user.png', 'Pal Nadar Shah Bwn', '2154', 'In-Progress', 9, 4, '', '', 'Pakistani', '2018-08-30', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Zulfiqar Ali ', '3650213534557', '0', '3', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(13, 'Amain Fatima', 'Ismail ', '', '3110153196968', '03003445166', '31101904553721', 'Job-Holder', '2014-01-05', 'female', 'user.png', 'Jodana BWN', '1987', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', '4', '4', '20000', '20000', 'Ismail', '3310190441086', '3110118441086', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(15, 'AyeshaAbbas', 'M.Abbas', '', '3110179863890', '03086528956', '3110505931947', 'Bussiness', '2014-01-02', 'female', 'user.png', 'Quraish Colony', '1992', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Abbas', '3310505931947', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(16, 'Nafeesa', 'Muhammad Akram', '', '3110101423894', '03067259036', '3110183688407', 'Bussiness', '2014-02-20', 'female', 'user.png', 'Hussaina Abad', '1995', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', '10000', 'Muhammad Akram', '3110183688407', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(18, 'kubra', 'Naveed ul Hassan', '', '31101515435621', '03458811113', '3110116256621', 'Bussiness', '2012-06-01', 'female', 'user.png', 'Nadra shah', '1996', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '15000', '15000', 'Naveed ul Hassan', '3110116256621', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(20, 'Sadaf', 'Kaleem', '', '3110237862650', '03017912432', '3110213748579', 'Job-Holder', '2014-01-01', 'female', 'user.png', 'affesar colony bwn', '2004', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Teacher', 'uneducated', 'uneducated', '5000', 'No Income', 'Kaleem', '3110213748579', '311096637346', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(21, 'Ume amain', 'zafar ali', '', '3110162420402', '03329629487', '3110123511377', 'Job-Holder', '2013-08-24', 'female', 'user.png', 'dak khana bwn', '2014', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'zafar ali', '3110123511377', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
(22, 'iqra bibi', 'Saddar din', '', '31101453733250', '03067853512', '3110171359095', 'Bussiness', '2013-12-21', 'female', 'user.png', 'quresh colony', '2016', 'In-Progress', 3, 2, '', '', 'Pakistan', '2018-03-02', 'no', 'Shopkeeper', 'uneducated', '4', '15000', '15000', 'Saddar din', '3110171359095', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-07', '', '', '0'),
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
(97, 'Rehan Ahmad', 'Ahmad Hussan', '', '3110123568189', '03014347061', '311011625664', 'Bussiness', '2015-08-09', 'male', 'user.png', 'Nadar Shah', '2214', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-09', 'nill', 'Farmer', 'uneducated', 'uneducated', '10000', '10000', 'nill', '3110116256645', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
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
(109, 'Ajwad Hayat', 'Muhammad Amjad', '', '3110166174883', '03004119960', '3110119592057', 'Job-Holder', '2014-08-24', 'male', 'user.png', 'Hafiz Abad Colony', '1813', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '11', '11', '20000', '30000', 'Muhammad Amjad', '3110119592057', '3110115832586', '5', 'Job-Holder', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(110, 'Haseeb Rehman ', 'Ali Abass ', '', '3110106243273', '0', '3110115821325', 'Job-Holder', '2014-04-29', 'male', 'user.png', 'Quraish Colony', '1815', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-05', 'No', 'Other', '7', '1', '20000', '20000', 'Ali Abass ', '3110115821325', '311012288880', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(111, 'M Salman', 'Fakhar Zaman', '', '3110140065817', '03356756237', '3110140065817', 'Job-Nil', '2015-08-12', 'male', 'user.png', 'Basti Gorana bwn', '2247', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Labour', '1', '1', '10000', '10000', 'Fakhar Zaman', '3110140065817', '3110125557398', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(112, 'Haseeb Ullah', 'Muhammad Munawar', '', '3110131474881', '0', '3110196505195', 'Job-Nil', '2013-01-31', 'male', 'user.png', 'Hafiz Abad Colony', '1829', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-07', 'No', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Munawar', '3110196505195', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(113, 'Mukram Bilal', 'Bilal Ahmad', '', '3110199029379', '03069416747', '3110168809335', 'Job-Holder', '2015-05-15', 'male', 'user.png', 'Pul noor shah rab nawaz pura bwn', '2258', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '3', 'uneducated', '20000', '20000', 'Bilal Ahmad', '3110168809335', '3110115603802', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(114, 'Umar Farooq', 'Zahor Ahmad', '', '3110103684657', '0', '3110235446207', 'Job-Holder', '2012-08-09', 'male', 'user.png', 'Hafiz Abad Colony', '1835', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-25', 'No', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'Zahor Ahmad', '3110235446207', '31102578675400', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(115, 'M habbib aslam', 'M aslam', '', '3110141124203', '03447397798', '3110106356697', 'Job-Nil', '2015-01-01', 'male', 'user.png', 'Basti hajhi chragh din bwn', '2260', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '3', 'uneducated', '10000', 'No Income', 'M aslam', '3110106356697', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(116, 'M umar', 'Jamshed iqbal', '', '3110107417059', '03064998913', '3110106892471', 'Job-Holder', '2017-03-11', 'male', 'user.png', 'Mohala quresh colony bwn', '2261', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '1', 'uneducated', '20000', '20000', 'Jamshed iqbal', '3110106892471', '3110165139226', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(117, 'Ubaid Akhtar', 'Zulfiqar Ali', '', '3650367274491', '03007583468', '3650213534557', 'Bussiness', '2016-10-15', 'male', 'user.png', 'pull nadar shah', '2153', 'In-Progress', 7, 3, '', '', 'Pakistan', '2018-08-30', 'no', 'Farmer', 'uneducated', 'uneducated', '5000', '5000', 'Zulfiqar Ali', '3650213534557', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(118, 'Abdullah Riaz', 'Muhammad Riaz', '', '3110112265895', '0', '3110120694253', 'Job-Holder', '2012-12-16', 'male', 'user.png', 'Hafiz Abad Colony', '1845', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-11', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Muhammad Riaz', '3110120694253', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(119, 'Ch SamiUllah', 'Ilyas', '', '3110128608391', '0', '3110172160019', 'Job-Holder', '2013-12-18', 'male', 'user.png', 'Hafiz Abad Colony', '1857', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Labour', '2', '1', '5000', '5000', 'Ilyas', '3110172160019', '3110172687764', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(120, 'Sahil ali', 'Sajid hussain', '', 'nill', '03083590221', '0', 'Job-Nil', '0001-01-01', 'male', 'user.png', 'nill', '2262', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Sajid hussain', '0', '0', '0', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(122, 'Abdul Rehman', 'hafiz atta ur rehman', '', '3110136312039', '03005920616', '3110127469307', 'Job-Holder', '2013-08-21', 'male', 'user.png', 'mord wala khoh', '2219', 'In-Progress', 7, 3, '', '', 'Pakistan', '2018-08-30', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'atta ur rehman', '3110127469307', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(123, 'Tasawar Ishaq', 'Muhammad Ishaq', '', '0', '0', '0', 'Job-Holder', '2013-11-21', 'male', 'user.png', 'Bahi Pass', '1858', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Muhammad Ishaq', '0', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(124, 'M Rizwan Aslam', 'M Aslam', '', '3110174349021', '03096501378', '3110104325947', 'Job-Holder', '2015-01-18', 'male', 'user.png', 'Hafiz abad  colony bwn', '1263', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Labour', 'uneducated', 'uneducated', '5000', '5000', 'M Aslam', '3110104325947', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(125, 'Munawar Ishaq', 'Muhammad Ishaq', '', '0', '0', '0', 'Job-Holder', '2013-12-18', 'male', 'user.png', 'Bahi Pass', '1859', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-12', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Ishaq', '0', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(126, 'Mateen Rehman', 'Hafiz abdullah', '', '3110143458233', '0300377500', '3520267934041', 'Job-Holder', '2013-10-08', 'male', 'user.png', 'Arif Wala Road', '1863', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-13', 'No', 'Other', '7', '1', '30000', '30000', 'Hafiz abdullah', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(127, 'Mateen Rehman', 'Hafiz abdullah', '', '3110143458233', '0300377500', '3520267934041', 'Job-Holder', '2013-10-08', 'male', 'user.png', 'Arif Wala Road', '1863', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-13', 'No', 'Other', '7', '1', '30000', '30000', 'Hafiz abdullah', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(128, 'M noman', 'M Asad', '', '3110117987257', '03008877522', '3120455395329', 'Bussiness', '2016-01-01', 'male', 'user.png', 'Hafiz abad colony bwn', '2265', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-27', 'nill', 'Other', '11', '1', '15000', '15000', 'M Asad', '3120455395329', '3110124319288', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(129, 'Umair ', 'Raseed Ahmad', '', '3110104472945', '0', '3110124952773', 'Job-Holder', '2013-01-01', 'male', 'user.png', 'Hafiz Abad Colony', '1864', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Labour', 'uneducated', '2', '20000', 'No Income', 'Raseed Ahmad', '3110124952773', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(130, 'Abdullah shahzad', 'Shahzad basheer', '', '3110164889150', '03467555994', '3110145089917', 'Job-Holder', '2013-09-10', 'male', 'user.png', 'officer colony mkan no 17/D bwn', '2268', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-03-28', 'nill', 'Other', '7', 'uneducated', '15000', '15000', 'Shahzad basheer', '3110145089917', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(131, 'Muavia', 'Ahamad Ali', '', '3110120721365', '0', '3110160622595', 'Job-Holder', '2013-02-25', 'male', 'user.png', 'Jato Wala pul', '1865', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'Ahamad Ali', '3110160622595', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(132, 'Sana u Allah', 'abdul latif', '', '0', '03038798356', '3110157111752', 'Job-Nil', '2013-01-01', 'female', 'user.png', 'hafizaabad colony', '1931', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-05-18', 'no', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'abdul latif', '3110157111752', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(133, 'Awais arshad', 'Muhammad Arshad', '', '3110230063', '0', '3110124808535', 'Job-Holder', '2012-11-01', 'male', 'user.png', 'Jato Wala Pul', '1870', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-14', 'No', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'Muhammad Arshad', '3110124808535', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(134, 'M Awais', 'Allah Rakha', '', '311017292427', '03026523640', '31101729224277', 'Job-Nil', '2014-07-12', 'male', 'user.png', 'Hafiz abad  colony bwn', '2286', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-03', 'nill', 'Labour', 'uneducated', '1', '20000', 'No Income', 'Allah Rakha', '31101729224277', '3110148206038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
(135, 'Muhammad Noman', 'Fakhar Zaman', '', '3110122362859', '0', '3110112572391', 'Job-Holder', '2013-04-05', 'male', 'user.png', 'Hafiz Abad Colony', '1872', 'In-Progress', 6, 3, '', '', 'Pakistan', '2017-04-15', 'No', 'Labour', 'uneducated', 'uneducated', '15000', '15000', 'Fakhar Zaman', '3110112572391', '31101225557398', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-10', '', '', '0'),
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
(249, 'M Hussnain', 'Muhammad Yaseen', '', '3110133645553', '03016529637', '3110161375833', 'Job-Holder', '2012-02-09', 'male', 'user.png', 'Hafiz Abad Colony', '2348', 'In-Progress', 6, 3, '', '', 'Pakistan', '2019-04-10', 'No', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Yaseen', '3110161375833', '3110179140182', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(250, 'Mariyam Ameen', 'M.Ameen', '', '3110134497710', '03024997128', '3110125790231', 'Bussiness', '2014-08-08', 'female', 'user.png', 'Hafiz Abad B.W.N', '2200', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Ameen', '3110125790231', '3110151984570', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(251, 'Muhammad Ahmad', 'Abdul Rehman', '', '3110111273967', '0', '3110108913927', 'Job-Holder', '2011-01-04', 'male', 'user.png', 'Hafiz Abad Colony', '2388', 'In-Progress', 6, 3, '', '', 'Pakistan', '2019-09-04', 'No', 'Labour', 'uneducated', 'uneducated', '20000', '20000', 'Abdul Rehman', '3110108913927', '3110183690144', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(252, 'Faika Faisal', 'Faisal Iqball', '', '3110179482898', '03002652625', '3110146918211', 'Bussiness', '2015-04-04', 'female', 'user.png', 'Muhala Islam Nagar', '2206', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-09', 'No', 'Farmer', 'uneducated', '1', '15000', 'No Income', 'Faisal Iqball', '3110146918211', '3110122748661', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(253, 'Zineet bibi', 'Zuhoor Ahmad', '', '3110157176022', '03454139651', '3110179962579', 'Job-Holder', '2013-04-25', 'female', 'user.png', 'Basti Jodrana wali', '1911', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Labour', '2', 'uneducated', '10000', 'No Income', 'Zuhoor Ahmad', '3110179962579', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(254, 'Ayesha Farooq', 'Khalid Faroow', '', '3110106883130', '03002799170', '3110181586841', 'Bussiness', '2014-08-09', 'female', 'user.png', 'Basti Sohny Wale', '2226', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-16', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Father', '3110181586841', '31101', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(255, 'Kashaf Arooj', 'basheer Ahmad', '', '3110176673908', '03067850769', '3110193849215', 'Job-Holder', '2013-10-16', 'female', 'user.png', 'Basti Hussaina Abad', '1914', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '2', '2', '20000', 'No Income', 'Basheer Ahmad', '3110193849215', '', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '2019-11-11', '0'),
(256, 'Aqsa', 'M.Shabeer', '', '3110157621688', '03064589662', '3110109753265', 'Bussiness', '2014-08-09', 'female', 'user.png', 'Quraish colony', '2227', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-16', 'No', 'Labour', '1', 'uneducated', '10000', 'No Income', 'Father', '3110109753265', '3110127095372', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(257, 'Mahnial Ahmad', 'M.Ahmad', '', '3110174021118', '03457063962', '3110167038157', 'Bussiness', '2014-03-08', 'female', 'user.png', 'Basti Qamar Den', '1918', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Ahmad', '3110167038157', '3110183014132', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(258, 'Ifra Akbar', 'M.Akbar', '', '3110123598618', '03023337774', '3110162133433', 'Bussiness', '2015-07-01', 'female', 'user.png', 'Chak Abdullah Walla', '2229', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-16', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Father', '3110162133436', '3110154046460', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(259, 'Awasa Akbar', 'M.Akbar', '', '3110143400126', '03023337774', '3110162133433', 'Bussiness', '2013-01-10', 'female', 'user.png', 'Basti Qamar Den', '1921', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'M.Akbar', '3110162133433', '3110154046460', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(260, 'Hor_e_Ain', 'M.Ahmad', '', '3110120142836', '03089045296', '3110123468703', 'Bussiness', '2013-09-05', 'female', 'user.png', 'Basti rana wali', '1930', 'In-Progress', 5, 3, '', '', 'Pakistan', '2000-01-01', 'no', 'Farmer', '1', '2', '10000', 'No Income', 'M.Ahmad', '3110123468703', '3110154012562', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(261, 'Mehnaz Fatima', 'M.Haneef', '', '3110101567188', '03006147152', '3110195488003', 'Bussiness', '2016-04-20', 'female', 'user.png', 'Basti Mian M.Ghany Wali', '2241', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-22', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Father', '3110195488003', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(262, 'zain', 'gulzar ahmad', '', '3110185112955', '03096584506', '3110117696765', 'Job-Nil', '2015-10-18', 'male', 'user.png', 'hafizaabad', '2306', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'gulzar ahmad', '3110117696765', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(263, 'Javeria Yaseen', 'M.Yassen', '', '3110165019296', '03017681524', '3110114210407', 'Bussiness', '2015-03-24', 'female', 'user.png', 'Basti Sadiq Pur Chatta', '2254', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'No', 'Other', '2', 'uneducated', '10000', 'No Income', 'Father', '3110114210407', '3110118938824', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(264, 'rashid sadiq', 'M.sadiq', '', '311015861527', '0', '311053178049', 'Job-Nil', '2018-01-08', 'male', 'user.png', 'bipass bwm', '2309', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Labour', 'uneducated', 'uneducated', '10000', '10000', 'M,sadiq', '311053178049', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(265, 'Amna', 'Ishaq', '', '3110165019296', '03004229981', '3110144720857', 'Bussiness', '2015-03-24', 'female', 'user.png', 'Din Pur Sharif', '2259', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-27', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Father', '3110144720857', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(266, 'Fatima B. B', 'M.Wazeer', '', '3110165162220', '03013112482', '3110594674641', 'Bussiness', '2014-10-10', 'female', 'user.png', 'Basti Jodana B.W.N', '2275', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'No', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Waazeer', '3110594674641', '3110161318120', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(267, 'Muskan Tahir', 'M.Tahir', '', '3110116026616', '03314143623', '3110154840947', 'Job-Holder', '2015-03-16', 'female', 'user.png', 'Sadique City Housing Colony', '2277', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-29', 'No', 'Engineer', '2', '1', '20000', 'No Income', 'M.Tahir', '3110154840947', '3110145680910', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(268, 'altaf ali', 'nazeer ahmad', '', '3110194823581', '0303314922', '3110158012661', 'Job-Nil', '2015-02-02', 'male', 'user.png', 'shareef lakha basti', '2310', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-06', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'nazeer ahmad', '3110158012661', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(269, 'Aleeza Fatima', 'Ali Imran', '', '3110175958494', '03076594199', '311012408961', 'Bussiness', '2015-08-25', 'female', 'user.png', 'Muhala Islam Nagar', '2284', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'Ali Imran', '311012408961', '3110119447650', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(270, 'abu bakar sadiq', 'm.fayaz', '', '3110114445749', '03015711734', '3110113052203', 'Bussiness', '2014-11-07', 'male', 'user.png', 'takht mahal', '2313', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-07', 'no', 'Other', '1', 'uneducated', '10000', '10000', 'M.fayaz', '3110113052203', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(271, 'Asad ullah', 'abdull razaq', '', '3110119969834', '03087267323', '3110129823199', 'Bussiness', '2015-11-02', 'male', 'user.png', 'hafizaabad', '2315', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-02-09', 'no', 'Other', '1', '1', '10000', '10000', 'abdull razaq', '3110129823199', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(272, 'Zainab Hussain', 'M.Husain', '', '3110102883428', '03008148344', '3110122285093', 'Bussiness', '2015-05-28', 'female', 'user.png', 'Din Pur sharif B.W .N', '2293', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-02', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'M.Husain', '3110122285093', '3110192689796', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(273, 'waqas arshad', 'm arshad', '', '3110161884257', '0', '3110124808535', 'Job-Holder', '2015-06-13', 'male', 'user.png', 'deenpoor shareef', '2319', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-02-09', 'no', 'Other', '7', '1', '20000', '20000', 'm.arshad', '3110222480535', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(274, 'moiz ahmad', 'ahmad hassan', '', '3110114949709', '03336314615', '3110171359095', 'Job-Holder', '2016-03-30', 'male', 'user.png', 'Hafiza Abad', '2321', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', '2', 'uneducated', '20000', '20000', 'ahmad hassan', '311017190965', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(275, 'm zuhaib', 'm akasha', '', '0', '0', '0', 'Job-Nil', '2000-01-01', 'male', 'user.png', '0', '2325', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'nill', '0', '0', '0', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(276, 'zain ul abideen', 'M.ibrahim', '', '3110117511103', '03007582998', '3110116273083', 'Bussiness', '2013-10-25', 'male', 'user.png', 'pull nadar shah', '2329', 'In-Progress', 2, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Other', '11', 'uneducated', '20000', '20000', 'm ibrahim', '3110116273083', '0', '2', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(277, 'M Abdullah', 'hafiz m muneer', '', '3110152507281', '03006627334', '3110135942929', 'Job-Holder', '2015-07-16', 'male', 'user.png', 'basti ali muhammad arain', '2338', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-09', 'no', 'Shopkeeper', '2', '1', '20000', 'No Income', 'nill', '0', '0', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(278, 'm zeeshan', 'm yaseen', '', '311018435581', '0', '3110199697657', 'Job-Holder', '2015-04-01', 'male', 'user.png', 'muhalla nayai abadi', '2343', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-04-10', 'no', 'Other', 'uneducated', '1', '10000', '10000', 'm yaseen', '3110199697657', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(279, 'ahsan ullah  madni', 'm mohsin', '', '0', '0', '0', 'Job-Nil', '2019-01-01', 'male', 'user.png', 'Hafiza Abad', '2355', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-06-20', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'nill', '0', '0', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
(280, 'abdul wahab', 'mumtaaz ahmad', '', '3110162946541', '03353013864', '3110159998305', 'Job-Holder', '2015-08-01', 'male', 'user.png', 'Hafiza Abad', '2362', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-02-28', 'no', 'Other', 'uneducated', 'uneducated', '20000', '20000', 'mumtaz', '0', '0', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-11', '', '', '0'),
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
(297, 'iram fatima', 'Mudammad shafique', '', '31012853721', '03065244560', '311015710107', 'Job-Nil', '2013-02-09', 'female', 'user.png', 'deen poor shareef jattoowala b.w.n', '2273', 'In-Progress', 7, 3, '', '', 'pakistan', '2019-03-28', 'no', 'Labour', '2', 'uneducated', '5000', 'No Income', 'nill', '0', '0', '4', 'Other', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
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
(321, 'Fareha Rasool', 'gulam rasool', '', '3110154993514', '03057304724', '3110138951780', 'Bussiness', '2015-01-20', 'female', 'user.png', 'shareef coat', '2380', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-08-28', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'gulam rasool', '0', '00', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
(322, 'waleed ahmad', 'm.muhiman', '', '3520172097211', '0', '3110153792921', 'Job-Nil', '2015-02-12', 'male', 'user.png', 'Hafiza Abad', '2391', 'In-Progress', 1, 1, '', '', 'Pakistan', '2018-08-28', 'no', 'Other', 'uneducated', 'uneducated', '10000', '10000', 'muhiman', '0', '0', '2', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-11-12', '', '', '0'),
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
(358, 'Zain Ali', 'Abdul Hafeez', '', '3110192038607', '03077853138', '3110194724747', 'Bussiness', '2012-10-03', 'male', '', 'Din Pur Sharif Bwn', '1609', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', '0', 'Shopkeeper', 'uneducated', 'uneducated', '15000', 'No Income', 'Abdul Hafeez', '3110194724747', '0', '5', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(359, 'Ali Sajjad', 'M Ibraheem', '', '3110107853805', '03329629487', '3110116273083', 'Job-Nil', '2010-04-19', 'male', '', 'Nadar Shah Bwn', '1617', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Ibraheem', '3110116273083', '3110140287712', '8', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(360, 'Ali Husnain', 'Zulfiqar Ali', '', '3110139177167', '03037056404', '3110123511737', 'Bussiness', '2011-11-18', 'male', '', 'Nadar Shah Bwn', '1633', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-05', '0', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'Zulfiqar Ali', '3110123511737', '0', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(361, 'M Hassan', 'M Husain', '', '3110186486679', '03068054875', '3110109865877', 'Job-Nil', '2012-01-30', 'male', '', 'Bhutta Wala Khu Bwn', '1649', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-05-04', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Husain', '3110109865877', '0', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(362, 'M Mohsin', 'Hafiz Abdul Rehman', '', '3110137493885', '03017302983', '3520267934041', 'Bussiness', '2011-08-26', 'male', '', 'Bhutta Wala Khu Bwn', '1651', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Shopkeeper', '7', 'uneducated', '40000', 'No Income', 'Hafiz Abdul Rehman', '3520267934041', '3110177615408', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(363, 'M Nazir', 'M Jahangir', '', '31101', '03083690221', '311013213154', 'Job-Nil', '2011-08-26', 'male', '', 'Quraish Colony Bwn', '1660', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M Jahangir', '311013213154', '3110110928876', '5', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(364, 'M Ammar ', 'M Mughira', '', '3110196563197', '03036548839', '3110161489945', 'Job-Holder', '2013-08-18', 'male', '', 'Hafiza Abad Bwn', '1671', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M Mughira', '3110161489944', '3110187134300', '2', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(365, 'Muzzam Waheed', 'Abdul Waheed', '', '3110115172429', '03014052509', '3110187729777', 'Job-Holder', '2012-03-03', 'male', '', 'Dinpur Sharif Bwn', '1677', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-05', '0', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Abdul Waheed', '3110187729777', '3110179314990', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(366, 'M Awais', 'M Manshah', '', '3110105227595', '03033149262', '3110159906191', 'Job-Nil', '2012-09-27', 'male', '', 'Din Pur Sharif Bwn', '1687', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-11', '0', 'Farmer', '2', 'uneducated', '30000', 'No Income', 'M Mansha', '3110159906191', '0', '4', 'House Hold', 'No Income', 'Islam', 'No', '0', '0', '0', '2019-11-07', '', '', '0'),
(367, 'M.Irfan', 'Zahoor Ahmad', '', '3110124156655', '03027092864', '3110115783625', 'Job-Holder', '2009-05-11', 'male', '', 'Deen Pur Shareef Bwn', '2157', 'In-Progress', 9, 4, '', '', 'Pakistan', '1018-09-10', 'no', 'Other', '1', 'uneducated', '10000', 'No Income', 'Zahoor Ahmad', '3110115783625', '3110101816896', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(368, 'M.Dildar Zafar', 'Zafar  Iqbal', '', '3520233874249', '03027852340', '3520230520435', 'Job-Holder', '2011-12-19', 'male', '', 'hafiz abad  bwn', '1781', 'In-Progress', 9, 4, '', '', 'Pakistan', '2016-10-18', 'no', 'Other', '2', '1', '10000', 'No Income', 'Zafar Iqbal', '3520230520435', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(369, 'Fazal Abbas Shab', 'Fida Shab', '', '3110172667101', '03041236608', '31101', 'Job-Holder', '2011-02-04', 'male', '', 'hafiz abad  bwn', '2092', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Other', '11', 'uneducated', '15000', 'No Income', 'Fida Shab', '31101', '3110159347662', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(370, 'M.Hussain', 'M.Iqbal', '', '\\3110126620717', '03052558564', '3110163058441', 'Bussiness', '2010-10-27', 'male', '', 'New City bwn', '2167', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-10-18', 'no', 'Other', '1', '2', '30000', 'No Income', 'M.Iqbal', '3110163058441', '3110174304728', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(371, 'Muzammil Riaz', 'Riaz Ahmad', '', '3110165762145', '03084454671', '3110116258491', 'Job-Holder', '2008-01-01', 'male', '', 'hafiz abad  bwn', '2178', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-12-15', 'no', '', '7', '1', '20000', '', 'Riaz Ahmad', '3110116258491', '3110127596062', '5', '', '', 'Islam', '', '0', '0', '0', '2019-11-14', '', '2019-11-14', '0'),
(372, 'Sanwal Ali', 'Sajid Hussain', '', '31101', '03083690221', '311014840205', 'Job-Holder', '2000-01-01', 'male', '', 'Quraish colony bwn', '1662', 'In-Progress', 9, 4, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '2', '1', '30000', 'No Income', 'Sajid Hussain', '311014840205', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(373, 'Shahzad Ali', 'M.Mansha ', '', '3110114668911', '1', '3110163880041', 'Bussiness', '2008-02-19', 'male', '', 'hafiz abad  bwn', '1960', 'In-Progress', 9, 4, '', '', 'Pakistan', '2017-08-29', 'no', 'Farmer', '1', '1', '30000', 'No Income', 'M.Mansha', '3110163880041', '3110177085050', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(374, 'Zain Ali', 'M.Kaleem', '', '3110242367067', '03017912432', '3110213748579', 'Job-Holder', '2012-01-01', 'male', '', 'Fourt Wali pull bwn', '1965', 'In-Progress', 8, 4, '', '', 'Pakistan', '2018-03-01', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'M.Kaleem', '3110213748579', '3110296637346', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(375, 'Umar Khalid', 'Khalid Mehmood', '', '3110187857463', '03027858693', '3110173990895', 'Job-Holder', '2013-08-16', 'male', '', 'Chack matran bwn', '2084', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Khalid Mehmood', '3110173990895', '3110131780714', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(376, 'Usman Ghani', 'Allah Ditta', '', '3110107561317', '03059143036', '3110115931905', 'Job-Holder', '2010-08-28', 'male', '', 'Deen Pur Shareef Bwn', '2090', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Other', '1', '1', '30000', 'No Income', 'Allah Ditta', '3110115931905', '3110168035530', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(377, 'Khadim Hussain', 'H.Abdul Rehman', '', '3110169463063', '03047078226', '3110116391033', 'Job-Holder', '2011-04-12', 'male', '', 'Deen Pur Shareef Bwn', '2094', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-03', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'H.Abdul Rehman', '3110116391033', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(378, 'Naveed Ashraf', 'M.AsHraf', '', '3110157690591', '03004865838', '312039715934', 'Job-Holder', '2010-10-15', 'male', '', 'hafiz abad  bwn', '2102', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-04', 'no', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.AshRAF', '312039715934', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(379, 'Hussain Ali', 'H.Abdul Rehman', '', '3110131394379', '03047078226', '3110116391033', 'Job-Holder', '2011-04-12', 'male', '', 'Deen Pur Shareef Bwn', '2105', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-04', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'H.Abdul Rehman', '3110116391033', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(380, 'M.Haseeb', 'M.Shabir Ahmad', '', '3110164937045', '03067682115', '3110163242109', 'Job-Holder', '2012-01-01', 'male', '', 'BI Pass BWN', '2116', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Shabir Ahmad', '3110163243109', '3110125763926', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(381, 'ASAD -Ullah', 'M.yOUSAF', '', '3110138643757', '03056188104', '3110169977867', 'Job-Holder', '2011-11-06', 'male', '', 'Deen Pur Shareef Bwn', '2118', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '1', '1', '20000', 'No Income', 'M.yousaf', '3110169977867', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(382, 'Abdul Wahab', 'Javaid', '', '3110146536181', '03036038201', '3110175294279', 'Job-Holder', '2011-08-15', 'male', '', 'Quraish colony bwn', '2121', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '2', '1', '30000', 'No Income', 'Javaid', '3110175294279', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(383, 'Zain Ali', 'Zahoor Ahmad', '', '3110176350793', '1', '3110179962579', 'Job-Holder', '2011-05-10', 'male', '', 'Tibbi Mahi wali bwn', '2123', 'In-Progress', 9, 4, '', '', 'Pakistan', '2018-04-07', 'no', 'Other', '2', '1', '30000', 'No Income', 'Zahoor Ahmad', '3110179962579', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(384, 'Ali Ammar', 'M.Jahangeer', '', '3110192878551', '03024422532', '3110135813367', 'Job-Holder', '2008-02-05', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '814', 'In-Progress', 14, 6, '', '', 'Pakistan', '2012-04-05', 'no', 'Labour', '2', '1', '10000', 'No Income', 'M.jahangeer', '3110135813367', '3110138069312', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(385, 'Salman Akram', 'M.Akram', '', '3110146149085', '03037919228', '311010773851', 'Bussiness', '2008-02-02', 'male', '', 'hafiz abad  bwn', '960', 'In-Progress', 14, 6, '', '', 'Pakistan', '2013-04-01', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Akram', '3110107723851', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(386, 'Hafeez-ur Rehman', 'Abd-ur-Rehman', '', '3110111189417', '03067865695', '3110108913927', 'Job-Holder', '2008-05-05', 'male', '', 'hafiz abad  bwn', '1098', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-05-04', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Abd-ur-Rehman', '3110108913927', '3110103690144', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(387, 'Fahad Ramzan', 'M.Ramzan', '', '3110155545655', '03347035294', '3110127775425', 'Bussiness', '2008-12-03', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1104', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Ramzan', '3110127775425', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(388, 'Zoheer Abbas', 'M.Abbas', '', '3110105090043', '03062300146', '3110179443139', 'Job-Holder', '2010-08-25', 'male', '', 'hafiz abad  bwn', '1113', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', 'uneducated', '1', '10000', 'No Income', 'M.Abbas', '3110179443139', '3110170120684', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(389, 'Usman Hussain', 'M.Hussain', '', '3110156515359', '03016529581', '3110142135341', 'Job-Holder', '2009-03-06', 'male', '', 'hafiz abad  bwn', '1125', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-05-04', 'no', 'Other', '2', '2', '15000', 'No Income', 'M.Hussain', '3110142135341', '3110143832546', '8', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(390, 'M.Shazad', 'M.Fiaz', '', '3110195388163', '03029824494', '3110133878839', 'Job-Holder', '2006-07-16', 'male', '', 'hafiz abad  bwn', '1127', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-05-04', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Fiaz', '3110133878839', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(391, 'Ch.Usman Muneer', 'Muneer Ahmad', '', '3110109098881', '03462409061', '3110173800649', 'Job-Holder', '2008-12-11', 'male', '', 'Basti jorana', '1128', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', 'uneducated', '1', '10000', 'No Income', 'Muneer Ahmad', '3110173800649', '3110174751118', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(392, 'M.Waqas Ali', 'M.Abbas', '', '3110173407108', '03086116347', '3640256067109', 'Job-Holder', '2011-01-01', 'male', '', 'Chack matran bwn', '1133', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Abbas', '3640256067109', '3110174751118', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(393, 'Ali Hassan', 'Abdul Staar', '', '3110161761089', '03026395788', '3110116615049', 'Job-Holder', '2009-01-09', 'male', '', 'hafiz abad  bwn', '1311', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-08-18', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'Abdul Staar', '3110116615049', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(394, 'M.Hassan', 'M.Shafee', '', '3110169102555', '03017684803', '3110132578783', 'Job-Holder', '2008-05-25', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1183', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '11', '1', '20000', 'No Income', 'M.Shafee', '3110132578783', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(395, 'Asjad Saleem', 'M.Saleem', '', '3110107095187', '03007586566', '3110116202953', 'Bussiness', '2011-05-12', 'male', '', 'hafiz abad  bwn', '1194', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '1', '1', '15000', 'No Income', 'M.Saleem', '3110116202953', '3110128309022', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(396, 'Ahmad Raza', 'M.Riaz', '', '3110129382483', '03007586566', '3110116443463', 'Bussiness', '2011-08-19', 'male', '', 'Check hotiana bwn', '1241', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-05-05', 'no', 'Farmer', '2', '1', '10000', 'No Income', 'M.Riaz', '3110116443463', '3110112239480', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(397, 'Noman Shabeer', 'Shabeer Ahmad', '', '3110162438061', '03059712811', '3110116450797', 'Bussiness', '2008-09-01', 'male', '', 'Nadar Shah bwn', '1258', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-05-05', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Shabeer Ahmad', '3110116450797', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(398, 'Lukman Ahmad', 'AhMAD HASSAN', '', '3110179520334', '03014347061', '3110116256645', 'Bussiness', '2009-01-16', 'male', '', 'Nadar Shahl bwn', '1307', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-18', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Ahmad hassan', '3110116256645', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(399, 'Ali haSSAN', 'Zahid Ameen', '', '3110105114411', '03027549480', '3110155609653', 'Bussiness', '2009-09-01', 'male', '', 'Khan baba colny house no 148', '1170', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-04-05', 'no', 'Other', '3', '3', '15000', 'No Income', 'Zahid Ameen', '3110155609653', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(400, 'Shahbaz Shabeer', 'Shabir Ahmad', '', '3110138867410', '03057284028', '3110121421585', 'Job-Holder', '2008-03-12', 'male', '', 'Chack Nadar Shah BWN', '1314', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-08-18', 'no', 'Labour', '1', 'uneducated', '15000', 'No Income', 'Shabir Ahmad', '3110121421585', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(401, 'M.Azam', 'Khalil Ahmad', '', '3110104233649', '03057331619', '3110141831929', 'Bussiness', '2008-12-10', 'male', '', 'Nadar Shahl bwn', '1329', 'In-Progress', 14, 6, '', '', 'Pakistan', '2014-10-01', 'no', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'KhalIL Ahmad', '3110141831929', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(402, 'M.Abu Bakar', 'Abaid-ur-Rehman', '', '3110157675107', '03012489630', '3110151665331', 'Job-Holder', '2009-01-01', 'male', '', 'Hussain Abad bwn', '1395', 'In-Progress', 14, 6, '', '', 'Pakistan', '2015-04-03', 'no', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'Abaid-ur-Rehman', '3110151665331', '3110181935734', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(403, 'Ali Ahmad', 'Allah Ditta', '', '31101110811283', '03063014946', '3110104177157', 'Bussiness', '2010-04-07', 'male', '', 'Check hotiana', '1397', 'In-Progress', 14, 6, '', '', 'Pakistan', '2015-04-03', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Allah Ditta', '3110104177157', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(404, 'M.Farhan', 'M.Abrar', '', '3110112575595', '03005154953', '3110116517865', 'Bussiness', '2010-10-10', 'male', '', 'Qamar deen Hannas', '1534', 'In-Progress', 14, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Farmer', '1', '1', '10000', 'No Income', 'M.Abrar', '3110116517865', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(405, 'Irfan Shafiq', 'M.Shafiq', '', '3110159853403', '03048651245', '3110180414199', 'Bussiness', '2009-12-25', 'male', '', 'shrif cote bwn', '1547', 'In-Progress', 14, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Shafiq', '3110180414199', '3110126831490', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(406, 'M.Adnan', 'M.Riaz', '', '3110155221913', '03034285097', '3110130816285', 'Job-Holder', '2010-03-10', 'male', '', 'Basti sobhay kay', '1562', 'In-Progress', 14, 6, '', '', 'Pakistan', '2015-05-28', 'no', 'Labour', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Riaz', '3110130816285', '31101071411064', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(407, 'Abdul Basit', 'M.Ishaq', '', '3110171326407', '03017386500', '3110112819991', 'Job-Holder', '2009-01-16', 'male', '', 'Basti sobhay kay', '1767', 'In-Progress', 14, 6, '', '', 'Pakistan', '2016-08-22', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Ishaq', '3110112819991', '3110183751872', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(408, 'Ch.M.Shaqib Riaz', 'Riaz Hussain ', '', '3110162668983', '03018869904', '3110177059023', 'Job-Holder', '2012-02-05', 'male', '', 'Basti Hussaina Abad', '2192', 'In-Progress', 14, 6, '', '', 'Pakistan', '2019-09-03', 'no', 'Labour', '7', '7', '15000', 'No Income', 'Riaz Hussain', '3110177059023', '3110148339678', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(409, 'Abdul Wahab', 'M.Munwar Hussain', '', '3110172287081', '03015152808', '3110160393967', 'Job-Holder', '2011-12-09', 'male', '', 'Faisal colony bwn', '2234', 'In-Progress', 14, 6, '', '', 'Pakistan', '2019-06-03', 'no', 'Other', '7', '1', '30000', 'No Income', 'M.Munwar Hussain', '3110160393967', '3110121351370', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(410, 'M.Asif', 'M.Mumtaz', '', '3110153924723', '03017921214', '3110149989609', 'Job-Holder', '2007-09-14', 'male', '', 'hafiz abad  bwn', '2270', 'In-Progress', 14, 6, '', '', 'Pakistan', '2019-03-28', 'no', 'Other', 'uneducated', '1', '10000', 'No Income', 'M.Mumtaz', '3110149989609', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(411, 'Zara Asghar', 'M.Asghar', '', '3110174465748', '03347013469', '3110116026947', 'Job-Holder', '2003-01-14', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '102', 'In-Progress', 23, 10, '', '', 'Pakistan', '2007-04-19', 'no', 'Other', '3', 'uneducated', '15000', 'No Income', 'M.Asghar', '3110116026947', '3110115504778', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(412, 'Amna Ismaeel', 'M.Ismaeel', '', '3110122418332', '03027540945', '3110186919553', 'Job-Holder', '2004-10-04', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '231', 'In-Progress', 23, 10, '', '', 'Pakistan', '2007-10-01', 'no', 'Labour', '1', 'uneducated', '10000', 'No Income', 'M.Ismaeel', '3110186919553', '1234', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(413, 'Misbah Asghar', 'M.Asghar', '', '3110513783028', '03086686959', '3110536128053', 'Job-Holder', '2004-12-22', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '255', 'In-Progress', 23, 10, '', '', 'Pakistan', '2008-05-01', 'no', 'Other', '1', '1', '20000', 'No Income', 'M.Asghar', '3110136128053', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(414, 'Iqra Shabir', 'Shabir Ahmad', '', '3110122822406', '03067850769', '3110193849215', 'Job-Holder', '2006-12-25', 'female', '', 'Jattu wala bwn', '353', 'In-Progress', 23, 10, '', '', 'Pakistan', '2009-01-01', 'no', 'Other', '2', '2', '20000', 'No Income', 'Shabir Ahmad', '3110193849215', '3110128867304', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(415, 'Shaista Saddique', 'M.Saddique', '', '3110122966996', '03067858020', '3110170333673', 'Bussiness', '2005-11-12', 'female', '', 'Basti johsara wali', '411', 'In-Progress', 23, 10, '', '', 'Pakistan', '2009-04-30', 'no', 'Farmer', '1', 'uneducated', '20000', 'No Income', 'M.Saddique', '3110170333673', '3110170178910', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(416, 'taskeen Fatima', 'M.Tayyab', '', '3110172704212', '03076854429', '3110116165467', 'Bussiness', '2005-11-11', 'female', '', 'Basti Roshan Din', '460', 'In-Progress', 23, 10, '', '', 'Pakistan', '2009-10-01', 'no', 'Shopkeeper', '1', '1', '10000', 'No Income', 'M.Tayyab', '3110116165467', '3110115418922', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(417, 'Khadija Akram', 'M.Akram', '', '3110132229926', '03367122026', '3110147266023', 'Bussiness', '2005-10-18', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '474', 'In-Progress', 23, 10, '', '', 'Pakistan', '2009-11-01', 'no', 'Other', 'uneducated', '1', '20000', 'No Income', 'M.Akram', '3110147266023', '3110111955990', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(418, 'Zoya Rehman', 'M.Rehman', '', '3110155198230', '03062513266', '3110114609705', 'Job-Holder', '2006-03-11', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '532', 'In-Progress', 23, 10, '', '', 'Pakistan', '2010-04-10', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Rehman', '3110114609705', '3110162345638', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(419, 'Rimsha Kousar', 'M.Akram', '', '31101', '03086686959', '3110106315228', 'Job-Holder', '2006-06-04', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '558', 'In-Progress', 23, 10, '', '', 'Pakistan', '2010-04-15', 'no', 'Other', '2', '2', '20000', 'No Income', 'M.Akram', '3110106315228', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(420, 'Mehwish Rafique', 'M.Rafique', '', '3110146399662', '03074874017', '3110183241593', 'Job-Holder', '2004-09-06', 'female', '', 'Pul Farad wah', '565', 'In-Progress', 23, 10, '', '', 'Pakistan', '2010-04-15', 'no', 'Other', '1', '7', '20000', 'No Income', 'M.Rafique', '3110183241593', '3110130117378', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(421, 'IQRA', 'Allah Rakha', '', '3110173541558', '03057417284', '3110161150403', 'Job-Holder', '2005-11-15', 'female', '', 'pull nadar shah b.w.n', '779', 'In-Progress', 23, 10, '', '', 'Pakistan', '2012-04-05', 'no', 'Other', '2', 'uneducated', '45000', 'No Income', 'Allah Rakha', '3110161150403', '3110119749688', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(422, 'Noor-e-Sehar', 'Khalid Mehmood', '', '3110134956190', '03007924315', '3110129571441', 'Job-Holder', '2007-06-10', 'female', '', 'Quresh Colony', '824', 'In-Progress', 23, 10, '', '', 'Pakistan', '2012-04-09', 'no', 'Teacher', '11', 'uneducated', '50000', 'No Income', 'Khalid Mehmood', '3110129571441', '3110112976084', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(423, 'Shakeela Rafique', 'Muhammad Rafique', '', '3110150757767', '03347014327', '3110116611661', 'Job-Holder', '1999-06-13', 'female', '', 'Hussain Abad bwn', '973', 'In-Progress', 23, 10, '', '', 'Pkaistani', '2013-04-05', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'Muhammad Rafique', '3110116611661', '1', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(424, 'Asma Sadia', 'Hafiz Abdul Rehman', '', '3110116905136', '03047078226', '3110116391033', 'Job-Holder', '2005-07-05', 'female', '', 'Jattu wala bwn', '1119', 'In-Progress', 23, 10, '', '', 'Pakistan', '2014-04-05', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'Hafiz Abdul Rehman', '3110116391033', '1', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(425, 'Sidra Riaz', 'm.Riaz', '', '3110148051154', '03012785443', '3110116443463', 'Bussiness', '2006-10-02', 'female', '', 'Islamia Colony Jattu wala Bwn', '1240', 'In-Progress', 23, 10, '', '', 'Pakistani', '2014-05-05', 'no', 'Farmer', '1', 'uneducated', '10000', 'No Income', 'M.Riaz', '3110116443463', '3110112239480', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(426, 'Maryam Mukhtar', 'Mukhtar Ahmad', '', '3110113683396', '03057170689', '3110116558257', 'Bussiness', '2005-06-01', 'female', '', 'Quresh Colony Bwn', '1270', 'In-Progress', 23, 10, '', '', 'Pakistan', '2014-05-19', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'Mukhtar Ahmad', '3110116558257', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(427, 'Ayesha Zaman', 'Badar U Zaman', '', '3110194014524', '03024983128', '3110199299707', 'Bussiness', '2006-02-01', 'female', '', 'Jattu wala Bwn', '1808', 'In-Progress', 23, 10, '', '', 'Pakistan', '2017-04-05', 'no', 'Other', '1', '1', '45000', 'No Income', 'Badar U Zaman', '3110199299707', '3110183779434', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(428, 'Maria Abbas', 'Ali Abbas', '', '3110183169174', '03048252500', '3110115821325', 'Job-Holder', '2008-06-15', 'female', '', 'Quraish colony bwn', '1816', 'In-Progress', 23, 10, '', '', 'Paakistan', '2017-04-05', 'no', 'Other', '7', '1', '20000', 'No Income', 'Ali Abbas', '3110115821325', '3110122488880', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(429, 'Saba Ramzan', 'Muhammad Mazhar Ali', '', '3110196908206', '03007582699', '3110195506359', 'Job-Holder', '2009-10-23', 'female', '', 'Quraish colony bwn', '1970', 'In-Progress', 23, 10, '', '', 'Pakistan', '2018-03-01', 'No', 'Other', '3', '7', '30000', 'No Income', 'Muhammad Mazhar Ali', '3110195506359', '1', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(430, 'Shakeela Yasmeen', 'Basheer Ahmad', '', '3110134460890', '03083937620', '3110172949775', 'Bussiness', '2003-03-18', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '1975', 'In-Progress', 23, 10, '', '', 'Pakistan', '2018-03-01', 'no', 'Other', '1', 'uneducated', '20000', 'No Income', 'Basheer Ahmad', '3110172949775', '3110154252946', '9', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(431, 'Ayesha Zafar', 'Zafar Iqbal', '', '3120150951254', '03006809878', '3120103168727', 'Bussiness', '2005-11-11', 'female', '', 'Canal Garden Bwn', '2174', 'In-Progress', 23, 10, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '2', '2', '20000', 'No Income', 'Zafar Iqbal', '3120103168727', '3120127046538', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(432, 'Kiran Rafique', 'Muhammad Rafique', '', '3110110423884', '03033143792', '3110122111905', 'Bussiness', '2008-07-05', 'female', '', 'Qamar Deen Hans Bwn', '2317', 'In-Progress', 23, 10, '', '', 'Pakistan', '2019-04-08', 'no', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Rafique', '3110122111905', '3110180354902', '7', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(433, 'Tayyba Hameed', 'Abdul Hameed', '', '3110128053932', '03038042407', '3110166088927', 'Job-Holder', '2005-08-01', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2347', 'In-Progress', 23, 10, '', '', 'Pakistan', '2019-04-10', 'no', 'Other', '11', '1', '40000', 'No Income', 'Abdul Hameed', '3110166088927', '3110115357148', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(434, 'Sadia Haleema', 'Abdul Hameed', '', '3110162923774', '03085952672', '3110116637307', 'Bussiness', '2004-03-14', 'female', '', 'Qamar deen Hans Bwn', '2373', 'In-Progress', 23, 10, '', '', 'Pakistan', '2019-08-28', 'no', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Abdul Hameed', '3110116637307', '3110160529604', '10', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(435, 'Zain ul Abdeen', 'Muhammad Maqsood', '', '3110109420793', '03017685855', '3110105253157', 'Bussiness', '2010-07-14', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1193', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-04-05', 'no', '', '3', '2', '20000', '', 'Muhammad Maqsood', '3110105253157', '3110141559850', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-14', '', '2019-11-14', '0'),
(436, 'Hamza Jabbar', 'Abdul Jabbar', '', '3110188038719', '03008574940', '3110163702049', 'Bussiness', '2010-03-19', 'male', '', 'Deen Pur Shareef Bwn', '1196', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-05-04', 'no', 'Shopkeeper', '1', '1', '45000', 'No Income', 'Abdul Jabbar', '3110163702049', '21', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(437, 'Usama Muneer', 'Muneer Ahmad', '', '3110144934661', '03072274315', '3110151758285', 'Bussiness', '2010-08-14', 'male', '', 'Bahadur Kot', '1229', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Muneer Ahmad', '3110151758285', '31', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(438, 'Muazam Zaheer', 'Zaheer Ahmad', '', '311016568725', '03158920916', '3110153192797', 'Job-Holder', '2010-05-05', 'male', '', 'Bypas Bwn', '1232', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-05-05', 'No', 'Other', '3', '7', '50000+', 'No Income', 'Zaheer Ahmad', '3110153192797', '3110103836728', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(439, 'M.Abdullah Bin Akram', 'Muhammad Akram', '', '3110196407249', '03058811113', '3110116427691', 'Job-Holder', '2013-08-14', 'male', '', 'Tibbi Mahi wali bwn', '1256', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Teacher', '2', 'uneducated', '50000', 'No Income', 'Muhammad Akram', '3110116427691', '3110131678944', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(440, 'Muhammad Haroon Tariq', 'Tariq Ahmad', '', '3110190800135', '03004841124', '3110116427703', 'Job-Holder', '2011-07-10', 'male', '', 'Tibbi Mahi wali bwn', '1257', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '2', '1', '20000', 'No Income', 'Tariq Ahmad', '3110116427703', '3110186154556', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(441, 'Kaleem Ullah', 'Riaz Ahmad', '', '3110167476079', '03032979382', '311019863833', 'Bussiness', '2012-03-15', 'male', '', 'Basti Hussain abad', '1278', 'In-Progress', 11, 5, '', '', 'Pakistani', '2014-05-19', 'no', 'Shopkeeper', '2', 'uneducated', '30000', 'No Income', 'Riaz Ahmad', '311019863833', '31101', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(442, 'Ali Haider', 'Ali Imran', '', '3110137096357', '03076594199', '3110124089617', 'Job-Holder', '2010-07-21', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1303', 'In-Progress', 11, 5, '', '', 'Pakistan', '2014-08-18', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Ali Imran', '3110124089617', '3110119447650', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(443, 'Muhammad Waseem Riaz', 'Muhammad Riaz', '', '3110157612635', '03057376206', '3110164894585', 'Bussiness', '2012-12-11', 'male', '', 'Basti Shareef Kot', '1363', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '1', 'uneducated', '30000', 'No Income', 'Muhammad Riaz', '3110164894585', '3110174146986', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(444, 'Mubashar Huassain', 'Muhammad Husain', '', '3110197403705', '03072426771', '3110152936537', 'Bussiness', '2010-11-30', 'male', '', 'Deen Pur Shareef Bwn', '1374', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '1', 'uneducated', '50000+', 'No Income', 'Muhammad Husain', '3110152936537', '3110103448282', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(445, 'Muhammad Ghazanfar Abbas', 'Abid Abbas Jam', '', '3110194935169', '03036051057', '3110124783552', 'Job-Nil', '2012-03-18', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1383', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Other', 'uneducated', '3', '10000', 'No Income', 'Abid Abbas Jam', '3110124783552', '3110124783552', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(446, 'Ume Habeeba', 'Muhammad Husain', '', '3110142670642', '03016529581', '3110142135341', 'Bussiness', '2011-04-23', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '1445', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Muhammad Husain', '3110142135341', '3110143832546', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(447, 'Muhammad Muaz Khalid', 'Khalid Mehmood', '', '3110154039119', '03228744921', '3110162911833', 'Bussiness', '2010-06-12', 'male', '', 'Basti Sheer Muhammad Bwn', '1447', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '1', '1', '20000', 'No Income', 'Khalid Mehmood', '3110162911833', '3110165789344', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(448, 'Laiba Irshad', 'Muhammad Irshad', '', '3110137826598', '03089045132', '3110128323757', 'Bussiness', '2012-01-01', 'female', '', 'Mahar wali Khooh Bwn', '1459', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', '2', '1', '10000', 'No Income', 'Muhammad Irshad', '3110128323757', '3110124107922', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(449, 'Atif Ali', 'Allah Rakha', '', '3110134699111', '03067807869', '3110147946057', 'Bussiness', '2011-08-01', 'male', '', 'Hussain Abad bwn', '1473', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Allah Rakha', '3110147946057', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(450, 'Mahnoor Fatima', 'Abdul Ghaffar', '', '3110177009596', '03037065404', '3110114721447', 'Bussiness', '2010-12-30', 'female', '', 'Tibbi Mahi wali bwn', '1502', 'In-Progress', 11, 5, '', '', 'Pakistani', '2015-05-04', 'no', 'Other', '1', 'uneducated', '10000', 'No Income', 'Abdul Ghaffar', '3110114721447', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(451, 'Khadija Alim', 'Alim ALi', '', '3110183794859', '03000077013', '3110183794859', 'Bussiness', '2013-05-03', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '1508', 'In-Progress', 11, 5, '', '', 'Pakistani', '2015-05-04', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'Alim ALi', '3110183794859', '3110171260118', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(452, 'Muhammad Mubashir Rasheed', 'Abdul Rasheed', '', '3110108329237', '03007587729', '3110153201953', 'Job-Holder', '2013-05-03', 'male', '', 'Mahar wali ', '1513', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-04', 'no', 'Other', 'uneducated', 'uneducated', '5000', 'No Income', 'Abdul Rasheed', '3110153201953', '311017126011', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(453, 'Aliza Fatima', 'Muhammad Ibrar', '', '3110147670026', '03007587729', '3110116517865', 'Job-Nil', '2012-06-17', 'female', '', 'Marhwali', '1535', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Muhammad Ibrar', '3110116517865', '1', '4', 'Job-Holder', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(454, 'Muhammad Tayyab', 'Shabir Ahmad', '', '3110217645665', '03088302927', '3110204770897', 'Bussiness', '2009-04-16', 'male', '', 'Bahadur Kot', '1554', 'In-Progress', 11, 5, '', '', 'Pakistan', '2015-05-28', 'No', 'Other', '2', 'uneducated', '30000', 'No Income', 'Shabir Ahmad', '3110204770897', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(455, 'Ijaz Ahmad', 'Muhammad Irshad', '', '3110135573679', '03007641020', '3110152074243', 'Bussiness', '2010-10-25', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1559', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-04-01', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Irshad', '3110152074243', '3110171749898', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(456, 'Musfira Hussain', 'Muhammad Hussain', '', '3110101113206', '03048333841', '3110132633805', 'Bussiness', '2010-09-13', 'female', '', 'Basti Matrah', '1627', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '2', 'uneducated', '10000', 'No Income', 'Muhammad Hussain', '3110132633805', '3110179457976', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(457, 'Azan Ali', 'Ghulam Nabi', '', '3110158207183', '03457056944', '3110179022617', 'Job-Holder', '2011-06-06', 'male', '', 'Tibbi Mahi wali bwn', '1629', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '3', 'uneducated', '20000', 'No Income', 'Ghulam Nabi', '3110179022617', '1', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(458, 'Abdul Malik', 'Muhammad Ishaq', '', '3110135920681', '03017386500', '3110112819991', 'Bussiness', '2011-03-28', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '1768', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-08-22', 'no', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Ishaq', '3110112819991', '3110183751872', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(459, 'Noreen Fatima', 'M.Yar', '', '3110193026618', '03078965473', '3110116517881', 'Job-Holder', '2010-05-10', 'female', 'user.png', 'Ranjhy wala khu', '1239', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '3', '3', '10000', 'No Income', 'M.Yar', '3110116517881', '3110141346614', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(460, 'Saira Sultan', 'sultan Ahmad', '', '3110199465128', '03058522799', '3110176266619', 'Bussiness', '2010-10-15', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1318', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Shopkeeper', '1', '3', '15000', 'No Income', 'Sultan Ahmad', '3110176266619', '3110141346614', '3', 'Bussiness', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(461, 'Mahrab Akram', 'M.Akram', '', '3110163998932', '03037180280', '3110147266023', 'Job-Holder', '2010-05-03', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1302', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-08-18', 'no', 'Other', '3', '1', '10000', 'No Income', 'M.Akram', '3110147266023', '3110111955990', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(462, 'Sana bibi', 'A.Rakha', '', '3110108078691', '03026523640', '3110172924277', 'Job-Holder', '2009-11-28', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1255', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '1', '1', '30000', 'No Income', 'A.Rakha', '3110172924277', '3110148206038', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(463, 'Zanab bibi', 'Akhtar Ali', '', '3110185619918', '03057967883', '3110147825265', 'Job-Holder', '2013-09-24', 'female', 'user.png', 'Jattu wala bwn', '1325', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Other', '1', '1', '10000', 'No Income', 'Akhtar Ali', '3110147825265', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(464, 'Sundas Sarwar', 'M.Sarwar', '', '3110143095862', '03087212815', '3110116443857', 'Bussiness', '2010-09-28', 'female', 'user.png', 'Ranjhy wala khu', '1328', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-10-01', 'no', 'Farmer', '3', '3', '10000', 'No Income', 'M.Sarwar', '3110116443857', '3110205998668', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(465, 'Noreen Fatima', 'M.Yar', '', '3110193026618', '03078965473', '3110116517881', 'Job-Holder', '2010-05-10', 'female', 'user.png', 'Ranjhy wala khu', '1239', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '3', '3', '10000', 'No Income', 'M.Yar', '3110116517881', '3110141346614', '3', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(466, 'Saira Sultan', 'sultan Ahmad', '', '3110199465128', '03058522799', '3110176266619', 'Bussiness', '2010-10-15', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1318', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Shopkeeper', '1', '3', '15000', 'No Income', 'Sultan Ahmad', '3110176266619', '3110141346614', '3', 'Bussiness', '5000', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(467, 'Mahrab Akram', 'M.Akram', '', '3110163998932', '03037180280', '3110147266023', 'Job-Holder', '2010-05-03', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1302', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-08-18', 'no', 'Other', '3', '1', '10000', 'No Income', 'M.Akram', '3110147266023', '3110111955990', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(468, 'Sana bibi', 'A.Rakha', '', '3110108078691', '03026523640', '3110172924277', 'Job-Holder', '2009-11-28', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1255', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-05-05', 'no', 'Other', '1', '1', '30000', 'No Income', 'A.Rakha', '3110172924277', '3110148206038', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(469, 'Zanab bibi', 'Akhtar Ali', '', '3110185619918', '03057967883', '3110147825265', 'Job-Holder', '2013-09-24', 'female', 'user.png', 'Jattu wala bwn', '1325', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-09-01', 'no', 'Other', '1', '1', '10000', 'No Income', 'Akhtar Ali', '3110147825265', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(470, 'Sundas Sarwar', 'M.Sarwar', '', '3110143095862', '03087212815', '3110116443857', 'Bussiness', '2010-09-28', 'female', 'user.png', 'Ranjhy wala khu', '1328', 'In-Progress', 10, 5, '', '', 'Pakistan', '2014-10-01', 'no', 'Farmer', '3', '3', '10000', 'No Income', 'M.Sarwar', '3110116443857', '3110205998668', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(471, 'Iqra Abbas', 'M.Abbas', '', '3110119226906', '03027058118', '3110105931947', 'Job-Holder', '2010-11-11', 'female', 'user.png', 'Coat Fateh Mahmood', '1364', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '11', '3', '10000', 'No Income', 'M.Abbas', '3110105931947', '3110151260572', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(472, 'Manahil Asif', 'M.Asif', '', '3110150063282', '03007095644', '3110161489947', 'Job-Holder', '2012-02-21', 'female', 'user.png', 'Ranjhy wala khu', '1365', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '3', '1', '10000', 'No Income', 'M.Asif', '3110161489947', '3110184846628', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(473, 'Rimsha Shaheen', 'M.Ishaq ', '', '3110120345578', '03075074728', '3110108860581', 'Job-Holder', '2008-08-08', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1375', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '1', '3', '20000', 'No Income', 'M.Ishaq', '3110108860581', '31101', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(474, 'Tehreen Fatima', 'M.Anwar', '', '3110149639720', '03002843792', '3110112511461', 'Bussiness', '2011-04-26', 'female', 'user.png', 'Faisal colony bwn', '1376', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-01', 'no', 'Other', '2', '3', '30000', 'No Income', 'M.Anwar', '3110112511461', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(475, 'Maryam Bibi', 'Allah Bakhsh', '', '3110103413768', '03006627836', '3110110777643', 'Bussiness', '2009-01-01', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1378', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Farmer', '1', '1', '10000', 'No Income', 'Allah Bakhsh', '3110110777643', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(476, 'Nabila Shahzadi', 'M.Alyas', '', '3110159557296', '03005156498', '3110172160019', 'Bussiness', '2010-12-23', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1380', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Shopkeeper', '2', '1', '30000', 'No Income', 'M.Alyas', '3110172160019', '3110172687764', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(477, 'Haleema Rani', 'G.Qadir', '', '3110106478006', '03062579953', '3110116426293', 'Job-Holder', '2010-09-08', 'female', 'user.png', 'Basti Sharif coat', '1399', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Other', '3', '3', '30000', 'No Income', 'G.Qadir', '3110116426293', '3110198714846', '1', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(478, 'Aima Khan', 'M.Mazhar.F', '', '423018157046', '03083396630', '3110137924133', 'Job-Holder', '2011-10-12', 'female', 'user.png', 'Deen Pur Shareef Bwn', '1430', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-04-03', 'no', 'Other', '3', '3', '20000', 'No Income', 'M.Mazhar.F', '3110137924133', '1234', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(479, 'Iqra Bashir', 'Bashir Ahmad', '', '3110178152354', '03042582416', '3110110169327', 'Bussiness', '2011-09-09', 'female', 'user.png', 'hafiz abad  bwn', '1457', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-02', 'no', 'Shopkeeper', '3', '2', '30000', 'No Income', 'Bashir Ahmad', '3110110169327', '3110111761418', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(480, 'Maria Fiaz', 'M.Fiaz', '', '3110192791976', '03025080696', '3110180100151', 'Bussiness', '2011-01-01', 'female', 'user.png', 'Gardhari wala bwn', '1509', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-04', 'no', 'Farmer', '3', '1', '20000', 'No Income', 'M.Fiaz', '3110180100151', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(481, 'Sawera Shabeer', 'Shabir ahmad', '', '3110280058426', '03088302927', '311020477089', 'Bussiness', '2011-09-23', 'female', 'user.png', 'Tebi Mahi Wali', '1555', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Shopkeeper', '2', '1', '30000', 'No Income', 'Shabir Ahmad', '311020477089', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(482, 'Mehr-un-Nisa', 'M.Ahmad', '', '3110180686720', '03089045296', '31101', 'Bussiness', '2010-12-16', 'female', 'user.png', 'Qamar din hans', '1556', 'In-Progress', 10, 5, '', '', 'Pakistan', '2015-05-28', 'no', 'Farmer', '3', '2', '20000', 'No Income', 'M.Ahmad', '31101', '1234', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(483, 'Saba Ahmad', 'M.Ahmad', '', '3110143514790', '03086915729', '3110167038157', 'Job-Holder', '2012-12-03', 'female', 'user.png', 'Maharan wala khu', '1624', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Ahmad', '3110167038157', '3110183014132', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(484, 'Muqaddas Hussain', 'M.Hussain', '', '3110119378482', '03347004228', '3110132633805', 'Bussiness', '2009-03-15', 'female', 'user.png', 'Basti Matran', '1628', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-05', 'no', 'Other', '2', '3', '10000', 'No Income', 'M.Hussain', '3110132633805', '311017945797', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(485, 'Atiqa Asif', 'M.Asif', '', '3110111738176', '03087244140', '3110512288313', 'Bussiness', '2011-10-15', 'female', 'user.png', 'Hafiz Abad COlony Bahawal Nagar', '1824', 'In-Progress', 10, 5, '', '', 'Pakistan', '2017-04-06', 'no', 'Other', '1', '1', '10000', 'No Income', 'M.Asif', '3110512288313', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(486, 'Khansa Mushtaq', 'Mushtaq Ahmad', '', '3110143278887', '03017345873', '3110143278887', 'Bussiness', '2012-04-13', 'female', 'user.png', 'Jhulan Arain', '1680', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-04-11', 'no', 'Farmer', '1', '1', '20000', 'No Income', 'Mushtaq Ahmad', '3110143278887', '3110143892518', '2', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(487, 'Ayasha Yaseen', 'M.Yaseen', '', '3110131083944', '03024990243', '3110153477985', 'Bussiness', '2006-09-05', 'female', 'user.png', 'Nai Abadi bwn', '1780', 'In-Progress', 10, 5, '', '', 'Pakistan', '2016-10-18', 'no', 'Other', '2', '3', '10000', 'No Income', 'M.Yaseen', '3110153477985', '311017275362', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(488, 'Qurat-ul-ain', 'M.Ramzan', '', '3110106815972', '03007923436', '3110114989541', 'Bussiness', '2009-09-05', 'female', 'user.png', 'Basti Hafiza Abad', '1934', 'In-Progress', 10, 5, '', '', 'Pakistan', '2017-05-16', 'no', 'Other', '3', '3', '10000', 'No Income', 'M.Ramzan', '3110114989541', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(489, 'Maffia Yasmeen', 'Bashir Ahmad', '', '3110195964084', '03083937620', '3110172949775', 'Job-Holder', '2008-12-10', 'female', 'user.png', 'hafiz abad colony bwn', '1977', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-03-01', 'no', 'Other', '1', '3', '15000', 'No Income', 'Bashir Ahmad', '3110172949775', '3110154252946', '9', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(490, 'Zara Batool', 'Zafar Iqbal', '', '3120142220536', '03006809878', '3120103168727', 'Job-Holder', '2012-12-28', 'female', 'user.png', 'canal Garden', '2185', 'In-Progress', 10, 5, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '2', '2', '20000', 'No Income', 'Zafar Iqbal', '3120103168727', '3120127046538', '6', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(491, 'Bushra Shafique', 'M.Shafique', '', '3110183701234', '03002025906', '3110116639479', 'Job-Holder', '2009-06-22', 'female', 'user.png', 'hafiz abad colony bwn', '2210', 'In-Progress', 10, 5, '', '', 'Pakistan', '2019-03-09', 'no', 'Docotor', '7', '2', '30000', 'No Income', 'M.Shafique', '3110116639479', '3110115924418', '5', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(492, 'Ammara Atta', 'H.Atta-ur-Rehman', '', '3110101257328', '03005920616', '3110127469607', 'Bussiness', '2011-06-12', 'female', 'user.png', 'Basti Haji Sulaman', '2220', 'In-Progress', 10, 5, '', '', 'Pakistan', '2019-11-01', 'no', 'Other', '1', '3', '15000', 'No Income', 'H.Atta-ur-Rehman', '3110127469307', '1234', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-15', '', '', '0'),
(493, 'Faizan Mehmood', 'Khalid Mehmood', '', '3110101965991', '03007924315', '3110129571441', 'Bussiness', '2011-03-13', 'male', '', 'Quraish colony bwn', '1597', 'In-Progress', 9, 4, '', '', 'Pakistani', '2016-04-01', 'no', 'Other', '2', '2', '15000', 'No Income', 'Khalid Mehmood', '3110129571441', '12', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(494, 'Musfira Bibi', 'Abdul Rehman', '', '3110127046712', '03077542574', '3110206007887', 'Bussiness', '2012-07-29', 'female', '', 'Quraish colony bwn', '1722', 'In-Progress', 11, 5, '', '', 'Pakistan', '2016-04-25', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Abdul Rehman', '3110206007887', '12', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(495, 'Umme Kalsoom', 'Muhammad Ishaq', '', '3110156341092', '03026987701', '3110112819998', 'Bussiness', '2012-01-17', 'female', '', 'hafiz abad  bwn', '1778', 'In-Progress', 11, 5, '', '', 'Pakistani', '2016-09-28', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Ishaq', '3110112819998', '12', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(496, 'Iman Fatima', 'Muhammad Aslam', '', '3110149244998', '03067686414', '3110184699168', 'Bussiness', '2012-01-17', 'female', '', 'hafiz abad  bwn', '1991', 'In-Progress', 11, 5, '', '', 'Pakistan', '2018-02-03', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Muhammad Aslam', '3110184699168', '12', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(497, 'Mateen Ahmad', 'Muhammad Ahmad', '', '3110108834585', '03004221093', '3110116429815', 'Bussiness', '2013-08-16', 'male', '', 'Basti Ameer Ahmad', '2031', 'In-Progress', 11, 5, '', '', 'Pakistani', '2018-02-03', 'no', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', '3110184699168', '3110116429815', '12', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(498, 'Muhammad Waqar', 'Muhammad Zulafqar', '', '3110178461319', '03087922639', '3110174945943', 'Bussiness', '2009-03-10', 'male', '', 'Tibbi Mahi wali bwn', '2183', 'In-Progress', 11, 5, '', '', 'Pakistan', '2018-12-15', 'no', 'Other', '1', 'uneducated', '15000', 'No Income', 'Muhammad Zulafqar', '3110174945943', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(499, 'Muhammad Salman', 'Muhammad Safdar', '', '3110153764367', '03007587729', '3110184744511', 'Bussiness', '2009-12-17', 'male', '', 'Chak Hotiana', '2335', 'In-Progress', 11, 5, '', '', 'Pakistan', '2019-04-08', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Safdar', '3110184744511', '1', '3', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(500, 'Muhammad Salman', 'Muhammad Younas', '', '3110184700935', '03008169401', '3110183732709', 'Bussiness', '2010-03-20', 'male', '', 'Pull Furtwah Bahawalnagar', '2336', 'In-Progress', 11, 5, '', '', 'Pakistan', '2019-04-08', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Muhammad Younas', '3110183732709', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(501, 'Ahmad Bin Abdul Qayyum', 'Abdul Qayyum', '', '3110116616079', '03018464292', '3110161398563', 'Bussiness', '2007-11-19', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '2376', 'In-Progress', 11, 5, '', '', 'Pakistani', '2019-08-28', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Abdul Qayyum', '3110161398563', '1', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(502, 'Ahsan Fiaz', 'Muhammad Fiaz', '', '3110103580801', '03029824494', '3110133878839', 'Job-Holder', '2010-11-01', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '2290', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-04-02', 'no', 'Other', '2', 'uneducated', '20000', 'No Income', 'Muhammad Fiaz', '3110133878839', '1', '4', 'House Hold', 'No Income', 'islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(503, 'Muhammad Rizwan', 'M Younas', '', '3110183710435', '03008169401', '3110183732709', 'Job-Holder', '2011-02-27', 'male', '', 'Pull Furtwah Bahawalnagar', '2292', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-04-02', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M Younas', '3110183732709', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(504, 'M Abbubakar', 'Zahoor Ahmad', '', '3110182075359', '123', '3110235446207', 'Bussiness', '2019-11-12', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '2311', 'In-Progress', 7, 3, '', '', 'Pakistani', '2019-04-06', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Zahoor Ahmad', '3110235446207', '1', '3', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(505, 'M Ali Hasnain', 'Ghulam Mustafa', '', '3110149774733', '12', '3110139829119', 'Bussiness', '2011-12-18', 'male', '', 'Quraish colony bwn', '2341', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-04-10', 'no', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Ghulam Mustafa', '3110139829119', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(506, 'Alisha Waheed', 'Abdul Waheed', '', '3110192784304', '03067193126', '3110193946595', 'Bussiness', '2012-09-05', 'female', '', 'Jatto Wala Bwn', '2370', 'In-Progress', 7, 3, '', '', 'Pakistani', '2019-08-28', 'no', 'Shopkeeper', '1', 'uneducated', '20000', 'No Income', 'Abdul Waheed', '3110193946595', '1', '3', 'Job-Holder', '20000', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(507, 'Muhammad Usman', 'Ahmad Yar', '', '3110118313175', '03007922381', '3110115796909', 'Bussiness', '2011-01-01', 'male', '', 'Jatto wala bwn', '2383', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-09-03', 'no', 'Teacher', '1', '1', '50000+', 'No Income', 'Ahmad Yar', '3110115796909', '1', '10', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(508, 'M Hussain', 'Ghulam Murtaza', '', '3110156801379', '03074983041', '3110196735375', 'Bussiness', '2013-04-12', 'male', '', 'Ranjhy wala khu', '2384', 'In-Progress', 7, 3, '', '', 'Pakistan', '2019-09-03', 'no', 'Other', '1', 'uneducated', '5000', '20000', 'Ghulam Murtaza', '3110196735375', '1', '3', 'Bussiness', '45000', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(509, 'Ayesha Maryam', 'M Yousaf', '', '311015504108', '03057375986', '311015972570', 'Bussiness', '2015-03-30', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2269', 'In-Progress', 1, 1, '', '', 'Pakistan', '2019-03-28', 'no', 'Other', '1', '1', '15000', 'No Income', 'M Yousaf', '311015972570', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(520, 'Sabiha', 'Allah Baksh', '', '3110181765110', '03006011531', '3110110777643', 'Job-Nil', '2007-01-01', 'female', 'user.png', 'jaatuwala', '796', 'In-Progress', 16, 7, '', '', 'Pakitani', '2012-05-04', 'nil', 'Other', '2', '1', '20000', 'No Income', 'Allah Baksh', '3110110777643', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(521, 'Mafia BiBi', 'Muhammad Yaseen', '', '3110113700414', '03039768337', '3110161375833', 'Job-Nil', '2008-01-07', 'female', 'user.png', 'Hafizabad colony BWN', '887', 'In-Progress', 16, 7, '', '', 'Pakitani', '2012-05-28', 'nill', 'Other', 'uneducated', 'uneducated', 'No Income', 'No Income', 'Muhammad Yaseen', '3110161375833', '3110179140182', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(522, 'Naila Mushtaq', 'Muhmmad Mushtaq', '', '3110173711042', '03056312112', '3110195987147', 'Job-Holder', '2009-06-10', 'female', 'user.png', 'Hafizabad Colony BWN', '906', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Other', '2', 'uneducated', '15000', 'No Income', 'Muhmmad Mushtaq', '3110195987147', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(523, 'Iqra asgar', 'Muhammad Asgar', '', '3110167829862', '03347021080', '3110183793855', 'Job-Nil', '2017-01-12', 'female', 'user.png', 'Ranjhewala khow', '907', 'In-Progress', 16, 7, '', '', 'Pakitani', '2014-04-05', 'nill', 'Farmer', '1', 'uneducated', '30000', 'No Income', 'Muhammad Asgar', '3110183793855', '0', '4', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(524, 'Fatima', 'M asad', '', '3110185023316', '03004291591', '3120455395329', 'Job-Nil', '2007-01-06', 'female', 'user.png', 'Hafizad colony BWN', '909', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-01-04', 'nill', 'Other', '11', 'uneducated', '15000', 'No Income', 'M asad', '3120455395329', '3110124319288', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(525, 'Nasira parveen', 'Zahoor ahmad', '', '3110116113166', '03027577826', '3110183929099', 'Job-Holder', '2008-04-19', 'female', 'user.png', 'Ranjhewala khow', '913', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Other', 'uneducated', 'uneducated', '30000', 'No Income', 'Zahoor ahmad', '3110183929099', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(526, 'Aleeza Anwar', 'M Anwar', '', '3110177467410', '03447418909', '3110163871125', 'Job-Nil', '2008-04-18', 'female', 'user.png', 'Quresh colony BWN', '947', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Other', '2', 'uneducated', '20000', 'No Income', 'M Anwar', '3110163871125', '3110137325870', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-14', '', '', '0'),
(527, 'Ariba Ismail', 'M Ismail', '', '3110177467410', '03027540945', '3110186919553', 'Job-Nil', '2006-02-20', 'female', 'user.png', 'Hafizabad  colony BWN', '951', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Labour', '1', 'uneducated', '30000', 'No Income', 'M Ismail', '3110186919553', '0', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(528, 'Saba Agar', 'M Asgar', '', '3110593919420', '03059745339', '3110536128053', 'Job-Nil', '2007-08-09', 'female', 'user.png', 'Hafizabad  colony BWN', '964', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Other', 'uneducated', '2', 'No Income', '5000', 'M Asgar', '3110536128053', '0', '4', 'Job-Holder', '5000', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(529, 'Farhat Shaheen', 'M Eshaq', '', '3110139763204', '03075074728', '3110108850581', 'Job-Holder', '2005-03-03', 'female', 'user.png', 'Medical colony BWN', '965', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-04-01', 'nill', 'Other', '2', 'uneducated', '20000', 'No Income', 'M Eshaq', '3110108850581', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(530, 'Maryam', 'M Shafiq', '', '3110117054356', '03029399802', '3110132578783', 'Job-Holder', '2007-04-20', 'female', 'user.png', 'Hafizabad  colony BWN', '972', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-01-04', 'nill', 'Docotor', '11', '3', '30000', 'No Income', 'M Shafiq', '3110132578783', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(531, 'Kalsoom', 'Ahmad Yaar', '', '3110163172516', '03007922281', '3110115796909', 'Job-Nil', '2007-04-20', 'female', 'user.png', 'Deen Pur Shareef BWN', '1010', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-01-05', 'nill', 'Labour', '1', 'uneducated', '50000+', 'No Income', 'Ahmad Yaar', '3110115796909', '3110115323356', '10', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(532, 'Rashida BIBI', 'Nazir Ahmad', '', '3110180252510', '03033149262', '3110158012661', 'Job-Nil', '2008-01-15', 'female', 'user.png', 'Basti Shareef Lakhan BWN', '1039', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-05-28', 'nill', 'Labour', 'uneducated', '1', '10000', 'No Income', 'Nazir Ahmad', '3110158012661', '3110172691936', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(533, 'Amber Rehman', 'M Rehman', '', '3110152618818', '03062513260', '3110114609705', 'Job-Nil', '2008-10-12', 'female', 'user.png', 'Hafizabad  colony BWN', '1046', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-05-28', 'nill', 'Labour', '1', '1', '30000', 'No Income', 'M Rehman', '3110114609705', '3110162345638', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(534, 'Uzma BiBi', 'Rasheed Ahmed', '', '3110117663698', '03025080696', '3110124952773', 'Job-Nil', '2007-09-15', 'female', 'user.png', 'Girdhari wala BWN', '1064', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-09-02', 'nill', 'Other', '3', '1', '15000', 'No Income', 'Rasheed Ahmed', '3110124952773', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(535, 'Tahira BiBi', 'M Ibraheem', '', '3110148380322', '03007582998', '3110116273083', 'Job-Nil', '2008-06-23', 'female', 'user.png', 'Basti Josran wali pull nadar shah BWN', '1069', 'In-Progress', 16, 7, '', '', 'Pakitani', '2013-09-02', 'NILL', 'Farmer', '1', '1', '10000', 'No Income', 'M Ibraheem', '3110116273083', '3110140287712', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(536, 'Mahnoor Mustafa', 'Ghulam Mutafa', '', '3110153743208', '03057393722', '3110130927353', 'Job-Nil', '2007-08-22', 'female', 'user.png', 'Hafizabad  colony BWN', '1120', 'In-Progress', 16, 7, '', '', 'Pakitani', '2014-04-05', 'nill', 'Labour', 'uneducated', '1', '5000', 'No Income', 'Ghulam Mutafa', '3110130927353', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(537, 'Zanib Fatima', 'M Maqsood', '', '3110116053456', '0301768585', '3110105253157', 'Job-Holder', '2008-06-22', 'female', 'user.png', 'Hafizabad  colony BWN', '1192', 'In-Progress', 16, 7, '', '', 'Pakitani', '2014-04-05', 'nill', 'Other', '3', '2', '20000', 'No Income', 'M Maqsood', '3110105253157', '3110141559850', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-17', '', '', '0'),
(538, 'Ifrah Maryam', 'M Ajmal', '', '3110191511100', '03004119966', '3110119592057', 'Job-Holder', '2009-07-28', 'female', 'user.png', 'Hafizabad  colony BWN', '1261', 'In-Progress', 16, 7, '', '', 'Pakitani', '2014-05-05', 'nill', 'Teacher', '11', '11', '30000', 'No Income', 'M Ajmal', '3110119592057', '3110115835286', '5', 'Job-Holder', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(539, 'Sheba Mumtaz', 'Mumtaz Ahmad', '', '3110142738312', '03024991317', '3110137098713', 'Bussiness', '2008-02-10', 'female', 'user.png', 'jaatuwala', '1323', 'In-Progress', 16, 7, '', '', 'Pakitani', '2014-09-01', 'nill', 'Other', '1', 'uneducated', '20000', 'No Income', 'Mumtaz Ahmad', '3110137098713', '0', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(540, 'Munazza Iqbal', 'M Iqbal', '', '3110167754414', '03044461186', '3110160470665', 'Job-Nil', '2008-08-08', 'female', 'user.png', 'Pulforadwah', '1603', 'In-Progress', 16, 7, '', '', 'Pakitani', '2016-04-01', 'nill', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'M Iqbal', '3110160470665', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(541, 'Amna Iqbal', 'M Iqbal', '', '3110167753464', '02044461186', '3110160470665', 'Job-Nil', '2006-06-10', 'female', 'user.png', 'pulforadwah', '1604', 'In-Progress', 16, 7, '', '', 'Pakitani', '2016-04-01', 'nill', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'M Iqbal', '3110160470665', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(542, 'Iqra shaheen', 'M Javeed', '', '3110148002400', '0309045188', '3110102776413', 'Job-Nil', '2016-07-13', 'female', 'user.png', 'chak nadar shah', '1692', 'In-Progress', 16, 7, '', '', 'Pakitani', '2016-04-11', 'nill', 'Labour', '1', '1', '5000', 'No Income', 'M Javeed', '3110102776413', '3110181936038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(543, 'Nimra Shaheen', 'M Javeed', '', '3110128199942', '03089045188', '3110102776413', 'Job-Nil', '2010-03-09', 'female', 'user.png', 'chak nadar shah', '1693', 'In-Progress', 16, 7, '', '', 'Pakitani', '2016-04-11', 'nill', 'Labour', '1', '1', '5000', 'No Income', 'M Javeed', '3110102776413', '3110181936038', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(544, 'Mubbra khalid', 'M Khalid', '', '3110138920006', '03027858693', '3110173990895', 'Job-Holder', '2012-03-14', 'female', 'user.png', 'chak nadar shah', '2075', 'In-Progress', 16, 7, '', '', 'Pakitani', '2018-03-26', 'nill', 'Teacher', '3', '1', '20000', 'No Income', 'M Khalid', '3110173990895', '3110131780714', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(545, 'Saba Munir', 'M Munir', '', '3110114255180', '03061319731', '3110167906591', 'Bussiness', '2007-01-01', 'female', 'user.png', 'Hafizabad  colony BWN', '661', 'In-Progress', 19, 8, '', '', 'Pakitani', '2011-04-01', 'nill', 'Other', '2', '1', '30000', 'No Income', 'M Munir', '3110167906591', '3110192737438', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(546, 'Aiman Murtaza', 'Ghulam Murtaza', '', '3110196784590', '03061319731', '3110115868633', 'Job-Nil', '2006-01-10', 'female', 'user.png', 'Hafizabad  colony BWN', '773', 'In-Progress', 19, 8, '', '', 'Pakitani', '2012-04-05', 'nill', 'Other', 'uneducated', '1', '15000', 'No Income', 'Ghulam Murtaza', '3110115868633', '3110115324588', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(547, 'Mehk Ali', 'M Ali', '', '3110152741326', '03061319731', '3110183839373', 'Job-Nil', '2005-08-13', 'female', 'user.png', 'Hafizabad  colony BWN', '790', 'In-Progress', 19, 8, '', '', 'Pakitani', '2012-04-05', 'nill', 'Labour', '2', 'uneducated', '20000', 'No Income', 'M Ali', '3110183839373', '0', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(548, 'Samra Shabir', 'Shabir Ahmed', '', '3110122726456', '03087850969', '3110193849215', 'Job-Nil', '2008-08-14', 'female', 'user.png', 'Deenpur shareef BWN', '817', 'In-Progress', 19, 8, '', '', 'Pakitani', '2012-04-05', 'nill', 'Other', '2', '1', '20000', 'No Income', 'Shabir Ahmed', '3110193849215', '3110128867304', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(549, 'Naila Iqbal', 'M IQbal', '', '3110173070760', '03014351554', '3110124821663', 'Job-Nil', '2007-04-14', 'female', 'user.png', 'Pul nadar shah BWN', '878', 'In-Progress', 19, 8, '', '', 'Pakitani', '2012-05-28', 'nill', 'Farmer', '2', '1', '30000', 'No Income', 'M IQbal', '3110124821663', '3110187910362', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-19', '', '', '0'),
(550, 'Mehr un Nisa', 'Muhammad Hussain', '', '3110140029032', '03016529581', '3110142135341', 'Bussiness', '2008-01-25', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '905', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2013-04-01', 'no', 'Other', 'uneducated', '1', '15000', 'No Income', 'Muhammad Hussain', '3110142135341', '12', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(551, 'Sadia Ashraf', 'M Ashraf', '', '3110133484450', '03057269820', '3110177920063', 'Bussiness', '2006-11-28', 'female', '', 'Chak Matran Bwn', '919', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2013-01-04', 'No', 'Shopkeeper', '1', '2', '20000', 'No Income', 'M Ashraf', '3110177920063', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(552, 'Rimsha Zaman', 'M Zaman', '', '3110141713950', '03086075590', '3110152887105', 'Bussiness', '2006-11-28', 'female', '', 'Deen Pur Shareef Bwn', '946', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2013-04-01', 'no', 'Teacher', '2', 'uneducated', '10000', 'No Income', 'M Zaman', '3110152887105', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(553, 'Anam Liaqat', 'M Liaqat', '', '3110118892854', '03047485227', '3110133658011', 'Bussiness', '2013-04-01', 'female', '', 'Deen Pur Shareef Bwn', '955', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2009-06-23', 'no', 'Shopkeeper', '1', '1', '10000', 'No Income', 'M Liaqat', '3110133658011', '31101', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(554, 'Memona Nazeer', 'Nazir Ahmad', '', '3120344234824', '03027852340', '3120329760749', 'Bussiness', '2007-12-11', 'female', '', 'Deen Pur Shareef Bwn', '1036', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2013-05-28', 'No', 'Other', '2', '2', '20000', 'No Income', 'Nazir Ahmad', '3120329760749', '1', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(555, 'Iqra Sadiq', 'M Sadiq', '', '3110149448076', '03046543793', '3110183441319', 'Bussiness', '2008-04-04', 'female', '', 'Deen Pur Shareef Bwn', '1158', 'In-Progress', 19, 8, '', '', '`', '2014-04-05', 'No', 'Other', '2', '1', '30000', 'No Income', 'M Sadiq', '3110183441319', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(556, 'Misbah Rehman', 'Hafiz Abdul Rehman', '', '3110111189920', '03047078226', '3110116391033', 'Bussiness', '2007-12-10', 'female', '', 'Hussain Abad bwn', '1209', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2014-04-05', 'No', 'Shopkeeper', '1', '1', '20000', 'No Income', 'Hafiz Abdul Rehman', '3110116391033', '1', '6', 'Job-Holder', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(557, 'Mafia BIiBi', 'Allah Ditta', '', '3110121885802', '03059143036', '3110115931905', 'Bussiness', '2008-11-24', 'female', '', 'Deen Pur Shareef Bwn', '1442', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2015-05-02', 'No', 'Shopkeeper', '1', '1', '15000', 'No Income', 'Allah Ditta', '3110115931905', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(558, 'Sania Asif', 'M Asif', '', '3110183564630', '03065967085', '3110105799355', 'Bussiness', '2008-09-12', 'female', '', 'Qamar Deen Bodla Bwn', '1531', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2015-05-28', 'No', 'Engineer', 'uneducated', 'uneducated', '20000', 'No Income', 'M Asif', '3110105799355', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(559, 'Nosheen BibBi', 'Allah Ditta', '', '3110150721272', '03009109740', '3110182690579', 'Job-Holder', '2008-01-05', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '1576', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2016-01-01', 'No', 'Farmer', '2', '1', '15000', 'No Income', 'Allah Ditta', '3110182690579', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(560, 'Rabia Majeed', 'M Majeed', '', '3110179696614', '03022375285', '3110113845775', 'Bussiness', '2010-02-03', 'female', '', 'Eid Gah Road Bwn', '1804', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2017-04-05', 'No', 'Other', '1', '1', '15000', 'No Income', 'M Majeed', '3110113845775', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(561, 'Fatima Mahnoor', 'Rana Liaqat ali', '', '3520169012272', '03073697033', '3520108560635', 'Bussiness', '2006-10-10', 'female', '', 'Tibbi Mahi wali bwn', '1833', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2017-04-10', 'No', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'Rana Liaqat ali', '3520108560635', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(562, 'Tuba Waheed', 'Abdul Waheed', '', '3110181493504', '03088808021', '3110187729777', 'Bussiness', '2008-04-10', 'female', '', 'Deen Pur Shareef Bwn', '2184', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2018-12-15', 'No', 'Shopkeeper', 'uneducated', 'uneducated', '15000', 'No Income', 'Abdul Waheed', '3110187729777', '1', '4', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(563, 'Abida Anwar', 'M Anwar', '', '3110106641910', '03026067036', '3110115827399', 'Bussiness', '2008-11-13', 'female', '', 'Deen Pur Shareef Bwn', '2202', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2019-03-09', 'No', 'Shopkeeper', '1', '1', '15000', 'No Income', 'M Anwar', '3110115827399', '1', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(564, 'Shumaila Rasool', 'Ghulam Rasool', '', '3110120920360', '1', '3110184023463', 'Bussiness', '2008-03-10', 'female', '', 'abc', '2208', 'In-Progress', 19, 8, '', '', 'Pakitsan', '2019-03-09', 'No', 'Labour', '1', '1', '15000', 'No Income', 'Ghulam Rasool', '3110184023463', '1', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(565, 'Imran Shafeeq', 'M Shafeeq', '', '31101279904333', '03065244560', '3110157101073', 'Bussiness', '2005-11-27', 'male', '', 'Deen Pur Shareef Bwn', '283', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2008-05-17', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M Shafeeq', '3110157101073', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(566, 'M Fahad Riaz', 'Riaz Ahmad', '', '3110127321465', '03057341519', '3110118731887', 'Bussiness', '2005-06-15', 'male', '', 'Nadir Shah Bwn', '473', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2009-11-01', 'No', 'Teacher', 'uneducated', 'uneducated', '10000', 'No Income', 'Riaz Ahmad', '3110118731887', '1', '2', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-24', '', '', '0'),
(567, 'Sana Ullah', 'M Anwar', '', '31110127923427', '03026067036', '3110115827399', 'Bussiness', '2005-06-15', 'male', '', 'Deen Pur Shareef Bwn', '481', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2009-11-01', 'No', 'Other', '2', 'uneducated', '10000', 'No Income', 'M Anwar', '3110115827399', '1', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(568, 'Ali Raza', 'Riaz Ahmad', '', '3110196861869', '03068638350', '3110107232915', 'Job-Holder', '2008-07-19', 'male', '', 'Pull Furtwah Bahawalnagar', '518', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2009-04-10', 'No', 'Other', 'uneducated', '1', '10000', 'No Income', 'Riaz Ahmad', '3110107232915', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(569, 'Hasnain Ali', 'Abdul Hafeez', '', '3110191098107', '03077853138', '3110194724747', 'Bussiness', '2006-03-14', 'male', '', 'Deen Pur Shareef Bwn', '588', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2010-04-20', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Abdul Hafeez', '3110194724747', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(570, 'Usman Ghani', 'M Hafeez', '', '3110159032563', '03032725210', '3110107262303', 'Bussiness', '2003-12-23', 'male', '', 'Deen Pur Shareef Bwn', '651', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2011-04-01', 'No', 'Teacher', '2', '2', '15000', 'No Income', 'M Hafeez', '3110107262303', '1', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(571, 'Hammad Liaqat', 'Liaqat Ali', '', '3110147203025', '03047485227', '3110133658011', 'Bussiness', '2005-03-21', 'male', '', 'Deen Pur Shareef Bwn', '806', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2012-04-05', 'No', 'Shopkeeper', 'uneducated', 'uneducated', '20000', 'No Income', 'Liaqat Ali', '3110133658011', '1', '3', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(572, 'Hammad Ali', 'Abdul Waheed', '', '3110115076479', '03088808021', '311018772977', 'Bussiness', '2007-04-20', 'male', '', 'Deen Pur Shareef Bwn', '864', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2012-05-23', 'No', 'Farmer', '4', '5', '30000', 'No Income', 'Abdul Waheed', '311018772977', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(573, 'Umer Farooq', 'M Mansha', '', '3110123130053', '03216980268', '3110159906191', 'Bussiness', '2006-01-01', 'male', '', 'Hussain Abad bwn', '895', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2012-10-01', 'No', 'Shopkeeper', '1', '1', '10000', 'No Income', 'M Mansha', '3110159906191', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(574, 'Ali Akbar', 'M Iqbal', '', '3110190096217', '03361052555', '3110115828091', 'Bussiness', '2004-05-09', 'male', '', 'Deen Pur Shareef Bwn', '1226', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2014-05-05', 'No', 'Shopkeeper', 'uneducated', 'uneducated', '10000', 'No Income', 'M Iqbal', '3110115828091', '1', '4', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(575, 'M Shahid Akhtar', 'M Javeed Akhtar', '', '3110183196051', '03089045188', '3110102776413', 'Bussiness', '2003-02-01', 'male', '', 'Nadir shah Bwn', '1691', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2016-04-11', 'No', 'Teacher', '3', '1', '20000', 'No Income', 'M Javeed Akhtar', '3110102776413', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(576, 'M Mujahid Akhtar', 'M Javeed Akhtar', '', '3110153821933', '03089045188', '3110102776413', 'Bussiness', '2001-07-10', 'male', '', 'Nadar Shah bwn', '1736', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2016-05-02', 'No', 'Farmer', 'uneducated', 'uneducated', '15000', '20000', 'M Javeed Akhtar', '3110102776413', '1', '4', 'Bussiness', '15000', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(577, 'M Ahmad', 'M Javeed', '', '3110153215971', '03022375285', '3110113845775', 'Bussiness', '2005-01-01', 'male', '', 'Tibbi Mahi wali bwn', '1803', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2017-04-05', 'No', 'Shopkeeper', '4', '3', '15000', 'No Income', 'M Javeed', '3110113845775', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(578, 'M Arslan', 'M Javeed', '', '3110153311921', '03022375285', '3110113845775', 'Bussiness', '2007-01-01', 'male', '', 'Tibbi Mahi wali bwn', '1805', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2017-04-05', 'No', 'Shopkeeper', '2', '1', '10000', 'No Income', 'M Javeed', '3110113845775', '1', '4', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(579, 'M Aqeel Aslam', 'M Aslam', '', '3110138065395', '03046355065', '3110115995185', 'Bussiness', '2007-03-19', 'male', '', 'Basti Qamar Den', '1812', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2017-04-05', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M Aslam', '3110115995185', '1', '4', 'Job-Holder', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(580, 'Ahmad Bilal Mukhtiar', 'Mukhtiar Ahmad', '', '3110166037401', '03057170689', '3110116558257', 'Bussiness', '2007-10-02', 'male', '', 'Quraish colony bwn', '1886', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2017-04-20', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Mukhtiar Ahmad', '3110116558257', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(581, 'Ahmad Raza', 'M Mursaleen', '', '3110137304163', '03007284771', '3110116347631', 'Bussiness', '2003-03-01', 'male', '', 'Deen Pur Shareef Bwn', '2245', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2019-03-26', 'No', 'Other', '3', '2', '10000', 'No Income', 'M Mursaleen', '3110116347631', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(582, 'Zeeshan Ahmad', 'M Yaseen', '', '3110180018581', '03007542591', '3110136540707', 'Bussiness', '2005-04-05', 'male', '', 'Deen Pur Shareef Bwn', '2354', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2014-04-10', 'No', 'Other', '2', '2', '20000', 'No Income', 'M Yaseen', '3110136540707', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(583, 'Hasnain Mehmood', 'Hafiz Arshad Mehmood', '', '3110160515441', '03007580603', '3110115898023', 'Bussiness', '2002-10-15', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '2372', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2019-08-28', 'No', 'Other', '4', '1', '15000', 'No Income', 'Hafiz Arshad Mehmood', '3110115898023', '1', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(584, 'M Ammar Shahzada', 'M Rafeeq', '', '3110174767101', '03085952672', '3110152891759', 'Bussiness', '2004-04-04', 'male', '', 'Hussain Abad bwn', '2381', 'In-Progress', 24, 10, '', '', 'Pakitsan', '2019-08-28', 'No', 'Other', '1', '2', '10000', 'No Income', 'M Rafeeq', '3110152891759', '1', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(585, 'M.Husnain', 'M.Ramzan', '', '3110116503053', '03057924481', '3110114989541', 'Job-Holder', '2003-02-09', 'male', '', 'hafiz abad  bwn', '175', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2007-07-30', 'No', 'Other', '1', '1', '15000', 'No Income', 'M.Ramzan', '3110114989541', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(586, 'M.Sheraz Khan', 'M.Mushtaq', '', '3110157544063', '03036317517', '3110195987147', 'Job-Holder', '2008-03-08', 'male', '', 'hafiz abad  bwn', '521', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2010-04-10', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'M.Mushtaq', '3110195987147', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(587, 'M.Maaz ur Rehman', 'Rasheed ur Rehman', '', '3110199687235', '03007921408', '3110115898213', 'Job-Holder', '2006-12-02', 'male', '', 'hafiz abad  bwn', '560', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2010-04-15', 'No', 'Labour', '3', '1', '10000', 'No Income', 'Rsheed ur Rehman', '3110115898213', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(588, 'M.Adil', 'Abdul Waheed', '', '3110197807759', '03067193126', '3110193946595', 'Job-Holder', '2007-11-14', 'male', '', 'Deen Pur Shareef Bwn', '772', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2012-04-05', 'No', 'Labour', '1', '1', '10000', 'No Income', 'Abdul Waheed', '3110193946595', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(589, 'Mehtab Hussain', 'M.Hussain', '', '3110164352235', '03048333841', '3110132633805', 'Job-Holder', '2005-07-23', 'male', '', 'Chak Matra', '775', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2012-04-05', 'No', 'Labour', '1', 'uneducated', '15000', 'No Income', 'M.Hussain', '3110132633805', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(590, 'Muazzam Bilal', 'Bilal Ahmad', '', '3110187361169', '03069416747', '3110168809385', 'Job-Holder', '2007-04-25', 'male', '', 'Nadar Shahl bwn', '780', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2012-04-05', 'No', 'Labour', '3', 'uneducated', '20000', 'No Income', 'Bilal Ahmad', '3110168809385', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(591, 'M.Ali Raza', 'Zahoor Ahmad', '', '3110122194671', '03065868428', '3110162704145', 'Bussiness', '2007-03-15', 'male', '', 'Deen Pur Shareef Bwn', '818', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2012-04-09', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Zahoor Ahmad', '3110162704145', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(592, 'M.Dilbar Zafar', 'Zafar Iqbal', '', '3520288599491', '03004854215', '3520230520435', 'Job-Holder', '2006-01-01', 'male', '', 'chak no 27', '831', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2012-04-10', 'No', 'Labour', '2', 'uneducated', '10000', 'No Income', 'Zafar Iqbal', '3520230520435', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(593, 'CH.Abu Bakar Muneer', 'Muneer Ahmad', '', '3110121925471', '03347064169', '1', 'Job-Holder', '2007-01-08', 'male', '', 'Basti Jodana wali', '1084', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2013-05-09', 'No', 'Other', '1', 'uneducated', '10000', 'No Income', 'Azra Parveen', '3110174751118', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(594, 'Hamza Ali', 'Sajid Mehmood', '', '3110150695199', '03023455515', '3110185772551', 'Job-Holder', '2008-05-14', 'male', '', 'Faisal colony bwn', '1153', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', '3', '40000', 'No Income', 'Sajid Mehmood', '3110185772551', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(595, 'Rizwan Waheed', 'Abdul Waheed', '', '3110152390299', '03036313604', '3110132307429', 'Bussiness', '2007-11-10', 'male', '', 'Bacharal wall', '1521', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2015-05-28', 'No', 'Farmer', '3', '2', '20000', 'No Income', 'Abdul waheed', '3110132307429', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(596, 'M.Sufyan', 'M.Riaz', '', '3110106938337', '03037882097', '3110130816285', 'Bussiness', '2007-02-01', 'male', '', 'hafiz abad  bwn', '1782', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2016-10-31', 'No', 'Farmer', 'uneducated', '1', '15000', 'No Income', 'M.Riaz', '3110130816285', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(597, 'M.Sabir', 'M.Adeel', '', '3110180653629', '03086984448', '3110116184569', 'Job-Holder', '2005-01-06', 'male', '', 'Jatu wala', '1842', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2017-04-10', 'No', 'Labour', 'uneducated', 'uneducated', '30000', 'No Income', 'M.Adeel', '3110116184569', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(598, 'M.Abdullah', 'M.Shabeer', '', '3110199440513', '03468448690', '3110194066163', 'Job-Holder', '2006-05-20', 'male', '', 'hafiz abad  bwn', '1883', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2017-04-20', 'No', 'Labour', '2', '1', '20000', 'No Income', 'M.Shabeer', '3110194066163', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(599, 'Abdul wasif', 'H.Ghulam Fareed', '', '3110197247857', '03078638842', '3110135678123', 'Bussiness', '2006-05-15', 'male', '', 'Faisal colony bwn', '1884', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2017-04-20', 'No', 'Farmer', 'uneducated', 'uneducated', '20000', 'No Income', 'H.Ghulam Fareed', '3110135678123', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(600, 'Bilal Hassan', 'Jahangir', '', '3110183473085', '03074345527', '3110149067679', 'Bussiness', '2003-09-13', 'male', '', 'Mohal chok', '1963', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2017-08-29', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Jahangir', '3110149067679', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(601, 'Atif Rafique', 'M.Rafique', '', '3110195292705', '03023140321', '3110135868451', 'Job-Holder', '2005-12-12', 'male', '', 'Abdullah colony', '2025', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2018-03-02', 'No', 'Labour', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Rafique', '3110135868451', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(602, 'M.Awais', 'M.Fiaz', '', '3110135667571', '03067519010', '3110149502191', 'Bussiness', '2007-05-21', 'male', '', 'Quraish colony bwn', '2036', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2018-03-02', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M..Fiaz', '3110149502191', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(603, 'M.Waseem Sarwar', 'M.Sarwar', '', '3110174647573', '03059791558', '3110116447231', 'Bussiness', '2007-05-01', 'male', '', 'Mahar wala khuo', '2043', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2018-03-02', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'M.Sarwar', '3110116447231', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(604, 'M.Waqas Anwar', 'M.Anwar', '', '3110195882053', '03059791558', '3110116497185', 'Bussiness', '2007-10-12', 'male', '', 'Mahar Wala Khuo', '2045', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2018-03-16', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'M.Anwar', '3110116497185', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(605, 'M.Irfan', 'M.Nazar', '', '3110584619471', '03088865234', '3110591249645', 'Bussiness', '2006-01-01', 'male', '', 'Jodana Basti', '2067', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2018-03-20', 'No', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Nazar', '3110591249645', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(606, 'M.Zain', 'M.Ashraf', '', '3110173833205', '03007582491', '3110163142991', 'Job-Holder', '2007-04-14', 'male', '', 'New city', '2120', 'In-Progress', 21, 9, '', '', 'Pakitsan', '2019-03-09', 'No', 'Labour', '1', '2', '10000', 'No Income', 'M.Ashraf', '3110163142991', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(607, 'M.zaeem', 'Khadam Hussain', '', '3110163938899', '03018869904', '3110193763949', 'Bussiness', '2004-07-01', 'male', '', 'Faisal colony bwn', '2205', 'In-Progress', 22, 9, '', '', 'Pakitsan', '2019-03-09', 'No', 'Farmer', '1', '2', '10000', 'No Income', 'Khadam Hussain', '3110193763949', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-25', '', '', '0'),
(608, 'Muqaddas Husain', 'M.Hussain', '', '3110158571518', '03016529581', '3110142135341', 'Job-Holder', '2007-12-10', 'female', '', 'hafiz abad  bwn', '904', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-04-01', 'No', '', '2', '2', '20000', '', 'M.Hussain', '3110142135341', '1234', '8', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(609, 'Aqsa Arif', 'M.Arif', '', '3110152211810', '03217005206', '3110116165463', 'Bussiness', '2010-11-07', 'female', '', 'Nadar Shahl bwn', '924', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-04-01', 'No', '', '2', '2', '20000', '', 'M.Arif', '3110116165463', '1234', '2', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(610, 'Amna Alam', 'Alam Ali', '', '3110180984184', '03056450537', '3110183794859', 'Bussiness', '2010-04-21', 'female', '', 'hafiz abad  bwn', '925', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-04-01', 'No', '', '2', '1', '', '', 'Alam Ali', '3110183794859', '1234', '5', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(611, 'Ammara Bilal', 'Bilal Ahmad', '', '3110107774874', '03069416747', '3110168809385', 'Job-Holder', '2009-03-30', 'female', '', 'Nadar Shahl bwn', '932', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-04-01', 'No', '', '3', 'uneducated', '20000', '', 'Bilal Ahmad', '3110168809385', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(612, 'Asma Khan', 'M.Mazhar Fareed', '', '4230109620410', '03083396630', '3110137924133', 'Bussiness', '2009-04-30', 'female', '', 'Rub NawazPura BWN', '969', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-04-01', 'No', '', '2', '1', '', '', 'M.Mazhar Fareed', '3110137924133', '1234', '5', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(613, 'Asia Abbas', 'M.Abbas', '', '3110105672846', '03027058118', '3110105931947', 'Job-Holder', '2009-03-23', 'female', '', 'Deen Pur Shareef Bwn', '1035', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2013-05-28', 'No', '', '2', 'uneducated', '10000', '', 'M.Abbas', '3110105931947', '1234', '5', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(614, 'Faizan Ali', 'allah rakha', '', '3110153521929', '03067807869', '3110147946057', 'Job-Holder', '2009-03-23', 'female', '', 'Deen Pur Shareef Bwn', '1097', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-04-05', 'No', '', 'uneducated', '1', '20000', '', 'allah rakha', '3110147946057', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(615, 'Muhammad Sad', 'Ahmad Yar', '', '3110169537497', '03007922381', '3110115796909', 'Job-Holder', '2009-02-28', 'female', '', 'Deen Pur Shareef Bwn', '1106', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-04-05', 'No', '', '1', 'uneducated', '', '', 'Ahmad yar', '3110115796909', '1234', '10', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(616, 'Fatima Mumtaz', 'Mumtaz Ahmad', '', '3110166902610', '03007582156', '3110173077405', 'Job-Holder', '2008-01-21', 'female', '', 'Quraish colony bwn', '1109', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-04-05', 'No', '', 'uneducated', 'uneducated', '10000', '', 'Mumtaz Ahmad', '3110173077405', '1234', '3', '', '', 'Islam', '', '0', '0', '0', '2019-11-25', '', '2019-11-26', '0'),
(617, 'Riyan Shafiq', 'M.shafiq', '', '3110128835933', '03054647010', '3110157101073', 'Job-Holder', '2008-01-14', 'female', '', 'Hussain Abad bwn', '1126', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-04-05', 'No', '', '2', '1', '', '', 'M.shafiq', '3110157101073', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-26', '', '2019-11-26', '0'),
(618, 'Maheen Akram', 'M.Akram', '', '3110154895454', '03046610782', '3110133567931', 'Job-Holder', '2009-05-08', 'female', '', 'Quraish colony bwn', '1267', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-05-05', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'M.Akram', '3110133567931', '1234', '13', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(619, 'Bushra Hussain', 'M.Hussain', '', '3110192575058', '03008148344', '3110122285093', 'Job-Holder', '2010-07-03', 'female', '', 'Basti Matran bwn', '1233', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-05-05', 'No', 'Other', '2', '1', '20000', 'No Income', 'M.Hussain', '3110122285093', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(620, 'M.Siddiq Mukhtar', 'Mukhtar Ahmad', '', '3110166027901', '03057170689', '3110116558257', 'Job-Holder', '2008-09-10', 'male', '', 'Quraish colony bwn', '1272', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-05-19', 'No', '', '1', 'uneducated', '', '', 'Mukhtar Ahmad', '3110116558257', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-26', '', '2019-11-26', '0'),
(621, 'M.Tosif Aslam', 'M.Aslam', '', '3110110713635', '03447397798', '3110106356697', 'Job-Holder', '2010-07-01', 'male', '', 'Qamar ul deen hans bwn', '1310', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-08-18', 'No', '', '3', '1', '20000', '', 'M.Aslam', '3110106356697', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-11-26', '', '2019-11-26', '0'),
(622, 'Ijaz Ahamd', 'M.Riyaz', '', '3110137058849', '03028943985', '3110160384611', 'Job-Holder', '2008-04-04', 'male', '', 'Basti Hafiza Abad', '1322', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-09-01', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Riyaz', '3110160384611', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(623, 'Haseeb Sarwar', 'M.Sarwar', '', '3110122613829', '03087212815', '3110116443857', 'Job-Holder', '2009-02-01', 'male', '', 'Qamar ul deen hans bwn', '1330', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-10-01', 'No', 'Other', '3', '3', '15000', 'No Income', 'M.Sarwar', '3110116443857', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(624, 'Haider Ali', 'Ubaid-ul-Rehman', '', '3110158529157', '03012489630', '3110151665331', 'Job-Holder', '2005-08-12', 'male', '', 'Deen Pur Shareef Bwn', '1394', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2015-04-03', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Ubaid-ul-Rehman', '3110151665331', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(625, 'Asifa Abbas', 'M.Abbas', '', '3110126909256', '03086126952', '3110125330995', 'Bussiness', '2006-06-15', 'female', '', 'Basti Shareef Coat bwn', '1401', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2015-04-03', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Abbas', '3110125330995', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(626, 'M.Mohsin Ameen', 'M.Ameen', '', '3110132352247', '03024997128', '3110125790231', 'Job-Holder', '2007-02-10', 'male', '', 'hafiz abad  bwn', '1563', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2015-05-28', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Ameen', '3110125790231', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(627, 'Mustansar Qamar CH', 'M.Ahmad', '', '3110142273487', '03086915729', '3110167038157', 'Job-Holder', '2010-03-01', 'male', '', 'Qamar ul deen hans bwn', '1625', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '1', '1', '15000', 'No Income', 'M.Ahmad', '3110167038157', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(628, 'M.Hashim', 'Abd-ul-Waheed', '', '3110177666781', '03067857288', '31101370973077', 'Job-Holder', '2007-04-12', 'male', '', 'Chak Hotiana bwn', '1645', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2016-04-05', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Abd-ul-Waheed', '31101370973077', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(629, 'Tayiba Naeem', 'Naeem Tahir', '', '3110155994942', '03074233038', '3110113262365', 'Job-Holder', '2009-10-13', 'female', '', 'Quraish colony bwn', '1968', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2018-03-01', 'No', '', 'uneducated', '1', '', '', 'Naeem Tahir', '3110113262365', '1234', '7', '', '', 'Islam', '', '0', '0', '0', '2019-11-26', '', '2019-11-26', '0'),
(630, 'M.Umar Farooq', 'Ghulam Mustafa', '', '3110158234785', '03078504121', '3110172422701', 'Job-Holder', '2009-01-05', 'male', '', 'Qamar ul deen hans bwn', '1988', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2018-03-02', 'No', 'Other', '2', 'uneducated', '10000', 'No Income', 'Ghulam Mustafa', '3110172422701', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(631, 'Abu Bakar', 'M.Afzal', '', '3110113406733', '03037853836', '3110115962129', 'Job-Holder', '2010-10-23', 'male', '', 'Peer Sikandar bwn', '2052', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2018-03-19', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Afzal', '3110115962129', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(632, 'Manaza Tahir', 'M.Tahir', '', '3110196270896', '03313143623', '3640154840947', 'Job-Holder', '2008-08-19', 'female', '', 'Quraish colony bwn', '2126', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2018-04-10', 'No', 'Other', '2', '1', '40000', 'No Income', 'M.Tahir', '3640154840947', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(633, 'M.Bin Abdul Qayoom', 'Abd-ul-Qayoom', '', '3110116607529', '03016866292', '3110161398563', 'Job-Holder', '2005-12-26', 'male', '', 'Basti Hafiza Abad', '2156', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2018-09-10', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'Abd-ul-Qayoom', '3110161398563', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(634, 'M.Zonain', 'M.Iqbal', '', '3110144332225', '03052558564', '3110163058441', 'Job-Holder', '2008-11-09', 'male', '', 'New City bwn', '2191', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', '2', '2', '20000', 'No Income', 'M.Iqbal', '3110163058441', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(635, 'Iqra Fatima', 'M.Munawar Hussain', '', '3110156048290', '03015152808', '3110160393967', 'Job-Holder', '2009-11-01', 'female', '', 'Quraish colony bwn', '2211', 'In-Progress', 18, 7, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', '7', '1', '30000', 'No Income', 'M.Munawar Hussain', '3110160393967', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(636, 'Haseena bibi', 'M.Ramzan', '', '3110154073358', '03007923436', '3110114989541', 'Job-Holder', '2006-02-18', 'female', '', 'hafiz abad  bwn', '752', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Ramzan', '3110114989541', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(637, 'Lamina', 'M.Ramzan', '', '3110124527480', '03007923436', '3110114989541', 'Job-Holder', '2007-09-04', 'female', '', 'hafiz abad  bwn', '804', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-04-05', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Ramzan', '3110114989541', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(638, 'Samina Bibi', 'zulfqar ali', '', '3110144527444', '03329629487', '3110123511737', 'Bussiness', '2009-08-07', 'female', '', 'Nadar Shahl bwn', '1102', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'zulfqar ali', '3110123511737', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(639, 'Rameesha Abbas', 'Ali Abbas', '', '3110183255624', '03048252500', '3110115821325', 'Job-Holder', '2010-12-30', 'female', '', 'Quraish colony bwn', '1111', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '7', '1', '30000', 'No Income', 'Ali Abbas', '3110115821325', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(640, 'Zunaira Mumtaz', 'M.Mumtaz', '', '3110148562668', '03017921214', '3110149989609', 'Job-Holder', '2009-08-07', 'female', '', 'hafiz abad  bwn', '1116', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Mumtaz', '3110149989609', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(641, 'Ambreen riaz', 'M.Riaz', '', '3110174114826', '03022972857', '3110126432289', 'Bussiness', '2010-11-05', 'female', '', 'Deen Pur Shareef Bwn', '1117', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', '1', '15000', 'No Income', 'M.Riaz', '3110126432289', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(642, 'Sania Aslam', 'M.Aslam sajid', '', '3110135196656', '03347001256', '3110115785175', 'Job-Holder', '2009-12-12', 'female', '', 'hafiz abad  bwn', '1130', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'M.Aslam sajid', '3110115785175', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(643, 'Asifa Ashraf', 'M.Ashraf', '', '3110190136668', '03004865838', '3120397159345', 'Job-Holder', '2006-10-13', 'female', '', 'Deen Pur Shareef Bwn', '1136', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '1', '1', '20000', 'No Income', 'M.Ashraf', '3120397159345', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(644, 'Mussarat Abbas', 'M.abbas', '', '3110118203250', '03063699981', '3110153882907', 'Bussiness', '2009-10-05', 'female', '', 'Nadar Shahl By pass', '1138', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Shopkeeper', '1', 'uneducated', '15000', 'No Income', 'M.Abbas', '3110153882907', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(645, 'Sadaf Muneer', 'M.Muneer', '', '3110193631382', '03336319731', '3110167906591', 'Job-Holder', '2010-03-23', 'female', '', 'hafiz abad  bwn', '1147', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', '1', '15000', 'No Income', 'M.Muneer', '3110167906591', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(646, 'Bushra Shabeer', 'Shabeer Ahmad', '', '3110177538408', '03067850769', '3110193849215', 'Job-Holder', '2010-03-23', 'female', '', 'Jatto wala', '1174', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', '2', '10000', 'No Income', 'Shabeer Ahmad', '3110193849215', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(647, 'Tanzela Akram', 'M.Akram', '', '3110115783572', '03058811113', '3110116427691', 'Job-Holder', '2006-09-18', 'female', '', 'Basti Tibbi Mahi Wali', '1198', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', 'uneducated', '40000', 'No Income', 'M.Akram', '3110116427691', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(648, 'Sidra Ahmad', 'M.Ahmad', '', '3110172594442', '03012392445', '3110185362093', 'Job-Holder', '2010-11-20', 'female', '', 'Qamar ul deen hans bwn', '1207', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-04-05', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'M.Ahmad', '3110185362093', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(649, 'Mehwish zaheer', 'Zaheer Ahmad', '', '3110140231638', '03002920916', '3110153192797', 'Job-Holder', '2009-05-05', 'female', '', 'Nadar Shahl by pass', '1231', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-05', 'No', 'Other', '3', '7', '30000', 'No Income', 'Zaheer Ahmad', '3110153192797', '1234', '3', 'Job-Holder', '20000', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(650, 'Aneeza Fatima', 'Sajid Mehmood', '', '3110193630368', '03023455515', '3110185772551', 'Job-Holder', '2011-01-03', 'female', '', 'Faisal colony bwn', '1235', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-05', 'No', 'Other', '2', '2', '40000', 'No Income', 'Sajid Mehmood', '3110185772551', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(651, 'Kinza bibi', 'M.Zaman ', '', '3110168017624', '03064262672', '311011607023', 'Job-Holder', '2010-05-09', 'female', '', 'Nadar Shahl bwn', '1251', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-05', 'No', 'Other', '2', '1', '30000', 'No Income', 'M.Zaman ', '311011607023', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(652, 'Asma Bibi', 'Rasheed Ahmad', '', '3110184473730', '03025080696', '311012495277', 'Bussiness', '2013-01-01', 'female', '', 'Girdhani wala', '1283', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-19', 'No', 'Farmer', '3', '1', '20000', 'No Income', 'Rasheed Ahmad', '311012495277', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(653, 'Amna Akram', 'M Akram', '', '3110104910680', '03045063890', '3110189136335', 'Job-Holder', '2008-08-24', 'female', '', 'hafiz abad  bwn', '1286', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-19', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'M.Akram', '3110189136335', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(654, 'Ume Ayman', 'M.Rafique', '', '3110192392804', '03085952672', '3110152891759', 'Job-Holder', '2010-07-28', 'female', '', 'Jatto wala', '1288', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-26', 'No', 'Teacher', '11', '1', '50000+', 'No Income', 'M.Rafique', '3110152891759', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(655, 'Ayisha Manahil', 'M.Ameer', '', '3110125729144', '03036791533', '3110120856447', 'Job-Holder', '2010-10-26', 'female', '', 'hafiz abad  bwn', '1290', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-05-26', 'No', 'Labour', '1', '1', '15000', 'No Income', 'M.Ameer', '3110120856447', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(656, 'Sadia Naveed', 'Naveed ul Hassan', '', '3640274898996', '03008134284', '3110116256621', 'Bussiness', '2009-03-19', 'female', '', 'Burhan kot', '1304', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-08-18', 'No', 'Farmer', 'uneducated', 'uneducated', '10000', 'No Income', 'Naveed ul Hassan', '3110116256621', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(657, 'Komal', 'Akhtar Ali', '', '3110184763968', '03057967883', '3110147825265', 'Bussiness', '2010-09-24', 'female', '', 'Jatto wala', '1326', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-09-01', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Akhtar Ali', '3110147825265', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(658, 'Zulakhan bibi', 'M.Hassan', '', '3110126686398', '03076597438', '3110101674725', 'Bussiness', '2009-05-25', 'female', '', 'hafiz abad  bwn', '1340', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2014-10-20', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Hassan', '3110101674725', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(659, 'Zainab bibi', 'M.Sarfraz', '', '3110142149206', '03012484887', '3110159579373', 'Job-Holder', '2011-01-10', 'female', '', 'Nadar Shahl bwn', '1357', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-04-01', 'No', 'Other', '1', 'uneducated', '10000', 'No Income', 'M.Sarfraz', '3110159579373', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(660, 'Munazza Murtaza', 'Ghulam Murtaza', '', '3110117155762', '03085446989', '3110116268439', 'Job-Holder', '2009-10-12', 'female', '', 'Faisal colony bwn', '1446', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-05-02', 'No', 'Other', '11', 'uneducated', '30000', 'No Income', 'Ghulam Murtaza', '3110116268439', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(661, 'Maheen Khaliq', 'Abdul Khaliq', '', '3110162947796', '03336302962', '3110416992621', 'Job-Holder', '2010-12-12', 'female', '', 'hafiz abad  bwn', '1453', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-05-02', 'No', 'Other', '11', '1', '10000', 'No Income', 'Abdul Khaliq', '3110416992621', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(662, 'Sajida Rani', 'M.Ayyaz Nadeem', '', '3110136335996', '03321601665', '3110174755807', 'Bussiness', '2008-10-07', 'female', '', 'hafiz abad  bwn', '1462', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-05-02', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'M.Ayyaz Nadeem', '3110174755807', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(663, 'Umama Rasheed', 'Abdul Rasheed', '', '3110175613844', '03008020155', '3110153201953', 'Job-Holder', '2007-12-15', 'female', '', 'Jorhana Basti', '1512', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-05-04', 'No', 'Other', '1', 'uneducated', '10000', 'No Income', 'Abdul Rasheed', '3110153201953', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(664, 'Sania Hussain', 'M.Shahid Hussain', '', '3110113049170', '03007925202', '3110142998713', 'Bussiness', '2009-05-15', 'female', '', 'Chak hotiana bwn', '1545', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2015-05-28', 'No', 'Other', '1', '1', '20000', 'No Income', 'M.Shahid Hussain', '3110142998713', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(665, 'Zanab Maqsood', 'Maqsood Ahmad', '', '3110168979386', '03039769062', '3110157111752', 'Job-Holder', '2007-12-08', 'female', '', 'hafiz abad  bwn', '1585', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2016-01-06', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Maqsood Ahmad', '3110157111752', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(666, 'Shafiqa Yasmeen', 'Bashir Ahmad', '', '3110135316840', '1', '3110172949775', 'Job-Holder', '2005-02-05', 'female', '', 'hafiz abad  bwn', '1976', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2018-03-01', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Bashir Ahmad', '3110172949775', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(667, 'Humaira Jameel', 'M.Jameel ', '', '3110180025616', '03007583287', '3110167709121', 'Job-Holder', '2009-05-30', 'female', '', 'hafiz abad  bwn', '2252', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2019-03-27', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Jameel ', '3110167709121', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(668, 'Zainab Ashraf', 'M.Ashraf', '', '31101', '1', '310116638137', 'Job-Holder', '2007-12-24', 'female', '', 'hafiz abad  bwn', '2257', 'In-Progress', 13, 6, '', '', 'Pakitsan', '2019-03-27', 'No', 'Other', '2', '1', '10000', 'No Income', 'M.Ashraf', '310116638137', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-26', '', '', '0'),
(669, 'Zunaira Riaz', 'Muhammad Riaz', '', '3110117294200', '03007920996', '3110162665023', 'Job-Holder', '2014-07-18', 'female', '', 'bwn', '70', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', 'uneducated', '20000', 'No Income', 'Muhammad Riaz', '3110162665023', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(670, 'Maryam Ismaeel', 'Muhammad Ismaeel', '', '3110186919553', '03027540945', '3110186919553', 'Job-Holder', '2003-03-25', 'female', '', 'hafiz abad  bwn', '73', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Labour', '1', 'uneducated', '30000', 'No Income', 'Muhammad Ismaeel', '3110186919553', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(671, 'Atiqa Rehman', 'Rasheed-ur-Rehman', '', '3110140514874', '03007921899', '3110115898213', 'Job-Holder', '2003-06-20', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '93', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Teacher', '3', '3', '10000', 'No Income', 'Rasheed-ur-Rehman', '3110115898213', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(672, 'Muqadas Aslam', 'M.aslam', '', '3110116427653', '03067353079', '3110116427653', 'Job-Holder', '2004-03-18', 'female', '', 'Tebi Mahi Wali', '160', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Teacher', '2', 'uneducated', '30000', 'No Income', 'M.Aslam', '3110116427653', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(673, 'Saba Murtaza', 'Ghulam Murtaza Nasir', '', '3110196542414', '03496570791', '3110116268439', 'Job-Holder', '2003-08-15', 'female', '', 'Faisal colony bwn', '249', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', '1', '20000', 'No Income', 'Ghulam Murtaza Nasir', '3110116268439', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(674, 'sana bibi', 'Riaz Ahmad', '', '3110125634794', '03046917016', '3110199863833', 'Bussiness', '2005-01-01', 'female', '', 'Deen Pur Shareef jattu wala', '252', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', 'uneducated', '30000', 'No Income', 'Riaz Ahmad', '3110199863833', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(675, 'Maryam Manzoor', 'Manzoor Ahmad', '', '3110180671056', '03347064169', '3110173800649', 'Bussiness', '2004-06-15', 'female', '', 'Judana Basti', '286', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', 'uneducated', 'uneducated', '50000+', 'No Income', 'Manzoor Ahmad', '3110173800649', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(676, 'Sajida Anwar', 'M.Anwar', '', '311019748772', '03026067036', '3110115827399', 'Job-Holder', '2003-10-07', 'female', '', 'Deen Pur Shareef Bwn', '372', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'M.Anwar', '3110115827399', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(677, 'Asifa Batool', 'Ghulam Murtaza', '', '3110197734590', '03088082039', '3110115868633', 'Bussiness', '2004-12-14', 'female', '', 'hafiz abad  bwn', '437', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'Ghulam Murtaza', '3110115868633', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(678, 'Maryam Ilmdin', 'Ilmdin', '', '3110175769306', '03087124343', '3110116638137', 'Job-Holder', '2003-05-05', 'female', '', 'hafiz abad  bwn', '462', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '15000', 'No Income', 'Ilmdin', '3110116638137', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(679, 'Shumaila Mushtaq', 'M.Mushtaq', '', '3110168663890', '03056312112', '3110195987147', 'Job-Holder', '2004-08-28', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '466', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'M.Mushtaq', '3110195987147', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(680, 'Sana Ahmad', 'M.Ahmad', '', '3110172593492', '03012392445', '3110185362093', 'Bussiness', '2004-05-12', 'female', '', 'Ranjhy wala khu', '570', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', 'uneducated', '15000', 'No Income', 'M.Ahmad', '3110185362093', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(681, 'Zain-ul-haq', 'Ahmad Yar', '', '3110163446600', '03447411070', '3110105936125', 'Bussiness', '2004-01-25', 'female', '', 'Deen Pur Shareef Bwn', '642', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', '3', '10000', 'No Income', 'Ahmad yar', '3110105936125', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(682, 'Rehana', 'Abdul Kareem', '', '3110165835220', '03024217510', '3110102515141', 'Bussiness', '2000-01-01', 'female', '', 'Basti Matran', '1268', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', 'uneducated', '10000', 'No Income', 'Abdul Kareem', '3110102515141', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(683, 'Iqra Allah Dita', 'Allah Ditta', '', '1234', '03059143036', '1223', 'Job-Holder', '2000-01-01', 'female', '', 'bwn', '1443', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '15000', 'No Income', 'Allah Ditta', '1223', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(684, 'Mubarra Hafeez', 'Abdul Hafeez', '', '3110179080380', '03006950803', '3110116539781', 'Bussiness', '2004-08-19', 'female', '', 'Pull Furtwah Bahawalnagar', '1449', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '3', 'uneducated', '50000+', 'No Income', 'Abdul Hafeez', '3110116539781', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(685, 'Sobia Naz', 'M.Buksh', '', '3110189283204', '03467522239', '3110116483171', 'Bussiness', '2006-05-01', 'female', '', 'Basti Suliman ki', '1450', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Shopkeeper', 'uneducated', '3', '15000', 'No Income', 'M.Buksh', '3110116483171', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(686, 'Amna Rasheed', 'Abdul Rasheed', '', '3110174672394', '03008020155', '3110153201953', 'Job-Holder', '2003-01-01', 'female', '', 'Judana basti', '1520', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', 'uneducated', 'uneducated', '10000', 'No Income', 'Abdul Rasheed', '3110153201953', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(687, 'Shumaila Suliman', 'Hafiz Muhammaad Suliman', '', '3110116409529', '03007587130', '3110116409529', 'Job-Holder', '2003-10-01', 'female', '', 'Quraish colony bwn', '2028', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '3', '1', '10000', 'No Income', 'Hafiz Muhammaad Suliman', '3110116409529', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(688, 'Ansa Maqbool', 'M.Maqbool', '', '3110190635618', '03012597346', '3110153954315', 'Job-Holder', '2004-08-26', 'female', '', 'Quraish colony bwn', '2053', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '50000+', 'No Income', 'M.Maqbool', '3110153954315', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(689, 'Sidra Azhar', 'M.Azhar Naeem', '', '3110110769574', '03007928934', '3110144658989', 'Job-Holder', '2001-11-01', 'female', '', 'hafiz abad  bwn', '2058', 'In-Progress', 27, 12, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '3', 'uneducated', '10000', 'No Income', 'M.Azhar Naeem', '3110144658989', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(690, 'Umar Draz', 'Rasheed Ahmad', '', '3110191903143', '03025080696', '3110124952773', 'Bussiness', '2005-09-11', 'male', '', 'Bahawalnagar', '1063', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '3', '1', '20000', 'No Income', 'Rasheed Ahmad', '3110124952773', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(691, 'M.Mudassir Ishaq', 'M.Ishaq', '', '3110195865713', '03075074728', '3110108860581', 'Job-Holder', '2002-12-20', 'male', '', 'Deen Pur Shareef Bwn', '118', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', 'uneducated', '30000', 'No Income', 'M.Ishaq', '3110108860581', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(692, 'Khaleeq-ur-Rehman', 'Allah Bakhsh', '', '3110129625157', '03006627836', '3110110777643', 'Bussiness', '2004-08-15', 'male', '', 'din pur sharif jajju wala', '420', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', '1', '40000', 'No Income', 'Allah Bakhsh', '3110110777643', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(693, 'M.Faisal Nadeem', 'M.Azhar Nadeem', '', '3110130896575', '03068519707', '3110159929617', 'Job-Holder', '2006-01-01', 'male', '', 'din pur sharif jajju wala', '348', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'M.Azhar Nadeem', '3110159929617', '1234', '7', 'Job-Holder', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(694, 'M.Sohaib Umar', 'M.umar Khubaib', '', '3110136946925', '03007927644', '3110150399123', 'Bussiness', '2006-09-09', 'male', '', 'hafiz abad  bwn', '515', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '2', '2', '30000', 'No Income', 'M.umar khubaib', '3110150399123', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-29', '', '', '0'),
(695, 'Sajid Mehmood', 'H.Arshad Mehmood', '', '3110118342283', '03007580603', '3110115898023', 'Job-Holder', '2004-09-20', 'male', '', 'hafiz abad  bwn', '682', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'H.Arshad Mehmood', '3110115898023', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(696, 'M.Umair Rafiq', 'M.Rafiq', '', '3110109280097', '03074874017', '3110183241593', 'Job-Holder', '2002-09-15', 'male', '', 'Pull Furtwah Bahawalnagar', '795', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', 'uneducated', '7', '20000', 'No Income', 'M.Rafiq', '3110183241593', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(697, 'M.Ali', 'Mehboob Alam', '', '3110160732091', '03057466850', '3110116409243', 'Job-Holder', '2003-11-01', 'male', '', 'Nadar Shahl bwn', '2389', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', '1', '20000', 'No Income', 'Mehboob Alam', '3110116409243', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(698, 'M.Shazad Nadeem', 'Noor Ahmad', '', '3110168257029', '03068519707', '3110116570895', 'Job-Holder', '2003-01-20', 'male', '', 'Deen Pur Shareef Bwn', '1347', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'Noor Ahmad', '3110116570895', '1234', '10', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(699, 'M.Usman Rafique', 'M.Rafique', '', '3110165064523', '03347014327', '3110116611661', 'Job-Holder', '2003-09-10', 'male', '', 'Deen Pur Shareef jattu wala bwn', '974', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', '1', '30000', 'No Income', 'M.Rafique', '3110116611661', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(700, 'Sohail Ahmad', 'Basheer Ahmad', '', '3110168541521', '03037056404', '3110142354601', 'Job-Holder', '2005-04-01', 'male', '', 'Tibbi Mahi wali bwn', '2071', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '3', '1', '15000', 'No Income', 'Basheer Ahmad', '3110142354601', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(701, 'Hassan Haseeb', 'M.Fiaz', '', '3110119895447', '03025080696', '3110180100151', 'Job-Holder', '2005-03-21', 'male', '', 'pull nadar shah b.w.n', '1061', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', '1', '20000', 'No Income', 'M.Fiaz', '3110180100151', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(702, 'M.Mubashir', 'Abdul Ghani', '', '3640154284117', '03027009725', '3640108673615', 'Bussiness', '2001-06-10', 'male', '', 'Burhan Cot bwn', '1068', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Shopkeeper', '1', 'uneducated', '20000', 'No Income', 'Abdul Ghani', '3640108673615', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(703, 'Niamat Ali', 'Suleman Khan', '', '3320355671431', '03457685377', '3320346007481', 'Job-Holder', '2002-01-17', 'male', '', 'Sikandar Neher Arif wala road bwn', '2302', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '15000', 'No Income', 'Suleman Khan', '3320346007481', '1234', '11', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(704, 'Umar Farooq', 'M.Riaz', '', '3110173114845', '03078633816', '3110162233437', 'Job-Holder', '2005-05-25', 'male', '', 'din pur sharif jajju wala', '2353', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Labour', '2', '3', '15000', 'No Income', 'M.Riaz', '3110162233437', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(705, 'Ali Raza', 'M.Javed', '', '3110184665583', '1', '3110129025985', 'Bussiness', '2006-11-16', 'male', '', 'bwn', '2359', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Farmer', '1', '1', '10000', 'No Income', 'M.Javed', '3110129025985', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(706, 'M,Umar', 'Khaista khan', '', '3110158286603', '03012489630', '3110189062641', 'Job-Holder', '2006-06-01', 'male', '', 'din pur sharif jajju wala', '2326', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Khaista khan', '3110189062641', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(707, 'Syed Abu Bakar shah', 'a', '', '3110132133105', '1', '1', 'Job-Holder', '2003-11-23', 'male', '', 'bwn', '1', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '2', '1', '15000', 'No Income', 'a', '1', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(708, 'Istique Ahmad', 'a', '', '1234', '1', '1', 'Job-Holder', '2019-11-01', 'male', '', 'bwn', '2', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '15000', 'No Income', 'a', '1', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(709, 'azar Bilal', 'a', '', '1', '1', '1', 'Job-Holder', '2019-11-01', 'male', '', 'bwn', '3', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '2', '30000', 'No Income', 'a', '1', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(710, 'M.Arslan', 'a', '', '1', '1', '1', 'Job-Holder', '2019-11-01', 'male', '', 'bwn', '4', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-11-01', 'No', 'Other', '1', '1', '15000', 'No Income', 'a', '1', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-11-30', '', '', '0'),
(711, 'fakhar un nisa', 'M Hussain', '', '3110187001927', '03016529582', '3110142135341', 'Bussiness', '2004-08-14', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '262', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2008-05-01', 'No', 'Other', '2', '2', '20000', 'No Income', 'M Hussain', '3110142135341', '1', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(712, 'tuba anwar', 'M Anwar', '', '311014302660', '03027549480', '3110112511461', 'Job-Holder', '2005-10-19', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '354', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2009-04-01', 'No', 'Shopkeeper', '2', 'uneducated', '10000', 'No Income', 'M Anwar', '3110112511461', '1234', '4', 'House Hold', '10000', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(713, 'maria asghar', 'm asghar', '', '3110181850610', '03002843792', '3110116026947', 'Job-Holder', '2003-07-29', 'female', '', 'Faisal colony bwn', '416', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2009-05-01', 'No', 'Engineer', '2', 'uneducated', '20000', 'No Income', 'm asghar', '3110116026947', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(714, 'khaliqa bakhsh', 'allah bakhsh', '', '3110181850610', '03347013469', '3110110777643', 'Bussiness', '2003-07-29', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '419', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2009-05-01', 'No', 'Other', '4', '1', '15000', 'No Income', 'allah bakhsh', '3110110777643', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(715, 'saba ahmad', 'm ahmad', '', '3110173438992', '03012392445', '3110185362093', 'Bussiness', '2006-02-09', 'female', '', 'Ranjhy wala khu', '566', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2010-04-15', 'No', 'Other', '2', 'uneducated', '20000', 'No Income', 'm ahmad', '3110185362093', '1234', '6', 'Other', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(716, 'mishal aalm', 'alam ali', '', '31101397534266', '03000077013', '3110183794859', 'Job-Holder', '2005-01-01', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '603', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2010-08-02', 'No', 'Other', '2', 'uneducated', '15000', '5000', 'Alam Ali', '3110183794859', '1234', '5', 'House Hold', '5000', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(717, 'ashfa shabir', 'shabir ahmad', '', '3110196608770', '03022108052', '3110164287985', 'Job-Holder', '2006-08-20', 'female', '', 'Chack Nadar Shah BWN', '720', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2011-09-14', 'No', 'Other', '1', 'uneducated', 'No Income', 'No Income', 'shabir ahmad', '3110164287985', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(718, 'maryam hssain', 'm hussain', '', '3110101535296', '0300818148344', '3110122285093', 'Bussiness', '2006-08-03', 'female', '', 'Chack matran bwn', '733', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2011-11-14', 'No', 'Other', '3', '2', '20000', 'No Income', 'm hussain', '3110122285093', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(719, 'ayesha sarwar', 'm sarwar', '', '3110544228558', '03057466781', '3110571836311', 'Job-Holder', '2006-06-15', 'female', '', 'Tibbi Mahi wali bwn', '976', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2013-04-05', 'No', 'Other', '2', '3', '20000', 'No Income', 'm sarwar', '3110571836311', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(720, 'hamna hafeez', 'abdul hafeez', '', '3110160557624', '03037888755', '3110116430431', 'Bussiness', '2006-11-26', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '1526', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2015-05-28', 'No', 'Other', '4', 'uneducated', '20000', 'No Income', 'abdul hafeez', '3110116430431', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(721, 'samreen kousar', 'm hanif', '', '3110128407098', '03027858693', '123', 'Job-Nil', '2006-10-01', 'female', '', 'Chack matran bwn', '1714', 'In-Progress', 25, 11, '', '', 'Pakitsan', '0016-04-25', 'No', 'Other', 'uneducated', '2', 'No Income', 'No Income', 'm hanif', '3110176150532', '1234', '6', 'Job-Holder', '5000', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(722, 'ghazala ghafoor', 'abdul gafoor', '', '3110158358538', '0303705604', '3110114721447', 'Job-Holder', '2004-10-05', 'female', '', 'Tibbi Mahi wali bwn', '2168', 'In-Progress', 25, 11, '', '', 'Pakitsan', '0018-11-12', 'No', 'Teacher', '3', '2', '15000', 'No Income', 'abdul gafoor', '3110114721447', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(723, 'alishba mukhtar', 'mukhtar ahmad', '', '3110193925048', '03057170689', '3110116558257', 'Bussiness', '2004-04-04', 'female', '', 'new abdi quersh colony', '2170', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2018-12-15', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'mukhtar ahmad', '3110116558257', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(724, 'sidra zafar', 'zafar iqbal', '', '312013908416', '03006809878', '3120103168727', 'Bussiness', '2004-11-03', 'female', '', 'Quraish colony bwn', '2173', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2018-12-15', 'No', 'Teacher', '2', '3', '10000', 'No Income', 'zafar iqbal', '3120103168727', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(725, 'iqra', 'm adrees', '', '311015486516', '03057402969', '3110169434357', 'Job-Holder', '2006-05-04', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2199', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', '2', '2', '15000', 'No Income', 'm adrees', '3110169434357', '1234', '1', 'House Hold', '5000', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(726, 'yasmeen', 'm yar shazad', '', '3110125077176', '03452834692', '3110102055349', 'Job-Holder', '2003-05-04', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2198', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', '2', '1', '20000', 'No Income', 'm yar shazad', '3110102055349', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(727, 'kiran shazdi', 'm shaban', '', '3110127766552', '03064130356', '3110115826941', 'Job-Holder', '2004-06-07', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2207', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-09', 'No', 'Labour', 'uneducated', '2', 'No Income', 'No Income', 'm shaban', '3110115826941', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(728, 'habiba rasheed', 'Rasheed Ahmad', '', '311019558518', '03065095590', '3110155843109', 'Job-Holder', '2005-02-22', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2217', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-09', 'No', 'Engineer', '1', '3', 'No Income', 'No Income', 'Rasheed Ahmad', '3110155843109', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(729, 'habiba rasheed', 'Rasheed Ahmad', '', '311019558518', '03065095590', '3110155843109', 'Job-Holder', '2005-02-22', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2217', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-09', 'No', 'Engineer', '1', '3', 'No Income', 'No Income', 'Rasheed Ahmad', '3110155843109', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(730, 'shazma zafar', 'zafar iqbal', '', '311080615066', '03466652073', '3110191944965', 'Job-Holder', '2019-01-01', 'female', '', 'Tibbi Mahi wali bwn', '2222', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-16', 'No', 'Farmer', '1', '4', '20000', 'No Income', 'zafar iqbal', '3110191944965', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(731, 'kiran yaseen', 'm yaseen', '', '3110141257866', '03076928717', '3110101587261', 'Job-Holder', '2003-08-14', 'female', '', 'h', '2223', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-16', 'No', 'Other', '1', 'uneducated', '15000', 'No Income', 'm yaseen', '3110101587261', '1234', '6', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(732, 'aqsa yaseen', 'm yaseen', '', '3110180580572', '03007630115', '311018595907', 'Bussiness', '2004-02-01', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2224', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-16', 'No', 'Other', '1', 'uneducated', '30000', 'No Income', 'm yaseen', '311018595907', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(733, 'zobia tariq', 'm tariq', '', '3110103752260', '03007630115', '3110149054967', 'Bussiness', '2007-11-11', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2225', 'In-Progress', 25, 11, '', '', 'Pakistan', '2019-03-16', 'No', 'Farmer', '1', 'uneducated', '30000', 'No Income', 'm tariq', '3110149054967', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(734, 'mehwish fatima', 'jamshed iqbal', '', '3110122883026', '03064998913', '3110106892477', 'Bussiness', '2003-12-10', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2233', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-16', 'No', 'Farmer', '2', '3', '15000', 'No Income', 'jamshed iqbal', '3110106892477', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-03', '', '', '0'),
(735, 'abu baker', 'm shafiq', '', '311012178376', '03048651245', '3110180414199', 'Job-Holder', '2012-10-24', 'male', '', 'shrif cote bwn', '1981', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-02', 'No', 'Teacher', '2', 'uneducated', '20000', 'No Income', 'm shafiq', '3110180414199', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(736, 'noman azhar', 'm azhar', '', '31101', '03037050697', '3110153841497', 'Bussiness', '2014-11-01', 'male', '', 'Chack Nadar Shah BWN', '1982', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-02', 'No', 'Farmer', '1', 'uneducated', '15000', 'No Income', 'm azhar', '3110153841497', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(737, 'm abu sufyyan', 'mumtaz ahmad', '', '3110122154105', '03007582156', '3110173077405', 'Job-Holder', '20111-10-25', 'male', '', 'Quraish colony bwn', '2001', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-22', 'No', 'Other', '2', 'uneducated', '15000', 'No Income', 'mumtaz ahmad', '3110173077405', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(738, 'abu zar', 'mumtaz ahmad', '', '3110182686399', '0300758156', '3110173077405', 'Bussiness', '2013-09-01', 'male', '', 'Quraish colony bwn', '2002', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Shopkeeper', '1', 'uneducated', '20000', 'No Income', 'mumtaz ahmad', '3110173077405', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(739, 'm nsalman ', 'shabir ahmad', '', '3110113919307', '03057284028', '3110121421585', 'Bussiness', '2014-12-01', 'male', '', 'Quraish colony bwn', '2003', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Other', '2', '1', '20000', 'No Income', 'shabir ahmad', '3110121421585', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(740, 'ali hasnain', 'm ismaeel', '', '3110171707745', '03027540945', '3110186919553', 'Job-Nil', '2011-07-14', 'male', '', 'Hafiz Abad COlony Bahawal Nagar', '2006', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Farmer', '1', '1', '30000', 'No Income', 'm ismaeel', '3110186919553', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(741, 'talha ashrif ', 'm ashrif', '', '3110118468969', '03084659369', '3110118468969', 'Job-Holder', '2014-12-08', 'male', '', 'Deen Pur Shareef Bwn', '2007', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0111-11-11', 'No', 'Other', '1', '2', '15000', 'No Income', 'm ashrif', '3110118468969', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(742, 'usman haider', 'azhar farooq', '', '3110118468969', '000000000', '3110112555113', 'Job-Holder', '2014-12-08', 'male', '', 'Tibbi Mahi wali bwn', '2009', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Other', '2', '2', '20000', 'No Income', 'azhar farooq', '3110112555113', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(743, 'gulam mujtoba', 'm arif', '', '3110131843213', '03087244140', '3110131843213', 'Bussiness', '2013-11-10', 'male', '', 'Faisal colony bwn', '20011', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0018-03-22', 'No', 'Shopkeeper', '1', '2', '15000', '20000', 'm arif', '3110131843213', '3110131843213', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(744, 'm ali hassan ', 'gulam mustfa', '', '3110131412557', '03067850976', '3110139829119', 'Bussiness', '2012-11-14', 'male', '', 'Quraish colony bwn', '2018', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Labour', '4', '3', '20000', '15000', 'gulam mustfa', '3110139829119', '1234', '3', 'Bussiness', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(745, 'hasnin ahmad ', 'sultan ahmad', '', '3110175339713', '03058522799', '3110176266619', 'Bussiness', '2014-11-01', 'male', '', 'hafiz abad  bwn', '2029', 'In-Progress', 4, 2, '', '', 'Pakitsan', '0011-11-11', 'No', 'Shopkeeper', '1', '2', '15000', 'No Income', 'sultan ahmad', '3110176266619', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(746, 'Ali  Raza', 'Zahoor Ahmad', '', '3110121386165', '1', '3110235446207', 'Job-Holder', '0013-08-12', 'male', '', 'hafiz abad  bwn', '2035', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Other', '1', '1', '30000', 'No Income', 'Zahoor Ahmad', '3110235446207', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(747, 'M.Furqan', 'M.Arif', '', '3110138665025', '03217005206', '3110116165463', 'Bussiness', '2014-04-14', 'male', '', 'Nadar Shahl bwn', '2046', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-16', 'No', 'Farmer', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Arif', '3110116165463', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(748, 'M.Rehman', 'M.Irfan', '', '3110112981753', '03033146567', '3110192940407', 'Bussiness', '2013-05-16', 'male', '', 'hafiz abad  bwn', '2047', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Farmer', '1', '1', '20000', 'No Income', 'M.Irfan', '3110192940407', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(749, 'M.Umar', 'M.Rafiq', '', '3110163472031', '03472226106', '3110116097447', 'Bussiness', '2015-01-01', 'male', '', 'hafiz abad  bwn', '2054', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-19', 'No', 'Farmer', '1', '1', '20000', 'No Income', 'M.Rafiq', '3110116097447', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(750, 'M.Talha', 'M.Tayyab', '', '3110172901735', '03046625630', '3110117315619', 'Bussiness', '2014-01-01', 'male', '', 'Jhulan Arien', '2055', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'M.Tayyab', '3110117315619', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(751, 'Abdul Qadeer', 'M.Tayyab', '', '3110196383889', '03068632767', '3110166821471', 'Bussiness', '2014-10-02', 'male', '', 'Hussain Abad bwn', '2060', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-20', 'No', 'Other', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Tayyab', '3110166821471', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(752, 'M.Faizan ', 'Ghulam Nabi', '', '3110120240532', '03077899044', '3110179022617', 'Bussiness', '2014-05-17', 'male', '', 'Tibi Mahi wali bwn', '2061', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'Ghulam Nabi', '3110179022617', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(753, 'M.Shahzaib Ali', 'Ali Irfan', '', '311012425251', '03077899044', '3110160974245', 'Bussiness', '2011-11-28', 'male', '', 'Tibbi Mahi wali bwn', '2063', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-03-20', 'No', 'Farmer', '1', '1', '20000', 'No Income', 'Ali Irfan', '3110160974245', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(754, 'Sufyyan', 'M.Yousaf', '', '3110169054325', '03056188104', '3110169977867', 'Bussiness', '2013-12-20', 'male', '', 'Deen Pur Shareef Bwn', '2068', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Farmer', '1', '1', '30000', 'No Income', 'M.Yousaf', '3110169977867', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(755, 'M.Bilal', 'Allah Ditta', '', '3110186952381', '03013114232', '3110159265755', 'Bussiness', '2013-05-16', 'male', '', 'Hussain Abad bwn', '2136', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-04-13', 'No', 'Farmer', '1', '1', '20000', 'No Income', 'Allah Ditta', '3110159265755', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(756, 'Ghulam Mustafa', 'Ali Raza', '', '3110106672599', '03087530324', '3110115253607', 'Bussiness', '2014-12-01', 'male', '', 'Faisal colony bwn', '2137', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-04-13', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'Ali Raza', '3110115253607', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(757, 'Abiha Mudssar', 'M.Mudssar Husain', '', '3110199038282', '03017689429', '3110160867213', 'Bussiness', '2014-01-01', 'male', '', 'hafiz abad  bwn', '2139', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-04-13', 'No', '', '1', '1', '20000', '', 'M.Mudssar Husain', '3110160867213', '1234', '4', '', '', 'Islam', '', '0', '0', '0', '2019-12-04', '', '2019-12-06', '0'),
(758, 'zain-ul-Abideen', 'm.qabool', '', '3110146291921', '03015323763', '3640191655619', 'Bussiness', '2015-08-11', 'male', '', 'Burhan Kot bwn', '2142', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-04-13', 'No', 'Farmer', '1', '1', '15000', 'No Income', 'M.qabool', '3640191655619', '1234', '2', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(759, 'zainab bibi', 'M.Znulfaqar', '', '311177967562', '03037922639', '311174945943', 'Job-Holder', '2014-06-30', 'male', '', 'hafiz abad  bwn', '2144', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-12-01', 'No', 'Other', '1', '1', '20000', 'No Income', 'M.Znulfaqar', '311174945943', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(760, 'Nafisa Rehman', 'Habib-ur-Rehman', '', '3110191951374', '1', '3110176093975', 'Job-Holder', '2014-09-17', 'female', '', 'hafiz abad  bwn', '2152', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-08-30', 'No', 'Other', '1', '1', '20000', 'No Income', 'Habib-ur-Rehman', '3110176093975', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(761, 'Ume Aiman', 'M.Ahmad', '', '3110146971210', '03347004512', '3110144370027', 'Bussiness', '2014-01-21', 'female', '', 'hafiz abad  bwn', '2165', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2018-10-18', 'No', 'Farmer', 'uneducated', 'uneducated', '15000', 'No Income', 'M.Ahmad', '3110144370027', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(762, 'Maryam Fatima', 'M.Yaseen', '', '3110103915994', '03447383811', '3110188369131', 'Job-Holder', '2013-12-22', 'female', '', 'Haji Shareef kot bwn', '2216', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', '1', '1', '20000', 'No Income', 'M.Yaseen', '3110188369131', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-04', '', '', '0'),
(763, 'Abdul Rehman', 'M.Yousef', '', '3110175953407', '03057375986', '3110159725701', 'Job-Holder', '2014-03-12', 'male', '', 'hafiz abad  bwn', '2363', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-05-25', 'No', 'Other', '1', '1', '20000', 'No Income', 'M.Yousef', '3110159725701', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(764, 'M.Sufyyan Rasheed', 'Rasheed Farooq', '', '3110169782317', '03007582057', '3110116639271', 'Bussiness', '2012-09-24', 'male', '', 'Hussain Abad bwn', '2369', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-08-28', 'No', 'Farmer', '2', '1', '30000', 'No Income', 'Rasheed Farooq', '3110116639271', '1234', '3', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0');
INSERT INTO `student_registration` (`id`, `name`, `fathername`, `mothername`, `b_form`, `contact`, `father_cnic`, `father_occupation`, `dob`, `gender`, `image`, `address`, `reg_no`, `status`, `section_id`, `class_id`, `bform_img`, `cnic_img`, `nationality`, `admission_date`, `previous_school`, `job_type`, `father_education`, `mother_education`, `father_income`, `household_income`, `guardian_name`, `guardian_cnic`, `mother_cnic`, `no_of_children`, `mother_profession`, `mother_income`, `religion`, `inclusive`, `is_orphan`, `is_briklin`, `is_osc`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(765, 'M.Saad', 'Abdul Rehman', '', '3110197913209', '03077542574', '3110106007887', 'Job-Holder', '2015-05-27', 'male', '', 'Quraish colony bwn', '2393', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-09-20', 'No', 'Other', '1', '1', '30000', 'No Income', 'Abdul Rehman', '3110106007887', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(766, 'M.Shabir', 'M.Munir', '', '1', '03074527324', '3110158135741', 'Job-Holder', '2010-09-22', 'male', '', 'Faisal colony bwn', '2394', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-09-20', 'No', 'Labour', 'uneducated', 'uneducated', '20000', 'No Income', 'M.Munir', '3110158135741', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(767, 'Aliyan Ghani', 'Ghazanfar Ali', '', '3110139718063', '03067853147', '3110114141347', 'Job-Holder', '2014-09-25', 'male', '', 'Hussain Abad bwn', '2194', 'In-Progress', 4, 2, '', '', 'Pakitsan', '2019-03-09', 'No', 'Other', 'uneducated', 'uneducated', '15000', 'No Income', 'Ghazanfar Ali', '3110114141347', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(768, 'Muqaddas jameel', 'M.Jameel ', '', '3110180024666', '03007583287', '3110167709121', 'Job-Holder', '2004-02-09', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2250', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-27', 'No', 'Other', '2', '2', '30000', 'No Income', 'M.Jameel ', '3110167709121', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(769, 'Aqsa Ali', 'M.Ali', '', '3110121905832', '03007581179', '3110167709121', 'Job-Holder', '2003-05-17', 'female', '', 'Hafiz Abad COlony Bahawal Nagar', '2267', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-03-28', 'No', 'Other', '2', '2', '20000', 'No Income', 'M.Ali', '3110116533415', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(770, 'Sajida bibi', 'Muneer Ahmad', '', '3110104881796', '1', '3110133316481', 'Job-Holder', '2003-11-05', 'female', '', 'hafiz abad colony bwn', '2291', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-02', 'No', 'Other', '1', '1', '30000', 'No Income', 'Muneer Ahmad', '3110133316481', '1234', '1', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(771, 'Tayyaba Sattar', 'Abdul Sttar', '', '3110110911266', '03057920676', '3110114506949', 'Job-Holder', '2002-06-16', 'female', '', 'Nai Abadi Quraish Colony', '2330', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '3', '2', '35000', 'No Income', 'Abdul Sttar', '3110114506949', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(772, 'Sana shoukat', 'Shoukat', '', '3110197718442', '03082219912', '3110116637966', 'Job-Holder', '2005-05-27', 'female', '', 'Hussain Abad bwn', '2332', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '2', '1', '35000', 'No Income', 'Shoukat', '3110116637966', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(773, 'Nabiha Nasir', 'M.Nasir', '', '3110104332744', '03067869051', '3110142680055', 'Job-Holder', '2005-03-20', 'female', '', 'Tibbi Mahi wali bwn', '2333', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '2', '1', '20000', 'No Income', 'M.Nasir', '3110142680055', '1234', '5', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(774, 'Farah Yaqoob', 'Yaqoob', '', '3110192263808', '03085536150', '3110116272215', 'Job-Holder', '2003-02-12', 'female', '', 'Tibbi Mahi wali bwn', '2334', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '2', '1', '20000', 'No Income', 'Yaqoob', '3110116272215', '1234', '8', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(775, 'Amna', 'M.Fazal-ur-rehman', '', '3110191954470', '03066859964', '3110115830833', 'Job-Holder', '2014-02-13', 'female', '', 'Nai Abadi Quraish Colony', '2337', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '2', '1', '30000', 'No Income', 'M.Fazal-ur-rehman', '3110115830833', '1234', '6', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(776, 'Alisha Akram', 'M.Akram', '', '3110130399070', '03046610782', '3110133567931', 'Job-Holder', '2005-12-17', 'female', '', 'Nai Abadi quraish Colony', '2342', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-10', 'No', 'Other', '2', '2', '35000', 'No Income', 'M.Akram', '3110133567931', '1234', '13', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(777, 'Alishba Hakim', 'Hakim Ali', '', '3110139724252', '03082077979', '3110150280647', 'Job-Holder', '2006-08-07', 'female', '', 'Jurana Basti', '2344', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-10', 'No', 'Other', '1', '1', '15000', 'No Income', 'Hakim Ali', '3110150280647', '1234', '7', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(778, 'sadia Ahmad', 'Ahmad Yar', '', '3110191515646', '03027850361', '3110112252747', 'Job-Holder', '2004-03-15', 'female', '', 'hafiz abad colony bwn', '2340', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-08', 'No', 'Other', '1', '1', '20000', 'No Income', 'Ahmad yar', '3110112252747', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(779, 'Samia Saleem', 'M.Saleem', '', '3110171698130', '03314285824', '3110133134923', 'Job-Holder', '2004-01-15', 'female', '', 'Islam Nagar bwn', '2356', 'In-Progress', 25, 11, '', '', 'Pakitsan', '2019-04-10', 'No', 'Other', '1', '1', '30000', 'No Income', 'm.Saleem', '3110112252747', '1234', '9', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0'),
(780, 'Saif-ur-Rehman', 'Abaid -ur- rehmana', '', '3110157665607', '03012489630', '3110151665331', 'Job-Holder', '2004-04-13', 'male', '', 'Deen Pur Shareef jattu wala Bwn', '1393', 'In-Progress', 26, 11, '', '', 'Pakitsan', '2019-12-01', 'No', 'Other', '2', '2', '20000', 'No Income', 'Abaid -ur- rehmana', '3110151665331', '1234', '4', 'House Hold', 'No Income', 'Islam', 'Yes', '0', '0', '0', '2019-12-06', '', '', '0');

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
-- Dumping data for table `tch_registration`
--

INSERT INTO `tch_registration` (`id`, `name`, `fathername`, `cnic`, `designation`, `qualification`, `degree_id`, `pay`, `contact`, `address`, `gender`, `image`, `age`, `date_of_joining`, `father_cnic`, `class_id`, `section_id`, `subject`, `past_experience`, `experience`, `status`, `created_on`, `deleted_on`, `updated_on`, `is_deleted`) VALUES
(1, 'Salman Raza', 'M Akram', '31101-5585355-7', 'Developer', '12', 2, '50000', '03334636416', 'Bahawalnagar', 'male', 'IMG_20190218_174730.jpg', '', '2019-11-23', '311018876776', 12, 28, 'Computer Scince', '2', '2 Year', 1, '2019-11-23', '', '', '0');

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
-- Indexes for table `department`
--
ALTER TABLE `department`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_collection`
--
ALTER TABLE `fee_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_detail`
--
ALTER TABLE `staff_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tch_registration`
--
ALTER TABLE `tch_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
