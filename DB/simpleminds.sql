-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2017 at 02:30 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.26-2+ubuntu16.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleminds`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apartment_id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `apartment_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_square_meters` int(11) NOT NULL,
  `apartment_share` int(11) NOT NULL,
  `apartment_allocation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_open_date` date NOT NULL,
  `apartment_change_date` date NOT NULL,
  `apartment_close_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_member`
--

CREATE TABLE `apartment_member` (
  `apartment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `apartment_member_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_member_date` date NOT NULL,
  `apartment_member_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_member_account_balance`
--

CREATE TABLE `apartment_member_account_balance` (
  `apartment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `account_balance_date` date NOT NULL,
  `pbs_number` int(11) NOT NULL,
  `member_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_balance_amount` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_member_account_transaction`
--

CREATE TABLE `apartment_member_account_transaction` (
  `apartment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `pbs_number` int(11) NOT NULL,
  `member_number` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `booking_entry_number` int(11) NOT NULL,
  `transaction_type_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` decimal(10,2) NOT NULL,
  `account_balance_amount` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_member_invoice_item`
--

CREATE TABLE `apartment_member_invoice_item` (
  `apartment_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `pbs_number` int(11) NOT NULL,
  `member_number` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `invoice_item_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_item_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_item_amount_mtd` decimal(10,2) NOT NULL,
  `invoice_item_amount_ytd` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_member_role_type`
--

CREATE TABLE `apartment_member_role_type` (
  `apartment_member_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_user`
--

CREATE TABLE `business_user` (
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_registration_number` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_account`
--

CREATE TABLE `external_account` (
  `external_account_id` int(11) NOT NULL,
  `external_account_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_account_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_account_open_date` date NOT NULL,
  `external_account_change_date` date NOT NULL,
  `external_account_close_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individual_user`
--

CREATE TABLE `individual_user` (
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_birth_date_number` int(11) NOT NULL,
  `user_birth_month_number` int(11) NOT NULL,
  `user_birth_year` int(11) NOT NULL,
  `user_birth_date` date NOT NULL,
  `user_personal_number` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_type`
--

CREATE TABLE `invoice_item_type` (
  `invoice_item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) UNSIGNED NOT NULL,
  `member_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_full_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_alias_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_residence_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_city` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_residence_country` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_open_date` date NOT NULL,
  `member_change_date` date NOT NULL,
  `member_close_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_user`
--

CREATE TABLE `member_user` (
  `member_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_user_date` date NOT NULL,
  `member_user_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2017_12_21_105845_create_properties_table', 1),
(56, '2017_12_21_112611_create_apartment_table', 1),
(57, '2017_12_21_115907_create_member_table', 1),
(58, '2017_12_21_123840_create_apartment_member_table', 1),
(59, '2017_12_21_130246_create_apartment_member_role_type_table', 1),
(60, '2017_12_21_133926_create_property_member_table', 1),
(61, '2017_12_21_134323_create_property_member_role_type_table', 1),
(62, '2017_12_21_140934_create_user_type_table', 1),
(63, '2017_12_21_141041_create_business_user_table', 1),
(64, '2017_12_21_141217_create_individual_user_table', 1),
(65, '2017_12_21_141611_create_member_user_table', 1),
(66, '2017_12_21_141627_create_supplier_user_table', 1),
(67, '2017_12_22_043224_create_supplier_table', 1),
(68, '2017_12_22_043344_create_property_supplier_table', 1),
(69, '2017_12_22_043409_create_property_supplier_role_type_table', 1),
(70, '2017_12_22_043441_create_supplier_group_role_type_table', 1),
(71, '2017_12_22_043542_create_external_account_table', 1),
(72, '2017_12_22_044259_create_invoice_item_type_table', 1),
(73, '2017_12_22_062642_create_supplier_external_account_table', 1),
(74, '2017_12_22_062843_create_order_table', 1),
(75, '2017_12_22_063019_create_order_status_table', 1),
(76, '2017_12_22_063322_create_order_status_type_table', 1),
(77, '2017_12_22_065113_create_apartment_member_account_balance_table', 1),
(78, '2017_12_22_065503_create_apartment_member_account_transaction_table', 1),
(79, '2017_12_22_065634_create_transaction_type_table', 1),
(80, '2017_12_22_065805_create_apartment_member_invoice_item_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `requestor_member_id` int(11) NOT NULL,
  `requested_supplier_id` int(11) NOT NULL,
  `issue_description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestor_contact_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestor_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestor_contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestor_contact_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_wished_date` date NOT NULL,
  `24_hour_time_display_flag` tinyint(1) NOT NULL,
  `visiting_hours_from` int(11) NOT NULL,
  `visiting_hours_from_am/pm` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visiting_hours_till` int(11) NOT NULL,
  `visiting_hours_till_am/pm` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_status_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_comment` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_date` date NOT NULL,
  `order_status_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_type`
--

CREATE TABLE `order_status_type` (
  `order_status_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `land_register_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_property_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bbr_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pbs_number` int(11) NOT NULL,
  `property_construction_year` int(11) NOT NULL,
  `property_square_meters` int(11) NOT NULL,
  `apartment_shares_total` int(11) NOT NULL,
  `rental_permitted_flag` tinyint(1) NOT NULL,
  `rental_approval_required_flag` tinyint(1) NOT NULL,
  `property_open_date` date NOT NULL,
  `property_change_date` date NOT NULL,
  `property_close_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_member`
--

CREATE TABLE `property_member` (
  `property_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `property_member_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_member_date` date NOT NULL,
  `property_member_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_member_role_type`
--

CREATE TABLE `property_member_role_type` (
  `property_member_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_supplier`
--

CREATE TABLE `property_supplier` (
  `property_id` int(11) NOT NULL,
  `supplier_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_supplier_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_user_date` date NOT NULL,
  `property_user_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_supplier_role_type`
--

CREATE TABLE `property_supplier_role_type` (
  `property_supplier_role_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_group_role_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roles` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roles`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supplier_full_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alias_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_business_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_city` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_customer_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_cvr_number` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_bank_account_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_open_date` date NOT NULL,
  `supplier_change_date` date NOT NULL,
  `supplier_close_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_external_account`
--

CREATE TABLE `supplier_external_account` (
  `supplier_id` int(11) NOT NULL,
  `external_account_id` int(11) NOT NULL,
  `external_account_date` date NOT NULL,
  `external_account_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_group_role_type`
--

CREATE TABLE `supplier_group_role_type` (
  `supplier_group_role_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_user`
--

CREATE TABLE `supplier_user` (
  `supplier_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_user_date` date NOT NULL,
  `supplier_user_active_flag` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `transaction_type_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_residence_address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2_flag` tinyint(1) DEFAULT NULL,
  `user_address_line2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line3_flag` tinyint(1) DEFAULT NULL,
  `user_addres_line_3` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_city` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_residence_country` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type_cd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_phone_flag` tinyint(1) DEFAULT NULL,
  `user_alternate_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_email_flag` tinyint(1) DEFAULT NULL,
  `user_alternate_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_open_date` date DEFAULT NULL,
  `user_change_date` date DEFAULT NULL,
  `user_close_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `email`, `user_full_name`, `user_residence_address`, `address_line2_flag`, `user_address_line2`, `address_line3_flag`, `user_addres_line_3`, `user_postal_code`, `user_city`, `user_residence_country`, `user_type_cd`, `user_phone_number`, `alternate_phone_flag`, `user_alternate_phone_number`, `alternate_email_flag`, `user_alternate_email`, `user_open_date`, `user_change_date`, `user_close_date`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$10$e2R//gsZKLHGCt5nG02oGOUE2YA.LPnoBd4A3ZsMP1Hfp6n63XYma', 'shoaib.md06@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, '$2y$10$e2R//gsZKLHGCt5nG02oGOUE2YA.LPnoBd4A3ZsMP1Hfp6n63XYma', 'sumit@sss.sds', 'sumit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 02:24:46', '2017-12-27 02:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_cd` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apartment_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apartment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
