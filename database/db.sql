-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 11:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `reference_table`, `reference`, `description`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'buying_orders', '1486438279', 'Order has been created.', '127.0.0.1', '2017-02-06 21:31:19', '2017-02-06 21:31:19'),
(2, 1, 'buying_orders', '1486317530', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:36:24', '2017-02-06 21:36:24'),
(3, 1, 'buying_orders', '1486317530', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:36:32', '2017-02-06 21:36:32'),
(4, 1, 'buying_orders', '1486317530', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:36:39', '2017-02-06 21:36:39'),
(5, 1, 'buying_orders', '1486438279', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:37:02', '2017-02-06 21:37:02'),
(6, 1, 'buying_orders', '1486438279', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:37:09', '2017-02-06 21:37:09'),
(7, 1, 'buying_orders', '1486438279', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:37:17', '2017-02-06 21:37:17'),
(8, 1, 'buying_orders', '1486438279', 'The order has been updated.', '127.0.0.1', '2017-02-06 21:37:30', '2017-02-06 21:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no_image.jpg',
  `user_id` int(11) NOT NULL,
  `postal_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `buyer_name`, `created_at`, `updated_at`, `image`, `user_id`, `postal_address`, `contact_person`, `email_address`, `contact_number`, `website`, `deleted_at`) VALUES
(1, 'aseef', NULL, NULL, 'no_image.jpg', 0, '', '', '', '', '', NULL),
(2, 'tt', NULL, NULL, 'no_image.jpg', 0, '', '', '', '', '', NULL),
(3, 'fdsaf', NULL, NULL, 'no_image.jpg', 0, '', '', '', '', '', NULL),
(4, '1a', NULL, '2017-02-05 09:57:38', 'no_image.jpg', 0, '6a', '2a', '3a', '4a', '5a', NULL),
(5, '333', NULL, NULL, 'no_image.jpg', 0, '', '', '', '', '', NULL),
(6, 'Wal-Mart', NULL, NULL, 'no_image.jpg', 0, 'Montreal, Canada', 'Monica', 'monicad@rd-international.ca', 'N/A', 'N/A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buying_orders`
--

CREATE TABLE `buying_orders` (
  `style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sketch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gauge` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `yarn_ref_details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pi_date` date NOT NULL,
  `yarn_status` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `contract_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po_recieved_date` date DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sizing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hang_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accys_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trims_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handover_date` date NOT NULL,
  `fit_sample_sent` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courier_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fit_sample_comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `production_status_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `production_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_sample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_sample_required` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_sample_sent` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_sent_courier_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_sample_comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_production_weight` double NOT NULL,
  `confirmed_price` double NOT NULL,
  `inspection_date` date DEFAULT NULL,
  `inspection_status` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handedover_date` date DEFAULT NULL,
  `handedover_qty` int(11) DEFAULT NULL,
  `short_excess` int(11) DEFAULT NULL,
  `value` double NOT NULL,
  `doc_sent_courier_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchandiser_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_dept` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `overseas_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessories_status_date` date NOT NULL,
  `care_label_composition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ca_rn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `packing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_ho_date` date NOT NULL,
  `proposed_ho_date` date NOT NULL,
  `approval_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_status_date` date NOT NULL,
  `next_sample` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_date` date NOT NULL,
  `yarn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dyeing_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dyeing_order_date` date NOT NULL,
  `size_set` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size_set_date` date NOT NULL,
  `production` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `production_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `knitting` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linking` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `finishing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_req` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_date` date NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_hbl_awb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_vsl_flight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_etd` date NOT NULL,
  `shipping_eta` date NOT NULL,
  `shipping_master_lc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_invoice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_invoice_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `progress` double NOT NULL,
  `ply` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `knitting_pattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trims` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buying_orders`
--

INSERT INTO `buying_orders` (`style`, `ref`, `sketch`, `Gauge`, `yarn_ref_details`, `colors`, `pi_date`, `yarn_status`, `contract_weight`, `customer`, `po`, `po_recieved_date`, `qty`, `sizing`, `main_label`, `hang_tag`, `accys_status`, `trims_status`, `handover_date`, `fit_sample_sent`, `courier_no`, `fit_sample_comments`, `fg`, `production_status_details`, `production_condition`, `photo_sample`, `shipping_sample_required`, `shipping_sample_sent`, `shipping_sent_courier_no`, `shipping_sample_comments`, `actual_production_weight`, `confirmed_price`, `inspection_date`, `inspection_status`, `handedover_date`, `handedover_qty`, `short_excess`, `value`, `doc_sent_courier_no`, `remarks`, `merchandiser_id`, `created_at`, `updated_at`, `id`, `supplier_id`, `session`, `number`, `customer_dept`, `type`, `weight`, `price`, `accessories`, `overseas_accessories`, `accessories_status_date`, `care_label_composition`, `ca_rn`, `packing`, `original_ho_date`, `proposed_ho_date`, `approval_status`, `approval_status_date`, `next_sample`, `status`, `status_date`, `yarn`, `dyeing_order`, `dyeing_order_date`, `size_set`, `size_set_date`, `production`, `production_date`, `knitting`, `linking`, `finishing`, `shipping_req`, `shipping_status`, `approved_weight`, `shipping_date`, `mode`, `destination`, `shipping_hbl_awb`, `shipping_vsl_flight`, `shipping_etd`, `shipping_eta`, `shipping_master_lc`, `shipping_invoice`, `shipping_invoice_value`, `doc_status`, `doc_date`, `payment`, `payment_date`, `progress`, `ply`, `knitting_pattern`, `trims`) VALUES
('69s709wm', 'GRF72041PD', '', '7', '100% Acrylic', 'null', '0000-00-00', '', '15.50', '6', NULL, '0000-00-00', 6105, '1x/2x-3x/4x / 3-3', '', '333', '                                        \r\n                                    ', NULL, '2017-03-29', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 0, 1411, '0000-00-00', NULL, '0000-00-00', 0, NULL, 0, '', '', 1489471811, '2017-03-14 00:13:27', '2017-03-14 23:34:53', 1489472007, 6, 'Fall 2017', '', '', '', '', '', 'ffas', 'fdsafasfas   ', '0000-00-00', '         ', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '100% Acrylic', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', 0, '2', 'Bias jersey + Milano knit', 'DTM Satin hanger loop'),
('5', '', '', '', '', '', '0000-00-00', '', '', NULL, NULL, NULL, 0, '', '', '', NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, '2017-03-14 23:52:09', '2017-03-14 23:52:09', 1489557129, 4, '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `buying_orders_colors`
--

CREATE TABLE `buying_orders_colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tooltip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '0=pending,1=approved,2=denied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `user_id`, `title`, `start`, `end`, `color`, `created_at`, `updated_at`, `reference`, `ip_address`, `reference_table`, `tooltip`, `activity_type`, `flag`) VALUES
(33, 1, 'ttt', '2017-03-24 00:03:00', '2017-02-15 00:02:00', '#4682B4', '2017-02-17 10:51:26', '2017-02-17 10:51:26', '0', '', '', '', 'event', ''),
(34, 2, 'ttt', '2017-03-24 00:03:00', '2017-02-15 00:02:00', '#4682B4', '2017-02-17 10:51:26', '2017-02-17 10:51:26', '0', '', '', '', 'event', ''),
(35, 3, 'ttt', '2017-03-24 00:03:00', '2017-02-15 00:02:00', '#4682B4', '2017-02-17 10:51:26', '2017-02-17 10:51:26', '0', '', '', '', 'event', ''),
(36, 1, 'fdsaf', '2017-02-13 00:02:00', '2017-01-16 00:01:00', '#4682B4', '2017-02-17 10:54:44', '2017-02-17 10:54:44', '0', '', '', '', 'event', ''),
(37, 2, 'fdsaf', '2017-02-13 00:02:00', '2017-01-16 00:01:00', '#4682B4', '2017-02-17 10:54:44', '2017-02-17 10:54:44', '0', '', '', '', 'event', ''),
(38, 3, 'fdsaf', '2017-02-13 00:02:00', '2017-01-16 00:01:00', '#4682B4', '2017-02-17 10:54:44', '2017-02-17 10:54:44', '0', '', '', '', 'event', ''),
(39, 1, 'fdsafas', '2017-02-08 00:02:00', '2017-02-06 00:02:00', '#FF1493', '2017-02-17 10:55:30', '2017-02-17 10:55:30', '0', '', '', '', 'event', '1'),
(40, 7, 'fdsafas', '2017-02-08 00:02:00', '2017-02-06 00:02:00', '#FF1493', '2017-02-17 10:55:30', '2017-02-17 10:55:30', '0', '', '', '', 'event', '0'),
(41, 8, 'fdsafas', '2017-02-08 00:02:00', '2017-02-06 00:02:00', '#FF1493', '2017-02-17 10:55:30', '2017-02-17 10:55:30', '0', '', '', '', 'event', '0'),
(42, 9, 'fdsafas', '2017-02-08 00:02:00', '2017-02-06 00:02:00', '#FF1493', '2017-02-17 10:55:30', '2017-02-17 10:55:30', '0', '', '', '', 'event', '0'),
(43, 1, 'a', '2017-02-25 00:02:00', '2017-02-25 00:02:00', '#4682B4', '2017-02-17 11:16:33', '2017-02-17 11:16:33', '0', '', '', '', 'event', '0'),
(44, 2, 'a', '2017-02-10 00:02:00', '2017-02-11 00:02:00', '#4682B4', '2017-02-17 11:16:34', '2017-02-17 11:16:34', '0', '', '', '', 'event', '0'),
(45, 3, 'a', '2017-02-10 00:02:00', '2017-02-11 00:02:00', '#4682B4', '2017-02-17 11:16:34', '2017-02-17 11:16:34', '0', '', '', '', 'event', '0'),
(46, 1, 'g11', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#008000', '2017-02-17 11:27:36', '2017-02-17 11:27:36', '0', '', '', '', 'event', '0'),
(47, 2, 'g', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#008000', '2017-02-17 11:27:36', '2017-02-17 11:27:36', '0', '', '', '', 'event', '0'),
(48, 3, 'g', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#008000', '2017-02-17 11:27:36', '2017-02-17 11:27:36', '0', '', '', '', 'event', '0'),
(49, 4, 'g', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#008000', '2017-02-17 11:27:36', '2017-02-17 11:27:36', '0', '', '', '', 'event', '0'),
(50, 2, 'b', '2017-02-18 00:02:00', '2017-02-18 00:02:00', '#ff0000', '2017-02-17 11:31:41', '2017-02-17 11:31:41', '0', '', '', '', 'event', '0'),
(51, 4, 'b', '2017-02-18 00:02:00', '2017-02-18 00:02:00', '#ff0000', '2017-02-17 11:31:41', '2017-02-17 11:31:41', '0', '', '', '', 'event', '0'),
(52, 5, 'b', '2017-02-18 00:02:00', '2017-02-18 00:02:00', '#ff0000', '2017-02-17 11:31:41', '2017-02-17 11:31:41', '0', '', '', '', 'event', '0'),
(53, 6, 'b', '2017-02-18 00:02:00', '2017-02-18 00:02:00', '#ff0000', '2017-02-17 11:31:41', '2017-02-17 11:31:41', '0', '', '', '', 'event', '0'),
(54, 1, 'b', '2017-02-18 00:02:00', '2017-02-18 00:02:00', '#ff0000', '2017-02-17 11:31:41', '2017-02-17 11:31:41', '0', '', '', '', 'event', '1'),
(55, 1, 'Logged in', '2017-02-17 05:34:22', '0000-00-00 00:00:00', '#000000', '2017-02-17 11:34:22', '2017-02-17 11:34:22', '1', '127.0.0.1', 'users', '', '', '1'),
(56, 1, 'Logged in', '2017-02-17 05:36:57', '0000-00-00 00:00:00', '#000000', '2017-02-17 11:36:57', '2017-02-17 11:36:57', '1', '127.0.0.1', 'users', '', '', '1'),
(57, 2, 'f', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#FF5733', '2017-02-17 12:05:21', '2017-02-17 12:05:21', '0', '', '', '', 'event', '0'),
(58, 3, 'f', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#FF5733', '2017-02-17 12:05:21', '2017-02-17 12:05:21', '0', '', '', '', 'event', '0'),
(59, 4, 'f', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#FF5733', '2017-02-17 12:05:21', '2017-02-17 12:05:21', '0', '', '', '', 'event', '0'),
(60, 5, 'f', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#FF5733', '2017-02-17 12:05:21', '2017-02-17 12:05:21', '0', '', '', '', 'event', '0'),
(61, 1, 'f', '2017-02-23 00:02:00', '2017-02-23 00:02:00', '#FF5733', '2017-02-17 12:05:22', '2017-02-17 12:05:22', '0', '', '', '', 'event', '1'),
(62, 1, 'Logged in', '2017-02-21 04:44:00', '0000-00-00 00:00:00', '#000000', '2017-02-20 22:44:00', '2017-02-20 22:44:00', '1', '127.0.0.1', 'users', '', '', '1'),
(63, 1, 'Logged in', '2017-03-01 02:48:31', '0000-00-00 00:00:00', '#000000', '2017-02-28 20:48:31', '2017-02-28 20:48:31', '1', '127.0.0.1', 'users', '', '', '1'),
(64, 1, 'Updated order information.', '2017-03-01 03:16:29', '0000-00-00 00:00:00', '#000000', '2017-02-28 21:16:29', '2017-02-28 21:16:29', '1486543352', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(65, 1, 'Logged in', '2017-03-03 01:04:20', '0000-00-00 00:00:00', '#000000', '2017-03-03 07:04:20', '2017-03-03 07:04:20', '1', '127.0.0.1', 'users', '', '', '1'),
(66, 1, 'Uploaded files.', '2017-03-03 01:08:22', '0000-00-00 00:00:00', '#000000', '2017-03-03 07:08:22', '2017-03-03 07:08:22', '1486228133', '127.0.0.1', 'documents', '', '', '1'),
(67, 1, 'Updated order information.', '2017-03-03 01:09:26', '0000-00-00 00:00:00', '#000000', '2017-03-03 07:09:26', '2017-03-03 07:09:26', '1486228133', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(68, 1, 'rocking', '2017-03-03 00:03:00', '2017-03-04 00:03:00', '#FF1493', '2017-03-03 07:11:15', '2017-03-03 07:11:15', 'fe6264ff27bdfdc5738c7468035c6b17', '', '', '', 'event', '1'),
(69, 1, 'Logged in', '2017-03-03 04:13:31', '0000-00-00 00:00:00', '#000000', '2017-03-03 10:13:31', '2017-03-03 10:13:31', '1', '127.0.0.1', 'users', '', '', '1'),
(70, 1, 'Logged in', '2017-03-10 03:53:51', '0000-00-00 00:00:00', '#000000', '2017-03-09 21:53:51', '2017-03-09 21:53:51', '1', '127.0.0.1', 'users', '', '', '1'),
(71, 1, 'Logged in', '2017-03-10 04:27:20', '0000-00-00 00:00:00', '#000000', '2017-03-09 22:27:20', '2017-03-09 22:27:20', '1', '127.0.0.1', 'users', '', '', '1'),
(72, 1, 'Logged in', '2017-03-10 08:58:21', '0000-00-00 00:00:00', '#000000', '2017-03-10 02:58:21', '2017-03-10 02:58:21', '1', '127.0.0.1', 'users', '', '', '1'),
(73, 1, 'Logged in', '2017-03-10 12:51:43', '0000-00-00 00:00:00', '#000000', '2017-03-10 06:51:43', '2017-03-10 06:51:43', '1', '127.0.0.1', 'users', '', '', '1'),
(74, 1, 'Updated order information.', '2017-03-10 03:57:16', '0000-00-00 00:00:00', '#000000', '2017-03-10 09:57:16', '2017-03-10 09:57:16', '1486228133', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(75, 1, 'Created orders.', '2017-03-10 04:05:03', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:05:03', '2017-03-10 10:05:03', '1489161903', '127.0.0.1', 'buying_orders', '', '', '1'),
(76, 1, 'Updated order information.', '2017-03-10 04:05:43', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:05:43', '2017-03-10 10:05:43', '1489161903', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(77, 1, 'Created orders.', '2017-03-10 04:08:29', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:08:29', '2017-03-10 10:08:29', '1489162109', '127.0.0.1', 'buying_orders', '', '', '1'),
(78, 1, 'Uploaded files.', '2017-03-10 04:09:07', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:09:07', '2017-03-10 10:09:07', '1489162109', '127.0.0.1', 'documents', '', '', '1'),
(79, 1, 'Updated order information.', '2017-03-10 04:12:33', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:12:33', '2017-03-10 10:12:33', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(80, 1, 'Updated order information.', '2017-03-10 04:20:39', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:20:39', '2017-03-10 10:20:39', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(81, 1, 'Updated order information.', '2017-03-10 04:21:05', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:21:05', '2017-03-10 10:21:05', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(82, 1, 'Updated order information.', '2017-03-10 04:22:52', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:22:52', '2017-03-10 10:22:52', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(83, 1, 'Updated order information.', '2017-03-10 04:24:37', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:24:37', '2017-03-10 10:24:37', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(84, 1, 'Updated order information.', '2017-03-10 04:26:48', '0000-00-00 00:00:00', '#000000', '2017-03-10 10:26:48', '2017-03-10 10:26:48', '1489162109', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(85, 1, 'Logged in', '2017-03-10 05:32:04', '0000-00-00 00:00:00', '#000000', '2017-03-10 11:32:04', '2017-03-10 11:32:04', '1', '127.0.0.1', 'users', '', '', '1'),
(86, 1, 'Logged in', '2017-03-10 05:49:13', '0000-00-00 00:00:00', '#000000', '2017-03-10 11:49:13', '2017-03-10 11:49:13', '1', '127.0.0.1', 'users', '', '', '1'),
(87, 1, 'Logged in', '2017-03-10 05:49:13', '0000-00-00 00:00:00', '#000000', '2017-03-10 11:49:13', '2017-03-10 11:49:13', '1', '127.0.0.1', 'users', '', '', '1'),
(88, 1, 'Logged in', '2017-03-10 06:27:43', '0000-00-00 00:00:00', '#000000', '2017-03-10 12:27:43', '2017-03-10 12:27:43', '1', '103.21.41.10', 'users', '', '', '1'),
(89, 1, 'Logged in', '2017-03-11 05:05:54', '0000-00-00 00:00:00', '#000000', '2017-03-10 23:05:54', '2017-03-10 23:05:54', '1', '114.130.13.193', 'users', '', '', '1'),
(90, 1, 'Logged in', '2017-03-11 05:16:23', '0000-00-00 00:00:00', '#000000', '2017-03-10 23:16:23', '2017-03-10 23:16:23', '1', '114.130.13.193', 'users', '', '', '1'),
(91, 1, 'Logged in', '2017-03-11 07:26:45', '0000-00-00 00:00:00', '#000000', '2017-03-11 01:26:45', '2017-03-11 01:26:45', '1', '175.29.186.58', 'users', '', '', '1'),
(92, 1, 'Logged in', '2017-03-13 05:44:19', '0000-00-00 00:00:00', '#000000', '2017-03-13 11:44:19', '2017-03-13 11:44:19', '1', '103.86.200.10', 'users', '', '', '1'),
(93, 1, 'Created orders.', '2017-03-13 05:44:57', '0000-00-00 00:00:00', '#000000', '2017-03-13 11:44:57', '2017-03-13 11:44:57', '1489427097', '103.86.200.10', 'buying_orders', '', '', '1'),
(94, 1, 'Updated order information.', '2017-03-13 05:45:34', '0000-00-00 00:00:00', '#000000', '2017-03-13 11:45:34', '2017-03-13 11:45:34', '1489427097', '103.86.200.10', 'buying_orders', '', 'order', '1'),
(95, 1, 'Logged in', '2017-03-14 04:51:13', '0000-00-00 00:00:00', '#000000', '2017-03-13 22:51:13', '2017-03-13 22:51:13', '1', '175.29.186.58', 'users', '', '', '1'),
(96, 1, 'Logged in', '2017-03-14 05:53:52', '0000-00-00 00:00:00', '#000000', '2017-03-13 23:53:52', '2017-03-13 23:53:52', '1', '175.29.186.58', 'users', '', '', '1'),
(97, 1, 'Logged in', '2017-03-14 05:57:30', '0000-00-00 00:00:00', '#000000', '2017-03-13 23:57:30', '2017-03-13 23:57:30', '1', '175.29.186.58', 'users', '', '', '1'),
(98, 1, 'Logged in', '2017-03-14 06:00:03', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:00:03', '2017-03-14 00:00:03', '1', '175.29.186.58', 'users', '', '', '1'),
(99, 1, 'Logged in', '2017-03-14 06:03:10', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:03:10', '2017-03-14 00:03:10', '1', '175.29.186.58', 'users', '', '', '1'),
(100, 1, 'Logged in', '2017-03-14 06:03:27', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:03:27', '2017-03-14 00:03:27', '1', '175.29.186.58', 'users', '', '', '1'),
(101, 1, 'Created orders.', '2017-03-14 06:04:01', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:04:01', '2017-03-14 00:04:01', '1489471441', '175.29.186.58', 'buying_orders', '', '', '1'),
(102, 1, 'Logged in', '2017-03-14 06:08:12', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:08:12', '2017-03-14 00:08:12', '1', '175.29.186.58', 'users', '', '', '1'),
(103, 1, 'Created an employee.', '2017-03-14 06:10:11', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:10:11', '2017-03-14 00:10:11', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(104, 1489471811, 'Logged in', '2017-03-14 06:10:44', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:10:44', '2017-03-14 00:10:44', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(105, 1489471811, 'Created orders.', '2017-03-14 06:13:27', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:13:27', '2017-03-14 00:13:27', '1489472007', '175.29.186.58', 'buying_orders', '', '', '1'),
(106, 1489471811, 'Uploaded files.', '2017-03-14 06:22:40', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:22:40', '2017-03-14 00:22:40', '1489472007', '175.29.186.58', 'documents', '', '', '1'),
(107, 1489471811, 'Updated order information.', '2017-03-14 06:25:03', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:25:03', '2017-03-14 00:25:03', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(108, 1489471811, 'Updated order information.', '2017-03-14 06:26:23', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:26:23', '2017-03-14 00:26:23', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(109, 1489471811, 'Created an employee.', '2017-03-14 06:29:08', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:29:08', '2017-03-14 00:29:08', '1489472948', '175.29.186.58', 'users', '', '', '1'),
(110, 1, 'Logged in', '2017-03-14 06:34:08', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:34:08', '2017-03-14 00:34:08', '1', '175.29.186.58', 'users', '', '', '1'),
(111, 1489472948, 'Logged in', '2017-03-14 06:34:29', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:34:29', '2017-03-14 00:34:29', '1489472948', '175.29.186.58', 'users', '', '', '1'),
(112, 1, 'Updated order information.', '2017-03-14 06:36:22', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:36:22', '2017-03-14 00:36:22', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(113, 1, 'Created an employee.', '2017-03-14 06:37:58', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:37:58', '2017-03-14 00:37:58', '1489473478', '175.29.186.58', 'users', '', '', '1'),
(114, 1, 'Logged in', '2017-03-14 06:41:12', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:41:12', '2017-03-14 00:41:12', '1', '175.29.186.58', 'users', '', '', '1'),
(115, 1, 'Created an employee.', '2017-03-14 06:42:27', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:42:27', '2017-03-14 00:42:27', '1489473747', '175.29.186.58', 'users', '', '', '1'),
(116, 1489473747, 'Logged in', '2017-03-14 06:42:59', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:42:59', '2017-03-14 00:42:59', '1489473747', '175.29.186.58', 'users', '', '', '1'),
(117, 1489473747, 'Updated emplooyee information.', '2017-03-14 06:43:32', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:43:32', '2017-03-14 00:43:32', '1489473478', '175.29.186.58', 'users', 'Updated emplooyee information.', '', '1'),
(118, 1489473747, 'Updated emplooyee information.', '2017-03-14 06:43:59', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:43:59', '2017-03-14 00:43:59', '1489473747', '175.29.186.58', 'users', 'Updated emplooyee information.', '', '1'),
(119, 1489473747, 'Logged in', '2017-03-14 06:44:17', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:44:17', '2017-03-14 00:44:17', '1489473747', '175.29.186.58', 'users', '', '', '1'),
(120, 1489473747, 'Updated emplooyee information.', '2017-03-14 06:45:12', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:45:12', '2017-03-14 00:45:12', '1489473747', '175.29.186.58', 'users', 'Updated emplooyee information.', '', '1'),
(121, 1489473747, 'Logged in', '2017-03-14 06:45:31', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:45:31', '2017-03-14 00:45:31', '1489473747', '175.29.186.58', 'users', '', '', '1'),
(122, 1489471811, 'Created an employee.', '2017-03-14 06:46:03', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:46:03', '2017-03-14 00:46:03', '1489473962', '175.29.186.58', 'users', '', '', '1'),
(123, 1489473962, 'Logged in', '2017-03-14 06:46:43', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:46:43', '2017-03-14 00:46:43', '1489473962', '175.29.186.58', 'users', '', '', '1'),
(124, 1489473747, 'Logged in', '2017-03-14 06:47:16', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:47:16', '2017-03-14 00:47:16', '1489473747', '175.29.186.58', 'users', '', '', '1'),
(125, 1489473962, 'Updated order information.', '2017-03-14 06:47:31', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:47:31', '2017-03-14 00:47:31', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(126, 1489473747, 'Updated order information.', '2017-03-14 06:48:20', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:48:20', '2017-03-14 00:48:20', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(127, 1489473962, 'Updated order information.', '2017-03-14 06:52:39', '0000-00-00 00:00:00', '#000000', '2017-03-14 00:52:39', '2017-03-14 00:52:39', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(128, 1489471811, 'Logged in', '2017-03-14 07:02:20', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:02:20', '2017-03-14 01:02:20', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(129, 1489471811, 'Created an employee.', '2017-03-14 07:03:26', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:03:26', '2017-03-14 01:03:26', '1489475006', '175.29.186.58', 'users', '', '', '1'),
(130, 1489475006, 'Logged in', '2017-03-14 07:04:39', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:04:39', '2017-03-14 01:04:39', '1489475006', '175.29.186.58', 'users', '', '', '1'),
(131, 1489471811, 'Logged in', '2017-03-14 07:10:27', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:10:27', '2017-03-14 01:10:27', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(132, 1489471811, 'Updated order information.', '2017-03-14 07:12:00', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:12:00', '2017-03-14 01:12:00', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(133, 1489471811, 'Updated order information.', '2017-03-14 07:14:57', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:14:57', '2017-03-14 01:14:57', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(134, 1489471811, 'Updated order information.', '2017-03-14 07:16:34', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:16:34', '2017-03-14 01:16:34', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(135, 1489471811, 'Updated order information.', '2017-03-14 07:16:47', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:16:47', '2017-03-14 01:16:47', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(136, 1489471811, 'Updated order information.', '2017-03-14 07:16:47', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:16:47', '2017-03-14 01:16:47', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(137, 1489471811, 'Updated order information.', '2017-03-14 07:18:00', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:18:00', '2017-03-14 01:18:00', '1489472007', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(138, 1489471811, 'Logged in', '2017-03-14 07:30:52', '0000-00-00 00:00:00', '#000000', '2017-03-14 01:30:52', '2017-03-14 01:30:52', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(139, 1489473962, 'Logged in', '2017-03-14 08:45:15', '0000-00-00 00:00:00', '#000000', '2017-03-14 02:45:15', '2017-03-14 02:45:15', '1489473962', '175.29.186.58', 'users', '', '', '1'),
(140, 1489471811, 'Logged in', '2017-03-14 08:49:08', '0000-00-00 00:00:00', '#000000', '2017-03-14 02:49:08', '2017-03-14 02:49:08', '1489471811', '175.29.186.58', 'users', '', '', '1'),
(141, 1489471811, 'Created an employee.', '2017-03-14 08:50:34', '0000-00-00 00:00:00', '#000000', '2017-03-14 02:50:34', '2017-03-14 02:50:34', '1489481434', '175.29.186.58', 'users', '', '', '1'),
(142, 1489481434, 'Logged in', '2017-03-14 08:52:16', '0000-00-00 00:00:00', '#000000', '2017-03-14 02:52:16', '2017-03-14 02:52:16', '1489481434', '175.29.186.58', 'users', '', '', '1'),
(143, 1489481434, 'Logged in', '2017-03-14 08:54:40', '0000-00-00 00:00:00', '#000000', '2017-03-14 02:54:40', '2017-03-14 02:54:40', '1489481434', '175.29.186.58', 'users', '', '', '1'),
(144, 1, 'Logged in', '2017-03-14 05:52:28', '0000-00-00 00:00:00', '#000000', '2017-03-14 11:52:28', '2017-03-14 11:52:28', '1', '103.86.200.10', 'users', '', '', '1'),
(145, 1, 'Updated order information.', '2017-03-14 06:03:56', '0000-00-00 00:00:00', '#000000', '2017-03-14 12:03:56', '2017-03-14 12:03:56', '1489472007', '103.86.200.10', 'buying_orders', '', 'order', '1'),
(146, 1, 'Updated order information.', '2017-03-14 06:03:58', '0000-00-00 00:00:00', '#000000', '2017-03-14 12:03:58', '2017-03-14 12:03:58', '1489472007', '103.86.200.10', 'buying_orders', '', 'order', '1'),
(147, 1, 'Updated order information.', '2017-03-14 06:04:12', '0000-00-00 00:00:00', '#000000', '2017-03-14 12:04:12', '2017-03-14 12:04:12', '1489472007', '103.86.200.10', 'buying_orders', '', 'order', '1'),
(148, 1, 'Logged in', '2017-03-15 02:32:10', '0000-00-00 00:00:00', '#000000', '2017-03-14 20:32:10', '2017-03-14 20:32:10', '1', '103.86.200.10', 'users', '', '', '1'),
(149, 1, 'Logged in', '2017-03-15 04:44:49', '0000-00-00 00:00:00', '#000000', '2017-03-14 22:44:49', '2017-03-14 22:44:49', '1', '127.0.0.1', 'users', '', '', '1'),
(150, 1, 'Updated order information.', '2017-03-15 05:05:49', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:05:49', '2017-03-14 23:05:49', '1489472007', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(151, 1, 'Updated order information.', '2017-03-15 05:29:22', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:29:22', '2017-03-14 23:29:22', '1489472007', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(152, 1, 'Updated order information.', '2017-03-15 05:34:54', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:34:54', '2017-03-14 23:34:54', '1489472007', '127.0.0.1', 'buying_orders', '', 'order', '1'),
(153, 1, 'Created an employee.', '2017-03-15 05:49:48', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:49:48', '2017-03-14 23:49:48', '1489556988', '127.0.0.1', 'users', '', '', '1'),
(154, 1, 'Created an employee.', '2017-03-15 05:50:17', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:50:17', '2017-03-14 23:50:17', '1489557017', '127.0.0.1', 'users', '', '', '1'),
(155, 1, 'Created orders.', '2017-03-15 05:52:09', '0000-00-00 00:00:00', '#000000', '2017-03-14 23:52:09', '2017-03-14 23:52:09', '1489557129', '127.0.0.1', 'buying_orders', '', '', '1'),
(156, 1, 'Logged in', '2017-06-17 06:45:47', '0000-00-00 00:00:00', '#000000', '2017-06-17 00:45:47', '2017-06-17 00:45:47', '1', '::1', 'users', '', '', '1'),
(157, 1, 'Logged in', '2017-10-29 05:45:38', '0000-00-00 00:00:00', '#000000', '2017-10-28 23:45:38', '2017-10-28 23:45:38', '1', '::1', 'users', '', '', '1'),
(158, 1, 'Logged in', '2017-10-29 06:02:12', '0000-00-00 00:00:00', '#000000', '2017-10-29 00:02:12', '2017-10-29 00:02:12', '1', '::1', 'users', '', '', '1'),
(159, 1, 'Logged in', '2017-11-02 11:49:44', '0000-00-00 00:00:00', '#000000', '2017-11-02 05:49:44', '2017-11-02 05:49:44', '1', '::1', 'users', '', '', '1'),
(160, 1, 'Logged in', '2017-11-06 10:28:01', '0000-00-00 00:00:00', '#000000', '2017-11-06 04:28:01', '2017-11-06 04:28:01', '1', '::1', 'users', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rd_card_dt` date NOT NULL,
  `received_date` date NOT NULL,
  `sub_date` date NOT NULL,
  `approved_date` date NOT NULL,
  `rejected_date` date NOT NULL,
  `re_sub_date` date NOT NULL,
  `rs_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `yarn_type` int(11) NOT NULL,
  `l_dip_req_dT` date NOT NULL,
  `re_l_d_rcvd_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `session`, `rd_card_dt`, `received_date`, `sub_date`, `approved_date`, `rejected_date`, `re_sub_date`, `rs_no`, `card`, `shade`, `status`, `remarks`, `created_at`, `updated_at`, `yarn_type`, `l_dip_req_dT`, `re_l_d_rcvd_date`) VALUES
(1, 'Red', 'Fall', '2017-03-01', '2017-03-02', '2017-03-03', '2017-03-04', '2017-03-05', '2017-03-06', '1', '2', '3', '4', '5', NULL, NULL, 1, '2017-03-30', '2017-03-29'),
(2, 'Blue', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(3, 'Green', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(4, 'Pink', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 5, '0000-00-00', '0000-00-00'),
(5, 'Pink', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(6, 'Magenta', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 6, '0000-00-00', '0000-00-00'),
(7, 'Magenta', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(8, 'Light Blue', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '1', NULL, '2017-03-13 11:55:11', 1, '0000-00-00', '0000-00-00'),
(9, 'Light Blue', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 4, '0000-00-00', '0000-00-00'),
(10, 'Gold', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(11, 'Gold', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(12, 'Orange', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 6, '0000-00-00', '0000-00-00'),
(13, 'Orange', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(1489139668, '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 03:54:28', '2017-03-10 03:54:28', 0, '0000-00-00', '0000-00-00'),
(1489139751, 'Sky Blue', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 03:55:51', '2017-03-10 03:55:51', 3, '0000-00-00', '0000-00-00'),
(1489150392, 'Dark Green', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 06:53:12', '2017-03-10 06:53:12', 0, '0000-00-00', '0000-00-00'),
(1489150404, 'Light Red', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 06:53:24', '2017-03-10 06:53:24', 0, '0000-00-00', '0000-00-00'),
(1489150988, 'XYZ', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 07:03:08', '2017-03-10 07:03:08', 0, '0000-00-00', '0000-00-00'),
(1489151045, '111', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 07:04:05', '2017-03-10 07:04:05', 0, '0000-00-00', '0000-00-00'),
(1489160188, 'ttt', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-10 09:36:28', '2017-03-10 09:36:28', 0, '0000-00-00', '0000-00-00'),
(1489160267, '1', '2', '2017-01-02', '2017-02-02', '2017-03-02', '2017-05-02', '0000-00-00', '0000-00-00', '4', '5', '7', '6', '4', '2017-03-10 09:37:47', '2017-03-10 09:42:55', 0, '0000-00-00', '0000-00-00'),
(1489160708, 'Silver', 'Summer', '2017-01-02', '2017-02-02', '2017-03-02', '2017-04-02', '2017-05-02', '2017-06-02', '1', '23', '3', '4', '555', '2017-03-10 09:45:08', '2017-03-10 09:59:56', 2, '2017-07-02', '2017-02-24'),
(1489475276, 'U-547 White Beach', 'Fall 2017', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 01:07:56', '2017-03-14 01:08:30', 1, '0000-00-00', '0000-00-00'),
(1489475401, 'H-34 Black', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 01:10:01', '2017-03-14 01:10:01', 0, '0000-00-00', '0000-00-00'),
(1489475405, 'H-34 Black', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 01:10:05', '2017-03-14 01:10:05', 0, '0000-00-00', '0000-00-00'),
(1489475457, 'H-34 Black', 'Fall 2017', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 01:10:57', '2017-03-14 01:11:24', 1, '0000-00-00', '0000-00-00'),
(1489481608, 'X-72 ASH GREY MELANGE', 'FALL 2017', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 02:53:28', '2017-03-14 02:53:57', 0, '0000-00-00', '0000-00-00'),
(1489481716, 'X-72 ASH GREY MEL', 'FALL 2017', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '2017-03-14 02:55:16', '2017-03-14 02:55:37', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `reference_id`, `filename`, `file_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1486262469, '1486312774.jpeg', 'PO', '', '2016-11-23 10:39:34', '2017-02-05 10:39:34'),
(2, 1486262469, '1486313512.jpeg', 'Picture', '', '2017-02-16 10:51:52', '2017-02-05 10:51:52'),
(3, 1486262469, '1486313677.jpeg', 'Report', '', '2017-02-05 10:54:37', '2017-02-05 10:54:37'),
(4, 0, '', '', '', '2017-02-05 11:41:50', '2017-02-05 11:41:50'),
(5, 0, 'no_image.png', '', '', '2017-02-05 11:43:23', '2017-02-05 11:43:23'),
(6, 0, 'no_image.png', '', '', '2017-02-05 11:43:38', '2017-02-05 11:43:38'),
(7, 0, 'no_image.png', 'PO', '', '2017-02-05 21:26:21', '2017-02-05 21:26:21'),
(8, 0, 'no_image.png', 'PO', '3333', '2017-02-05 21:27:24', '2017-02-05 21:27:24'),
(9, 0, 'no_image.png', 'PO', '3333', '2017-02-05 21:27:56', '2017-02-05 21:27:56'),
(10, 1486543352, '1486544001.pdf', 'PO', '', '2017-02-08 02:53:21', '2017-02-08 02:53:21'),
(11, 1486228133, '1488546501.jpeg', 'PO', '', '2017-03-03 07:08:22', '2017-03-03 07:08:22'),
(12, 1489162109, '1489162147.jpeg', 'Picture', '', '2017-03-10 10:09:07', '2017-03-10 10:09:07'),
(13, 1489472007, '1489472560.pdf', 'PO', 'Qty b/d written on CAD by Monica on 3/5.', '2017-03-14 00:22:40', '2017-03-14 00:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_no` int(11) NOT NULL,
  `title` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` date DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acc_holder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acc_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acc_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dept_head` tinyint(1) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `supervisor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_no`, `title`, `address_line_1`, `address_line_2`, `town`, `city`, `postcode`, `dob`, `tel`, `mob`, `join_date`, `salary`, `acc_holder`, `acc_no`, `branch`, `acc_city`, `ifsc_code`, `dept_head`, `flag`, `supervisor`, `created_at`, `updated_at`, `gender`, `photo`, `deleted_at`) VALUES
(1, 0, '', '', '', '', '', '', NULL, '', '2222', NULL, '', '', '', '', '', '', 0, 0, 0, NULL, NULL, '', '', NULL),
(1489471811, 0, '', '', '', '', '', '', NULL, '', '01714116540', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 00:10:11', '2017-03-14 00:10:11', '', '', NULL),
(1489472948, 0, '', '', '', '', '', '', NULL, '', '01678121282', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 00:29:08', '2017-03-14 00:29:08', '', '', NULL),
(1489473478, 0, '', '', '', '', '', '', NULL, '', '01713034456', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 00:37:58', '2017-03-14 00:37:58', '', '', NULL),
(1489473747, 0, '', '', '', '', '', '', NULL, '', '01713034456', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 00:42:27', '2017-03-14 00:45:12', '', '', NULL),
(1489473962, 0, '', '', '', '', '', '', NULL, '', '01619768836', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 00:46:03', '2017-03-14 00:46:03', '', '', NULL),
(1489475006, 0, '', '', '', '', '', '', NULL, '', '01711232737', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 01:03:26', '2017-03-14 01:03:26', '', '', NULL),
(1489481434, 0, '', '', '', '', '', '', NULL, '', '01712111007', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 02:50:34', '2017-03-14 02:50:34', '', '', NULL),
(1489556988, 0, '', '', '', '', '', '', NULL, '', 'd', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 23:49:48', '2017-03-14 23:49:48', '', '', NULL),
(1489557017, 0, '', '', '', '', '', '', NULL, '', 'dddd', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 23:50:17', '2017-03-14 23:50:17', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_05_28_181841_alter_table_users_0018', 1),
(4, '2016_05_30_031841_create_table_employees_0918', 1),
(5, '2016_05_30_032638_alter_table_users_0926', 1),
(6, '2016_05_30_034218_create_table_deptartments_0941', 1),
(7, '2016_05_30_034241_create_table_designations_0941', 1),
(8, '2016_05_30_072934_alter_table_designations_1302', 1),
(9, '2016_05_30_134206_alter_table_preferences_1941', 1),
(10, '2016_05_31_060027_create_table_suppliers', 1),
(11, '2016_05_31_074533_alter_table_suppliers_1344', 1),
(12, '2016_05_31_075037_create_table_countries', 1),
(13, '2016_05_31_082812_create_table_supplier_types', 1),
(14, '2016_05_31_085413_alter_table_suppliers', 1),
(15, '2016_06_02_092351_alter_table_employees_1523', 1),
(16, '2016_06_02_163530_alter_table_employees_2235', 1),
(17, '2016_06_02_163806_create_table_roles', 1),
(18, '2016_06_02_164451_alter_table_users_2244', 1),
(19, '2016_06_02_174918_alter_table_employees_2345', 1),
(20, '2016_06_02_181624_alter_table_employees_0011', 1),
(21, '2016_06_02_201305_alter_table_employees_0212', 1),
(22, '2016_06_03_041054_create_table_orders', 1),
(23, '2016_06_06_042217_create_table_brands', 1),
(24, '2016_06_06_042249_create_table_agents', 1),
(25, '2016_06_06_042304_create_table_buyers', 1),
(26, '2016_06_06_042338_create_table_styles', 1),
(27, '2016_06_13_090318_alter_table_orders', 1),
(28, '2016_06_15_083132_alter_table_orders_001432', 1),
(29, '2016_07_03_093836_create_requisition_table', 1),
(30, '2016_07_03_094514_create_table_requisition_type', 1),
(31, '2016_07_03_095210_create_table_requisition_items', 1),
(32, '2016_07_03_122638_alter_table_requisitions', 1),
(33, '2016_07_03_122655_alter_table_requisition_items', 1),
(34, '2016_07_04_192752_alter_table_requisition_0114', 1),
(35, '2016_07_04_201432_create_table_notifications', 1),
(36, '2016_07_05_102316_alter_table_notification_1632', 1),
(37, '2016_07_05_202938_alter_table_requisitions_0223', 1),
(38, '2016_07_06_093237_alter_table_orders_1432', 1),
(39, '2016_11_09_142814_alter_buyers_table_2034', 1),
(40, '2016_11_20_080331_alter_table_buyers', 1),
(41, '2016_11_20_084434_alter_table_1332', 1),
(42, '2016_12_01_030530_alter_table_buyer_0902', 1),
(43, '2016_12_07_030950_alter_table_style_0202', 1),
(44, '2016_12_07_031331_alter_table_styles_0923', 1),
(45, '2016_12_08_131532_alter_table_supplier_types22', 1),
(46, '2016_12_08_135107_alter_table_supplier_types2222', 1),
(47, '2016_12_09_033618_alter_table_suppliers44', 1),
(48, '2016_12_09_034254_alter_table_suppliers44117', 1),
(49, '2016_12_09_035608_alter_table_suppliers244117', 1),
(50, '2016_12_10_031804_alter_table_orders_1243', 1),
(51, '2016_12_11_160306_alter_table_orders213', 1),
(52, '2016_12_14_060334_alter_table_req_items_324', 1),
(53, '2016_12_14_065013_alter_table_req_items_3242', 1),
(54, '2016_12_17_101249_alter_table_orders_214', 1),
(55, '2016_12_18_045745_alter_table_requisition_items_3245', 1),
(56, '2016_12_18_050856_alter_table_orders_3523', 1),
(57, '2016_12_18_065747_create_activities_table', 1),
(58, '2016_12_22_054609_alter_table_buyers_214', 1),
(59, '2016_12_27_055458_create_table_report', 1),
(60, '2016_12_27_061709_alter_table_reports_34532', 1),
(61, '2016_12_28_111308_alter_table_orders_324', 1),
(62, '2016_12_28_163508_alter_table_orders_432', 1),
(63, '2016_12_29_030815_alter_table_orders_532', 1),
(64, '2016_12_29_075734_alter_table_users', 1),
(65, '2016_12_29_122032_alter_table_users3', 1),
(66, '2016_12_31_031645_alter_table_suppliers_455', 1),
(67, '2016_12_31_040914_alter_table_requisitions_33432', 1),
(68, '2016_12_31_041145_alter_table_requisitions_333432', 1),
(69, '2016_12_31_123732_alter_table_buyers_3424', 1),
(70, '2016_12_31_142041_alter_table_buyers_42', 1),
(71, '2016_12_31_142227_alter_table_buyers_342', 1),
(72, '2016_12_31_143622_alter_table_orders_43243', 1),
(73, '2017_01_12_051708_alter_table_buying_orders', 1),
(74, '2017_01_15_093705_alter_table_buying_orders_33', 1),
(75, '2017_01_15_094533_alter_table_buying_orders_331', 1),
(76, '2017_01_15_095206_alter_table_buying_orders_1331', 1),
(77, '2017_01_15_095720_alter_table_buying_orders_21331', 1),
(78, '2017_01_15_095948_alter_table_buying_orders_211331', 1),
(79, '2017_01_17_093508_alter_table_buying_orders_2', 1),
(80, '2017_01_17_111342_alter_table_buying_orders_22', 1),
(81, '2017_01_17_113310_alter_table_buying_orders_222', 1),
(82, '2017_01_19_071955_alter_table_employees_333', 1),
(83, '2017_01_24_033059_alter_table_buying_orders_32', 1),
(84, '2017_01_24_033640_alter_table_buying_orders_4334', 1),
(85, '2017_01_24_034414_alter_table_buying_orders_42334', 1),
(86, '2017_01_28_134817_alter_table_employees_334', 1),
(87, '2017_01_28_174912_alter_table_employees_3334', 1),
(88, '2017_01_29_073033_alter_table_suppliers_334', 1),
(89, '2017_01_30_032301_alter_table_buying_orders_5353', 1),
(90, '2017_01_31_153458_create_table_buying_colors', 1),
(91, '2017_01_31_183431_alter_table_users_444', 1),
(92, '2017_02_03_023543_alter_table_buying_orders_33321', 1),
(93, '2017_02_03_024726_alter_table_buying_orders_33fsda', 1),
(94, '2017_02_03_041158_create_table_documents', 1),
(95, '2017_02_04_092525_alter_table_buying_order_2', 1),
(96, '2017_02_04_095958_alter_table_buying_order_12', 1),
(97, '2017_02_05_083016_alter_table_buying_orders_423', 2),
(98, '2017_02_05_093608_alter_table_user233', 2),
(99, '2017_02_05_153558_alter_table_buying_orders_4323', 3),
(100, '2017_02_07_093856_create_table_calendars', 4),
(101, '2017_02_07_094347_alter_table_calendar_432', 4),
(102, '2017_02_07_105751_alter_table_calendars_32543', 4),
(103, '2017_02_07_110324_alter_table_calendars_32', 4),
(104, '2017_02_07_113501_alter_table_calendars_1132', 4),
(105, '2017_02_17_165338_alter_table_calendars_432', 5),
(106, '2017_02_17_173545_alter_table_calendars_2432', 6),
(107, '2017_02_18_050243_alter_table_calendars_43', 7),
(108, '2017_03_01_034709_create_table_pricecharts', 8),
(109, '2017_03_01_050610_alter_table_pricechats_4', 9),
(110, '2017_03_09_135040_create_table_colors', 10),
(111, '2017_03_10_044718_alter_table_colors_43443', 11),
(112, '2017_03_10_091341_create_table_yarn_type', 12),
(113, '2017_03_10_092942_create_table_colors_444', 13),
(114, '2017_03_10_093200_alter_table_colors_444', 14),
(115, '2017_03_10_094137_alter_table_colors_44421', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_of_notifications` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landing_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clicked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_sender_id` int(11) NOT NULL,
  `last_sender_profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `style_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `buyer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `gg` tinyint(4) NOT NULL,
  `qty` int(11) NOT NULL,
  `fob` double NOT NULL,
  `weight_per_dzn` double NOT NULL,
  `qty_per_dzn` double NOT NULL,
  `total_yarn_weight` double NOT NULL,
  `total_yarn_cost` double NOT NULL,
  `acc_rate` double NOT NULL,
  `total_acc_cost` double NOT NULL,
  `btn_cost` double NOT NULL,
  `total_btn_cost` double NOT NULL,
  `zipper_cost` double NOT NULL,
  `total_zipper_cost` double NOT NULL,
  `print_cost` double NOT NULL,
  `total_print_cost` double NOT NULL,
  `total_fob` double NOT NULL,
  `total_cost` double NOT NULL,
  `balance_amount` double NOT NULL,
  `cost_of_making` double NOT NULL,
  `compositions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lc_confirmed` tinyint(4) NOT NULL,
  `lc_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved_yarn_amount` double NOT NULL,
  `approved_acc_amount` double NOT NULL,
  `approved_btn_amount` double NOT NULL,
  `approved_zipper_amount` double NOT NULL,
  `approved_print_amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `security_tag_cost` double NOT NULL,
  `total_security_tag_cost` double NOT NULL,
  `approved_security_tag_cost` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '7=hold, 8=shipped, 9=cancelled,',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricecharts`
--

CREATE TABLE `pricecharts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `price_details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_supplier` int(11) NOT NULL,
  `confirmed_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pricecharts`
--

INSERT INTO `pricecharts` (`id`, `order_id`, `price_details`, `created_at`, `updated_at`, `confirmed_supplier`, `confirmed_price`) VALUES
(4, 1486543352, '{"_token":"Zr71yFkjzM9zwpct0GiDZcIOum0N79m2zPdlWZG3","orderid":"1486543352","data-table-simple_length":"10","supplier_name":{"2":"2","1":"1","3":"3"},"price":{"2":"2","1":"3","3":"411"},"weight":{"2":"2","1":"3","3":"4"}}', '2017-02-28 22:47:20', '2017-02-28 22:47:20', 1, 3),
(5, 1489427097, '{"_token":"rEx3yjliwseRc6jJJ8UNQWX18gQ6tOMPP4brHN3g","orderid":"1489427097","data-table-simple_length":"10","supplier_name":{"2":"2","1":"1","3":"3"},"price":{"2":"13","1":"16","3":"17"},"weight":{"2":"14","1":"5","3":"18"}}', '2017-03-13 11:53:34', '2017-03-13 11:53:34', 1, 16),
(6, 1489472007, '{"_token":"8TVhMORqvQ5M2u7lU1081q0D7DJYiBhtM3aSrgqd","orderid":"1489472007","data-table-simple_length":"10","supplier_name":{"6":"6","4":"4"},"price":{"6":"1411","4":"5.4111"},"weight":{"6":"12","4":"15.50"}}', '2017-03-14 00:17:29', '2017-03-14 00:17:29', 6, 1411),
(7, 1489557129, '{"_token":"8TVhMORqvQ5M2u7lU1081q0D7DJYiBhtM3aSrgqd","orderid":"1489557129","data-table-simple_length":"10","supplier_name":{"7":"7","6":"6","4":"4"},"price":{"7":"1","6":"2","4":"3"},"weight":{"7":"11","6":"22","4":"33"}}', '2017-03-14 23:57:27', '2017-03-14 23:57:27', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_criteria` text COLLATE utf8_unicode_ci NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `report_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `forwarded_to` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `requested_amount` double NOT NULL,
  `approved_amount` double NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisition_items`
--

CREATE TABLE `requisition_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `items_val` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `requisition_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `requested_amount` double NOT NULL,
  `approved_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisition_types`
--

CREATE TABLE `requisition_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_type_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `postal_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `merchandiser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `image_thumbnail`, `contact_person`, `email_address`, `supplier_type_id`, `created_at`, `updated_at`, `contact_number`, `postal_address`, `image`, `website`, `user_id`, `deleted_at`, `merchandiser_id`) VALUES
(4, 'Sweatertech', '', 'Mr. Samoo', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0),
(6, 'aa', '', '', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0),
(7, '111', '', '', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_types`
--

CREATE TABLE `supplier_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept_id` int(11) NOT NULL DEFAULT '0',
  `designation_id` int(11) NOT NULL DEFAULT '0',
  `emp_role` tinyint(1) NOT NULL,
  `verification_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `logged_in` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not logged in, 1=logged in'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `last_name`, `dept_id`, `designation_id`, `emp_role`, `verification_code`, `flag`, `logged_in`) VALUES
(1, 'Mae', 'aseefahmed@gmail.com', '$2y$10$Gl.RHmVfWchoPGNrl5Gw/upUrrW2jM4AtWn0GJIzbzTE6ELI6Cj7W', 'u4CGACwHhiS1m4dd9gFnGTUjQkp7hfzmwWQJuVXKtPzEmYz9rjqwa8ZZahfS', NULL, '2017-03-14 00:03:17', '', 3, 21, 1, '', '1', 1),
(2, 'Velma', 'vergie72@yahoo.com', '$2y$10$fJcjuSTByr.i2V0/rIBaiegtgExvemu8VwMdRXROVqTjnaExExG7m', NULL, NULL, NULL, '', 3, 7, 10, '', '1', 0),
(3, 'Omer', 'luettgen.colin@gmail.com', '$2y$10$V.JIJSyDrspTMdJlsxXVnOH9eWaunlGz8mZEomHoMvgxhN/rZJNQe', NULL, NULL, NULL, '', 1, 5, 10, '', '1', 0),
(4, 'Colin', 'mae.littel@sawayn.org', '$2y$10$na6.qFrn4/fI97k2ns648.VYKTodWCnTiDf1W9QSkLbCdH5HGp6L.', NULL, NULL, NULL, '', 10, 12, 0, '', '', 0),
(5, 'Fannie', 'cormier.candelario@yahoo.com', '$2y$10$x1VOVWGxstm74pGh/yBoMOYIPk7lyPKZEe.ZH21E3jtdWbiKUIGk6', NULL, NULL, NULL, '', 10, 9, 10, '', '1', 0),
(6, 'Margarette', 'bpaucek@luettgen.com', '$2y$10$kgso/QYIDDA8w..hRDYi/eyiaartT3H2qY3tuaOjfYFxL1UXKa8Ve', NULL, NULL, NULL, '', 8, 12, 0, '', '', 0),
(7, 'Telly', 'oeffertz@gmail.com', '$2y$10$88m0YJ6.esX.wv1sc.cI/.9UMost/YaDcSifQpU3ybJiOREjSvY4a', NULL, NULL, NULL, '', 8, 19, 10, '', '1', 0),
(8, 'Gwen', 'lazaro.murray@gmail.com', '$2y$10$xwoctGX40yDiWEeMM4KhbOPNJBwTqJCBFscifjnomkgknobmbUdYm', NULL, NULL, NULL, '', 1, 8, 0, '', '', 0),
(9, 'Eugene', 'ottis94@swift.com', '$2y$10$mj4hAAl/j1gdIPmbKsK9T.ijmdp7cEAcILoVrWROJvu66F.ElDRcC', NULL, NULL, NULL, '', 9, 21, 0, '', '', 0),
(10, 'Sigmund', 'bokon@gmail.com', '$2y$10$Cela5zlC7ZF5KlC8kCBXQe57r4b74HrmdPih.taXKGiiJ8YiP0Jay', NULL, NULL, NULL, '', 9, 2, 0, '', '', 0),
(11, 'Kaela', 'tre43@hotmail.com', '$2y$10$2qraul5JYOfnV1BAbcZR1./Ub0/i4IxB0tnmsaJo5zbeMSJMdt2p6', NULL, NULL, NULL, '', 7, 2, 0, '', '', 0),
(12, 'Janie', 'amanda.moen@yahoo.com', '$2y$10$G0m0VNoklVZAvHGZ8IXfjuczb1Txqq0nGY3kFJQnQ2FmdbI4Yzt76', NULL, NULL, NULL, '', 7, 17, 0, '', '', 0),
(13, 'Stanford', 'timmy.ward@steuber.com', '$2y$10$lkPRQ87BXZe3BIUQTCd6UucSc.HDFxXhtKU55JTuokDD9rOOX/kfq', NULL, NULL, NULL, '', 4, 7, 0, '', '', 0),
(14, 'Melany', 'gdoyle@leuschke.info', '$2y$10$kewN/whf2i4unWE2J2Rhy.RwCiyT.3zoBWpe.fuJL3Nzc4M4t8W0C', NULL, NULL, NULL, '', 2, 10, 0, '', '', 0),
(15, 'Werner', 'smitham.bertram@yahoo.com', '$2y$10$zDHYa0AL/jWFs4DQmsWeLu9MmOqOKlJzabAQCPkIPfiL8bqcwV0B.', NULL, NULL, NULL, '', 1, 18, 0, '', '', 0),
(16, 'Margaret', 'jayde.price@hotmail.com', '$2y$10$Nv.6OFm0FaRCy.i0YEt0t.w./D3LViO7tngNx0oDjU3bW2a0/6AzK', NULL, NULL, NULL, '', 1, 4, 0, '', '', 0),
(17, 'Roberta', 'hintz.zackery@yahoo.com', '$2y$10$2e.R42/J/kbF69OPCmI0Oeu4ko1Q1KqvEUO13kSpQrdofBhTJ7VQ.', NULL, NULL, NULL, '', 1, 11, 0, '', '', 0),
(18, 'Annamae', 'bode.sarai@mueller.com', '$2y$10$foXl.VC51RfBpANmXmlDROw30YrRasdJGcQCuYIuXXr23T05pxA.e', NULL, NULL, NULL, '', 5, 1, 0, '', '', 0),
(19, 'Pamela', 'neoma.legros@gmail.com', '$2y$10$gbcsQV/aIw7pMa8ziZ3ffeOpvMDfulh07NzO2tZ3HPCfAKxmq1fnu', NULL, NULL, NULL, '', 3, 10, 0, '', '', 0),
(20, 'Kyla', 'dcormier@gmail.com', '$2y$10$lAra7E5qVIfUvyi/j/jPLu7wqtcXku.uKEsjdHqRq5eV84.UEqXty', NULL, NULL, NULL, '', 2, 2, 0, '', '', 0),
(21, 'Audie', 'annamarie29@hotmail.com', '$2y$10$oqYkStd8m21hc/oEYFar/uDdCesG2cQzOBAUt5ZMDT7umu9Tt.mlS', NULL, NULL, NULL, '', 6, 19, 0, '', '', 0),
(22, 'Willie', 'nstokes@douglas.com', '$2y$10$xnv51BzKf4Cl6JMjVE5XDOfeGXqqmANJVkjH.U7Ik8P0UzAxDrzTG', NULL, NULL, NULL, '', 5, 17, 0, '', '', 0),
(23, 'Edyth', 'bret24@gmail.com', '$2y$10$Z2anaYMhQneXiPmMjVOZKumxZfOoU8cnnrw9q6MzOYLhNviZWwH8G', NULL, NULL, NULL, '', 10, 6, 0, '', '', 0),
(24, 'Marcus', 'labadie.anne@huel.com', '$2y$10$j5ufEe/rucqP.PCt6WcuIe9aZ1UwfdE7L4NqFgd0Y4ENsJpNH3DPO', NULL, NULL, NULL, '', 1, 20, 0, '', '', 0),
(25, 'Nova', 'corwin.annamarie@schaden.com', '$2y$10$DQnz3S5GZRW002U1lAM/KeyeW.bNpwpZhSp6kcS/8wIwBbKigvbba', NULL, NULL, NULL, '', 7, 11, 0, '', '', 0),
(26, 'Wilbert', 'alvina56@pfannerstill.info', '$2y$10$jqooLuLjSD4YgzrKUygaAell2dj76Ggm0dY8FR1Kh3RfAcFXI7WUi', NULL, NULL, NULL, '', 1, 12, 0, '', '', 0),
(27, 'Stuart', 'zora41@willms.com', '$2y$10$0hXPc6lZRuilKsNdZ2VIIev9Xz16vUiTfhk.FDgK5j8vJC2y6bsH6', NULL, NULL, NULL, '', 5, 3, 0, '', '', 0),
(28, 'Aniyah', 'aurelie15@hotmail.com', '$2y$10$hi1GnX4mHDa1EF/lU/OgTuFVUaizNeF8SfbpjaB4548qoTV/emZuK', NULL, NULL, NULL, '', 9, 3, 0, '', '', 0),
(29, 'Raven', 'bernier.marquis@hotmail.com', '$2y$10$COY7cFCCcTQMASwwSOOole2aZ52m/eurmS2luOcMDq0CLAPloWUiy', NULL, NULL, NULL, '', 8, 8, 0, '', '', 0),
(30, 'Cristian', 'volkman.ahmad@yahoo.com', '$2y$10$OWBTzlzo7qEB6fdaro2r4efqQdC/AOY92w5ZqstkOo6tquPNy/MYu', NULL, NULL, NULL, '', 8, 1, 0, '', '', 0),
(31, 'Evalyn', 'wwisozk@gmail.com', '$2y$10$iOY5yZc9cny2HF4QOCZHF.usSuV.uAEPXOCYyea.2XjBACDuWedCi', NULL, NULL, NULL, '', 7, 1, 0, '', '', 0),
(32, 'Dexter', 'magnolia55@mayert.com', '$2y$10$HDmEIRlfMhhQthOB37BC..rpgRSOOblKrcKzEynUqWeQVZY2.2NZK', NULL, NULL, NULL, '', 1, 11, 0, '', '', 0),
(33, 'Laurianne', 'regan01@walker.com', '$2y$10$MJfGaUyHguzjocyalrg94uVjibsP4PvTsAy.dTSANPMvzTVl0d01K', NULL, NULL, NULL, '', 3, 15, 0, '', '', 0),
(34, 'Therese', 'bernita87@yahoo.com', '$2y$10$jDL3TPxFRt/NSA8ZB/p5OeangsCY5y0Uau8Qh.lJnA9WOg1xo8FR.', NULL, NULL, NULL, '', 1, 12, 0, '', '', 0),
(35, 'Gage', 'nellie59@jast.com', '$2y$10$3EJ0l9E.jE8zHMXvkR4/9Og3mNX.4aww1Q62c5UQebk0rnsnT3MLe', NULL, NULL, NULL, '', 7, 3, 0, '', '', 0),
(36, 'Mitchell', 'jefferey35@yahoo.com', '$2y$10$uH3s8hioUVNEiZPLfN/sV.3szQdX.JCpTZ4VkmHGeGy2ChMmZWdeO', NULL, NULL, NULL, '', 3, 7, 0, '', '', 0),
(37, 'Velda', 'vena.hane@jaskolski.com', '$2y$10$TPOvAgEnqoSm.Zy7Xq3.aeqPw1kCvh/fiR5drHr1heAS.Mco4dJIW', NULL, NULL, NULL, '', 6, 8, 0, '', '', 0),
(38, 'Nellie', 'rocio52@yahoo.com', '$2y$10$v/vXz.QBdZdz1aJQq4L14eFbzf3d9CtgPvgFMCu93BqBZQjL923aO', NULL, NULL, NULL, '', 3, 2, 0, '', '', 0),
(39, 'Jaylen', 'larson.muriel@stracke.info', '$2y$10$/8jX8amc8oE7KhB651o/nu.gexSAc1tBK2uTiA1goYvcGOZkHo/ji', NULL, NULL, NULL, '', 1, 20, 0, '', '', 0),
(40, 'Britney', 'kreiger.mercedes@yahoo.com', '$2y$10$xLaChZq2Zd5DTX5G6hNH5.mDYpI1pahUxySWgTSYASbsj/yOl6Ue.', NULL, NULL, NULL, '', 7, 8, 0, '', '', 0),
(41, 'Sierra', 'susanna92@conroy.com', '$2y$10$DDKuXAY4.Lz/8mYGhE8C6u9I1RIpuMcCcIAJiH8A66VxlleDgNXzy', NULL, NULL, NULL, '', 5, 17, 0, '', '', 0),
(42, 'Estefania', 'kyra02@boehm.biz', '$2y$10$sm.McaE2k6bB8G93CgQlJ.KdlXqf/tntz6V7W0xM172ARdR9NKmZC', NULL, NULL, NULL, '', 3, 15, 0, '', '', 0),
(43, 'Aiden', 'gsporer@quitzon.com', '$2y$10$6RxHKkTsFel6HgFpgQRQOeY/OEUhUKr/kclk4HWhbLIP9yuyM2q3O', NULL, NULL, NULL, '', 6, 9, 0, '', '', 0),
(44, 'Phyllis', 'lakin.lisandro@okon.com', '$2y$10$6Mn6ytsNwwtvIRwLo/w0cOAP9wVlBbybo6gZcDiHwxyj6WoYISzZC', NULL, NULL, NULL, '', 9, 7, 0, '', '', 0),
(45, 'Max', 'ulises53@yahoo.com', '$2y$10$0hqa1AyDK2ZykDNmAzb1.OPMvO8bFZEnRMy3cdwNnbqHjdDSruOc2', NULL, NULL, NULL, '', 4, 16, 0, '', '', 0),
(46, 'Randi', 'era20@hotmail.com', '$2y$10$hID8lgGjpsEJe5wgKbus5uDC5ntADYfOqgiykSbmMEoLkdP6YUNKq', NULL, NULL, NULL, '', 2, 5, 0, '', '', 0),
(47, 'Emerald', 'muller.lauriane@dubuque.com', '$2y$10$owXL.KmXwdZdND2MYSin1ey0iQr0hes9qAFnlIJFyfzACMn7DA3c2', NULL, NULL, NULL, '', 10, 19, 0, '', '', 0),
(48, 'Adaline', 'moen.geo@yahoo.com', '$2y$10$tSwF3rna8Oa2QN8mBlYl5eJz0sTTbYZEdl.2G9xPJcmDoaPLXnRHy', NULL, NULL, NULL, '', 10, 8, 0, '', '', 0),
(49, 'Noelia', 'pondricka@dooley.net', '$2y$10$3GPyGvrNgkQEIBCtFdNVmu2mFnNTeM1.kO7G6OrLMDrYZr2x87jE2', NULL, NULL, NULL, '', 7, 3, 0, '', '', 0),
(50, 'Jefferey', 'sryan@davis.com', '$2y$10$kruOCnhteyX713Nzw2Mql.RYeWDvYCR2EOrD.vF/ipqMI2vgKerCe', NULL, NULL, NULL, '', 6, 11, 0, '', '', 0),
(51, 'Sadye', 'schowalter.emmitt@spencer.biz', '$2y$10$ODEXQHegbiWe0VCAjyTSJeKiUvKUkqcfa3lyPwLui2p4Dye1CeRii', NULL, NULL, NULL, '', 1, 8, 0, '', '', 0),
(52, 'Jermey', 'christophe83@gmail.com', '$2y$10$KoYaPOy5cbxKDf.j4ZKpqOEpvFYFipu/Ku/1r75A0Bx08XO.TNqf.', NULL, NULL, NULL, '', 8, 4, 0, '', '', 0),
(53, 'Linda', 'elise.bernhard@schamberger.com', '$2y$10$exEcXPS6tCgo6U7Mts43TuscN1BK7IjU4Cphd1RshT77KjGifCNOa', NULL, NULL, NULL, '', 8, 19, 0, '', '', 0),
(54, 'Jakayla', 'lemke.baylee@gmail.com', '$2y$10$6kNaXYiscZdbFdYVXhpoe.usXCLUEfawpiBeBAAUs17bcLhnWSKxG', NULL, NULL, NULL, '', 10, 2, 0, '', '', 0),
(55, 'Prince', 'dkuvalis@harber.org', '$2y$10$FzmpPEjp.6yWCZ7frOgSC./bu/Y1QB9wi7fClMOeJTvtdsSOaqAmO', NULL, NULL, NULL, '', 5, 10, 0, '', '', 0),
(56, 'Gloria', 'okeefe.marcus@wuckert.com', '$2y$10$CigbqpS8jXeanbhnbX8lx.dxpp36Iz6cSwGFApFmYFRrFXZuyduDq', NULL, NULL, NULL, '', 10, 4, 0, '', '', 0),
(57, 'Camron', 'raymond30@haag.biz', '$2y$10$rVyffa7p9bLekq4kNCdEpO6OaCwyMkQoCfPfefwvXRrucULZLdFKK', NULL, NULL, NULL, '', 5, 20, 0, '', '', 0),
(58, 'Bart', 'abeahan@schroeder.com', '$2y$10$4ricNzJjCiOZlPjkFz8qZeqzKH.eTwg6sM1fVuhTyhAHX4Dwq/.p.', NULL, NULL, NULL, '', 8, 1, 0, '', '', 0),
(59, 'Deanna', 'stephanie54@smitham.com', '$2y$10$bJjd3TtaoB5F9leoiPVZyOy9Z.42Lgqyd0jiZJ/6rlKaxDq.aU7Tu', NULL, NULL, NULL, '', 2, 16, 0, '', '', 0),
(60, 'Kenny', 'zdietrich@schowalter.com', '$2y$10$Q50EjVt9qLw0.BdBbBwZfOCoBL7H4Qr864FTibcpUzLVttscpkZTu', NULL, NULL, NULL, '', 8, 10, 0, '', '', 0),
(61, 'Maxime', 'jfritsch@powlowski.info', '$2y$10$lJd7pWNiE0slXV0dut0IE.v265MQdJhktAZSauTQEJGTQmiaesTom', NULL, NULL, NULL, '', 7, 15, 0, '', '', 0),
(62, 'Laurianne', 'vzulauf@yahoo.com', '$2y$10$wISO1sBOtPBb2gMmopl8aukHMNfYvcFb3RFFHWA4wiufHEAXMTDsm', NULL, NULL, NULL, '', 1, 1, 0, '', '', 0),
(63, 'Emanuel', 'alayna76@yahoo.com', '$2y$10$c39Geoqm/KOdojLCCxOqVuFsuYK4X4n8wKDhgveLB8lu7fGvbv5SC', NULL, NULL, NULL, '', 10, 1, 0, '', '', 0),
(64, 'Katrina', 'deshawn.johnston@yahoo.com', '$2y$10$4oD9bpuEKtmstJZ9bOp.Y.r.ZFhvimhCsKmENJ8sfSHxToEAPUkpy', NULL, NULL, NULL, '', 9, 13, 0, '', '', 0),
(65, 'Ariel', 'ipredovic@murphy.com', '$2y$10$ZIxv13h9PM0f2dHPleZUQebdhKsVw1fcVI5u5d1tR7sX3ltIM314e', NULL, NULL, NULL, '', 10, 11, 0, '', '', 0),
(66, 'Linda', 'prohaska.colby@yost.info', '$2y$10$6lpSvsY5z8znqBjt0H8b0.8ivx4mfKXnPxMm/tWEW04wygKbnTltG', NULL, NULL, NULL, '', 4, 3, 0, '', '', 0),
(67, 'Howell', 'dwelch@yahoo.com', '$2y$10$LoD8f4enFOCCbtYc1HxelewXHLJNMOQ2X9s2B9VzZVwjfMnry3JVe', NULL, NULL, NULL, '', 6, 15, 0, '', '', 0),
(68, 'Elvera', 'blick.lori@metz.net', '$2y$10$esPXfqhDXuGsW63kKd3sTO4MK4c76rMS.gUBSC.PgiJHoGRNnIz7q', NULL, NULL, NULL, '', 6, 5, 0, '', '', 0),
(69, 'Cynthia', 'laverne93@beer.org', '$2y$10$eQyE.hlPKYUoyzLFVEFgBeAwCaSFyPHRylyL9ncDfe1ggJUmDljPO', NULL, NULL, NULL, '', 5, 8, 0, '', '', 0),
(70, 'Tyreek', 'blanda.tomasa@yahoo.com', '$2y$10$dRGDte4.MMZ6GqHnTyRoSObbsNBSkpZJp5Jz5pA/RM6oqI66PM9kC', NULL, NULL, NULL, '', 8, 9, 0, '', '', 0),
(71, 'Kaylie', 'flatley.danial@gmail.com', '$2y$10$rjYJw6/GYFspiPVc7oeWVeb5LPw1U/3pDGjtca3R0QxjCu9by692C', NULL, NULL, NULL, '', 10, 6, 0, '', '', 0),
(72, 'Lane', 'vheaney@herzog.com', '$2y$10$hz1So7mVgBsFfAyMz5N8euEyzz9LGfSt5al24AP0HzwoY3./PbQFS', NULL, NULL, NULL, '', 1, 16, 0, '', '', 0),
(73, 'Haylee', 'vilma.blick@koch.org', '$2y$10$urgCYB3ECyvGYMi0FIoVoObywYPJ6UjhvTl1uYsuT.57u4FMiTS/K', NULL, NULL, NULL, '', 3, 18, 0, '', '', 0),
(74, 'Wyman', 'botsford.emelie@stokes.com', '$2y$10$NkohhsYCHRkj1mEOzRQ26uOjtI.zpXpQHX8PfKTLv/f/GdDUgGfgG', NULL, NULL, NULL, '', 10, 12, 0, '', '', 0),
(75, 'Kirsten', 'sschimmel@douglas.biz', '$2y$10$5NsFyQUsDZBH1iO7EGiuIuHBmtP1tjBMQ25TOoAQp8WgPo9n2m1Ty', NULL, NULL, NULL, '', 7, 9, 0, '', '', 0),
(76, 'Karley', 'malinda.howe@schoen.com', '$2y$10$wIAOeOoDZD23K97CgsBa6uCJdXtay92LqwfJhyLcihQGV3HMwuE76', NULL, NULL, NULL, '', 5, 16, 0, '', '', 0),
(77, 'Chad', 'metz.rodolfo@weimann.com', '$2y$10$J318ptRwPXViIcdd11LLguDqRW5AT3/qbz7wv9eSsw3C/eYgwdL6G', NULL, NULL, NULL, '', 8, 8, 0, '', '', 0),
(78, 'Dock', 'schneider.xavier@gmail.com', '$2y$10$X6ctS3PlXPuxRcRpNEGAbup8.BNtHt4OFPt8ndCKo27y9od2Rpt6u', NULL, NULL, NULL, '', 3, 5, 0, '', '', 0),
(79, 'Harry', 'odenesik@boyer.com', '$2y$10$WVgckYVXCNWQS/R0pFFHOu4WTrTKhyz01tTEPg46WZbDFjJVlLOiO', NULL, NULL, NULL, '', 8, 2, 0, '', '', 0),
(80, 'Ethyl', 'celia21@okon.com', '$2y$10$/jaj8CHNCsG/VyxAx/Q4ZesP7SYOcXYb3WvJoquyX0FwUTMag0hoy', NULL, NULL, NULL, '', 7, 14, 0, '', '', 0),
(81, 'Odie', 'vkoelpin@yundt.com', '$2y$10$ZukSzThOg0/U0qAvOYM7Sul2v3pTuV0ZjsCnQNTQwzJo.f8Cx7XX2', NULL, NULL, NULL, '', 4, 6, 0, '', '', 0),
(82, 'Albin', 'nellie.auer@gmail.com', '$2y$10$pMyzwpwfQpY3Yf.QsAw0vOhyM/aEB8z2EFpCKg7I8cOmXFjxeMJs6', NULL, NULL, NULL, '', 1, 5, 0, '', '', 0),
(83, 'Antonetta', 'cleo32@hotmail.com', '$2y$10$6yormZfVt94dJx8aM/rZwenMis3eWU8p3hICvHpapEFSDgF.6Plt2', NULL, NULL, NULL, '', 1, 13, 0, '', '', 0),
(84, 'Helen', 'ernesto87@yahoo.com', '$2y$10$bQNQe1yvK/dus3JqGGG3/urBLin05t7i.StA6id0eq2bpH2syWEmy', NULL, NULL, NULL, '', 5, 18, 0, '', '', 0),
(85, 'Kendra', 'merl.hartmann@ward.com', '$2y$10$cBaTCKUol3jUTmByTbIhr.NOn/ypGVCs7dkkfCOxYJfxUZSQ2orlC', NULL, NULL, NULL, '', 6, 10, 0, '', '', 0),
(86, 'Marlin', 'qdamore@gmail.com', '$2y$10$a.iUr/zFOnxowuspFibNEO632Lur2tfbP03uADSsktjab/49Fx.UW', NULL, NULL, NULL, '', 9, 15, 0, '', '', 0),
(87, 'Herbert', 'alden54@orn.com', '$2y$10$MiiEtju/oR4KZleu5W0s5OaXV8qLyqqTXryCoin0UwtwMAupnhpvq', NULL, NULL, NULL, '', 7, 10, 0, '', '', 0),
(88, 'Erin', 'waters.arielle@harvey.biz', '$2y$10$GBxeP18ijzWUcOGnEe3MrOjAJ3VAob7J6vqKKuto1klQUkLLgQmzK', NULL, NULL, NULL, '', 10, 17, 0, '', '', 0),
(89, 'Katelyn', 'imante@russel.com', '$2y$10$DzO5SE103aA9dxyTfTWgUev4TedRq3804xLj.nEWIojrT822AXB42', NULL, NULL, NULL, '', 5, 6, 0, '', '', 0),
(90, 'Kennedi', 'lisette43@yahoo.com', '$2y$10$rf5gOvMyLbIx.XN3X4oym.230R3IDUI.U.tdmQC61wr9Pso/5Ghnu', NULL, NULL, NULL, '', 10, 6, 0, '', '', 0),
(91, 'Arlo', 'elittel@damore.com', '$2y$10$ZzydAdNHf0nO6KTnUkyBHefoz3z5uQoYQTs5UNEw8ZxoxclFZy4jy', NULL, NULL, NULL, '', 9, 13, 0, '', '', 0),
(92, 'Percival', 'delphia.torp@purdy.net', '$2y$10$x755WQFsWPeaAyMr6EJxNurAy2NfIRrn3zU5xF5nUjX.ff1Wk320e', NULL, NULL, NULL, '', 7, 1, 0, '', '', 0),
(93, 'Chanel', 'schneider.xavier@yahoo.com', '$2y$10$ekJGCqtcE/h8ut7qgy4EbeYtTICvxCrbM3QyRG1nF5RFpoIsg4fWy', NULL, NULL, NULL, '', 5, 18, 0, '', '', 0),
(94, 'Billy', 'cremin.lesley@kub.com', '$2y$10$JoB.OJfIA4EyLlFemSumJ.HF0OpbILxE8EAeX8oES0/vTZ34EQcdy', NULL, NULL, NULL, '', 9, 8, 0, '', '', 0),
(95, 'Rhianna', 'brandon.mann@gmail.com', '$2y$10$cDEZopcvZt0vkseYIHIRierKQlxN32tyCaIDfrlHEZ9QyrvAJSiIu', NULL, NULL, NULL, '', 7, 16, 0, '', '', 0),
(96, 'Pietro', 'lawson07@gmail.com', '$2y$10$ZeUPhm4rDh.6CqO.QUtj4eYehFkBhNRTX0TNZ4kG7cTVfVrTUDJWS', NULL, NULL, NULL, '', 3, 16, 0, '', '', 0),
(97, 'Vita', 'rice.willie@hotmail.com', '$2y$10$7b8C6BCmqeTE3XmCkyuGJed/iTTtN0b9S46O/Qq9/duH5lP/ApCDC', NULL, NULL, NULL, '', 10, 13, 0, '', '', 0),
(98, 'Emory', 'hauer@gmail.com', '$2y$10$8dBFqOtN4EjrMc4pIQUeXOA8A1KBZzfoetqDpZC8gWVZ.oOthMlHa', NULL, NULL, NULL, '', 10, 17, 0, '', '', 0),
(99, 'Lilly', 'ochamplin@heaney.net', '$2y$10$2vPY.6ZraKzDrx/AFP3rBujvPsBZO9LkJlTT8m1ssSve7HTxlEQ3m', NULL, NULL, NULL, '', 5, 2, 0, '', '', 0),
(100, 'Ludie', 'orn.della@hotmail.com', '$2y$10$S8LIVmvR64AZZYdkzMfa/.iFKl9xEt/g6rgh/Ez9arY8pzZxV8vK6', NULL, NULL, NULL, '', 6, 5, 0, '', '', 0),
(101, 'Laurel', 'kailey00@witting.biz', '$2y$10$dHWN6o1Z6yoCwNS9N11IUu/ybTsvFQJBX7vtcn..5zINODVJA9MxO', NULL, NULL, NULL, '', 8, 9, 0, '', '', 0),
(102, 'Sim', 'streich.adolf@rogahn.biz', '$2y$10$r3yrrbibNtJMTZc9o9pVmem7eXvhovAYek7U3i0.0.CEdLX44.xP.', NULL, NULL, NULL, '', 4, 10, 0, '', '', 0),
(103, 'Lucinda', 'audrey29@yahoo.com', '$2y$10$oX/HknV.7LVeF/GvdaDVKuuri0ZIrP72Pc/vcP2eB1FovNAy2gR4K', NULL, NULL, NULL, '', 3, 8, 0, '', '', 0),
(104, 'Quinten', 'candida59@lemke.biz', '$2y$10$tAdoo7gzAxjKgzOJBY6LhuRsOlMsyVa1s9mXrYIchg96F89iiNCdy', NULL, NULL, NULL, '', 4, 2, 0, '', '', 0),
(105, 'August', 'kgutmann@weissnat.com', '$2y$10$fXnMfwmty4lyqAtqHtTbeOJD3GKaxDySXXsZp5LgVP5t0DjMPNSfC', NULL, NULL, NULL, '', 1, 3, 0, '', '', 0),
(106, 'Karlie', 'lucio.dickinson@yahoo.com', '$2y$10$Jgd.rcs0McuJ/9o/7uXgt.2APUPU9b3xoFoJsAOvIMjeyJcZtqNK6', NULL, NULL, NULL, '', 3, 19, 0, '', '', 0),
(107, 'Billie', 'psatterfield@gmail.com', '$2y$10$nkG0vADYpcksNgLlKiYRu.1rvjyz/JHJdjIIYizOWWmviEW.Z5y1y', NULL, NULL, NULL, '', 10, 5, 0, '', '', 0),
(108, 'Julian', 'lavern27@gmail.com', '$2y$10$PqWoUFHeLvAIXuQTmFFf9OlnyK9d5F0Fx5tfIzvbGdVqqgpp85IeW', NULL, NULL, NULL, '', 9, 1, 0, '', '', 0),
(109, 'Paolo', 'kari.konopelski@blick.org', '$2y$10$BN82Jt.lnCJVacqeVGmJcuEgUPiMLEXZD.iWI3NdiUEGWXket5/GW', NULL, NULL, NULL, '', 5, 14, 0, '', '', 0),
(110, 'Roselyn', 'corn@conroy.com', '$2y$10$b4515otVTxjEYly/Rskj3.lEC/3yxu6q8VqPutCsLlKjEwwMsWece', NULL, NULL, NULL, '', 6, 4, 0, '', '', 0),
(111, 'Quinton', 'abagail48@yahoo.com', '$2y$10$u7YDQe.wOv4JvPqq6EdI2uZIzhpT5CtqXsXRxTB1BpEVYFvfoDFq2', NULL, NULL, NULL, '', 6, 17, 0, '', '', 0),
(112, 'Rebekah', 'alangosh@gmail.com', '$2y$10$K9LpyObrkwmtthR7l.RKqOJ/ZiB.LGuJralYOlVugieI9Y0X7jUM6', NULL, NULL, NULL, '', 1, 4, 0, '', '', 0),
(113, 'Nelson', 'glover.richmond@hotmail.com', '$2y$10$VsrnoDAg2lqnKj2WCrF0O.ms7E7MX.xpYiamfzf9DqxFlRfm3bxaC', NULL, NULL, NULL, '', 7, 5, 0, '', '', 0),
(114, 'Ryan', 'geovanny.walsh@boyle.com', '$2y$10$1KCTR30L1skypR9LDH6geuIm4nipEyhFxo6i3J0p2AxkrqA0IY02O', NULL, NULL, NULL, '', 10, 2, 0, '', '', 0),
(115, 'Alena', 'moises97@abshire.com', '$2y$10$cb0fBikh5Jywzpy8ISXbmOvu14O0Uu0aLAjH2qkbkPFIrFohWPJsm', NULL, NULL, NULL, '', 10, 13, 0, '', '', 0),
(116, 'Neha', 'gmetz@hotmail.com', '$2y$10$tyyPn7otYc.SSep2Ge/ciu.TDsVHzKQfix5tlulC/R.vEFgVzpmE2', NULL, NULL, NULL, '', 2, 14, 0, '', '', 0),
(117, 'Jerel', 'greichert@doyle.info', '$2y$10$I2cHYRh1vQzkBPOAzEIW3OBeS9/m76gB6rkSrsnfUdB2OqM7elNii', NULL, NULL, NULL, '', 10, 1, 0, '', '', 0),
(118, 'Kameron', 'eden91@swift.com', '$2y$10$3O.FtRFnmQ7U/SM4Co2KBuIeKhc25MGeR3bt3tWrHcbT5bAJrVU16', NULL, NULL, NULL, '', 1, 14, 0, '', '', 0),
(119, 'Braeden', 'femmerich@gmail.com', '$2y$10$anFgS7F3s2OFVl7Gx5bt4uAEZWoABH2KQ/OZwLI96vxzT/Ab8Uac6', NULL, NULL, NULL, '', 4, 13, 0, '', '', 0),
(120, 'Ethelyn', 'hansen.destin@yahoo.com', '$2y$10$IZELtCCNMoOobz6HnThIe.lDSp.KmF0kaKsSACIFAxHuCTfv77OMS', NULL, NULL, NULL, '', 4, 19, 0, '', '', 0),
(121, 'Elenor', 'block.alana@mckenzie.org', '$2y$10$cokgwsywUBIgw5T/VJdfcu0doQ5l1GndKWwOi7.Nt7XfDbj.PlBi2', NULL, NULL, NULL, '', 10, 18, 0, '', '', 0),
(122, 'Arnold', 'bart.veum@hettinger.com', '$2y$10$93AuwZFvyGLdcZR.QHKtROA.Rv5xR4fdud.PB04J8Yr1QzlOmu2dK', NULL, NULL, NULL, '', 8, 9, 0, '', '', 0),
(123, 'Afton', 'fahey.ayden@yahoo.com', '$2y$10$nvcbhRY/tE6Q0KB16y.V3.qr9RIcwuVTCxbPAk2Aa6NZLiY5aWIFq', NULL, NULL, NULL, '', 7, 19, 0, '', '', 0),
(124, 'Easton', 'ruecker.joana@block.org', '$2y$10$9GtLYtgaDqkQC7SygNLe.usN5NLu/Akmejmz6C/JN0kjux65Or0Iq', NULL, NULL, NULL, '', 6, 19, 0, '', '', 0),
(125, 'Boris', 'harber.mortimer@harvey.info', '$2y$10$rDal2dn1sZ.4P4k7ppRHuOYzg9LEax4pvZihB6l8LSZZGfIZ/kHNa', NULL, NULL, NULL, '', 6, 15, 0, '', '', 0),
(126, 'Zula', 'iberge@hotmail.com', '$2y$10$8zRFk1yIBuwnVSU.ZRfQ3.b4u.nAguatdaOCFOTW77CYRg8NchPVi', NULL, NULL, NULL, '', 4, 3, 0, '', '', 0),
(127, 'Lexi', 'ritchie.freddie@hansen.com', '$2y$10$lxiNBeCxTdxgkutztj6P2OEKai/nr6E2MrQ4D8FBQB2PBD3DqZScu', NULL, NULL, NULL, '', 7, 18, 0, '', '', 0),
(128, 'Destiny', 'abel.hodkiewicz@weimann.org', '$2y$10$D34uosqbgSeIHzqfTgQRi.LWD2xnXirnFMcuMR8Qqwg/Rmiicf0aW', NULL, NULL, NULL, '', 5, 21, 0, '', '', 0),
(129, 'Alden', 'yundt.coy@russel.com', '$2y$10$rKVDOKn0gg8/AXvXmRyex.QhRmcOkPe6OQAOPfif06nW7emgiSL9e', NULL, NULL, NULL, '', 9, 20, 0, '', '', 0),
(130, 'Tracey', 'blick.chasity@hotmail.com', '$2y$10$13p5lZWl/VGaAUsgI0RCe.81DEaDUngDi3hbpZ.nVLfnnHHe8gilq', NULL, NULL, NULL, '', 9, 21, 0, '', '', 0),
(131, 'Joey', 'nrunte@gmail.com', '$2y$10$fpKRZsPyqkARx7a/WYkNqew0YfW6VMoySoK8hfGKPlSabNumeludK', NULL, NULL, NULL, '', 9, 13, 0, '', '', 0),
(132, 'Ettie', 'frami.selmer@okuneva.info', '$2y$10$7BVmzL5qLUWW6mhOfhybRuYR4jyi4/anG4OMwuE.yVwNNM0OghyMG', NULL, NULL, NULL, '', 7, 4, 0, '', '', 0),
(133, 'Edmund', 'lacey67@collier.org', '$2y$10$3swaGtmY/49QCHyz5bS9Tu5VLk5q/yYNb/nMwty65MCAEOQYTyoDq', NULL, NULL, NULL, '', 10, 14, 0, '', '', 0),
(134, 'Cordia', 'leda.stracke@spencer.com', '$2y$10$GjchzfP/Vi8t41Xy.o0uGuxzbRNftPDNVychl9zNrDoUA4M9z7raS', NULL, NULL, NULL, '', 8, 19, 0, '', '', 0),
(135, 'Mallory', 'thompson.chadrick@botsford.com', '$2y$10$ZB4Exy7wzJfztn7SFIOd6u146HWZW9.4J23FX37zNN03Tli.KcXbm', NULL, NULL, NULL, '', 10, 20, 0, '', '', 0),
(136, 'Jeffery', 'macey47@gmail.com', '$2y$10$krv8MjMZ9VFcgFZbHEBW0usKwQpOJTPe1iTG6Qb5nC6fkxQF7u7Ta', NULL, NULL, NULL, '', 8, 9, 0, '', '', 0),
(137, 'Cortez', 'jana21@zemlak.org', '$2y$10$AdsZRc.oj77PGlavgaYU7.d4taSB4PwxhF6BtilPuK6ks14gjf5NG', NULL, NULL, NULL, '', 8, 5, 0, '', '', 0),
(138, 'Abner', 'claire31@gmail.com', '$2y$10$QWjXoIGQiB/6IV.BeKoPK.MZd/uJvHDBNTE/jztfVQfxWx5VoMFr2', NULL, NULL, NULL, '', 2, 16, 0, '', '', 0),
(139, 'Isabella', 'terry.mortimer@hotmail.com', '$2y$10$GMWIEG07X5Iou4AvMcul8eFJx5ncgI16A0jOBktEHPotbymxi3pTm', NULL, NULL, NULL, '', 1, 13, 0, '', '', 0),
(140, 'Viva', 'gbergstrom@yahoo.com', '$2y$10$ch7vD/K50HGL84CsYTU5zOkAdk9SCUhzBQYh8VxwQQ/bRtob.XKBy', NULL, NULL, NULL, '', 3, 10, 0, '', '', 0),
(141, 'Jonas', 'ebony.reinger@emmerich.com', '$2y$10$VntmZ/VFv6CyvLo9uzn3IeJTcVMxp0D.jFtdq1pYAUKr2offTwcl.', NULL, NULL, NULL, '', 9, 2, 0, '', '', 0),
(142, 'Brenden', 'mayer.raymundo@gmail.com', '$2y$10$L9mSLIbAj8weyguQFycnbOogXJW65ftyfugHGoaOVBENuzLoAStwW', NULL, NULL, NULL, '', 1, 10, 0, '', '', 0),
(143, 'Quinn', 'prosacco.will@gmail.com', '$2y$10$iFN7KM6AZUmoDtx..xCasOE48LLZydbXixZ/xYoNOa3iwXfmSbeqq', NULL, NULL, NULL, '', 3, 2, 0, '', '', 0),
(144, 'Isadore', 'rogelio18@hotmail.com', '$2y$10$3Qi8QARh2gW/lJ/cq7hNFevBaUPEkjfDyNB8UXRRrLBI4kNdHxoZi', NULL, NULL, NULL, '', 2, 12, 0, '', '', 0),
(145, 'Era', 'albertha76@nikolaus.com', '$2y$10$JikLPU1ppRSJ5i4F/MSokuQVxIw7ni87DkHatRdUT40qpJ0BWU64C', NULL, NULL, NULL, '', 3, 8, 0, '', '', 0),
(146, 'Kiarra', 'vidal32@hotmail.com', '$2y$10$x6yae1da/IjxWIxc6gEq0.d9HG5AXuMZoRWZ6vTENJL2y.jZ62bPa', NULL, NULL, NULL, '', 3, 15, 0, '', '', 0),
(147, 'Isabella', 'christy10@hudson.com', '$2y$10$kdRid2NaLZIFY64jRaacWO0Nr7p72.1GTHzbnCzLD/Aq82aRzxHg6', NULL, NULL, NULL, '', 1, 7, 0, '', '', 0),
(148, 'Jaren', 'blowe@ortiz.net', '$2y$10$aQ/FmkIuquNQ32/dXj6e4.E/O3Yc0N4dPlsRPA939XhrcLbxPw28q', NULL, NULL, NULL, '', 7, 13, 0, '', '', 0),
(149, 'Bud', 'clinton51@gmail.com', '$2y$10$CB8a9KRv76w8wl62xy.oXemth6ls2SjG1ipeVgEojx3.5PQ5vUoX.', NULL, NULL, NULL, '', 1, 7, 0, '', '', 0),
(150, 'Abby', 'lschroeder@konopelski.org', '$2y$10$KEXEDvHEoTRJj/DpURsj.OLk7F.Y8Ev4GgQ/mBXmZwc3R031dflTO', NULL, NULL, NULL, '', 4, 19, 0, '', '', 0),
(151, 'Cullen', 'breana48@zemlak.com', '$2y$10$qd5WVwXjLau7EbBFheNmUeUhReytTOPGsGjZYTZV4Xscvr7F8qdCa', NULL, NULL, NULL, '', 7, 8, 0, '', '', 0),
(152, 'Deja', 'cordelia31@hotmail.com', '$2y$10$SIPsE9uaJ3axOjqPRzltRus69.DT0PFmPgu/1cuKvec7sD2KhI/vy', NULL, NULL, NULL, '', 1, 19, 0, '', '', 0),
(153, 'Jeremy', 'beth53@hotmail.com', '$2y$10$qt2Nr10UvCz3U0GonA3yoejZ58MbGwmKu7cAW6a1KoRM0GzmCtVYG', NULL, NULL, NULL, '', 5, 7, 0, '', '', 0),
(154, 'Kirstin', 'jhessel@swaniawski.com', '$2y$10$YBU9t7e4KJJr7yWvWgkl.eSuruuY4v4WdpTyOXT19ApTiCcYxourW', NULL, NULL, NULL, '', 8, 14, 0, '', '', 0),
(155, 'Buck', 'tanner.langworth@hotmail.com', '$2y$10$930dLGFPK8bw4/N.Szm6relNXbgO6DQDvetgfscrlY3Wg4QUKqwSC', NULL, NULL, NULL, '', 10, 2, 0, '', '', 0),
(156, 'Delia', 'melvin27@ruecker.com', '$2y$10$Qc8XNAf7QK7gh0lMMIPNFu2lqnBfzzu98pUDTZ.0VL4rkld3dLEES', NULL, NULL, NULL, '', 6, 13, 0, '', '', 0),
(157, 'Geovanny', 'yvette.stanton@nikolaus.com', '$2y$10$ydoCU.YdP.mm//gWPZAoCuXv1A/r7hUm8QGFPbFRUCC3hjVtpQ3ea', NULL, NULL, NULL, '', 7, 6, 0, '', '', 0),
(158, 'Boris', 'marjolaine.windler@herzog.com', '$2y$10$RUVapnbZe0a1CtEKuk02/OV.TiE/TGydjTzRPDaVS0zyyVhRlsaQK', NULL, NULL, NULL, '', 3, 13, 0, '', '', 0),
(159, 'Mellie', 'reichel.rodrick@okeefe.com', '$2y$10$94hqdErhgBmaoQhKDLxeL.Y2TXrB/yVJpIfRy0CvVhOPiqVB5xI0e', NULL, NULL, NULL, '', 8, 15, 0, '', '', 0),
(160, 'Charity', 'darmstrong@hotmail.com', '$2y$10$uGU//wvKJ3a8Uo6Zpn5kZ.Ru1hrE1B4R4w.6i3GmfGFc/6eIQd0IK', NULL, NULL, NULL, '', 10, 17, 0, '', '', 0),
(161, 'Aliya', 'lilly.bradtke@gmail.com', '$2y$10$W5g0Sgr1l0onN8carmOXzOgoEnmLqcrNvQScCG/DisqpDDUEiNsd6', NULL, NULL, NULL, '', 10, 5, 0, '', '', 0),
(162, 'Laila', 'fabiola45@gmail.com', '$2y$10$q7694nfnf7AOGD8borJOtOiVM5UxSK1vB/FxkrRUtaO49ribcOpb.', NULL, NULL, NULL, '', 4, 16, 0, '', '', 0),
(163, 'Asa', 'filiberto.schowalter@kovacek.com', '$2y$10$DQCprohNE5WuWn/m7vY9KuM9wwnE9gm2iWGKIuxoxMWiYHXgjSbYu', NULL, NULL, NULL, '', 1, 10, 0, '', '', 0),
(164, 'Nigel', 'johnson.garth@hoeger.com', '$2y$10$pVk3RwArCFsIkdP5aK.iSOHMDQJ37AqxYtG0pKRWHkeRDHLnobYTS', NULL, NULL, NULL, '', 3, 14, 0, '', '', 0),
(165, 'Josianne', 'ibatz@hotmail.com', '$2y$10$bluhFq611L9a0dVcbJPsd.PQZfxpxbNNGnsGllXUvLvtwazDGOTWO', NULL, NULL, NULL, '', 7, 3, 0, '', '', 0),
(166, 'Angelita', 'fanny.mckenzie@yahoo.com', '$2y$10$BwMDjR8oOrf7CcnJpLW28uB/57gk1lxYJCXj1pBA7rh0hpI15SgvC', NULL, NULL, NULL, '', 5, 12, 0, '', '', 0),
(167, 'Gloria', 'dessie20@erdman.biz', '$2y$10$RPWK4Sl//dS5ZLXzEGt7C.STFovWyVM5OcV.clOmLu7/8K9culFua', NULL, NULL, NULL, '', 9, 11, 0, '', '', 0),
(168, 'Vella', 'rosamond.bashirian@yahoo.com', '$2y$10$GgVDZ1abnchfaep4TIQ/Cuj/hRf3bwK6PJZKhYB/zkndmCgJ6yHbe', NULL, NULL, NULL, '', 10, 3, 0, '', '', 0),
(169, 'Liana', 'white.vicenta@yahoo.com', '$2y$10$Gh/swa76/oqlie6KpLfsjOo3pXWef5ayCdkNYNDBL7MI27q0Wx9gK', NULL, NULL, NULL, '', 3, 12, 0, '', '', 0),
(170, 'Brant', 'hintz.jed@carter.com', '$2y$10$OVMbPfdva.iMixRjtOOFHeTH54K8TRr0mD5E9DM3cUmDILHEt/caW', NULL, NULL, NULL, '', 3, 14, 0, '', '', 0),
(171, 'Jameson', 'alena71@hotmail.com', '$2y$10$dLzqocoh3KIpssZTnIatherDOFxq5r3XMJrSBdhmz9ttImKKT1zVW', NULL, NULL, NULL, '', 5, 13, 0, '', '', 0),
(172, 'Lyla', 'mwest@yahoo.com', '$2y$10$qYRFxit2bUnm.ZRM..MLte7/NsYgj2jf5WFboeb.d433.xGeixKPq', NULL, NULL, NULL, '', 9, 13, 0, '', '', 0),
(173, 'Jaqueline', 'cummerata.vilma@hermiston.net', '$2y$10$fnKNblGLBQbeHiAEfK6zKuSn1llUZU64uWiREfZx2MThKNgZ6ef8W', NULL, NULL, NULL, '', 10, 18, 0, '', '', 0),
(174, 'Destini', 'dicki.enrico@hotmail.com', '$2y$10$BC0EjZc.E8LW6llIYfOiw.3DGwDYeFh6krIN.Kcikhco5JGg.A336', NULL, NULL, NULL, '', 10, 16, 0, '', '', 0),
(175, 'Tyrel', 'odickens@hotmail.com', '$2y$10$aygUAlfFz1G6FH7NGC0Itum6o4kzCIKg6CwYQLqhA/d/HsCWqxn6C', NULL, NULL, NULL, '', 8, 20, 0, '', '', 0),
(176, 'Jakayla', 'jules.wuckert@hotmail.com', '$2y$10$bGyjVCZenLxFg.2hm8g9ROHV8mRuAmE36h6sX2l25f5ZwdYDw6U02', NULL, NULL, NULL, '', 7, 17, 0, '', '', 0),
(177, 'Corine', 'torrey.jerde@gutmann.com', '$2y$10$AX2yXC7thEx4go8HrVjrtuzkfNf3rO9UWXeMPPo58NxcTOa0t35Ti', NULL, NULL, NULL, '', 1, 18, 0, '', '', 0),
(178, 'Lyda', 'dkulas@leffler.info', '$2y$10$c98TRSUVOVBi02PlZZDJquKDLq1.gnbESlZXIR9.uw2tRpuL.azLy', NULL, NULL, NULL, '', 4, 19, 0, '', '', 0),
(179, 'Jeramie', 'lauriane67@parker.biz', '$2y$10$xA4KWAPQ13CBHzrLA.7A1uLVU7inF/ksgwP96I2yEZKY94xOG4rQO', NULL, NULL, NULL, '', 6, 19, 0, '', '', 0),
(180, 'Garrett', 'destiny.cummings@hotmail.com', '$2y$10$fr5f9hmNkF7MHjGcUb7sYOzEhsb4mKksyBEkOOlMrRD2KTgpNYxr2', NULL, NULL, NULL, '', 5, 1, 0, '', '', 0),
(181, 'Ashlee', 'alvah17@yahoo.com', '$2y$10$MWmCKalYnvdp8zOlPVTJ3uem1MSunPvkKwPqTbLCxXGQcnNRikr9O', NULL, NULL, NULL, '', 9, 14, 0, '', '', 0),
(182, 'Wanda', 'melvina11@turner.com', '$2y$10$Z64UFF0X38tZMLZej.A7xuVSOzfxFMWJmzUxDr4A5lwMbYKXJAU6a', NULL, NULL, NULL, '', 6, 3, 0, '', '', 0),
(183, 'Don', 'ethan.leffler@kling.com', '$2y$10$GSxIMYsvmermMAE1x46hBevTRAGGnUqAjsnOu6gvnCocyPwex6FJG', NULL, NULL, NULL, '', 10, 17, 0, '', '', 0),
(184, 'Madeline', 'iratke@rippin.com', '$2y$10$6NuICVI1uEO.BaY85mWtW.5BEnnWHmKZzi8utaFcEG2y8wb/U7niW', NULL, NULL, NULL, '', 8, 16, 0, '', '', 0),
(185, 'Garry', 'cvonrueden@hotmail.com', '$2y$10$IdqQ3vSuMKFDwA1.t92ZGO.ffE7SLbuyt0Wwj6jMIt0HvSIT7EDea', NULL, NULL, NULL, '', 10, 4, 0, '', '', 0),
(186, 'Mariam', 'alysa.mayer@zulauf.info', '$2y$10$tF30hCy8Vyzy72SYBPSZvOqxBDzm5MCrk09ul65HVfzrWNus41eoq', NULL, NULL, NULL, '', 10, 13, 0, '', '', 0),
(187, 'Heidi', 'pjohnson@haag.info', '$2y$10$HhU7MT8GG6dslWrZheGSveIUH.Rxxq4jVGI5IwuJb8MjJgVvb53Du', NULL, NULL, NULL, '', 8, 1, 0, '', '', 0),
(188, 'Colton', 'alejandra99@hotmail.com', '$2y$10$ooJv.ruy8Qb3t0JKW.sajuI/P2sO/pHxXZPvHfjoOAzTDoY/Avy4a', NULL, NULL, NULL, '', 8, 19, 0, '', '', 0),
(189, 'Anastasia', 'dax.crist@casper.com', '$2y$10$nqKiitPh4i2BQDiZr6NXPeVL9rlk3.I0U67OV3oArla6JKulmXKge', NULL, NULL, NULL, '', 4, 5, 0, '', '', 0),
(190, 'Enola', 'anderson96@farrell.com', '$2y$10$4zPGLkHPRvfOCnH8jJh7YegiYuy/riEN4esgI6rXT0n3jiLPS05hu', NULL, NULL, NULL, '', 5, 1, 0, '', '', 0),
(191, 'Carol', 'nash.schiller@yahoo.com', '$2y$10$lm5GAlhfiG81pGiajWp1Fu9PE7NrnVBkdzIIdC/NPKwtD66D1gwOa', NULL, NULL, NULL, '', 6, 14, 0, '', '', 0),
(192, 'Pearlie', 'dominic.mitchell@gmail.com', '$2y$10$Qrl4ogIsRrQwLhjZq4XUuuinRsZbNlPEPd1/dpdgcUxrZsfMbWxCu', NULL, NULL, NULL, '', 10, 16, 0, '', '', 0),
(193, 'Quinten', 'jgerhold@gmail.com', '$2y$10$rLhsspPKee2P.ziE7iqTAubGqIBnJQu.gfTRAKalSPzCkzsRcIMQK', NULL, NULL, NULL, '', 3, 14, 0, '', '', 0),
(194, 'Paolo', 'llewellyn93@hotmail.com', '$2y$10$g6IcDXIkMZC2Q6VhS63OE.DBr2okfNEAsr98qmS.KjJxG2EqY0i1O', NULL, NULL, NULL, '', 3, 13, 0, '', '', 0),
(195, 'Gladys', 'champlin.otha@rogahn.com', '$2y$10$hHuTrqIMGFcK3945R7KrxOEFWyKH1zF.7o2V4ktsQ6EVoem35.u9K', NULL, NULL, NULL, '', 4, 7, 0, '', '', 0),
(196, 'Emerson', 'nswaniawski@hotmail.com', '$2y$10$EHdA2BE7e9q9O.fZQGa1deR5XuOTsG94GKKJN2nRz4ipw0fPiOid.', NULL, NULL, NULL, '', 9, 16, 0, '', '', 0),
(197, 'Kailee', 'nasir69@gmail.com', '$2y$10$eRTZwVztJ3iX1mJ38K9pfuNPY1hROB5GuuU5QhV4ojhpADq9E.Nly', NULL, NULL, NULL, '', 4, 7, 0, '', '', 0),
(198, 'Leanna', 'paucek.zola@klocko.com', '$2y$10$y5diMVRybdyBT0GFnJabr.OFc4nwia2osFQTHbi7Oh4jVn.xSUqGe', NULL, NULL, NULL, '', 4, 16, 0, '', '', 0),
(199, 'Marquis', 'williamson.jayda@yahoo.com', '$2y$10$TXgs4DH5WMN77TYTNMdZfu9/mxfJdYM/4HVIDO2w9Dqy47jtQ.dmS', NULL, NULL, NULL, '', 10, 1, 0, '', '', 0),
(200, 'Adolfo', 'schinner.queen@hotmail.com', '$2y$10$VrDWQ9ulFt3QWwFB8k1xD.QxrWSFCBIPWrdDqJw/QuwNrNMQS6urC', NULL, NULL, NULL, '', 5, 4, 0, '', '', 0),
(1489471811, 'Rana', 'rana@rdi-bd.com', '$2y$10$yHxwrZUGWdm9BF6f/rGZCupYtl2fAYCfBprCHx6sLudrocSHUsl1y', '44QJaEGk42JtBDlXWhplHeB2yB3pFEIM0drjy6msUAOGurqxoDitnS8XsaWq', '2017-03-14 00:10:11', '2017-03-14 02:50:38', '', 0, 0, 1, '', '1', 1),
(1489472948, 'Uching', 'uching@rdi-bd.com', '$2y$10$L11PwnWn3mEo0fGcVgBh7.XhCUgUUnGzfNSI6b63nXA41Sm9U6tvu', NULL, '2017-03-14 00:29:08', '2017-03-14 00:34:29', '', 0, 0, 9, '', '1', 1),
(1489473478, 'Shafiq Rahman', 'sh1afiq@rdi-bd.com11', '$2y$10$DcmMNfptMnzzk06mmMYmq.tql0IZGNvACseu0l8UTRxW7YcVaIwaW', NULL, '2017-03-14 00:37:58', '2017-03-14 00:43:32', '', 0, 0, 1, '', '1', 0),
(1489473747, 'Shafiq Rahman', 'shafiq@rdi-bd.com', '$2y$10$95LAM0goMT1TsbhNUg1CwOZ.XlCe1KCYSf2CVY58brf3/.7y7PV0O', 'mXwVj1KfVtc9Z9laGR2i6VuXkOWjkYd1GBmMeA0QesrcFbDsbgBxuK5hBKeF', '2017-03-14 00:42:27', '2017-03-14 00:45:42', '', 0, 0, 1, '', '1', 1),
(1489473962, 'Rony', 'rony@rdi-bd.com', '$2y$10$9Pac9KpQU/cxf8Jy8M3ryOwX9uA6Xp4pXAjg.SqkUoDb3THTr4c0G', 'bRQaAzBAUT04AhiCCqRhiVhAMbXJyL4W0PQWCVWRnlBg4VslXVgFJS992HSN', '2017-03-14 00:46:03', '2017-03-14 00:56:24', '', 0, 0, 9, '', '1', 1),
(1489475006, 'Walid', 'walid@rdi-bd.com', '$2y$10$Xau0w00eGCD.IcFLH8VgS.r.yYoUJxWgXhHuCJYv4F8mN6BD19PC2', NULL, '2017-03-14 01:03:26', '2017-03-14 01:04:39', '', 0, 0, 9, '', '1', 1),
(1489481434, 'Boby', 'boby@rdi-bd.com', '$2y$10$UnZiOmkq11RqNLRTcYMaiOEuWtheVvZqm8sW9Hgo2PwcqpBD3yIpm', 'rucqbL2TjfPpME4jiohBER8H64dmC7zNV3KalSculF2LEwszKmUrWjSPLDoB', '2017-03-14 02:50:34', '2017-03-14 02:58:20', '', 0, 0, 9, '', '1', 1),
(1489556988, 'ddd', 'd', '$2y$10$s2fLhdBzrUH4XxAyiuu9s.qNGsAc2Llv2tCLs9qu9An4rLvvMzFAy', NULL, '2017-03-14 23:49:48', '2017-03-14 23:49:48', '', 0, 0, 1, '', '1', 0),
(1489557017, 'ggggg', 'aseefahmedd@gmail.com', '$2y$10$WRSrCcsxkaTdA0NOn2FSUetwtzQQTRuST7tKJ3/JQSLTkgxMA1QLK', NULL, '2017-03-14 23:50:17', '2017-03-14 23:50:17', '', 0, 0, 3, '', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yarn_types`
--

CREATE TABLE `yarn_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `yarn_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yarn_types`
--

INSERT INTO `yarn_types` (`id`, `yarn_type`, `created_at`, `updated_at`) VALUES
(1, 'Acrylic & Melange', NULL, NULL),
(2, 'Tube', NULL, NULL),
(3, 'Slub', NULL, NULL),
(4, '50-50 Cot-Acr', NULL, NULL),
(5, 'Cotton', NULL, NULL),
(6, 'Boucle', NULL, NULL),
(7, 'Mega Dyeing', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buying_orders`
--
ALTER TABLE `buying_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buying_orders_colors`
--
ALTER TABLE `buying_orders_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pricecharts`
--
ALTER TABLE `pricecharts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition_items`
--
ALTER TABLE `requisition_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition_types`
--
ALTER TABLE `requisition_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_types`
--
ALTER TABLE `supplier_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `yarn_types`
--
ALTER TABLE `yarn_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `buying_orders_colors`
--
ALTER TABLE `buying_orders_colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489481717;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489557018;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pricecharts`
--
ALTER TABLE `pricecharts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requisition_items`
--
ALTER TABLE `requisition_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requisition_types`
--
ALTER TABLE `requisition_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `supplier_types`
--
ALTER TABLE `supplier_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489557018;
--
-- AUTO_INCREMENT for table `yarn_types`
--
ALTER TABLE `yarn_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
