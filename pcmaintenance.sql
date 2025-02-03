-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2025 at 06:04 AM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcmaintenance`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int NOT NULL,
  `date_borrow` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `borrowcode` bigint NOT NULL,
  `member_id` int NOT NULL,
  `item_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `user_id` int NOT NULL,
  `room_assigned` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `time_limit` datetime NOT NULL,
  `date_return` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `date_borrow`, `borrowcode`, `member_id`, `item_id`, `stock_id`, `user_id`, `room_assigned`, `status`, `time_limit`, `date_return`) VALUES
(1, '2017-02-21 11:12:17', 22120170412171, 7, 16, 18, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:12:47'),
(2, '2017-02-21 11:36:07', 22120170436071, 1, 16, 18, 1, 7, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:33'),
(3, '2017-02-21 11:37:01', 22120170437011, 7, 26, 24, 1, 4, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(4, '2017-02-21 11:41:12', 22120170441121, 1, 16, 18, 1, 6, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(5, '2017-02-21 11:43:39', 22120170443391, 4, 17, 20, 1, 7, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:33'),
(6, '2017-02-21 11:45:31', 22120170445311, 10, 26, 24, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:32'),
(7, '2017-02-21 11:46:36', 22120170446361, 4, 25, 23, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(8, '2017-02-21 11:48:49', 22120170448491, 4, 17, 20, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(9, '2017-02-21 11:50:40', 22120170450401, 10, 18, 21, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(10, '2017-02-21 11:51:30', 22120170451301, 8, 24, 22, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(11, '2017-02-21 11:52:38', 22120170452381, 6, 26, 24, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(12, '2017-02-21 18:48:52', 22120171148521, 4, 16, 18, 1, 7, 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mouse test', '', 1, '2025-01-27 02:43:13', '2025-01-27 02:43:13'),
(2, 'Keyboard', '', 1, '2025-01-27 02:43:13', '2025-01-27 02:43:13'),
(3, 'monitor 1', '', 1, '2025-01-27 02:43:39', '2025-01-27 02:43:39'),
(4, 'Projector', '', 1, '2025-01-27 02:43:39', '2025-01-27 02:43:39'),
(5, 'Remote', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(6, 'DLP Screen', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(7, 'aircon test1', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(8, 'TV', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(9, 'AVR', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(10, 'Extension', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(11, 'UPS', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(12, 'Router', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(13, 'Table', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(14, 'Chair', '', 1, '2025-01-27 02:45:30', '2025-01-27 02:45:30'),
(15, 'Switch Hub', '', 1, '2025-01-27 02:45:48', '2025-01-27 02:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BSOA', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05'),
(2, 'BEED', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05'),
(3, 'COED', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05'),
(4, 'BSIT', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05'),
(5, 'BSIS', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05'),
(6, 'ACT', '', '2025-01-28 00:41:05', '2025-01-28 00:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int NOT NULL,
  `e_deviceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_brand` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_stock` int NOT NULL,
  `e_stockleft` int NOT NULL,
  `e_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_inventory`
--

CREATE TABLE `equipment_inventory` (
  `id` int NOT NULL,
  `equipment_id` int NOT NULL,
  `qty` int NOT NULL,
  `remarks` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` int NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `user_type` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `description`, `table_name`, `status_name`, `user_id`, `user_type`, `date_created`) VALUES
(49, 'add new equipmentSM-922 , Mouse', 'equipment', '', 1, 1, '2017-02-17 13:28:52'),
(50, 'add 2items toSM-922quantity', 'equipment', '', 1, 1, '2017-02-17 13:46:29'),
(51, 'add 2items toSM-9221quantity', 'equipment', '', 1, 1, '2017-02-17 14:15:46'),
(52, 'add new equipment---- , AVR', 'equipment', '', 1, 1, '2017-02-21 11:20:20'),
(53, 'add new equipmentH328C , Projector', 'equipment', '', 1, 1, '2017-02-21 11:24:12'),
(54, 'add new equipmentOM-130006A/K , Keyboard', 'equipment', '', 1, 1, '2017-02-21 11:28:04'),
(55, 'add new equipment---- , Remote', 'equipment', '', 1, 1, '2017-02-21 11:31:19'),
(56, 'add new equipment58E510 , TV', 'equipment', '', 1, 1, '2017-02-21 11:35:07'),
(57, 'add new equipmenttest , Keyboard', 'equipment', NULL, 1, 1, '2025-01-24 02:35:39'),
(58, 'add new equipmentTest2 , Monitor', 'equipment', NULL, 1, 1, '2025-01-26 18:34:45'),
(59, 'add userfred', 'user', NULL, 1, 1, '2025-02-03 00:35:35'),
(60, 'edit client', 'client', NULL, 1, 1, '2025-02-03 00:38:02'),
(61, 'edit client', 'client', NULL, 1, 1, '2025-02-03 00:38:35'),
(62, 'edit client', 'client', NULL, 1, 1, '2025-02-03 00:49:31'),
(63, 'edit client', 'client', NULL, 1, 1, '2025-02-03 00:49:43'),
(64, 'edit category  to aircon test', 'category', NULL, 1, 1, '2025-02-03 11:05:59'),
(65, 'edit category  to aircon', 'category', NULL, 1, 1, '2025-02-03 11:07:49'),
(66, 'edit category  to aircon test', 'category', NULL, 1, 1, '2025-02-03 11:10:06'),
(67, 'edit category  to aircon', 'category', NULL, 1, 1, '2025-02-03 11:10:17'),
(68, 'edit category  to aircon test', 'category', NULL, 1, 1, '2025-02-03 12:03:08'),
(69, 'edit category  to monitor 1', 'category', NULL, 1, 1, '2025-02-03 12:03:43'),
(70, 'edit category  to mouse 2', 'category', NULL, 1, 1, '2025-02-03 12:03:51'),
(71, 'edit category  to mouse', 'category', NULL, 1, 1, '2025-02-03 12:04:01'),
(72, 'edit category  to mouse test', 'category', NULL, 1, 1, '2025-02-03 12:04:21'),
(73, 'add new equipmenttesttest , Monitor 1', 'equipment', NULL, 1, 1, '2025-02-03 13:55:17'),
(74, 'edit category aircon test to aircon test1', 'category', NULL, 1, 1, '2025-02-03 13:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int NOT NULL,
  `i_deviceID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_category_id` int NOT NULL,
  `i_brand` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_rawstock` int NOT NULL,
  `i_status` int NOT NULL DEFAULT '1',
  `i_apps` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_price` decimal(10,2) DEFAULT NULL,
  `i_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `i_deviceID`, `i_model`, `i_category`, `i_category_id`, `i_brand`, `i_description`, `i_type`, `item_rawstock`, `i_status`, `i_apps`, `i_price`, `i_photo`) VALUES
(16, '2009991', 'SM-9221', 'mouse test', 1, 'Acer', 'Black', 'Consumable', 13, 1, 'ML', '599.00', '1487646917.jpg'),
(17, '4103500582', '----', 'AVR', 9, 'Monster', '220v, black', 'Consumable', 16, 1, 'Sir Cadagat', '1500.00', '1487647220.jpg'),
(18, '----', 'H328C', 'Projector', 4, 'epson', 'white', 'Consumable', 3, 1, 'Sir Cadagat', '2500.00', '1487647452.jpg'),
(19, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647676.png'),
(20, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647678.png'),
(21, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647679.png'),
(22, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647680.png'),
(23, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647681.png'),
(24, '----', 'OM-130006A/K', 'Keyboard', 2, 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647684.png'),
(25, '----', '----', 'Remote', 5, 'Haier', 'Slim Remote, white', 'Consumable', 10, 1, 'Sir Cadagat', '100.00', '1487647878.jpg'),
(26, '37784471777', '58E510', 'TV', 8, 'Skyworth', '58\" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2, AV X3, Component in x2, Wifi, MHL Function, 1920x1080 screen resolution, 8w+8w audio output power, 100-240v~ 50/0Hz, 25.9 kg58\" Smart Full HD, HDMI x3, VGA X1, LAN X2, USB X2', 'Consumable', 5, 1, 'Sir Cadagat', '8000.00', '1487648107.jpg'),
(27, 'test', 'test', 'Keyboard', 2, 'test', 'test', 'Non-consumable', 3, 1, 'test testt testestest ', NULL, NULL),
(28, 'test', 'test', 'Keyboard', 2, 'test', 'test', 'Non-consumable', 3, 1, 'test testt testestest ', NULL, NULL),
(29, 'test', 'Test', 'Keyboard', 2, 'Test', 'test', 'Non-consumable', 3, 1, 'Test Testt Testestest 1', NULL, '1737661584.png'),
(30, 'test', 'Test', 'aircon test', 7, 'Test', 'test', 'Non-consumable', 3, 1, 'test testt testestest ', NULL, '1738562157.png'),
(31, 'test2', 'Test2', 'Monitor', 3, 'Test2', 'test2', 'Non-consumable', 4, 1, 'MSOffice, windows 11, ...', NULL, '1737887685.png'),
(32, '43434', 'test', 'Monitor 1', 3, 'test', 'test', 'Consumable', 2, 1, 'test', NULL, '1738561226.png'),
(33, '5353535', 'testtest', 'Remote', 5, 'testtest', 'testtest', 'Consumable', 2, 1, 'test', NULL, '1738561348.png'),
(34, '5353535', 'testtest', 'Remote', 5, 'testtest', 'testtest', 'Consumable', 2, 1, 'test', NULL, '1738561592.png'),
(35, 'testtest', 'testtest', 'Monitor 1', 3, 'testtest', 'testtest', 'Consumable', 2, 1, 'testtest', NULL, '1738562019.png'),
(36, 'testtest', 'testtest', 'Monitor 1', 3, 'testtest', 'testtest', 'Consumable', 2, 1, 'testtest', NULL, '1738562117.png');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `inventory_itemstock` int NOT NULL,
  `inventory_status` int NOT NULL,
  `item_remarks` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_inventory`
--

INSERT INTO `item_inventory` (`id`, `item_id`, `inventory_itemstock`, `inventory_status`, `item_remarks`, `date_change`) VALUES
(8, 16, 2, 2, '', '2017-02-17 14:13:59'),
(9, 16, 2, 2, 'test', '2017-02-17 14:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `room_id` int NOT NULL,
  `items_stock` int NOT NULL,
  `item_status` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(18, 16, 14, 9, 1, 1),
(19, 16, 14, 3, 2, 1),
(20, 17, 14, 15, 1, 1),
(21, 18, 14, 2, 1, 1),
(22, 24, 14, 59, 1, 1),
(23, 25, 14, 10, 1, 1),
(24, 26, 14, 4, 1, 1),
(25, 27, 14, 3, 1, 1),
(26, 28, 14, 3, 1, 1),
(27, 29, 14, 3, 1, 1),
(28, 30, 14, 3, 1, 1),
(29, 31, 14, 4, 1, 1),
(30, 36, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_transfer`
--

CREATE TABLE `item_transfer` (
  `id` int NOT NULL,
  `t_itemID` int NOT NULL,
  `t_roomID` int NOT NULL,
  `t_stockID` int NOT NULL,
  `t_quantity` int NOT NULL,
  `date_transfer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `t_status` int NOT NULL DEFAULT '1',
  `personincharge` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `m_school_id` int NOT NULL,
  `m_fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_contact` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_year_section` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `m_school_id`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_department`, `m_year_section`, `m_type`, `m_password`, `m_status`) VALUES
(1, 21200122, 'John ', 'Doe', 'Male', '9124599887', 'BSIS', '1st-A', 'Student', '', 1),
(2, 21200002, 'Chris ', 'Doe', 'Male', '9076486735', 'BSIS', '1st-A', 'Student', '', 0),
(3, 21300024, 'Shane', 'Ramos', 'Female', '9072786945', 'BSCE', '1st-A', 'Student', '', 1),
(4, 21300156, 'Jedha', 'Dela Cruz', 'Female', '9051467843', 'BSED', '2nd-A', 'Student', '', 1),
(5, 21200011, 'Tresha', 'Tiamzon', 'Female', '9499007591', 'BSIT', '1st-A', 'Student', '', 1),
(6, 21400099, 'Mark', 'Susana', 'Male', '091265451332', 'BSIT', '2nd- B', 'Student', '', 1),
(7, 21300073, 'Gino', 'Olmedo', 'Male', '09502786543', 'BSIS', '4th- A', 'Student', '', 1),
(8, 21401109, 'Mika', 'Calapatan', 'Female', '09498723987', 'BSHRM', '3rd- C', 'Student', '', 1),
(9, 10001, 'Sarah', 'Tamayo', 'Female', '09488098768', 'COED', '- ', 'Faculty', '', 1),
(10, 10002, 'Marilyn', 'cepeda', 'Female', '09051148373', 'SAS', '- ', 'Faculty', '', 1),
(11, 10003, 'Peter', 'Villegas', 'Male', '09489238291', 'SAS', '- ', 'Faculty', '', 1),
(12, 10005, 'Sam', 'Reyes', 'Male', '09072708181', 'CIT', '- ', 'Faculty', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `reservation_code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int NOT NULL,
  `item_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `room_id` int NOT NULL,
  `reserve_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_limit` datetime NOT NULL,
  `assign_room` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `remarks` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int NOT NULL,
  `reservation_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_status`
--

INSERT INTO `reservation_status` (`id`, `reservation_code`, `remark`, `res_status`) VALUES
(13, '0217201706314310', 'Accepted Reservation', 1),
(14, '021920170329593', 'Accepted Reservation', 1),
(15, '021920170329593', 'Accepted Reservation', 1),
(16, '021920170345437', 'Accepted Reservation', 1),
(17, '021920170353384', 'Accepted Reservation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `rm_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rm_date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rm_status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `rm_name`, `rm_date_added`, `rm_status`) VALUES
(1, 'room 312', '2016-11-16 21:21:42', 1),
(2, 'room 403', '2016-11-16 21:21:47', 1),
(3, 'room 311', '2016-11-16 21:21:53', 1),
(4, 'room 313', '2016-11-17 18:45:03', 1),
(5, 'room 402', '2016-11-17 20:51:30', 1),
(6, 'room 301', '2016-11-17 20:51:43', 1),
(7, 'room 302', '2016-11-17 20:51:54', 1),
(8, 'room 303', '2016-11-17 20:52:04', 1),
(9, 'room 304', '2016-11-17 20:52:20', 1),
(10, 'room 305', '2016-11-17 20:52:56', 1),
(11, 'room 306', '2016-11-17 20:53:20', 1),
(14, 'room 310', '2017-01-08 13:17:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_equipment`
--

CREATE TABLE `room_equipment` (
  `id` int NOT NULL,
  `equipment_id` int NOT NULL,
  `room_id` int NOT NULL,
  `re_quantity` int NOT NULL,
  `stats` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_equipment`
--

INSERT INTO `room_equipment` (`id`, `equipment_id`, `room_id`, `re_quantity`, `stats`) VALUES
(1, 1, 14, 12, 1),
(2, 2, 14, 12, 1),
(3, 3, 14, 12, 1),
(4, 4, 14, 12, 1),
(5, 5, 14, 12, 1),
(6, 6, 14, 12, 1),
(7, 7, 14, 12, 1),
(8, 8, 14, 12, 1),
(9, 1, 14, 10, 1),
(10, 2, 14, 10, 1),
(11, 1, 14, 12, 1),
(12, 2, 14, 12, 1),
(13, 3, 14, 2, 1),
(14, 1, 14, 12, 1),
(15, 2, 14, 10, 1),
(16, 3, 14, 10, 1),
(17, 1, 14, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1=admin, 2=staff/faculty, 3=student',
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `type`, `status`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1),
(2, 'John Doe', 'staff1', 'de9bf5643eabf80f4a56fda3bbb84483', 2, 1),
(3, 'Juan', 'juan', 'f5737d25829e95b9c234b7fa06af8736', 2, 1),
(4, 'Maria Cruz', 'maria', '263bce650e68ab4e23f28263760b9fa5', 2, 1),
(5, 'Pedro Jose', 'pedro', 'd3ce9efea6244baa7bf718f12dd0c331', 2, 1),
(6, 'Administrator 2', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 1, 1),
(7, 'fred', 'franklin', '255e720be8e84d8c92f117a67821f95d', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`category_name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_id` (`equipment_id`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_transfer`
--
ALTER TABLE `item_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rm_name` (`rm_name`);

--
-- Indexes for table `room_equipment`
--
ALTER TABLE `room_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `item_transfer`
--
ALTER TABLE `item_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_equipment`
--
ALTER TABLE `room_equipment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
