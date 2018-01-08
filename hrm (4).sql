-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2017 at 02:37 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(6, 'Wal-Mart', NULL, NULL, 'no_image.jpg', 0, 'Montreal, Canada', 'Monica', 'monicad@rd-international.ca', 'N/A', 'N/A', NULL),
(7, 'aseef', NULL, NULL, 'no_image.jpg', 0, '', 'ahmed', 'aseef@gmail.com', '123', '', NULL),
(8, 'testttt', NULL, NULL, 'no_image.jpg', 0, '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buying_colors_quantities`
--

CREATE TABLE `buying_colors_quantities` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_sizes_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buying_colors_quantities`
--

INSERT INTO `buying_colors_quantities` (`id`, `color_id`, `order_id`, `quantity`, `order_sizes_id`, `created_at`) VALUES
(119, 15, 1512749504, 10, 31, '2017-12-08 16:54:35'),
(120, 15, 1512749504, 32, 25, '2017-12-08 16:54:36'),
(121, 15, 1512749504, 30, 17, '2017-12-08 16:54:39'),
(122, 15, 1512749504, 0, 33, '2017-12-08 16:54:41'),
(123, 17, 1512751126, 20, 31, '2017-12-08 16:55:41'),
(124, 17, 1512751126, 0, 25, '2017-12-08 16:55:42'),
(125, 15, 1512751126, 100, 31, '2017-12-08 17:01:17'),
(126, 15, 1512751126, 200, 25, '2017-12-08 17:01:17'),
(127, 15, 1512751126, 300, 17, '2017-12-08 17:01:18'),
(128, 16, 1512749504, 40, 17, '2017-12-08 17:01:29'),
(129, 16, 1512751126, 50, 17, '2017-12-08 17:01:38'),
(130, 16, 1512751126, 602, 25, '2017-12-08 17:01:41');

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
  `colors` text COLLATE utf8_unicode_ci,
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
  `shipping_sent_date` date NOT NULL,
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
  `production_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `progress` double NOT NULL,
  `ply` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `knitting_pattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trims` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbm` float NOT NULL,
  `sample_req` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sample_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sample_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buying_orders`
--

INSERT INTO `buying_orders` (`style`, `ref`, `sketch`, `Gauge`, `yarn_ref_details`, `colors`, `pi_date`, `yarn_status`, `contract_weight`, `customer`, `po`, `po_recieved_date`, `qty`, `sizing`, `main_label`, `hang_tag`, `accys_status`, `trims_status`, `handover_date`, `fit_sample_sent`, `courier_no`, `fit_sample_comments`, `fg`, `production_status_details`, `production_condition`, `photo_sample`, `shipping_sample_required`, `shipping_sample_sent`, `shipping_sent_date`, `shipping_sent_courier_no`, `shipping_sample_comments`, `actual_production_weight`, `confirmed_price`, `inspection_date`, `inspection_status`, `handedover_date`, `handedover_qty`, `short_excess`, `value`, `doc_sent_courier_no`, `remarks`, `merchandiser_id`, `created_at`, `updated_at`, `id`, `supplier_id`, `session`, `number`, `customer_dept`, `type`, `weight`, `price`, `accessories`, `overseas_accessories`, `accessories_status_date`, `care_label_composition`, `ca_rn`, `packing`, `original_ho_date`, `proposed_ho_date`, `approval_status`, `approval_status_date`, `next_sample`, `status`, `status_date`, `yarn`, `dyeing_order`, `dyeing_order_date`, `size_set`, `size_set_date`, `production`, `production_date`, `knitting`, `linking`, `finishing`, `shipping_req`, `shipping_status`, `approved_weight`, `shipping_date`, `mode`, `destination`, `shipping_hbl_awb`, `shipping_vsl_flight`, `shipping_etd`, `shipping_eta`, `shipping_master_lc`, `shipping_invoice`, `shipping_invoice_value`, `doc_status`, `doc_date`, `production_status`, `payment`, `payment_date`, `progress`, `ply`, `knitting_pattern`, `trims`, `cbm`, `sample_req`, `sample_status`, `sample_date`) VALUES
('test', 'refFDSA', '', '3', '9', 'null', '2017-12-30', '', '12', '1', '12', '2017-12-03', 50, 'S-XL', '', 'ht', 'OAS', NULL, '2017-11-09', 'fs', 'cnAGD', 'fsc', NULL, NULL, NULL, NULL, '11', '222222222', '2017-12-14', 'cnFDSAF', NULL, 1045, 33, '2017-12-21', NULL, '2017-12-30', 11, NULL, 0, 'traaaa11111111', '222112', 1, '2017-12-08 10:11:44', '2017-12-18 19:17:50', 1512749504, 4, 'sessFFDSAFSDA', '', '', '', '', '', 'ACC                                                                                                                                                                                                          ', 'OVACC                                                                                                                                                                                                    ', '0000-00-00', 'CL                                                                                                                                                                                                                                                             ', 'ca', '602', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '', '', '201', '101', '501', '', '', '100', '0000-00-00', 'm', 'd', 'bl', 'mvsl', '2017-12-20', '2017-12-28', 'lc', 'in', 'iv', 'ds', '2017-12-28', '', 'pay', '2017-12-30', 100, '13', 'kp', 'tr', 12.5, '44444444', '555555555', '2017-12-09'),
('aseef', 'aseef', '', '2', '4', 'null', '0000-00-00', '', '12', '1', '', '0000-00-00', 0, '', '', '', '                                                                                \r\n                                    \r\n                                    ', NULL, '0000-00-00', '', '', '', NULL, NULL, NULL, NULL, '', '', '0000-00-00', '', NULL, 0, 0, '0000-00-00', NULL, '0000-00-00', 0, NULL, 0, '', '', 1, '2017-12-08 10:38:46', '2017-12-08 10:49:47', 1512751126, 0, '', '', '', '', '', '', '                                                                                \r\n                                    \r\n                                    ', '                                                                                \r\n                                    \r\n                                    ', '0000-00-00', '                                                                                \r\n                                    \r\n                                    ', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', 0, '9', '', '', 0, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `buying_orders_colors`
--

CREATE TABLE `buying_orders_colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color_id` int(11) NOT NULL,
  `color_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buying_orders_colors`
--

INSERT INTO `buying_orders_colors` (`id`, `color_name`, `color_id`, `color_type`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(115, '', 15, '', '1512749504', '0', NULL, NULL),
(116, '', 16, '', '1512749504', '0', NULL, NULL),
(117, '', 17, '', '1512749504', '0', NULL, NULL),
(118, '', 15, '', '1512751126', '0', NULL, NULL),
(119, '', 16, '', '1512751126', '0', NULL, NULL),
(120, '', 17, '', '1512751126', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buying_order_sizes`
--

CREATE TABLE `buying_order_sizes` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `qty` int(5) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buying_order_sizes`
--

INSERT INTO `buying_order_sizes` (`id`, `order_id`, `size`, `qty`, `created_at`) VALUES
(1, 1510991904, 'M', 1021, '2017-11-18 07:58:24'),
(2, 1510991904, 'M/L', 0, '2017-11-18 07:58:24'),
(3, 1510991904, 'S', 0, '2017-11-18 07:58:24'),
(4, 1510994085, 'L', 45, '2017-11-18 08:34:45'),
(5, 1510994085, 'M', 56, '2017-11-18 08:34:45'),
(6, 1510994085, 'M/L', 0, '2017-11-18 08:34:45'),
(7, 1510994085, 'S', 96, '2017-11-18 08:34:46'),
(8, 1511441602, 'M', 3000, '2017-11-23 12:53:22'),
(9, 1511441602, 'M/L', 0, '2017-11-23 12:53:22'),
(10, 1511441602, 'S', 5, '2017-11-23 12:53:22'),
(11, 1511441673, 'M', 0, '2017-11-23 12:54:33'),
(12, 1511441673, 'M/L', 0, '2017-11-23 12:54:33'),
(13, 1511441673, 'S', 0, '2017-11-23 12:54:33'),
(14, 1511441869, 'L', 0, '2017-11-23 12:57:49'),
(15, 1511441869, 'M', 0, '2017-11-23 12:57:49'),
(16, 1511441869, 'M/L', 0, '2017-11-23 12:57:49'),
(17, 1511441869, 'S', 0, '2017-11-23 12:57:49'),
(18, 1511447415, 'L', 0, '2017-11-23 14:30:15'),
(19, 1511447415, 'M', 0, '2017-11-23 14:30:15'),
(20, 1511447415, 'M/L', 0, '2017-11-23 14:30:15'),
(21, 1511447415, 'S', 0, '2017-11-23 14:30:15'),
(22, 1512407745, 'L', 0, '2017-12-04 17:15:45'),
(23, 1512407745, 'M', 0, '2017-12-04 17:15:45'),
(24, 1512407745, 'M/L', 0, '2017-12-04 17:15:45'),
(25, 1512433269, 'M', 0, '2017-12-05 00:21:09'),
(26, 1512433269, 'S', 0, '2017-12-05 00:21:09'),
(27, 1512433269, 'XS', 0, '2017-12-05 00:21:09'),
(28, 1512436843, 'g', 0, '2017-12-05 01:20:43'),
(29, 1512436843, 'S', 0, '2017-12-05 01:20:43'),
(30, 1512436900, 'S', 0, '2017-12-05 01:21:40'),
(31, 1512436900, 'M', 0, '2017-12-05 01:21:40'),
(32, 1512437807, 'S', 0, '2017-12-05 01:36:47'),
(33, 1512437828, 'S', 0, '2017-12-05 01:37:08'),
(34, 1512437862, 'S', 0, '2017-12-05 01:37:42'),
(35, 1512437862, 'M', 0, '2017-12-05 01:37:42'),
(36, 1512438535, 'g', 0, '2017-12-05 01:48:55'),
(37, 1512438535, 'S', 0, '2017-12-05 01:48:55'),
(38, 1512438535, 'M', 0, '2017-12-05 01:48:55'),
(39, 1512438535, 'L', 0, '2017-12-05 01:48:55'),
(40, 1512438898, 'S', 0, '2017-12-05 01:54:58'),
(41, 1512438898, 'M', 0, '2017-12-05 01:54:58'),
(42, 1512439348, 'XS', 0, '2017-12-05 02:02:28'),
(43, 1512439348, 'M', 0, '2017-12-05 02:02:28'),
(44, 1512439348, 'L', 0, '2017-12-05 02:02:28'),
(45, 1512448147, 'S', 0, '2017-12-05 04:29:07'),
(46, 1512448147, 'XS', 0, '2017-12-05 04:29:07'),
(47, 1512448147, 'L', 0, '2017-12-05 04:29:07'),
(48, 1512451356, 'S', 0, '2017-12-05 05:22:36'),
(49, 1512451356, 'XS', 0, '2017-12-05 05:22:36'),
(50, 1512451356, 'M', 0, '2017-12-05 05:22:36'),
(51, 1512451356, 'L', 0, '2017-12-05 05:22:36'),
(52, 1512452952, 'XS', 0, '2017-12-05 05:49:12'),
(53, 1512452952, 'S', 0, '2017-12-05 05:49:12'),
(54, 1512452952, 'M', 0, '2017-12-05 05:49:12'),
(55, 1512452952, 'L', 0, '2017-12-05 05:49:12'),
(56, 1512452952, 'XL', 0, '2017-12-05 05:49:12'),
(57, 1512452952, 'XXL', 0, '2017-12-05 05:49:12'),
(58, 1512453448, 'XXS', 0, '2017-12-05 05:57:28'),
(59, 1512453448, 'XS', 0, '2017-12-05 05:57:28'),
(60, 1512453448, 'S', 0, '2017-12-05 05:57:28'),
(61, 1512453448, 'M', 0, '2017-12-05 05:57:28'),
(62, 1512453448, 'L', 0, '2017-12-05 05:57:28'),
(63, 1512453448, 'XL', 0, '2017-12-05 05:57:28'),
(64, 1512453833, 'XXS', 0, '2017-12-05 06:03:53'),
(65, 1512453833, 'XS', 0, '2017-12-05 06:03:53'),
(66, 1512492787, 'S', 0, '2017-12-05 16:53:07'),
(67, 1512492787, 'M', 0, '2017-12-05 16:53:07'),
(68, 1512492787, 'L', 0, '2017-12-05 16:53:07'),
(69, 1512492787, 'XXS', 0, '2017-12-05 16:53:07'),
(70, 1512492787, 'XL', 0, '2017-12-05 16:53:07'),
(71, 1512492990, 'S', 0, '2017-12-05 16:56:30'),
(72, 1512492990, 'M', 0, '2017-12-05 16:56:30'),
(73, 1512492990, 'L', 0, '2017-12-05 16:56:30'),
(74, 1512492990, 'XXS', 0, '2017-12-05 16:56:30'),
(75, 1512492990, 'XL', 0, '2017-12-05 16:56:30'),
(76, 1512493038, 'S', 0, '2017-12-05 16:57:18'),
(77, 1512493038, 'M', 0, '2017-12-05 16:57:18'),
(78, 1512493038, 'L', 0, '2017-12-05 16:57:18'),
(79, 1512493038, 'XXS', 0, '2017-12-05 16:57:18'),
(80, 1512493038, 'XL', 0, '2017-12-05 16:57:18'),
(81, 1512493104, 'S', 0, '2017-12-05 16:58:24'),
(82, 1512493104, 'M', 0, '2017-12-05 16:58:24'),
(83, 1512493854, 'S', 0, '2017-12-05 17:10:55'),
(84, 1512493854, 'M', 0, '2017-12-05 17:10:55'),
(85, 1512493854, 'L', 0, '2017-12-05 17:10:55'),
(86, 1512494013, 'S', 0, '2017-12-05 17:13:33'),
(87, 1512494013, 'M', 0, '2017-12-05 17:13:33'),
(88, 1512494013, 'L', 0, '2017-12-05 17:13:33'),
(89, 1512749504, 'S', 0, '2017-12-08 16:11:44'),
(90, 1512749504, 'M', 0, '2017-12-08 16:11:44'),
(91, 1512749504, 'L', 0, '2017-12-08 16:11:44'),
(92, 1512749504, 'XL', 0, '2017-12-08 16:11:44'),
(93, 1512751126, 'S', 0, '2017-12-08 16:38:46'),
(94, 1512751126, 'M', 0, '2017-12-08 16:38:46'),
(95, 1512751126, 'L', 0, '2017-12-08 16:38:46'),
(96, 1512751126, 'XL', 0, '2017-12-08 16:38:46');

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
(158, 1, 'Updated order information.', '2017-11-14 01:18:10', '0000-00-00 00:00:00', '#000000', '2017-11-13 19:18:10', '2017-11-13 19:18:10', '1489557129', '::1', 'buying_orders', '', 'order', '1'),
(159, 1, 'Logged in', '2017-11-14 04:55:14', '0000-00-00 00:00:00', '#000000', '2017-11-14 10:55:14', '2017-11-14 10:55:14', '1', '::1', 'users', '', '', '1'),
(160, 1, 'Logged in', '2017-11-15 04:13:33', '0000-00-00 00:00:00', '#000000', '2017-11-15 10:13:33', '2017-11-15 10:13:33', '1', '::1', 'users', '', '', '1'),
(161, 1, 'Logged in', '2017-11-16 08:04:32', '0000-00-00 00:00:00', '#000000', '2017-11-16 02:04:32', '2017-11-16 02:04:32', '1', '::1', 'users', '', '', '1'),
(162, 1, 'Logged in', '2017-11-17 12:45:26', '0000-00-00 00:00:00', '#000000', '2017-11-16 18:45:26', '2017-11-16 18:45:26', '1', '::1', 'users', '', '', '1'),
(163, 1, 'Logged in', '2017-11-17 12:45:26', '0000-00-00 00:00:00', '#000000', '2017-11-16 18:45:26', '2017-11-16 18:45:26', '1', '::1', 'users', '', '', '1'),
(164, 1, 'Logged in', '2017-11-17 12:47:30', '0000-00-00 00:00:00', '#000000', '2017-11-16 18:47:30', '2017-11-16 18:47:30', '1', '::1', 'users', '', '', '1'),
(165, 1, 'Logged in', '2017-11-17 12:48:52', '0000-00-00 00:00:00', '#000000', '2017-11-16 18:48:52', '2017-11-16 18:48:52', '1', '::1', 'users', '', '', '1'),
(166, 1, 'Logged in', '2017-11-17 04:15:46', '0000-00-00 00:00:00', '#000000', '2017-11-16 22:15:46', '2017-11-16 22:15:46', '1', '::1', 'users', '', '', '1'),
(167, 1, 'Logged in', '2017-11-17 04:35:09', '0000-00-00 00:00:00', '#000000', '2017-11-16 22:35:09', '2017-11-16 22:35:09', '1', '::1', 'users', '', '', '1'),
(168, 1, 'Logged in', '2017-11-17 05:44:51', '0000-00-00 00:00:00', '#000000', '2017-11-16 23:44:51', '2017-11-16 23:44:51', '1', '::1', 'users', '', '', '1'),
(169, 1, 'Created orders.', '2017-11-17 06:10:45', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:10:45', '2017-11-17 00:10:45', '1510899045', '::1', 'buying_orders', '', '', '1'),
(170, 1, 'Created orders.', '2017-11-17 06:10:58', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:10:58', '2017-11-17 00:10:58', '1510899058', '::1', 'buying_orders', '', '', '1'),
(171, 1, 'Created orders.', '2017-11-17 06:12:27', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:12:27', '2017-11-17 00:12:27', '1510899147', '::1', 'buying_orders', '', '', '1'),
(172, 1, 'Created orders.', '2017-11-17 06:16:59', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:16:59', '2017-11-17 00:16:59', '1510899419', '::1', 'buying_orders', '', '', '1'),
(173, 1, 'Created orders.', '2017-11-17 06:20:07', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:20:07', '2017-11-17 00:20:07', '1510899607', '::1', 'buying_orders', '', '', '1'),
(174, 1, 'Created orders.', '2017-11-17 06:22:25', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:22:25', '2017-11-17 00:22:25', '1510899745', '::1', 'buying_orders', '', '', '1'),
(175, 1, 'Created orders.', '2017-11-17 06:25:17', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:25:17', '2017-11-17 00:25:17', '1510899917', '::1', 'buying_orders', '', '', '1'),
(176, 1, 'Created orders.', '2017-11-17 06:25:36', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:25:36', '2017-11-17 00:25:36', '1510899936', '::1', 'buying_orders', '', '', '1'),
(177, 1, 'Created orders.', '2017-11-17 06:30:17', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:30:17', '2017-11-17 00:30:17', '1510900217', '::1', 'buying_orders', '', '', '1'),
(178, 1, 'Created orders.', '2017-11-17 06:31:33', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:31:33', '2017-11-17 00:31:33', '1510900293', '::1', 'buying_orders', '', '', '1'),
(179, 1, 'Created orders.', '2017-11-17 06:32:07', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:32:07', '2017-11-17 00:32:07', '1510900326', '::1', 'buying_orders', '', '', '1'),
(180, 1, 'Created orders.', '2017-11-17 06:33:30', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:33:30', '2017-11-17 00:33:30', '1510900410', '::1', 'buying_orders', '', '', '1'),
(181, 1, 'Created orders.', '2017-11-17 06:38:18', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:38:18', '2017-11-17 00:38:18', '1510900698', '::1', 'buying_orders', '', '', '1'),
(182, 1, 'Created orders.', '2017-11-17 06:39:22', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:39:22', '2017-11-17 00:39:22', '1510900762', '::1', 'buying_orders', '', '', '1'),
(183, 1, 'Created orders.', '2017-11-17 06:39:30', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:39:30', '2017-11-17 00:39:30', '1510900770', '::1', 'buying_orders', '', '', '1'),
(184, 1, 'Created orders.', '2017-11-17 06:39:35', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:39:35', '2017-11-17 00:39:35', '1510900775', '::1', 'buying_orders', '', '', '1'),
(185, 1, 'Created orders.', '2017-11-17 06:40:23', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:40:23', '2017-11-17 00:40:23', '1510900823', '::1', 'buying_orders', '', '', '1'),
(186, 1, 'Created orders.', '2017-11-17 06:41:24', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:41:24', '2017-11-17 00:41:24', '1510900884', '::1', 'buying_orders', '', '', '1'),
(187, 1, 'Created orders.', '2017-11-17 06:42:00', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:42:00', '2017-11-17 00:42:00', '1510900920', '::1', 'buying_orders', '', '', '1'),
(188, 1, 'Created orders.', '2017-11-17 06:43:12', '0000-00-00 00:00:00', '#000000', '2017-11-17 00:43:12', '2017-11-17 00:43:12', '1510900992', '::1', 'buying_orders', '', '', '1'),
(189, 1, 'Created orders.', '2017-11-17 08:31:44', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:31:44', '2017-11-17 02:31:44', '1510907503', '::1', 'buying_orders', '', '', '1'),
(190, 1, 'Created orders.', '2017-11-17 08:31:58', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:31:58', '2017-11-17 02:31:58', '1510907518', '::1', 'buying_orders', '', '', '1'),
(191, 1, 'Created orders.', '2017-11-17 08:36:45', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:36:45', '2017-11-17 02:36:45', '1510907805', '::1', 'buying_orders', '', '', '1'),
(192, 1, 'Created orders.', '2017-11-17 08:37:03', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:37:03', '2017-11-17 02:37:03', '1510907823', '::1', 'buying_orders', '', '', '1'),
(193, 1, 'Created orders.', '2017-11-17 08:37:08', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:37:08', '2017-11-17 02:37:08', '1510907828', '::1', 'buying_orders', '', '', '1'),
(194, 1, 'Created orders.', '2017-11-17 08:38:02', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:38:02', '2017-11-17 02:38:02', '1510907882', '::1', 'buying_orders', '', '', '1'),
(195, 1, 'Created orders.', '2017-11-17 08:39:05', '0000-00-00 00:00:00', '#000000', '2017-11-17 02:39:05', '2017-11-17 02:39:05', '1510907945', '::1', 'buying_orders', '', '', '1'),
(196, 1, 'Created orders.', '2017-11-17 09:00:27', '0000-00-00 00:00:00', '#000000', '2017-11-17 03:00:27', '2017-11-17 03:00:27', '1510909227', '::1', 'buying_orders', '', '', '1'),
(197, 1, 'Updated order information.', '2017-11-17 09:31:39', '0000-00-00 00:00:00', '#000000', '2017-11-17 03:31:39', '2017-11-17 03:31:39', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(198, 1, 'Logged in', '2017-11-17 01:57:11', '0000-00-00 00:00:00', '#000000', '2017-11-17 07:57:11', '2017-11-17 07:57:11', '1', '::1', 'users', '', '', '1'),
(199, 1, 'Updated order information.', '2017-11-17 04:00:40', '0000-00-00 00:00:00', '#000000', '2017-11-17 10:00:40', '2017-11-17 10:00:40', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(200, 1, 'Updated order information.', '2017-11-17 04:00:50', '0000-00-00 00:00:00', '#000000', '2017-11-17 10:00:50', '2017-11-17 10:00:50', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(201, 1, 'Logged in', '2017-11-18 12:04:27', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:04:27', '2017-11-17 18:04:27', '1', '::1', 'users', '', '', '1'),
(202, 1, 'Updated order information.', '2017-11-18 12:13:51', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:13:51', '2017-11-17 18:13:51', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(203, 1, 'Updated order information.', '2017-11-18 12:13:58', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:13:58', '2017-11-17 18:13:58', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(204, 1, 'Updated order information.', '2017-11-18 12:14:11', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:14:11', '2017-11-17 18:14:11', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(205, 1, 'Updated order information.', '2017-11-18 12:14:35', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:14:35', '2017-11-17 18:14:35', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(206, 1, 'Created orders.', '2017-11-18 12:15:17', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:15:17', '2017-11-17 18:15:17', '1510964117', '::1', 'buying_orders', '', '', '1'),
(207, 1, 'Updated order information.', '2017-11-18 12:15:38', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:15:38', '2017-11-17 18:15:38', '1510964117', '::1', 'buying_orders', '', 'order', '1'),
(208, 1, 'Created orders.', '2017-11-18 12:15:58', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:15:58', '2017-11-17 18:15:58', '1510964157', '::1', 'buying_orders', '', '', '1'),
(209, 1, 'Created orders.', '2017-11-18 12:18:09', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:18:09', '2017-11-17 18:18:09', '1510964289', '::1', 'buying_orders', '', '', '1'),
(210, 1, 'Created orders.', '2017-11-18 12:18:59', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:18:59', '2017-11-17 18:18:59', '1510964339', '::1', 'buying_orders', '', '', '1'),
(211, 1, 'Created orders.', '2017-11-18 12:19:50', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:19:50', '2017-11-17 18:19:50', '1510964390', '::1', 'buying_orders', '', '', '1'),
(212, 1, 'Updated order information.', '2017-11-18 12:35:41', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:35:41', '2017-11-17 18:35:41', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(213, 1, 'Updated order information.', '2017-11-18 12:38:57', '0000-00-00 00:00:00', '#000000', '2017-11-17 18:38:57', '2017-11-17 18:38:57', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(214, 1, 'Updated order information.', '2017-11-18 01:27:21', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:27:21', '2017-11-17 19:27:21', '1510909227', '::1', 'buying_orders', '', 'order', '1'),
(215, 1, 'Created orders.', '2017-11-18 01:35:16', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:35:16', '2017-11-17 19:35:16', '1510968916', '::1', 'buying_orders', '', '', '1'),
(216, 1, 'Created orders.', '2017-11-18 01:35:50', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:35:50', '2017-11-17 19:35:50', '1510968950', '::1', 'buying_orders', '', '', '1'),
(217, 1, 'Created orders.', '2017-11-18 01:37:23', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:37:23', '2017-11-17 19:37:23', '1510969043', '::1', 'buying_orders', '', '', '1'),
(218, 1, 'Created orders.', '2017-11-18 01:38:10', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:38:10', '2017-11-17 19:38:10', '1510969089', '::1', 'buying_orders', '', '', '1'),
(219, 1, 'Created orders.', '2017-11-18 01:51:55', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:51:55', '2017-11-17 19:51:55', '1510969915', '::1', 'buying_orders', '', '', '1'),
(220, 1, 'Created orders.', '2017-11-18 01:59:46', '0000-00-00 00:00:00', '#000000', '2017-11-17 19:59:46', '2017-11-17 19:59:46', '1510970386', '::1', 'buying_orders', '', '', '1'),
(221, 1, 'Created orders.', '2017-11-18 02:01:46', '0000-00-00 00:00:00', '#000000', '2017-11-17 20:01:46', '2017-11-17 20:01:46', '1510970506', '::1', 'buying_orders', '', '', '1'),
(222, 1, 'Created orders.', '2017-11-18 02:06:35', '0000-00-00 00:00:00', '#000000', '2017-11-17 20:06:35', '2017-11-17 20:06:35', '1510970795', '::1', 'buying_orders', '', '', '1'),
(223, 1, 'Logged in', '2017-11-18 04:38:28', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:38:28', '2017-11-17 22:38:28', '1', '::1', 'users', '', '', '1'),
(224, 1, 'Created orders.', '2017-11-18 04:42:13', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:42:13', '2017-11-17 22:42:13', '1510980133', '::1', 'buying_orders', '', '', '1'),
(225, 1, 'Created orders.', '2017-11-18 04:46:28', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:46:28', '2017-11-17 22:46:28', '1510980387', '::1', 'buying_orders', '', '', '1'),
(226, 1, 'Created orders.', '2017-11-18 04:49:17', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:49:17', '2017-11-17 22:49:17', '1510980557', '::1', 'buying_orders', '', '', '1'),
(227, 1, 'Created orders.', '2017-11-18 04:52:45', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:52:45', '2017-11-17 22:52:45', '1510980765', '::1', 'buying_orders', '', '', '1'),
(228, 1, 'Updated order information.', '2017-11-18 04:53:05', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:53:05', '2017-11-17 22:53:05', '1510980765', '::1', 'buying_orders', '', 'order', '1'),
(229, 1, 'Created orders.', '2017-11-18 04:53:42', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:53:42', '2017-11-17 22:53:42', '1510980821', '::1', 'buying_orders', '', '', '1'),
(230, 1, 'Created orders.', '2017-11-18 04:59:11', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:59:11', '2017-11-17 22:59:11', '1510981151', '::1', 'buying_orders', '', '', '1'),
(231, 1, 'Created orders.', '2017-11-18 04:59:51', '0000-00-00 00:00:00', '#000000', '2017-11-17 22:59:51', '2017-11-17 22:59:51', '1510981191', '::1', 'buying_orders', '', '', '1'),
(232, 1, 'Created orders.', '2017-11-18 05:00:12', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:00:12', '2017-11-17 23:00:12', '1510981212', '::1', 'buying_orders', '', '', '1'),
(233, 1, 'Updated order information.', '2017-11-18 05:06:27', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:06:27', '2017-11-17 23:06:27', '1510980133', '::1', 'buying_orders', '', 'order', '1'),
(234, 1, 'Created orders.', '2017-11-18 05:14:41', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:14:41', '2017-11-17 23:14:41', '1510982079', '::1', 'buying_orders', '', '', '1'),
(235, 1, 'Created orders.', '2017-11-18 05:17:17', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:17:17', '2017-11-17 23:17:17', '1510982235', '::1', 'buying_orders', '', '', '1'),
(236, 1, 'Created orders.', '2017-11-18 05:28:14', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:28:14', '2017-11-17 23:28:14', '1510982892', '::1', 'buying_orders', '', '', '1'),
(237, 1, 'Created orders.', '2017-11-18 05:29:29', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:29:29', '2017-11-17 23:29:29', '1510982969', '::1', 'buying_orders', '', '', '1'),
(238, 1, 'Created orders.', '2017-11-18 05:30:07', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:30:07', '2017-11-17 23:30:07', '1510983006', '::1', 'buying_orders', '', '', '1'),
(239, 1, 'Created orders.', '2017-11-18 05:32:26', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:32:26', '2017-11-17 23:32:26', '1510983145', '::1', 'buying_orders', '', '', '1'),
(240, 1, 'Created orders.', '2017-11-18 05:33:04', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:33:04', '2017-11-17 23:33:04', '1510983184', '::1', 'buying_orders', '', '', '1'),
(241, 1, 'Created orders.', '2017-11-18 05:41:01', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:41:01', '2017-11-17 23:41:01', '1510983661', '::1', 'buying_orders', '', '', '1'),
(242, 1, 'Created orders.', '2017-11-18 05:41:32', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:41:32', '2017-11-17 23:41:32', '1510983692', '::1', 'buying_orders', '', '', '1'),
(243, 1, 'Updated order information.', '2017-11-18 05:50:09', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:50:09', '2017-11-17 23:50:09', '1510983692', '::1', 'buying_orders', '', 'order', '1'),
(244, 1, 'Updated order information.', '2017-11-18 05:50:28', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:50:28', '2017-11-17 23:50:28', '1510983692', '::1', 'buying_orders', '', 'order', '1'),
(245, 1, 'Updated order information.', '2017-11-18 05:51:28', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:51:28', '2017-11-17 23:51:28', '1510983692', '::1', 'buying_orders', '', 'order', '1'),
(246, 1, 'Created orders.', '2017-11-18 05:59:14', '0000-00-00 00:00:00', '#000000', '2017-11-17 23:59:14', '2017-11-17 23:59:14', '1510984753', '::1', 'buying_orders', '', '', '1'),
(247, 1, 'Logged in', '2017-11-18 06:11:49', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:11:49', '2017-11-18 00:11:49', '1', '::1', 'users', '', '', '1'),
(248, 1, 'Created orders.', '2017-11-18 06:12:04', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:12:04', '2017-11-18 00:12:04', '1510985523', '::1', 'buying_orders', '', '', '1'),
(249, 1, 'Created orders.', '2017-11-18 06:19:03', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:19:03', '2017-11-18 00:19:03', '1510985943', '::1', 'buying_orders', '', '', '1'),
(250, 1, 'Created orders.', '2017-11-18 06:20:40', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:20:40', '2017-11-18 00:20:40', '1510986040', '::1', 'buying_orders', '', '', '1'),
(251, 1, 'Created orders.', '2017-11-18 06:24:48', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:24:48', '2017-11-18 00:24:48', '1510986288', '::1', 'buying_orders', '', '', '1'),
(252, 1, 'Updated order information.', '2017-11-18 06:28:08', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:28:08', '2017-11-18 00:28:08', '1510986288', '::1', 'buying_orders', '', 'order', '1'),
(253, 1, 'Created orders.', '2017-11-18 06:29:09', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:29:09', '2017-11-18 00:29:09', '1510986549', '::1', 'buying_orders', '', '', '1'),
(254, 1, 'Updated order information.', '2017-11-18 06:29:55', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:29:55', '2017-11-18 00:29:55', '1510986549', '::1', 'buying_orders', '', 'order', '1'),
(255, 1, 'Updated order information.', '2017-11-18 06:30:07', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:30:07', '2017-11-18 00:30:07', '1510986549', '::1', 'buying_orders', '', 'order', '1'),
(256, 1, 'Updated order information.', '2017-11-18 06:30:57', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:30:57', '2017-11-18 00:30:57', '1510986549', '::1', 'buying_orders', '', 'order', '1'),
(257, 1, 'Updated order information.', '2017-11-18 06:32:02', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:32:02', '2017-11-18 00:32:02', '1510986549', '::1', 'buying_orders', '', 'order', '1'),
(258, 1, 'Created orders.', '2017-11-18 06:44:33', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:44:33', '2017-11-18 00:44:33', '1510987472', '::1', 'buying_orders', '', '', '1'),
(259, 1, 'Updated order information.', '2017-11-18 06:46:22', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:46:22', '2017-11-18 00:46:22', '1510987472', '::1', 'buying_orders', '', 'order', '1'),
(260, 1, 'Created orders.', '2017-11-18 06:47:42', '0000-00-00 00:00:00', '#000000', '2017-11-18 00:47:42', '2017-11-18 00:47:42', '1510987661', '::1', 'buying_orders', '', '', '1'),
(261, 1, 'Updated order information.', '2017-11-18 07:00:10', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:00:10', '2017-11-18 01:00:10', '1510987661', '::1', 'buying_orders', '', 'order', '1'),
(262, 1, 'Created orders.', '2017-11-18 07:36:25', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:36:25', '2017-11-18 01:36:25', '1510990585', '::1', 'buying_orders', '', '', '1'),
(263, 1, 'Created orders.', '2017-11-18 07:40:23', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:40:23', '2017-11-18 01:40:23', '1510990822', '::1', 'buying_orders', '', '', '1'),
(264, 1, 'Created orders.', '2017-11-18 07:49:10', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:49:10', '2017-11-18 01:49:10', '1510991350', '::1', 'buying_orders', '', '', '1'),
(265, 1, 'Created orders.', '2017-11-18 07:49:42', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:49:42', '2017-11-18 01:49:42', '1510991382', '::1', 'buying_orders', '', '', '1'),
(266, 1, 'Created orders.', '2017-11-18 07:58:24', '0000-00-00 00:00:00', '#000000', '2017-11-18 01:58:24', '2017-11-18 01:58:24', '1510991904', '::1', 'buying_orders', '', '', '1'),
(267, 1, 'Updated order information.', '2017-11-18 08:01:58', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:01:58', '2017-11-18 02:01:58', '1510991904', '::1', 'buying_orders', '', 'order', '1'),
(268, 1, 'Logged in', '2017-11-18 08:34:05', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:34:05', '2017-11-18 02:34:05', '1', '::1', 'users', '', '', '1'),
(269, 1, 'Created orders.', '2017-11-18 08:34:46', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:34:46', '2017-11-18 02:34:46', '1510994085', '::1', 'buying_orders', '', '', '1'),
(270, 1, 'Updated order information.', '2017-11-18 08:36:56', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:36:56', '2017-11-18 02:36:56', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(271, 1, 'Handedover Date (Style: xyz)', '2017-11-18 08:49:04', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:49:04', '2017-11-18 02:49:04', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(272, 1, 'Handedover Date (Style: xyz)', '2017-11-18 08:50:07', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:50:07', '2017-11-18 02:50:07', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(273, 1, 'Handedover Date (Style: xyz)', '2017-11-18 08:52:14', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:52:14', '2017-11-18 02:52:14', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(274, 1, 'Handedover Date (Style: xyz)', '2017-11-01 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:53:25', '2017-11-18 02:53:25', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(275, 1, 'Handedover Date (Style: xyz)', '2017-11-02 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-11-18 02:55:42', '2017-11-18 02:55:42', '1510994085', '::1', 'buying_orders', '', 'order', '1'),
(276, 1, 'Logged in', '2017-11-23 12:51:45', '0000-00-00 00:00:00', '#000000', '2017-11-23 06:51:45', '2017-11-23 06:51:45', '1', '::1', 'users', '', '', '1'),
(277, 1, 'Created orders.', '2017-11-23 12:53:22', '0000-00-00 00:00:00', '#000000', '2017-11-23 06:53:22', '2017-11-23 06:53:22', '1511441602', '::1', 'buying_orders', '', '', '1'),
(278, 1, 'Created orders.', '2017-11-23 12:54:33', '0000-00-00 00:00:00', '#000000', '2017-11-23 06:54:33', '2017-11-23 06:54:33', '1511441673', '::1', 'buying_orders', '', '', '1'),
(279, 1, 'Created orders.', '2017-11-23 12:57:49', '0000-00-00 00:00:00', '#000000', '2017-11-23 06:57:49', '2017-11-23 06:57:49', '1511441869', '::1', 'buying_orders', '', '', '1'),
(280, 1, 'Handedover Date (Style: style1)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-11-23 06:59:36', '2017-11-23 06:59:36', '1511441602', '::1', 'buying_orders', '', 'order', '1'),
(281, 1, 'Created orders.', '2017-11-23 02:30:15', '0000-00-00 00:00:00', '#000000', '2017-11-23 08:30:15', '2017-11-23 08:30:15', '1511447415', '::1', 'buying_orders', '', '', '1'),
(282, 1, 'Handedover Date (Style: test)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-11-23 08:30:30', '2017-11-23 08:30:30', '1511447415', '::1', 'buying_orders', '', 'order', '1'),
(283, 1, 'Logged in', '2017-12-04 03:45:59', '0000-00-00 00:00:00', '#000000', '2017-12-04 09:45:59', '2017-12-04 09:45:59', '1', '::1', 'users', '', '', '1'),
(284, 1, 'Logged in', '2017-12-04 04:24:38', '0000-00-00 00:00:00', '#000000', '2017-12-04 10:24:38', '2017-12-04 10:24:38', '1', '::1', 'users', '', '', '1'),
(285, 1, 'Created an employee.', '2017-12-04 05:11:42', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:11:42', '2017-12-04 11:11:42', '1512407502', '::1', 'users', '', '', '1'),
(286, 1512407502, 'Logged in', '2017-12-04 05:12:06', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:12:06', '2017-12-04 11:12:06', '1512407502', '::1', 'users', '', '', '1'),
(287, 1, 'Logged in', '2017-12-04 05:12:21', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:12:21', '2017-12-04 11:12:21', '1', '::1', 'users', '', '', '1'),
(288, 1, 'Created an employee.', '2017-12-04 05:13:03', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:13:03', '2017-12-04 11:13:03', '1512407583', '::1', 'users', '', '', '1'),
(289, 1, 'Updated emplooyee information.', '2017-12-04 05:13:14', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:13:14', '2017-12-04 11:13:14', '1512407583', '::1', 'users', 'Updated emplooyee information.', '', '1'),
(290, 1, 'Created orders.', '2017-12-04 05:15:45', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:15:45', '2017-12-04 11:15:45', '1512407745', '::1', 'buying_orders', '', '', '1'),
(291, 1, 'Handedover Date (Style: 123)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:16:05', '2017-12-04 11:16:05', '1512407745', '::1', 'buying_orders', '', 'order', '1'),
(292, 1, 'Uploaded files.', '2017-12-04 05:21:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 11:21:00', '2017-12-04 11:21:00', '1512407745', '::1', 'documents', '', '', '1'),
(293, 1, 'Logged in', '2017-12-05 12:02:55', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:02:55', '2017-12-04 18:02:55', '1', '::1', 'users', '', '', '1'),
(294, 1, 'Uploaded files.', '2017-12-05 12:09:21', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:09:21', '2017-12-04 18:09:21', '1511441602', '::1', 'documents', '', '', '1'),
(295, 1, 'Uploaded files.', '2017-12-05 12:10:53', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:10:53', '2017-12-04 18:10:53', '1511441602', '::1', 'documents', '', '', '1'),
(296, 1, 'Uploaded files.', '2017-12-05 12:14:16', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:14:16', '2017-12-04 18:14:16', '1511441602', '::1', 'documents', '', '', '1'),
(297, 1, 'Uploaded files.', '2017-12-05 12:14:48', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:14:48', '2017-12-04 18:14:48', '1511441602', '::1', 'documents', '', '', '1'),
(298, 1, 'Uploaded files.', '2017-12-05 12:15:49', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:15:49', '2017-12-04 18:15:49', '1511441602', '::1', 'documents', '', '', '1'),
(299, 1, 'Uploaded files.', '2017-12-05 12:16:28', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:16:28', '2017-12-04 18:16:28', '1511441602', '::1', 'documents', '', '', '1'),
(300, 1, 'Uploaded files.', '2017-12-05 12:16:47', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:16:47', '2017-12-04 18:16:47', '1511441602', '::1', 'documents', '', '', '1'),
(301, 1, 'Uploaded files.', '2017-12-05 12:17:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:17:00', '2017-12-04 18:17:00', '1511441602', '::1', 'documents', '', '', '1'),
(302, 1, 'Uploaded files.', '2017-12-05 12:17:14', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:17:14', '2017-12-04 18:17:14', '1511441602', '::1', 'documents', '', '', '1'),
(303, 1, 'Uploaded files.', '2017-12-05 12:17:34', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:17:34', '2017-12-04 18:17:34', '1511441602', '::1', 'documents', '', '', '1'),
(304, 1, 'Uploaded files.', '2017-12-05 12:18:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:18:00', '2017-12-04 18:18:00', '1511441602', '::1', 'documents', '', '', '1'),
(305, 1, 'Uploaded files.', '2017-12-05 12:20:15', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:20:15', '2017-12-04 18:20:15', '1511441602', '::1', 'documents', '', '', '1'),
(306, 1, 'Uploaded files.', '2017-12-05 12:20:24', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:20:24', '2017-12-04 18:20:24', '1511441602', '::1', 'documents', '', '', '1'),
(307, 1, 'Created orders.', '2017-12-05 12:21:10', '0000-00-00 00:00:00', '#000000', '2017-12-04 18:21:10', '2017-12-04 18:21:10', '1512433269', '::1', 'buying_orders', '', '', '1'),
(308, 1, 'Created orders.', '2017-12-05 01:20:43', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:20:43', '2017-12-04 19:20:43', '1512436843', '::1', 'buying_orders', '', '', '1');
INSERT INTO `calendars` (`id`, `user_id`, `title`, `start`, `end`, `color`, `created_at`, `updated_at`, `reference`, `ip_address`, `reference_table`, `tooltip`, `activity_type`, `flag`) VALUES
(309, 1, 'Created orders.', '2017-12-05 01:21:40', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:21:40', '2017-12-04 19:21:40', '1512436900', '::1', 'buying_orders', '', '', '1'),
(310, 1, 'Handedover Date (Style: aseef)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:30:00', '2017-12-04 19:30:00', '1512436900', '::1', 'buying_orders', '', 'order', '1'),
(311, 1, 'Created orders.', '2017-12-05 01:36:47', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:36:47', '2017-12-04 19:36:47', '1512437807', '::1', 'buying_orders', '', '', '1'),
(312, 1, 'Created orders.', '2017-12-05 01:37:08', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:37:08', '2017-12-04 19:37:08', '1512437828', '::1', 'buying_orders', '', '', '1'),
(313, 1, 'Created orders.', '2017-12-05 01:37:42', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:37:42', '2017-12-04 19:37:42', '1512437862', '::1', 'buying_orders', '', '', '1'),
(314, 1, 'Handedover Date (Style: test)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:39:31', '2017-12-04 19:39:31', '1512437862', '::1', 'buying_orders', '', 'order', '1'),
(315, 1, 'Created orders.', '2017-12-05 01:48:55', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:48:55', '2017-12-04 19:48:55', '1512438535', '::1', 'buying_orders', '', '', '1'),
(316, 1, 'Handedover Date (Style: mithu)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:50:34', '2017-12-04 19:50:34', '1512438535', '::1', 'buying_orders', '', 'order', '1'),
(317, 1, 'Created orders.', '2017-12-05 01:54:58', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:54:58', '2017-12-04 19:54:58', '1512438898', '::1', 'buying_orders', '', '', '1'),
(318, 1, 'Handedover Date (Style: toni)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-04 19:55:12', '2017-12-04 19:55:12', '1512438898', '::1', 'buying_orders', '', 'order', '1'),
(319, 1, 'Logged in', '2017-12-05 02:01:40', '0000-00-00 00:00:00', '#000000', '2017-12-05 02:01:40', '2017-12-05 02:01:40', '1', '117.103.86.14', 'users', '', '', '1'),
(320, 1, 'Created orders.', '2017-12-05 02:02:28', '0000-00-00 00:00:00', '#000000', '2017-12-05 02:02:28', '2017-12-05 02:02:28', '1512439348', '117.103.86.14', 'buying_orders', '', '', '1'),
(321, 1, 'Handedover Date (Style: test)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 02:02:43', '2017-12-05 02:02:43', '1512439348', '117.103.86.14', 'buying_orders', '', 'order', '1'),
(322, 1, 'Logged in', '2017-12-05 04:25:49', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:25:49', '2017-12-05 04:25:49', '1', '175.29.186.58', 'users', '', '', '1'),
(323, 1, 'Logged in', '2017-12-05 04:26:10', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:26:10', '2017-12-05 04:26:10', '1', '175.29.186.58', 'users', '', '', '1'),
(324, 1, 'Logged in', '2017-12-05 04:27:27', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:27:27', '2017-12-05 04:27:27', '1', '175.29.186.58', 'users', '', '', '1'),
(325, 1, 'Created an employee.', '2017-12-05 04:28:04', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:28:04', '2017-12-05 04:28:04', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(326, 1512448084, 'Logged in', '2017-12-05 04:28:42', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:28:42', '2017-12-05 04:28:42', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(327, 1512448084, 'Created orders.', '2017-12-05 04:29:07', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:29:07', '2017-12-05 04:29:07', '1512448147', '175.29.186.58', 'buying_orders', '', '', '1'),
(328, 1512448084, 'Handedover Date (Style: aseef)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:29:32', '2017-12-05 04:29:32', '1512448147', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(329, 1512448084, 'Logged in', '2017-12-05 04:29:58', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:29:58', '2017-12-05 04:29:58', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(330, 1512448084, 'Logged in', '2017-12-05 04:30:38', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:30:38', '2017-12-05 04:30:38', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(331, 1, 'test', '2017-02-04 00:02:00', '2017-02-04 00:02:00', '#008080', '2017-12-05 04:44:52', '2017-12-05 04:44:52', 'f0e055d2139a4545fe98b07c2fe9e850', '', '', '', 'event', '0'),
(332, 1512448084, 'test', '2017-02-04 00:02:00', '2017-02-04 00:02:00', '#008080', '2017-12-05 04:44:52', '2017-12-05 04:44:52', 'f0e055d2139a4545fe98b07c2fe9e850', '', '', '', 'event', '1'),
(333, 1512448084, 'Logged in', '2017-12-05 04:49:11', '0000-00-00 00:00:00', '#000000', '2017-12-05 04:49:11', '2017-12-05 04:49:11', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(334, 1512448084, 'Logged in', '2017-12-05 05:10:03', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:10:03', '2017-12-05 05:10:03', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(335, 1512448084, 'Logged in', '2017-12-05 05:20:31', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:20:31', '2017-12-05 05:20:31', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(336, 1512448084, 'Created orders.', '2017-12-05 05:22:36', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:22:36', '2017-12-05 05:22:36', '1512451356', '175.29.186.58', 'buying_orders', '', '', '1'),
(337, 1512448084, 'Uploaded files.', '2017-12-05 05:33:59', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:33:59', '2017-12-05 05:33:59', '1512451356', '175.29.186.58', 'documents', '', '', '1'),
(338, 1512448084, 'Uploaded files.', '2017-12-05 05:34:26', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:34:26', '2017-12-05 05:34:26', '1512451356', '175.29.186.58', 'documents', '', '', '1'),
(339, 1512448084, 'Uploaded files.', '2017-12-05 05:35:13', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:35:13', '2017-12-05 05:35:13', '1512451356', '175.29.186.58', 'documents', '', '', '1'),
(340, 1512448084, 'Handedover Date (Style: 70s645wm)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:40:09', '2017-12-05 05:40:09', '1512451356', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(341, 1512448084, 'Created orders.', '2017-12-05 05:49:12', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:49:12', '2017-12-05 05:49:12', '1512452952', '175.29.186.58', 'buying_orders', '', '', '1'),
(342, 1512448084, 'Handedover Date (Style: 70S645WM)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:53:49', '2017-12-05 05:53:49', '1512452952', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(343, 1512448084, 'Created orders.', '2017-12-05 05:57:28', '0000-00-00 00:00:00', '#000000', '2017-12-05 05:57:28', '2017-12-05 05:57:28', '1512453448', '175.29.186.58', 'buying_orders', '', '', '1'),
(344, 1512448084, 'Logged in', '2017-12-05 06:03:05', '0000-00-00 00:00:00', '#000000', '2017-12-05 06:03:05', '2017-12-05 06:03:05', '1512448084', '175.29.186.58', 'users', '', '', '1'),
(345, 1512448084, 'Created orders.', '2017-12-05 06:03:53', '0000-00-00 00:00:00', '#000000', '2017-12-05 06:03:53', '2017-12-05 06:03:53', '1512453833', '175.29.186.58', 'buying_orders', '', '', '1'),
(346, 1512448084, 'Handedover Date (Style: hgfkhf)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 06:06:07', '2017-12-05 06:06:07', '1512453833', '175.29.186.58', 'buying_orders', '', 'order', '1'),
(347, 1512448084, 'Logged in', '2017-12-05 01:59:14', '0000-00-00 00:00:00', '#000000', '2017-12-05 07:59:14', '2017-12-05 07:59:14', '1512448084', '::1', 'users', '', '', '1'),
(348, 1512448084, 'Uploaded files.', '2017-12-05 02:09:29', '0000-00-00 00:00:00', '#000000', '2017-12-05 08:09:29', '2017-12-05 08:09:29', '1512453833', '::1', 'documents', '', '', '1'),
(349, 1512448084, 'Logged in', '2017-12-05 04:33:27', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:33:27', '2017-12-05 10:33:27', '1512448084', '::1', 'users', '', '', '1'),
(350, 1512448084, 'Created orders.', '2017-12-05 04:53:07', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:53:07', '2017-12-05 10:53:07', '1512492787', '::1', 'buying_orders', '', '', '1'),
(351, 1512448084, 'Handedover Date (Style: test)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:53:22', '2017-12-05 10:53:22', '1512492787', '::1', 'buying_orders', '', 'order', '1'),
(352, 1512448084, 'Created orders.', '2017-12-05 04:56:30', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:56:30', '2017-12-05 10:56:30', '1512492990', '::1', 'buying_orders', '', '', '1'),
(353, 1512448084, 'Handedover Date (Style: aaaaaaaaaa)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:56:47', '2017-12-05 10:56:47', '1512492990', '::1', 'buying_orders', '', 'order', '1'),
(354, 1512448084, 'Created orders.', '2017-12-05 04:57:18', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:57:18', '2017-12-05 10:57:18', '1512493038', '::1', 'buying_orders', '', '', '1'),
(355, 1512448084, 'Handedover Date (Style: ratul)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:57:28', '2017-12-05 10:57:28', '1512493038', '::1', 'buying_orders', '', 'order', '1'),
(356, 1512448084, 'Created orders.', '2017-12-05 04:58:24', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:58:24', '2017-12-05 10:58:24', '1512493104', '::1', 'buying_orders', '', '', '1'),
(357, 1512448084, 'Handedover Date (Style: asssss)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 10:58:32', '2017-12-05 10:58:32', '1512493104', '::1', 'buying_orders', '', 'order', '1'),
(358, 1512448084, 'Created orders.', '2017-12-05 05:10:55', '0000-00-00 00:00:00', '#000000', '2017-12-05 11:10:55', '2017-12-05 11:10:55', '1512493854', '::1', 'buying_orders', '', '', '1'),
(359, 1512448084, 'Handedover Date (Style: 1234565)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 11:11:09', '2017-12-05 11:11:09', '1512493854', '::1', 'buying_orders', '', 'order', '1'),
(360, 1512448084, 'Created orders.', '2017-12-05 05:13:33', '0000-00-00 00:00:00', '#000000', '2017-12-05 11:13:33', '2017-12-05 11:13:33', '1512494013', '::1', 'buying_orders', '', '', '1'),
(361, 1512448084, 'Handedover Date (Style: 55)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-05 11:13:44', '2017-12-05 11:13:44', '1512494013', '::1', 'buying_orders', '', 'order', '1'),
(362, 1, 'Logged in', '2017-12-08 04:10:24', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:10:24', '2017-12-08 10:10:24', '1', '::1', 'users', '', '', '1'),
(363, 1, 'Created orders.', '2017-12-08 04:11:44', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:11:44', '2017-12-08 10:11:44', '1512749504', '::1', 'buying_orders', '', '', '1'),
(364, 1, 'Handedover Date (Style: test)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:15:05', '2017-12-08 10:15:05', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(365, 1, 'Logged in', '2017-12-08 04:35:18', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:35:18', '2017-12-08 10:35:18', '1', '::1', 'users', '', '', '1'),
(366, 1, 'Created orders.', '2017-12-08 04:38:46', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:38:46', '2017-12-08 10:38:46', '1512751126', '::1', 'buying_orders', '', '', '1'),
(367, 1, 'Handedover Date (Style: aseef)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:38:59', '2017-12-08 10:38:59', '1512751126', '::1', 'buying_orders', '', 'order', '1'),
(368, 1, 'Logged in', '2017-12-08 04:44:57', '0000-00-00 00:00:00', '#000000', '2017-12-08 10:44:57', '2017-12-08 10:44:57', '1', '::1', 'users', '', '', '1'),
(369, 1, 'Logged in', '2017-12-09 02:34:01', '0000-00-00 00:00:00', '#000000', '2017-12-08 20:34:01', '2017-12-08 20:34:01', '1', '::1', 'users', '', '', '1'),
(370, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 20:36:14', '2017-12-08 20:36:14', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(371, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 20:36:23', '2017-12-08 20:36:23', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(372, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 20:46:55', '2017-12-08 20:46:55', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(373, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 20:47:09', '2017-12-08 20:47:09', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(374, 1, 'Logged in', '2017-12-09 03:08:02', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:08:02', '2017-12-08 21:08:02', '1', '::1', 'users', '', '', '1'),
(375, 1, 'Logged in', '2017-12-09 03:12:55', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:12:55', '2017-12-08 21:12:55', '1', '::1', 'users', '', '', '1'),
(376, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:17:54', '2017-12-08 21:17:54', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(377, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:38:28', '2017-12-08 21:38:28', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(378, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:38:46', '2017-12-08 21:38:46', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(379, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:51:04', '2017-12-08 21:51:04', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(380, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:53:01', '2017-12-08 21:53:01', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(381, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:55:25', '2017-12-08 21:55:25', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(382, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 21:58:03', '2017-12-08 21:58:03', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(383, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:00:02', '2017-12-08 22:00:02', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(384, 1, 'Handedover Date (Style: test)', '2017-12-30 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:14:49', '2017-12-08 22:14:49', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(385, 1, 'Uploaded files.', '2017-12-09 04:16:25', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:16:25', '2017-12-08 22:16:25', '1512749504', '::1', 'documents', '', '', '1'),
(386, 1, 'Handover Date (Style: test)', '2018-01-10 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:18:57', '2017-12-08 22:18:57', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(387, 1, 'Handover Date (Style: test)', '2017-12-12 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:19:07', '2017-12-08 22:19:07', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(388, 1, 'Handover Date (Style: test)', '2018-01-19 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:19:33', '2017-12-08 22:19:33', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(389, 1, 'Handover Date (Style: test)', '2018-01-19 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:31:34', '2017-12-08 22:31:34', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(390, 1, 'Handover Date (Style: test)', '2018-01-19 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:31:52', '2017-12-08 22:31:52', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(391, 1, 'Handover Date (Style: test)', '2018-01-19 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:32:04', '2017-12-08 22:32:04', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(392, 1, 'Handover Date (Style: test)', '2018-01-19 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:34:20', '2017-12-08 22:34:20', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(393, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:44:55', '2017-12-08 22:44:55', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(394, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:45:06', '2017-12-08 22:45:06', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(395, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 22:45:14', '2017-12-08 22:45:14', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(396, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:06:45', '2017-12-08 23:06:45', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(397, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:07:13', '2017-12-08 23:07:13', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(398, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:08:50', '2017-12-08 23:08:50', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(399, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:13:00', '2017-12-08 23:13:00', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(400, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:19:03', '2017-12-08 23:19:03', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(401, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:22:13', '2017-12-08 23:22:13', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(402, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-08 23:27:19', '2017-12-08 23:27:19', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(403, 1, 'Logged in', '2017-12-14 05:17:38', '0000-00-00 00:00:00', '#000000', '2017-12-14 11:17:38', '2017-12-14 11:17:38', '1', '::1', 'users', '', '', '1'),
(404, 1, 'Logged in', '2017-12-19 01:16:47', '0000-00-00 00:00:00', '#000000', '2017-12-18 19:16:47', '2017-12-18 19:16:47', '1', '::1', 'users', '', '', '1'),
(405, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-18 19:17:18', '2017-12-18 19:17:18', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(406, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-18 19:17:50', '2017-12-18 19:17:50', '1512749504', '::1', 'buying_orders', '', 'order', '1'),
(407, 1, 'Handover Date (Style: test)', '2017-11-09 00:00:00', '0000-00-00 00:00:00', '#000000', '2017-12-18 19:18:36', '2017-12-18 19:18:36', '1512749504', '::1', 'buying_orders', '', 'order', '1');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rd_card_dt` date DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `sub_date` date DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `rejected_date` date DEFAULT NULL,
  `re_sub_date` date DEFAULT NULL,
  `rs_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `yarn_type` int(11) DEFAULT NULL,
  `l_dip_req_dT` date DEFAULT NULL,
  `re_l_d_rcvd_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `session`, `rd_card_dt`, `received_date`, `sub_date`, `approved_date`, `rejected_date`, `re_sub_date`, `rs_no`, `card`, `shade`, `status`, `remarks`, `created_at`, `updated_at`, `yarn_type`, `l_dip_req_dT`, `re_l_d_rcvd_date`) VALUES
(1, 'H-33 WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'H-34 BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'K-035 LT. GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'K-081 BATTLE GREY MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'K-194 BLUE SLATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'K-361 IVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'K-368 BEIGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'K-369 RUM RAISIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'K-371 SPICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'K-372 COFFEE BEAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'K-373 PURPLE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'K-374 HONEY GOLD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'K-376 DARK TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'K-377 RED CLAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'K-378 CRIMSON RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'K-379 COPPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'K-380 BLUEBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'K-381 JASPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'K-382 MAGENTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'K-383 LATTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'K-384 DRIFTWOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'K-385 MILK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'K-386 SHARKSKIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'K-387 BROWNIE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'K-388 GRAPHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'K-389 SOFT GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'K-390 DUNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'K-391 GRANITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'K-392 STUCCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'K-393 BUTTER CREAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'K-427 BEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'K-428 BROWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'K-429 LIME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'K-430 TORNADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'K-431 BLACK IRIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'K-433 PURPLE PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'K-435 BLUESTEEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'K-437 AVOCADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'K-438 FOREST NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'K-439 DUSTY PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'K-440 PICANTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'K-441 PURPLE ASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'K-442 FROSTED LILAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'K-443 SEPIA ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'K-446 DUSTY BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'K-449 ALLURE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'K-452 PINK ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'K-463 ROSEBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'K-478 GARNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'K-494 PARCHMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'K-495 TEA ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'K-496 BROWN STONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'K-497 BLUE HAZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'K-549 CHAMPIGNON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'K-550 PEPPER TWIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'K-551 SAND TWIST (1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'K-551 SAND TWIST (2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'K-562 ORGANIC BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'K-568 NAVY BERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'K-601 BROWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'K-604 VIOLET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'L-008 PUMICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'L-009 BLUE HORIZON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'L-010 SILVER CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'L-037 HUNTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'L-039 PINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'L-040 PLUM MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'L-070 WARM TAUPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'L-076 BRIGHT RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'L-077 DULL RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'L-078 TURQUOISE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'L-080 NEON PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'L-081 DELFTWARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'L-082 MUSKOX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'L-083 CHARCOAL MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'L-084 TURN MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'L-085 MUSHROOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'L-086 CREAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'L-087 LIGHT ASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'L-088 DARK ASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'L-089 GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'L-090 BLACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'L-091 ASPHALT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'L-092 DEEP BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'L-093 OCEAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'L-094 CHARCOAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'L-095 STEEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'L-096 SAND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'L-097 LIGHT SLATE GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'L-114 MOLASSES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'L-130 DK. NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'L-133 TERRA COTTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'L-134 COBLE STONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'L-135 PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'L-136 MAUVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'L-137 EGRET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'L-138 RUST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'L-139 FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'L-161 MELLOW ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'L-162 ALMOND MILK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'L-163 ICED COFFEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'L-164 WINTER TWIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'L-165 MARTINI OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'L-166 HARBOUR MIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'L-167 SHARKSKIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'L-168 GRAPITE GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'L-169 GRAM PINSIRIPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'L-170 MOONLIT OCEAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'L-204 KELP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'L-218 COBALT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'L-219 EMARALD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'L-224 SILVER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'L-243 COOL BERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'L-244 COCONUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'L-245 MOKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'L-246 MINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'L-277 GREY (REF#4018F17 GREY MEL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'L-278 OFF WHITE (REF#4018F17 OFF WHITE)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'L-317 NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'L-319 AUBERGINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'L-368 CREAMY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'L-370 PETAL PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'L-371 ROSEBUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'L-619 DK. OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'L-623 PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'L-627 VINTAGE PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'L-628 DUSTY ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'L-632 WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'L-633 HUNTER GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'L-634 INK NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'L-660 EXCALIBUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'L-684 NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'L-685 PICKLED BEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'L-686 NAVY BLAZER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'L-703 PINE GROVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'L-704 RHUMBA RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'L-773 PINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'L-805 TWIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'L-810 INDIGO BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'L-818 LODEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'L-828 GREY STONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'L-863 NEW RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'L-948 MUSSEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'L-952 SEASALT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'L-989 PORTOBELLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'M-001 MIDNIGHT TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'M-002 ARONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'M-003 BLACKBERRY WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'M-004 PRUNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'M-005 NIRVANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'M-006 DARK NIRVANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'M-015 CHARCOAL TWIST (ASH GREY)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'M-015 CHARCOAL TWIST (GREY)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'M-019 BEAT RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'M-020 MORNING BLOSSOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'M-021 PURPLE HAZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'M-022 DENIM BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'M-023 SAND MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'M-024 SAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'M-025 TERRACOTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'M-026 MIRAGE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'M-027 CRIMSON RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'M-028 EVERGREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'M-035 INDIGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'M-036 OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'M-037 ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'M-038 BLUSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'M-039 NATURAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'M-40 CLAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'M-41 MARIGOLD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'M-42 AMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'M-43 WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'M-44 EVERGREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'M-45 RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'M-059 DARK CHARCOAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'M-275 FOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'M-276 MOONBEAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'M-277 DOVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'M-278 TAUPE GRAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'M-281 LIGHT AMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'M-282 DUSTY BANANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'M-283 TAUPEY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'M-285 LOBSTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'M-287 XENON BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'M-288 CHINTZ ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'M-292 MISTY MINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'M-295 BABY BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'M-298 VIBRANT YELLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'M-299 TANGO RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'M-304 GINGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'M-305 RASPBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'M-306 HAWAIIN TURQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'M-308 DEEP ORCHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'M-309 ROYALITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'M-310 BLUE STEEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'M-311 TROPICAL GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'M-326 CINNAMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'M-327 SCARLET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'M-328 APPLE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'M-335 DUSTY OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'M-340 OUTERSPACE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'M-341 RHUBARB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'M-342 TULIPWOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'M-343 DECMEBER SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'M-348 DEEP COBALT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'M-349 CARBON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'M-359 LEMON MERINGUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'M-360 PARCHMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'M-361 DEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'M-362 GOLDEN OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'M-364 SEAFOAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'M-365 WILD DOVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'M-366 SHELL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'M-367 NUTMEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'M-372 WEDGEWOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'M-373 SKYWAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'M-383 SAMBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'M-384 RACING RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'M-385 PINK CARNATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'M-386 FUSCHIA SHOCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'M-387 DAFFODIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'M-388 MAIZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'M-389 PARADISE PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'M-391 FERN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'M-392 BURNT OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'M-393 PURPLE ORCHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'M-394 PURPLE JEWWL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'M-396 AQUA GLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'M-397 VIVID TURQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'M-398 BLUE DAZZLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'M-408 DEEP NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'M-411 KELLY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'M-412 PEACOCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'M-429 SKYLIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'M-430 LUNAR GRAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'M-431 ACE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'M-436 ICE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'M-437 FADED BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'M-487 HYDRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'M-599 PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'M-600 OFF WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'M-718 CITRONELLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'M-719 WINTER MOSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'M-722 COFFEE BEAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'M-723 TOFFEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'M-725 CRÈME BRULEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'M-730 SYCAMORE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'M-731 PUMPKIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'M-732 BRIGHT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'M-733 REGAL FUSCHIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'M-738 OLD GOLD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'M-742 HYDRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'M-743 BERING SEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'M-744 COLONY BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'M-746 NAVY NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'M-749 INK BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'M-750 DEEP TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'M-751 MARLIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'M-752 BLUE GRANITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'M-753 PINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'M-761 RED PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'M-762 PURPLE NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'M-763 MULLED GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'M-765 MULLED GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'M-766 ITALIAN PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'M-767 POTENT PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'M-771 PINK LILAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'M-791 GREY ICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'M-792 BLUE ANGEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'M-796 DOESKIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'M-801 CUB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'M-834 ORANGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'M-848 FUSCHIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'M-861 BLUE GALAXI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'M-876 CRIMSON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'M-882 DARK SPICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'M-883 BURNT RUST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'M-887 AMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'M-890 PORT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'M-891 CAMEO PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'M-892 SHELL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'M-893 TWINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'M-903 GOLDEN OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'M-904 HARVEST GOLD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'M-907 SEACOAST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'M-911 PURPLE NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'M-919 SOFT BLUSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'M-921 CRYSTAL ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'M-985 SLEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'N-001 MAROON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'N-002 LIGHT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'N-003 PINK TAUPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'N-004 FIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'N-005 MAGNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'N-006 DOESKIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'N-007 ANTIQUE WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'N-008 NIGHTSHADOW BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'N-235 NAVY INK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'N-244 DEEP GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'N-250 RUSTIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'N-288 SMOKED PEARL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'N-304 MARSALA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'N-305 HENNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'N-306 CANDIED SALMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'N-310 MULBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'N-311 DENIM GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'N-362 DUSTY DRAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'N-366 MEDIEVAL BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'N-367 DARK STORM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'N-374 PINE GROVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'N-375 GARNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'N-379 PICANTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'N-380 OTTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'N-381 KHAKI TAN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'N-382 PARCHMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'N-391 OXBLOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'N-395 DK. FERN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'N-456 SKY BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'N-457 BLUE FALLS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'N-458 DARK FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'N-507 CHESTNUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'N-508 MERLOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'N-509 GRANITE MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'N-510 DUSKY DUNE MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'N-511 SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'N-512 BARLEY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'N-582 FROST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'N-583 METAL GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'N-584 STORM GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'N-585 CARBON NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'N-586 DUSTY BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'N-591 PAPYRAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'N-592 VELLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'N-593 CAMEL MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'N-594 SPICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'N-595 DEEP OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'N-597 OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'N-598 BROWN MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'N-599 LODEN MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'N-600 CARAMEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'N-601 GRAPE LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'N-602 SQUASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'N-603 CRANBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'N-608 CAMEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'N-609 CHARCOAL MIX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'N-610 MOSS GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'N-611 WINETASTING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'N-612 SIENNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'N-613 ECRU OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'N-614 PICANTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'N-615 WHITE CAP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'N-618 STONEWARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'N-696 DARK CHARCOAL SOLID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'N-745 BURNT OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'N-746 DEEP SEA BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'N-747 RED PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'N-889 SIENNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'N-892 TIGER LILY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'N-893 DEEP CHOCOLATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'N-894 COGNAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'N-895 DEEP AUBURN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'N-928 RUSSETT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'N-929 MUSTURD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'N-950 SANDBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'N-968 DARK CAMEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'N-969 DARK GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'N-970 OLD IVORY CREAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'N-991 LIGHT GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'N-992 CHARCOAL GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'N-993 FIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'N-994 BLUE NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'N-995 TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'N-996 DUSTY ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'N-997 PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'P-012 WHITECAP GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'P-024 PEACOAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'P-026 MOSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'P-027 STATIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'P-058 LYONS BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'P-059 LIGHT PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'P-060 MEDIUM PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'P-093 BARK SOLID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'P-139 GRAPE LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'P-158 PINK CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'P-184 LUNAR ROCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'P-185 QUIET SHADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'P-231 SILVER GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'P-232 OFF WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'P-381 MID GREY SOLID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'P-556 NIGHT SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'P-579 DARK PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'P-580 SWEET PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'P-608 PEACH BLOSSOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'P-634 GREEN MIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'P-636 CLOVER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'P-639 CHAMPAGNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `colors` (`id`, `color`, `session`, `rd_card_dt`, `received_date`, `sub_date`, `approved_date`, `rejected_date`, `re_sub_date`, `rs_no`, `card`, `shade`, `status`, `remarks`, `created_at`, `updated_at`, `yarn_type`, `l_dip_req_dT`, `re_l_d_rcvd_date`) VALUES
(397, 'P-641 GOLDEN HAZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'P-642 BRONZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'P-643 DOVE GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'P-650 NAVY NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'P-654 BEGONIA PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'P-658 PEACH BLOSSOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'P-659 CINNAMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'P-660 BEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'P-661 WOODSMOKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'P-667 MINT LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'P-670 TROPICAL GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'P-673 DOVE GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'P-675 COOL BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'P-682 BLUE ILLUSION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'P-684 AQUA GLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'P-685 SLEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'P-686 HEATHER BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'P-687 SNOW WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'P-688 OYSTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'P-690 PINK CHAMPAGNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'P-691 GREY CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'P-696 BRIGHT FUSCHIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'P-697 POPPY RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'P-701 ORIENT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'P-702 PANSY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'P-703 FIESTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'P-704 PEACOCK BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'P-713 BLUEBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'P-715 SABLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'P-723 NICKEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'P-724 ELEPHANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'P-733 WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'P-742 INDIAN BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'P-765 PINK LUPINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'P-782 LAVENDER GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'P-788 TWILIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'P-791 VIVID BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'P-874 TUNDRA GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'P-914 FLAGSTONE MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'P-935 SUMMER SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'P-936 UNIFORM BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'P-994 OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'P-995 CADET BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'P-996 PETAL PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'P-997 ROSEWOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'P-998 RED RUST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'P-999 TEAL FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'Q-032 ASH GREY (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'Q-033 RUBY RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'Q-033 RUBY RED (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'Q-034 STONE (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'Q-035 GREY (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Q-039 MID-GREY MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'Q-094 NUTMEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'Q-113 OATMEAL (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'Q-130 SHITAKE (SOLID)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'Q-131 LEAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'Q-132 NUDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'Q-141 COMPACT BLUSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'Q-142 IVY GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'Q-202 PURE BLUSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'Q-223 PORTO (Solid)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Q-261 LACQUER (Brown)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Q-293 CAPPUCHINO (16EU BROWN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Q-301 ROSE SHADOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Q-305 DEEP ORCHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'Q-306 SANGRIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Q-307 TEABERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Q-308 BAKED CLAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'Q-313 SCARLET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'Q-320 GERANIUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'Q-342 LIMESTONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Q-343 BANANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'Q-346 BLUE CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Q-349 BLUE CRYSTAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'Q-350 PORCELAIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Q-356 MOONLIGHT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'Q-360 BLUE NIGHTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'Q-361 BRILLIANT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'Q-363 DAZZLING BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'Q-365 DENIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'Q-427 BIRCH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'Q-448 BLEACHED ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'Q-450 BIRCH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'Q-452 CREAMY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'Q-455 BARK BARID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'Q-457 SILVER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'Q-479 SAFARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'Q-480 CERAMIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'Q-483 SMOKE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'Q-485 PALE BEIGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'Q-486 BURGUNDY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'Q-487 NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'Q-488 PEACH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'Q-489 AQUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'Q-490 DK. AQUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Q-492 CANDIED GINGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'Q-493 INDIAN TAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Q-496 IVORY CREAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'Q-497 WHEAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'Q-498 TWILL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'Q-500 DRAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'Q-501 MAGNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'Q-503 DUSTY ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'Q-505 COCOA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'Q-572 ONLY OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'Q-573 LODEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'Q-585 CLEARWATER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'Q-587 MARSHMALLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'Q-597 DEEP TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'Q-618 BLUSHING BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'Q-619 SACHET PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'Q-620 TROPICAL PEACH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'Q-621 LIVING CORAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'Q-622 BLUE GLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'Q-623 MISTY JADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'Q-624 GREEN ASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'Q-625 WAX YELLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'Q-626 PURPLE HEATHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'Q-627 CASTLEROCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'Q-628 VAPOUR BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'Q-629 NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'Q-630 BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'Q-631 RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'Q-657 ECLIPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'Q-777 SHADOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'Q-778 CLOVER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'Q-779 SAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'Q-781 DEEP SPRUCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'Q-782 AQUIFER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'Q-783 FIR GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'Q-785 DEEP FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'Q-786 JADEITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'Q-787 THYME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'Q-789 OLIVE NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'Q-790 TANGO RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'Q-800 TIMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'Q-802 HUMUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'Q-804 SILVER BRICH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'Q-805 MOONROCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'Q-807 GUNMETAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'Q-810 CREAMY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'Q-811 FROST GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'Q-812 TAWNY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'Q-813 PAVEMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'Q-814 JUNGLE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'Q-818 SPRUCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'Q-820 GARNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'Q-821 GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'Q-822 BLUE DEPTHS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'Q-826 DARK NIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'Q-840 BLUE SHADOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'Q-846 DUSTY ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'Q-847 CORAL CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'Q-848 SWEET GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'Q-849 AUTUMN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'Q-852 LAVENDER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'Q-857 BLUE STEEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'Q-881 BRUSHED GOLD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'Q-882 BRONZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'Q-883 SLATE GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'Q-884 GRAPHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'Q-886 RUBY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'Q-889 PORT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'Q-890 ALMONDINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'Q-892 CHILI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'Q-894 FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'Q-895 BLUE PRINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'Q-897 NIGHT SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'Q-898 IRIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'Q-899 EGGPLANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'Q-901 ULTRA VIOLET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'Q-902 ACAIBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'Q-903 WILD ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'Q-906 BRICK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'Q-909 VICUNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'Q-910 NUTMEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'Q-911 EARTH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'Q-912 CRUSHED BERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'Q-913 CLARET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'Q-914 PINK LAVENDER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'Q-915 DUSTY PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'Q-916 AMBER GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'Q-917 FIR GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'Q-918 GRAPE LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'Q-919 VINTAGE TEAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'Q-920 CAPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'Q-927 DARK DENIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'Q-928 PRUNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'Q-929 DUSKY MAUVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'Q-930 MAROON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'Q-942 PINEGROVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'Q-947 DEEP SCARLET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'Q-950 TANNIN MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'Q-951 ASH ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'Q-952 MAGNET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'Q-953 CAPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'Q-954 VINEYARD MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'Q-955 ROSE CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'Q-956 AQUA HAZE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'Q-957 TITANIUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'Q-959 APPLE BLOSSOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'Q-977 DK. DRAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'Q-980 BITTERSWEET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'Q-981 BAYBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'Q-982 BLUESTAR MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'Q-983 ROUGHSPUN MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'Q-984 SANDSTONE MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'Q-985 BLUE THISTLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'Q-986 DRAGONSCALE MEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'Q-996 FUNGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'Q-999 PLUM PERFECT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'R-033 CANDY FLOSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'R-034 LANGUID LAVENDER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'R-035 PLANTAIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'R-036 TURQUOISE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'R-037 CCELADON GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'R-038 NATURAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'R-056 FESTIVAL FUCHSIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 'R-057 LUSH FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 'R-058 SKYDIVER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 'R-059 TAWNY PORT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 'R-060 SALSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 'R-061 DEEP BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 'R-062 ALGIERS BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'R-072 DEEP FOREST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'R-188 GREEN ASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'R-195 LODEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'R-205 POPPY RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'R-207 MARINA BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'R-208 PURE PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 'R-209 WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'R-210 DEEP CRIMSON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 'R-211 DARK INK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 'R-212 JUNGLE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'R-215 CHALKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'R-222 CHAMPAGNE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 'R-223 GREEN GLASS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'R-224 WILD ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'R-225 SPRING GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'R-226 PINK CARNATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'R-227 PAPAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 'R-228 LILAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'R-229 FUCHSIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'R-230 ROSY PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'R-231 JADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'R-232 CELERY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'R-233 APRICOT BRANDY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'R-234 FOLIAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'R-235 CAPRI BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'R-236 BALTIC TURQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'R-237 HOT PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'R-238 FRESH LIME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'R-239 ACID YELLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'R-241 ORANGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'R-242 TURQUOISE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'R-244 BLUE SKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'R-245 HONEYDEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'R-246 ASH WOOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'R-247 KEYLIME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'R-248 AQUA FLORA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'R-249 LAVENDER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'R-250 LT. BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 'R-251 PEACHY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'R-252 SILVER GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'R-253 SOFT LEMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'R-254 PINKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'R-255 VANILLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'R-256 CRYSTAL ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'R-257 DUSTY ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'R-258 CHAMBRAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'R-259 ORCHID SMOKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'R-260 WILLOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'R-261 GINGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'R-262 FERN GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'R-263 MELLOW MAUVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'R-264 EMERALD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'R-265 RASPBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'R-266 GREEN LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'R-267 GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'R-268 SHADED SPRUCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'R-269 PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'R-270 DEEP LAPIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'R-371 COOL AQUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'R-381 BALTIC TURK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'R-382 INDOCHINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'R-388 PINK GRAPEFRUIT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'R-389 RED HOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'R-391 BRIGHT FUCHSIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'R-401 FLAMINGO PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'R-402 SUGAR CORAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'R-403 NOUGET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 'R-434 OLIVE VINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 'R-467 PANZER GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'R-471 RED POINSETTIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'R-472 LIME BRIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'R-473 HOLLYHOCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'R-474 ORANGE POPPY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'R-475 PINK PEONY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'R-476 GOLD CREAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'R-477 BLUE ASTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'R-478 MAZARINE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'R-484 PARCHMENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'R-514 AZURE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'R-564 DARK NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'R-664 HENNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'R-665 BROWN SUGAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'R-666 MOHOGANY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'R-671 SAND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'R-673 DOE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'R-674 MOOSE BROWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'R-675 CAMEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'R-676 HUCKLEBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'R-700 BLUE INK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'R-701 BOTTLE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'R-702 NIGHT NAVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'R-703 DARK OLIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'R-704 BLUE BELL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'R-706 JUNGLE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'R-707 AIR FORCE BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'R-708 RACING GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'R-709 BEETROOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'R-710 RUBY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'R-711 BERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'R-712 LOGANBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'R-713 JADE GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'R-714 AMETHYST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'R-716 MAGENTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'R-717 PLUM WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'R-718 FROSTED ICE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'R-720 DUSTY BLUSH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'R-721 BRICH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'R-722 STEEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'R-723 GLACIER GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'R-724 RAVEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'R-725 FAWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'R-726 BARLEY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'R-727 PEWTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'R-729 FLANNEL GREY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'R-730 CHESTNUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'R-731 BLUE RIBBON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'R-732 DIJON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'R-733 BURNT BRICK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'R-737 VINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'R-738 ROSE WINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'R-740 PLUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'R-741 GRAPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'R-742 TECH BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'R-743 MULBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'R-744 DARK LAPIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'R-745 CRESS GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'R-747 PURPLE SAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'R-748 OTTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'R-749 BLUE STREAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'R-750 HERBAL GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'R-752 FUSHIA ROSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'R-753 GERANIUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'R-754 KEYLIME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'R-755 DARK TURQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'R-757 PERSIMMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'R-758 PURE PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'R-762 MILITARY GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'R-763 COFFEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'R-764 WILLOW GREEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'R-765 INKWELL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'R-766 STONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'R-767 GOLD LEAF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'R-768 BURNT ORANGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'R-769 CEDAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'R-770 EGGPLANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'R-771 ECLIPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'R-772 DEEP ORCHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'R-773 IMPERIAL PURPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'R-774 MIDNIGHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'R-776 DEEP PEACOCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'R-777 DEEP SEA BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'R-779 BRUNETTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'R-783 CRANBERRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'R-784 RED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'R-786 CORDOVAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'R-787 DUSTY BISQUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'R-788 PALE BEACH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'R-792 BLUE FOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'R-794 SWEET LAVENDER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'R-795 WISTERIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'R-800 PINK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'R-801 PALE PEACH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'R-802 TAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'R-803 AQUA GLASS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'R-828 MINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'R-829 LIGHT BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'R-832 OFF WHITE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'R-875 LODEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(13, 1489472007, '1489472560.pdf', 'PO', 'Qty b/d written on CAD by Monica on 3/5.', '2017-03-14 00:22:40', '2017-03-14 00:22:40'),
(14, 1512407745, '1512408060.jpeg', '1', '', '2017-12-04 11:21:00', '2017-12-04 11:21:00'),
(15, 1511441602, '1512432561.jpeg', '1', 'aaaa', '2017-12-04 18:09:21', '2017-12-04 18:09:21'),
(16, 1511441602, '1512432653.jpeg', '2', '44444444', '2017-12-04 18:10:53', '2017-12-04 18:10:53'),
(17, 1511441602, 'no_image.png', '0', '', '2017-12-04 18:14:16', '2017-12-04 18:14:16'),
(18, 1511441602, '1512432888.jpeg', '2', '', '2017-12-04 18:14:48', '2017-12-04 18:14:48'),
(19, 1511441602, '1512432949.jpeg', '1512432949', 'aaaaaaa', '2017-12-04 18:15:49', '2017-12-04 18:15:49'),
(20, 1511441602, '1512432988.jpeg', '1512432988', 'aseef', '2017-12-04 18:16:28', '2017-12-04 18:16:28'),
(21, 1511441602, '1512433007.jpeg', '1512433007', 'ttttttttt', '2017-12-04 18:16:47', '2017-12-04 18:16:47'),
(22, 1511441602, '1512433020.jpeg', '1', '', '2017-12-04 18:17:00', '2017-12-04 18:17:00'),
(23, 1511441602, 'no_image.png', '1', '', '2017-12-04 18:17:14', '2017-12-04 18:17:14'),
(24, 1511441602, '1512433054.jpeg', '1', '', '2017-12-04 18:17:34', '2017-12-04 18:17:34'),
(25, 1511441602, '1512433080.jpeg', '3', '', '2017-12-04 18:18:00', '2017-12-04 18:18:00'),
(26, 1511441602, '1512433215.jpeg', '1512432988', '', '2017-12-04 18:20:15', '2017-12-04 18:20:15'),
(27, 1511441602, '1512433224.jpeg', '1', '', '2017-12-04 18:20:24', '2017-12-04 18:20:24'),
(28, 1512451356, '1512452039.gif', '1512452038', '', '2017-12-05 05:33:59', '2017-12-05 05:33:59'),
(29, 1512451356, '1512452066.pdf', '1512452038', '', '2017-12-05 05:34:26', '2017-12-05 05:34:26'),
(30, 1512451356, '1512452113.xlsx', '1', '', '2017-12-05 05:35:13', '2017-12-05 05:35:13'),
(31, 1512453833, '1512482969.jpeg', '2', '', '2017-12-05 08:09:29', '2017-12-05 08:09:29'),
(32, 1512749504, '1512792985.jpeg', '2', '', '2017-12-08 22:16:25', '2017-12-08 22:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `document_type`, `created_at`, `updated_at`) VALUES
(1, 'PO', '2017-12-04 11:20:36', '2017-12-04 11:20:36'),
(2, 'Report', '2017-12-04 11:20:43', '2017-12-04 11:20:43'),
(1512452038, 'Tech Pack', '2017-12-05 05:33:58', '2017-12-05 05:33:58');

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
(1489557017, 0, '', '', '', '', '', '', NULL, '', 'dddd', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-03-14 23:50:17', '2017-03-14 23:50:17', '', '', NULL),
(1512407502, 0, '', '', '', '', '', '', NULL, '', '1234', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-12-04 11:11:42', '2017-12-04 11:11:42', '', '', NULL),
(1512407583, 0, '', '', '', '', '', '', NULL, '', '1111', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-12-04 11:13:03', '2017-12-04 11:13:03', '', '', NULL),
(1512448084, 0, '', '', '', '', '', '', NULL, '', '01992236479', NULL, '', '', '', '', '', '', 0, 0, 0, '2017-12-05 04:28:04', '2017-12-05 04:28:04', '', '', NULL);

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
(115, '2017_03_10_094137_alter_table_colors_44421', 15),
(116, '2017_11_12_155607_create-table-doctypes', 16),
(117, '2017_11_14_165836_create_table_yarns', 17),
(118, '2017_11_14_174225_create_table_yarn_details', 18);

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
-- Table structure for table `order_shipment_dates`
--

CREATE TABLE `order_shipment_dates` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_shipment_dates`
--

INSERT INTO `order_shipment_dates` (`id`, `order_id`, `shipment_date`, `created_at`) VALUES
(5, 1512749504, '2018-02-01', '2017-12-09 04:45:06'),
(6, 1512749504, '2017-12-30', '2017-12-09 04:45:14'),
(7, 1512749504, '2017-12-30', '2017-12-09 05:06:45'),
(8, 1512749504, '2017-12-30', '2017-12-09 05:07:12'),
(9, 1512749504, '2017-12-30', '2017-12-09 05:08:50'),
(10, 1512749504, '2017-12-30', '2017-12-09 05:12:59'),
(11, 1512749504, '2017-12-30', '2017-12-09 05:19:03'),
(12, 1512749504, '2017-12-30', '2017-12-09 05:22:13'),
(13, 1512749504, '2017-12-30', '2017-12-09 05:27:19'),
(14, 1512749504, '2017-12-30', '2017-12-19 01:17:18'),
(15, 1512749504, '2017-12-30', '2017-12-19 01:17:50'),
(16, 1512749504, '2019-12-27', '2017-12-19 01:18:36');

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
(4, 1486543352, '{\"_token\":\"Zr71yFkjzM9zwpct0GiDZcIOum0N79m2zPdlWZG3\",\"orderid\":\"1486543352\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"2\":\"2\",\"1\":\"1\",\"3\":\"3\"},\"price\":{\"2\":\"2\",\"1\":\"3\",\"3\":\"411\"},\"weight\":{\"2\":\"2\",\"1\":\"3\",\"3\":\"4\"}}', '2017-02-28 22:47:20', '2017-02-28 22:47:20', 1, 3),
(5, 1489427097, '{\"_token\":\"rEx3yjliwseRc6jJJ8UNQWX18gQ6tOMPP4brHN3g\",\"orderid\":\"1489427097\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"2\":\"2\",\"1\":\"1\",\"3\":\"3\"},\"price\":{\"2\":\"13\",\"1\":\"16\",\"3\":\"17\"},\"weight\":{\"2\":\"14\",\"1\":\"5\",\"3\":\"18\"}}', '2017-03-13 11:53:34', '2017-03-13 11:53:34', 1, 16),
(6, 1489472007, '{\"_token\":\"8TVhMORqvQ5M2u7lU1081q0D7DJYiBhtM3aSrgqd\",\"orderid\":\"1489472007\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"6\":\"6\",\"4\":\"4\"},\"price\":{\"6\":\"1411\",\"4\":\"5.4111\"},\"weight\":{\"6\":\"12\",\"4\":\"15.50\"}}', '2017-03-14 00:17:29', '2017-03-14 00:17:29', 6, 1411),
(7, 1489557129, '{\"_token\":\"8TVhMORqvQ5M2u7lU1081q0D7DJYiBhtM3aSrgqd\",\"orderid\":\"1489557129\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"7\":\"7\",\"6\":\"6\",\"4\":\"4\"},\"price\":{\"7\":\"1\",\"6\":\"2\",\"4\":\"3\"},\"weight\":{\"7\":\"11\",\"6\":\"22\",\"4\":\"33\"}}', '2017-03-14 23:57:27', '2017-03-14 23:57:27', 4, 3),
(8, 1510909227, '{\"_token\":\"oMXAmi9UqR2UZZviNR7IZYoXWn3hgZTiMVmsxsXq\",\"orderid\":\"1510909227\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"7\":\"7\",\"6\":\"6\",\"4\":\"4\"},\"price\":{\"7\":\"1\",\"6\":\"3\",\"4\":\"5\"},\"weight\":{\"7\":\"2\",\"6\":\"4\",\"4\":\"6\"}}', '2017-11-17 08:25:24', '2017-11-17 08:25:24', 7, 1),
(9, 1512451356, '{\"_token\":\"2W3SkalGVBlHzrsBKp9u3YDuqwmjNlrA93pVy4ST\",\"orderid\":\"1512451356\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"8\":\"8\",\"6\":\"6\",\"4\":\"4\",\"9\":\"9\",\"7\":\"7\"},\"price\":{\"8\":\"2.5\",\"6\":\"3.5\",\"4\":\"2.75\",\"9\":\"\",\"7\":\"\"},\"weight\":{\"8\":\"11.5\",\"6\":\"11.5\",\"4\":\"11.5\",\"9\":\"\",\"7\":\"\"}}', '2017-12-05 05:31:31', '2017-12-05 05:31:31', 8, 2.5),
(10, 1512453833, '{\"_token\":\"yD1WoFFLnQKYP3TZEb7SRVoT1PNxOEociaZZeCKf\",\"orderid\":\"1512453833\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"8\":\"8\",\"6\":\"6\",\"4\":\"4\",\"9\":\"9\",\"7\":\"7\"},\"price\":{\"8\":\"1\",\"6\":\"43\",\"4\":\"\",\"9\":\"\",\"7\":\"\"},\"weight\":{\"8\":\"132\",\"6\":\"\",\"4\":\"\",\"9\":\"\",\"7\":\"\"}}', '2017-12-05 06:04:27', '2017-12-05 06:04:27', 6, 43),
(11, 1512749504, '{\"_token\":\"sXj38AsfWrd79GobTahPnQY9jUxBtk0pc5ndI6ZT\",\"orderid\":\"1512749504\",\"data-table-simple_length\":\"10\",\"supplier_name\":{\"8\":\"8\",\"6\":\"6\",\"4\":\"4\",\"9\":\"9\",\"7\":\"7\"},\"price\":{\"8\":\"11\",\"6\":\"22\",\"4\":\"33\",\"9\":\"44\",\"7\":\"66\"},\"weight\":{\"8\":\"11\",\"6\":\"22\",\"4\":\"33\",\"9\":\"55\",\"7\":\"66\"}}', '2017-12-08 20:35:04', '2017-12-08 20:35:04', 4, 33);

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
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `sort_order` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `sort_order`, `created_at`) VALUES
(17, 'L', 4, '2017-12-05 01:09:27'),
(25, 'M', 3, '2017-12-05 01:12:09'),
(26, 'XS', 1, '2017-12-05 01:12:25'),
(31, 'S', 2, '2017-12-05 02:01:54'),
(32, 'XXS', 5, '2017-12-05 05:45:16'),
(33, 'XL', 5, '2017-12-05 05:45:44'),
(34, 'XXL', 6, '2017-12-05 05:45:57'),
(35, 'XXXL', 7, '2017-12-05 05:46:15'),
(36, '1X', 8, '2017-12-05 05:46:25'),
(37, '2X', 9, '2017-12-05 05:46:37'),
(38, '3X', 10, '2017-12-05 05:46:53'),
(39, '4X', 11, '2017-12-05 05:47:07');

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
(6, 'Doddy', '', '', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0),
(7, 'XYZ', '', '', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0),
(8, '444444444444', '', '', '', 0, NULL, NULL, '', '', '', '', 0, NULL, 0),
(9, 'xxxxx2222', '', '', '', 0, NULL, '2017-12-04 11:09:33', '', '', '', '', 0, NULL, 2);

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
(1, 'Aseef Ahmed', 'aseefahmed@gmail.com', '$2y$10$Gl.RHmVfWchoPGNrl5Gw/upUrrW2jM4AtWn0GJIzbzTE6ELI6Cj7W', 't5hKcdbgBfDAE9RJjG2ewv9YfXzZ5j9dUN5QI3E00z1a3i5cG1Bhtaa4z408', NULL, '2017-12-05 04:28:32', '', 3, 21, 1, '', '1', 1),
(1512448084, 'Admin', 'admin', '$2y$10$X/DhHA64.YMHiqs/VQmvtuzqYjtbsAzVXpM3T4LYaYxKjv070ub0a', 'GE3LNhdgLAIN6GnFByccysNOnwjOJXv2HLGS2InF8Uh6OFD2VVEBbofxjSKh', '2017-12-05 04:28:04', '2017-12-05 07:01:34', '', 3, 21, 1, '', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yarns`
--

CREATE TABLE `yarns` (
  `id` int(10) UNSIGNED NOT NULL,
  `yarn_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `yarn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yarns`
--

INSERT INTO `yarns` (`id`, `yarn_code`, `yarn`, `created_at`, `updated_at`) VALUES
(2, 'F-2412', '100% Acrylic Tamu', NULL, NULL),
(3, 'F-2764', '100% Acrylic Cashmere Like', NULL, NULL),
(4, 'F-2891', 'Acr+Tamu', NULL, NULL),
(5, 'F-3040', '50% Cot 50% Acr', NULL, NULL),
(6, 'F-4825', '100% Acrylic Tube (3GG)', NULL, NULL),
(7, 'F-5394', 'Tamu+Cot/Acr', NULL, NULL),
(8, 'F-5514', 'SLUB+ACR', NULL, NULL),
(9, 'F-5406', 'Acr+Cot', NULL, NULL),
(10, '', 'Boucle', NULL, NULL),
(11, '', 'Boucle', NULL, NULL),
(12, '', 'test', NULL, NULL),
(13, '', 'ttt', NULL, NULL),
(14, '', '2', NULL, NULL),
(15, 'aaaaaa', 'sssssss', NULL, NULL),
(16, 'ffffffffff', 'gggggggg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yarn_details`
--

CREATE TABLE `yarn_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `yarn_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ply_b_d` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `yarn_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yarn_details`
--

INSERT INTO `yarn_details` (`id`, `yarn_code`, `ply_b_d`, `yarn_content`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '4', '1 PLY', '100% Acrylic', 'Done', NULL, NULL),
(2, '3', '1 PLY OR More', '100% Cotton', '', NULL, NULL),
(3, '7', '1PLY + 1PLY', '75% Acr 25%Cot', '', NULL, NULL),
(4, '7', '2PLY + 2PLY', '15% Acr 65%Cot', '', NULL, NULL),
(5, '7', '2PLY + 3PLY', '45%Cot', '', NULL, NULL),
(7, '3', '3PLY+2PLY', '10%Acr', 'GOOD', NULL, NULL),
(8, '2', '1PLY', '100% Cotton', '', NULL, NULL),
(9, '4', '5PLY', '60% Cot', '', NULL, NULL),
(10, '8', '6PLY+2PLY', '10%Slub', '', NULL, NULL),
(11, '9', '1 PLY+1 Ply', '58%Acr 42%Cot', '', NULL, NULL),
(12, '9', '2 PLY+1 Ply', '72%Acr 28%Cot', '', NULL, NULL),
(13, '9', '3PLY+1 Ply', '78%Acr 22%Cot', '', NULL, NULL),
(14, '9', '4PLY+1 Ply', '84%Acr 16%Cot', '', NULL, NULL),
(15, '9', '5PLY+1 Ply', '89%Acr 11%Cot', '', NULL, NULL),
(16, '9', '6PLY+1 Ply', '95%Acr 5%Cot', '', NULL, NULL),
(17, '3', '1PLY', 'N/A', 'none', NULL, NULL),
(18, '2', '6PLY', 'exellent', '', NULL, NULL),
(19, '10', 'B1', '86% Acrylic 14% Polyester', '', NULL, NULL),
(20, '16', '133', '333', '', NULL, NULL);

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
-- Indexes for table `buying_colors_quantities`
--
ALTER TABLE `buying_colors_quantities`
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
-- Indexes for table `buying_order_sizes`
--
ALTER TABLE `buying_order_sizes`
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
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
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
-- Indexes for table `order_shipment_dates`
--
ALTER TABLE `order_shipment_dates`
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
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
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
-- Indexes for table `yarns`
--
ALTER TABLE `yarns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yarn_details`
--
ALTER TABLE `yarn_details`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `buying_colors_quantities`
--
ALTER TABLE `buying_colors_quantities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `buying_orders_colors`
--
ALTER TABLE `buying_orders_colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `buying_order_sizes`
--
ALTER TABLE `buying_order_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512452039;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512448085;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

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
-- AUTO_INCREMENT for table `order_shipment_dates`
--
ALTER TABLE `order_shipment_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pricecharts`
--
ALTER TABLE `pricecharts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supplier_types`
--
ALTER TABLE `supplier_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512448085;

--
-- AUTO_INCREMENT for table `yarns`
--
ALTER TABLE `yarns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `yarn_details`
--
ALTER TABLE `yarn_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `yarn_types`
--
ALTER TABLE `yarn_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
