-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2025 at 12:51 PM
-- Server version: 10.11.11-MariaDB-cll-lve
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `echospor_Mujadamy`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `balance_pending` decimal(24,2) NOT NULL DEFAULT 0.00,
  `received_balance` decimal(24,2) NOT NULL DEFAULT 0.00,
  `account_payable` decimal(24,2) NOT NULL DEFAULT 0.00,
  `account_receivable` decimal(24,2) NOT NULL DEFAULT 0.00,
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT 0.00,
  `total_expense` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `balance_pending`, `received_balance`, `account_payable`, `account_receivable`, `total_withdrawn`, `total_expense`, `created_at`, `updated_at`) VALUES
('09da9d4f-f5e5-4e30-8e2a-57f80f86eb5c', 'bfcc5675-6de8-44b2-9fbd-a97a5f98382c', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 12:24:39', '2024-07-30 12:24:39'),
('0bc52e1b-8928-472c-b6db-fbf5aa239ec3', '75e7b05a-9788-45b1-839f-b936805b72fe', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-31 01:18:26', '2024-08-31 01:18:26'),
('0f978098-d0ce-44b5-b7c7-7f5ed1379c0e', '411943a7-36fb-474a-8e8d-f73c4a8a750c', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 17:58:09', '2024-04-19 17:58:09'),
('15c7d2ff-db5c-49fc-82cb-e279375c66d1', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 16:42:59', '2024-09-23 16:42:59'),
('1b309f9b-21a1-4326-ab45-051a90618718', 'e5723a2b-e89b-4f79-845c-ba09e7d5825f', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 12:22:09', '2024-07-30 12:22:09'),
('1b80089b-c869-4175-8bc7-80127899107b', 'd145f225-3166-4e02-9299-0f936eb39310', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-02 08:00:00', '2024-12-02 08:00:00'),
('1bdc0506-7ad0-4a80-b815-8fd9864f72f7', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-03-25 23:47:56', '2024-03-25 23:47:56'),
('23bc6485-a895-41c9-bce6-d4be0636a2f6', 'af80f800-9348-4d19-ae8c-acdc395f75d3', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-06 04:55:24', '2024-08-06 04:55:24'),
('2f531625-a72a-4c4e-b8e1-29f07bf4211d', '26ec635f-6403-4b4a-adb6-ea203d3df294', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-04 15:17:04', '2024-12-04 15:17:04'),
('3a34b449-bf53-450a-bdf2-92ea7c632f4f', '30aea711-dde5-4560-b7e8-24f996acefe8', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:44:43', '2024-12-05 12:44:43'),
('3a79a492-9416-44f6-80d5-1c6f046cd2b0', '939d9c54-2e93-40ba-9a27-72fef8ec92da', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 16:33:45', '2024-11-02 16:33:45'),
('3b47ddd3-b1d6-4cc8-badf-1ef0ea9317b7', '992de8d3-3809-4c2a-8713-fe108127ea52', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-10 10:31:09', '2024-09-10 10:31:09'),
('3fa7e85c-131b-410b-856c-3d1b3e8a3ef6', '7e3c4471-507f-418c-97dc-221318cc64ab', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:28:20', '2024-12-05 12:28:20'),
('43d5ff9e-3907-4798-8a6f-03ba5c0f2ecf', '042c5837-7b6b-4407-bbd9-1ec24abe595d', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 09:26:14', '2024-09-05 09:26:14'),
('4c06a598-5f46-496a-9af4-fdb4220b7182', '853b5926-bfbe-4e55-aaf8-58e7bd86b424', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-29 14:54:05', '2024-11-29 14:54:05'),
('4ef386ad-78e9-45a8-be70-51beccd09574', 'a2745585-f1ff-49cf-a265-2279fbee15cd', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 18:31:17', '2024-09-05 18:31:17'),
('4f86abdc-5625-4a1c-9f77-da3950768a7c', '35a730a9-b423-4fbc-84c5-082b680c2af4', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 16:18:40', '2024-09-23 16:18:40'),
('4fb0498b-1428-4670-8030-f58b3c7ad6e7', '72ed24f1-b3c3-4e0a-890b-e22471639d02', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 19:02:19', '2024-09-23 19:02:19'),
('51182bc1-3854-4e59-bf75-119046889d8b', 'b9178a82-1185-4259-aea0-8dc8d6702b90', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-31 02:44:27', '2024-08-31 02:44:27'),
('565f93b5-892e-439b-98bf-c9fcbfcf07a9', '0e9da485-c5cc-4af1-9581-3e3289146f36', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-04 05:53:21', '2024-09-04 05:53:21'),
('6784696b-d9ea-4445-996c-a21d8eba67a4', '326930e0-c19e-4bc8-aedb-4d6eb61e48a5', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-04 05:43:19', '2024-09-04 05:43:19'),
('69f8b4b2-627b-479f-8876-740ceda021d5', 'cf2540fe-218f-44f4-8597-8792ecaa9d17', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-29 03:29:23', '2024-07-29 03:29:23'),
('793b1b9a-efd3-4320-b21d-5e3263111b8f', '61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-03-26 15:05:07', '2024-03-26 15:05:07'),
('793da9c8-95b7-46f7-a144-16d38c18d3c8', '3c73dfa2-ccb8-450e-a9fb-5d76653811f2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 12:20:05', '2024-07-30 12:20:05'),
('7a405a11-284e-406d-98b9-b88b3b3c7b66', 'bb542b29-2b2b-4f08-9682-29fcd0c3d705', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-03 07:24:11', '2024-08-03 07:24:11'),
('7f4b66fa-308e-4e24-b613-a45fa8075329', '3eb273f9-3210-4246-9e50-1e6b1f210e44', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 03:28:02', '2024-09-05 03:28:02'),
('7fddd7bf-706b-4793-9696-dae088b689f9', '531fc65c-b05e-4dd6-bd68-51c04a69e784', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-24 12:34:21', '2024-09-24 12:34:21'),
('82719ef7-cf28-4614-8dfd-2185fa973454', '3b1b420b-2ff9-4dec-adfd-22b3e3725cd9', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 19:23:20', '2024-04-19 19:23:20'),
('95725024-6d9b-4200-ac54-2746a55e6a30', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 02:55:26', '2024-09-05 02:55:26'),
('99d8b822-5b4a-44ce-b92a-029fd3830140', 'f1a51915-905b-4e68-8761-0984f2243d49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-02 08:09:11', '2024-12-02 08:09:11'),
('9a442c3a-76f9-4f6b-b5a6-a084e574f0ae', '6df43f8a-e20c-4353-acff-8705bf3a8077', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-29 03:30:25', '2024-07-29 03:30:25'),
('9b03c982-e116-4462-b4bb-49df072317ac', 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-11 12:10:41', '2024-09-11 12:10:41'),
('9b21cad3-7aec-495b-938b-cdad435e9429', 'a0c4d184-2730-4309-bd34-e11a979ff06f', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-06 04:41:07', '2024-08-06 04:41:07'),
('9eeae94f-4c44-42b2-aad1-0d21447e312d', '82f44630-e829-4799-a84e-e6c72921d12f', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 12:00:04', '2024-09-05 12:00:04'),
('a716a193-f0ef-4104-bc73-faecd48a66a8', 'ea61faec-d30c-4caa-b597-45b3b5a6dc0a', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 16:40:36', '2024-04-19 16:40:36'),
('a892175f-70c2-428e-92bc-f77569c979f8', '76514d38-6108-4b78-b2a3-e41efd7f9be9', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-03-06 02:08:20', '2025-03-06 02:08:20'),
('b26e7256-9e4b-421f-8f62-a9cc41cec273', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 16:46:40', '2024-09-23 16:46:40'),
('b44075ef-4e24-40a7-8cef-93353445e1a8', 'a543b3dc-e196-464d-a390-158991c2d880', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 12:21:10', '2024-07-30 12:21:10'),
('b6ffe046-8a89-4283-92b6-733bb960bd25', '449b0411-c541-4bf9-8b7f-63f4a9ec611b', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 08:59:13', '2024-12-05 08:59:13'),
('bbcc25d1-f12c-4f6b-945c-5fe44818ec52', '6704e047-c5a4-4abd-8e1e-98f4503d1648', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 17:36:00', '2024-04-19 17:36:00'),
('c28e5e67-e447-4628-a75c-0b4e35ffd9d8', 'c6b05135-d81d-40e1-8cb0-cdf60cf23428', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-03 15:24:25', '2024-12-03 15:24:25'),
('cca4bc1f-94d2-47a2-9cf6-7c878a77059e', 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-17 17:39:03', '2024-09-17 17:39:03'),
('ce3a6102-9bd9-48e5-be13-2a1809e1dcae', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 09:44:17', '2024-12-05 09:44:17'),
('ceb4d7df-9c00-4ea0-b752-4e35d6d2c871', '0dd4915d-5c45-49ad-8397-8cf97d302b4e', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 12:30:48', '2024-07-30 12:30:48'),
('dca033b3-c79c-4e27-8867-0dbf2a96ff46', '808500dc-ff9c-4918-aadc-a02b986fc9fe', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-04 06:12:48', '2024-09-04 06:12:48'),
('dfa84699-5507-4352-899c-e39434b8e48f', '96533152-fd99-4516-b067-5831fc350a1c', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-08-31 03:12:57', '2024-08-31 03:12:57'),
('e2349ec1-9ed9-4f89-9b33-5046974fac20', '6300be25-dcbc-4232-a1a9-b342bdd78bff', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 16:49:57', '2024-09-23 16:49:57'),
('e3a9c1b0-26c6-445a-aa59-49619c0243e5', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-24 14:41:01', '2024-09-24 14:41:01'),
('e3f156e1-ce9d-449f-96e0-8f806ae99a1a', 'b76768df-fdf1-4878-bc15-87b6fe43c9ff', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:17:12', '2024-09-23 17:17:12'),
('e5170e2c-2d1a-4ab2-a69d-cbc35c77721a', '89206e19-67a4-43a2-963b-607edde34e15', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-07-30 22:36:33', '2024-07-30 22:36:33'),
('ebd09168-41a9-4120-b802-0835516d6a32', '7b4e1f85-5109-4d56-ad7b-975c9cbb30dd', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 16:46:34', '2024-04-19 16:46:34'),
('f74ffe9f-b70a-416d-84bb-157b98a055cc', '353c4ab3-b19b-43ce-8844-4b4c9a2effbc', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:05:39', '2024-09-23 17:05:39'),
('fccf0bd6-957c-4edb-88c9-a4a20bfbb613', '9d1d70d9-c0f9-45c2-a462-3271610cf059', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 17:27:58', '2024-04-19 17:27:58'),
('ff090f3f-8296-4d2b-8f68-9ceefe488e98', '120a5724-d07f-470f-89bf-6f0119a4b413', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-10-09 10:03:14', '2024-10-09 10:03:14'),
('ff4631e6-b905-41e9-a666-d9a8f88ef35e', 'a012a0ae-ec77-45db-9230-ec2d7a04bd76', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-19 16:41:14', '2024-04-19 16:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `added_to_carts`
--

CREATE TABLE `added_to_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `service_id` char(36) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `added_to_carts`
--

INSERT INTO `added_to_carts` (`id`, `user_id`, `service_id`, `count`, `created_at`, `updated_at`, `is_guest`) VALUES
(1, 'b532d9e0-51d4-11ef-a1ec-079a4df04c80', '7eae1fe8-f21c-429d-8b1e-f41641479066', 1, '2024-08-04 11:49:23', '2024-08-04 11:49:23', 1),
(2, '1d9a7770-526d-11ef-8a5c-07b63b4b6e3c', 'be5ba37d-b2f0-487d-9e91-01557434613f', 2, '2024-08-05 09:29:00', '2024-08-05 09:29:01', 1),
(3, 'a0c4d184-2730-4309-bd34-e11a979ff06f', '047b9008-ca42-4393-b717-d04f78e994f2', 1, '2024-08-06 07:35:32', '2024-08-06 07:35:32', 0),
(4, 'a0c4d184-2730-4309-bd34-e11a979ff06f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 2, '2024-08-06 07:36:16', '2024-08-06 07:36:17', 0),
(5, 'e0d96f30-6ad1-11ef-9358-5b3547d7a8a1', 'be5ba37d-b2f0-487d-9e91-01557434613f', 2, '2024-09-05 03:26:19', '2024-09-05 03:26:20', 1),
(6, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '7eae1fe8-f21c-429d-8b1e-f41641479066', 5, '2024-09-05 03:28:46', '2024-09-05 18:25:55', 0),
(7, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '047b9008-ca42-4393-b717-d04f78e994f2', 13, '2024-09-05 04:07:25', '2024-10-25 18:54:35', 0),
(8, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', 'be5ba37d-b2f0-487d-9e91-01557434613f', 1, '2024-09-05 04:20:44', '2024-09-05 04:20:44', 0),
(9, '82f44630-e829-4799-a84e-e6c72921d12f', '047b9008-ca42-4393-b717-d04f78e994f2', 2, '2024-09-05 12:15:24', '2024-09-05 21:10:46', 0),
(10, '82f44630-e829-4799-a84e-e6c72921d12f', 'be5ba37d-b2f0-487d-9e91-01557434613f', 12, '2024-09-05 12:50:02', '2024-12-04 16:50:25', 0),
(11, '82f44630-e829-4799-a84e-e6c72921d12f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 4, '2024-09-12 13:07:01', '2024-11-24 21:00:43', 0),
(12, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '047b9008-ca42-4393-b717-d04f78e994f2', 1, '2024-09-13 00:22:05', '2024-09-13 00:22:05', 0),
(13, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '047b9008-ca42-4393-b717-d04f78e994f2', 2, '2024-09-23 16:59:37', '2024-09-23 17:17:54', 0),
(14, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '7eae1fe8-f21c-429d-8b1e-f41641479066', 2, '2024-09-23 17:14:35', '2024-09-23 17:14:36', 0),
(15, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '7eae1fe8-f21c-429d-8b1e-f41641479066', 4, '2024-09-23 17:58:17', '2024-10-29 21:30:14', 0),
(16, '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'be5ba37d-b2f0-487d-9e91-01557434613f', 2, '2024-10-25 18:54:36', '2024-10-25 18:54:36', 0),
(17, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 16, '2024-11-02 16:50:23', '2024-11-05 21:13:52', 0),
(18, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'be5ba37d-b2f0-487d-9e91-01557434613f', 4, '2024-11-02 17:22:13', '2024-11-02 17:37:02', 0),
(19, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '047b9008-ca42-4393-b717-d04f78e994f2', 2, '2024-11-02 18:04:58', '2024-11-09 17:04:32', 0),
(20, '5b351420-b067-11ef-93c6-0b4d0c6133fd', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, '2024-12-02 07:57:56', '2024-12-02 07:57:56', 1),
(21, '82f44630-e829-4799-a84e-e6c72921d12f', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 3, '2024-12-02 11:00:19', '2024-12-02 11:00:25', 0),
(22, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '7eae1fe8-f21c-429d-8b1e-f41641479066', 2, '2024-12-05 10:01:26', '2024-12-05 10:01:27', 0),
(23, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 6, '2024-12-05 12:20:26', '2024-12-06 10:00:33', 0),
(24, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '047b9008-ca42-4393-b717-d04f78e994f2', 4, '2024-12-05 12:38:12', '2024-12-10 16:55:26', 0),
(25, 'd0f9d340-c943-11ef-9cb7-b16f6e615017', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, '2025-01-02 22:59:41', '2025-01-02 22:59:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"test\",\"status\":\"0\",\"access_token\":\"data\",\"public_key\":\"data\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"test\",\"status\":\"0\",\"access_token\":\"data\",\"public_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-64367be3b7b6a.png\"}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"client_secret\":\"data\"}', '{\"gateway\":\"paypal\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"client_secret\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"test\",\"status\":\"0\",\"app_key\":\"data\",\"app_secret\":\"data\",\"username\":\"data\",\"password\":\"data\"}', '{\"gateway\":\"bkash\",\"mode\":\"test\",\"status\":\"0\",\"app_key\":\"data\",\"app_secret\":\"data\",\"username\":\"data\",\"password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"published_key\":\"data\"}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"published_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:55', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"api_secret\":\"data\"}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"api_secret\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:00', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/url\\/return-senang-pay\",\"secret_key\":\"data\",\"merchant_id\":\"data\"}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/url\\/return-senang-pay\",\"secret_key\":\"data\",\"merchant_id\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\", \"hmac\": \"\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\", \"hmac\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":\"1\",\"secret_key\":\"data\",\"public_key\":\"data\",\"hash\":\"data\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":\"1\",\"secret_key\":\"data\",\"public_key\":\"data\",\"hash\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"1\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_email\":\"data\"}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"1\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_email\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:45', '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"1\",\"store_id\":\"data\",\"store_password\":\"data\"}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"1\",\"store_id\":\"data\",\"store_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` char(36) NOT NULL,
  `provider_id` char(36) NOT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch_name` varchar(191) DEFAULT NULL,
  `acc_no` varchar(191) DEFAULT NULL,
  `acc_holder_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routing_number` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` char(36) NOT NULL,
  `banner_title` varchar(191) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `resource_id` char(36) DEFAULT NULL,
  `redirect_link` varchar(191) DEFAULT NULL,
  `banner_image` varchar(255) NOT NULL DEFAULT 'def.png',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `resource_type`, `resource_id`, `redirect_link`, `banner_image`, `is_active`, `created_at`, `updated_at`) VALUES
('1cbfc1b0-990a-4a0c-bedf-819f584d0a06', 'وزارة الداخلية', 'category', 'fa7149c8-58ad-4e47-b7dc-7149a3c28ceb', NULL, '2024-09-06-66db5f736c5d5.png', 1, '2024-09-06 22:00:51', '2024-09-06 22:00:51'),
('1d57f329-1c37-45cc-80ae-2d88c5a5c464', 'إدارة الإنقاذ البحري', 'service', 'be5ba37d-b2f0-487d-9e91-01557434613f', NULL, '2024-09-05-66d97e7f98dd6.png', 1, '2024-08-06 06:29:53', '2024-09-05 11:48:47'),
('78e62e5d-042d-44f7-98cc-7cbc39cde430', 'إدارة الإنقاذ البحري', 'service', '7eae1fe8-f21c-429d-8b1e-f41641479066', NULL, '2024-09-05-66d97e4c7a28e.png', 1, '2024-08-06 06:33:14', '2024-09-05 11:47:56'),
('85f304ca-9be4-4ed9-a30c-f9ef7cd3d721', 'محمد', 'service', 'be5ba37d-b2f0-487d-9e91-01557434613f', NULL, '2024-09-23-66f1821d26752.png', 1, '2024-09-23 16:58:37', '2024-09-23 16:58:37'),
('d957ef55-4230-4325-ba5c-0581931d23bf', 'إدارة الإنقاذ البحري', 'service', '047b9008-ca42-4393-b717-d04f78e994f2', NULL, '2024-09-05-66d97eaaec441.png', 1, '2024-08-06 06:24:26', '2024-09-05 11:49:30'),
('f321cd09-8d66-40fe-8b50-ba7633bc9a7f', 'وزارة الداخلية', 'category', 'fa7149c8-58ad-4e47-b7dc-7149a3c28ceb', NULL, '2024-09-06-66db5f5379888.png', 1, '2024-09-06 21:54:56', '2024-09-06 22:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` char(36) NOT NULL,
  `bonus_title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `bonus_amount_type` varchar(255) NOT NULL,
  `bonus_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `minimum_add_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `maximum_bonus_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` char(36) NOT NULL,
  `readable_id` bigint(20) NOT NULL,
  `customer_id` char(36) DEFAULT NULL,
  `provider_id` char(36) DEFAULT NULL,
  `zone_id` char(36) DEFAULT NULL,
  `booking_status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` varchar(255) NOT NULL DEFAULT 'cash',
  `transaction_id` varchar(255) DEFAULT NULL,
  `total_booking_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `total_tax_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `total_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `service_schedule` datetime DEFAULT NULL,
  `service_address_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `sub_category_id` char(36) DEFAULT NULL,
  `serviceman_id` char(36) DEFAULT NULL,
  `total_campaign_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `total_coupon_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `coupon_code` varchar(255) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT 0,
  `additional_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `additional_tax_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `additional_discount_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `additional_campaign_discount_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `removed_coupon_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `evidence_photos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`evidence_photos`)),
  `booking_otp` varchar(255) DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `extra_fee` decimal(24,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `readable_id`, `customer_id`, `provider_id`, `zone_id`, `booking_status`, `is_paid`, `payment_method`, `transaction_id`, `total_booking_amount`, `total_tax_amount`, `total_discount_amount`, `service_schedule`, `service_address_id`, `created_at`, `updated_at`, `category_id`, `sub_category_id`, `serviceman_id`, `total_campaign_discount_amount`, `total_coupon_discount_amount`, `coupon_code`, `is_checked`, `additional_charge`, `additional_tax_amount`, `additional_discount_amount`, `additional_campaign_discount_amount`, `removed_coupon_amount`, `evidence_photos`, `booking_otp`, `is_guest`, `is_verified`, `extra_fee`) VALUES
('0e3bb2aa-a17e-4ac7-904d-a523504455fa', 100035, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'accepted', 1, 'cash_after_service', 'cash-payment', 0.000, 0.000, 0.000, '2024-12-06 15:37:27', '58', '2024-12-06 10:19:47', '2024-12-06 12:26:41', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '747886', 0, 0, 0.000),
('16482dc4-7737-4d87-9745-7e1ab814ad66', 100011, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-09-07 06:48:33', '17', '2024-09-07 10:50:58', '2024-10-08 11:02:09', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '225732', 0, 0, 0.000),
('1fb5efb1-10b8-47b7-b7b6-1275f24912e6', 100003, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 1, 'cash_after_service', 'cash-payment', 0.000, 0.000, 0.000, '2024-09-04 23:46:35', '12', '2024-09-05 05:46:45', '2024-09-05 11:15:07', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '256127', 0, 0, 0.000),
('27a53336-0618-4da5-998d-e5c3178c67b7', 100032, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'ongoing', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-12-05 18:11:52', '55', '2024-12-05 12:42:03', '2024-12-09 10:44:45', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', '8dd56688-5cf1-4c5d-a1ff-0096cf801407', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '862455', 0, 0, 0.000),
('30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 100008, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 55.000, 0.000, 5.000, '2024-09-05 16:50:07', '19', '2024-09-05 12:50:27', '2024-09-05 12:50:27', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '751425', 0, 0, 0.000),
('328e8cae-ec7e-4198-8a83-815f4ed41a32', 100026, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'ongoing', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-11-09 20:05:11', '45', '2024-11-09 17:05:46', '2024-11-09 19:31:55', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', 'a13ab7ae-b5c4-4c07-b538-379a3072ae53', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '965925', 0, 0, 0.000),
('37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 100010, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'canceled', 0, 'cash_after_service', 'cash-payment', 55.000, 0.000, 5.000, '2024-09-05 22:29:00', '21', '2024-09-05 18:29:07', '2024-09-07 18:17:55', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '862392', 0, 0, 0.000),
('46243f48-8298-4811-859b-6558ab23cf80', 100016, '6300be25-dcbc-4232-a1a9-b342bdd78bff', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 1050.000, 0.000, 0.000, '2024-09-23 21:18:30', '32', '2024-09-23 17:18:48', '2024-10-29 21:37:56', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 1000.00, 0.00, 0.00, 0.00, 0.00, '[]', '157193', 0, 1, 0.000),
('4659c948-0002-43f2-962a-b71436108e51', 100000, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 0.000, 0.000, 0.000, '2024-09-04 22:07:37', '8', '2024-09-05 04:08:27', '2024-09-23 16:08:20', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '101414', 0, 2, 0.000),
('5ae6d87c-cce1-45fa-bdfa-07441d53763a', 100034, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 100.000, 0.000, 0.000, '2024-12-06 14:42:09', '57', '2024-12-06 09:12:53', '2024-12-06 09:12:53', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '145126', 0, 0, 0.000),
('5b6338c6-f81e-473d-825e-a220d672bebe', 100001, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 0.000, 0.000, 0.000, '2024-09-04 22:39:26', '9', '2024-09-05 04:39:35', '2024-09-23 16:06:08', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '413758', 0, 1, 0.000),
('5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', 100027, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 1, 'cash_after_service', 'cash-payment', 110.000, 0.000, 0.000, '2024-11-25 00:00:51', '46', '2024-11-24 21:01:11', '2024-11-24 22:31:49', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '770923', 0, 0, 0.000),
('639029ee-7c83-4a1a-9717-75c4839e68dd', 100009, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 10.000, 0.000, 0.000, '2024-09-05 22:26:04', '20', '2024-09-05 18:26:32', '2024-09-05 18:26:32', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '712628', 0, 0, 0.000),
('73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 100029, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 54.000, 0.000, 6.000, '2024-12-04 19:50:30', '48', '2024-12-04 16:50:38', '2024-12-04 16:50:38', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '307182', 0, 0, 0.000),
('77825752-cba5-4c7b-b826-d47c411febf3', 100013, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'ongoing', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-09-13 04:22:07', '25', '2024-09-13 00:22:18', '2024-10-29 19:14:37', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '521491', 0, 0, 0.000),
('7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', 100015, '6300be25-dcbc-4232-a1a9-b342bdd78bff', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 110.000, 0.000, 0.000, '2024-09-23 21:15:36', '30', '2024-09-23 17:16:17', '2024-10-29 21:37:35', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '107497', 0, 1, 0.000),
('7bb04711-842f-46df-88e8-b66ee885fff6', 100021, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 60.000, 0.000, 0.000, '2024-11-02 20:22:18', '41', '2024-11-02 17:22:27', '2024-11-02 17:29:38', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '672601', 0, 0, 0.000),
('8212dd8c-f70d-4392-8e1e-1fecc7032f61', 100030, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 100.000, 0.000, 0.000, '2024-12-05 15:44:27', '50', '2024-12-05 10:15:11', '2024-12-05 10:15:11', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '355688', 0, 0, 0.000),
('8baa2759-c1b6-4ec0-b635-d943744c2831', 100028, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 29.700, 0.000, 3.300, '2024-12-02 14:00:30', '47', '2024-12-02 11:01:41', '2024-12-02 11:01:41', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '106716', 0, 0, 0.000),
('8eee07e9-9791-4517-a152-069c54b1a364', 100002, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 10.000, 0.000, 0.000, '2024-09-04 23:11:25', '11', '2024-09-05 05:18:58', '2024-09-05 05:18:58', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '171461', 0, 0, 0.000),
('8f98e276-0720-416c-bc0a-da703c680ae4', 100033, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'accepted', 1, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-12-05 18:35:52', '56', '2024-12-05 13:05:58', '2024-12-05 14:25:37', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '757332', 0, 0, 0.000),
('94a836b7-6be8-45b6-855e-64e0a748ff50', 100005, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-09-05 04:45:44', '15', '2024-09-05 00:45:51', '2024-09-05 00:45:51', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '251772', 0, 0, 0.000),
('9ddb00a0-3f64-4275-a7c3-01c973794c43', 100007, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 45.000, 0.000, 5.000, '2024-09-05 16:15:30', '18', '2024-09-05 12:15:40', '2024-09-05 12:15:40', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '202764', 0, 0, 0.000),
('a0eb2573-233a-41af-b3ed-a765117e1e2b', 100006, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 100.000, 0.000, 0.000, '2024-09-05 04:54:27', '16', '2024-09-05 00:54:32', '2024-09-05 00:54:32', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '468863', 0, 0, 0.000),
('a48e8a8e-1298-461f-ba5a-5a96dd12b10c', 100036, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'accepted', 1, 'cash_after_service', 'cash-payment', 100.000, 0.000, 0.000, '2024-12-10 22:26:04', '53', '2024-12-10 16:57:02', '2024-12-10 17:03:47', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '437188', 0, 0, 0.000),
('ab4f3306-7ae0-4082-922d-10fdec0cda9e', 100024, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-11-02 21:05:01', '44', '2024-11-02 18:05:14', '2024-11-02 18:05:14', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '556051', 0, 0, 0.000),
('af626fb3-e829-465b-9605-2c333632f351', 100023, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 20.000, 0.000, 0.000, '2024-11-02 21:04:17', '43', '2024-11-02 18:04:34', '2024-11-02 18:04:34', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '205485', 0, 0, 0.000),
('b1218d67-67d3-4cb5-bd47-1189e7482fe8', 100022, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 60.000, 0.000, 0.000, '2024-11-02 20:37:05', '42', '2024-11-02 17:37:16', '2024-11-04 16:43:37', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '461438', 0, 0, 0.000),
('c09a575e-2317-4bee-8aaa-31d038f91d88', 100020, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 20.000, 0.000, 0.000, '2024-11-03 20:21:00', '40', '2024-11-02 17:21:46', '2024-11-02 17:21:46', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '569508', 0, 0, 0.000),
('c261d909-f0ac-49c3-828a-af48b1c90f4a', 100018, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'canceled', 0, 'cash_after_service', 'cash-payment', 20.000, 0.000, 0.000, '2024-11-02 19:50:37', '38', '2024-11-02 16:50:51', '2024-11-02 16:51:11', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '515730', 0, 0, 0.000),
('c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 100025, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'ongoing', 1, 'cash_after_service', 'cash-payment', 33.000, 0.000, 0.000, '2024-11-06 00:16:54', '35', '2024-11-05 21:26:34', '2024-11-05 21:34:00', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '600038', 0, 0, 0.000),
('c84c31bf-9c63-4e61-8a02-c7acb5211d22', 100012, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 110.000, 0.000, 0.000, '2024-09-12 17:07:08', '24', '2024-09-12 13:07:15', '2024-09-12 13:07:15', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '177105', 0, 0, 0.000),
('cd6c23c5-59c8-4f0e-a552-be5af58539e0', 100004, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'pending', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-09-05 06:39:00', '13', '2024-09-05 00:40:07', '2024-09-05 00:40:07', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '809980', 0, 0, 0.000),
('ce3c00c3-6af3-4687-998b-0bd362f9bdbe', 100019, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 20.000, 0.000, 0.000, '2024-11-02 19:51:41', '39', '2024-11-02 16:51:49', '2024-11-02 16:53:24', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '402024', 0, 0, 0.000),
('e7357aa8-f660-469e-919f-489a99c9ce73', 100014, '6300be25-dcbc-4232-a1a9-b342bdd78bff', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'canceled', 0, 'cash_after_service', 'cash-payment', 50.000, 0.000, 0.000, '2024-09-23 20:59:51', '29', '2024-09-23 17:00:28', '2024-10-09 09:59:35', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '843036', 0, 0, 0.000),
('f8e66bef-f6af-46e6-889c-4cba15ed3af8', 100031, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'accepted', 1, 'cash_after_service', 'cash-payment', 66.000, 0.000, 0.000, '2024-12-05 17:50:58', '51', '2024-12-05 12:21:23', '2024-12-05 12:30:54', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', NULL, 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '342643', 0, 0, 0.000),
('fe1098dc-35e1-4e23-8268-d19f2c79c063', 100017, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'completed', 1, 'cash_after_service', 'cash-payment', 110.000, 0.000, 0.000, '2024-10-30 00:30:19', '37', '2024-10-29 21:30:35', '2024-10-29 21:36:56', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', '4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 0.000, 0.000, NULL, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '[]', '505726', 0, 0, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `booking_additional_information`
--

CREATE TABLE `booking_additional_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` char(36) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_additional_information`
--

INSERT INTO `booking_additional_information` (`id`, `booking_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, '4659c948-0002-43f2-962a-b71436108e51', 'booking_deny_note', 'test', '2024-09-23 16:08:20', '2024-09-23 16:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` char(36) DEFAULT NULL,
  `service_id` char(36) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `variant_key` varchar(255) DEFAULT NULL,
  `service_cost` decimal(24,3) NOT NULL DEFAULT 0.000,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `tax_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `total_cost` decimal(24,3) NOT NULL DEFAULT 0.000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `campaign_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `overall_coupon_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `service_id`, `service_name`, `variant_key`, `service_cost`, `quantity`, `discount_amount`, `tax_amount`, `total_cost`, `created_at`, `updated_at`, `campaign_discount_amount`, `overall_coupon_discount_amount`) VALUES
(1, '4659c948-0002-43f2-962a-b71436108e51', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'Ba', 0.000, 1, 0.000, 0.000, 0.000, '2024-09-05 04:08:27', '2024-09-05 04:08:27', 0.000, 0.000),
(2, '5b6338c6-f81e-473d-825e-a220d672bebe', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'Ba', 0.000, 3, 0.000, 0.000, 0.000, '2024-09-05 04:39:35', '2024-09-05 04:39:35', 0.000, 0.000),
(3, '8eee07e9-9791-4517-a152-069c54b1a364', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', '10', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-05 05:18:58', '2024-09-05 05:18:58', 0.000, 0.000),
(4, '1fb5efb1-10b8-47b7-b7b6-1275f24912e6', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'Ba', 0.000, 1, 0.000, 0.000, 0.000, '2024-09-05 05:46:45', '2024-09-05 05:46:45', 0.000, 0.000),
(5, 'cd6c23c5-59c8-4f0e-a552-be5af58539e0', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-09-05 00:40:07', '2024-09-05 00:40:07', 0.000, 0.000),
(6, '94a836b7-6be8-45b6-855e-64e0a748ff50', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-09-05 00:45:51', '2024-09-05 00:45:51', 0.000, 0.000),
(7, 'a0eb2573-233a-41af-b3ed-a765117e1e2b', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 2, 0.000, 0.000, 100.000, '2024-09-05 00:54:32', '2024-09-05 00:54:32', 0.000, 0.000),
(8, '9ddb00a0-3f64-4275-a7c3-01c973794c43', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 5.000, 0.000, 45.000, '2024-09-05 12:15:40', '2024-09-05 12:15:40', 0.000, 0.000),
(9, '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'سحب \" قلص \" قارب', '10', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-05 12:50:27', '2024-09-05 12:50:27', 0.000, 0.000),
(10, '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'سحب \" قلص \" قارب', 'Dilvery-fees', 50.000, 1, 5.000, 0.000, 45.000, '2024-09-05 12:50:27', '2024-09-05 12:50:27', 0.000, 0.000),
(11, '639029ee-7c83-4a1a-9717-75c4839e68dd', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Delivery-Fees', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-05 18:26:32', '2024-09-05 18:26:32', 0.000, 0.000),
(12, '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'سحب \" قلص \" قارب', 'Dilvery-fees', 50.000, 1, 5.000, 0.000, 45.000, '2024-09-05 18:29:07', '2024-09-05 18:29:07', 0.000, 0.000),
(13, '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'سحب \" قلص \" قارب', '10', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-05 18:29:08', '2024-09-05 18:29:08', 0.000, 0.000),
(14, '16482dc4-7737-4d87-9745-7e1ab814ad66', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-09-07 10:50:58', '2024-09-07 10:50:58', 0.000, 0.000),
(15, 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Delivery-Fees', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-12 13:07:15', '2024-09-12 13:07:15', 0.000, 0.000),
(16, 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Service-Cost', 100.000, 1, 0.000, 0.000, 100.000, '2024-09-12 13:07:15', '2024-09-12 13:07:15', 0.000, 0.000),
(17, '77825752-cba5-4c7b-b826-d47c411febf3', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-09-13 00:22:18', '2024-09-13 00:22:18', 0.000, 0.000),
(18, 'e7357aa8-f660-469e-919f-489a99c9ce73', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-09-23 17:00:28', '2024-09-23 17:00:28', 0.000, 0.000),
(19, '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Delivery-Fees', 10.000, 1, 0.000, 0.000, 10.000, '2024-09-23 17:16:17', '2024-09-23 17:16:17', 0.000, 0.000),
(20, '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Service-Cost', 100.000, 1, 0.000, 0.000, 100.000, '2024-09-23 17:16:17', '2024-09-23 17:16:17', 0.000, 0.000),
(21, '46243f48-8298-4811-859b-6558ab23cf80', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 8, 40.000, 0.000, 360.000, '2024-09-23 17:18:48', '2024-10-03 11:45:09', 0.000, 0.000),
(22, '46243f48-8298-4811-859b-6558ab23cf80', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', '10', 10.000, 5, 0.000, 0.000, 50.000, '2024-09-24 14:22:14', '2024-10-03 11:46:19', 0.000, 0.000),
(23, '46243f48-8298-4811-859b-6558ab23cf80', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', 'Dilvery-fees', 50.000, 12, 0.000, 0.000, 600.000, '2024-09-24 14:40:13', '2024-10-03 11:46:19', 0.000, 0.000),
(24, 'fe1098dc-35e1-4e23-8268-d19f2c79c063', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'Fuel Tank Filling', 'Delivery-Fees', 10.000, 1, 0.000, 0.000, 10.000, '2024-10-29 21:30:35', '2024-10-29 21:30:35', 0.000, 0.000),
(25, 'fe1098dc-35e1-4e23-8268-d19f2c79c063', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'Fuel Tank Filling', 'Service-Cost', 100.000, 1, 0.000, 0.000, 100.000, '2024-10-29 21:30:35', '2024-10-29 21:30:35', 0.000, 0.000),
(26, 'c261d909-f0ac-49c3-828a-af48b1c90f4a', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 1, 0.000, 0.000, 20.000, '2024-11-02 16:50:51', '2024-11-02 16:50:51', 0.000, 0.000),
(27, 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 1, 0.000, 0.000, 20.000, '2024-11-02 16:51:49', '2024-11-02 16:51:49', 0.000, 0.000),
(28, 'c09a575e-2317-4bee-8aaa-31d038f91d88', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 1, 0.000, 0.000, 20.000, '2024-11-02 17:21:46', '2024-11-02 17:21:46', 0.000, 0.000),
(29, '7bb04711-842f-46df-88e8-b66ee885fff6', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', 'Dilvery-fees', 50.000, 1, 0.000, 0.000, 50.000, '2024-11-02 17:22:27', '2024-11-02 17:22:27', 0.000, 0.000),
(30, '7bb04711-842f-46df-88e8-b66ee885fff6', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', '10', 10.000, 1, 0.000, 0.000, 10.000, '2024-11-02 17:22:27', '2024-11-02 17:22:27', 0.000, 0.000),
(31, 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', 'Dilvery-fees', 50.000, 1, 0.000, 0.000, 50.000, '2024-11-02 17:37:16', '2024-11-02 17:37:16', 0.000, 0.000),
(32, 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', '10', 10.000, 1, 0.000, 0.000, 10.000, '2024-11-02 17:37:16', '2024-11-02 17:37:16', 0.000, 0.000),
(33, 'af626fb3-e829-465b-9605-2c333632f351', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'مشاكل ميكانيكية', '2', 20.000, 1, 0.000, 0.000, 20.000, '2024-11-02 18:04:34', '2024-11-02 18:04:34', 0.000, 0.000),
(34, 'af626fb3-e829-465b-9605-2c333632f351', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'مشاكل ميكانيكية', '1', 0.000, 1, 0.000, 0.000, 0.000, '2024-11-02 18:04:34', '2024-11-02 18:04:34', 0.000, 0.000),
(35, 'ab4f3306-7ae0-4082-922d-10fdec0cda9e', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-11-02 18:05:14', '2024-11-02 18:05:14', 0.000, 0.000),
(36, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 1, 0.000, 0.000, 20.000, '2024-11-05 21:26:34', '2024-11-05 21:26:34', 0.000, 0.000),
(37, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '1', 0.000, 1, 0.000, 0.000, 0.000, '2024-11-05 21:26:34', '2024-11-05 21:26:34', 0.000, 0.000),
(38, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', 'توصيل', 13.000, 1, 0.000, 0.000, 13.000, '2024-11-05 21:26:34', '2024-11-05 21:26:34', 0.000, 0.000),
(39, '328e8cae-ec7e-4198-8a83-815f4ed41a32', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-11-09 17:05:46', '2024-11-09 17:05:46', 0.000, 0.000),
(40, '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Delivery-Fees', 10.000, 1, 0.000, 0.000, 10.000, '2024-11-24 21:01:11', '2024-11-24 21:01:11', 0.000, 0.000),
(41, '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'تعبئة بانزين', 'Service-Cost', 100.000, 1, 0.000, 0.000, 100.000, '2024-11-24 21:01:11', '2024-11-24 21:01:11', 0.000, 0.000),
(42, '8baa2759-c1b6-4ec0-b635-d943744c2831', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 1, 2.000, 0.000, 18.000, '2024-12-02 11:01:41', '2024-12-02 11:01:41', 0.000, 0.000),
(43, '8baa2759-c1b6-4ec0-b635-d943744c2831', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '1', 0.000, 1, 0.000, 0.000, 0.000, '2024-12-02 11:01:41', '2024-12-02 11:01:41', 0.000, 0.000),
(44, '8baa2759-c1b6-4ec0-b635-d943744c2831', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', 'توصيل', 13.000, 1, 1.300, 0.000, 11.700, '2024-12-02 11:01:41', '2024-12-02 11:01:41', 0.000, 0.000),
(45, '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', 'Dilvery-fees', 50.000, 1, 5.000, 0.000, 45.000, '2024-12-04 16:50:38', '2024-12-04 16:50:38', 0.000, 0.000),
(46, '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'Boat Towing', '10', 10.000, 1, 1.000, 0.000, 9.000, '2024-12-04 16:50:38', '2024-12-04 16:50:38', 0.000, 0.000),
(47, '8212dd8c-f70d-4392-8e1e-1fecc7032f61', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'Fuel Tank Filling', 'Service-Cost', 100.000, 1, 0.000, 0.000, 100.000, '2024-12-05 10:15:11', '2024-12-05 10:15:11', 0.000, 0.000),
(48, 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '1', 0.000, 2, 0.000, 0.000, 0.000, '2024-12-05 12:21:23', '2024-12-05 12:21:23', 0.000, 0.000),
(49, 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '2', 20.000, 2, 0.000, 0.000, 40.000, '2024-12-05 12:21:23', '2024-12-05 12:21:23', 0.000, 0.000),
(50, 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', 'توصيل', 13.000, 2, 0.000, 0.000, 26.000, '2024-12-05 12:21:23', '2024-12-05 12:21:23', 0.000, 0.000),
(51, '27a53336-0618-4da5-998d-e5c3178c67b7', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-12-05 12:42:03', '2024-12-05 12:42:03', 0.000, 0.000),
(52, '8f98e276-0720-416c-bc0a-da703c680ae4', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 1, 0.000, 0.000, 50.000, '2024-12-05 13:05:58', '2024-12-05 13:05:58', 0.000, 0.000),
(53, '5ae6d87c-cce1-45fa-bdfa-07441d53763a', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 2, 0.000, 0.000, 100.000, '2024-12-06 09:12:53', '2024-12-06 09:12:53', 0.000, 0.000),
(54, '0e3bb2aa-a17e-4ac7-904d-a523504455fa', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '1', 0.000, 2, 0.000, 0.000, 0.000, '2024-12-06 10:19:47', '2024-12-06 10:19:47', 0.000, 0.000),
(55, 'a48e8a8e-1298-461f-ba5a-5a96dd12b10c', '047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'test', 50.000, 2, 0.000, 0.000, 100.000, '2024-12-10 16:57:02', '2024-12-10 16:57:02', 0.000, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `booking_details_amounts`
--

CREATE TABLE `booking_details_amounts` (
  `id` char(36) NOT NULL,
  `booking_details_id` char(36) NOT NULL,
  `booking_id` char(36) NOT NULL,
  `service_unit_cost` decimal(24,2) NOT NULL DEFAULT 0.00,
  `service_quantity` int(11) NOT NULL DEFAULT 0,
  `service_tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_by_admin` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_by_provider` decimal(24,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_by_admin` decimal(24,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_by_provider` decimal(24,2) NOT NULL DEFAULT 0.00,
  `campaign_discount_by_admin` decimal(24,2) NOT NULL DEFAULT 0.00,
  `campaign_discount_by_provider` decimal(24,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(24,2) NOT NULL DEFAULT 0.00,
  `provider_earning` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_details_amounts`
--

INSERT INTO `booking_details_amounts` (`id`, `booking_details_id`, `booking_id`, `service_unit_cost`, `service_quantity`, `service_tax`, `discount_by_admin`, `discount_by_provider`, `coupon_discount_by_admin`, `coupon_discount_by_provider`, `campaign_discount_by_admin`, `campaign_discount_by_provider`, `admin_commission`, `provider_earning`, `created_at`, `updated_at`) VALUES
('02cff7a4-6947-4727-8ecb-ba5b4ca9e97d', '11', '639029ee-7c83-4a1a-9717-75c4839e68dd', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 18:26:32', '2024-09-05 18:26:32'),
('059bb256-9386-4b14-aa96-31f80b05a3cb', '38', 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 13.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-05 21:26:34', '2024-11-05 21:26:34'),
('06b725db-2321-4348-94ca-27e6acc5e7e3', '49', 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', 20.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:21:23', '2024-12-05 12:21:23'),
('086ca7b0-e448-48f4-94b9-4db93968797f', '29', '7bb04711-842f-46df-88e8-b66ee885fff6', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 17:22:27', '2024-11-02 17:22:27'),
('11f3c8a4-de88-4401-9d33-98b9314cd649', '18', 'e7357aa8-f660-469e-919f-489a99c9ce73', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:00:28', '2024-09-23 17:00:28'),
('16538e5b-c85d-4825-972a-fa3522cfaf11', '41', '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', 100.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-24 21:01:11', '2024-11-24 21:01:11'),
('18ed9f84-035c-4f44-a433-13f37e2e6929', '32', 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 17:37:16', '2024-11-02 17:37:16'),
('2068d37e-1f3f-4f74-99c1-8b10f672aba7', '48', 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', 0.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:21:23', '2024-12-05 12:21:23'),
('21a1056f-1721-4275-932e-b17f1d7d51c1', '54', '0e3bb2aa-a17e-4ac7-904d-a523504455fa', 0.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-06 10:19:47', '2024-12-06 10:19:47'),
('232858b9-82aa-4d09-a377-1d76ea9c8469', '43', '8baa2759-c1b6-4ec0-b635-d943744c2831', 0.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-02 11:01:41', '2024-12-02 11:01:41'),
('25ffa249-bd62-4828-94a1-735e1d3d9dc0', '51', '27a53336-0618-4da5-998d-e5c3178c67b7', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:42:03', '2024-12-05 12:42:03'),
('262e2fba-b261-4c57-a4bf-88102c93414f', '17', '77825752-cba5-4c7b-b826-d47c411febf3', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-13 00:22:18', '2024-09-13 00:22:18'),
('274d7d8f-cf2a-415d-a17a-6d9dea34ae2c', '31', 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 17:37:16', '2024-11-02 17:37:16'),
('34436c96-e9fc-452c-b9af-da04137d7192', '12', '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 50.00, 1, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 18:29:07', '2024-09-05 18:29:07'),
('34ae5c65-252c-4064-a45c-63b4ad30b190', '16', 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', 100.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-12 13:07:15', '2024-09-12 13:07:15'),
('35786046-0b84-4235-8e7c-8a8dc299c790', '26', 'c261d909-f0ac-49c3-828a-af48b1c90f4a', 20.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 16:50:51', '2024-11-02 16:50:51'),
('36b71cd4-e5ea-455d-beb1-31a8d5e0d70f', '52', '8f98e276-0720-416c-bc0a-da703c680ae4', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 13:05:58', '2024-12-05 13:05:58'),
('3fc07fdf-0130-43f1-981e-1d5da9e4609b', '10', '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 50.00, 1, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 12:50:27', '2024-09-05 12:50:27'),
('49fd901f-7105-4e3f-aefb-3f4696b99afd', '30', '7bb04711-842f-46df-88e8-b66ee885fff6', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 17:22:27', '2024-11-02 17:22:27'),
('51667658-f6c9-428a-aa16-2ff65230e606', '28', 'c09a575e-2317-4bee-8aaa-31d038f91d88', 20.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 17:21:46', '2024-11-02 17:21:46'),
('5386600e-950f-4085-a7aa-14dd0b923048', '37', 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 0.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-05 21:26:34', '2024-11-05 21:26:34'),
('552185b2-291c-4dc2-8bae-75735a441d7f', '5', 'cd6c23c5-59c8-4f0e-a552-be5af58539e0', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 00:40:07', '2024-09-05 00:40:07'),
('5a6c300c-26f4-42b8-9da7-4f40b3b787b4', '4', '1fb5efb1-10b8-47b7-b7b6-1275f24912e6', 0.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 05:46:45', '2024-09-05 05:46:45'),
('5dafc195-7097-45f1-aeff-ecdf72de1929', '20', '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', 100.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:16:17', '2024-09-23 17:16:17'),
('6a80aa0e-d0e7-4f27-8e44-4e6383f5e2b6', '23', '46243f48-8298-4811-859b-6558ab23cf80', 50.00, 12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-24 14:40:13', '2024-10-03 11:46:19'),
('6d123981-9e6f-46f0-ab17-593ccd16a2eb', '3', '8eee07e9-9791-4517-a152-069c54b1a364', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 05:18:58', '2024-09-05 05:18:58'),
('7afaac58-0ee3-4f9f-9f3d-7284f92ac5d4', '7', 'a0eb2573-233a-41af-b3ed-a765117e1e2b', 50.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 00:54:32', '2024-09-05 00:54:32'),
('7da58bc8-001c-4146-a76d-117130b7165d', '35', 'ab4f3306-7ae0-4082-922d-10fdec0cda9e', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 18:05:14', '2024-11-02 18:05:14'),
('8562cf8e-60c4-4733-9278-514785c6c283', '39', '328e8cae-ec7e-4198-8a83-815f4ed41a32', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-09 17:05:46', '2024-11-09 17:05:46'),
('8597400a-4ca0-4b47-aa31-300fead22232', '46', '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 10.00, 1, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-04 16:50:38', '2024-12-04 16:50:38'),
('8a07a82a-75c9-4e7e-b916-dc30d3a9d5aa', '50', 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', 13.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 12:21:23', '2024-12-05 12:21:23'),
('978bcf37-8409-4d6a-a0a4-629727302328', '24', 'fe1098dc-35e1-4e23-8268-d19f2c79c063', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-10-29 21:30:35', '2024-10-29 21:30:35'),
('98ecbb29-260b-4483-88cd-83c3b486621c', '55', 'a48e8a8e-1298-461f-ba5a-5a96dd12b10c', 50.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-10 16:57:02', '2024-12-10 16:57:02'),
('a14797d6-ec39-47d0-8395-4817b5830164', '9', '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 12:50:27', '2024-09-05 12:50:27'),
('a5eb1478-b370-44cb-a096-52cde0f2f35f', '21', '46243f48-8298-4811-859b-6558ab23cf80', 50.00, 8, 0.00, 0.00, 40.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:18:48', '2024-10-03 11:45:09'),
('aa2827dd-4906-4fe1-911f-cbee9ec2e69a', '2', '5b6338c6-f81e-473d-825e-a220d672bebe', 0.00, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 04:39:35', '2024-09-05 04:39:35'),
('ade5feb4-bc28-4134-9ee7-f99e57d896f2', '47', '8212dd8c-f70d-4392-8e1e-1fecc7032f61', 100.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-05 10:15:11', '2024-12-05 10:15:11'),
('af6ac28c-6d1b-40fe-9900-79b270bba76a', '42', '8baa2759-c1b6-4ec0-b635-d943744c2831', 20.00, 1, 0.00, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-02 11:01:41', '2024-12-02 11:01:41'),
('b24b6248-9db5-4fb7-9084-e9806501f0f6', '33', 'af626fb3-e829-465b-9605-2c333632f351', 20.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 18:04:34', '2024-11-02 18:04:34'),
('b41250ab-c759-4717-948a-5ce2e72b69e0', '8', '9ddb00a0-3f64-4275-a7c3-01c973794c43', 50.00, 1, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 12:15:40', '2024-09-05 12:15:40'),
('b6d655c4-e4c0-44e5-8bf8-403fc219e06f', '34', 'af626fb3-e829-465b-9605-2c333632f351', 0.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 18:04:34', '2024-11-02 18:04:34'),
('c512c9fc-231f-41ea-a10a-611881c02b48', '44', '8baa2759-c1b6-4ec0-b635-d943744c2831', 13.00, 1, 0.00, 0.00, 1.30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-02 11:01:41', '2024-12-02 11:01:41'),
('c61d1c2a-9487-4132-bd80-6aff492e6df5', '19', '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-23 17:16:17', '2024-09-23 17:16:17'),
('c6decf31-5a62-4c93-b4d1-f06e3295b7f2', '22', '46243f48-8298-4811-859b-6558ab23cf80', 10.00, 5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-24 14:22:14', '2024-10-03 11:46:19'),
('dc672f8e-e55b-4c58-90ba-36b520707182', '14', '16482dc4-7737-4d87-9745-7e1ab814ad66', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-07 10:50:58', '2024-09-07 10:50:58'),
('df937a87-ce84-4944-a863-fdc03a912264', '53', '5ae6d87c-cce1-45fa-bdfa-07441d53763a', 50.00, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-06 09:12:53', '2024-12-06 09:12:53'),
('e185e374-7df9-40f7-92db-f12bc7f5d0c6', '25', 'fe1098dc-35e1-4e23-8268-d19f2c79c063', 100.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-10-29 21:30:35', '2024-10-29 21:30:35'),
('e399b320-47aa-404f-b7b5-0f0c0c7ab321', '36', 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 20.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-05 21:26:34', '2024-11-05 21:26:34'),
('e6ae1204-646a-4d5d-9717-f11d50bf7b18', '1', '4659c948-0002-43f2-962a-b71436108e51', 0.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 04:08:27', '2024-09-05 04:08:27'),
('e6e6ea09-7531-48f1-acc8-1bc62a80e540', '40', '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-24 21:01:11', '2024-11-24 21:01:11'),
('e7cdaea3-a24f-4727-91e3-3f43b809eaa7', '45', '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 50.00, 1, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-12-04 16:50:38', '2024-12-04 16:50:38'),
('e7cefdcb-a6f1-4236-91c2-cfdee7915cf5', '6', '94a836b7-6be8-45b6-855e-64e0a748ff50', 50.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 00:45:51', '2024-09-05 00:45:51'),
('ea0a24b1-3fe3-4f91-8a35-7d8cfbde1ec4', '15', 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-12 13:07:15', '2024-09-12 13:07:15'),
('f21d3280-9ce5-43fc-b04f-a2b20d08ac52', '27', 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', 20.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-02 16:51:49', '2024-11-02 16:51:49'),
('f3ca3b5b-b596-4a5d-b6b0-883f182c14ea', '13', '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 10.00, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-09-05 18:29:08', '2024-09-05 18:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `booking_offline_payments`
--

CREATE TABLE `booking_offline_payments` (
  `id` char(36) NOT NULL,
  `booking_id` char(36) NOT NULL,
  `method_name` text DEFAULT NULL,
  `customer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customer_information`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_partial_payments`
--

CREATE TABLE `booking_partial_payments` (
  `id` char(36) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `paid_with` varchar(255) NOT NULL,
  `paid_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `due_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_schedule_histories`
--

CREATE TABLE `booking_schedule_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` char(36) NOT NULL,
  `changed_by` char(36) NOT NULL,
  `schedule` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_schedule_histories`
--

INSERT INTO `booking_schedule_histories` (`id`, `booking_id`, `changed_by`, `schedule`, `created_at`, `updated_at`, `is_guest`) VALUES
(1, '4659c948-0002-43f2-962a-b71436108e51', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-04 22:07:37', '2024-09-05 04:08:27', '2024-09-05 04:08:27', 0),
(2, '5b6338c6-f81e-473d-825e-a220d672bebe', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-04 22:39:26', '2024-09-05 04:39:35', '2024-09-05 04:39:35', 0),
(3, '8eee07e9-9791-4517-a152-069c54b1a364', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '2024-09-04 23:11:25', '2024-09-05 05:18:58', '2024-09-05 05:18:58', 0),
(4, '1fb5efb1-10b8-47b7-b7b6-1275f24912e6', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-04 23:46:35', '2024-09-05 05:46:45', '2024-09-05 05:46:45', 0),
(5, 'cd6c23c5-59c8-4f0e-a552-be5af58539e0', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-05 06:39:00', '2024-09-05 00:40:07', '2024-09-05 00:40:07', 0),
(6, '94a836b7-6be8-45b6-855e-64e0a748ff50', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-05 04:45:44', '2024-09-05 00:45:51', '2024-09-05 00:45:51', 0),
(7, 'a0eb2573-233a-41af-b3ed-a765117e1e2b', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-05 04:54:27', '2024-09-05 00:54:32', '2024-09-05 00:54:32', 0),
(8, '9ddb00a0-3f64-4275-a7c3-01c973794c43', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-09-05 16:15:30', '2024-09-05 12:15:40', '2024-09-05 12:15:40', 0),
(9, '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-09-05 16:50:07', '2024-09-05 12:50:27', '2024-09-05 12:50:27', 0),
(10, '639029ee-7c83-4a1a-9717-75c4839e68dd', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-05 22:26:04', '2024-09-05 18:26:32', '2024-09-05 18:26:32', 0),
(11, '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-09-05 22:29:00', '2024-09-05 18:29:08', '2024-09-05 18:29:08', 0),
(12, '16482dc4-7737-4d87-9745-7e1ab814ad66', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '2024-09-07 06:48:33', '2024-09-07 10:50:58', '2024-09-07 10:50:58', 0),
(13, 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-09-12 17:07:08', '2024-09-12 13:07:15', '2024-09-12 13:07:15', 0),
(14, '77825752-cba5-4c7b-b826-d47c411febf3', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '2024-09-13 04:22:07', '2024-09-13 00:22:18', '2024-09-13 00:22:18', 0),
(15, 'e7357aa8-f660-469e-919f-489a99c9ce73', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '2024-09-23 20:59:51', '2024-09-23 17:00:28', '2024-09-23 17:00:28', 0),
(16, '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '2024-09-23 21:15:36', '2024-09-23 17:16:17', '2024-09-23 17:16:17', 0),
(17, '46243f48-8298-4811-859b-6558ab23cf80', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '2024-09-23 21:18:30', '2024-09-23 17:18:48', '2024-09-23 17:18:48', 0),
(18, 'fe1098dc-35e1-4e23-8268-d19f2c79c063', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-10-30 00:30:19', '2024-10-29 21:30:35', '2024-10-29 21:30:35', 0),
(19, 'c261d909-f0ac-49c3-828a-af48b1c90f4a', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 19:50:37', '2024-11-02 16:50:51', '2024-11-02 16:50:51', 0),
(20, 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 19:51:41', '2024-11-02 16:51:49', '2024-11-02 16:51:49', 0),
(21, 'c09a575e-2317-4bee-8aaa-31d038f91d88', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-03 20:21:00', '2024-11-02 17:21:46', '2024-11-02 17:21:46', 0),
(22, '7bb04711-842f-46df-88e8-b66ee885fff6', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 20:22:18', '2024-11-02 17:22:27', '2024-11-02 17:22:27', 0),
(23, 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 20:37:05', '2024-11-02 17:37:16', '2024-11-02 17:37:16', 0),
(24, 'af626fb3-e829-465b-9605-2c333632f351', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 21:04:17', '2024-11-02 18:04:34', '2024-11-02 18:04:34', 0),
(25, 'ab4f3306-7ae0-4082-922d-10fdec0cda9e', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 21:05:01', '2024-11-02 18:05:14', '2024-11-02 18:05:14', 0),
(26, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-06 00:16:54', '2024-11-05 21:26:34', '2024-11-05 21:26:34', 0),
(27, '328e8cae-ec7e-4198-8a83-815f4ed41a32', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-09 20:05:11', '2024-11-09 17:05:46', '2024-11-09 17:05:46', 0),
(28, '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-11-25 00:00:51', '2024-11-24 21:01:11', '2024-11-24 21:01:11', 0),
(29, '8baa2759-c1b6-4ec0-b635-d943744c2831', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-12-02 14:00:30', '2024-12-02 11:01:41', '2024-12-02 11:01:41', 0),
(30, '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', '82f44630-e829-4799-a84e-e6c72921d12f', '2024-12-04 19:50:30', '2024-12-04 16:50:38', '2024-12-04 16:50:38', 0),
(31, '8212dd8c-f70d-4392-8e1e-1fecc7032f61', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-05 15:44:27', '2024-12-05 10:15:11', '2024-12-05 10:15:11', 0),
(32, 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-05 17:50:58', '2024-12-05 12:21:23', '2024-12-05 12:21:23', 0),
(33, '27a53336-0618-4da5-998d-e5c3178c67b7', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-05 18:11:52', '2024-12-05 12:42:03', '2024-12-05 12:42:03', 0),
(34, '8f98e276-0720-416c-bc0a-da703c680ae4', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-05 18:35:52', '2024-12-05 13:05:58', '2024-12-05 13:05:58', 0),
(35, '5ae6d87c-cce1-45fa-bdfa-07441d53763a', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-06 14:42:09', '2024-12-06 09:12:53', '2024-12-06 09:12:53', 0),
(36, '0e3bb2aa-a17e-4ac7-904d-a523504455fa', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-06 15:37:27', '2024-12-06 10:19:47', '2024-12-06 10:19:47', 0),
(37, 'a48e8a8e-1298-461f-ba5a-5a96dd12b10c', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '2024-12-10 22:26:04', '2024-12-10 16:57:02', '2024-12-10 16:57:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status_histories`
--

CREATE TABLE `booking_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` char(36) NOT NULL,
  `changed_by` char(36) NOT NULL,
  `booking_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status_histories`
--

INSERT INTO `booking_status_histories` (`id`, `booking_id`, `changed_by`, `booking_status`, `created_at`, `updated_at`, `is_guest`) VALUES
(1, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '4659c948-0002-43f2-962a-b71436108e51', 'pending', '2024-09-05 04:08:27', '2024-09-05 04:08:27', 0),
(2, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '5b6338c6-f81e-473d-825e-a220d672bebe', 'pending', '2024-09-05 04:39:35', '2024-09-05 04:39:35', 0),
(3, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '8eee07e9-9791-4517-a152-069c54b1a364', 'pending', '2024-09-05 05:18:58', '2024-09-05 05:18:58', 0),
(4, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '1fb5efb1-10b8-47b7-b7b6-1275f24912e6', 'pending', '2024-09-05 05:46:45', '2024-09-05 05:46:45', 0),
(5, '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'cd6c23c5-59c8-4f0e-a552-be5af58539e0', 'pending', '2024-09-05 00:40:07', '2024-09-05 00:40:07', 0),
(6, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '94a836b7-6be8-45b6-855e-64e0a748ff50', 'pending', '2024-09-05 00:45:51', '2024-09-05 00:45:51', 0),
(7, '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'a0eb2573-233a-41af-b3ed-a765117e1e2b', 'pending', '2024-09-05 00:54:32', '2024-09-05 00:54:32', 0),
(8, '82f44630-e829-4799-a84e-e6c72921d12f', '9ddb00a0-3f64-4275-a7c3-01c973794c43', 'pending', '2024-09-05 12:15:40', '2024-09-05 12:15:40', 0),
(9, '82f44630-e829-4799-a84e-e6c72921d12f', '30cd7f31-f3d1-49e5-b9b9-0b4ac72b3e91', 'pending', '2024-09-05 12:50:27', '2024-09-05 12:50:27', 0),
(10, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '639029ee-7c83-4a1a-9717-75c4839e68dd', 'pending', '2024-09-05 18:26:32', '2024-09-05 18:26:32', 0),
(11, '82f44630-e829-4799-a84e-e6c72921d12f', '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', 'pending', '2024-09-05 18:29:08', '2024-09-05 18:29:08', 0),
(12, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '16482dc4-7737-4d87-9745-7e1ab814ad66', 'pending', '2024-09-07 10:50:58', '2024-09-07 10:50:58', 0),
(13, '37b8c2d3-c082-4cd2-9b76-59f3c06e1f8a', '82f44630-e829-4799-a84e-e6c72921d12f', 'canceled', '2024-09-07 18:17:55', '2024-09-07 18:17:55', 0),
(14, '82f44630-e829-4799-a84e-e6c72921d12f', 'c84c31bf-9c63-4e61-8a02-c7acb5211d22', 'pending', '2024-09-12 13:07:15', '2024-09-12 13:07:15', 0),
(15, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '77825752-cba5-4c7b-b826-d47c411febf3', 'pending', '2024-09-13 00:22:18', '2024-09-13 00:22:18', 0),
(16, '6300be25-dcbc-4232-a1a9-b342bdd78bff', 'e7357aa8-f660-469e-919f-489a99c9ce73', 'pending', '2024-09-23 17:00:28', '2024-09-23 17:00:28', 0),
(17, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', 'pending', '2024-09-23 17:16:17', '2024-09-23 17:16:17', 0),
(18, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '46243f48-8298-4811-859b-6558ab23cf80', 'pending', '2024-09-23 17:18:48', '2024-09-23 17:18:48', 0),
(19, '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-10-01 10:59:18', '2024-10-01 10:59:18', 0),
(20, '16482dc4-7737-4d87-9745-7e1ab814ad66', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'completed', '2024-10-08 11:02:09', '2024-10-08 11:02:09', 0),
(21, 'e7357aa8-f660-469e-919f-489a99c9ce73', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'canceled', '2024-10-09 09:59:35', '2024-10-09 09:59:35', 0),
(22, '46243f48-8298-4811-859b-6558ab23cf80', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-10-29 19:14:13', '2024-10-29 19:14:13', 0),
(23, '77825752-cba5-4c7b-b826-d47c411febf3', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-10-29 19:14:37', '2024-10-29 19:14:37', 0),
(24, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'fe1098dc-35e1-4e23-8268-d19f2c79c063', 'pending', '2024-10-29 21:30:35', '2024-10-29 21:30:35', 0),
(25, 'fe1098dc-35e1-4e23-8268-d19f2c79c063', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-10-29 21:31:20', '2024-10-29 21:31:20', 0),
(26, 'fe1098dc-35e1-4e23-8268-d19f2c79c063', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-10-29 21:36:56', '2024-10-29 21:36:56', 0),
(27, '7a6ef952-47dc-4fdf-91aa-b085fd3fd2c9', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-10-29 21:37:35', '2024-10-29 21:37:35', 0),
(28, '46243f48-8298-4811-859b-6558ab23cf80', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-10-29 21:37:56', '2024-10-29 21:37:56', 0),
(29, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'c261d909-f0ac-49c3-828a-af48b1c90f4a', 'pending', '2024-11-02 16:50:51', '2024-11-02 16:50:51', 0),
(30, 'c261d909-f0ac-49c3-828a-af48b1c90f4a', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'canceled', '2024-11-02 16:51:11', '2024-11-02 16:51:11', 0),
(31, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', 'pending', '2024-11-02 16:51:49', '2024-11-02 16:51:49', 0),
(32, 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-11-02 16:52:28', '2024-11-02 16:52:28', 0),
(33, 'ce3c00c3-6af3-4687-998b-0bd362f9bdbe', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-11-02 16:53:24', '2024-11-02 16:53:24', 0),
(34, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'c09a575e-2317-4bee-8aaa-31d038f91d88', 'pending', '2024-11-02 17:21:46', '2024-11-02 17:21:46', 0),
(35, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '7bb04711-842f-46df-88e8-b66ee885fff6', 'pending', '2024-11-02 17:22:27', '2024-11-02 17:22:27', 0),
(36, '7bb04711-842f-46df-88e8-b66ee885fff6', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-11-02 17:26:00', '2024-11-02 17:26:00', 0),
(37, '7bb04711-842f-46df-88e8-b66ee885fff6', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'ongoing', '2024-11-02 17:29:06', '2024-11-02 17:29:06', 0),
(38, '7bb04711-842f-46df-88e8-b66ee885fff6', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-11-02 17:29:38', '2024-11-02 17:29:38', 0),
(39, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'pending', '2024-11-02 17:37:16', '2024-11-02 17:37:16', 0),
(40, 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-11-02 17:37:48', '2024-11-02 17:37:48', 0),
(41, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'af626fb3-e829-465b-9605-2c333632f351', 'pending', '2024-11-02 18:04:34', '2024-11-02 18:04:34', 0),
(42, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'ab4f3306-7ae0-4082-922d-10fdec0cda9e', 'pending', '2024-11-02 18:05:14', '2024-11-02 18:05:14', 0),
(43, 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-11-04 16:43:37', '2024-11-04 16:43:37', 0),
(44, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 'pending', '2024-11-05 21:26:34', '2024-11-05 21:26:34', 0),
(45, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-11-05 21:27:19', '2024-11-05 21:27:19', 0),
(46, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'ongoing', '2024-11-05 21:30:24', '2024-11-05 21:30:24', 0),
(47, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'completed', '2024-11-05 21:31:03', '2024-11-05 21:31:03', 0),
(48, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-11-05 21:32:54', '2024-11-05 21:32:54', 0),
(49, 'c319cc2e-46d2-4461-8c7d-c5faeca18f6a', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'ongoing', '2024-11-05 21:34:00', '2024-11-05 21:34:00', 0),
(50, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '328e8cae-ec7e-4198-8a83-815f4ed41a32', 'pending', '2024-11-09 17:05:46', '2024-11-09 17:05:46', 0),
(51, '328e8cae-ec7e-4198-8a83-815f4ed41a32', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ongoing', '2024-11-09 19:31:43', '2024-11-09 19:31:43', 0),
(52, '82f44630-e829-4799-a84e-e6c72921d12f', '5e933e8b-7f5f-4d14-b7f0-0fe8aaf00d9c', 'pending', '2024-11-24 21:01:11', '2024-11-24 21:01:11', 0),
(53, '82f44630-e829-4799-a84e-e6c72921d12f', '8baa2759-c1b6-4ec0-b635-d943744c2831', 'pending', '2024-12-02 11:01:41', '2024-12-02 11:01:41', 0),
(54, '82f44630-e829-4799-a84e-e6c72921d12f', '73b25280-b469-4c2f-88dc-a5f36b0c1c4d', 'pending', '2024-12-04 16:50:38', '2024-12-04 16:50:38', 0),
(55, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '8212dd8c-f70d-4392-8e1e-1fecc7032f61', 'pending', '2024-12-05 10:15:11', '2024-12-05 10:15:11', 0),
(56, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', 'pending', '2024-12-05 12:21:23', '2024-12-05 12:21:23', 0),
(57, 'f8e66bef-f6af-46e6-889c-4cba15ed3af8', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-12-05 12:30:54', '2024-12-05 12:30:54', 0),
(58, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '27a53336-0618-4da5-998d-e5c3178c67b7', 'pending', '2024-12-05 12:42:03', '2024-12-05 12:42:03', 0),
(59, '27a53336-0618-4da5-998d-e5c3178c67b7', '30aea711-dde5-4560-b7e8-24f996acefe8', 'accepted', '2024-12-05 12:46:18', '2024-12-05 12:46:18', 0),
(60, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '8f98e276-0720-416c-bc0a-da703c680ae4', 'pending', '2024-12-05 13:05:58', '2024-12-05 13:05:58', 0),
(61, '8f98e276-0720-416c-bc0a-da703c680ae4', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-12-05 14:25:37', '2024-12-05 14:25:37', 0),
(62, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '5ae6d87c-cce1-45fa-bdfa-07441d53763a', 'pending', '2024-12-06 09:12:53', '2024-12-06 09:12:53', 0),
(63, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '0e3bb2aa-a17e-4ac7-904d-a523504455fa', 'pending', '2024-12-06 10:19:47', '2024-12-06 10:19:47', 0),
(64, '0e3bb2aa-a17e-4ac7-904d-a523504455fa', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-12-06 12:26:41', '2024-12-06 12:26:41', 0),
(65, '27a53336-0618-4da5-998d-e5c3178c67b7', '7e3c4471-507f-418c-97dc-221318cc64ab', 'ongoing', '2024-12-09 10:44:45', '2024-12-09 10:44:45', 0),
(66, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', 'a48e8a8e-1298-461f-ba5a-5a96dd12b10c', 'pending', '2024-12-10 16:57:02', '2024-12-10 16:57:02', 0),
(67, 'a48e8a8e-1298-461f-ba5a-5a96dd12b10c', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'accepted', '2024-12-10 17:03:40', '2024-12-10 17:03:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` char(36) NOT NULL COMMENT '(DC2Type:guid)',
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`) VALUES
('0098459d-9115-4c58-a6f8-becc65d3cb97', 'service_section_image', '\"2025-03-06-67c8edd343869.png\"', '\"2025-03-06-67c8edd343869.png\"', 'landing_images', 'live', 0, '2022-10-03 17:37:21', '2025-03-06 03:35:31'),
('01b2c108-18fe-4ad0-8693-04be1bfa59aa', 'cancellation_policy', '\"<p>Privacy and Confidentialit<\\/p>\\r\\n\\r\\n<p>Test12345hhhh jhjhjhjh<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Welcome to the daraz.com.bd website (the \\\\&quot;Site\\\\&quot;) operated by Daraz Bangladesh Ltd. , We respect your privacy and want to protect your personal information. To learn more, please read this Privacy Policy.<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>This Privacy Policy explains how we collect, use and (under certain conditions) disclose your personal information. This Privacy Policy also explains the steps we have taken to secure your personal information. Finally, this Privacy Policy explains your options regarding the collection, use and disclosure of your personal information. By visiting the Site directly or through another site, you accept the practices described in this Policy.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Data protection is a matter of trust and your privacy is important to us. We shall therefore only use your name and other information which relates to you in the manner set out in this Privacy Policy. We will only collect information where it is necessary for us to do so and we will only collect information if it is relevant to our dealings with you.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>We will only keep your information for as long as we are either required to by law or as is relevant for the purposes for which it was collected.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>We will cease to retain your personal data, or remove the means by which the data can be associated with you, as soon as it is reasonable to assume that such retention no longer serves the purposes for which the personal data was collected, and is no longer necessary for any legal or business purpose.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>You can visit the Site and browse without having to provide personal details. During your visit to the Site you remain anonymous and at no time can we identify you unless you have an account on the Site and log on with your user name and password.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Data that we collect\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may collect various pieces of information if you seek to place an order for a product with us on the Site.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We collect, store and process your data for processing your purchase on the Site and any possible later claims, and to provide you with our services. We may collect personal information including, but not limited to, your title, name, gender, date of birth, email address, postal address, delivery address (if different), telephone number, mobile number, fax number, payment details, payment card details or bank account details.\\\\n\\r\\n\\t\\t<ol>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>Daraz shall collect the following information where you are a buyer:\\\\n\\r\\n\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Identity data, such as your name, gender, profile picture, and date of birth;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Contact data, such as billing address, delivery address\\/location, email address and phone numbers;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Biometric data, such as voice files and face recognition when you use our voice search function, and your facial features of when you use the Site;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Billing account information: bank account details, credit card account and payment information (such account data may also be collected directly by our affiliates and\\/or third party payment service providers);<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Transaction records\\/data, such as details about orders and payments, user clicks, and other details of products and Services related to you;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Technical data, such as Internet protocol (IP) address, your login data, browser type and version, time zone setting and location, device information, browser plug-in types and versions, operating system and platform, international mobile equipment identity, device identifier, IMEI, MAC address, cookies (where applicable) and other information and technology on the devices you use to access the Site;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Profile data, such as your username and password, account settings, orders related to you, user research, your interests, preferences, feedback and survey responses;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Usage data, such as information on how you use the Site, products and Services or view any content on the Site, including the time spent on the Site, items and data searched for on the Site, access times and dates, as well as websites you were visiting before you came to the Site and other similar statistics;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Location data, such as when you capture and share your location with us in the form of photographs or videos and upload such content to the Site;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Marketing and communications data, such as your preferences in receiving marketing from us and our third parties, your communication preferences and your chat, email or call history on the Site or with third party customer service providers; and<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Additional information we may request you to submit for due diligence checks or required by relevant authorities as required for identity verification (such as copies of government issued identification, e.g. passport, ID cards, etc.) or if we believe you are violating our Privacy Policy or our Customer Terms and Conditions.<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>Daraz shall collect the following information where you are a seller:\\\\n\\r\\n\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Identity and contact data, such as your name, date of birth or incorporation, company name, address, email address, phone number and other business-related information (e.g. company registration number, business licence, tax information, shareholder and director information, etc.);<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Account data, such as bank account details, bank statements, credit card details and payment details (such account data may also be collected directly by our affiliates and\\/or third party payment service providers);<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Transaction data, such as details about orders and payments, and other details of products and Services related to you;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Technical data, such as Internet protocol (IP) address, your login data, browser type and version, time zone setting and location, browser plug-in types and versions, operating system and platform, international mobile equipment identity, device identifier, IMEI, MAC address, cookies (where applicable) and other information and technology on the devices you use to access the Site;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Profile data, such as your username and password, orders related to you, your interests, preferences, feedback and survey responses;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Usage data, such as information on how you use the Site, products and Services or view any content on the Site, including the time spent on the Site, items and data searched for on the Site, access times and dates, as well as websites you were visiting before you came to the Site and other similar statistics;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Location data, such as when you capture and share your location with us in the form of photographs or videos and upload such content to the Site;<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Marketing and communications data, such as your preferences in receiving marketing from us and our third parties and your communication preferences and your chat, email or call history on the Site or with our third party seller service providers; and<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Additional information we may request you to submit for authentication (such as copies of government issued identification, e.g. passport, ID cards, etc.) or if we believe you are violating our Privacy Policy or our Terms of Use.<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<\\/ol>\\r\\n\\t\\t\\\\n<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We will use the information you provide to enable us to process your orders and to provide you with the services and information offered through our website and which you request in the following ways:.\\\\n\\r\\n\\t\\t<ol>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>If you are a buyer:\\\\n\\r\\n\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Processing your orders for products:\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Process orders you submit through the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Deliver the products you have purchased through the Site for which we may pass your personal information on to a third party (e.g. our logistics partner) in order to make delivery of the product to you;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Update you on the delivery of the products;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Provide customer support for your orders;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Verify and carry out payment transactions (including any credit card payments, bank transfers, offline payments, remittances, or e-wallet transactions) in relation to payments related to you and\\/or services used by you. In order to verify and carry out such payment transactions, payment information, which may include personal data, will be transferred to third parties such as our payment service providers;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Providing services\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Facilitate your use of the services or access to the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Administer your account with us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Display your name, username or profile on the Site (including on any reviews you may post);<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Respond to your queries, feedback, claims or disputes, whether directly or through our third party service providers; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Display on scoreboards on the Site in relation to campaigns, mobile games or any other activity;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Marketing and advertising:\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Provide you with information we think you may find useful or which you have requested from us (provided you have opted to receive such information);<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Send you marketing or promotional information about \\\\\\\\ products and services on the Site from time to time (provided you have opted to receive such information); and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Help us conduct marketing and advertising;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Legal and operational purposes:\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Ascertain your identity in connection with fraud detection purposes;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Compare information, and verify with third parties in order to ensure that the information is accurate;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Process any complaints, feedback, enforcement action you may have lodged with us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Produce statistics and research for internal and statutory reporting and\\/or record-keeping requirements;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Store, host, back up your personal data;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Prevent or investigate any actual or suspected violations of our Terms of Use, Privacy Policy, fraud, unlawful activity, omission or misconduct, whether relating to your use of Site or any other matter arising from your relationship with us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Perform due diligence checks;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Comply with legal and regulatory requirements (including, where applicable, the display of your name, contact details and company details), including any law enforcement requests, in connection with any legal proceedings, or otherwise deemed necessary by us; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Where necessary to prevent a threat to life, health or safety.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Analytics, research, business and development:\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Understand your user experience on the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Improve the layout or content of the pages of the Site and customize them for users;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Identify visitors on the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Conduct surveys, including carrying out research on our users&rsquo; demographics and behavior;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Derive further attributes relating to you based on personal data provided by you (whether to us or third parties), in order to provide you with more targeted and\\/or relevant information;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Conduct data analysis, testing and research, monitoring and analyzing usage and activity trends;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Further develop our products and services; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Other\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Any other purpose to which your consent has been obtained; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Conduct automated decision-making processes in accordance with any of the above purposes.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>If you are a seller:\\\\n\\r\\n\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Providing Services\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To facilitate your use of the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To ship or deliver the products you have listed or sold through the Site. We may pass your personal information on to a third party (e.g. our logistics partners) or relevant regulatory authority (e.g. customs) in order to carry out shipping or delivery of the products listed or sold by you;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To respond to your queries, feedback, claims or disputes, whether directly or through our third party service agents;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To verify your documentation submitted to us facilitate your onboarding with us as a seller on the Site, including the testing of technologies to enable faster and more efficient onboarding;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To administer your account (if any) with us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To display your name, username or profile on the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To verify and carry out financial transactions (including any credit card payments, bank transfers, offline payments, remittances, or e-wallet transactions) in relation to payments related to you and\\/or Services used by you. In order to verify and carry out such payment transactions, payment information, which may include personal data, will be transferred to third parties such as our payment service providers;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To assess your application for loan facilities and\\/or to perform credit risk assessments in relation to your application for seller financing (where applicable);<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To provide you with ancillary logistics services to protect against risks of failed deliveries or customer returns; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To facilitate the return of products to you (which may be through our logistics partner).<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Marketing and advertising\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To send you marketing or promotional materials about our or third-party sellers&rsquo; products and services on our Site from time to time (provided you have opted to receive such information); and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To help us conduct marketing and advertising.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Legal and operational purposes\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To produce statistics and research for internal and statutory reporting and\\/or record-keeping requirements;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To store, host, back up your personal data;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To prevent or investigate any actual or suspected violations of our Terms of Use, Privacy Policy, fraud, unlawful activity, omission or misconduct, whether relating to your use of our Services or any other matter arising from your relationship with us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To comply with legal and regulatory requirements (including, where applicable, the display of your name, contact details and company details), including any law enforcement requests, in connection with any legal proceedings or otherwise deemed necessary by us;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Where necessary to prevent a threat to life, health or safety;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To process any complaints, feedback, enforcement action and take-down requests in relation to any content you have uploaded to the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To compare information, and verify with third parties in order to ensure that the information is accurate;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To ascertain your identity in connection with fraud detection purposes; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To facilitate the takedown of prohibited and controlled items from our Site.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Analytics, research, business and development\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To audit the downloading of data from the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To understand the user experience with the Services and the Site;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To improve the layout or content of the pages of the Site and customise them for users;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To conduct surveys, including carrying out research on our users&rsquo; demographics and behaviour to improve our current technology (e.g. voice recognition tech, etc) via machine learning or other means;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To derive further attributes relating to you based on personal data provided by you (whether to us or third parties), in order to provide you with more targeted and\\/or relevant information;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To conduct data analysis, testing and research, monitoring and analysing usage and activity trends;<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To further develop our products and services; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To know our sellers better.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>Other\\\\n\\r\\n\\t\\t\\t\\t<ol>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Any other purpose to which your consent has been obtained; and<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>To conduct automated decision-making processes in accordance with any of these purposes.<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<\\/ol>\\r\\n\\t\\t\\t\\\\n<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<\\/ol>\\r\\n\\t\\t\\\\n<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>Further, we will use the information you provide to administer your account with us; verify and carry out financial transactions in relation to payments you make; audit the downloading of data from our website; improve the layout and\\/or content of the pages of our website and customize them for users; identify visitors on our website; carry out research on our users&#39; demographics; send you information we think you may find useful or which you have requested from us, including information about our products and services, provided you have indicated that you have not objected to being contacted for these purposes.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>Subject to obtaining your consent we may contact you by email with details of other products and services. You may unsubscribe from receiving marketing information at any time in our mobile application settings or by using the unsubscribe function within the electronic marketing material. We may use your contact information to send newsletters from us and from our related companies. If you prefer not to receive any marketing communications from us, you can opt out at any time.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may pass your name and address on to a third party in order to make delivery of the product to you (for example to our courier or supplier). You must only submit to us the Site information which is accurate and not misleading and you must keep it up to date and are responsible for informing us of changes to your personal data, or in the event you believe that the personal data we have about you is inaccurate, incomplete, misleading or out of date.inform us of changes. You can update your personal data anytime by accessing your account on the Site.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>Your actual order details may be stored with us but for security reasons cannot be retrieved directly by us. However, you may access this information by logging into your account on the Site. Here you can view the details of your orders that have been completed, those which are open and those which are shortly to be dispatched and administer your address details, bank details ( for refund purposes) and any newsletter to which you may have subscribed. You undertake to treat the personal access data confidentially and not make it available to unauthorized third parties. We cannot assume any liability for misuse of passwords unless this misuse is our fault.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Other uses of your Personal Information\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may use your personal information for opinion and market research. Your details are anonymous and will only be used for statistical purposes. You can choose to opt out of this at any time. Any answers to surveys or opinion polls we may ask you to complete will not be forwarded on to third parties. Disclosing your email address is only necessary if you would like to take part in competitions. We save the answers to our surveys separately from your email address.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may also send you other information about us, the Site, our other websites, our products, sales promotions, our newsletters, anything relating to other companies in our group or our business partners. If you would prefer not to receive any of this additional information as detailed in this paragraph (or any part of it) please click the &#39;unsubscribe&#39; link in any email that we send to you. Within 7 working days (days which are neither (i) a Sunday, nor (ii) a public holiday anywhere in Bangladesh) of receipt of your instruction we will cease to send you information as requested. If your instruction is unclear we will contact you for clarification.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may further anonymize data about users of the Site generally and use it for various purposes, including ascertaining the general location of the users and usage of certain aspects of the Site or a link contained in an email to those registered to receive them, and supplying that anonymized data to third parties such as publishers. However, that anonymized data will not be capable of identifying you personally.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Competitions\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>For any competition we use the data to notify winners and advertise our offers. You can find more details where applicable in our participation terms for the respective competition.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Third Parties and Links\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may pass your details to other companies in our group. We may also pass your details to our agents and subcontractors to help us with any of our uses of your data set out in our Privacy Policy. For example, we may use third parties to assist us with delivering products to you, to help us to collect payments from you, to analyze data and to provide us with marketing or customer service assistance. We may also exchange information with third parties for the purposes of fraud protection and credit risk reduction.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may share (or permit the sharing of) your personal data with and\\/or transfer your personal data to third parties and\\/or our affiliates for the above-mentioned purposes. These third parties and affiliates, which may be located inside or outside your jurisdiction, include but are not limited to:\\\\n\\r\\n\\t\\t<ol>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>Service providers (such as agents, vendors, contractors and partners) in areas such as payment services, logistics and shipping, marketing, data analytics, market or consumer research, survey, social media, customer service, installation services, information technology and website hosting;<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>Their service providers and related companies; and<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t\\t<li>Other users of the Site.<\\/li>\\r\\n\\t\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<\\/ol>\\r\\n\\t\\t\\\\n<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may transfer our databases containing your personal information if we sell our business or part of it, provided that we satisfy the requirements of applicable data protection law when disclosing your personal data. Other than as set out in this Privacy Policy, we shall NOT sell or disclose your personal data to third parties without obtaining your prior consent unless this is necessary for the purposes set out in this Privacy Policy or unless we are required to do so by law. The Site may contain advertising of third parties and links to other sites or frames of other sites. Please be aware that we are not responsible for the privacy practices or content of those third parties or other sites, nor for any third party to whom we transfer your data in accordance with our Privacy Policy. You are advised to check on the applicable privacy policies of those websites to determine how they will handle any information they collect from you.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>In disclosing your personal data to third parties, we endeavor to ensure that the third parties and our affiliates keep your personal data secure from unauthorized access, collection, use, disclosure, processing or similar risks and retain your personal data only for as long as your personal data helps with any of the uses of your data as set out in our Privacy Policy.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may transfer or permit the transfer of your personal data outside of Bangladesh for any of the purposes set out in this Privacy Policy. However, we will not transfer or permit any of your personal data to be transferred outside of Bangladesh unless the transfer is in compliance with applicable laws and this Privacy Policy.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We may share your personal data with our third party service providers or affiliates (e.g. payment service providers) in order for them to offer services to you other than those related to your use of the Site. Your acceptance and use of the third party service provider&rsquo;s or our affiliate&rsquo;s services shall be subject to terms and conditions as may be agreed between you and the third party service provider or our affiliate. Upon your acceptance of the third party service provider&rsquo;s or our affiliate&rsquo;s service offering, the collection, use, disclosure, storage, transfer and processing of your data (including your personal data and any data disclosed by us to such third party service provider or affiliate) shall be subject to the applicable privacy policy of the third party service provider or our affiliate, which shall be the data controller of such data. You agree that any queries or complaints relating to your acceptance or use of the third party service provider&rsquo;s or our affiliate&rsquo;s services shall be directed to the party named in the applicable privacy policy.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Cookies\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We or our authorised service providers may use cookies, web beacons, and other similar technologies in connection with your use of the Site.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>The acceptance of cookies is not a requirement for visiting the Site. However, we would like to point out that the use of the &#39;basket&#39; functionality on the Site and ordering is only possible with the activation of cookies. Cookies are small text files (typically made up of letters and numbers) placed in the memory of your browser or device when you visit a website or view a message. They allow us to recognise a particular device or browser. Web beacons are small graphic images that may be included on the Site. They allow us to count users who have viewed these pages so that we can better understand your preference and interests. Cookies are tiny text files which identify your computer to our server as a unique user when you visit certain pages on the Site and they are stored by your Internet browser on your computer&#39;s hard drive. Cookies can be used to recognize your Internet Protocol address, saving you time while you are on, or want to enter, the Site. We only use cookies for your convenience in using the Site (for example to remember who you are when you want to amend your shopping cart without having to re-enter your email address) and not for obtaining or using any other information about you (for example targeted advertising). However, certain cookies are required to enable core functionality (such as adding items to your shopping basket), so please note that changing and deleting cookies may affect the functionality available on the Sit. Your browser can be set to not accept cookies, but this would restrict your use of the Site. Please accept our assurance that our use of cookies does not contain any personal or private details and are free from viruses. If you want to find out more information about cookies, go to&nbsp;<a href=\\\"%5C%22https:\\/\\/www.allaboutcookies.org\\/%5C%22\\\" target=\\\"\\\\\\\">all-about-cookies<\\/a> or to find out about removing them from your browser, go to&nbsp;<a href=\\\"%5C%22https:\\/\\/www.allaboutcookies.org\\/manage-cookies\\/index.html%5C%22\\\" target=\\\"\\\\\\\">here<\\/a>.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>This website uses Google Analytics, a web analytics service provided by Google, Inc. (\\\\&quot;Google\\\\&quot;). Google Analytics uses cookies, which are text files placed on your computer, to help the website analyze how users use the site. The information generated by the cookie about your use of the website (including your IP address) will be transmitted to and stored by Google on servers in the United States. Google will use this information for the purpose of evaluating your use of the website, compiling reports on website activity for website operators and providing other services relating to website activity and internet usage. Google may also transfer this information to third parties where required to do so by law, or where such third parties process the information on Google&#39;s behalf. Google will not associate your IP address with any other data held by Google. You may refuse the use of cookies by selecting the appropriate settings on your browser, however please note that if you do this you may not be able to use the full functionality of this website. By using this website, you consent to the processing of data about you by Google in the manner and for the purposes set out above.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Security\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We have in place appropriate technical and security measures to prevent unauthorized or unlawful access to or accidental loss of or destruction or damage to your information. When we collect data through the Site, we collect your personal details on a secure server. We use firewalls on our servers. Our security procedures mean that we may occasionally request proof of identity before we disclose personal information to you. You are responsible for protecting against unauthorized access to your password and to your computer.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>You should be aware, however, that no method of transmission over the Internet or method of electronic storage is completely secure. While security cannot be guaranteed, we strive to protect the security of your information and are constantly reviewing and enhancing our information security measures.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Your rights\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>If you are concerned about your data, you have the right to request access to the personal data which we may hold or process about you. You have the right to require us to correct any inaccuracies in your data free of charge. At any stage you also have the right to ask us to stop using your personal data for direct marketing purposes.<br \\/>\\r\\n\\t\\tWhere permitted by applicable data protection laws, we reserve the right to charge a reasonable administrative fee for retrieving your personal data records. If so, we will inform you of the fee before processing your request.<br \\/>\\r\\n\\t\\tYou may communicate the withdrawal of your consent to the continued use, disclosure, storing and\\/or processing of your personal data by contacting our customer services, subject to the conditions and\\/or limitations imposed by applicable laws or regulations. Please note that if you communicate your withdrawal of your consent to our use, disclosure, storing or processing of your personal data for the purposes and in the manner as stated above or exercise your other rights as available under applicable local laws, we may not be in a position to continue to provide the Services to you or perform any contract we have with you, and we will not be liable in the event that we do not continue to provide the Services to, or perform our contract with you. Our legal rights and remedies are expressly reserved in such an event.<br \\/>\\r\\n\\t\\t<br \\/>\\r\\n\\t\\tFurthermore, you also have the right to ask us to delete your data. If you would like to have your data deleted, fill out the&nbsp;<a href=\\\"%5C%22https:\\/\\/ai.alimebot.daraz.com.bd\\/intl\\/index.htm?from=0zKpjMUW7x&amp;attemptquery=account_deactivation_form%5C%22\\\">Account Deactivation\\/Deletion Request Form&nbsp;<\\/a>(&ldquo;Deletion Request&rdquo;) or email your request to&nbsp;<strong>customer.bd@care.daraz.com<\\/strong>. Once your request is received, we follow an internal deletion process to make sure that your data is safely removed in the next fifteen (15) working days. You&#39;ll be contacted for verification and your account will be deleted after necessary protocols are conformed to. Read more about the deletion process&nbsp;<a href=\\\"%5C%22https:\\/\\/helpcenter.daraz.com.bd\\/page\\/knowledge?pageId=40&amp;knowledge=1000005458%5C%22\\\">here<\\/a>.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Minors\\\\n\\r\\n\\t<ol>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We do not sell products to minors, i.e. individuals below the age of 18, on the Site and we do not knowingly collect any personal data relating to minors. You hereby confirm and warrant that you are above the age of 18 and are capable of understanding and accepting the terms of this Privacy Policy.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>If you allow a minor to access the Site and buy products from the Site by using your account, you hereby consent to the processing of the minor&rsquo;s personal data and accept and agree to be bound by this Privacy Policy and take responsibility for his or her actions.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li>We will not be responsible for any unauthorized use of your account on the Site by yourself, users who act on your behalf or any unauthorized users. It is your responsibility to make your own informed decisions about the use of the Site and take necessary steps to prevent any misuse of the Site.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ol>\\r\\n\\t\\\\n<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>&quot;<\\/p>\"', NULL, 'pages_setup', 'live', 0, '2022-08-06 03:54:38', '2022-10-04 11:10:03'),
('053c7a7b-75f0-4e01-9961-5e81fdd001f6', 'email_verification', '0', '0', 'service_setup', 'live', 1, '2022-07-21 11:59:22', '2024-09-04 21:33:38'),
('078c60ff-a05f-4386-88c4-9b48e98dc7dd', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 1, '2022-06-08 06:44:58', '2022-10-04 16:26:11'),
('08aa2f9f-e830-4190-87a0-1d57267ab023', 'booking_edit_service_quantity_increase', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('0a2e5ef2-4e4e-40b1-8ea6-9455a3549891', 'forget_password_verification_method', '\"email\"', '\"email\"', 'business_information', 'live', 1, '2023-05-29 16:22:38', '2023-05-29 16:22:38'),
('0b0ac068-a661-4e13-ab25-858b9f9bab9d', 'currency_code', '\"KWD\"', '\"KWD\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-05-09 20:05:56'),
('0c1bcdd4-d93e-4b4a-9ef9-4b5a15153bdb', 'bidding_post_validity', '\"365\"', '\"365\"', 'bidding_system', 'live', 1, '2023-08-30 13:09:23', '2024-09-28 11:34:26'),
('0d08217a-f52d-4ce2-a63c-88cd1445193f', 'provider_can_cancel_booking', '1', '1', 'provider_config', 'live', 1, '2022-07-20 06:04:17', '2024-10-01 09:52:58'),
('0e2d1635-6f80-4ea0-876b-11f09f16abb8', 'referral_earning', '{\"referral_earning_status\":\"1\",\"referral_earning_message\":\"Refferal Earning\"}', '{\"referral_earning_status\":\"1\",\"referral_earning_message\":\"Refferal Earning\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('0f993fad-b7ba-4fdc-b394-5c34fd37ed68', 'widthdraw_request_deny', '{\"widthdraw_request_deny_status\":\"1\",\"widthdraw_request_deny_message\":\"Withdraw Request Deny\"}', '{\"widthdraw_request_deny_status\":\"1\",\"widthdraw_request_deny_message\":\"Withdraw Request Deny\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('11c73e6c-f776-49f5-8857-f46fd08f5bcd', 'additional_charge_fee_amount', '\"50000000\"', '\"50000000\"', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2024-09-28 11:34:26'),
('11d4f10d-2881-4c7d-baa6-e00ff603bc4b', 'social_media', '[{\"id\":\"c96083cd-cbb0-415b-a215-b77da4c293c9\",\"media\":\"facebook\",\"link\":\"https:\\/\\/www.facebook.com\"},{\"id\":\"8cc641e5-019d-4760-b912-efa39d937635\",\"media\":\"instagram\",\"link\":\"https:\\/\\/www.instagram.com\"},{\"id\":\"0f104f7c-f0cb-4933-b35b-c04f829a682d\",\"media\":\"linkedin\",\"link\":\"https:\\/\\/www.linkedin.com\"},{\"id\":\"793d22b1-aa6a-48c3-a654-47dc799532a7\",\"media\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', '[{\"id\":\"c96083cd-cbb0-415b-a215-b77da4c293c9\",\"media\":\"facebook\",\"link\":\"https:\\/\\/www.facebook.com\"},{\"id\":\"8cc641e5-019d-4760-b912-efa39d937635\",\"media\":\"instagram\",\"link\":\"https:\\/\\/www.instagram.com\"},{\"id\":\"0f104f7c-f0cb-4933-b35b-c04f829a682d\",\"media\":\"linkedin\",\"link\":\"https:\\/\\/www.linkedin.com\"},{\"id\":\"793d22b1-aa6a-48c3-a654-47dc799532a7\",\"media\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"}]', 'landing_social_media', 'live', 0, '2023-08-30 19:27:38', '2023-08-30 19:28:46'),
('11dddc2e-2b89-4bcc-9d48-1d3071dc37d6', 'booking_complete', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('14290db3-1876-44a3-a70d-1410d753d673', 'campaign_cost_bearer', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"campaign\"}', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"campaign\"}', 'promotional_setup', 'live', 1, '2023-01-22 17:33:48', '2023-01-22 17:33:48'),
('14eaf75b-68f2-412b-8062-189cff9582cc', 'app_url_appstore', '\"\\/\"', '\"\\/\"', 'landing_button_and_links', 'live', 1, '2022-10-03 16:00:01', '2022-10-04 16:22:24'),
('16212625-a1cb-428e-b201-1975495a32cc', 'provider_self_registration', '0', '0', 'provider_config', 'live', 1, '2022-07-21 11:59:22', '2024-10-01 09:52:58'),
('16ee9973-8d7f-4984-9357-3490fdb8fe04', 'otp', '{\"otp_status\":\"1\",\"otp_message\":\"Confirmation OTP\"}', '{\"otp_status\":\"1\",\"otp_message\":\"Confirmation OTP\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('18ff5091-1416-4b68-8a11-4a4db54d94bc', 'rating_review', '{\"push_notification_rating_review\":\"1\",\"email_rating_review\":\"1\"}', '{\"push_notification_rating_review\":\"1\",\"email_rating_review\":\"1\"}', 'notification_settings', 'live', 1, '2022-06-06 12:41:28', '2022-08-16 07:43:35'),
('193e005b-a715-4f6f-97cc-2554377b1f28', 'app_url_playstore', '\"\\/\"', '\"\\/\"', 'landing_button_and_links', 'live', 1, '2022-10-03 16:00:01', '2022-10-04 16:22:24'),
('1acfd678-38f4-4aab-8431-7f066e8de7f2', 'phone_verification', '0', '0', 'service_setup', 'live', 1, '2023-05-29 16:22:38', '2023-05-29 16:22:38'),
('1bb8c72b-20b2-4b89-82d3-c2ead7cf0675', 'serviceman_can_edit_booking', '0', '0', 'serviceman_config', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('1bc292a4-4244-4eb2-8760-5c0bd4d5e236', 'default_commission', '\"20\"', '\"20\"', 'business_information', 'live', 1, '2022-08-18 09:14:58', '2022-08-24 02:53:43'),
('1c7e7c69-dd9d-4e7b-9379-b5314bb6ec58', 'testimonial', '[{\"id\":\"94f7a473-e9fb-48ec-8bd3-46a0229b3aef\",\"name\":\"Mike\",\"designation\":\"Designer\",\"review\":\"Thank you! That was very helpful! The Service men were very professionals & very caution about safety\",\"image\":\"2023-08-31-64ef36f7190ba.png\"}]', '[{\"id\":\"94f7a473-e9fb-48ec-8bd3-46a0229b3aef\",\"name\":\"Mike\",\"designation\":\"Designer\",\"review\":\"Thank you! That was very helpful! The Service men were very professionals & very caution about safety\",\"image\":\"2023-08-31-64ef36f7190ba.png\"}]', 'landing_testimonial', 'live', 1, '2022-10-03 16:54:42', '2023-08-30 19:33:13'),
('1cbe46a3-9f79-47e1-af47-0868c3da2727', 'booking_edit_service_quantity_decrease', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('1e8316f2-660a-44c5-b24c-97320ae212d0', 'booking_service_complete', '{\"booking_service_complete_status\":\"1\",\"booking_service_complete_message\":\"Booking Service successfully complete done\"}', '{\"booking_service_complete_status\":\"1\",\"booking_service_complete_message\":\"Booking Service successfully complete done\"}', 'notification_messages', 'live', 1, '2022-06-06 12:41:28', '2022-09-14 17:44:04'),
('26b9dcd8-b8cd-4cc0-9ab4-2705993c31a4', 'booking_cancel', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('27663114-d661-4eab-9eb5-6852bb3b7c7c', 'booking_edit_service_remove', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21');
INSERT INTO `business_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`) VALUES
('2b0ce7e1-ba62-437c-9f5b-cd9ccd12ea1d', 'booking_accepted', '{\"booking_accepted_status\":\"1\",\"booking_accepted_message\":\"Booking Accepted\"}', '{\"booking_accepted_status\":\"1\",\"booking_accepted_message\":\"Booking Accepted\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('2c0c6614-1990-4f6f-9c2d-c4481b8c18ff', 'service_complete_photo_evidence', '0', '0', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('2ccbfd6a-be81-464f-ba1a-5df92c5774c8', 'meta_description', '\"Powered By Empower Technology\"', '\"Powered By Empower Technology\"', 'landing_meta', 'live', 0, '2025-03-08 01:16:42', '2025-03-09 03:10:23'),
('2dd9ca52-ebd2-45b4-9d38-30a6a16b44ca', 'top_title', '\"Customer Statisfaciton is our main moto\"', '\"Customer Statisfaciton is our main moto\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('2dfa523c-65b0-478b-aa31-cf024151e8d9', 'serviceman_assign', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('303e1187-edf1-4e6c-9a0e-e5f57efe3013', 'booking_otp', '0', '0', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('30d0ed00-b027-45bb-aaee-ae5982e8c97b', 'add_to_fund_wallet', '0', '0', 'customer_config', 'live', 1, '2023-12-28 14:00:58', '2023-12-28 14:00:58'),
('31c5e759-3d31-4522-8ed7-2a067c623c68', 'booking_place', '{\"booking_place_status\":\"1\",\"booking_place_message\":\"Booking Service successfully placed\"}', '{\"booking_place_status\":\"1\",\"booking_place_message\":\"Booking Service successfully placed\"}', 'notification_messages', 'live', 1, '2022-06-06 12:41:28', '2022-10-04 16:23:49'),
('330878fe-66b8-4c86-b9f3-c69d7b7ab394', 'partial_payment', '0', '0', 'service_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('35fdbc13-5505-4f08-a480-9a7922fde375', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/url\\/return-senang-pay\",\"secret_key\":\"data\",\"merchant_id\":\"data\"}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/url\\/return-senang-pay\",\"secret_key\":\"data\",\"merchant_id\":\"data\"}', 'payment_config', 'live', 0, '2022-06-09 07:21:16', '2022-10-04 16:28:53'),
('382abfc4-4742-4080-9f17-350bbc57d813', 'booking_cancel', '{\"booking_cancel_status\":\"0\",\"booking_cancel_message\":\"Booking Cancel Successfully\"}', '{\"booking_cancel_status\":\"0\",\"booking_cancel_message\":\"Booking Cancel Successfully\"}', 'notification_messages', 'live', 0, '2022-06-06 12:41:28', '2022-09-14 20:11:36'),
('3a9cf40c-c7ec-481c-8a79-5f33b154a561', 'email_config', '{\"mailer_name\":\"mujadamy\",\"host\":\"mail.zinutech.com\",\"driver\":\"smtp\",\"port\":\"465\",\"user_name\":\"mujadamy@zinutech.com\",\"email_id\":\"mujadamy@zinutech.com\",\"encryption\":\"tls\",\"password\":\"_ke9ze&j8N-?\"}', '{\"mailer_name\":\"mujadamy\",\"host\":\"mail.zinutech.com\",\"driver\":\"smtp\",\"port\":\"465\",\"user_name\":\"mujadamy@zinutech.com\",\"email_id\":\"mujadamy@zinutech.com\",\"encryption\":\"tls\",\"password\":\"_ke9ze&j8N-?\"}', 'email_config', 'live', 1, '2022-06-07 12:32:47', '2024-09-05 00:45:16'),
('3b0b4644-9ba9-48e9-8622-59426198e3b9', 'time_zone', '\"Asia\\/Kuwait\"', '\"Asia\\/Kuwait\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-05 09:35:09'),
('3d51e47f-da99-4757-8392-4d6ab9e37fc3', 'refund', '{\"refund_status\":\"1\",\"refund_message\":\"Refund\"}', '{\"refund_status\":\"1\",\"refund_message\":\"Refund\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('3d8dfac5-f187-45ee-a3ba-17fa75224bab', 'booking_edit_service_quantity_increase', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('3dd386b8-066c-48c3-af22-f3f197347ea3', 'customer_wallet', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('3e0fe0fa-e697-437e-a0a9-9ff4316f4d39', 'about_us_description', '\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\"', '\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('3e1a01ef-ec49-40a7-93b1-a15499028e32', 'bidding_status', '0', '0', 'bidding_system', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('3e4c8b9f-28a2-4f72-b3b5-8b5808121dc8', 'recaptcha', '{\"party_name\":\"recaptcha\",\"status\":\"0\",\"site_key\":\"apikey\",\"secret_key\":\"apikey\"}', '{\"party_name\":\"recaptcha\",\"status\":\"0\",\"site_key\":\"apikey\",\"secret_key\":\"apikey\"}', 'third_party', 'live', 0, '2022-07-25 10:57:25', '2022-10-04 16:24:50'),
('4007291b-5078-42ba-9051-fe9c991b9b2f', 'mid_title', '\"SERVICE WE PROVIDE FOR YOU\"', '\"SERVICE WE PROVIDE FOR YOU\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('43c89209-172b-47a1-851a-efb90f848aa0', 'top_image_1', '\"2025-03-09-67ccc56d35e11.png\"', '\"2025-03-09-67ccc56d35e11.png\"', 'landing_images', 'live', 0, '2022-10-03 16:06:10', '2025-03-09 01:32:13'),
('45721749-c637-498c-ad0b-5d369a2d6425', 'cookies_text', '\"lorem ipsum dollar\"', '\"lorem ipsum dollar\"', 'business_information', 'live', 1, '2023-02-23 00:25:16', '2023-08-30 19:38:59'),
('47817d69-8ec9-4730-b81f-838c4fc9d533', 'top_image_3', '\"2025-03-09-67ccc581a09f6.png\"', '\"2025-03-09-67ccc581a09f6.png\"', 'landing_images', 'live', 0, '2022-10-03 16:06:15', '2025-03-09 01:32:33'),
('47cbf32d-06bf-40ae-980c-3053e7f1a4ad', 'ongoing_booking', '{\"ongoing_booking_status\":\"1\",\"ongoing_booking_message\":\"Ongoing Booking\"}', '{\"ongoing_booking_status\":\"1\",\"ongoing_booking_message\":\"Ongoing Booking\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('49146edb-2e7a-4280-ac19-de35c2f894f9', 'min_booking_amount', '\"0\"', '\"0\"', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2024-09-28 10:45:58'),
('49697d57-c686-4d30-9398-9c5533595b7f', 'provider_bid_request_denied', '{\"provider_bid_request_denied_status\":\"1\",\"provider_bid_request_denied_message\":\"Provider Bid Request Denied\"}', '{\"provider_bid_request_denied_status\":\"1\",\"provider_bid_request_denied_message\":\"Provider Bid Request Denied\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('4ad0c0ce-157c-46b2-b93d-261ca4f1a575', 'top_image_4', '\"2025-03-09-67ccc5981fd96.png\"', '\"2025-03-09-67ccc5981fd96.png\"', 'landing_images', 'live', 0, '2022-10-03 16:07:26', '2025-03-09 01:32:56'),
('4cdc5c2e-054d-485b-a906-f0c6032880db', 'subscription', '{\"push_notification_subscription\":\"1\",\"email_subscription\":\"1\"}', '{\"push_notification_subscription\":\"1\",\"email_subscription\":\"1\"}', 'notification_settings', 'live', 1, '2022-06-06 12:41:28', '2022-08-16 07:43:35'),
('4d69c64d-7956-4fd5-bdc0-59062152899d', 'max_booking_amount', '\"50000000\"', '\"50000000\"', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2024-09-28 11:34:26'),
('4dc4001c-2294-4ccf-8f02-8e6457cb260e', 'provider_suspend', '{\"provider_suspend_status\":\"1\",\"provider_suspend_message\":\"Provider Suspend\"}', '{\"provider_suspend_status\":\"1\",\"provider_suspend_message\":\"Provider Suspend\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('4dcb5aae-3a76-4754-b23a-286726a60d61', 'business_logo', '\"2024-09-05-66d8d46337a5e.png\"', '\"2024-09-05-66d8d46337a5e.png\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-04 23:42:59'),
('4ddd1410-e290-4e3f-a66c-ee70f86368db', 'bottom_title', '\"GET ALL UPDATES & EXCITING NEWS\"', '\"GET ALL UPDATES & EXCITING NEWS\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 16:14:45'),
('4e1af097-855e-43b8-ae10-0a0039039706', 'booking_accepted', '{\"booking_accepted_status\":\"0\",\"booking_accepted_message\":\"Booking Service successfully complete done\"}', '{\"booking_accepted_status\":\"0\",\"booking_accepted_message\":\"Booking Service successfully complete done\"}', 'notification_messages', 'live', 0, '2022-06-06 12:41:28', '2022-10-04 16:23:59'),
('4e6fda04-d5b3-4ddd-a086-3c6567346e5c', 'tnc_update', '{\"push_notification_tnc_update\":\"0\",\"email_tnc_update\":0}', '{\"push_notification_tnc_update\":\"0\",\"email_tnc_update\":0}', 'notification_settings', 'live', 1, '2022-06-06 12:41:28', '2022-10-04 16:23:28'),
('4e816e5e-ea8d-4d0e-bb57-5015c57be62a', 'system_language', '[{\"id\":1,\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"ar\",\"code\":\"ar\",\"direction\":\"rtl\",\"status\":1,\"default\":false}]', '[{\"id\":1,\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"ar\",\"code\":\"ar\",\"direction\":\"rtl\",\"status\":1,\"default\":false}]', 'business_information', 'live', 1, '2023-11-28 15:33:21', '2024-04-18 20:03:36'),
('514c7284-cab8-42a2-9f48-82e779d7afdd', 'direct_provider_booking', '\"0\"', '\"0\"', 'business_information', 'live', 1, '2023-08-30 19:38:42', '2023-08-30 19:38:42'),
('52123e13-f2de-40d3-9e3b-9460d2d5b70a', 'offline_payment', '0', '0', 'service_setup', 'live', 1, '2024-09-04 21:33:38', '2024-09-04 21:33:38'),
('539b1d42-0730-418d-83b0-46911e42cc39', 'privacy_policy', '\"\\\"<p>Test 12345<\\/p>\\\\n<p>testv asdfghjk test 12334 l;\' ok hyhyhyh dfgdgdgdg<\\/p>\\\"\"', NULL, 'pages_setup', 'live', 1, '2022-08-06 04:00:09', '2022-09-08 14:37:37'),
('54b42ef4-2f17-4424-aebc-7e5490b97557', 'bottom_description', '\"Subcribe to out newsletters to receive all the latest activty we provide for you\"', '\"Subcribe to out newsletters to receive all the latest activty we provide for you\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 16:14:45'),
('54b77f94-c818-41cc-afff-9200213a541f', 'booking_edit_service_remove', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('5675c00e-9686-4032-96f9-ce4631b9960a', 'speciality', '[{\"id\":\"c3392f65-51ea-460a-b503-41a6e986971e\",\"title\":\"Speciality\",\"description\":\"Speciality description\",\"image\":\"2023-08-31-64ef3bcbbeb55.png\"}]', '[{\"id\":\"c3392f65-51ea-460a-b503-41a6e986971e\",\"title\":\"Speciality\",\"description\":\"Speciality description\",\"image\":\"2023-08-31-64ef3bcbbeb55.png\"}]', 'landing_speciality', 'live', 1, '2022-10-03 18:13:41', '2023-08-30 19:53:45'),
('57b3d923-139a-430b-a7b8-2c0797110cfd', 'sms_verification', '1', '1', 'service_setup', 'live', 1, '2022-07-21 11:59:22', '2022-08-13 07:35:03'),
('59d855e6-06ad-487a-9ca1-bbd8d3db2dfa', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":\"1\",\"api_key\":\"data\",\"published_key\":\"data\"}', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":\"1\",\"api_key\":\"data\",\"published_key\":\"data\"}', 'payment_config', 'test', 1, '2022-06-09 05:41:48', '2022-10-04 16:28:57'),
('59f6e3d4-382f-47e6-b973-2c1cb2054016', 'digital_payment', '1', '1', 'service_setup', 'live', 1, '2023-05-29 16:22:38', '2023-05-29 16:22:38'),
('5d8972d5-ae9b-47cd-b76c-011923ea8e54', 'booking_edit_service_remove', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', '{\"booking_edit_service_remove_status\":\"1\",\"booking_edit_service_remove_message\":\"Booking Edit Service Remove\"}', 'serviceman_notification', 'live', 1, '2023-12-28 14:00:58', '2023-12-28 14:00:58'),
('5e470acd-7935-4394-ab56-008fdeb65029', 'third_party', '{\"party_name\":\"push_notification\",\"server_key\":\"56789fghjk\"}', '{\"party_name\":\"push_notification\",\"server_key\":\"56789fghjk\"}', 'third_party', 'live', 1, '2022-06-08 10:57:43', '2022-06-08 10:57:43'),
('6170b133-2556-4eb0-b5bf-3352566e5c83', 'booking_ongoing', '{\"booking_ongoing_status\":\"0\",\"booking_ongoing_message\":\"Booking Service successfully complete done\"}', '{\"booking_ongoing_status\":\"0\",\"booking_ongoing_message\":\"Booking Service successfully complete done\"}', 'notification_messages', 'live', 0, '2022-10-04 16:24:02', '2022-10-04 16:24:02'),
('65e9c5de-c37d-4dc8-bc6a-011784784176', 'partial_payment_combinator', '\"all\"', '\"all\"', 'service_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('668cdb3b-63a4-4ad4-ac35-407c811576b6', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"test\",\"status\":\"1\",\"secret_key\":\"data\",\"public_key\":\"data\",\"hash\":\"data\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"test\",\"status\":\"1\",\"secret_key\":\"data\",\"public_key\":\"data\",\"hash\":\"data\"}', 'payment_config', 'test', 1, '2022-09-03 08:47:46', '2022-10-04 16:29:07'),
('694b2b7f-24a9-43b7-abaa-f73736e5873d', 'serviceman_assign', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('698dadfe-91b6-4b1b-9799-c6620f4bb0dc', 'booking_edit_service_quantity_increase', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', '{\"booking_edit_service_quantity_increase_status\":\"1\",\"booking_edit_service_quantity_increase_message\":\"Booking Edit Service Quantity Increase\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('6a46c913-5d22-48bb-85ba-161defad284e', 'add_fund_wallet_bonus', '{\"add_fund_wallet_bonus_status\":\"1\",\"add_fund_wallet_bonus_message\":\"Add Fund Wallet Bonus\"}', '{\"add_fund_wallet_bonus_status\":\"1\",\"add_fund_wallet_bonus_message\":\"Add Fund Wallet Bonus\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('6b208b3b-b474-4010-ab1c-57a708ef1a0d', 'customer_notification_for_provider_bid_offer', '{\"customer_notification_for_provider_bid_offer_status\":\"1\",\"customer_notification_for_provider_bid_offer_message\":\"customer notification for provider bid offer\"}', '{\"customer_notification_for_provider_bid_offer_status\":\"1\",\"customer_notification_for_provider_bid_offer_message\":\"customer notification for provider bid offer\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('6d3c9600-0fd9-4ebe-a740-22c21c90f619', 'pp_update', '{\"push_notification_pp_update\":\"0\",\"email_pp_update\":0}', '{\"push_notification_pp_update\":\"0\",\"email_pp_update\":0}', 'notification_settings', 'live', 1, '2022-06-06 12:41:28', '2022-10-04 16:23:30'),
('6fcf21de-e1c8-4bd4-ab2c-dff708e79277', 'currency_symbol_position', '\"right\"', '\"right\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-05-09 20:05:56'),
('7014ab21-7c89-4f6f-9e63-05806292802f', 'customer_loyalty_point', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('73a38ec7-5b60-402f-a17b-6e308c1b3cf7', 'provider_can_edit_booking', '1', '1', 'provider_config', 'live', 1, '2023-08-30 13:09:23', '2024-10-01 09:52:58'),
('749dc8fa-b2f0-4236-a400-f52fe3b8193b', 'refund_policy', '\"\\\"<div class=\\\\\\\"clearfix\\\\\\\">\\\\n<h4>Test123456<\\/h4>\\\\n<h4>Issuance of Refunds<\\/h4>\\\\n<ul>\\\\n<li>1. The processing time of your refund depends on the type of refund and the payment method you used.<\\/li>\\\\n<li>2. The refund period \\/ process starts when Daraz has processed your refund according to your refund type.<\\/li>\\\\n<li>3. The refund amogunt covers the item price and shipping fee for your returned product.<\\/li>\\\\n<\\/ul>\\\\n<\\/div>\\\\n<div class=\\\\\\\"clearfix\\\\\\\">\\\\n<h4>Refund Types<\\/h4>\\\\n<p>Daraz will process your refund according to the following refund types<\\/p>\\\\n<ul>\\\\n<li>1. Refund from returns - Refund is processed once your item is returned to the warehouse and QC is completed (successful). To learn how to return an item, read our Return Policy.<\\/li>\\\\n<li>2. Refunds from cancelled orders - Refund is automatically triggered once cancelation is successfully processed.<\\/li>\\\\n<li>3. Refunds from failed deliveries - Refund process starts when the item has reached the seller. Please take note that this may take more time depending on the area of your shipping address. Screen reader support enabled.<\\/li>\\\\n<\\/ul>\\\\n<\\/div>\\\\n<div class=\\\\\\\"panel-group\\\\\\\">\\\\n<div class=\\\\\\\"panel panel-default\\\\\\\">\\\\n<table class=\\\\\\\"table table-bordered\\\\\\\">\\\\n<tbody>\\\\n<tr>\\\\n<th class=\\\\\\\"th\\\\\\\">Payment Method<\\/th>\\\\n<th class=\\\\\\\"th\\\\\\\">Refund Option<\\/th>\\\\n<th class=\\\\\\\"th\\\\\\\">Refund Time<\\/th>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Debit or Credit Card<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Debit or Credit Card Payment Reversal<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>10 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Equated Monthly Installments<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Debit or Credit Card<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>10 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Rocket (Wallet DBBL)<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Mobile Wallet Reversal \\/ Rocket<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>7 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>DBBL Nexus (Online Banking)<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Card Payment Reversal (Nexus)<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>7 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>bKash<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Mobile Wallet Reversal \\/ bKash<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>5 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td rowspan=\\\\\\\"2\\\\\\\" width=\\\\\\\"208\\\\\\\">\\\\n<p>Cash on Delivery (COD)<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Bank Deposit<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>5 working days<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td>\\\\n<p>Daraz Refund Voucher<\\/p>\\\\n<\\/td>\\\\n<td>\\\\n<p>1 working day<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Daraz Voucher<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Refund Voucher<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>1 working day<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<\\/tbody>\\\\n<\\/table>\\\\n<\\/div>\\\\n<p><strong>Note:<\\/strong>&nbsp;Maximum refund timeline excludes weekends and public holidays.<\\/p>\\\\n<div class=\\\\\\\"panel-group\\\\\\\">\\\\n<div class=\\\\\\\"panel panel-default\\\\\\\">\\\\n<table class=\\\\\\\"table table-bordered\\\\\\\">\\\\n<tbody>\\\\n<tr>\\\\n<th class=\\\\\\\"th\\\\\\\">Modes of Refund<\\/th>\\\\n<th class=\\\\\\\"th\\\\\\\">Description<\\/th>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Bank Deposit<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"416\\\\\\\" data-spm-anchor-id=\\\\\\\"a2a0e.11887082.4745536990.i2.6b6b18ceSYU3Um\\\\\\\">\\\\n<p>The bank account details provided must be correct. The account must be active and should hold some balance.<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Debit Card or Credit Card<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"416\\\\\\\">\\\\n<p>If the refunded amount is not reflecting in your card statement after the refund is completed and you have received a notification by Daraz, please contact your personal bank.<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>bKash \\/ Rocket Mobile Wallet<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"416\\\\\\\" data-spm-anchor-id=\\\\\\\"a2a0e.11887082.4745536990.i1.6b6b18ceSYU3Um\\\\\\\">\\\\n<p>Similar to bank deposit, the amount will be refunded to the same mobile account details which you inserted at the time of payment.<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<tr>\\\\n<td width=\\\\\\\"208\\\\\\\">\\\\n<p>Refund Voucher<\\/p>\\\\n<\\/td>\\\\n<td width=\\\\\\\"416\\\\\\\" data-spm-anchor-id=\\\\\\\"a2a0e.11887082.4745536990.i4.6b6b18ceSYU3Um\\\\\\\">\\\\n<p>Vouchers will be sent to the customer registered email ID on Daraz and can be redeemed against the same email ID.<\\/p>\\\\n<\\/td>\\\\n<\\/tr>\\\\n<\\/tbody>\\\\n<\\/table>\\\\n<\\/div>\\\\n<p><strong>Important Note:&nbsp;<\\/strong>The Voucher discount code can only be applied once. The leftover amount will not be refunded or used for next purchase even if the value of order is smaller than voucher value<\\/p>\\\\n<\\/div>\\\\n<\\/div>\\\"\"', NULL, 'pages_setup', 'live', 1, '2022-08-06 04:02:38', '2022-09-08 14:37:27'),
('790b2df0-f099-48b2-999e-b74d48a2fe07', 'ongoing_booking', '{\"ongoing_booking_status\":\"1\",\"ongoing_booking_message\":\"Ongoing Booking\"}', '{\"ongoing_booking_status\":\"1\",\"ongoing_booking_message\":\"Ongoing Booking\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('7a2d5afd-8957-41c2-8269-14cdce19f432', 'privacy_and_policy_update', '{\"privacy_and_policy_update_status\":\"1\",\"privacy_and_policy_update_message\":\"Privacy And Policy Update\"}', '{\"privacy_and_policy_update_status\":\"1\",\"privacy_and_policy_update_message\":\"Privacy And Policy Update\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('7a834fe4-6d3e-48c9-a707-aa8f4e849375', 'header_background', '\"#ebebeb\"', '\"#ebebeb\"', 'landing_background', 'live', 0, '2023-08-30 19:23:47', '2025-03-06 03:50:34'),
('7f266d17-6867-499f-bad6-9a8b55ab3ff1', 'order', '{\"push_notification_order\":\"1\",\"email_order\":\"1\"}', '{\"push_notification_order\":\"1\",\"email_order\":\"1\"}', 'notification_settings', 'live', 1, '2022-06-06 12:41:28', '2022-07-23 07:08:34'),
('7fe3d581-d7c3-46e1-b804-c97efefcfeba', 'suspend_on_exceed_cash_limit_provider', '0', '0', 'provider_config', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('815f1823-9a67-4248-a62c-17eed4388745', 'service_request_deny', '{\"service_request_deny_status\":\"1\",\"service_request_deny_message\":\"Service Request Reject\"}', '{\"service_request_deny_status\":\"1\",\"service_request_deny_message\":\"Service Request Reject\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('81fa30e8-24d5-485b-90fc-a4995718b91e', 'footer_background', '\"#5c5c5c\"', '\"#5c5c5c\"', 'landing_background', 'live', 0, '2023-08-30 19:23:47', '2025-03-06 03:51:48'),
('848492c2-b2c9-4fed-b486-77db4ff141ae', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, '2022-06-08 09:06:49', '2022-10-04 16:26:16'),
('85dc4d4a-d25c-492f-b030-17723bcbf95b', 'booking_place', '{\"booking_place_status\":\"1\",\"booking_place_message\":\"Booking Place\"}', '{\"booking_place_status\":\"1\",\"booking_place_message\":\"Booking Place\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('873986dd-541b-4648-bd32-edac7504143e', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_secret\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_secret\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, '2022-06-08 07:19:18', '2022-10-04 16:26:27'),
('89d237b1-861e-4066-9cb6-c9adfd672726', 'schedule_booking', '1', '1', 'service_setup', 'live', 1, '2022-07-20 06:04:14', '2022-08-13 07:35:03'),
('8b54c4f2-f6f3-4423-aa95-23f76e6edbdb', 'support_section_image', '\"2025-03-06-67c8f8d4bc453.png\"', '\"2025-03-06-67c8f8d4bc453.png\"', 'landing_web_app_image', 'live', 0, '2025-03-06 04:21:54', '2025-03-06 04:22:28'),
('8c296af0-65c5-43f9-aa4a-854cbbf19148', 'pagination_limit', '\"20\"', '\"20\"', 'business_information', 'live', 1, '2022-09-05 10:06:02', '2022-10-04 16:21:24'),
('8d6b0e16-f753-4833-8f79-7d049a50deb7', 'registration_description', '\"Become e provider & Start your own business online with on demand service platform\"', '\"Become e provider & Start your own business online with on demand service platform\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('8dddf0eb-2021-4d16-9d84-687603f71285', 'coupon_cost_bearer', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"coupon\"}', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"coupon\"}', 'promotional_setup', 'live', 1, '2023-01-22 17:33:48', '2023-01-22 17:33:48'),
('8e6dfa1d-1b51-456e-a35a-ae58eb81baee', 'additional_charge_label_name', '\"50000000\"', '\"50000000\"', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2024-09-28 11:34:26'),
('8fa88ebf-5aac-4ea5-b87d-aff994f77d0e', 'provider_self_delete', '1', '1', 'provider_config', 'live', 1, '2023-11-28 15:33:20', '2023-11-28 15:33:20'),
('92043fa7-f54f-4733-9dbf-3719970a5b62', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"1\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"1\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', 'payment_config', 'test', 1, '2022-06-09 07:21:49', '2022-10-04 16:29:15'),
('925c9c9e-d2a4-41bc-b9d2-ff16fed80ce3', 'body_background', '\"#fcfcfc\"', '\"#fcfcfc\"', 'landing_background', 'live', 0, '2023-08-30 19:23:47', '2023-08-30 19:25:22'),
('9288358a-cab7-4c5c-b342-75b7ab17c29a', 'business_phone', '\"+965000000\"', '\"+965000000\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-05 09:16:22'),
('92ba62c6-17e3-4f30-a99b-0ee6dfe46628', 'booking_edit_service_quantity_decrease', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('93670ab4-e54d-46ea-a8ed-101cb968208e', 'about_us_title', '\"WHO WE ARE\"', '\"WHO WE ARE\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('94f715e7-164d-4e05-bb64-e3547d94a5e4', 'business_address', '\"Kuwait\"', '\"Kuwait\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-05 09:30:49'),
('973e0fe3-b6ff-4156-aa9a-78e52e069527', 'booking', '{\"push_notification_booking\":\"0\",\"email_booking\":0}', '{\"push_notification_booking\":\"0\",\"email_booking\":0}', 'notification_settings', 'live', 1, '2022-07-28 04:31:15', '2022-10-04 16:23:32'),
('98a973f9-0ec8-4fe5-b31d-d04c045bab41', 'referral_value_per_currency_unit', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('98e2f206-5314-4fc6-9625-95568bbc2771', 'serviceman_can_cancel_booking', '0', '0', 'serviceman_config', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('9a961fd3-b032-4260-a9dd-93ad7c0b76b8', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":\"1\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_email\":\"data\"}', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":\"1\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_email\":\"data\"}', 'payment_config', 'test', 1, '2022-06-09 06:12:45', '2022-10-04 16:29:25'),
('9ec59242-4fd2-4f54-898c-4b4c60270ecd', 'business_favicon', '\"2024-09-05-66d8d46333fd9.png\"', '\"2024-09-05-66d8d46333fd9.png\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-04 23:42:59'),
('9f9f1855-6566-49d4-8ca8-f033a8a2c107', 'add_fund_wallet', '{\"add_fund_wallet_status\":\"1\",\"add_fund_wallet_message\":\"Add Fund Wallet\"}', '{\"add_fund_wallet_status\":\"1\",\"add_fund_wallet_message\":\"Add Fund Wallet\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('9ff4b51f-0edd-4a33-ab15-bc79f7542ecd', 'about_us', '\"<p>hello world hero greatth weh fvaaafawefdsdsdsd<\\/p>\"', NULL, 'pages_setup', 'live', 1, '2022-08-04 13:04:19', '2022-10-04 11:57:25'),
('a0910af1-fee3-4527-957b-e46b40ad5ed2', 'bid_offers_visibility_for_providers', '0', '0', 'bidding_system', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('a1c3342f-e644-4047-89b4-1a9676fda5c3', 'meta_title', '\"ALMUJADAMY\"', '\"ALMUJADAMY\"', 'landing_meta', 'live', 0, '2025-03-08 01:16:42', '2025-03-09 03:10:23'),
('a38599a7-fb8f-4f3c-a955-b975cdd8fae5', 'customer_referral_earning', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('a6cd4791-0276-4fa4-b2a1-13d3d5a8f232', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, '2022-06-08 07:03:02', '2022-10-04 16:26:39'),
('a8c1f49a-be3b-4609-8242-37142ff05acd', 'currency_decimal_point', '\"2\"', '\"2\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2022-10-04 16:21:24'),
('a9c93141-a7c9-473b-ac46-b3dadc7b067f', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"api_secret\":\"data\"}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"1\",\"api_key\":\"data\",\"api_secret\":\"data\"}', 'payment_config', 'live', 1, '2022-06-09 07:46:29', '2022-10-04 16:29:32'),
('ab04b341-d3ae-4c45-9e35-813dd01f22b6', 'max_cash_in_hand_limit_provider', '\"0\"', '\"0\"', 'provider_config', 'live', 1, '2023-11-28 15:33:21', '2024-10-01 09:52:58'),
('adb3fb5e-50d5-4769-8d66-5cb6389528cc', 'meta_image', '\"2025-03-08-67cb704a3d221.png\"', '\"2025-03-08-67cb704a3d221.png\"', 'landing_meta', 'live', 0, '2025-03-08 01:16:42', '2025-03-08 01:16:42'),
('ae03b974-b953-4c6d-98c4-6eb0f231d16d', 'customized_booking_request_delete', '{\"customized_booking_request_delete_status\":\"1\",\"customized_booking_request_delete_message\":\"Customized Booking Request Delete\"}', '{\"customized_booking_request_delete_status\":\"1\",\"customized_booking_request_delete_message\":\"Customized Booking Request Delete\"}', 'customer_notification', 'live', 1, '2024-03-13 09:19:39', '2024-03-13 09:19:39'),
('af729332-d8ec-4822-854a-5f54e10a9061', 'sslcommerz', '{\"gateway\":\"sslcommerz\",\"mode\":\"test\",\"status\":\"1\",\"store_id\":\"data\",\"store_password\":\"data\"}', '{\"gateway\":\"sslcommerz\",\"mode\":\"test\",\"status\":\"1\",\"store_id\":\"data\",\"store_password\":\"data\"}', 'payment_config', 'test', 1, '2022-06-09 03:19:38', '2022-10-04 16:29:39'),
('afba0ef3-7b60-4638-b2c0-2dac02f2119e', 'booking_schedule_time_change', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking schedule time change\"}', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking schedule time change\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('aff0213c-bcb2-42e0-98bb-295262683ccf', 'booking_edit_service_add', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('b004a67d-df30-4a85-9ec0-54774cc2e616', 'min_loyalty_point_to_transfer', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('b0bf5be1-183a-4dbe-86f6-bd3ff2b9c68a', 'push_notification', '{\"party_name\":\"push_notification\",\"server_key\":\"apikey\"}', '{\"party_name\":\"push_notification\",\"server_key\":\"apikey\"}', 'third_party', 'live', 0, '2022-07-16 04:56:01', '2022-10-04 16:24:43'),
('b7c775d0-4b90-464a-8aef-275d926edaeb', '', '\"def.png\"', '\"def.png\"', 'landing_images', 'live', 0, '2025-03-06 01:49:32', '2025-03-06 01:49:32'),
('b9525ca3-9c9e-432c-a2bb-a9f41c8a6b68', 'time_format', '\"12\"', '\"12\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-03-26 13:12:21'),
('ba08f7c0-a233-43f5-a801-cd727e3e7de9', 'admin_order_notification', '1', '1', 'service_setup', 'live', 1, '2022-07-20 06:04:23', '2022-08-13 07:35:03'),
('bbfd087c-eaa5-4868-8a69-3be87720ae86', 'top_description', '\"LARGEST BOOKING SERVICE PLATEFORM\"', '\"LARGEST BOOKING SERVICE PLATEFORM\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('bc4ed6e1-2c7e-4c95-8c7f-fe547a317c1e', 'about_us_image', '\"2025-03-09-67ccd96bdb628.png\"', '\"2025-03-09-67ccd96bdb628.png\"', 'landing_images', 'live', 0, '2022-10-03 17:37:45', '2025-03-09 02:57:31'),
('bd122993-e4d6-427a-be42-713b3e9612a3', 'booking_cancel', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('bde4ffab-e63d-435d-8854-46e4cfa49daf', 'booking_edit_service_add', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('be927e91-0b1f-44b1-9ad8-73022910f717', 'new_service_request_arrived', '{\"new_service_request_arrived_status\":\"1\",\"new_service_request_arrived_message\":\"New Service Request Arrived\"}', '{\"new_service_request_arrived_status\":\"1\",\"new_service_request_arrived_message\":\"New Service Request Arrived\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('bf085f4a-1f5d-4ff2-b4de-2038ef70ad79', 'serviceman_assign', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', '{\"serviceman_assign_status\":\"1\",\"serviceman_assign_message\":\"Serviceman Assign\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('bf12c77c-5274-408c-aa5f-f056db9ac3b8', 'provider_suspension_remove', '{\"provider_suspension_remove_status\":\"1\",\"provider_suspension_remove_message\":\"Provider Suspension removed\"}', '{\"provider_suspension_remove_status\":\"1\",\"provider_suspension_remove_message\":\"Provider Suspension removed\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('bf2b55c8-3ba0-4087-97b9-af101a5258d1', 'guest_checkout', '0', '0', 'service_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23');
INSERT INTO `business_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`) VALUES
('c58ecce7-598f-4568-aa15-d875dfa12232', 'terms_and_conditions', '\"<p>&quot;<\\/p>\\r\\n\\r\\n<p>\\\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>1. INTRODUCTION<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>test12345655<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>terms and condition<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Welcome to Daraz.com.bd also hereby known as &ldquo;we\\\\&quot;, \\\\&quot;us\\\\&quot; or \\\\&quot;Daraz\\\\&quot;. We are an online marketplace and these are the terms and conditions governing your access and use of Daraz along with its related sub-domains, sites, mobile app, services and tools (the \\\\&quot;Site\\\\&quot;). By using the Site, you hereby accept these terms and conditions (including the linked information herein) and represent that you agree to comply with these terms and conditions (the \\\\&quot;User Agreement\\\\&quot;). This User Agreement is deemed effective upon your use of the Site which signifies your acceptance of these terms. If you do not agree to be bound by this User Agreement please do not access, register with or use this Site. This Site is owned and operated by&nbsp;<strong>Daraz Bangladesh Limited, a company incorporated under the Companies Act, 1994, (Registration Number: 117773\\/14).<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nThe Site reserves the right to change, modify, add, or remove portions of these Terms and Conditions at any time without any prior notification. Changes will be effective when posted on the Site with no other notice provided. Please check these Terms and Conditions regularly for updates. Your continued use of the Site following the posting of changes to Terms and Conditions of use constitutes your acceptance of those changes.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>2. CONDITIONS OF USE<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>A. YOUR ACCOUNT<\\/p>\\r\\n\\r\\n<p>\\\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and\\/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or by reason of such request or invalidation.<br \\/>\\r\\n<br \\/>\\r\\nYou are responsible for maintaining the confidentiality of your user identification, password, account details and related private information. You agree to accept this responsibility and ensure your account and its related details are maintained securely at all times and all necessary steps are taken to prevent misuse of your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner. You agree and acknowledge that any use of the Site and related services offered and\\/or any access to private information, data or communications using your account and password shall be deemed to be either performed by you or authorized by you as the case may be. You agree to be bound by any access of the Site and\\/or use of any services offered by the Site (whether such access or use are authorized by you or not). You agree that we shall be entitled (but not obliged) to act upon, rely on or hold you solely responsible and liable in respect thereof as if the same were carried out or transmitted by you. You further agree and acknowledge that you shall be bound by and agree to fully indemnify us against any and all losses arising from the use of or access to the Site through your account.<br \\/>\\r\\n<br \\/>\\r\\nPlease ensure that the details you provide us with are correct and complete at all times. You are obligated to update details about your account in real time by accessing your account online. For pieces of information you are not able to update by accessing Your Account on the Site, you must inform us via our customer service communication channels to assist you with these changes. We reserve the right to refuse access to the Site, terminate accounts, remove or edit content at any time without prior notice to you. We may at any time in our sole and absolute discretion, request that you update your Personal Data or forthwith invalidate the account or related details without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by or caused by you or arising out of or in connection with or by reason of such request or invalidation. You hereby agree to change your password from time to time and to keep your account secure and also shall be responsible for the confidentiality of your account and liable for any disclosure or use (whether such use is authorised or not) of the username and\\/or password.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>B. PRIVACY<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Please review our Privacy Agreement, which also governs your visit to the Site. The personal information \\/ data provided to us by you or your use of the Site will be treated as strictly confidential, in accordance with the Privacy Agreement and applicable laws and regulations. If you object to your information being transferred or used in the manner specified in the Privacy Agreement, please do not use the Site.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>C. PLATFORM FOR COMMUNICATION<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You agree, understand and acknowledge that the Site is an online platform that enables you to purchase products listed at the price indicated therein at any time from any location using a payment method of your choice. You further agree and acknowledge that we are only a facilitator and cannot be a party to or control in any manner any transactions on the Site or on a payment gateway as made available to you by an independent service provider. Accordingly, the contract of sale of products on the Site shall be a strictly bipartite contract between you and the sellers on our Site while the payment processing occurs between you, the service provider and in case of prepayments with electronic cards your issuer bank. Accordingly, the contract of payment on the Site shall be strictly a bipartite contract between you and the service provider as listed on our Site.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>D. CONTINUED AVAILABILITY OF THE SITE<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We will do our utmost to ensure that access to the Site is consistently available and is uninterrupted and error-free. However, due to the nature of the Internet and the nature of the Site, this cannot be guaranteed. Additionally, your access to the Site may also be occasionally suspended or restricted to allow for repairs, maintenance, or the introduction of new facilities or services at any time without prior notice. We will attempt to limit the frequency and duration of any such suspension or restriction.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>E. LICENSE TO ACCESS THE SITE<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We require that by accessing the Site, you confirm that you can form legally binding contracts and therefore you confirm that you are at least 18 years of age or are accessing the Site under the supervision of a parent or legal guardian. We grant you a non-transferable, revocable and non-exclusive license to use the Site, in accordance with the Terms and Conditions described herein, for the purposes of shopping for personal items and services as listed to be sold on the Site. Commercial use or use on behalf of any third party is prohibited, except as explicitly permitted by us in advance. If you are registering as a business entity, you represent that you have the authority to bind that entity to this User Agreement and that you and the business entity will comply with all applicable laws relating to online trading. No person or business entity may register as a member of the Site more than once. Any breach of these Terms and Conditions shall result in the immediate revocation of the license granted in this paragraph without notice to you.<br \\/>\\r\\n<br \\/>\\r\\nContent provided on this Site is solely for informational purposes. Product representations including price, available stock, features, add-ons and any other details as expressed on this Site are the responsibility of the vendors displaying them and is not guaranteed as completely accurate by us. Submissions or opinions expressed on this Site are those of the individual(s) posting such content and may not reflect our opinions.<br \\/>\\r\\n<br \\/>\\r\\nWe grant you a limited license to access and make personal use of this Site, but not to download (excluding page caches) or modify the Site or any portion of it in any manner. This license does not include any resale or commercial use of this Site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of this Site or its contents; any downloading or copying of account information for the benefit of another seller; or any use of data mining, robots, or similar data gathering and extraction tools.<br \\/>\\r\\n<br \\/>\\r\\nThis Site or any portion of it (including but not limited to any copyrighted material, trademarks, or other proprietary information) may not be reproduced, duplicated, copied, sold, resold, visited, distributed or otherwise exploited for any commercial purpose without express written consent by us as may be applicable.<br \\/>\\r\\n<br \\/>\\r\\nYou may not frame or use framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) without our express written consent. You may not use any meta tags or any other text utilizing our name or trademark without our express written consent, as applicable. Any unauthorized use terminates the permission or license granted by us to you for access to the Site with no prior notice. You may not use our logo or other proprietary graphic or trademark as part of an external link for commercial or other purposes without our express written consent, as may be applicable.<br \\/>\\r\\n<br \\/>\\r\\nYou agree and undertake not to perform restricted activities listed within this section; undertaking these activities will result in an immediate cancellation of your account, services, reviews, orders or any existing incomplete transaction with us and in severe cases may also result in legal action:<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Refusal to comply with the Terms and Conditions described herein or any other guidelines and policies related to the use of the Site as available on the Site at all times.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Impersonate any person or entity or to falsely state or otherwise misrepresent your affiliation with any person or entity.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Use the Site for illegal purposes.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Attempt to gain unauthorized access to or otherwise interfere or disrupt other computer systems or networks connected to the Platform or Services.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Interfere with another&rsquo;s utilization and enjoyment of the Site;<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Post, promote or transmit through the Site any prohibited materials as deemed illegal by The People&#39;s Republic of Bangladesh.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Use or upload, in any way, any software or material that contains, or which you have reason to suspect that contains, viruses, damaging components, malicious code or harmful components which may impair or corrupt the Site&rsquo;s data or damage or interfere with the operation of another Customer&rsquo;s computer or mobile device or the Site and use the Site other than in conformance with the acceptable use policies of any connected computer networks, any applicable Internet standards and any other applicable laws.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>F. YOUR CONDUCT<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You must not use the website in any way that causes, or is likely to cause, the Site or access to it to be interrupted, damaged or impaired in any way. You must not engage in activities that could harm or potentially harm the Site, its employees, officers, representatives, stakeholders or any other party directly or indirectly associated with the Site or access to it to be interrupted, damaged or impaired in any way. You understand that you, and not us, are responsible for all electronic communications and content sent from your computer to us and you must use the Site for lawful purposes only. You are strictly prohibited from using the Site<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>for fraudulent purposes, or in connection with a criminal offense or other unlawful activity<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>to send, use or reuse any material that does not belong to you; or is illegal, offensive (including but not limited to material that is sexually explicit content or which promotes racism, bigotry, hatred or physical harm), deceptive, misleading, abusive, indecent, harassing, blasphemous, defamatory, libellous, obscene, pornographic, paedophilic or menacing; ethnically objectionable, disparaging or in breach of copyright, trademark, confidentiality, privacy or any other proprietary information or right; or is otherwise injurious to third parties; or relates to or promotes money laundering or gambling; or is harmful to minors in any way; or impersonates another person; or threatens the unity, integrity, security or sovereignty of Bangladesh or friendly relations with foreign States; or objectionable or otherwise unlawful in any manner whatsoever; or which consists of or contains software viruses, political campaigning, commercial solicitation, chain letters, mass mailings or any \\\\&quot;spam&rdquo;<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Use the Site for illegal purposes.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>to cause annoyance, inconvenience or needless anxiety<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>for any other purposes that is other than what is intended by us<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>G. YOUR SUBMISSION<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Anything that you submit to the Site and\\/or provide to us, including but not limited to, questions, reviews, comments, and suggestions (collectively, \\\\&quot;Submissions\\\\&quot;) will become our sole and exclusive property and shall not be returned to you. In addition to the rights applicable to any Submission, when you post comments or reviews to the Site, you also grant us the right to use the name that you submit, in connection with such review, comment, or other content. You shall not use a false e-mail address, pretend to be someone other than yourself or otherwise mislead us or third parties as to the origin of any Submissions. We may, but shall not be obligated to, remove or edit any Submissions without any notice or legal course applicable to us in this regard.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>H. CLAIMS AGAINST OBJECTIONABLE CONTENT<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We list thousands of products for sale offered by numerous sellers on the Site and host multiple comments on listings, it is not possible for us to be aware of the contents of each product listed for sale, or each comment or review that is displayed. Accordingly, we operate on a \\\\&quot;claim, review and takedown\\\\&quot; basis. If you believe that any content on the Site is illegal, offensive (including but not limited to material that is sexually explicit content or which promotes racism, bigotry, hatred or physical harm), deceptive, misleading, abusive, indecent, harassing, blasphemous, defamatory, libellous, obscene, pornographic, paedophilic or menacing; ethnically objectionable, disparaging; or is otherwise injurious to third parties; or relates to or promotes money laundering or gambling; or is harmful to minors in any way; or impersonates another person; or threatens the unity, integrity, security or sovereignty of Bangladesh or friendly relations with foreign States; or objectionable or otherwise unlawful in any manner whatsoever; or which consists of or contains software viruses, (\\\\&quot; objectionable content \\\\&quot;), please notify us immediately by following by writing to us on legal@daraz.com.bd. We will make all practical endeavours to investigate and remove valid objectionable content complained about within a reasonable amount of time.<br \\/>\\r\\n<br \\/>\\r\\nPlease ensure to provide your name, address, contact information and as many relevant details of the claim including name of objectionable content party, instances of objection, proof of objection amongst other. Please note that providing incomplete details will render your claim invalid and unusable for legal purposes.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>I. CLAIMS AGAINST INFRINGING CONTENT<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We respect the intellectual property of others. If you believe that your intellectual property rights have been used in a way that gives rise to concerns of infringement, please write to us at legal@daraz.com.bd and we will make all reasonable efforts to address your concern within a reasonable amount of time. Please ensure to provide your name, address, contact information and as many relevant details of the claim including name of infringing party, instances of infringement, proof of infringement amongst other. Please note that providing incomplete details will render your claim invalid and unusable for legal purposes. In addition, providing false or misleading information may be considered a legal offense and may be followed by legal proceedings.<br \\/>\\r\\n<br \\/>\\r\\nWe also respect a manufacturer&#39;s right to enter into exclusive distribution or resale agreements for its products. However, violations of such agreements do not constitute intellectual property rights infringement. As the enforcement of these agreements is a matter between the manufacturer, distributor and\\/or respective reseller, it would not be appropriate for us to assist in the enforcement of such activities. While we cannot provide legal advice, nor share private information as protected by the law, we recommend that any questions or concerns regarding your rights may be routed to a legal specialist.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>J. TRADEMARKS AND COPYRIGHTS<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Daraz.com.bd, Daraz logo, D for Daraz logo, Daraz, Daraz Fashion, Daraz Basics and other marks indicated on our Site are trademarks or registered trademarks in the relevant jurisdiction(s). Our graphics, logos, page headers, button icons, scripts and service names are the trademarks or trade dress and may not be used in connection with any product or service that does not belong to us or in any manner that is likely to cause confusion among customers, or in any manner that disparages or discredits us. All other trademarks that appear on this Site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by us.<br \\/>\\r\\n<br \\/>\\r\\nAll intellectual property rights, whether registered or unregistered, in the Site, information content on the Site and all the website design, including, but not limited to text, graphics, software, photos, video, music, sound, and their selection and arrangement, and all software compilations, underlying source code and software shall remain our property. The entire contents of the Site also are protected by copyright as a collective work under Bangladeshi copyright laws and international conventions. All rights are reserved.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>K. DISCLAIMER<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You acknowledge and undertake that you are accessing the services on the Site and transacting at your own risk and are using your best and prudent judgment before entering into any transactions through the Site. We shall neither be liable nor responsible for any actions or inactions of sellers nor any breach of conditions, representations or warranties by the sellers or manufacturers of the products and hereby expressly disclaim and any all responsibility and liability in that regard. We shall not mediate or resolve any dispute or disagreement between you and the sellers or manufacturers of the products.<br \\/>\\r\\n<br \\/>\\r\\nWe further expressly disclaim any warranties or representations (express or implied) in respect of quality, suitability, accuracy, reliability, completeness, timeliness, performance, safety, merchantability, fitness for a particular purpose, or legality of the products listed or displayed or transacted or the content (including product or pricing information and\\/or specifications) on the Site. While we have taken precautions to avoid inaccuracies in content, this Site, all content, information (including the price of products), software, products, services and related graphics are provided as is basis, without warranty of any kind. We do not implicitly or explicitly support or endorse the sale or purchase of any products on the Site. At no time shall any right, title or interest in the products sold through or displayed on the Site vest with us nor shall Daraz have any obligations or liabilities in respect of any transactions on the Site.<br \\/>\\r\\n<br \\/>\\r\\nWe shall neither be liable or responsible for any actions or inactions of any other service provider as listed on our Site which includes but is not limited to payment providers, instalment offerings, warranty services amongst others.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>L. INDEMNITY<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You shall indemnify and hold harmless Daraz as owned by Daraz Singapore Private Limited, its subsidiaries, affiliates and their respective officers, directors, agents and employees, from any claim or demand, or actions including reasonable attorney&#39;s fees, made by any third party or penalty imposed due to or arising out of your breach of these Terms and Conditions or any document incorporated by reference, or your violation of any law, rules, regulations or the rights of a third party.<br \\/>\\r\\n<br \\/>\\r\\nYou hereby expressly release Daraz as owned by Daraz Singapore Private Limited and\\/or its affiliates and\\/or any of its officers and representatives from any cost, damage, liability or other consequence of any of the actions\\/inactions of the sellers or other service providers and specifically waiver any claims or demands that you may have in this behalf under any statute, contract or otherwise.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>M. THIRD PARTY BUSINESSES<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Parties other than Daraz and its affiliates may operate stores, provide services, or sell product lines on the Site. For example, businesses and individuals offer products via Marketplace. In addition, we provide links to the websites of affiliated companies and certain other businesses. We are not responsible for examining or evaluating, and we do not warrant or endorse the offerings of any of these businesses or individuals, or the content of their websites. We do not assume any responsibility or liability for the actions, products, and content of any of these and any other third-parties. You can tell when a third-party is involved in your transactions by reviewing your transaction carefully, and we may share customer information related to those transactions with that third-party. You should carefully review their privacy statements and related terms and conditions.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>N. COMMUNICATING WITH US<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>When you visit the Site, or send e-mails to us, you are communicating with us electronically. You will be required to provide a valid phone number while placing an order with us. We may communicate with you by e-mail, SMS, phone call or by posting notices on the Site or by any other mode of communication we choose to employ. For contractual purposes, you consent to receive communications (including transactional, promotional and\\/or commercial messages), from us with respect to your use of the website (and\\/or placement of your order) and agree to treat all modes of communication with the same importance.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>O. LOSSES<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We will not be responsible for any business or personal losses (including but not limited to loss of profits, revenue, contracts, anticipated savings, data, goodwill, or wasted expenditure) or any other indirect or consequential loss that is not reasonably foreseeable to both you and us when you commenced using the Site.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>P. AMENDMENTS TO CONDITIONS OR ALTERATIONS OF SERVICE AND RELATED PROMISE<\\/p>\\r\\n\\r\\n<p>\\\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>We reserve the right to make changes to the Site, its policies, these terms and conditions and any other publicly displayed condition or service promise at any time. You will be subject to the policies and terms and conditions in force at the time you used the Site unless any change to those policies or these conditions is required to be made by law or government authority (in which case it will apply to orders previously placed by you). If any of these conditions is deemed invalid, void, or for any reason unenforceable, that condition will be deemed severable and will not affect the validity and enforceability of any remaining condition.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>Q. EVENTS BEYOND OUR CONTROL<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We will not be held responsible for any delay or failure to comply with our obligations under these conditions if the delay or failure arises from any cause which is beyond our reasonable control. This condition does not affect your statutory rights.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>R. WAIVER<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You acknowledge and recognize that we are a private commercial enterprise and reserve the right to conduct business to achieve our objectives in a manner we deem fit. You also acknowledge that if you breach the conditions stated on our Site and we take no action, we are still entitled to use our rights and remedies in any other situation where you breach these conditions.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>S. TERMINATION<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>In addition to any other legal or equitable remedies, we may, without prior notice to you, immediately terminate the Terms and Conditions or revoke any or all of your rights granted under the Terms and Conditions. Upon any termination of this Agreement, you shall immediately cease all access to and use of the Site and we shall, in addition to any other legal or equitable remedies, immediately revoke all password(s) and account identification issued to you and deny your access to and use of this Site in whole or in part. Any termination of this agreement shall not affect the respective rights and obligations (including without limitation, payment obligations) of the parties arising before the date of termination. You furthermore agree that the Site shall not be liable to you or to any other person as a result of any such suspension or termination. If you are dissatisfied with the Site or with any terms, conditions, rules, policies, guidelines, or practices in operating the Site, your sole and exclusive remedy is to discontinue using the Site.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>T. GOVERNING LAW AND JURISDICTION<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>These terms and conditions are governed by and construed in accordance with the laws of The People&#39;s Republic of Bangladesh. You agree that the courts, tribunals and\\/or quasi-judicial bodies located in Dhaka, Bangladesh shall have the exclusive jurisdiction on any dispute arising inside Bangladesh under this Agreement.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>U. CONTACT US<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You may reach us&nbsp;<a href=\\\"\\\\\\\">here<\\/a><\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>V. OUR SOFTWARE<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Our software includes any software (including any updates or upgrades to the software and any related documentation) that we make available to you from time to time for your use in connection with the Site (the \\\\&quot;Software\\\\&quot;).<br \\/>\\r\\n<br \\/>\\r\\nYou may use the software solely for purposes of enabling you to use and enjoy our services as permitted by the Terms and Conditions and any related applicable terms as available on the Site. You may not incorporate any portion of the Software into your own programs or compile any portion of it in combination with your own programs, transfer it for use with another service, or sell, rent, lease, lend, loan, distribute or sub-license the Software or otherwise assign any rights to the Software in whole or in part. You may not use the Software for any illegal purpose. We may cease providing you service and we may terminate your right to use the Software at any time. Your rights to use the Software will automatically terminate without notice from us if you fail to comply with any of the Terms and Conditions listed here or across the Site. Additional third party terms contained within the Site or distributed as such that are specifically identified in related documentation may apply and will govern the use of such software in the event of a conflict with these Terms and Conditions. All software used in any of our services is our property and\\/or our affiliates or its software suppliers and protected by the laws of Bangladesh including but not limited to any other applicable copyright laws.<br \\/>\\r\\n<br \\/>\\r\\nWhen you use the Site, you may also be using the services of one or more third parties, such as a wireless carrier or a mobile platform provider. Your use of these third party services may be subject to separate policies, terms of use, and fees of these third parties.<br \\/>\\r\\n<br \\/>\\r\\nYou may not, and you will not encourage, assist or authorize any other person to copy, modify, reverse engineer, decompile or disassemble, or otherwise tamper with our software whether in whole or in part, or create any derivative works from or of the Software.<br \\/>\\r\\n<br \\/>\\r\\nIn order to keep the Software up-to-date, we may offer automatic or manual updates at any time and without notice to you.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>3. CONDITIONS OF SALE (BETWEEN SELLERS AND CUSTOMERS)<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Please read these conditions carefully before placing an order for any products with the Sellers (&ldquo;We&rdquo; or &ldquo;Our&rdquo; or &ldquo;Us&rdquo;, wherever applicable) on the Site. These conditions signify your agreement to be bound by these conditions.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>A. CONDITIONS RELATED TO SALE OF THE PRODUCT OR SERVICE<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>This section deals with conditions relating to the sale of products or services on the Site.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>B. THE CONTRACT<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Your order is a legal offer to the seller to buy the product or service displayed on our Site. When you place an order to purchase a product, any confirmations or status updates received prior to the dispatch of your order serves purely to validate the order details provided and in no way implies the confirmation of the order itself. The acceptance of your order is considered confirmed when the product is dispatched to you. If your order is dispatched in more than one package, you may receive separate dispatch confirmations. Upon time of placing the order, we indicate an approximate timeline that the processing of your order will take however we cannot guarantee this timeline to be rigorously precise in every instance as we are dependent on third party service providers to preserve this commitment. We commit to you to make every reasonable effort to ensure that the indicative timeline is met. All commercial\\/contractual terms are offered by and agreed to between you and the sellers alone. The commercial\\/contractual terms include without limitation price, shipping costs, payment methods, payment terms, date, period and mode of delivery, warranties related to products and services and after sales services related to products and services. Daraz does not have any control or does not determine or advise or in any way involve itself in the offering or acceptance of such commercial\\/contractual terms between the you and the Sellers. The seller retains the right to cancel any order at its sole discretion prior to dispatch. We will ensure that there is timely intimation to you of such cancellation via an email or sms. Any prepayments made in case of such cancellation(s), shall be refunded to you within the time frames stipulated&nbsp;<a href=\\\"\\\\\\\">here<\\/a>.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>\\\\n\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>D. RETURNS<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Please review our Returns Policy&nbsp;<a href=\\\"\\\\\\\">here<\\/a>.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>E. PRICING, AVAILABILITY AND ORDER PROCESSING<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>All prices are listed in Bangladeshi Taka (BDT) and are inclusive of VAT and are listed on the Site by the seller that is selling the product or service. Items in your Shopping Cart will always reflect the most recent price displayed on the item&#39;s product detail page. Please note that this price may differ from the price shown for the item when you first placed it in your cart. Placing an item in your cart does not reserve the price shown at that time. It is also possible that an item&#39;s price may decrease between the time you place it in your basket and the time you purchase it.<br \\/>\\r\\n<br \\/>\\r\\nWe do not offer price matching for any items sold by any seller on our Site or other websites.<br \\/>\\r\\n<br \\/>\\r\\nWe are determined to provide the most accurate pricing information on the Site to our users; however, errors may still occur, such as cases when the price of an item is not displayed correctly on the Site. As such, we reserve the right to refuse or cancel any order. In the event that an item is mispriced, we may, at our own discretion, either contact you for instructions or cancel your order and notify you of such cancellation. We shall have the right to refuse or cancel any such orders whether or not the order has been confirmed and your prepayment processed. If such a cancellation occurs on your prepaid order, our policies for refund will apply. Please note that Daraz posses 100% right on the refund amount. Usually refund amount is calculated based on the customer paid price after deducting any sort of discount and shipping fee.<br \\/>\\r\\n<br \\/>\\r\\nWe list availability information for products listed on the Site, including on each product information page. Beyond what we say on that page or otherwise on the Site, we cannot be more specific about availability. Please note that dispatch estimates are just that. They are not guaranteed dispatch times and should not be relied upon as such. As we process your order, you will be informed by e-mail or sms if any products you order turn out to be unavailable.<br \\/>\\r\\n<br \\/>\\r\\nPlease note that there are cases when an order cannot be processed for various reasons. The Site reserves the right to refuse or cancel any order for any reason at any given time. You may be asked to provide additional verifications or information, including but not limited to phone number and address, before we accept the order.<br \\/>\\r\\n<br \\/>\\r\\nIn order to avoid any fraud with credit or debit cards, we reserve the right to obtain validation of your payment details before providing you with the product and to verify the personal information you shared with us. This verification can take the shape of an identity, place of residence, or banking information check. The absence of an answer following such an inquiry will automatically cause the cancellation of the order within a reasonable timeline. We reserve the right to proceed to direct cancellation of an order for which we suspect a risk of fraudulent use of banking instruments or other reasons without prior notice or any subsequent legal liability.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Refund Voucher<\\/strong><\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Refund voucher can be redeemed on our Website, as full or part payment of products from our Website within the given timeline.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Refund voucher cannot be used from different account.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Vouchers are not replaceable if expired.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Refund Voucher code can be applied only once. The residual amount of the Refund Voucher after applying it once, if any, will not be refunded and cannot be used for next purchases even if the value of order is smaller than remaining voucher value.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<strong>Promotional Vouchers<\\/strong>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Each issued promotional voucher (App voucher and New customer voucher) will be valid for use by a customer only once. Multiple usages changing the identity is illegal.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Both promotional voucher and cart rule discount may not be added at the same time.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Promotional voucher is non-refundable and cannot be exchanged for cash in part or full and is valid for a single transaction only.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Promotional voucher may not be valid during sale or in conjunction with any special promotion.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Voucher will work only if minimum purchase amount and other conditions are met.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Daraz reserves the right to vary or terminate the operation of any voucher at any time without notice.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Daraz shall not be liable to any customer or household for any financial loss arising out of the refusal, cancellation or withdrawal of any voucher or any failure or inability of a customer to use a voucher for any reason.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Vouchers are not replaceable if expired.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>No promotional offer can be made for baby nutrition products.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<strong>Reward Vouchers<\\/strong>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>Customers who have already been listed in Daraz for fraudulent activities will not be eligible to avail any voucher and will not be eligible to participate in any campaign.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>A customer shall not operate more than one account in a single device.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<strong>Promotional Items<\\/strong>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>One customer will be able to purchase one 11tk deal and mystery box during the promotional period.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<strong>Security and Fraud<\\/strong>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>When you use a voucher, you warrant to Daraz that you are the duly authorized recipient of the voucher and that you are using it in good faith.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>If you redeem, attempt to redeem or encourage the redemption of voucher to obtain discounts to which you are not entitled you may be committing a civil or criminal offence<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li>If we reasonably believe that any voucher is being used unlawfully or illegally we may reject or cancel any voucher\\/order and you agree that you will have no claim against us in respect of any rejection or cancellation. Daraz reserves the right to take any further action it deems appropriate in such instances<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>F. RESELLING DARAZ PRODUCTS<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>Reselling Daraz products for business purpose is strictly prohibited. If any unauthorized personnel is found committing the above act, legal action may be taken against him\\/her.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>G. TAXES<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>You shall be responsible for payment of all fees\\/costs\\/charges associated with the purchase of products from the Site and you agree to bear any and all applicable taxes as per prevailing law.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>H. REPRESENTATIONS AND WARRANTIES<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<p>We do not make any representation or warranty as to specifics (such as quality, value, saleability, etc) of the products or services listed to be sold on the Site when products or services are sold by third parties. We do not implicitly or explicitly support or endorse the sale or purchase of any products or services on the Site. We accept no liability for any errors or omissions, whether on behalf of itself or third parties.<br \\/>\\r\\n<br \\/>\\r\\nWe are not responsible for any non-performance or breach of any contract entered into between you and the sellers. We cannot and do not guarantee your actions or those of the sellers as they conclude transactions on the Site. We are not required to mediate or resolve any dispute or disagreement arising from transactions occurring on our Site.<br \\/>\\r\\n<br \\/>\\r\\nWe do not at any point of time during any transaction as entered into by you with a third party on our Site, gain title to or have any rights or claims over the products or services offered by a seller. Therefore, we do not have any obligations or liabilities in respect of such contract(s) entered into between you and the seller(s). We are not responsible for unsatisfactory or delayed performance of services or damages or delays as a result of products which are out of stock, unavailable or back ordered.<br \\/>\\r\\n<br \\/>\\r\\nPricing on any product(s) or related information as reflected on the Site may due to some technical issue, typographical error or other reason by incorrect as published and as a result you accept that in such conditions the seller or the Site may cancel your order without prior notice or any liability arising as a result. Any prepayments made for such orders will be refunded to you per our refund policy as stipulated&nbsp;<a href=\\\"\\\\\\\">here<\\/a>.<\\/p>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<p>I. OTHERS<\\/p>\\r\\n\\r\\n<p>\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li><strong>Stock availability:<\\/strong>&nbsp;The orders are subject to availability of stock.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li><strong>Delivery Timeline:<\\/strong>&nbsp;The delivery might take longer than usual timeframe\\/line to be followed by Daraz.<br \\/>\\r\\n\\t\\tDelivery might be delayed due to force majeure event which includes, but not limited to, political unrest, political event, national\\/public holidays,etc<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n\\r\\n\\t<ul>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t\\t<li><strong>Cancellation:<\\/strong>&nbsp;Daraz retains unqualified right to cancel any order at its sole discretion prior to dispatch and for any reason which may include, but not limited to, the product being mispriced, out of stock, expired, defective, malfunctioned, and containing incorrect information or description arising out of technical or typographical error or for any other reason.<\\/li>\\r\\n\\t\\t<li>\\\\n<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<br \\/>\\r\\n\\\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n\\t<li><strong>Refund Timeline:<\\/strong>&nbsp;If any order is canceled, the payment against such order shall be refunded within 10 to 15 working days, but it may take longer time in exceptional cases. Provided that received cash back amount, if any, will be adjusted with the refund amount.<\\/li>\\r\\n\\t<li>\\\\n<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>\\\\n<a href=\\\"\\\\\\\">Back to Top<\\/a><br \\/>\\r\\n<br \\/>\\r\\nYou confirm that the product(s) or service(s) ordered by you are purchased for your internal \\/ personal consumption and not for commercial re-sale. You authorize us to declare and provide declaration to any governmental authority on your behalf stating the aforesaid purpose for your orders on the Site. The Seller or the Site may cancel an order wherein the quantities exceed the typical individual consumption. This applies both to the number of products ordered within a single order and the placing of several orders for the same product where the individual orders comprise a quantity that exceeds the typical individual consumption. What comprises a typical individual&#39;s consumption quantity limit shall be based on various factors and at the sole discretion of the Seller or ours and may vary from individual to individual.<br \\/>\\r\\n<br \\/>\\r\\nYou may cancel your order at no cost any time before the item is dispatched to you.<br \\/>\\r\\n<br \\/>\\r\\nPlease note that we sell products only in quantities which correspond to the typical needs of an average household. This applies both to the number of products ordered within a single order and the placing of several orders for the same product where the individual orders comprise a quantity typical for a normal household.Please review our Refund Policy&nbsp;<a href=\\\"\\\\\\\">here<\\/a>.<br \\/>\\r\\n<br \\/>\\r\\n<a href=\\\"\\\\\\\">Back to Top<\\/a>\\\\n\\\\n<\\/p>\\r\\n\\r\\n<p>&quot;<\\/p>\"', NULL, 'pages_setup', 'live', 0, '2022-08-06 04:02:24', '2022-10-04 11:11:05');
INSERT INTO `business_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`) VALUES
('c5d7ea4e-d51b-408f-8e57-58186d7d62f6', 'booking_edit_service_add', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', '{\"booking_edit_service_add_status\":\"1\",\"booking_edit_service_add_message\":\"Booking Edit Service Add\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('c6331403-a1cd-4899-8d68-24a2ac323499', 'offline_payment_approved', '{\"offline_payment_approved_status\":\"1\",\"offline_payment_approved_message\":\"Offline Payment Approved\"}', '{\"offline_payment_approved_status\":\"1\",\"offline_payment_approved_message\":\"Offline Payment Approved\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('c68a9f47-7504-4fc9-b4f6-6a5aa274e4b8', 'business_name', '\"Al Mujadamy\"', '\"Al Mujadamy\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-03-26 13:12:21'),
('c8dd2bcf-44e5-41e4-a121-fe4cc6f44e33', 'discount_cost_bearer', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"discount\"}', '{\"bearer\":\"provider\",\"admin_percentage\":0,\"provider_percentage\":100,\"type\":\"coupon\"}', 'promotional_setup', 'live', 1, '2023-01-22 17:33:48', '2023-01-22 17:33:48'),
('cc84f94d-743d-4551-8981-2fec5a750e93', 'booking_complete', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('cccc6210-ceb8-431a-a676-e4ad322ef32d', 'loyalty_point', '{\"loyalty_point_status\":\"1\",\"loyalty_point_message\":\"Loyalty Point\"}', '{\"loyalty_point_status\":\"1\",\"loyalty_point_message\":\"Loyalty Point\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('cd206dd3-6d91-4608-8bc5-9be80cbf2e42', 'top_sub_title', '\"Get all services from one App.\"', '\"Get all services from one App.\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('cfb57339-dc26-48f0-9815-896aebee243f', 'features', '[{\"id\":\"54fc434a-b953-4b90-97e7-c6d7fae28f41\",\"title\":\"GET YOUR SERVICE 24\\/7\",\"sub_title\":\"Visit our app and select your location to see available services near you\",\"image_1\":\"2023-08-31-64ef2e92e47c3.png\",\"image_2\":\"2023-08-31-64ef2e92e8b41.png\"}]', '[{\"id\":\"54fc434a-b953-4b90-97e7-c6d7fae28f41\",\"title\":\"GET YOUR SERVICE 24\\/7\",\"sub_title\":\"Visit our app and select your location to see available services near you\",\"image_1\":\"2023-08-31-64ef2e92e47c3.png\",\"image_2\":\"2023-08-31-64ef2e92e8b41.png\"}]', 'landing_features', 'live', 1, '2022-10-03 17:26:57', '2023-08-30 18:58:36'),
('d0c18642-cfa4-4178-8e25-a3a58a6cdff3', 'admin_payable', '{\"admin_payable_status\":\"1\",\"admin_payable_message\":\"Admin Payable\"}', '{\"admin_payable_status\":\"1\",\"admin_payable_message\":\"Admin Payable\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('d27c7746-520f-470d-a3e0-6ac0b427ae61', 'registration_title', '\"REGISTER AS PROVIDER\"', '\"REGISTER AS PROVIDER\"', 'landing_text_setup', 'live', 0, '2022-10-03 15:36:11', '2022-10-03 15:36:11'),
('d2b531d9-4cf1-4f7c-b96f-395856f5003d', 'google_map', '{\"party_name\":\"google_map\",\"map_api_key_client\":\"AIzaSyDGiKPKUM5gv89N85GnYV6IZIZAGsu5Xb8\",\"map_api_key_server\":\"AIzaSyDGiKPKUM5gv89N85GnYV6IZIZAGsu5Xb8\",\"service_file\":null}', '{\"party_name\":\"google_map\",\"map_api_key_client\":\"AIzaSyDGiKPKUM5gv89N85GnYV6IZIZAGsu5Xb8\",\"map_api_key_server\":\"AIzaSyDGiKPKUM5gv89N85GnYV6IZIZAGsu5Xb8\",\"service_file\":null}', 'third_party', 'live', 0, '2022-09-14 19:49:51', '2024-08-03 21:06:55'),
('d3ed9c30-4ce1-4c43-8016-e3a51cd74206', 'booking_schedule_time_change', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking Schedule Time Change\"}', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking Schedule Time Change\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('d42c3f11-c43f-48ab-849e-b950d90aea3d', 'widthdraw_request_approve', '{\"widthdraw_request_approve_status\":\"1\",\"widthdraw_request_approve_message\":\"Withdraw Request Approve\"}', '{\"widthdraw_request_approve_status\":\"1\",\"widthdraw_request_approve_message\":\"Withdraw Request Approve\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('d5ff36a8-634b-42a1-ab49-08375eeb21ac', 'footer_text', '\"All rights reserved By @ Al Mujadamy\"', '\"All rights reserved By @ Al Mujadamy\"', 'business_information', 'live', 1, '2022-09-05 10:06:02', '2024-10-03 10:58:00'),
('d683b185-6f67-4cd0-94f7-14d85f8da03a', 'booking_additional_charge', '0', '0', 'booking_setup', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('d8a4c244-0e6c-4511-a156-93db22a66b7e', 'phone_number_visibility_for_chatting', '\"0\"', '\"0\"', 'business_information', 'live', 1, '2023-02-23 00:25:16', '2023-08-30 19:38:42'),
('d9ecd0f6-aa05-42fe-b539-990618fca55f', 'booking_edit_service_quantity_decrease', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', '{\"booking_edit_service_quantity_decrease_status\":\"1\",\"booking_edit_service_quantity_decrease_message\":\"Booking Edit Service Quantity Decrease\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('db386429-6982-4f46-82f9-08ec70f13f57', 'maximum_withdraw_amount', '\"2\"', '\"2\"', 'business_information', 'live', 1, '2023-01-22 17:33:48', '2024-03-26 13:12:21'),
('dbd7d22a-299e-49be-869e-efdcaf8ee7e4', 'web_url', '\"\\/\"', '\"\\/\"', 'landing_button_and_links', 'live', 1, '2022-10-03 16:00:01', '2022-10-04 16:22:24'),
('dbf71089-a769-4025-b971-307c08a6b455', 'service_man_can_cancel_booking', '\"0\"', '\"0\"', 'service_setup', 'live', 0, '2022-07-20 06:04:21', '2022-10-04 16:00:21'),
('e28b7af4-2284-40bf-b28b-84baad4dc1a7', 'top_image_2', '\"2025-03-09-67ccc542372f3.png\"', '\"2025-03-09-67ccc542372f3.png\"', 'landing_images', 'live', 0, '2022-10-03 16:06:00', '2025-03-09 01:31:30'),
('e2bcae59-8095-4b14-8faf-ebe4a1a867cb', 'booking_ongoing', '{\"booking_ongoing_status\":\"1\",\"booking_ongoing_message\":\"Booking Ongoing\"}', '{\"booking_ongoing_status\":\"1\",\"booking_ongoing_message\":\"Booking Ongoing\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('e5362c47-db82-4437-86d8-626bfa78e264', 'booking_complete', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', '{\"booking_complete_status\":\"1\",\"booking_complete_message\":\"Booking Complete\"}', 'serviceman_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('e80a7c3d-9371-4959-8463-c67973a42e56', 'business_email', '\"admin@mujadamy.com\"', '\"admin@mujadamy.com\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-04 23:35:43'),
('e82e188c-d7de-478b-a83b-26c086b0576d', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', 'sms_config', 'live', 0, '2022-06-08 08:56:14', '2022-10-04 16:26:44'),
('e83290d3-d06b-47dd-b83c-5c8876ed0bd0', 'apple_login', '{\"party_name\":\"apple_login\",\"status\":0,\"client_id\":null,\"team_id\":null,\"key_id\":null,\"service_file\":null}', '{\"party_name\":\"apple_login\",\"status\":0,\"client_id\":null,\"team_id\":null,\"key_id\":null,\"service_file\":null}', 'third_party', 'live', 1, '2023-08-30 13:09:23', '2023-08-30 13:09:23'),
('ea0c3ccd-6db7-4b34-8f21-d0eb637cc47c', 'minimum_withdraw_amount', '\"1\"', '\"1\"', 'business_information', 'live', 1, '2023-01-22 17:33:48', '2023-08-30 19:38:42'),
('ea71998b-2399-44cc-8949-1786e753eb9c', 'country_code', '\"KW\"', '\"KW\"', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2024-09-05 09:16:22'),
('eb2430a8-8d49-4bbe-b19d-1de8bd80be64', 'cash_after_service', '1', '1', 'service_setup', 'live', 1, '2023-05-29 16:22:38', '2023-05-29 16:22:38'),
('eb59a509-e7c2-499b-9c44-57554cbfe015', 'language_code', '[\"Bengali\",\"English\",\"Arabic\",\"Abkhaz\",\"Afar\",\"Akan\",\"Albanian\",\"Amharic\"]', '[\"Bengali\",\"English\",\"Arabic\",\"Abkhaz\",\"Afar\",\"Akan\",\"Albanian\",\"Amharic\"]', 'business_information', 'live', 1, '2022-06-14 09:39:24', '2022-07-23 07:26:01'),
('eeca1881-9a28-4be9-9c27-95f4e84e6aca', 'loyalty_point_value_per_currency_unit', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16'),
('f290631d-bf48-45a8-90fc-98060f71d828', 'booking_accepted', '{\"booking_accepted_status\":\"1\",\"booking_accepted_message\":\"Booking Accepted\"}', '{\"booking_accepted_status\":\"1\",\"booking_accepted_message\":\"Booking Accepted\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('f82d1978-8ab9-4ad3-a84f-050faa17436f', 'service_request_approve', '{\"service_request_approve_status\":\"1\",\"service_request_approve_message\":\"Service Request Review\"}', '{\"service_request_approve_status\":\"1\",\"service_request_approve_message\":\"Service Request Review\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('f99e20b3-dfb1-431f-891b-7d78c413e964', 'booking_refund', '{\"booking_refund_status\":1,\"booking_refund_message\":\"Booking Refund Successfully\"}', '{\"booking_refund_status\":1,\"booking_refund_message\":\"Booking Refund Successfully\"}', 'notification_messages', 'live', 1, '2022-06-06 12:41:28', '2022-09-05 15:17:05'),
('fb2792f7-d2f9-4560-83e0-61a8ed5d4aed', 'booking_cancel', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', '{\"booking_cancel_status\":\"1\",\"booking_cancel_message\":\"Booking Cancel\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('fc50433d-6dff-4a85-adaa-9bf1a27fc9ad', 'customized_booking_request', '{\"customized_booking_request_status\":\"1\",\"customized_booking_request_message\":\"Customized Booking Request\"}', '{\"customized_booking_request_status\":\"1\",\"customized_booking_request_message\":\"Customized Booking Request\"}', 'customer_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('fc9ca7b4-4f21-4d45-a0cb-04693ebee4dc', 'provider_section_image', '\"2025-03-08-67cb66dc02149.png\"', '\"2025-03-08-67cb66dc02149.png\"', 'landing_images', 'live', 0, '2022-10-03 17:17:01', '2025-03-08 00:36:28'),
('fccca07e-50a5-4a6e-b509-5840a14fbc03', 'booking_schedule_time_change', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking schedule time change\"}', '{\"booking_schedule_time_change_status\":\"1\",\"booking_schedule_time_change_message\":\"Booking schedule time change\"}', 'provider_notification', 'live', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('fe386570-fee3-46bd-a9eb-1b34be33b7d6', 'loyalty_point_percentage_per_booking', '0', '0', 'customer_config', 'live', 1, '2023-02-23 00:25:16', '2023-02-23 00:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `campaign_name` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) NOT NULL DEFAULT 'def.png',
  `thumbnail` varchar(191) NOT NULL DEFAULT 'def.png',
  `discount_id` char(36) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` char(36) NOT NULL,
  `customer_id` char(36) DEFAULT NULL,
  `provider_id` char(36) DEFAULT NULL,
  `service_id` char(36) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `sub_category_id` char(36) DEFAULT NULL,
  `variant_key` varchar(191) DEFAULT NULL,
  `service_cost` decimal(24,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `campaign_discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `provider_id`, `service_id`, `category_id`, `sub_category_id`, `variant_key`, `service_cost`, `quantity`, `discount_amount`, `coupon_code`, `coupon_discount`, `campaign_discount`, `tax_amount`, `total_cost`, `created_at`, `updated_at`, `is_guest`) VALUES
('8b1bb452-e0c9-4ff7-b798-10371239c15c', 'd0f9d340-c943-11ef-9cb7-b16f6e615017', NULL, '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', 'توصيل', 13.00, 1, 0.00, NULL, 0.00, 0.00, 0.00, 13.00, '2025-01-02 22:59:41', '2025-01-02 22:59:41', 1),
('af400f83-e0b8-4092-826a-eacbdb4d6b06', 'a0c4d184-2730-4309-bd34-e11a979ff06f', NULL, '7eae1fe8-f21c-429d-8b1e-f41641479066', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', 'Delivery-Fees', 10.00, 1, 0.00, NULL, 0.00, 0.00, 0.00, 10.00, '2024-08-06 07:36:17', '2024-08-06 07:36:17', 0),
('d3da4bc2-5374-4aa5-8641-b6a4e4d4b56d', 'a0c4d184-2730-4309-bd34-e11a979ff06f', NULL, '7eae1fe8-f21c-429d-8b1e-f41641479066', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', 'Service-Cost', 100.00, 3, 0.00, NULL, 0.00, 0.00, 0.00, 300.00, '2024-08-06 07:36:16', '2024-08-06 07:36:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `image`, `position`, `description`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
('09829674-b705-4bb6-8454-0435501b4776', 'cfe61573-3594-495c-abd3-55fb11947dd8', 'Technical Professional Service', '2025-03-09-67ccd7fbbb9f9.png', 2, 'All needed Technical Services for Alll Engines', 1, 0, '2025-03-09 02:51:23', '2025-03-09 02:51:23'),
('3e5440bb-7a1f-4fd2-bcf9-9c29086341f6', '50af761b-b99d-4934-a703-8c61eeacb910', 'Tow your Boat with All weights', '2025-03-09-67ccd6f651d83.png', 2, 'Gross Tonnage we will Tow 1 - 20 Tons with a price range starting from 50 KWD including a free Diagnostic System Test', 1, 0, '2025-03-09 02:47:02', '2025-03-09 02:47:02'),
('4270a316-be0c-4d8d-96f5-34e5a5d6715d', 'd29df588-6059-4147-b075-da91b960ca4a', 'AMARON', '2025-03-09-67ccd5169d586.png', 2, 'We rovide all nessecary AMARON batteries for all you vessel', 1, 0, '2025-03-09 02:39:02', '2025-03-09 02:39:02'),
('50af761b-b99d-4934-a703-8c61eeacb910', '0', 'in Sea Boat Towing', '2025-03-09-67ccd38183966.png', 1, NULL, 1, 1, '2025-03-09 02:32:17', '2025-03-09 02:33:41'),
('5168edca-2ef8-42a1-a2b8-e5003d7053c0', '5dd99ed6-f8ea-4b53-ac4c-c75de5c40ff9', 'Oil & Filter Replacments', '2025-03-09-67ccd7cbbb014.png', 2, 'Available Oils for 2 Stroke & 4 Stroke for All brands: YAMAHA - HONDA - Murcery - SUZUKI', 1, 0, '2025-03-09 02:50:35', '2025-03-09 02:50:35'),
('5dd99ed6-f8ea-4b53-ac4c-c75de5c40ff9', '0', 'Oil & Filter Replacment', '2025-03-09-67ccd489e1018.png', 1, NULL, 1, 1, '2025-03-09 02:36:41', '2025-03-09 02:36:58'),
('91249d67-497b-47eb-9df8-a0ce592e5b54', '0', 'Fuel Tank Filling', '2025-03-09-67ccd2b7a1fde.png', 1, NULL, 1, 1, '2025-03-06 04:28:36', '2025-03-09 02:28:55'),
('a415f4f0-c594-4711-8fc6-8a3f09d4e0e7', '0', 'Electrical Malfunction', '2025-03-09-67ccd41046c9f.png', 1, NULL, 1, 0, '2025-03-09 02:34:40', '2025-03-09 02:34:40'),
('c0c5a4d0-8434-4cd1-b92d-35e02473749a', '91249d67-497b-47eb-9df8-a0ce592e5b54', 'Fuel Tank Filling in the middle of the Sea', '2025-03-09-67ccd606d6b93.png', 2, 'Fuel Tank Filling in the middle of the Sea', 1, 0, '2025-03-09 02:43:02', '2025-03-09 02:43:02'),
('cfe61573-3594-495c-abd3-55fb11947dd8', '0', 'Technical Professional Services', '2025-03-09-67ccd3cfdd265.png', 1, NULL, 1, 1, '2025-03-09 02:33:35', '2025-03-09 02:33:39'),
('d29df588-6059-4147-b075-da91b960ca4a', '0', 'Battery Replacment', '2025-03-09-67ccd4562bb21.png', 1, NULL, 1, 1, '2025-03-09 02:35:50', '2025-03-09 02:36:50'),
('e18d4f7e-6f5a-46a0-b6a7-85b972170a88', 'a415f4f0-c594-4711-8fc6-8a3f09d4e0e7', 'All Nessesary Electrical Accessories', '2025-03-09-67ccd5e3efa17.png', 2, 'All Nessesary Electrical Accessories', 1, 0, '2025-03-09 02:42:27', '2025-03-09 02:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `category_zone`
--

CREATE TABLE `category_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` char(36) NOT NULL,
  `zone_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_zone`
--

INSERT INTO `category_zone` (`id`, `category_id`, `zone_id`, `created_at`, `updated_at`) VALUES
(8, '91249d67-497b-47eb-9df8-a0ce592e5b54', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(9, '50af761b-b99d-4934-a703-8c61eeacb910', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(10, 'cfe61573-3594-495c-abd3-55fb11947dd8', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(11, 'a415f4f0-c594-4711-8fc6-8a3f09d4e0e7', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(12, 'd29df588-6059-4147-b075-da91b960ca4a', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(13, '5dd99ed6-f8ea-4b53-ac4c-c75de5c40ff9', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `channel_conversations`
--

CREATE TABLE `channel_conversations` (
  `id` char(36) NOT NULL,
  `channel_id` char(36) NOT NULL,
  `message` text DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_conversations`
--

INSERT INTO `channel_conversations` (`id`, `channel_id`, `message`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
('0cef83ab-0336-4752-88a7-a85d7a4d5c1f', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'ljfgwlerg\r\nfgasdrgfq', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-11-24 22:36:29', '2024-11-24 22:36:29'),
('102a6342-ac41-48fe-afc1-0ef2cc4654f7', 'ace5ee89-6075-4b3b-879c-7a7a9663eebe', 'مرحبا', '120a5724-d07f-470f-89bf-6f0119a4b413', NULL, '2024-10-09 10:08:12', '2024-10-09 10:08:12'),
('12dabfac-aa99-4e16-9fb0-7df58cbde8f1', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'Hello', '82f44630-e829-4799-a84e-e6c72921d12f', NULL, '2024-09-23 17:21:40', '2024-09-23 17:21:40'),
('18256c96-234a-446d-81fc-f073b9b90d3a', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'yjljlllgjkh', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:01', '2024-08-23 10:52:01'),
('25572654-f9cb-416f-8317-621fdee19541', '499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', 'why', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-03-26 15:38:19', '2024-03-26 15:38:19'),
('30ee316c-dd7c-4962-a649-fabd9566eb75', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'حول حول', '82f44630-e829-4799-a84e-e6c72921d12f', NULL, '2024-09-23 17:21:27', '2024-09-23 17:21:27'),
('31960102-cce0-48a5-a1e5-41a7e92449e0', '87a42972-9c5e-4146-ac11-9f0f6275c233', NULL, '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, '2024-09-05 09:29:40', '2024-09-05 09:29:40'),
('3fd22eab-be2f-4eae-b035-2293e7788a4e', '68cfd1c7-65d5-4b57-b290-7c98894e9a7f', 'Hi', '6300be25-dcbc-4232-a1a9-b342bdd78bff', NULL, '2024-09-23 16:57:35', '2024-09-23 16:57:35'),
('43d6c264-abe9-4802-8b5d-1e473e04fffa', '4f32e090-61b5-4b62-a5a0-aed21fd6a6a6', 'Hi', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', NULL, '2024-12-03 10:09:43', '2024-12-03 10:09:43'),
('4862157b-9515-406f-9eaf-6aa7338f73dd', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', NULL, '82f44630-e829-4799-a84e-e6c72921d12f', NULL, '2024-09-23 17:22:33', '2024-09-23 17:22:33'),
('4ee895b5-007b-45cf-899c-dca494f5c1be', '499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', 'test', '61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', NULL, '2024-03-26 15:36:35', '2024-03-26 15:36:35'),
('54a4958e-0142-4c6c-bc36-bbc88929a488', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'jljljjhl', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:06', '2024-08-23 10:52:06'),
('71ab118c-7a15-4f81-8c50-78b17abb3662', '3d4563d8-5930-447d-8eb5-7a6996d30260', '...', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', NULL, '2024-09-23 16:50:24', '2024-09-23 16:50:24'),
('74245c82-211c-457b-a5a6-f43137a62060', 'a5adf941-1aa3-4f5f-8ab2-ab2967251d9c', 'Hello', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', NULL, '2024-11-02 17:28:27', '2024-11-02 17:28:27'),
('7cb64199-d17b-4564-b59d-a4b003293b68', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'ؤرس', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-22 18:34:51', '2024-09-22 18:34:51'),
('854311d4-b56b-4f2c-86f1-dabf5d6b1776', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'Hi', '82f44630-e829-4799-a84e-e6c72921d12f', NULL, '2024-09-23 17:21:12', '2024-09-23 17:21:12'),
('8df5b733-e164-4f6f-aad0-658ef1b2714a', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'سسبس', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-22 18:34:57', '2024-09-22 18:34:57'),
('9212b96a-03cc-40d8-a3d3-41cd91e513c3', '4dc32ba3-6374-460b-b338-e218fe3fcdc8', NULL, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, '2024-11-02 16:57:08', '2024-11-02 16:57:08'),
('97f8d486-d4f9-4c70-b23d-bbfa237d3c02', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'cghjdgkh\r\nghfk\r\nhgdjhgddm', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:51:52', '2024-08-23 10:51:52'),
('981af2a7-889e-4b1b-ae66-54723310339d', '9f5b237e-bbab-4ed0-9319-9d5c3a95da22', 'Hello', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-02 08:13:34', '2024-12-02 08:13:34'),
('9ce2da63-55fd-433e-b157-0aa8348d8269', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'hjvjk.,', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-23 17:19:52', '2024-09-23 17:19:52'),
('a0541191-a5e3-4660-a0b5-b1e5793de76b', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', '?', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-03 08:03:14', '2024-08-03 08:03:14'),
('a529c718-e8ec-47dc-971a-789c0743317f', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', '5645', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-23 16:25:42', '2024-09-23 16:25:42'),
('b53e7bf9-8b24-45ac-b8be-68ca2c1dc987', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'kjkjbklbkhb;kj', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-03 08:00:37', '2024-08-03 08:00:37'),
('c20c1c32-75e9-453a-959b-fffe50a4ea66', '499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', 'yoo', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-03-26 15:38:45', '2024-03-26 15:38:45'),
('c95ae983-5e8f-4dc0-b527-b27cd0181889', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'ؤرس', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-22 18:34:52', '2024-09-22 18:34:52'),
('cccd9b94-2417-4de4-9fa6-70ef4eb765ae', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', NULL, 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-03 08:02:00', '2024-08-03 08:02:00'),
('d8ab2d8f-749b-4227-84fa-7ed16168e210', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'yjljlllgjkh', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:01', '2024-08-23 10:52:01'),
('dbb49fe1-493d-4abe-bded-3599b2bd0e77', '87a42972-9c5e-4146-ac11-9f0f6275c233', 'السلام عليكم تم الانتهاء من البلاغ', '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, '2024-09-05 09:28:34', '2024-09-05 09:28:34'),
('e1f7cc36-7e71-46a1-a1a4-10efc9e066af', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'jljljjhl', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:05', '2024-08-23 10:52:05'),
('e400f421-40c0-4e2a-9490-d1daa6bbb61c', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'lgjkglj', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:13', '2024-08-23 10:52:13'),
('f80df042-fcbb-4d1f-b08c-cf29bc89b4df', 'c59986a6-904f-4be4-9170-84a368592c97', 'test', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2025-04-13 14:15:29', '2025-04-13 14:15:29'),
('f83d174d-81ef-46e0-9927-4a6daa3ede6a', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'jljljjhl', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-23 10:52:05', '2024-08-23 10:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `channel_lists`
--

CREATE TABLE `channel_lists` (
  `id` char(36) NOT NULL,
  `reference_id` char(36) DEFAULT NULL COMMENT '(DC2Type:guid)',
  `reference_type` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_lists`
--

INSERT INTO `channel_lists` (`id`, `reference_id`, `reference_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
('22c09386-b1d3-452f-af74-dfc868690653', '', 'support', NULL, '2024-09-10 12:01:50', '2024-09-10 12:01:50'),
('2ee2d7e4-5a2b-415b-86a8-142893972260', '', 'support', NULL, '2024-12-05 09:46:16', '2024-12-05 09:46:16'),
('300aded4-05d5-4960-aa5f-60b059ab417e', NULL, NULL, NULL, '2024-08-22 09:17:30', '2024-08-22 09:17:30'),
('3d4563d8-5930-447d-8eb5-7a6996d30260', '', 'support', NULL, '2024-09-23 16:49:03', '2024-09-23 16:50:24'),
('48912f25-555f-4baf-a50e-6e2088021649', '', 'support', NULL, '2024-12-05 12:29:09', '2024-12-05 12:29:09'),
('499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', NULL, NULL, NULL, '2024-03-26 15:36:25', '2024-03-26 15:38:45'),
('4dc32ba3-6374-460b-b338-e218fe3fcdc8', '', 'support', NULL, '2024-09-24 12:43:41', '2024-11-02 16:57:08'),
('4f32e090-61b5-4b62-a5a0-aed21fd6a6a6', '', 'support', NULL, '2024-12-03 09:59:54', '2024-12-03 10:09:43'),
('58cc99ca-757f-407a-bdf5-c0621e349eba', '', 'support', NULL, '2024-09-10 12:01:50', '2024-09-10 12:01:50'),
('68cfd1c7-65d5-4b57-b290-7c98894e9a7f', '', 'support', NULL, '2024-09-23 16:57:20', '2024-09-23 16:57:35'),
('72d0fb9c-eca1-4c62-9ef5-8332ca61db07', '', 'support', NULL, '2024-09-17 17:39:58', '2024-09-17 17:39:58'),
('7f8ddc23-f354-4a4e-b7c2-becd3bad12a8', NULL, NULL, NULL, '2024-07-30 13:12:31', '2024-07-30 13:12:31'),
('87a42972-9c5e-4146-ac11-9f0f6275c233', '', 'support', NULL, '2024-09-05 05:36:23', '2024-09-05 09:29:40'),
('94c57ed9-22c3-4a63-a9da-76c96d2fb710', '', 'support', NULL, '2024-12-03 09:59:54', '2024-12-03 09:59:54'),
('9f5b237e-bbab-4ed0-9319-9d5c3a95da22', '', 'support', NULL, '2024-12-02 08:10:26', '2024-12-02 08:13:34'),
('a5adf941-1aa3-4f5f-8ab2-ab2967251d9c', '7bb04711-842f-46df-88e8-b66ee885fff6', 'booking_id', NULL, '2024-11-02 17:28:22', '2024-11-02 17:28:27'),
('ace5ee89-6075-4b3b-879c-7a7a9663eebe', NULL, NULL, NULL, '2024-10-09 10:07:52', '2024-10-09 10:08:12'),
('c59986a6-904f-4be4-9170-84a368592c97', '', 'support', NULL, '2024-09-11 12:11:53', '2025-04-13 14:15:29'),
('ddf24053-0572-47a4-8bd8-0aa458f9880d', '', 'support', NULL, '2024-09-05 21:10:26', '2024-11-24 22:36:29'),
('e802e32f-57e2-48d0-9220-a4a86f0451f2', NULL, NULL, NULL, '2024-07-30 13:08:09', '2024-08-23 10:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `channel_users`
--

CREATE TABLE `channel_users` (
  `id` char(36) NOT NULL,
  `channel_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_users`
--

INSERT INTO `channel_users` (`id`, `channel_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `is_read`) VALUES
('02204157-a61f-4166-a8c3-c061c93641ec', '94c57ed9-22c3-4a63-a9da-76c96d2fb710', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', NULL, '2024-12-03 09:59:54', '2024-12-03 09:59:54', 0),
('05f7f56a-d8c7-47bc-ba68-873e2b1141cb', '499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', '61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', NULL, '2024-03-26 15:36:25', '2024-03-26 15:39:05', 1),
('0a52ff82-6810-40ad-a53a-2090fe13a312', 'a5adf941-1aa3-4f5f-8ab2-ab2967251d9c', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, '2024-11-02 17:28:22', '2024-11-02 17:28:44', 1),
('1ee22fe4-9188-423e-9644-473692241423', '7f8ddc23-f354-4a4e-b7c2-becd3bad12a8', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-07-30 13:12:31', '2024-07-30 13:12:39', 1),
('20e7fad5-46c8-47eb-aa65-41fa3a368c50', '300aded4-05d5-4960-aa5f-60b059ab417e', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-08-22 09:17:30', '2024-11-04 17:03:31', 1),
('2325a522-09ea-4ef7-b091-4760e86830f0', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-07-30 13:08:09', '2024-09-05 11:54:14', 1),
('245bc7e1-0e4d-4ed1-a5b7-d78520dcfce1', '48912f25-555f-4baf-a50e-6e2088021649', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-05 12:29:09', '2025-04-13 14:15:22', 1),
('26238fba-b40f-4f6c-a1f1-97715bf213b9', '58cc99ca-757f-407a-bdf5-c0621e349eba', '992de8d3-3809-4c2a-8713-fe108127ea52', NULL, '2024-09-10 12:01:50', '2024-09-10 12:01:50', 0),
('29385a41-0066-453c-92ed-b83e01855c75', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', '82f44630-e829-4799-a84e-e6c72921d12f', NULL, '2024-09-05 21:10:26', '2024-11-24 22:36:29', 0),
('3747fd4d-8597-4c16-8cd5-d1a560a71e8d', '68cfd1c7-65d5-4b57-b290-7c98894e9a7f', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-23 16:57:20', '2024-11-02 17:15:01', 1),
('429d984b-3a95-4151-b026-64817a6486b4', 'ace5ee89-6075-4b3b-879c-7a7a9663eebe', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', NULL, '2024-10-09 10:07:52', '2024-10-09 10:08:12', 0),
('49442583-8c49-4bfe-9bd0-d16e68b95608', '94c57ed9-22c3-4a63-a9da-76c96d2fb710', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-03 09:59:54', '2024-12-03 09:59:54', 0),
('58bc5b2d-90a0-4a7d-98b7-60207a40d7c6', '87a42972-9c5e-4146-ac11-9f0f6275c233', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-05 05:36:23', '2024-11-02 17:15:04', 1),
('5961d7c2-a39e-42cc-b63c-abe1e090ba94', '7f8ddc23-f354-4a4e-b7c2-becd3bad12a8', '0dd4915d-5c45-49ad-8397-8cf97d302b4e', NULL, '2024-07-30 13:12:31', '2024-07-30 13:12:31', 0),
('6bac82be-cf6c-46a3-ac67-5517138722ab', 'a5adf941-1aa3-4f5f-8ab2-ab2967251d9c', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', NULL, '2024-11-02 17:28:22', '2024-11-05 21:29:31', 1),
('73d83d42-3a46-4544-9197-48e0f4662047', '22c09386-b1d3-452f-af74-dfc868690653', '992de8d3-3809-4c2a-8713-fe108127ea52', NULL, '2024-09-10 12:01:50', '2024-09-10 12:01:50', 0),
('81ec82b9-b3ce-4765-9bd0-eb0cf832d1e6', 'ace5ee89-6075-4b3b-879c-7a7a9663eebe', '120a5724-d07f-470f-89bf-6f0119a4b413', NULL, '2024-10-09 10:07:52', '2024-10-09 10:08:04', 1),
('83627922-0de8-4b39-8363-dbbf3233a657', '4f32e090-61b5-4b62-a5a0-aed21fd6a6a6', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-03 09:59:54', '2024-12-03 10:09:43', 0),
('900d59f6-f6d1-4872-8cff-8583b5aa40b2', '48912f25-555f-4baf-a50e-6e2088021649', '7e3c4471-507f-418c-97dc-221318cc64ab', NULL, '2024-12-05 12:29:09', '2024-12-05 12:29:09', 0),
('97a54449-2136-4667-b1e5-4f6b569349bc', 'ddf24053-0572-47a4-8bd8-0aa458f9880d', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-05 21:10:26', '2024-11-24 22:36:19', 1),
('9a0310e4-4f29-47db-aed5-3fdeeeff2532', '68cfd1c7-65d5-4b57-b290-7c98894e9a7f', '6300be25-dcbc-4232-a1a9-b342bdd78bff', NULL, '2024-09-23 16:57:20', '2024-11-04 15:35:30', 1),
('a2ac647c-708d-4e47-9fd6-10dc67671911', '3d4563d8-5930-447d-8eb5-7a6996d30260', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-23 16:49:03', '2024-11-24 22:36:47', 1),
('a50e1c14-5e9b-4b83-a6fc-dd9dbd080135', '2ee2d7e4-5a2b-415b-86a8-142893972260', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-05 09:46:16', '2025-03-06 01:41:24', 1),
('a52fec1f-1eab-43c4-b7fc-4425e04995d0', '72d0fb9c-eca1-4c62-9ef5-8332ca61db07', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-17 17:39:58', '2024-09-23 16:50:40', 1),
('a5faa84b-d261-4a91-b853-f6734ca2773d', '2ee2d7e4-5a2b-415b-86a8-142893972260', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, '2024-12-05 09:46:16', '2024-12-05 10:35:42', 1),
('aa2df0dd-d776-487f-8ce1-8a2c36d3187f', '9f5b237e-bbab-4ed0-9319-9d5c3a95da22', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-12-02 08:10:26', '2025-03-06 01:41:22', 1),
('ac0d63e5-1cc3-4b8f-8550-06bd21655094', '4dc32ba3-6374-460b-b338-e218fe3fcdc8', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-24 12:43:41', '2024-12-02 12:33:33', 1),
('af7b664b-aa64-4c3c-9a97-73a30a8ae3d0', '22c09386-b1d3-452f-af74-dfc868690653', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-10 12:01:50', '2024-11-03 18:08:54', 1),
('b66fb427-16bc-4d9f-b9de-4bbeec567c1f', '4dc32ba3-6374-460b-b338-e218fe3fcdc8', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', NULL, '2024-09-24 12:43:41', '2024-11-04 15:03:45', 1),
('b68c09eb-9401-4305-93dc-6277dbee84a1', '87a42972-9c5e-4146-ac11-9f0f6275c233', '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, '2024-09-05 05:36:23', '2024-12-08 18:38:40', 1),
('bb646bb2-9f0b-4608-96b0-7a98d0411ac3', '4f32e090-61b5-4b62-a5a0-aed21fd6a6a6', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', NULL, '2024-12-03 09:59:54', '2024-12-03 10:17:36', 1),
('c37040bc-36ae-4c52-a0ac-cc8a6c294110', 'e802e32f-57e2-48d0-9220-a4a86f0451f2', 'cf2540fe-218f-44f4-8597-8792ecaa9d17', NULL, '2024-07-30 13:08:09', '2024-08-23 10:52:13', 0),
('c79e2ccc-ace1-4f3f-83c2-0d1385eccf44', '72d0fb9c-eca1-4c62-9ef5-8332ca61db07', 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', NULL, '2024-09-17 17:39:58', '2024-09-17 17:39:58', 0),
('cc7b0098-c7ba-46be-942f-4e79382d844f', '58cc99ca-757f-407a-bdf5-c0621e349eba', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-10 12:01:50', '2024-11-03 18:08:59', 1),
('d0b6ae1d-6ada-4308-917a-e2a729ee83b5', 'c59986a6-904f-4be4-9170-84a368592c97', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-09-11 12:11:53', '2025-04-13 14:15:24', 1),
('db22cc20-3621-41c7-bc9d-1007d361fd57', '499bb3ad-b6f6-40b9-9be1-3d496d8e5e77', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', NULL, '2024-03-26 15:36:25', '2024-03-26 15:38:10', 1),
('dfc49b6a-efb1-480b-9fb9-4843c0090f97', '3d4563d8-5930-447d-8eb5-7a6996d30260', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', NULL, '2024-09-23 16:49:03', '2024-09-23 18:22:23', 1),
('eadd4543-c90e-45ef-8cb6-941b694a1994', 'c59986a6-904f-4be4-9170-84a368592c97', 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', NULL, '2024-09-11 12:11:53', '2025-04-13 14:15:29', 0),
('f1d4c8d5-a61b-4ec1-ad2d-570682da2554', '9f5b237e-bbab-4ed0-9319-9d5c3a95da22', 'f1a51915-905b-4e68-8761-0984f2243d49', NULL, '2024-12-02 08:10:26', '2024-12-02 08:17:43', 1),
('f5447613-f668-408a-abe7-c6b0aa5b9fdb', '300aded4-05d5-4960-aa5f-60b059ab417e', '89206e19-67a4-43a2-963b-607edde34e15', NULL, '2024-08-22 09:17:30', '2024-08-22 09:17:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_files`
--

CREATE TABLE `conversation_files` (
  `id` char(36) NOT NULL,
  `conversation_id` char(36) NOT NULL,
  `stored_file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversation_files`
--

INSERT INTO `conversation_files` (`id`, `conversation_id`, `stored_file_name`, `original_file_name`, `file_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
('74213206-1232-4ede-9e9f-cc5e11ad021f', '9212b96a-03cc-40d8-a3d3-41cd91e513c3', '2024-11-02-67262fb4650e1.png', '2024-11-02 16:57:05.930816.png', 'png', NULL, '2024-11-02 16:57:08', '2024-11-02 16:57:08'),
('82b05ef8-6629-4773-ac18-0da9b5b93a77', '31960102-cce0-48a5-a1e5-41a7e92449e0', '2024-09-05-66d95de5063f5.png', '2024-09-05 10:29:37.871628.png', 'png', NULL, '2024-09-05 09:29:41', '2024-09-05 09:29:41'),
('8fee1ee8-4315-4ee4-9b42-d4228b9b09e9', '4862157b-9515-406f-9eaf-6aa7338f73dd', '2024-09-23-66f187ba0aef7.png', '2024-09-23 18:22:31.318609.png', 'png', NULL, '2024-09-23 17:22:34', '2024-09-23 17:22:34'),
('d86c2a27-34a4-4f51-9ebd-3b6b551558f4', 'cccd9b94-2417-4de4-9fa6-70ef4eb765ae', '2024-08-03-66ad3b38d2f18.png', 'logo (2)11.png', 'png', NULL, '2024-08-03 08:02:00', '2024-08-03 08:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` char(36) NOT NULL,
  `coupon_type` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `discount_id` char(36) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_customers`
--

CREATE TABLE `coupon_customers` (
  `id` char(36) NOT NULL,
  `coupon_id` char(36) DEFAULT NULL,
  `customer_user_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_settings`
--

CREATE TABLE `data_settings` (
  `id` char(36) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_settings`
--

INSERT INTO `data_settings` (`id`, `key`, `value`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
('0689bba0-0de2-4820-902a-5b4840af7fe9', 'bottom_title', 'Latest News & Partners in Success', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-09 01:34:53'),
('11c9071f-70e2-412b-ba73-73da0ae9f7cb', 'refund_policy', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>', 'pages_setup', 1, '2023-11-28 15:33:21', '2024-09-09 23:42:04'),
('2787bb42-2e6a-43a4-81f1-7aee084f7083', 'bottom_description', 'Subcribe to out newsletters to receive all the latest activty we provide for you', 'landing_text_setup', 1, '2023-11-28 15:33:21', '2023-11-28 15:33:21'),
('42a986a9-831b-4789-9ae4-26b8284a2017', 'top_title', 'Customer Statisfaciton is our main goal', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2024-12-21 20:47:14'),
('514e21aa-ae56-447e-9f9d-a34d4995bb9e', 'cancellation_policy', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>', 'pages_setup', 1, '2023-11-28 15:33:21', '2024-09-09 23:41:17'),
('7f249215-5ee0-4a39-872e-3b3bd2634278', 'about_us', '<p>Almujadamy Co.<br><br>A Kuwaiti Company Collaborating with Kuwait Fire Force<br><br>\"A Promise of Protection, A Legacy of Rescue &ndash; Al Mujadamy.\"</p>', 'pages_setup', 1, '2023-11-28 15:33:21', '2025-03-06 03:57:01'),
('875a27cc-5456-4573-a4af-cdf9d2e15c16', 'registration_title', 'Register As a Provider', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-06 02:46:50'),
('95b1d2d7-b656-4ea6-9347-79909a94e7dd', 'registration_description', 'Collaborate with Al Mujadamy and register as a supplier of marine products on our platform', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-06 02:46:50'),
('af772e44-2cea-4396-bb82-9dbc13eb8691', 'top_sub_title', 'Get all services from one App.', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2024-09-11 19:56:43'),
('c1f90ba8-3432-4478-8f35-7c992fa10aaf', 'privacy_policy', '<h1 data-start=\"131\" data-end=\"153\"><strong data-start=\"133\" data-end=\"151\">Privacy Policy</strong></h1>\r\n<p data-start=\"154\" data-end=\"189\">&nbsp;</p>\r\n<h2 data-start=\"191\" data-end=\"215\"><strong data-start=\"194\" data-end=\"213\">1. Introduction<br><br></strong></h2>\r\n<p data-start=\"216\" data-end=\"511\">Welcome to <strong data-start=\"227\" data-end=\"256\">Al Mujadamy Marine Rescue</strong>. Your privacy is important to us, and we are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our website and mobile application.</p>\r\n<p data-start=\"513\" data-end=\"642\">By accessing our services, you agree to the terms outlined in this policy. If you do not agree, please do not use our services.</p>\r\n<h2 data-start=\"644\" data-end=\"678\"><strong data-start=\"647\" data-end=\"676\">2. Information We Collect<br><br></strong></h2>\r\n<p data-start=\"679\" data-end=\"736\">We may collect and process the following types of data:</p>\r\n<ul data-start=\"738\" data-end=\"1222\">\r\n<li data-start=\"738\" data-end=\"880\"><strong data-start=\"740\" data-end=\"765\">Personal Information:</strong> Name, phone number, email address, location, and other relevant details when you register or request assistance.</li>\r\n<li data-start=\"881\" data-end=\"975\"><strong data-start=\"883\" data-end=\"907\">Device &amp; Usage Data:</strong> IP address, device type, operating system, and browsing activity.</li>\r\n<li data-start=\"976\" data-end=\"1093\"><strong data-start=\"978\" data-end=\"996\">Location Data:</strong> To provide real-time marine rescue services, we collect your GPS location (with your consent).</li>\r\n<li data-start=\"1094\" data-end=\"1222\"><strong data-start=\"1096\" data-end=\"1132\">Cookies &amp; Tracking Technologies:</strong> We use cookies and analytics tools to enhance user experience and improve our services.</li>\r\n</ul>\r\n<h2 data-start=\"1224\" data-end=\"1263\"><strong data-start=\"1227\" data-end=\"1261\">3. How We Use Your Information<br><br></strong></h2>\r\n<p data-start=\"1264\" data-end=\"1295\">We use the collected data to:</p>\r\n<ul data-start=\"1297\" data-end=\"1574\">\r\n<li data-start=\"1297\" data-end=\"1341\">Provide and improve our rescue services.</li>\r\n<li data-start=\"1342\" data-end=\"1406\">Respond to emergency requests and enhance safety operations.</li>\r\n<li data-start=\"1407\" data-end=\"1456\">Process registrations and account management.</li>\r\n<li data-start=\"1457\" data-end=\"1511\">Communicate updates, alerts, and customer support.</li>\r\n<li data-start=\"1512\" data-end=\"1574\">Comply with legal obligations and regulatory requirements.</li>\r\n</ul>\r\n<h2 data-start=\"1576\" data-end=\"1612\"><strong data-start=\"1579\" data-end=\"1610\">4. Sharing Your Information<br><br></strong></h2>\r\n<p data-start=\"1613\" data-end=\"1650\">We may share your information with:</p>\r\n<ul data-start=\"1652\" data-end=\"1923\">\r\n<li data-start=\"1652\" data-end=\"1734\"><strong data-start=\"1654\" data-end=\"1697\">Kuwait Fire Force &amp; Emergency Services:</strong> To ensure swift rescue operations.</li>\r\n<li data-start=\"1735\" data-end=\"1837\"><strong data-start=\"1737\" data-end=\"1771\">Third-Party Service Providers:</strong> For hosting, analytics, and payment processing (if applicable).</li>\r\n<li data-start=\"1838\" data-end=\"1923\"><strong data-start=\"1840\" data-end=\"1862\">Legal Authorities:</strong> When required by law or to protect our services and users.</li>\r\n</ul>\r\n<h2 data-start=\"1925\" data-end=\"1950\"><strong data-start=\"1928\" data-end=\"1948\">5. Data Security<br><br></strong></h2>\r\n<p data-start=\"1951\" data-end=\"2140\">We implement industry-standard security measures to protect your personal information.</p>\r\n<h2 data-start=\"2142\" data-end=\"2175\"><strong data-start=\"2145\" data-end=\"2173\">6. Your Rights &amp; Choices<br><br></strong></h2>\r\n<p data-start=\"2176\" data-end=\"2200\">You have the right to:</p>\r\n<ul data-start=\"2202\" data-end=\"2341\">\r\n<li data-start=\"2202\" data-end=\"2251\">Access, update, or delete your personal data.</li>\r\n<li data-start=\"2252\" data-end=\"2292\">Opt out of marketing communications.</li>\r\n<li data-start=\"2293\" data-end=\"2341\">Restrict certain data processing activities.</li>\r\n</ul>\r\n<h2 data-start=\"2343\" data-end=\"2378\"><strong data-start=\"2346\" data-end=\"2376\">7. Location-Based Services<br><br></strong></h2>\r\n<p data-start=\"2379\" data-end=\"2616\">For accurate and efficient rescue operations, we collect real-time location data when you request assistance. You can disable location tracking through your device settings, but this may limit our ability to provide emergency services.</p>\r\n<h2 data-start=\"2618\" data-end=\"2648\"><strong data-start=\"2621\" data-end=\"2646\">8. Children&rsquo;s Privacy<br><br></strong></h2>\r\n<p data-start=\"2649\" data-end=\"2773\">Our services are not intended for individuals under 18 years old. We do not knowingly collect personal data from children.</p>\r\n<h2 data-start=\"2775\" data-end=\"2809\"><strong data-start=\"2778\" data-end=\"2807\">9. Changes to This Policy<br><br></strong></h2>\r\n<p data-start=\"2810\" data-end=\"2943\">We may update this Privacy Policy from time to time. We will notify users of significant changes via email or through our platform.</p>\r\n<h2 data-start=\"2945\" data-end=\"2968\"><strong data-start=\"2948\" data-end=\"2966\">10. Contact Us<br><br></strong></h2>\r\n<p data-start=\"2969\" data-end=\"3099\">If you have any questions about this policy, please contact us at:<br data-start=\"3035\" data-end=\"3038\">📧 <strong data-start=\"3041\" data-end=\"3051\">Email:</strong> info@Almujadamy.com<br data-start=\"3066\" data-end=\"3069\">📞 <strong data-start=\"3072\" data-end=\"3082\">Phone:</strong> +965-63632122</p>', 'pages_setup', 1, '2023-11-28 15:33:21', '2025-03-06 04:17:52'),
('c60d816a-3100-4d3e-8aba-013a0ef13639', 'about_us_description', 'A joint collaboration between Al Mujadamy and the Marine Rescue Force of the General Fire Force because your safety at sea is our priority.', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-06 02:46:50'),
('f4df4ad8-96be-4f99-a14e-6dc7c82035f8', 'top_description', 'Al-Mujadamy Marine Rescue', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-09 01:34:53'),
('f4e72cf5-7e3f-40e0-a7b0-1185c62a65fa', 'about_us_title', 'Almujadamy Fleet', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-06 01:51:34'),
('f64ffa14-fb1c-47e6-8736-0da45af39785', 'terms_and_conditions', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>', 'pages_setup', 1, '2023-11-28 15:33:21', '2024-09-09 23:42:27'),
('f6516965-15da-4fd6-805d-7788c0121a5f', 'mid_title', 'Our Services', 'landing_text_setup', 0, '2023-11-28 15:33:21', '2025-03-06 02:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` char(36) NOT NULL,
  `discount_title` varchar(191) DEFAULT NULL,
  `discount_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `discount_amount_type` varchar(191) NOT NULL DEFAULT 'percent',
  `min_purchase` decimal(24,3) NOT NULL DEFAULT 0.000,
  `max_discount_amount` decimal(24,3) NOT NULL DEFAULT 0.000,
  `limit_per_user` int(11) NOT NULL DEFAULT 0,
  `promotion_type` varchar(191) NOT NULL DEFAULT 'discount',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL DEFAULT '2022-04-04',
  `end_date` date NOT NULL DEFAULT '2022-04-04',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_title`, `discount_type`, `discount_amount`, `discount_amount_type`, `min_purchase`, `max_discount_amount`, `limit_per_user`, `promotion_type`, `is_active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
('09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'Testing 0212', 'category', 10.000, 'percent', 1.000, 10.000, 0, 'discount', 1, '2024-12-02', '2024-12-04', '2024-12-02 08:16:45', '2024-12-02 08:16:45'),
('3357181d-84c2-4939-b157-b2ca5b57d98d', 'test', 'service', 10.000, 'percent', 5.000, 100.000, 0, 'discount', 1, '2024-09-27', '2024-10-10', '2024-09-27 15:11:06', '2024-09-27 15:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `discount_types`
--

CREATE TABLE `discount_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` char(36) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `type_wise_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_types`
--

INSERT INTO `discount_types` (`id`, `discount_id`, `discount_type`, `type_wise_id`, `created_at`, `updated_at`) VALUES
(10, '3357181d-84c2-4939-b157-b2ca5b57d98d', 'service', '047b9008-ca42-4393-b717-d04f78e994f2', '2024-09-27 15:11:06', '2024-09-27 15:11:06'),
(11, '3357181d-84c2-4939-b157-b2ca5b57d98d', 'zone', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '2024-09-27 15:11:06', '2024-09-27 15:11:06'),
(14, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', 'fcc9a5a1-34f5-4693-b0a3-5d849403691e', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(15, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', 'a18aa522-9f35-47c2-afdf-46c79ee436fd', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(16, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', '047aa17a-b134-4d0e-b735-b418e3b18568', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(17, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', 'fa7149c8-58ad-4e47-b7dc-7149a3c28ceb', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(18, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', '255ce5fa-e261-4dba-bb81-bffc40a93319', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(19, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'category', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '2024-12-02 08:17:27', '2024-12-02 08:17:27'),
(20, '09c6cf72-32ac-43aa-ba0d-9171b5adc05b', 'zone', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '2024-12-02 08:17:27', '2024-12-02 08:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` char(36) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `service_id` char(36) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` char(36) NOT NULL,
  `guest_id` char(36) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `current_language_key` varchar(255) DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `guest_id`, `ip_address`, `created_at`, `updated_at`, `current_language_key`) VALUES
('01fe55d2-4ff4-4a20-8ccf-11ccc660f0d1', NULL, '212.34.30.39', '2024-08-04 08:12:50', '2024-08-04 08:12:50', 'en'),
('02534699-f16e-425a-84b2-fcff5ba77b9c', NULL, '46.248.202.225', '2024-08-03 21:07:21', '2024-08-03 21:07:21', 'en'),
('05986eaa-6bac-456e-82f3-d4f2c13b4186', NULL, '139.178.131.14', '2024-09-16 04:47:22', '2024-09-16 04:47:22', 'en'),
('0704d23d-1a7e-4461-bd83-0bebcac95b25', NULL, '46.248.202.225', '2024-08-03 20:47:42', '2024-08-03 20:47:42', 'en'),
('0b63109e-2fd9-4e41-a40e-de73d2bf84f4', NULL, '139.178.128.11', '2025-02-24 02:26:26', '2025-02-24 02:26:26', 'en'),
('129dfbaa-0b02-4f2b-8bb8-ae540b4f31fd', NULL, '213.139.49.98', '2024-08-21 06:20:10', '2024-08-21 06:20:10', 'en'),
('12a43906-e4b2-411c-9298-38d189bf1587', NULL, '149.200.255.11', '2024-09-05 09:25:14', '2024-09-05 09:25:14', 'ar'),
('1372d856-31c1-4279-acae-3c6a82abd716', NULL, '139.178.131.13', '2024-09-26 00:26:25', '2024-09-26 00:26:25', 'en'),
('143e6bbe-0475-4862-b835-8ef2d5d63005', NULL, '139.178.128.205', '2024-09-07 00:42:15', '2024-09-07 00:42:15', 'en'),
('15e04fef-38ff-4b6b-bd42-d04c18121cc5', NULL, '139.178.128.203', '2024-09-11 17:08:47', '2024-09-11 17:08:47', 'en'),
('16773aff-5562-43af-a512-e3c055c82351', NULL, '139.178.131.20', '2024-09-07 11:36:22', '2024-09-07 11:36:22', 'en'),
('1b66bb42-632b-407b-ba8d-6fa6f25cd64e', NULL, '109.107.253.16', '2024-09-05 05:51:05', '2024-09-05 05:51:05', 'en'),
('1c5049aa-eb0f-4e3b-8625-bfcf50b3d51f', NULL, '139.178.128.10', '2024-09-05 09:24:25', '2024-09-05 09:24:25', 'en'),
('1feefa38-6ee6-468e-b34c-654ac12e94e9', NULL, '139.178.131.72', '2024-10-26 03:19:34', '2024-10-26 03:19:34', 'en'),
('1ffcc402-76bd-4ff6-b864-af87d6f3ac1c', NULL, '49.36.220.216', '2025-01-10 12:31:46', '2025-01-10 12:31:46', 'en'),
('204c2996-d2d3-46cd-9997-24be8415822a', NULL, '46.248.202.93', '2024-08-21 21:52:07', '2024-08-21 21:52:07', 'en'),
('22f5ac73-fd48-4f14-94d5-cb0c8ae87262', NULL, '46.248.202.93', '2024-09-04 09:47:14', '2024-09-04 09:47:14', 'en'),
('23c4a59c-db6e-43ed-b53c-99cde9230049', NULL, '139.178.131.11', '2024-12-26 23:19:36', '2024-12-26 23:19:36', 'en'),
('340e311d-9990-4f1c-8b6f-42ff4dc48c7b', NULL, '139.178.131.7', '2024-09-21 19:33:10', '2024-09-21 19:33:10', 'en'),
('357662df-6bf5-460d-8d3a-fc40e1993d48', NULL, '139.178.128.207', '2024-09-12 20:31:11', '2024-09-12 20:31:11', 'en'),
('3b65d984-dd97-4402-b7ca-f596c0a9c2c1', NULL, '213.139.49.98', '2024-08-21 07:52:57', '2024-08-21 07:52:57', 'en'),
('404c9de1-f811-47de-bbc3-fcc180ed8bbc', NULL, '49.36.220.216', '2025-01-10 13:28:20', '2025-01-10 13:28:20', 'en'),
('42d1eafc-879d-4885-9980-5907015f43b5', NULL, '46.248.202.225', '2024-08-03 21:09:00', '2024-08-03 21:09:00', 'en'),
('4328b4c6-55e9-43f3-b892-26143dcfae06', NULL, '46.248.202.225', '2024-08-03 21:00:54', '2024-08-03 21:00:54', 'en'),
('46f60f7e-78dd-403e-81cd-4282c66ea27e', NULL, '139.178.128.204', '2024-09-08 12:25:10', '2024-09-08 12:25:10', 'en'),
('47eaf64b-5217-4e1e-b30f-9d481ee5cd42', NULL, '139.178.128.204', '2024-10-27 23:34:05', '2024-10-27 23:34:05', 'en'),
('499ec9ca-9015-4fa5-82f5-46654265aa43', NULL, '212.34.11.166', '2024-09-05 04:54:14', '2024-09-05 04:54:14', 'en'),
('49c170d1-c9dc-4978-929d-54a93633bf4e', NULL, '139.178.128.198', '2024-10-25 21:20:02', '2024-10-25 21:20:02', 'en'),
('4e5480d4-8ea9-4f04-bafd-81e8c77dd1c9', NULL, '46.248.202.225', '2024-08-03 20:42:49', '2024-08-03 20:42:49', 'en'),
('4f1f6269-4917-4ca0-87e1-0e0bfda6c0ef', NULL, '212.34.12.220', '2024-09-05 03:08:42', '2024-09-05 03:08:42', 'en'),
('5272f3f2-6d9a-488b-bb23-8a140312d0b7', NULL, '139.178.131.17', '2024-09-12 21:53:26', '2024-09-12 21:53:26', 'en'),
('5341075b-5c0d-4d34-aa37-062100855efe', NULL, '212.34.30.39', '2024-08-05 02:23:44', '2024-08-05 02:23:44', 'en'),
('5866b90c-ab94-4d10-b2ed-521a0f5f0171', NULL, '139.178.128.13', '2024-09-10 12:14:53', '2024-09-10 12:14:53', 'en'),
('5cd98209-5f32-481c-bce7-22c3e904a07f', '1d9a7770-526d-11ef-8a5c-07b63b4b6e3c', '46.248.202.225', '2024-08-05 09:29:01', '2024-08-05 09:29:01', 'en'),
('5f9a59e4-f744-4f19-8fdd-f14c145997af', NULL, '139.178.128.4', '2025-02-21 04:23:38', '2025-02-21 04:23:38', 'ar'),
('5f9c6f2b-f030-491c-ac43-d0801918d7d5', NULL, '139.178.128.198', '2024-10-20 20:19:36', '2024-10-20 20:19:36', 'en'),
('677c5ebd-3a31-47d2-8524-9b5e313e7b8f', NULL, '46.248.202.225', '2024-08-03 20:35:24', '2024-08-03 20:35:24', 'en'),
('678aa195-f210-40a6-8daf-41c532309189', NULL, '46.248.202.225', '2024-08-03 22:20:06', '2024-08-03 22:20:06', 'en'),
('68c6ae9f-a0da-43af-8541-942687bd10df', NULL, '139.178.130.133', '2024-12-09 22:20:00', '2024-12-09 22:20:00', 'en'),
('69963a82-8aaa-43c5-80c2-b15cbe6b0da3', NULL, '46.248.202.225', '2024-08-03 21:16:52', '2024-08-03 21:16:52', 'en'),
('69ffe96a-e8f8-4388-bb20-3cd5c330a66d', NULL, '212.34.23.151', '2024-09-05 06:07:29', '2024-09-05 06:07:29', 'en'),
('6b37a125-163b-4cf9-8d1a-d384207101e0', NULL, '212.34.14.242', '2024-09-04 05:41:22', '2024-09-04 05:41:22', 'en'),
('6bb08552-7654-41b3-974a-0cf908b40e05', NULL, '139.178.131.72', '2024-10-28 04:23:56', '2024-10-28 04:23:56', 'en'),
('6ea3ac52-527f-4c88-9686-a3e71a59a637', NULL, '139.178.130.77', '2024-10-27 20:20:38', '2024-10-27 20:20:38', 'en'),
('774f6c08-fe24-4f93-96b1-f131e13bc8f8', NULL, '49.36.222.78', '2024-12-02 07:39:09', '2024-12-02 07:39:09', 'en'),
('79e55356-9f09-4b14-ae62-e02fdb949448', NULL, '49.36.220.216', '2025-01-10 09:42:54', '2025-01-10 09:42:54', 'en'),
('7a1c10da-b6e3-4672-83d0-66ffe345bdd8', NULL, '139.178.131.70', '2024-10-31 16:50:51', '2024-10-31 16:50:51', 'en'),
('7b82b538-72ea-4638-9a34-64535d894f21', NULL, '139.178.131.66', '2024-09-21 01:23:12', '2024-09-21 01:23:12', 'en'),
('7f231390-c73e-43b2-8541-aed0d26d5833', NULL, '212.34.30.142', '2024-09-03 06:09:32', '2024-09-03 06:09:32', 'en'),
('84b80d44-4ccf-49dd-86e5-281fb397553b', NULL, '109.107.253.16', '2024-09-05 03:25:28', '2024-09-05 03:25:28', 'en'),
('871cc90f-a457-432f-bdfa-13153794ce0b', NULL, '139.178.130.15', '2024-12-09 13:34:45', '2024-12-09 13:34:45', 'en'),
('88bae9f3-99f5-4adb-8eb2-bf6ec513167f', NULL, '188.236.144.4', '2024-10-29 17:57:53', '2024-10-29 17:57:53', 'en'),
('8a1d07d3-47d0-4e4c-a3ee-874f6559e8f7', NULL, '46.248.202.93', '2024-08-21 21:48:45', '2024-08-21 21:48:45', 'en'),
('8a2cad75-f813-4702-b542-f524fa684610', NULL, '149.200.255.11', '2024-09-05 09:24:25', '2024-09-05 09:24:25', 'en'),
('8d49bcb6-335d-443a-9645-0714e6725176', NULL, '46.248.202.93', '2024-09-04 20:24:16', '2024-09-04 20:24:16', 'en'),
('8dd83365-5b3b-45f7-bfb9-ee626ca75bab', NULL, '71.199.60.120', '2024-09-05 17:22:38', '2024-09-05 17:22:38', 'en'),
('915f7f4e-df42-42b8-907c-35721ba0b993', NULL, '212.34.12.220', '2024-09-04 07:37:17', '2024-09-04 07:37:17', 'en'),
('91a240f0-f370-4af5-9c19-48869edf3e40', NULL, '139.178.131.20', '2024-09-11 14:47:21', '2024-09-11 14:47:21', 'en'),
('9682dff2-e233-48d8-a5cd-910f2c787dc3', NULL, '139.178.131.26', '2024-10-16 01:35:53', '2024-10-16 01:35:53', 'en'),
('9781fb4a-1e20-47c0-8af4-7b79cfa5fe44', NULL, '139.178.128.13', '2024-09-10 12:19:56', '2024-09-10 12:19:56', 'en'),
('9ccf2250-b321-43cf-b3a7-e7558506b9d6', NULL, '139.178.131.20', '2024-09-07 11:41:32', '2024-09-07 11:41:32', 'en'),
('a4b139b9-b944-4aa9-b3be-d163dcadf366', 'd0f9d340-c943-11ef-9cb7-b16f6e615017', '139.178.130.72', '2025-01-02 22:59:41', '2025-01-02 22:59:41', 'en'),
('a569e232-c040-437b-ae3f-958ea2a2b1ea', NULL, '149.200.255.11', '2024-09-04 23:55:26', '2024-09-04 23:55:26', 'en'),
('a6d8d2cc-3e1d-4b84-892f-662ee170e284', 'e0d96f30-6ad1-11ef-9358-5b3547d7a8a1', '109.107.253.16', '2024-09-05 03:26:19', '2024-09-05 03:26:19', 'en'),
('a993372a-4d6d-44a0-a9ae-c63823c7c289', NULL, '139.178.128.198', '2024-10-25 21:25:10', '2024-10-25 21:25:10', 'en'),
('aa9347c8-aff3-44a3-9d2b-55b22d20036b', NULL, '152.58.94.147', '2024-12-03 15:21:33', '2024-12-03 15:21:33', 'en'),
('b076a4ab-1074-4126-aa5b-5fa6a00e1abe', NULL, '139.178.130.74', '2025-02-18 23:12:18', '2025-02-18 23:12:18', 'en'),
('b2437d6c-bbae-4684-a6f1-99eea389ade7', 'b532d9e0-51d4-11ef-a1ec-079a4df04c80', '46.248.202.225', '2024-08-04 11:49:23', '2024-08-04 11:49:23', 'en'),
('b347648f-3bb9-4ec5-82ad-1fe964c58725', NULL, '149.200.255.11', '2024-09-05 00:05:53', '2024-09-05 00:05:53', 'en'),
('b5b9b34d-6846-4f47-b117-ab6f7c0a48da', NULL, '212.34.11.166', '2024-09-05 05:03:27', '2024-09-05 05:03:27', 'en'),
('b657ab2a-4f9d-4046-b3e4-58152742abd8', NULL, '188.71.236.165', '2024-09-23 16:38:46', '2024-09-23 16:38:46', 'ar'),
('bc644000-0b33-4e96-80a4-56de9673b0b1', NULL, '213.139.49.98', '2024-08-21 07:38:23', '2024-08-21 07:38:23', 'en'),
('bd572f28-44e9-4ca7-ac09-971bb18e76d6', NULL, '212.34.14.242', '2024-09-04 06:23:12', '2024-09-04 06:23:12', 'en'),
('bda126f6-1094-403d-bd98-2336c86212d4', NULL, '46.248.202.225', '2024-08-03 22:11:32', '2024-08-03 22:11:32', 'en'),
('be50741f-5002-42b9-b63a-2dbc99ed3062', NULL, '188.236.171.121', '2024-11-29 14:49:47', '2024-11-29 14:49:47', 'en'),
('bf56fd89-679c-424f-af64-d8b2740f4ca9', NULL, '188.71.237.199', '2024-09-05 12:13:56', '2024-09-05 12:13:56', 'ar'),
('c0142638-3371-4d2f-a777-adca8db2ce64', NULL, '46.248.202.225', '2024-08-03 22:44:27', '2024-08-03 22:44:27', 'en'),
('c0720f1d-4bd4-4939-8eff-c452637d4bd2', NULL, '139.178.128.5', '2025-02-17 02:46:58', '2025-02-17 02:46:58', 'en'),
('c56c1669-6a16-4e19-9ad6-f4687717625c', NULL, '139.178.131.25', '2024-11-18 22:30:14', '2024-11-18 22:30:14', 'en'),
('c58f1908-99e9-4456-b50b-79b1548159c7', NULL, '139.178.131.11', '2024-11-07 00:59:16', '2024-11-07 00:59:16', 'en'),
('c5fd6321-e305-48d5-b0f4-8dbc72d019db', NULL, '139.178.130.132', '2024-09-05 17:12:33', '2024-09-05 17:12:33', 'en'),
('cc335801-a667-4a74-9f84-18e68c054d2f', NULL, '213.139.49.98', '2024-08-21 07:23:00', '2024-08-21 07:23:00', 'en'),
('cd6846cf-c643-4fba-9282-c59307b6aaf6', NULL, '213.139.49.98', '2024-08-21 05:45:52', '2024-08-21 05:45:52', 'en'),
('ceb361e1-322a-487f-9c23-9f801332251b', NULL, '188.236.144.4', '2024-10-29 18:00:13', '2024-10-29 18:00:13', 'ar'),
('cf2949a5-cff6-43d3-b947-4d10c1ea5ee5', NULL, '74.125.215.34', '2025-01-06 11:33:21', '2025-01-06 11:33:21', 'en'),
('cf66b0eb-9a20-47e6-b695-af83c1286084', NULL, '139.178.128.11', '2024-10-12 23:39:41', '2024-10-12 23:39:41', 'en'),
('d14fd1e3-89b8-44e3-b8a3-5d872e55cba2', NULL, '213.139.49.98', '2024-08-21 08:03:37', '2024-08-21 08:03:37', 'en'),
('d3d91c18-f655-4144-8dee-64025b0c66d4', NULL, '37.39.187.73', '2024-09-23 16:28:30', '2024-09-23 16:28:30', 'en'),
('d584e23b-7597-437f-822b-aa830ac883c6', NULL, '139.178.128.198', '2024-12-24 00:32:59', '2024-12-24 00:32:59', 'en'),
('d7ebac0f-5c5b-4076-b44c-f36cffdca5b7', NULL, '139.178.131.76', '2024-11-15 02:36:06', '2024-11-15 02:36:06', 'ar'),
('da6302b1-818e-4ddf-a122-da3dc6e907c4', NULL, '139.178.130.72', '2025-01-02 22:58:11', '2025-01-02 22:58:11', 'ar'),
('dae168c7-4fa8-4acd-bc12-e0de429fef06', NULL, '213.139.45.170', '2024-08-06 04:29:29', '2024-08-06 04:29:29', 'en'),
('dda9e2f8-a07a-4c61-8a36-7afad9f3a3e4', NULL, '139.178.128.202', '2024-09-25 14:44:40', '2024-09-25 14:44:40', 'en'),
('e1f69a53-48b6-46fc-8e5f-5457925acc4f', NULL, '46.248.202.225', '2024-08-03 21:23:45', '2024-08-03 21:23:45', 'en'),
('e5d99c9e-f334-4337-859e-706b6076c67a', '1d9a7770-526d-11ef-8a5c-07b63b4b6e3c', '46.248.202.225', '2024-08-05 09:29:00', '2024-08-05 09:29:00', 'en'),
('e684c03d-2868-427f-b5b0-cf33f0a59a2f', NULL, '213.139.45.19', '2024-08-03 06:12:01', '2024-08-03 06:12:01', 'en'),
('e781ba9c-22ed-4586-8358-8d8f4e44a458', NULL, '109.107.253.16', '2024-09-05 00:53:19', '2024-09-05 00:53:19', 'en'),
('f2432a10-212d-4fbd-a69e-a112bc7b0ff9', NULL, '109.107.253.16', '2024-09-05 05:48:18', '2024-09-05 05:48:18', 'ar'),
('f2cf4d2f-7b03-48bf-9a5a-b43dde1feb9c', NULL, '139.178.130.132', '2024-09-05 17:17:42', '2024-09-05 17:17:42', 'en'),
('f3c311b5-31a9-477f-bfff-e4489d0eb76a', '5b351420-b067-11ef-93c6-0b4d0c6133fd', '49.36.222.78', '2024-12-02 07:57:56', '2024-12-02 07:57:56', 'en'),
('f4feb81e-3289-4021-9110-80c40c3f1b0c', NULL, '139.178.128.10', '2024-09-05 09:19:21', '2024-09-05 09:19:21', 'en'),
('f744e51d-2a27-4c1a-8208-ddec94b72cd2', 'e0d96f30-6ad1-11ef-9358-5b3547d7a8a1', '109.107.253.16', '2024-09-05 03:26:20', '2024-09-05 03:26:20', 'en'),
('f9d19047-cc58-489a-8f57-7381778a0951', NULL, '109.107.253.16', '2024-09-05 05:44:30', '2024-09-05 05:44:30', 'en'),
('fa0f28db-3d3d-468b-b6af-726f4e2ec8aa', NULL, '139.178.128.205', '2024-09-14 20:21:12', '2024-09-14 20:21:12', 'en'),
('fac3e2d6-ebfc-4786-9d92-aac007c1221c', NULL, '149.200.255.11', '2024-09-05 08:42:21', '2024-09-05 08:42:21', 'ar'),
('fd7233f8-e02c-43d2-9308-5cdf852c26e1', NULL, '212.34.12.220', '2024-09-05 03:14:15', '2024-09-05 03:14:15', 'en'),
('ffaaceb5-42b4-494f-869f-d943c710d626', NULL, '188.236.139.128', '2024-09-05 09:15:12', '2024-09-05 09:15:12', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `ignored_posts`
--

CREATE TABLE `ignored_posts` (
  `id` char(36) NOT NULL,
  `post_id` char(36) NOT NULL,
  `provider_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_features`
--

CREATE TABLE `landing_page_features` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_features`
--

INSERT INTO `landing_page_features` (`id`, `title`, `sub_title`, `image_1`, `image_2`, `created_at`, `updated_at`) VALUES
('07744dcb-50f4-4045-bab9-0fd68f8b899e', 'GET YOUR SERVICE 24/7', 'Visit our app and select your location to see available services near you', '2025-03-09-67ccc3f49b094.png', '2025-03-09-67ccc3f49baa5.png', '2025-03-09 01:25:56', '2025-03-09 01:25:56'),
('15ff056a-6447-4e44-a1eb-cc2355a816f0', 'GET YOUR SERVICE 24/7', 'Visit our app and select your location to see available services near you', '2025-03-09-67ccc3b366551.png', '2025-03-09-67ccc3b366f56.png', '2025-03-09 01:24:51', '2025-03-09 01:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_specialities`
--

CREATE TABLE `landing_page_specialities` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_specialities`
--

INSERT INTO `landing_page_specialities` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
('0d1bbefb-1522-4a4c-b5b0-5010235704da', 'Nokhetha Ardaab', 'Sr. Maintenance', '2025-03-08-67ccae1e35d45.png', '2025-03-08 23:52:46', '2025-03-08 23:52:46'),
('25c0fbdc-5462-4390-a159-091ca8b84fe7', 'Nokhetha Mohammad Murtaza', 'Sr. Maintenance', '2025-03-08-67ccadeff0266.png', '2025-03-08 23:51:59', '2025-03-08 23:51:59'),
('2888503c-779d-439f-9f07-3bec446bc88b', 'Nokhetha Ali Abul', 'Head of Almujadamy Fleet', '2025-03-08-67ccaf01c3d86.png', '2025-03-08 23:56:33', '2025-03-08 23:56:33'),
('a31c534f-8d46-407d-9e23-197c94dea58b', 'Nokhetha Fabio', 'Sr. Maintenance', '2025-03-08-67ccae579f177.png', '2025-03-08 23:53:43', '2025-03-08 23:53:43'),
('b44d4017-3399-4869-bc56-b59c170060bb', 'Failaka Island', 'Covering: Joon AlKuwait - Miskan Island - Uhha Island - AlMassila', '2025-03-09-67ccb2a440046.png', '2025-03-09 00:12:04', '2025-03-09 00:12:04'),
('d9dc7dcc-287e-497f-a1ac-c3d9db5a9552', 'AlFintass Port', 'Covering: AlFintass - Kubbar Island - Julia\'a - Uraifjan', '2025-03-09-67ccb2771ea5d.png', '2025-03-09 00:11:19', '2025-03-09 00:11:19'),
('db67203f-8a63-4d18-ac02-84fbdb4f89c7', 'Nokhetha Ramadhan', 'Sr. Maintenance', '2025-03-08-67ccae3aefb04.png', '2025-03-08 23:53:14', '2025-03-08 23:53:14'),
('dd6ad099-c479-43c8-951e-fa12a8826780', 'Nokhetha Shabaz', 'Sr. Maintenance', '2025-03-08-67ccadb7d9a64.png', '2025-03-08 23:51:03', '2025-03-08 23:51:03'),
('fe69b1cf-d868-4995-92e6-c2daae92a8db', 'AlKhiran Port', 'Covering: AlKhiran - Qaruoh Island - Um Almaradem Island - AlAryaqq', '2025-03-09-67ccb2178c03a.png', '2025-03-09 00:09:43', '2025-03-09 00:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_testimonials`
--

CREATE TABLE `landing_page_testimonials` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_testimonials`
--

INSERT INTO `landing_page_testimonials` (`id`, `name`, `designation`, `review`, `image`, `created_at`, `updated_at`) VALUES
('0e71750f-7893-4da7-aed2-abe083e768ae', 'Kuwait Fire Force', 'Kuwait Marine Fire & Rescue Service', 'in Collaboration with Almujadamy we are here for your Rescue!', '2025-03-06-67c8e9c509acf.png', '2025-03-06 03:18:13', '2025-03-06 03:18:13'),
('10fc7920-85c7-467c-8401-cc71ac0c3e0a', 'Kuwait Fire Force', 'Kuwait Fire Force', 'Kuwait Fire Force is Collaborating with Almujadamy & Their Professional Fleet', '2025-03-06-67c8eb044934a.png', '2025-03-06 03:23:32', '2025-03-06 03:23:32'),
('522677e6-65a1-4291-98a7-9154163c6da7', 'Sulaiman Alarouj', 'Founder & CEO', 'Innovation Meets Safety – Empowering Marine Rescue with Al Mujadamy.', '2025-03-06-67c8e78b98262.png', '2025-03-06 03:08:43', '2025-03-06 03:08:43'),
('66c232f4-67ee-4817-b86c-73e3b30e7a44', 'AMARON Battries', 'AMARON', 'in Collaboration with AMARON, Almujadamy is A Proud Partner which Provides Batteries with Annual Warranty Guranteed', '2025-03-09-67ccc031458c4.png', '2025-03-09 01:09:53', '2025-03-09 01:09:53'),
('b1c5e413-6add-4746-b520-ea90aa3d23a3', 'Honda Marine', 'Honda', 'in Collaboration with HONDA, Almujadamy Supports Diagnostics & Maintenance of HONDA Engines and Parts', '2025-03-09-67ccbea1e1e93.png', '2025-03-09 01:03:13', '2025-03-09 01:03:13'),
('c18d0f00-68e9-465a-84f0-8936605c4af7', 'NAVIONICS', 'NAVIONICS MAPS', 'AlMujadamy Collaborating with NAVIONICS for Garmin Navionics Maps with unlimited Access for all users.', '2025-03-06-67c8ece5e0500.png', '2025-03-06 03:31:33', '2025-03-06 03:31:33'),
('ce6157b3-fac3-42ca-8490-93697229dffa', 'Mercury Marine', 'Mercury', 'in Collaboration with Mercury, Almujadamy Supports Diagnostics & Maintenance of Mercury Engines and Parts', '2025-03-09-67ccb3dd696e6.png', '2025-03-09 00:17:17', '2025-03-09 00:17:17'),
('d799d843-7db3-4387-86cd-4a450bda6d5e', 'Suzuki Marine', 'Suzuki', 'in Collaboration with Suzuki, Almujadamy Supports Diagnostics & Maintenance of Suzuki Engines and Parts', '2025-03-09-67ccb4743afa8.png', '2025-03-09 00:19:48', '2025-03-09 00:19:48'),
('e1c58fe3-15ec-4028-bee9-ab9456bb443f', 'Empower Technology', 'Subsidiary of Empower State Holdings', 'Empower Technology is honored to be the Development Company of AlMujadamy Marine Rescue App - The First Rescue App in the word that supports Artificial intelligence that support the fast Authority responses All over Kuwait!', '2025-03-09-67ccc764d2d5f.png', '2025-03-09 01:40:36', '2025-03-09 01:40:36'),
('e8b2af54-fedc-436a-b926-ec8bb8d54a5f', 'YAMAHA Outboard', 'YAMAHA', 'in Collaboration with YAMAHA, Almujadamy Supports Diagnostics & Maintenance of YAMAHA Engines and Parts', '2025-03-09-67ccbcda28092.png', '2025-03-09 00:55:38', '2025-03-09 00:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `credit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `debit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(24,2) NOT NULL DEFAULT 0.00,
  `reference` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_02_28_094005_create_users_table', 1),
(9, '2022_02_28_094802_create_roles_table', 1),
(10, '2022_02_28_094823_create_user_roles_table', 1),
(11, '2022_03_01_092248_create_modules_table', 1),
(12, '2022_03_01_093500_create_role_modules_table', 1),
(13, '2022_03_05_085155_create_zones_table', 1),
(14, '2022_03_06_035439_create_categories_table', 1),
(15, '2022_03_06_042053_create_category_zone_table', 1),
(16, '2022_03_06_091813_create_discounts_table', 1),
(17, '2022_03_06_092202_create_services_table', 1),
(18, '2022_03_06_094413_create_variations_table', 1),
(19, '2022_03_07_063157_create_discount_types_table', 1),
(21, '2022_03_07_065305_create_provider_sub_category_table', 1),
(22, '2022_03_07_090055_create_coupons_table', 1),
(23, '2022_03_07_110744_create_campaigns_table', 1),
(24, '2022_03_08_052530_create_banners_table', 1),
(25, '2022_03_08_090735_create_transactions_table', 1),
(26, '2022_03_10_074138_create_accounts_table', 1),
(27, '2022_05_09_122054_add_variant_key_in_variation', 2),
(28, '2022_05_12_100348_create_faqs_table', 3),
(29, '2022_05_18_041330_discount_table_col_modify', 4),
(30, '2022_05_21_035041_add_coupon_type', 5),
(31, '2022_05_22_120123_add_banner_redirection_link', 6),
(33, '2022_05_24_043332_remove_and_reformat_urder_table_col', 8),
(34, '2022_03_07_064337_create_providers_table', 9),
(35, '2022_05_25_054015_create_business_settings_table', 10),
(36, '2022_06_05_061932_create_bookings_table', 11),
(37, '2022_06_05_063828_create_booking_details_table', 11),
(38, '2022_06_05_065027_create_booking_status_histories_table', 11),
(39, '2022_06_05_065040_create_booking_schedule_histories_table', 11),
(40, '2022_06_08_070555_add_status_col_toRole', 12),
(41, '2022_06_11_074614_category_sub_added_booking', 13),
(42, '2022_06_11_110610_create_user_zones_table', 13),
(43, '2022_06_12_034552_create_user_addresses_table', 13),
(44, '2022_06_13_120346_add_column_is_approved_to_provider_table', 14),
(45, '2022_06_14_104816_create_bank_details_table', 15),
(46, '2022_06_15_025832_role_table_customization', 16),
(47, '2022_06_15_043227_create_subscribed_services_table', 16),
(48, '2022_06_16_060054_tnx_add', 17),
(49, '2022_06_16_060137_acc_add', 18),
(51, '2022_06_18_052537_create_reviews_table', 19),
(52, '2022_06_18_095222_create_withdraw_requests_table', 20),
(53, '2022_06_16_094936_create_servicemen_table', 21),
(54, '2022_06_19_063119_add_serviceman_col', 22),
(55, '2022_06_20_085647_add_col_to_serviceman', 23),
(56, '2022_06_22_082434_create_carts_table', 24),
(57, '2022_06_22_121556_create_cart_service_infos_table', 24),
(58, '2022_06_22_090257_column_add_to_withdraw_request_table', 25),
(59, '2022_07_03_065118_add_zone_id_in_providers', 26),
(61, '2022_07_17_064031_add_addres_type', 27),
(62, '2022_07_17_071324_add_addres_type1', 27),
(63, '2022_07_19_040550_change-col-name', 28),
(64, '2022_07_03_095424_create_push_notifications_table', 29),
(65, '2022_07_21_050907_pass_reset_table_col_add', 30),
(66, '2022_07_21_054008_pass_reset_table_col_add1', 30),
(67, '2022_07_21_104205_add_booking_id_col', 31),
(68, '2022_07_24_051517_add_cus_col_in_review', 32),
(69, '2022_07_31_093836_create_channel_lists_table', 33),
(70, '2022_07_31_093916_create_channel_users_table', 33),
(71, '2022_07_31_094036_create_channel_conversations_table', 33),
(72, '2022_07_31_104246_create_conversation_files_table', 33),
(73, '2022_07_31_113436_add_new_col_campaign', 33),
(74, '2022_08_02_054322_update_col_type', 34),
(75, '2022_08_06_031433_add_col_in_booking_table', 35),
(76, '2022_08_06_031649_add_col_in_booking_details_table', 35),
(77, '2022_08_06_045001_remove_col_from_user', 36),
(78, '2022_08_21_031258_add_col_to_channel_list', 37),
(79, '2022_08_21_033729_add_col_to_channel_user_table', 37),
(80, '2022_08_23_060744_col_add_to_tnx_table', 38),
(81, '2022_08_28_044249_col_change_to_business_settings_table', 39),
(82, '2022_08_31_070329_col_add_to_booking_details_table', 40),
(83, '2022_09_01_135800_create_user_verifications_table', 41),
(84, '2022_09_12_062925_col_add_to_booking_table', 42),
(85, '2022_09_17_185044_add_col_to_bank_destails', 43),
(86, '2022_09_21_235326_col_add_to_withdraw_requests_table', 44),
(87, '2022_10_03_175305_add_zone_id_in_address', 44),
(88, '2022_11_21_175412_add_col_to_withdraw_requests_table', 45),
(89, '2022_11_21_230747_create_withdrawal_methods_table', 45),
(90, '2022_11_29_232809_create_booking_details_amounts_table', 45),
(91, '2022_12_05_184417_col_add_to_services_table', 45),
(92, '2022_12_06_002432_create_recent_views_table', 45),
(93, '2022_12_08_201359_create_recent_searches_table', 45),
(94, '2022_12_26_115139_add_col_to_accounts_table', 45),
(95, '2023_01_16_152849_add_col_to_booking_details_amounts_table', 45),
(96, '2023_01_24_230519_add_col_to_users_table', 46),
(97, '2023_01_25_195038_add_col_to_transactions_table', 46),
(98, '2023_01_26_174101_Create_loyalty_point_transactions_table', 46),
(99, '2023_01_27_001826_add_col_to_categories_table', 46),
(100, '2023_01_29_011739_create_tags_table', 46),
(101, '2023_01_29_162753_create_table_service_tag', 46),
(102, '2023_02_02_231012_create_service_requests_table', 46),
(103, '2023_02_05_200352_create_added_to_carts_table', 46),
(104, '2023_02_05_214409_create_visited_services_table', 46),
(105, '2023_02_05_225314_create_searched_data_table', 46),
(106, '2023_02_08_174014_add_provider_id_to_carts_table', 46),
(107, '2023_04_29_185100_create_posts_table', 47),
(108, '2023_04_29_185107_create_post_additional_instructions_table', 47),
(109, '2023_04_29_185114_create_post_bids_table', 47),
(110, '2023_04_29_185127_create_ignored_posts_table', 47),
(111, '2023_05_08_161525_add_col_to_services_table', 47),
(112, '2023_05_16_130004_add_col_to_providers_table', 47),
(113, '2023_05_16_231127_create_coupon_customers_table', 47),
(115, '2023_05_21_095745_add_col_to_users_table', 47),
(116, '2023_05_21_101102_add_col_to_user_verifications_table', 47),
(117, '2023_05_29_184809_add_col_to_posts_table', 48),
(118, '2023_05_30_102205_add_additional_charge_col_to_bookings_table', 48),
(119, '2023_05_31_103005_add_col_to_bookings_table', 49),
(120, '2023_05_17_144146_add_col_to_posts_table', 50),
(121, '2023_06_11_221500_add_removed_coupon_amount_col_in_booking_table', 51),
(122, '2023_06_26_154947_add_column_to_bookings_table', 51),
(123, '2023_07_12_105915_add_is_guest_column_to_carts_table', 51),
(124, '2023_07_12_105941_add_is_guest_column_to_added_to_carts_table', 51),
(125, '2023_07_12_110032_add_is_guest_column_to_bookings_table', 51),
(126, '2023_07_13_094305_add_is_guest_column_to_transactions_table', 51),
(127, '2023_07_13_094337_add_is_guest_column_to_booking_schedule_histories_table', 51),
(128, '2023_07_13_094413_add_is_guest_column_to_booking_status_histories_table', 51),
(129, '2023_07_13_105419_create_guests_table', 51),
(130, '2023_07_13_180332_add_is_guest_column_to_added_to_user_addresses_table', 51),
(131, '2023_07_17_142048_add_is_verified_col_to_bookings_table', 51),
(132, '2023_07_17_184044_add_is_guest_col_to_posts_table', 51),
(133, '2023_07_19_111811_add_house_and_street_col_in_user_addresses_table', 51),
(134, '2023_07_29_133252_create_booking_partial_payments_table', 51),
(135, '2023_08_06_152659_create_offline_payments_table', 51),
(136, '2023_08_07_153312_create_booking_offline_payments_table', 51),
(137, '2023_08_08_094402_create_bonuses_table', 51),
(138, '2023_08_10_182955_add_fee_column_to_bookings_table', 51),
(139, '2023_08_24_132317_create_provider_settings_table', 51),
(140, '2023_10_31_171211_create_translations_table', 52),
(141, '2023_11_07_182712_create_landing_page_features_table', 52),
(142, '2023_11_08_092558_create_landing_page_specialities_table', 52),
(143, '2023_11_08_094847_create_landing_page_testimonials_table', 52),
(144, '2023_11_08_174249_add_current_language_to_users_table', 52),
(145, '2023_11_08_174418_add_current_language_to_guests_table', 52),
(146, '2023_11_16_110101_create_data_settings_table', 52),
(147, '2023_11_19_112426_add_is_suspended_col_to_providers_table', 52),
(148, '2023_11_19_155434_add_soft_deletes_to_providers_table', 52),
(149, '2023_12_20_135725_add_service_availability_to_providers_table', 53),
(150, '2024_01_28_080833_create_booking_additional_information_table', 54),
(151, '2024_01_29_115651_create_post_additional_information_table', 54),
(152, '2024_02_10_183058_rename_file_name_col_to_conversation_files_table', 54),
(153, '2024_02_10_184243_add_original_file_name_col_to_conversation_files_table', 54),
(154, '2024_02_15_143856_make_col_nullable_to_service_requests_table', 54),
(155, '2024_02_29_140738_add_col_to_booking_offline_payments_table', 54),
(157, '2024_04_20_170043_create_vendors_table', 55),
(158, '2024_06_25_232031_create_products_table', 56),
(159, '2024_08_20_091441_add_boat_name_to_users_table', 57),
(160, '2024_08_20_092329_add_boat_number_to_users_table', 57),
(161, '2024_08_22_115512_add_cost_to_products_table', 57),
(162, '2024_08_25_224021_add_permissions_to_users_table', 57),
(163, '2024_10_03_095426_add_is_active_to_products_table', 58),
(164, '2024_10_06_095908_add_categories_to_products_table', 59);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` char(36) NOT NULL,
  `module_name` varchar(191) DEFAULT NULL,
  `module_display_name` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00b85a43ae562db23f0514aeaeac12acb5b7fcf8bdca60a8a6709412bff64b8f7d8c7c0587216ee5', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:56:59', '2024-09-10 11:56:59', '2025-09-10 12:56:59'),
('056225ca55faa9e8852eb80345e534460c4eb0069bbc8a3354277f7a5b0a65be63d4aacb5f3a32da', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 05:04:21', '2024-09-05 05:04:21', '2025-09-05 06:04:21'),
('074650f1ef24f22c624b73d38712336ee19344aa085933a3c55b83a3a860797ea825d18635dd20a6', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-12-06 08:58:19', '2024-12-06 08:58:19', '2025-12-06 08:58:19'),
('117108e131cd4f8fbe4509d83234a386d217264aef55d33782c3a9e35bdf8eaffa5edbb66a44bdb6', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:20:22', '2024-09-10 12:20:22', '2025-09-10 13:20:22'),
('1248f1c781fd6f2a5700f43cd08865af23096a83229abf74ccd220f8284b2de8c48d588f5495e07e', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-23 16:43:59', '2024-09-23 16:43:59', '2025-09-23 17:43:59'),
('12ed514813e1f5eeaa33cdedc1baf8c957f43f60e6a44b178b224162bef3478d2e94f5ab837f9de1', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:57:21', '2024-09-10 11:57:21', '2025-09-10 12:57:21'),
('1c59e8de9eae6d9b23d968cf4fc487574ed5dd11064f27d970f9b020a479327fddaf0835d643c7b6', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 00:53:39', '2024-09-05 00:53:39', '2025-09-05 01:53:39'),
('1f94dd782987e4efc7c989149d297db2dabd4aeb5e9fb5ecf489a4af102fc719f76f18604e50095e', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 05:49:25', '2024-09-05 05:49:25', '2025-09-05 06:49:25'),
('218f88e0e3844f26f9a81f624d18e1f61786f448b75f0b7d1cfe3051ac3410dd093c942c55dd0bae', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-12-06 08:53:41', '2024-12-06 08:53:41', '2025-12-06 08:53:41'),
('226cf6e72d0b8e23b701b8f719880311a3964b4ce37411bdbd771bc045c7a65214e4a1461eccab8a', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 03:14:46', '2024-09-05 03:14:46', '2025-09-05 04:14:46'),
('25cfba54536d010703a3e3497dc9907c905dc7c72a0a096f715742eaca0cb6435f8df4805a9b7081', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:58:01', '2024-09-10 11:58:01', '2025-09-10 12:58:01'),
('273359cef705234b4ac55ab61464dba046d970fdbe24953bae8f17aba95f88759d17660468b68551', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:06:27', '2024-09-10 12:06:27', '2025-09-10 13:06:27'),
('2842590098264fc8b7927a575e3b28835262efa1f0e3cb835c29faa40f713f5d3ce39205b8a3f7e1', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 13:03:39', '2024-09-10 13:03:39', '2025-09-10 14:03:39'),
('2ab157b190626af09006bd46b8cb4f0b272270c65933b89803d8aa2f21984f12a7c3a0b77eb36328', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:19:07', '2024-09-10 12:19:07', '2025-09-10 13:19:07'),
('2fbb75b970ebb263c8b238819634e253680124bd448c33bfd9a477bc23a2ef6660a3a78824986051', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:36:57', '2024-09-10 12:36:57', '2025-09-10 13:36:57'),
('31f1ced65fa8689bf44918dcc3270630b174dc5bdaf80d07fbbae3e3e345b1ca371c710c11095f2d', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 09:31:38', '2024-09-05 09:31:38', '2025-09-05 10:31:38'),
('331b42e8f52e8fad56937f765e27c60226cca1d437842b23ca232164d1617d8df3e6d0cd5dac5d03', 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-11 12:11:49', '2024-09-11 12:11:49', '2025-09-11 13:11:49'),
('345231527b0691a30af53466446600a6d0df852ea52335d3fd5705b18766146de77bec1c32944fc8', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 09:22:12', '2024-09-05 09:22:12', '2025-09-05 10:22:12'),
('45483562fe525c91f5e69f4f88f015faf545b2bdc4e8ec39252ff1f732a4c9d986b92c073c3542e0', '82f44630-e829-4799-a84e-e6c72921d12f', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-07 21:21:39', '2024-09-07 21:21:39', '2025-09-07 22:21:39'),
('4c46cf419cad432667349bdf129a86948f0f61d5fefd717d41947a53ac8f598fe23f1f65cc4a498e', '82f44630-e829-4799-a84e-e6c72921d12f', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 12:14:24', '2024-09-05 12:14:24', '2025-09-05 13:14:24'),
('4e9a9e31a49de95e1f5efa776642d7245bf266ab1bff6385ab0cdc9279adda2426a0421a2be1cfb7', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-04 23:56:04', '2024-09-04 23:56:04', '2025-09-05 00:56:04'),
('53adf8b49dea3c36334a91f5dd9c07814ea6ac43a7150c6d6f2c42406039ce2cab485c5cb5a83ea1', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-09 13:01:25', '2024-09-09 13:01:25', '2025-09-09 14:01:25'),
('542a71cc36767a10976fe0b87e2fea925575bab10373dc5974fa0036cd3fde8f6883bdacad6da6f8', 'f1a51915-905b-4e68-8761-0984f2243d49', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-12-02 08:09:40', '2024-12-02 08:09:40', '2025-12-02 08:09:40'),
('61b2b4e85630d9417a22a8e358a241bbdf7a29c5da16197c1319d90b10da58b86df349b4aa3f3726', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 06:12:08', '2024-09-05 06:12:08', '2025-09-05 07:12:08'),
('61cb80912e6f2d705893f0ba4974cfda1ac501aeec81e8190cc727cdf20608653b6e950122e9c215', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-11 10:04:08', '2024-09-11 10:04:08', '2025-09-11 11:04:08'),
('6a4f7d3d9734a8ddab950ed98756f1105931d88591837146bda7bfca1ccc4637f23ed0e21edc2639', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:01:43', '2024-09-10 12:01:43', '2025-09-10 13:01:43'),
('6c8ad1d6d797cf4344a74fd9716e9238dfa22bcc86d4e6d25c673248f486f156f47dc11cf6350a50', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 03:09:28', '2024-09-05 03:09:28', '2025-09-05 04:09:28'),
('6d9b02ab18247b20484dc42cceedf5e60133fca86869b3edf9d8c017d5f84b000bd80f4b2d74c9e9', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 1, '2024-12-05 14:31:03', '2024-12-05 14:33:20', '2025-12-05 14:31:03'),
('780ad0f9cd97103dc1081131d3bee561b8bcaede3ff90382ae60319090b7129065098f2b97a3c512', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-23 16:49:02', '2024-09-23 16:49:02', '2025-09-23 17:49:02'),
('7a9d10d031a22466c1f3962ff7408e5be5c5c0295184f547c1bdc533e7b0738fa582fad9c1aacc61', '82f44630-e829-4799-a84e-e6c72921d12f', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-07 19:59:32', '2024-09-07 19:59:32', '2025-09-07 20:59:32'),
('7e33644337267a01dc9a529f41dbd9b6e7ca89acd7bd28c52b64cfef7ca28471fbfe08ad4cfd1491', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-10-25 20:35:10', '2024-10-25 20:35:10', '2025-10-25 21:35:10'),
('88c6130c9d722145aea3556ed78660669e1606ee93c13faef5c3493b625ed16f4d3255647b1cd761', '82f44630-e829-4799-a84e-e6c72921d12f', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 18:28:37', '2024-09-05 18:28:37', '2025-09-05 19:28:37'),
('8e80d835b3705eb9aaee5bf692a46c7ced2c2d9eb40dcf85ef2780cea32903c0dae13f774d2f828b', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-14 11:15:11', '2024-09-14 11:15:11', '2025-09-14 12:15:11'),
('91ec57c4503211410670ab9821910255f6ecca6f2aea0e388fbc0bba3995d4bd5d5376ab9fa2e264', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:51:45', '2024-09-10 11:51:45', '2025-09-10 12:51:45'),
('92ab1caa0419d93261cf051064ac81e2c6cc7408d834575eae1649ca0b1492a0281ca4d14c591111', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:59:25', '2024-09-10 11:59:25', '2025-09-10 12:59:25'),
('93b287c76cbf9b34f17d761b13a6a672ed9194df06f8755b28f6b4d60d379e33cadc157feb62b0bd', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:57:34', '2024-09-10 11:57:34', '2025-09-10 12:57:34'),
('98664ba45698329f6b29bfff4c59470c9a839be5c525d3ebd9e07d237e35c5ac01336a2a95946b5a', 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-17 17:39:54', '2024-09-17 17:39:54', '2025-09-17 18:39:54'),
('98b5f504892071c5c9e522052c4cad5ee4547bcaadf2dec0fddbba2231c2e5f67c1e9109d3a39351', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:47:50', '2024-09-10 11:47:50', '2025-09-10 12:47:50'),
('992f012a6e6920139a784126b529b2cc12665cdf2c2eab1caf01604b0942f76833c84132b1301fe0', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-12-03 09:59:49', '2024-12-03 09:59:49', '2025-12-03 09:59:49'),
('a46b2656bcb7f01ce985c5006627940f9c92e0900e34d2694aeb4533a2fa1a49cdbe33a59164d5ff', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:15:15', '2024-09-10 12:15:15', '2025-09-10 13:15:15'),
('a91a07be1df001c6d7a8b6623cecef4a755478aa8f63f868b09b9201dc8922ce09193a77938fce9d', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-10-29 19:35:13', '2024-10-29 19:35:13', '2025-10-29 19:35:13'),
('ab9751a3c213352244c35dec78b44b34db2cccf9d6e5c9c536074a98932599ee8f8ca5171e2bde69', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:18:59', '2024-09-10 12:18:59', '2025-09-10 13:18:59'),
('acc078dd1987810b5fd425db8b49d000f34b6cbd74ad6865b560e9dd27d423c6862ebb3ccc14474f', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:54:54', '2024-09-10 11:54:54', '2025-09-10 12:54:54'),
('ada7df7fd09ff3efca4d8feba1d24b25f1278c82e0bda481028c8bebba5399720d196087ebeca31c', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:58:31', '2024-09-10 11:58:31', '2025-09-10 12:58:31'),
('ae0612a60160677cf7f81bfe822e386010d035a53217560231466933657c1e3fac6393f6b43dea43', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 09:25:08', '2024-09-05 09:25:08', '2025-09-05 10:25:08'),
('ae16f66d141ce68f3b9d8f0e7f73b052d42cf5416def8f7a72cf9e44716142eacff0977efaaa6adb', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-10-29 19:33:44', '2024-10-29 19:33:44', '2025-10-29 19:33:44'),
('ae9110091d60d93a19b35b39f58b0a710f2c483962aff4d47b758e3d5ddaf4462ec0d7f0bd10cdc0', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:57:42', '2024-09-10 11:57:42', '2025-09-10 12:57:42'),
('b006a1a1765a0aafcbc71a0f85058e302c3b4e6fc09ad1a1ebd8995bd877f10a45784696c6acb5c7', 'a0c4d184-2730-4309-bd34-e11a979ff06f', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-08-06 06:45:36', '2024-08-06 06:45:36', '2025-08-06 07:45:36'),
('b98e2daf513eb08336028919e502cd00cda040d57d00b3f93bcea5d3a1943e2f1242fb47a3af7954', '7e3c4471-507f-418c-97dc-221318cc64ab', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-12-05 12:29:04', '2024-12-05 12:29:04', '2025-12-05 12:29:04'),
('ba29cab269a6b0d3b8e08017bea82b35e24872b06c50787bd203a96ce883cc369650604990fea3ac', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 04:55:05', '2024-09-05 04:55:05', '2025-09-05 05:55:05'),
('bad7b29ebcb601a747775216c38bd3217ccfe6e97bca4e915c06f7aa326962af34daf5031047a790', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 05:51:20', '2024-09-05 05:51:20', '2025-09-05 06:51:20'),
('bbb77e7afb958a18ef69c0935a1cc1181151d3ad09e9817873f66ae9d92b9eadfee5ad2398773081', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 03:28:19', '2024-09-05 03:28:19', '2025-09-05 04:28:19'),
('bc10ac7074fe1a576f41761ba0dc2960d62e7bdced3a439d6b1d162f81779bbfb8ad697cd259faee', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-24 12:54:00', '2024-09-24 12:54:00', '2025-09-24 13:54:00'),
('bf67498b6640f0ca1f23fffabdf404057d52ea3cfdda5a54be45199bc51f711be2405f7ec99ac3c1', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:56:04', '2024-09-10 11:56:04', '2025-09-10 12:56:04'),
('c2fd89cc1f34da0e662a004d67491e7ec0503356d2e727b97cc7ad4794aac5c3259ac23e516ee96d', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-11-04 14:55:48', '2024-11-04 14:55:48', '2025-11-04 14:55:48'),
('c8781c53a223995839c59a0a98e12817b13dd3be7526762027513c1c3490139766a4ac3561cddcb1', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:58:46', '2024-09-10 11:58:46', '2025-09-10 12:58:46'),
('ccf825d7db727c5a5c5ee194fde9ebf9a6288939eb1021493aae0cb9562e4d1ae06707e0e2d09bdb', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 1, '2024-12-05 09:44:58', '2024-12-05 14:28:20', '2025-12-05 09:44:58'),
('d8cbea779d266b2133a571ea50e677ad0b66370608b4812fef33d2c31ee8ec76c43ee38890325e12', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 11:47:06', '2024-09-10 11:47:07', '2025-09-10 12:47:06'),
('da6b828f40f51bb402b1cc0e634e591896fcfc4359da8dc9fd86a33ba21aa56d1830b537c570e3ea', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-10-25 17:19:45', '2024-10-25 17:19:45', '2025-10-25 18:19:45'),
('dd7cf9194881215bf75b222e70c53c0ecfdd74d09b26ec5eda7058c84fa20f9835e45939de6dfc05', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:01:04', '2024-09-10 12:01:04', '2025-09-10 13:01:04'),
('e2d2c06d2e66bf70adb7375e8d4e49fb613a1826ba8491d301d99dcea22b915a571e10dd08cff262', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-11 11:17:00', '2024-09-11 11:17:00', '2025-09-11 12:17:00'),
('e9018958eab10e9d80d2d785c9adcdc3910d125b3b50226d49554a5842ae6623cb013eaa3a7434cc', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 08:42:41', '2024-09-05 08:42:41', '2025-09-05 09:42:41'),
('ec2246b2074a53d0c269b54b263ed95bc51eefc555a3d27a018ef8ae14556a23fbd42b8c80d25aa9', '7e3c4471-507f-418c-97dc-221318cc64ab', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-12-09 10:42:16', '2024-12-09 10:42:16', '2025-12-09 10:42:16'),
('efc09568ee92a9b63eda4e1abf899687ef8ed346e1e12d65e2b749cc0b4e8004d821e07271bcd282', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-23 16:48:59', '2024-09-23 16:48:59', '2025-09-23 17:48:59'),
('f0d18de8377c995556078aac97f489e4c0004519209f4ecde4239872fb121af56da507fc15a9df12', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 1, '2024-09-23 16:50:52', '2024-10-08 09:48:15', '2025-09-23 17:50:52'),
('f19d67f295da91d395b8687896b9680d15fec4e38f43e5670a71147e949cc804855307959d2cda14', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-09 12:14:56', '2024-09-09 12:14:56', '2025-09-09 13:14:56'),
('f7681f3a5679e545fd4cce9087d948b6f4da4877c0ae0a91e351d7ff4e56580e93f2d32e35818379', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 05:46:03', '2024-09-05 05:46:03', '2025-09-05 06:46:03'),
('fd02a5a4b1777cf14a67e3950414f94b11f8901300abf7abd03cf3395cbfff6102b4dd9bf4227df4', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToCustomer', '[]', 0, '2024-09-05 00:06:22', '2024-09-05 00:06:22', '2025-09-05 01:06:22'),
('ffdfcc12c48ec5f49b9791cd489f6d19a74763a16385da618b99abbe2fc49e0ef3dc9cbb4247add9', '992de8d3-3809-4c2a-8713-fe108127ea52', '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', 'AccessToServicemanApp', '[]', 0, '2024-09-10 12:32:58', '2024-09-10 12:32:58', '2025-09-10 13:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', NULL, 'Laravel Personal Access Client', '75kQskqekdipFpesfWZZv85qPo2cT8aMsyWgsIrQ', NULL, 'http://localhost', 1, 0, 0, '2022-04-04 02:13:15', '2022-04-04 02:13:15'),
('95faaac6-c56a-4873-a880-79d252d65ab1', NULL, 'Laravel Password Grant Client', 'hnFqAvObupsF3BXW4T6MxD4IhvKCZPRzyIqEFciB', 'users', 'http://localhost', 0, 1, 0, '2022-04-04 02:13:15', '2022-04-04 02:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '95faaac6-c1d2-4d4c-beb1-04196dd2fa8e', '2022-04-04 02:13:15', '2022-04-04 02:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` char(36) NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `payment_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payment_information`)),
  `customer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customer_information`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `payer_id`, `receiver_id`, `payment_amount`, `gateway_callback_url`, `success_hook`, `failure_hook`, `transaction_id`, `currency_code`, `payment_method`, `additional_data`, `is_paid`, `created_at`, `updated_at`, `payer_information`, `external_redirect_link`, `receiver_information`, `attribute_id`, `attribute`, `payment_platform`) VALUES
('e9367155-ff3c-4aef-82d6-5262c178a1b2', '3eb273f9-3210-4246-9e50-1e6b1f210e44', NULL, 110.00, NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'KWD', 'stripe', '{\"access_token\":\"M2ViMjczZjktMzIxMC00MjQ2LTllNTAtMWU2YjFmMjEwZTQ0\",\"zone_id\":\"a1614dbe-4732-11ee-9702-dee6e8d77be4\",\"service_schedule\":\"2024-09-04T21:28:52\",\"service_address_id\":7,\"service_address\":\"eyJpZCI6Im51bGwiLCJhZGRyZXNzX3R5cGUiOiJvdGhlcnMiLCJhZGRyZXNzX2xhYmVsIjoiaG9tZSIsImNvbnRhY3RfcGVyc29uX25hbWUiOiJZYXphbiBIYWxhaXFhIiwiY29udGFjdF9wZXJzb25fbnVtYmVyIjoiKzk2Mjc4NjUyNzM2NiIsImFkZHJlc3MiOiJVbmtub3duIExvY2F0aW9uIEZvdW5kIiwibGF0IjoiMzEuOTI0OTMyNiIsImxvbiI6IjM1Ljk3MTE4NzciLCJjaXR5IjoiIiwiemlwX2NvZGUiOiIiLCJjb3VudHJ5IjoiIiwiem9uZV9pZCI6ImExNjE0ZGJlLTQ3MzItMTFlZS05NzAyLWRlZTZlOGQ3N2JlNCIsIl9tZXRob2QiOm51bGwsInN0cmVldCI6IiIsImhvdXNlIjoiIiwiZmxvb3IiOm51bGwsImF2YWlsYWJsZV9zZXJ2aWNlX2NvdW50IjozfQ==\",\"payment_method\":\"stripe\",\"callback\":\"https:\\/\\/mujadamy.zinutech.com\",\"is_partial\":\"0\",\"payment_platform\":\"app\",\"customer\":\"eyJmaXJzdF9uYW1lIjoiWWF6YW4iLCJsYXN0X25hbWUiOiJIYWxhaXFhIiwicGhvbmUiOiIrOTYyNzg2NTI3MzY2IiwiZW1haWwiOiJ5YXphbmFsaGFsYWlxYUBnbWFpbC5jb20ifQ==\"}', 0, '2024-09-05 03:29:12', '2024-09-05 03:29:12', '{\"name\":\"Yazan Halaiqa\",\"email\":\"yazanalhalaiqa@gmail.com\",\"phone\":\"+962786527366\",\"address\":\"\"}', 'https://mujadamy.zinutech.com', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1725463752', 'booking_id', 'app'),
('200f8e8a-7c15-4ea7-84e7-4a35ba6fa928', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', NULL, 10.00, NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'KWD', 'stripe', '{\"access_token\":\"ZjllZjNjNTItY2JkNi00ZDhjLWJkYTktYzRmMTg2ZWExNThj\",\"zone_id\":\"a1614dbe-4732-11ee-9702-dee6e8d77be4\",\"service_schedule\":\"2024-09-04T23:05:29\",\"service_address_id\":10,\"service_address\":\"eyJpZCI6Im51bGwiLCJhZGRyZXNzX3R5cGUiOiJvdGhlcnMiLCJhZGRyZXNzX2xhYmVsIjoiaG9tZSIsImNvbnRhY3RfcGVyc29uX25hbWUiOiJ5YXNlciBtZWxoZW0iLCJjb250YWN0X3BlcnNvbl9udW1iZXIiOiIrMTA3NzY3OTA4MDIiLCJhZGRyZXNzIjoiVW5rbm93biBMb2NhdGlvbiBGb3VuZCIsImxhdCI6IjMxLjk1NTUiLCJsb24iOiIzNS45NDM1IiwiY2l0eSI6IiIsInppcF9jb2RlIjoiIiwiY291bnRyeSI6IiIsInpvbmVfaWQiOiJhMTYxNGRiZS00NzMyLTExZWUtOTcwMi1kZWU2ZThkNzdiZTQiLCJfbWV0aG9kIjpudWxsLCJzdHJlZXQiOiIiLCJob3VzZSI6IiIsImZsb29yIjpudWxsLCJhdmFpbGFibGVfc2VydmljZV9jb3VudCI6M30=\",\"payment_method\":\"stripe\",\"callback\":\"https:\\/\\/mujadamy.zinutech.com\",\"is_partial\":\"0\",\"payment_platform\":\"app\",\"customer\":\"eyJmaXJzdF9uYW1lIjoieWFzZXIiLCJsYXN0X25hbWUiOiJtZWxoZW0iLCJwaG9uZSI6IisxMDc3Njc5MDgwMiIsImVtYWlsIjoieWFzc2VyQHppbnV0ZWNoLmNvbSJ9\"}', 0, '2024-09-05 05:09:56', '2024-09-05 05:09:56', '{\"name\":\"yaser melhem\",\"email\":\"yasser@zinutech.com\",\"phone\":\"+10776790802\",\"address\":\"\"}', 'https://mujadamy.zinutech.com', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1725469796', 'booking_id', 'app'),
('4403abd8-93dc-4926-9959-460741af2d20', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 100.00, NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'KWD', 'paystack', '{\"access_token\":\"NWNiOWU2ZmQtNzdmMS00Yzc0LWJhZDEtNThlMGQ0YzJlY2Ey\",\"zone_id\":\"a1614dbe-4732-11ee-9702-dee6e8d77be4\",\"service_schedule\":\"2024-12-05T15:43:49\",\"service_address_id\":49,\"service_address\":\"eyJpZCI6Im51bGwiLCJhZGRyZXNzX3R5cGUiOiJvdGhlcnMiLCJhZGRyZXNzX2xhYmVsIjoiaG9tZSIsImNvbnRhY3RfcGVyc29uX25hbWUiOiJTdWRoYW5zaHUgTmVnaSIsImNvbnRhY3RfcGVyc29uX251bWJlciI6Iis5MTk3NTk4NTE5ODgiLCJhZGRyZXNzIjoiVW5rbm93biBMb2NhdGlvbiBGb3VuZCIsImxhdCI6IjI5LjIwMDMxNTciLCJsb24iOiI3OS40ODY2NDE4IiwiY2l0eSI6IiIsInppcF9jb2RlIjoiIiwiY291bnRyeSI6IiIsInpvbmVfaWQiOiJhMTYxNGRiZS00NzMyLTExZWUtOTcwMi1kZWU2ZThkNzdiZTQiLCJfbWV0aG9kIjpudWxsLCJzdHJlZXQiOiIiLCJob3VzZSI6IiIsImZsb29yIjpudWxsLCJhdmFpbGFibGVfc2VydmljZV9jb3VudCI6NH0=\",\"payment_method\":\"paystack\",\"callback\":\"http:\\/\\/localhost:5000\\/checkout\",\"is_partial\":\"0\",\"payment_platform\":\"web\",\"customer\":\"eyJmaXJzdF9uYW1lIjoiU3VkaGFuc2h1IiwibGFzdF9uYW1lIjoiTmVnaSIsInBob25lIjoiKzkxOTc1OTg1MTk4OCIsImVtYWlsIjoibmVnaUBuZWdpLmNvbSJ9\"}', 0, '2024-12-05 10:14:02', '2024-12-05 10:14:02', '{\"name\":\"Sudhanshu Negi\",\"email\":\"negi@negi.com\",\"phone\":\"+919759851988\",\"address\":\"\"}', 'http://localhost:5000/checkout', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733382842', 'booking_id', 'web'),
('e28a1d5d-4463-4278-935c-2c84bbd44533', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 50.00, NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'KWD', 'stripe', '{\"access_token\":\"NWNiOWU2ZmQtNzdmMS00Yzc0LWJhZDEtNThlMGQ0YzJlY2Ey\",\"zone_id\":\"a1614dbe-4732-11ee-9702-dee6e8d77be4\",\"service_schedule\":\"2024-12-08T18:08:00\",\"service_address_id\":54,\"service_address\":\"eyJpZCI6bnVsbCwiYWRkcmVzc190eXBlIjoic2VydmljZSIsImFkZHJlc3NfbGFiZWwiOiJob21lIiwiY29udGFjdF9wZXJzb25fbmFtZSI6IlNVZCIsImNvbnRhY3RfcGVyc29uX251bWJlciI6Iis5NjU2NjA0NDY2MCIsImFkZHJlc3MiOiJGbGF0IDMwMzUiLCJsYXQiOiIwIiwibG9uIjoiMCIsImNpdHkiOiJSaXlhZGgiLCJ6aXBfY29kZSI6IjI3MjcyIiwiY291bnRyeSI6IlNhdWRpIiwiem9uZV9pZCI6ImExNjE0ZGJlLTQ3MzItMTFlZS05NzAyLWRlZTZlOGQ3N2JlNCIsIl9tZXRob2QiOm51bGwsInN0cmVldCI6IkFsLUtoYWJoaXIiLCJob3VzZSI6Ijg5NDg2NCIsImZsb29yIjoiMSIsImF2YWlsYWJsZV9zZXJ2aWNlX2NvdW50IjpudWxsfQ==\",\"payment_method\":\"stripe\",\"callback\":\"http:\\/\\/localhost:5000\\/checkout\",\"is_partial\":\"0\",\"payment_platform\":\"web\",\"customer\":\"eyJmaXJzdF9uYW1lIjoiU3VkaGFuc2h1IiwibGFzdF9uYW1lIjoiTmVnaSIsInBob25lIjoiKzkxOTc1OTg1MTk4OCIsImVtYWlsIjoibmVnaUBuZWdpLmNvbSJ9\"}', 0, '2024-12-05 12:41:33', '2024-12-05 12:41:33', '{\"name\":\"Sudhanshu Negi\",\"email\":\"negi@negi.com\",\"phone\":\"+919759851988\",\"address\":\"\"}', 'http://localhost:5000/checkout', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733391693', 'booking_id', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` char(36) NOT NULL,
  `service_description` text DEFAULT NULL,
  `booking_schedule` datetime DEFAULT NULL,
  `is_booked` tinyint(1) NOT NULL DEFAULT 0,
  `is_checked` tinyint(1) NOT NULL DEFAULT 0,
  `customer_user_id` char(36) NOT NULL,
  `service_id` char(36) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `sub_category_id` char(36) DEFAULT NULL,
  `service_address_id` char(36) DEFAULT NULL,
  `zone_id` char(36) DEFAULT NULL,
  `booking_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_additional_information`
--

CREATE TABLE `post_additional_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` char(36) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_additional_instructions`
--

CREATE TABLE `post_additional_instructions` (
  `id` char(36) NOT NULL,
  `details` text DEFAULT NULL,
  `post_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_bids`
--

CREATE TABLE `post_bids` (
  `id` char(36) NOT NULL,
  `offered_price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `provider_note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `post_id` char(36) NOT NULL,
  `provider_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` char(36) DEFAULT NULL,
  `sub_category_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `quantity`, `category_id`, `sub_category_id`, `created_at`, `updated_at`, `cost`, `is_active`) VALUES
(2, 'battery', 'products/pPY2labDLU8uoBi1XlNAdKJkGZKVYrywRH7k2Czj.jpg', '1', 50.00, 1, NULL, NULL, '2024-09-24 17:55:08', '2024-10-03 07:01:02', '20', 1),
(3, 'battery1', 'products/oOnEAtdFvhrnV9q2joDHXKk6XZs5jiiwPsLmJI8V.jpg', '1', 60.00, 1, NULL, NULL, '2024-09-24 17:57:03', '2024-11-04 16:30:18', '30', 1),
(5, 'test category', 'products/XQXFTDGvTqK4dKsMJ2PgCX1Rdz2rccLB6vxKgC4F.png', 'test category', 10.00, 25, '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', '2024-10-06 11:07:03', '2024-11-04 16:30:20', '5', 1),
(7, 'test 3', 'products/HQkpL6wUccSVTNVavQyyK0OgxGgLbtUpJ7JB4NGy.png', 'test', 1062.00, 0, 'fa7149c8-58ad-4e47-b7dc-7149a3c28ceb', NULL, '2024-10-08 06:48:58', '2024-11-04 16:30:22', '102', 1),
(8, 'Product Name DF', 'products/j7E0FxBgu0PmXbHq6KsA1I46UqobZxzk1JQJNqyf.png', 'Product Description DF', 150.00, 120, '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', '2024-10-08 09:01:24', '2024-11-04 16:30:25', '120', 1),
(9, 'Engine Oil', 'def.png', 'yamaha', 5.00, 100, 'fcc9a5a1-34f5-4693-b0a3-5d849403691e', '94c443c6-3118-45af-8ab7-54366ede18f4', '2024-11-02 14:55:28', '2024-11-04 16:31:06', '3', 1),
(10, 'spark plugs', '2024-11-04-6728cd1917011.png', 'spark plugs', 5.00, 100, 'fcc9a5a1-34f5-4693-b0a3-5d849403691e', '94c443c6-3118-45af-8ab7-54366ede18f4', '2024-11-04 16:33:13', '2024-11-06 15:25:27', '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_phone` varchar(25) DEFAULT NULL,
  `company_address` varchar(191) DEFAULT NULL,
  `company_email` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `contact_person_name` varchar(191) DEFAULT NULL,
  `contact_person_phone` varchar(25) DEFAULT NULL,
  `contact_person_email` varchar(191) DEFAULT NULL,
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `service_man_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `service_capacity_per_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `avg_rating` double(8,4) NOT NULL DEFAULT 0.0000,
  `commission_status` tinyint(1) NOT NULL DEFAULT 0,
  `commission_percentage` double(8,4) NOT NULL DEFAULT 0.0000,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `zone_id` char(36) DEFAULT NULL,
  `coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`coordinates`)),
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `service_availability` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `user_id`, `company_name`, `company_phone`, `company_address`, `company_email`, `logo`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `order_count`, `service_man_count`, `service_capacity_per_day`, `rating_count`, `avg_rating`, `commission_status`, `commission_percentage`, `is_active`, `created_at`, `updated_at`, `is_approved`, `zone_id`, `coordinates`, `is_suspended`, `deleted_at`, `service_availability`) VALUES
('09bbfbac-c840-4afd-9dc8-e2cbfeee57fa', 'a012a0ae-ec77-45db-9230-ec2d7a04bd76', 'Admin', '+962779788601', NULL, NULL, '2024-04-19-6622120aaa534.png', NULL, NULL, NULL, 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-04-19 16:41:14', '2024-04-19 16:46:08', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-04-19 16:46:08', 1),
('1c9de2b7-468f-43b5-8047-3ba82e9ec7e5', '96533152-fd99-4516-b067-5831fc350a1c', 'arafeh', '65486156651', NULL, 'arafeh@gmail.com', 'def.png', 'arafeh', '65486156651', 'arafeh@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-08-31 03:12:57', '2024-09-01 05:09:19', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-09-01 05:09:19', 1),
('25d99c35-3a5c-4880-8285-a62d0004fd24', '61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', 'Anas', '+1000', 'test', 'anas@anas.com', '2024-03-26-66025783e2015.png', 'anas', '+11111', 'anas@anas.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-03-26 15:05:07', '2024-04-19 16:39:26', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":\"35.12546\",\"longitude\":\"32.1254\"}', 0, '2024-04-19 16:39:26', 1),
('3533a22f-6e0b-4b47-8aea-7c6c554b7dd3', '9d1d70d9-c0f9-45c2-a462-3271610cf059', 'Anas', '779788601', NULL, 'anas.shahrori85@gmail.com', '2024-04-19-66221cfe4a1ac.png', 'Anas', '779788601', 'anas.shahrori85@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-04-19 17:27:58', '2024-04-19 17:57:07', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-04-19 17:57:07', 1),
('441289ed-26b3-4dba-8dce-dfccee70b27f', '7b4e1f85-5109-4d56-ad7b-975c9cbb30dd', 'Admin', '779788601', NULL, 'anas.shahrori85@gmail.com', '2024-04-19-66221349e86fb.png', 'Admin', '779788601', 'anas.shahrori85@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-04-19 16:46:34', '2024-04-19 17:27:26', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-04-19 17:27:26', 1),
('588b24c8-1714-4bca-b8e8-ff7f22fe7704', '30aea711-dde5-4560-b7e8-24f996acefe8', 'Admin-Manager', '6606060', NULL, 'adminmanager@admin.com', 'def.png', 'Admin-Manager', '6606060', 'adminmanager@admin.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-12-05 12:44:43', '2024-12-05 12:44:43', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('64e4741a-2980-4531-aade-a45808b8563e', '120a5724-d07f-470f-89bf-6f0119a4b413', 'Yazan', '786527366', NULL, 'yazanalhalaiqaadmin@gmail.com', '2024-10-09-670654e106fc6.png', 'Yazan', '786527366', 'yazanalhalaiqaadmin@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-10-09 10:03:14', '2024-10-09 10:03:14', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('6aa4c196-245d-4dc6-b348-6fa3c41669ce', '89206e19-67a4-43a2-963b-607edde34e15', 'TEST ADMIN', '67763287638', NULL, '862382@MOI.GOV.KW', 'def.png', 'TEST ADMIN', '67763287638', '862382@MOI.GOV.KW', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-07-30 22:36:33', '2024-12-03 09:50:29', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('7f11e813-25ae-487d-98c9-58398098bc0d', 'bb542b29-2b2b-4f08-9682-29fcd0c3d705', 'Batool', '55555555', NULL, 'b.abdullateef@empowerkwt.ocm', 'def.png', 'Batool', '55555555', 'b.abdullateef@empowerkwt.ocm', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-08-03 07:24:11', '2024-08-03 07:24:11', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('8e25136b-0f25-4063-80fe-52e4228dc64f', 'a2745585-f1ff-49cf-a265-2279fbee15cd', 'ymm', '512 31234', NULL, 'admin1@mujadamy.com', '2024-09-05-66d9de9f2eec9.png', 'ymm', '512 31234', 'admin1@mujadamy.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-09-05 18:31:17', '2024-09-05 18:38:55', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('97caa635-77b7-4796-b1e9-54b61af16737', 'b9178a82-1185-4259-aea0-8dc8d6702b90', 'testadmin2', '4864689461', NULL, 'testadmin2@gmail.com', '2024-08-31-66d1dacb6e5e3.png', 'testadmin2', '4864689461', 'testadmin2@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-08-31 02:44:27', '2024-09-01 05:09:26', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-09-01 05:09:26', 1),
('9f5f9c24-28d5-4daa-b3f5-734bfb211630', '939d9c54-2e93-40ba-9a27-72fef8ec92da', 'yys', '1111 2222', NULL, 'admin123@mujadamy.com', 'def.png', 'yys', '1111 2222', 'admin123@mujadamy.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-11-02 16:33:45', '2024-11-09 19:12:24', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('b6759d9e-976a-4d87-8cdd-c635726dc5c7', '353c4ab3-b19b-43ce-8844-4b4c9a2effbc', 'yousef', '555 56666', NULL, 'admin12@mujadamy.com', 'def.png', 'yousef', '555 56666', 'admin12@mujadamy.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-09-23 17:05:39', '2024-11-02 14:38:07', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('be15e30b-77f0-44d1-b77a-bae86a7b5923', '75e7b05a-9788-45b1-839f-b936805b72fe', 'yaser', '64841651651', NULL, 'yaser@gmail.com', '2024-08-31-66d1c6a217b91.png', 'yaser', '64841651651', 'yaser@gmail.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-08-31 01:18:26', '2024-08-31 01:18:26', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1),
('cd979633-e218-4e25-8c95-257cc91dde9a', '76514d38-6108-4b78-b2a3-e41efd7f9be9', 'Gg', '+96555555555', 'Bringing hugging h', 'Info@empowerkwt.com', '2025-03-06-67c8d9641f3ea.png', 'Sulaiman Alarouj', '+96599604013', 'salarouj@empowerkwt.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 0, '2025-03-06 02:08:20', '2025-03-06 02:08:20', 2, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":\"23.8112146750125\",\"longitude\":\"90.36199582543944\"}', 0, NULL, 1),
('dd8e9d8a-551b-4fd1-b5ef-24ca90af6c8c', 'ea61faec-d30c-4caa-b597-45b3b5a6dc0a', 'Anas', '+962779788601', NULL, NULL, 'def.png', NULL, NULL, NULL, 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-04-19 16:40:36', '2024-04-19 16:40:45', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, '2024-04-19 16:40:45', 1),
('f38f2105-3d46-48ad-aeec-3f3539c0e087', '0dd4915d-5c45-49ad-8397-8cf97d302b4e', 'Mohammad Soliman', '99837821', NULL, 'admin3@moi.com', '2024-07-30-66a83437dd661.png', 'Mohammad Soliman', '99837821', 'admin3@moi.com', 0, 0, 0, 0, 0.0000, 0, 0.0000, 1, '2024-07-30 12:30:48', '2024-07-30 12:30:48', 1, 'a1614dbe-4732-11ee-9702-dee6e8d77be4', '{\"latitude\":null,\"longitude\":null}', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `provider_settings`
--

CREATE TABLE `provider_settings` (
  `id` char(36) NOT NULL,
  `provider_id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_sub_category`
--

CREATE TABLE `provider_sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` char(36) NOT NULL,
  `sub_category_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` char(36) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `zone_ids` text NOT NULL,
  `to_users` varchar(255) NOT NULL DEFAULT '["customer"]',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`id`, `title`, `description`, `cover_image`, `zone_ids`, `to_users`, `is_active`, `created_at`, `updated_at`) VALUES
('10a96c4c-7ddd-4402-91e6-81e709fa43d2', 'احوال طقس', 'احوال طقس سيئة', '2024-09-05-66d989948351d.png', '[\"a1614dbe-4732-11ee-9702-dee6e8d77be4\"]', '[\"customer\",\"provider-admin\",\"provider-serviceman\"]', 1, '2024-09-05 12:36:04', '2024-09-05 12:36:04'),
('9fa02309-23a7-4b46-a63f-f9cc2d4a5273', '1', '1', '2024-09-24-66f2de5463a65.png', '[\"a1614dbe-4732-11ee-9702-dee6e8d77be4\"]', '[\"customer\"]', 1, '2024-09-24 17:44:20', '2024-09-24 17:44:20'),
('b21dab55-6c58-4bf8-872b-ceff16c67b64', '2', '2', '2024-09-24-66f2df360f6ba.png', '[\"a1614dbe-4732-11ee-9702-dee6e8d77be4\"]', '[\"provider-serviceman\"]', 1, '2024-09-24 17:48:06', '2024-09-24 17:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `recent_searches`
--

CREATE TABLE `recent_searches` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_searches`
--

INSERT INTO `recent_searches` (`id`, `user_id`, `keyword`, `deleted_at`, `created_at`, `updated_at`) VALUES
('2f5af986-b7b6-4593-9d8d-1f1ffa45da08', '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'Fuel Tank Filling', NULL, '2024-09-05 03:30:50', '2024-09-05 03:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `recent_views`
--

CREATE TABLE `recent_views` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `service_id` char(36) DEFAULT NULL,
  `total_service_view` int(11) NOT NULL DEFAULT 0,
  `category_id` char(36) DEFAULT NULL,
  `total_category_view` int(11) NOT NULL DEFAULT 0,
  `sub_category_id` char(36) DEFAULT NULL,
  `total_sub_category_view` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_views`
--

INSERT INTO `recent_views` (`id`, `user_id`, `service_id`, `total_service_view`, `category_id`, `total_category_view`, `sub_category_id`, `total_sub_category_view`, `deleted_at`, `created_at`, `updated_at`) VALUES
('0d2e9783-a925-46d6-bad0-34d8036b4dd9', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, NULL, 0, NULL, 0, NULL, '2025-02-10 14:36:53', '2025-02-10 14:36:53'),
('16b876cc-fde0-49ec-a7a3-c5f30eb04b9e', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '7eae1fe8-f21c-429d-8b1e-f41641479066', 1, NULL, 0, NULL, 0, NULL, '2024-12-05 12:36:53', '2024-12-05 12:36:53'),
('1c31c6bf-79bb-46e5-9617-d10250144111', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', 'be5ba37d-b2f0-487d-9e91-01557434613f', 5, NULL, 0, NULL, 0, NULL, '2024-09-05 03:32:19', '2024-09-05 04:42:52'),
('1eb473c7-73a8-42bf-9d09-794ce41bb31b', 'a0c4d184-2730-4309-bd34-e11a979ff06f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 3, NULL, 0, NULL, 0, NULL, '2024-08-06 06:46:27', '2024-08-06 07:34:35'),
('278772f5-9abc-4bc0-9d5d-bbeb51282c18', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'be5ba37d-b2f0-487d-9e91-01557434613f', 13, NULL, 0, NULL, 0, NULL, '2024-09-23 18:13:15', '2024-11-05 21:13:21'),
('2ef6381a-0fed-43b4-b29e-15a4801e2138', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 0, '255ce5fa-e261-4dba-bb81-bffc40a93319', 4, NULL, 0, NULL, '2024-12-05 10:19:21', '2024-12-09 09:14:09'),
('36f3bff1-326b-4467-8d1b-aa429d1e4ee7', '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'be5ba37d-b2f0-487d-9e91-01557434613f', 16, NULL, 0, NULL, 0, NULL, '2024-09-05 03:29:49', '2024-10-25 20:25:36'),
('39c37cf9-6768-4b3d-be2e-fe5ce21034d5', '6300be25-dcbc-4232-a1a9-b342bdd78bff', 'be5ba37d-b2f0-487d-9e91-01557434613f', 15, NULL, 0, NULL, 0, NULL, '2024-09-23 16:52:14', '2024-12-16 01:04:06'),
('3ca73dfe-9d1b-41f7-96c2-9ebb6ecf0d1b', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '047b9008-ca42-4393-b717-d04f78e994f2', 17, NULL, 0, NULL, 0, NULL, '2024-09-05 04:07:11', '2024-10-25 18:46:54'),
('457a62e4-ccf2-426f-b33a-f9deb6104ca4', '82f44630-e829-4799-a84e-e6c72921d12f', '047b9008-ca42-4393-b717-d04f78e994f2', 7, NULL, 0, NULL, 0, NULL, '2024-09-05 12:15:10', '2024-09-12 09:55:06'),
('4729006c-bf73-4535-966b-b9b2ad989045', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 0, '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 4, NULL, 0, NULL, '2024-12-05 10:19:22', '2024-12-09 09:14:10'),
('4bf9c6fa-c053-48b7-8704-25bccfb1c9c9', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', NULL, 0, 'fcc9a5a1-34f5-4693-b0a3-5d849403691e', 13, NULL, 0, NULL, '2024-12-05 09:46:07', '2024-12-10 16:55:39'),
('5cf86385-f09d-4317-a8db-2243a43c81c5', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 16, NULL, 0, NULL, 0, NULL, '2024-11-02 16:50:07', '2024-11-05 21:13:44'),
('5dd51568-e613-46db-9771-f16e17af61f2', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '7eae1fe8-f21c-429d-8b1e-f41641479066', 7, NULL, 0, NULL, 0, NULL, '2024-09-23 17:58:00', '2024-11-04 16:31:53'),
('68d51a2c-4f56-4c27-a73c-6e9c29ca8af5', 'a0c4d184-2730-4309-bd34-e11a979ff06f', '047b9008-ca42-4393-b717-d04f78e994f2', 1, NULL, 0, NULL, 0, NULL, '2024-08-06 06:58:30', '2024-08-06 06:58:30'),
('6e9ff591-465f-4e9d-bda9-3f24cb004e3a', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '047b9008-ca42-4393-b717-d04f78e994f2', 3, NULL, 0, NULL, 0, NULL, '2024-09-05 04:20:36', '2024-09-05 04:45:22'),
('7856ed47-4ca4-45e1-b4b7-43183c9a640c', '82f44630-e829-4799-a84e-e6c72921d12f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 5, NULL, 0, NULL, 0, NULL, '2024-09-06 15:14:40', '2024-11-24 21:00:32'),
('7b0460c6-56d8-43e7-acf3-a22bbcee9942', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, NULL, 0, NULL, 0, NULL, '2024-12-05 12:36:25', '2024-12-05 12:36:25'),
('98112b3f-b5e2-4db8-9c67-08723fc16501', '3eb273f9-3210-4246-9e50-1e6b1f210e44', '7eae1fe8-f21c-429d-8b1e-f41641479066', 5, NULL, 0, NULL, 0, NULL, '2024-09-05 03:36:43', '2024-09-06 15:19:35'),
('af792856-4364-48ea-a27b-ec09be1bac84', 'a0c4d184-2730-4309-bd34-e11a979ff06f', 'be5ba37d-b2f0-487d-9e91-01557434613f', 4, NULL, 0, NULL, 0, NULL, '2024-08-06 06:46:23', '2024-08-06 07:29:21'),
('c61baca2-639d-42c0-b570-1d5366df79ba', 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '7eae1fe8-f21c-429d-8b1e-f41641479066', 1, NULL, 0, NULL, 0, NULL, '2024-09-05 04:03:44', '2024-09-05 04:03:44'),
('c7b2ceb8-4f95-410e-80f9-7ad29bc443f0', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '7eae1fe8-f21c-429d-8b1e-f41641479066', 9, NULL, 0, NULL, 0, NULL, '2024-09-23 16:52:21', '2024-09-23 17:53:26'),
('ddfb5ef8-69f0-4d5f-89cd-d3e63f711dc4', '82f44630-e829-4799-a84e-e6c72921d12f', 'be5ba37d-b2f0-487d-9e91-01557434613f', 19, NULL, 0, NULL, 0, NULL, '2024-09-05 12:49:48', '2024-12-22 11:47:23'),
('efb8dfff-ae2c-4774-b952-19ec4b19fbe6', '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '047b9008-ca42-4393-b717-d04f78e994f2', 2, NULL, 0, NULL, 0, NULL, '2024-12-05 12:36:40', '2024-12-05 12:38:04'),
('f0f14c5b-762d-46da-af5f-fc1b751768cd', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '047b9008-ca42-4393-b717-d04f78e994f2', 8, NULL, 0, NULL, 0, NULL, '2024-09-23 16:53:02', '2024-11-05 21:14:05'),
('f77035b3-2969-412c-933c-01227b0203ce', '6300be25-dcbc-4232-a1a9-b342bdd78bff', '047b9008-ca42-4393-b717-d04f78e994f2', 9, NULL, 0, NULL, 0, NULL, '2024-09-23 16:51:49', '2024-09-23 17:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` char(36) NOT NULL,
  `booking_id` char(36) DEFAULT NULL,
  `service_id` char(36) DEFAULT NULL,
  `provider_id` char(36) DEFAULT NULL,
  `review_rating` int(11) NOT NULL DEFAULT 1,
  `review_comment` text DEFAULT NULL,
  `review_images` text DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `booking_id`, `service_id`, `provider_id`, `review_rating`, `review_comment`, `review_images`, `booking_date`, `is_active`, `created_at`, `updated_at`, `customer_id`) VALUES
('6e1df817-e5c5-4297-b56c-f8dcbcad3e97', 'b1218d67-67d3-4cb5-bd47-1189e7482fe8', 'be5ba37d-b2f0-487d-9e91-01557434613f', NULL, 5, 'perfect', '[]', '2024-11-02 17:37:16', 1, '2024-11-04 17:00:58', '2024-11-04 17:00:58', 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `modules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_modules`
--

CREATE TABLE `role_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` char(36) DEFAULT NULL,
  `module_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searched_data`
--

CREATE TABLE `searched_data` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `zone_id` char(36) NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `attribute_id` char(36) DEFAULT NULL,
  `response_data_count` int(11) NOT NULL DEFAULT 0,
  `volume` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searched_data`
--

INSERT INTO `searched_data` (`id`, `user_id`, `zone_id`, `attribute`, `attribute_id`, `response_data_count`, `volume`, `created_at`, `updated_at`) VALUES
('719a305f-6779-4d72-90b8-16b84b63e67f', '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 'search', '2f5af986-b7b6-4593-9d8d-1f1ffa45da08', 1, 1, '2024-09-05 03:30:50', '2024-09-05 03:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `servicemen`
--

CREATE TABLE `servicemen` (
  `id` char(36) NOT NULL,
  `provider_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicemen`
--

INSERT INTO `servicemen` (`id`, `provider_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('4c6b2b51-46fc-48c3-a2d6-7db3a0c92024', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', '0ee4a963-df08-4c62-8520-eeb9451dc5e1', '2024-09-23 16:46:40', '2024-09-23 16:46:40', NULL),
('555aec49-fc5f-4a8d-833b-3a3a7d291c70', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', '72ed24f1-b3c3-4e0a-890b-e22471639d02', '2024-09-23 19:02:19', '2024-09-23 19:02:19', NULL),
('8dd56688-5cf1-4c5d-a1ff-0096cf801407', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', '7e3c4471-507f-418c-97dc-221318cc64ab', '2024-12-05 12:28:20', '2024-12-05 12:28:20', NULL),
('8df53f32-ef93-4258-8c7a-f48974f236cd', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', '2024-09-17 17:39:03', '2024-09-17 17:39:03', NULL),
('a13ab7ae-b5c4-4c07-b538-379a3072ae53', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', '35a730a9-b423-4fbc-84c5-082b680c2af4', '2024-09-23 16:18:40', '2024-09-23 16:18:40', NULL),
('b23f59e4-4c5d-4b22-ab02-53bf1b97d7fe', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', '992de8d3-3809-4c2a-8713-fe108127ea52', '2024-09-10 12:31:18', '2024-09-10 12:31:18', NULL),
('babfe04e-aaab-41d3-8e34-7016a843bbdb', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', '2024-09-24 14:41:01', '2024-09-24 14:41:01', NULL),
('d76b08ed-9237-4628-a2b8-2a62c75cc70b', 'c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', '2024-09-11 12:10:41', '2024-09-11 12:10:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` char(36) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `sub_category_id` char(36) DEFAULT NULL,
  `tax` decimal(24,3) NOT NULL DEFAULT 0.000,
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `avg_rating` double(8,4) NOT NULL DEFAULT 0.0000,
  `min_bidding_price` decimal(24,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `short_description`, `description`, `cover_image`, `thumbnail`, `category_id`, `sub_category_id`, `tax`, `order_count`, `is_active`, `rating_count`, `avg_rating`, `min_bidding_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
('047b9008-ca42-4393-b717-d04f78e994f2', 'ELECTRICal issue', 'Fjfdskajvndfka', '<p>Fladjvnhadfsolv;najdfnva;jnva</p>', '2024-07-30-66a8c17f7b9c7.png', '2024-08-06-66b1183a7e806.png', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', 0.000, 0, 1, 0, 0.0000, 1.000, NULL, '2024-07-30 22:33:35', '2024-08-06 06:21:46'),
('0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'mechanical issue', '1`', '<p>11111</p>', '2024-09-24-66f2b4158b47b.png', '2024-09-24-66f2b4158e012.png', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', '47f77451-fd62-4842-9489-8e39af6b9ec3', 0.000, 0, 1, 0, 0.0000, 1.000, NULL, '2024-09-24 14:44:05', '2024-11-02 15:35:18'),
('7eae1fe8-f21c-429d-8b1e-f41641479066', 'Fuel Tank Filling', 'Fill your Tank', '<p>Tank Filling</p>', '2024-07-29-66a648f4bd817.png', '2024-08-06-66b11a92893d5.png', '255ce5fa-e261-4dba-bb81-bffc40a93319', 'ef906a28-f7bc-4058-b124-a7b133d42c39', 0.000, 0, 1, 0, 0.0000, 1.000, NULL, '2024-04-19 16:23:00', '2024-08-06 06:31:46'),
('be5ba37d-b2f0-487d-9e91-01557434613f', 'Booking Services', 'tset', '<p>tset</p>', '2024-09-23-66f1812022ef3.png', '2024-08-06-66b119de56d4e.png', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', 0.000, 0, 1, 1, 5.0000, 1.000, NULL, '2024-04-20 03:12:12', '2024-11-04 17:00:58'),
('f4d44b69-9b28-4c3c-8956-1c223367dd3a', 'Test Service', 'This is a fake short description for the test service.', '<p>This is a fake long description for test service. In the real service, valid informations will be given here.</p>', '2023-08-31-64ef3a3e696a2.png', '2023-08-31-64ef3a3e6d6c0.png', '5e5c0fdb-9ad7-4075-bcc1-d7523efde8c6', 'b4fcd6d4-ba80-4e20-9ee2-f07a8b1466c6', 10.000, 0, 1, 0, 0.0000, 97.000, '2024-07-29 01:35:05', '2023-08-30 19:46:54', '2024-07-29 01:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` char(36) NOT NULL,
  `category_id` char(36) DEFAULT NULL COMMENT '(DC2Type:guid)',
  `service_name` varchar(255) NOT NULL,
  `service_description` text NOT NULL,
  `status` varchar(20) NOT NULL COMMENT 'pending,accepted,denied',
  `admin_feedback` text DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `category_id`, `service_name`, `service_description`, `status`, `admin_feedback`, `user_id`, `created_at`, `updated_at`) VALUES
('14ea069e-fdfa-4f78-8b9d-d9200240c918', NULL, 'food delivery', 'food delivery', 'pending', NULL, '82f44630-e829-4799-a84e-e6c72921d12f', '2024-09-07 12:15:06', '2024-09-07 12:15:06'),
('207dae5e-69a9-437b-b8a6-3edb9628d988', 'fa7149c8-58ad-4e47-b7dc-7149a3c28ceb', 'Electric', 'dgdggs', 'pending', NULL, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '2024-11-02 17:14:03', '2024-11-02 17:14:03'),
('c5806972-7dd5-415d-a49f-3539b5b0de35', 'a18aa522-9f35-47c2-afdf-46c79ee436fd', 'test', 'test', 'pending', NULL, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '2024-09-23 17:02:49', '2024-09-23 17:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `service_tag`
--

CREATE TABLE `service_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` char(36) NOT NULL,
  `tag_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_services`
--

CREATE TABLE `subscribed_services` (
  `id` char(36) NOT NULL,
  `provider_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `sub_category_id` char(36) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) NOT NULL,
  `ref_trx_id` char(36) DEFAULT NULL,
  `booking_id` char(36) DEFAULT NULL,
  `trx_type` varchar(255) DEFAULT NULL,
  `debit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(24,2) NOT NULL DEFAULT 0.00,
  `from_user_id` char(36) DEFAULT NULL,
  `to_user_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from_user_account` varchar(255) DEFAULT NULL,
  `to_user_account` varchar(255) DEFAULT NULL,
  `reference_note` varchar(100) DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` char(36) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES
(4, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'en', 'name', 'Fuel Tank Filling'),
(5, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'en', 'short_description', 'تعبئة بانزين'),
(6, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'en', 'description', '<p>تعبئة بانزين</p>'),
(8, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'en', 'name', 'Boat Towing'),
(9, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'en', 'short_description', 'Towing Your Boat'),
(10, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'en', 'description', '<p>Towing Your Boat from sent location to Marine</p>'),
(11, 'Modules\\VendorModule\\Entities\\Vendor', '9db53b37-0eb1-4b87-ad1a-8338ff4b7d3c', 'en', 'name', 'Test Vendor'),
(13, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'ar', 'name', 'سحب \" قلص \" قارب'),
(14, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'ar', 'short_description', 'سحب قارب'),
(15, 'Modules\\ServiceManagement\\Entities\\Service', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'ar', 'description', '<p>سحب قارب من احداثيات موقعك الحالي الى المسنى</p>'),
(16, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'ar', 'name', 'تعبئة بانزين'),
(17, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'ar', 'short_description', 'تعبئة بانزين'),
(18, 'Modules\\ServiceManagement\\Entities\\Service', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'ar', 'description', '<p>تعبئة بانزين</p>'),
(19, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '514e21aa-ae56-447e-9f9d-a34d4995bb9e', 'en', 'cancellation_policy', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>'),
(20, 'Modules\\ServiceManagement\\Entities\\Service', '047b9008-ca42-4393-b717-d04f78e994f2', 'en', 'name', 'ELECTRICal issue'),
(21, 'Modules\\ServiceManagement\\Entities\\Service', '047b9008-ca42-4393-b717-d04f78e994f2', 'en', 'short_description', 'Fjfdskajvndfka'),
(22, 'Modules\\ServiceManagement\\Entities\\Service', '047b9008-ca42-4393-b717-d04f78e994f2', 'en', 'description', '<p>Fladjvnhadfsolv;najdfnva;jnva</p>'),
(23, 'Modules\\ProductModule\\Entities\\Product', '1', 'en', 'name', NULL),
(24, 'Modules\\ProductModule\\Entities\\Product', '1', 'ar', 'name', NULL),
(25, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '7f249215-5ee0-4a39-872e-3b3bd2634278', 'en', 'about_us', '<p>Almujadamy Co.<br><br>\"Safeguarding Lives, Leading Marine Rescue &ndash; A Trusted Partner of Kuwait Fire Force.\"</p>'),
(26, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '7f249215-5ee0-4a39-872e-3b3bd2634278', 'ar', 'about_us', '<h3>شركة المجدمي لإنقاذ البحري<br><br>\" حماية للأرواح، وريادة في الإنقاذ البحري شريك معتمد لقوة الإطفاء الكويتية وإدارة الإنقاذ البحري \"</h3>'),
(27, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '514e21aa-ae56-447e-9f9d-a34d4995bb9e', 'ar', 'cancellation_policy', '<p>النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا.</p>'),
(28, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'c1f90ba8-3432-4478-8f35-7c992fa10aaf', 'en', 'privacy_policy', '<h1 data-start=\"131\" data-end=\"153\"><strong data-start=\"133\" data-end=\"151\">Privacy Policy</strong></h1>\r\n<p data-start=\"154\" data-end=\"189\">&nbsp;</p>\r\n<h2 data-start=\"191\" data-end=\"215\"><strong data-start=\"194\" data-end=\"213\">1. Introduction<br><br></strong></h2>\r\n<p data-start=\"216\" data-end=\"511\">Welcome to <strong data-start=\"227\" data-end=\"256\">Al Mujadamy Marine Rescue</strong>. Your privacy is important to us, and we are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our website and mobile application.</p>\r\n<p data-start=\"513\" data-end=\"642\">By accessing our services, you agree to the terms outlined in this policy. If you do not agree, please do not use our services.</p>\r\n<h2 data-start=\"644\" data-end=\"678\"><strong data-start=\"647\" data-end=\"676\">2. Information We Collect<br><br></strong></h2>\r\n<p data-start=\"679\" data-end=\"736\">We may collect and process the following types of data:</p>\r\n<ul data-start=\"738\" data-end=\"1222\">\r\n<li data-start=\"738\" data-end=\"880\"><strong data-start=\"740\" data-end=\"765\">Personal Information:</strong> Name, phone number, email address, location, and other relevant details when you register or request assistance.</li>\r\n<li data-start=\"881\" data-end=\"975\"><strong data-start=\"883\" data-end=\"907\">Device &amp; Usage Data:</strong> IP address, device type, operating system, and browsing activity.</li>\r\n<li data-start=\"976\" data-end=\"1093\"><strong data-start=\"978\" data-end=\"996\">Location Data:</strong> To provide real-time marine rescue services, we collect your GPS location (with your consent).</li>\r\n<li data-start=\"1094\" data-end=\"1222\"><strong data-start=\"1096\" data-end=\"1132\">Cookies &amp; Tracking Technologies:</strong> We use cookies and analytics tools to enhance user experience and improve our services.</li>\r\n</ul>\r\n<h2 data-start=\"1224\" data-end=\"1263\"><strong data-start=\"1227\" data-end=\"1261\">3. How We Use Your Information<br><br></strong></h2>\r\n<p data-start=\"1264\" data-end=\"1295\">We use the collected data to:</p>\r\n<ul data-start=\"1297\" data-end=\"1574\">\r\n<li data-start=\"1297\" data-end=\"1341\">Provide and improve our rescue services.</li>\r\n<li data-start=\"1342\" data-end=\"1406\">Respond to emergency requests and enhance safety operations.</li>\r\n<li data-start=\"1407\" data-end=\"1456\">Process registrations and account management.</li>\r\n<li data-start=\"1457\" data-end=\"1511\">Communicate updates, alerts, and customer support.</li>\r\n<li data-start=\"1512\" data-end=\"1574\">Comply with legal obligations and regulatory requirements.</li>\r\n</ul>\r\n<h2 data-start=\"1576\" data-end=\"1612\"><strong data-start=\"1579\" data-end=\"1610\">4. Sharing Your Information<br><br></strong></h2>\r\n<p data-start=\"1613\" data-end=\"1650\">We may share your information with:</p>\r\n<ul data-start=\"1652\" data-end=\"1923\">\r\n<li data-start=\"1652\" data-end=\"1734\"><strong data-start=\"1654\" data-end=\"1697\">Kuwait Fire Force &amp; Emergency Services:</strong> To ensure swift rescue operations.</li>\r\n<li data-start=\"1735\" data-end=\"1837\"><strong data-start=\"1737\" data-end=\"1771\">Third-Party Service Providers:</strong> For hosting, analytics, and payment processing (if applicable).</li>\r\n<li data-start=\"1838\" data-end=\"1923\"><strong data-start=\"1840\" data-end=\"1862\">Legal Authorities:</strong> When required by law or to protect our services and users.</li>\r\n</ul>\r\n<h2 data-start=\"1925\" data-end=\"1950\"><strong data-start=\"1928\" data-end=\"1948\">5. Data Security<br><br></strong></h2>\r\n<p data-start=\"1951\" data-end=\"2140\">We implement industry-standard security measures to protect your personal information.&nbsp;<strong data-start=\"2145\" data-end=\"2173\"><br><br></strong></p>\r\n<p data-start=\"2176\" data-end=\"2200\">You have the right to:</p>\r\n<ul data-start=\"2202\" data-end=\"2341\">\r\n<li data-start=\"2202\" data-end=\"2251\">Access, update, or delete your personal data.</li>\r\n<li data-start=\"2252\" data-end=\"2292\">Opt out of marketing communications.</li>\r\n<li data-start=\"2293\" data-end=\"2341\">Restrict certain data processing activities.</li>\r\n</ul>\r\n<h2 data-start=\"2343\" data-end=\"2378\"><strong data-start=\"2346\" data-end=\"2376\">7. Location-Based Services<br><br></strong></h2>\r\n<p data-start=\"2379\" data-end=\"2616\">For accurate and efficient rescue operations, we collect real-time location data when you request assistance. You can disable location tracking through your device settings, but this may limit our ability to provide emergency services.</p>\r\n<h2 data-start=\"2618\" data-end=\"2648\"><strong data-start=\"2621\" data-end=\"2646\">8. Children&rsquo;s Privacy<br><br></strong></h2>\r\n<p data-start=\"2649\" data-end=\"2773\">Our services are not intended for individuals under 18 years old. We do not knowingly collect personal data from children.</p>\r\n<h2 data-start=\"2775\" data-end=\"2809\"><strong data-start=\"2778\" data-end=\"2807\">9. Changes to This Policy<br><br></strong></h2>\r\n<p data-start=\"2810\" data-end=\"2943\">We may update this Privacy Policy from time to time. We will notify users of significant changes via email or through our platform.</p>\r\n<h2 data-start=\"2945\" data-end=\"2968\"><strong data-start=\"2948\" data-end=\"2966\">10. Contact Us<br><br></strong></h2>\r\n<p data-start=\"2969\" data-end=\"3099\">If you have any questions about this policy, please contact us at:<br data-start=\"3035\" data-end=\"3038\">📧 <strong data-start=\"3041\" data-end=\"3051\">Email:</strong> info@Almujadamy.com<br data-start=\"3066\" data-end=\"3069\">📞 <strong data-start=\"3072\" data-end=\"3082\">Phone:</strong> +965-63632122</p>'),
(29, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'c1f90ba8-3432-4478-8f35-7c992fa10aaf', 'ar', 'privacy_policy', '<h3 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"0\" data-end=\"24\"><strong data-start=\"4\" data-end=\"22\">سياسة الخصوصية</strong></h3>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"25\" data-end=\"60\">&nbsp;</p>\r\n<h2 style=\"text-align: right; line-height: 1.5;\" data-start=\"62\" data-end=\"81\"><strong data-start=\"65\" data-end=\"79\">1. المقدمة</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"82\" data-end=\"332\">مرحبًا بك في <strong data-start=\"95\" data-end=\"121\">المجدمي للإنقاذ البحري</strong>. نحن نحرص على حماية خصوصيتك ونلتزم بالحفاظ على المعلومات الشخصية التي تشاركها معنا. توضح هذه السياسة كيفية جمع معلوماتك واستخدامها ومشاركتها وحمايتها عند استخدام موقعنا الإلكتروني وتطبيقنا على الأجهزة الذكية.</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"334\" data-end=\"432\">باستخدامك لخدماتنا، فإنك توافق على شروط هذه السياسة. إذا كنت لا توافق، يرجى عدم استخدام خدماتنا.</p>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"434\" data-end=\"467\"><strong data-start=\"437\" data-end=\"465\">2. المعلومات التي نجمعها</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"468\" data-end=\"508\">قد نقوم بجمع ومعالجة البيانات التالية:</p>\r\n<ul style=\"text-align: right;\" data-start=\"510\" data-end=\"968\">\r\n<li data-start=\"510\" data-end=\"636\"><strong data-start=\"512\" data-end=\"534\">المعلومات الشخصية:</strong> الاسم، رقم الهاتف، البريد الإلكتروني، الموقع، وأي معلومات أخرى ذات صلة عند التسجيل أو طلب المساعدة.</li>\r\n<li data-start=\"637\" data-end=\"720\"><strong data-start=\"639\" data-end=\"668\">بيانات الجهاز والاستخدام:</strong> عنوان IP، نوع الجهاز، نظام التشغيل، ونشاط التصفح.</li>\r\n<li data-start=\"721\" data-end=\"842\"><strong data-start=\"723\" data-end=\"750\">بيانات الموقع الجغرافي:</strong> نجمع موقعك الجغرافي (بعد الحصول على موافقتك) لتوفير خدمات الإنقاذ البحري في الوقت الفعلي.</li>\r\n<li data-start=\"843\" data-end=\"968\"><strong data-start=\"845\" data-end=\"885\">ملفات تعريف الارتباط وتقنيات التتبع:</strong> نستخدم ملفات تعريف الارتباط وأدوات التحليل لتحسين تجربة المستخدم وتعزيز خدماتنا.</li>\r\n</ul>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"970\" data-end=\"1002\"><strong data-start=\"973\" data-end=\"1000\">3. كيف نستخدم معلوماتك؟</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1003\" data-end=\"1040\">نستخدم البيانات التي نجمعها من أجل:</p>\r\n<ul style=\"text-align: right;\" data-start=\"1042\" data-end=\"1269\">\r\n<li data-start=\"1042\" data-end=\"1080\">تقديم وتحسين خدمات الإنقاذ البحري.</li>\r\n<li data-start=\"1081\" data-end=\"1132\">الاستجابة لطلبات الطوارئ وتعزيز عمليات الإنقاذ.</li>\r\n<li data-start=\"1133\" data-end=\"1172\">إدارة حسابات المستخدمين وتسجيلاتهم.</li>\r\n<li data-start=\"1173\" data-end=\"1223\">إرسال التحديثات والإشعارات وتقديم الدعم الفني.</li>\r\n<li data-start=\"1224\" data-end=\"1269\">الامتثال للالتزامات القانونية والتنظيمية.</li>\r\n</ul>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1271\" data-end=\"1299\"><strong data-start=\"1274\" data-end=\"1297\">4. مشاركة المعلومات</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1300\" data-end=\"1330\">قد نقوم بمشاركة معلوماتك مع:</p>\r\n<ul style=\"text-align: right;\" data-start=\"1332\" data-end=\"1589\">\r\n<li data-start=\"1332\" data-end=\"1416\"><strong data-start=\"1334\" data-end=\"1374\">قوة الإطفاء الكويتية وخدمات الطوارئ:</strong> لضمان سرعة الاستجابة في عمليات الإنقاذ.</li>\r\n<li data-start=\"1417\" data-end=\"1508\"><strong data-start=\"1419\" data-end=\"1447\">مزودي الخدمات الخارجيين:</strong> لاستضافة البيانات، التحليلات، ومعالجة المدفوعات (إن وجدت).</li>\r\n<li data-start=\"1509\" data-end=\"1589\"><strong data-start=\"1511\" data-end=\"1532\">الجهات القانونية:</strong> عند الحاجة بموجب القانون أو لحماية خدماتنا ومستخدمينا.</li>\r\n</ul>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1591\" data-end=\"1617\"><strong data-start=\"1594\" data-end=\"1615\">5. حماية البيانات</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1618\" data-end=\"1767\">نستخدم معايير أمان متقدمة لحماية معلوماتك الشخصية.</p>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1769\" data-end=\"1795\"><strong data-start=\"1772\" data-end=\"1793\">6. حقوقك وخياراتك</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1796\" data-end=\"1805\">يحق لك:</p>\r\n<ul style=\"text-align: right;\" data-start=\"1807\" data-end=\"1930\">\r\n<li data-start=\"1807\" data-end=\"1856\">الوصول إلى بياناتك الشخصية وتحديثها أو حذفها.</li>\r\n<li data-start=\"1857\" data-end=\"1893\">إلغاء الاشتراك في رسائل التسويق.</li>\r\n<li data-start=\"1894\" data-end=\"1930\">تقييد بعض أنشطة معالجة البيانات.</li>\r\n</ul>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1932\" data-end=\"1971\"><strong data-start=\"1935\" data-end=\"1969\">7. خدمات تحديد الموقع الجغرافي</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"1972\" data-end=\"2169\">لضمان دقة وكفاءة عمليات الإنقاذ، نقوم بجمع بيانات الموقع الجغرافي في الوقت الفعلي عند طلب المساعدة. يمكنك تعطيل تتبع الموقع عبر إعدادات جهازك، ولكن قد يؤثر ذلك على قدرتنا على تقديم خدمات الطوارئ.</p>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2171\" data-end=\"2197\"><strong data-start=\"2174\" data-end=\"2195\">8. خصوصية الأطفال</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2198\" data-end=\"2279\">خدماتنا غير موجهة للأفراد دون سن 18 عامًا، ولا نقوم بجمع بيانات الأطفال عن قصد.</p>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2281\" data-end=\"2321\"><strong data-start=\"2284\" data-end=\"2319\">9. التعديلات على سياسة الخصوصية</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2322\" data-end=\"2445\">قد نقوم بتحديث هذه السياسة من وقت لآخر. سيتم إخطار المستخدمين بأي تغييرات جوهرية عبر البريد الإلكتروني أو من خلال منصتنا.</p>\r\n<h2 style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2447\" data-end=\"2470\"><strong data-start=\"2450\" data-end=\"2468\">10. تواصل معنا</strong></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: right; padding-left: 40px; line-height: 1.5;\" data-start=\"2471\" data-end=\"2539\">إذا كان لديك أي استفسارات حول هذه السياسة، يمكنك التواصل معنا عبر:<br><br>📧 <strong data-start=\"3041\" data-end=\"3051\">Email:</strong> info@Almujadamy.com<br data-start=\"3066\" data-end=\"3069\">📞 <strong data-start=\"3072\" data-end=\"3082\">Phone:</strong> +965-63632122</p>'),
(30, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '11c9071f-70e2-412b-ba73-73da0ae9f7cb', 'en', 'refund_policy', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>'),
(31, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '11c9071f-70e2-412b-ba73-73da0ae9f7cb', 'ar', 'refund_policy', '<p>النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا.</p>'),
(32, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'f64ffa14-fb1c-47e6-8736-0da45af39785', 'en', 'terms_and_conditions', '<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>\r\n<p>Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here Text Goes Here.</p>'),
(33, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'f64ffa14-fb1c-47e6-8736-0da45af39785', 'ar', 'terms_and_conditions', '<p>النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا النص سيكون هنا.</p>'),
(34, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', '42a986a9-831b-4789-9ae4-26b8284a2017', 'en', 'top_title', NULL),
(35, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', 'f4df4ad8-96be-4f99-a14e-6dc7c82035f8', 'en', 'top_description', NULL),
(36, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', 'af772e44-2cea-4396-bb82-9dbc13eb8691', 'en', 'top_sub_title', NULL),
(37, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', 'f6516965-15da-4fd6-805d-7788c0121a5f', 'en', 'mid_title', NULL),
(38, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', 'f4e72cf5-7e3f-40e0-a7b0-1185c62a65fa', 'en', 'about_us_title', NULL),
(39, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', 'c60d816a-3100-4d3e-8aba-013a0ef13639', 'en', 'about_us_description', NULL),
(40, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', '875a27cc-5456-4573-a4af-cdf9d2e15c16', 'en', 'registration_title', NULL),
(41, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', '95b1d2d7-b656-4ea6-9347-79909a94e7dd', 'en', 'registration_description', NULL),
(42, 'Modules\\BusinessSettingsModule\\Entities\\BusinessSettings', '0689bba0-0de2-4820-902a-5b4840af7fe9', 'en', 'bottom_title', NULL),
(45, 'Modules\\VendorModule\\Entities\\Vendor', '58487c15-df83-40f2-ae6a-07148f2b59a0', 'en', 'name', 'محمد'),
(47, 'Modules\\ServiceManagement\\Entities\\Service', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'en', 'name', 'mechanical issue'),
(48, 'Modules\\ServiceManagement\\Entities\\Service', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'en', 'short_description', '1`'),
(49, 'Modules\\ServiceManagement\\Entities\\Service', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'en', 'description', '<p>11111</p>'),
(50, 'Modules\\ProductModule\\Entities\\Product', '2', 'en', 'name', NULL),
(51, 'Modules\\ProductModule\\Entities\\Product', '2', 'ar', 'name', NULL),
(52, 'Modules\\ProductModule\\Entities\\Product', '3', 'en', 'name', NULL),
(53, 'Modules\\ProductModule\\Entities\\Product', '3', 'ar', 'name', NULL),
(56, 'Modules\\ProductModule\\Entities\\Product', '4', 'en', 'name', NULL),
(57, 'Modules\\ProductModule\\Entities\\Product', '4', 'ar', 'name', NULL),
(58, 'Modules\\ProductModule\\Entities\\Product', '5', 'en', 'name', NULL),
(59, 'Modules\\ProductModule\\Entities\\Product', '5', 'ar', 'name', NULL),
(60, 'Modules\\ProductModule\\Entities\\Product', '7', 'en', 'name', 'test 3'),
(61, 'Modules\\ProductModule\\Entities\\Product', '7', 'en', 'description', 'test'),
(62, 'Modules\\ProductModule\\Entities\\Product', '8', 'en', 'name', 'Product Name EN'),
(63, 'Modules\\ProductModule\\Entities\\Product', '8', 'en', 'description', 'Product Description EN'),
(64, 'Modules\\ProductModule\\Entities\\Product', '8', 'ar', 'name', 'Product Name AR'),
(65, 'Modules\\ProductModule\\Entities\\Product', '8', 'ar', 'description', 'Product Description AR'),
(66, 'Modules\\VendorModule\\Entities\\Vendor', '1d4587c5-c214-43fe-8d3a-c2f862907b7e', 'en', 'name', 'mari'),
(67, 'Modules\\VendorModule\\Entities\\Vendor', '1d4587c5-c214-43fe-8d3a-c2f862907b7e', 'ar', 'name', 'marine'),
(68, 'Modules\\VendorModule\\Entities\\Vendor', '63acb8d9-7d9d-4b73-a452-7e45e856d7f1', 'en', 'name', 'mari'),
(69, 'Modules\\VendorModule\\Entities\\Vendor', '63acb8d9-7d9d-4b73-a452-7e45e856d7f1', 'ar', 'name', 'marine'),
(70, 'Modules\\ProductModule\\Entities\\Product', '9', 'en', 'name', 'Engine Oil'),
(71, 'Modules\\ProductModule\\Entities\\Product', '9', 'en', 'description', 'yamaha'),
(72, 'Modules\\ProductModule\\Entities\\Product', '9', 'ar', 'name', 'زيت محرك'),
(73, 'Modules\\ProductModule\\Entities\\Product', '9', 'ar', 'description', 'ياماها'),
(74, 'Modules\\ServiceManagement\\Entities\\Service', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'ar', 'name', 'مشاكل ميكانيكية'),
(75, 'Modules\\ServiceManagement\\Entities\\Service', '047b9008-ca42-4393-b717-d04f78e994f2', 'ar', 'name', 'مشاكل كهربائية'),
(76, 'Modules\\VendorModule\\Entities\\Vendor', 'ce37701b-123d-470e-b8e2-e73848d5c6f3', 'en', 'name', 'alghanim marine'),
(77, 'Modules\\VendorModule\\Entities\\Vendor', 'ce37701b-123d-470e-b8e2-e73848d5c6f3', 'ar', 'name', 'alghanim marine'),
(80, 'Modules\\ProductModule\\Entities\\Product', '10', 'en', 'name', 'spark plugs'),
(81, 'Modules\\ProductModule\\Entities\\Product', '10', 'en', 'description', 'spark plugs'),
(82, 'Modules\\ProductModule\\Entities\\Product', '10', 'ar', 'name', 'بلاكات'),
(83, 'Modules\\ProductModule\\Entities\\Product', '10', 'ar', 'description', 'spark plugs'),
(84, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'f4df4ad8-96be-4f99-a14e-6dc7c82035f8', 'ar', 'top_description', 'المجدمي لإنقاذ البحري'),
(85, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '42a986a9-831b-4789-9ae4-26b8284a2017', 'ar', 'top_title', 'طالع بحر ومتوهّق؟   مالك غير المجدمي'),
(86, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'af772e44-2cea-4396-bb82-9dbc13eb8691', 'ar', 'top_sub_title', 'حمل تطبيقنا'),
(87, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'f6516965-15da-4fd6-805d-7788c0121a5f', 'ar', 'mid_title', 'خدماتنا'),
(88, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'f4e72cf5-7e3f-40e0-a7b0-1185c62a65fa', 'ar', 'about_us_title', 'أسطول المجدمي'),
(89, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', 'c60d816a-3100-4d3e-8aba-013a0ef13639', 'ar', 'about_us_description', 'تعاون مشترك بين المجدمي وقوة الإنقاذ البحري لقوة الإطفاء العام لأن سلامتك بالبحر أولويتنا'),
(90, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '875a27cc-5456-4573-a4af-cdf9d2e15c16', 'ar', 'registration_title', 'سجل كمورد'),
(91, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '95b1d2d7-b656-4ea6-9347-79909a94e7dd', 'ar', 'registration_description', 'تعاون مع المجدمي وسجل كمورد للمنتجات البحرية في منصتنا'),
(92, 'Modules\\BusinessSettingsModule\\Entities\\DataSetting', '0689bba0-0de2-4820-902a-5b4840af7fe9', 'ar', 'bottom_title', 'أخبار حصرية'),
(103, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '522677e6-65a1-4291-98a7-9154163c6da7', 'en', 'name', 'Sulaiman Alarouj'),
(104, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '522677e6-65a1-4291-98a7-9154163c6da7', 'en', 'designation', 'Founder & CEO'),
(105, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '522677e6-65a1-4291-98a7-9154163c6da7', 'en', 'review', 'Innovation Meets Safety – Empowering Marine Rescue with Al Mujadamy.'),
(106, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '0e71750f-7893-4da7-aed2-abe083e768ae', 'en', 'name', 'Kuwait Fire Force'),
(107, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '0e71750f-7893-4da7-aed2-abe083e768ae', 'en', 'designation', 'Kuwait Marine Fire & Rescue Service'),
(108, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '0e71750f-7893-4da7-aed2-abe083e768ae', 'en', 'review', 'in Collaboration with Almujadamy we are here for your Rescue!'),
(109, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '10fc7920-85c7-467c-8401-cc71ac0c3e0a', 'en', 'name', 'Kuwait Fire Force'),
(110, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '10fc7920-85c7-467c-8401-cc71ac0c3e0a', 'en', 'designation', 'Kuwait Fire Force'),
(111, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '10fc7920-85c7-467c-8401-cc71ac0c3e0a', 'en', 'review', 'Kuwait Fire Force is Collaborating with Almujadamy & Their Professional Fleet'),
(112, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'c18d0f00-68e9-465a-84f0-8936605c4af7', 'en', 'name', 'NAVIONICS'),
(113, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'c18d0f00-68e9-465a-84f0-8936605c4af7', 'en', 'designation', 'NAVIONICS MAPS'),
(114, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'c18d0f00-68e9-465a-84f0-8936605c4af7', 'en', 'review', 'AlMujadamy Collaborating with NAVIONICS for Garmin Navionics Maps with unlimited Access for all users.'),
(118, 'Modules\\CategoryManagement\\Entities\\Category', '91249d67-497b-47eb-9df8-a0ce592e5b54', 'en', 'name', 'Fuel Tank Filling'),
(135, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'dd6ad099-c479-43c8-951e-fa12a8826780', 'en', 'title', 'Nokhetha Shabaz'),
(136, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'dd6ad099-c479-43c8-951e-fa12a8826780', 'en', 'description', 'Sr. Maintenance'),
(137, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '25c0fbdc-5462-4390-a159-091ca8b84fe7', 'en', 'title', 'Nokhetha Mohammad Murtaza'),
(138, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '25c0fbdc-5462-4390-a159-091ca8b84fe7', 'en', 'description', 'Sr. Maintenance'),
(139, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '0d1bbefb-1522-4a4c-b5b0-5010235704da', 'en', 'title', 'Nokhetha Ardaab'),
(140, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '0d1bbefb-1522-4a4c-b5b0-5010235704da', 'en', 'description', 'Sr. Maintenance'),
(141, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'db67203f-8a63-4d18-ac02-84fbdb4f89c7', 'en', 'title', 'Nokhetha Ramadhan'),
(142, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'db67203f-8a63-4d18-ac02-84fbdb4f89c7', 'en', 'description', 'Sr. Maintenance'),
(143, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'a31c534f-8d46-407d-9e23-197c94dea58b', 'en', 'title', 'Nokhetha Fabio'),
(144, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'a31c534f-8d46-407d-9e23-197c94dea58b', 'en', 'description', 'Sr. Maintenance'),
(145, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '2888503c-779d-439f-9f07-3bec446bc88b', 'en', 'title', 'Nokhetha Ali Abul'),
(146, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', '2888503c-779d-439f-9f07-3bec446bc88b', 'en', 'description', 'Head of Almujadamy Fleet'),
(151, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'fe69b1cf-d868-4995-92e6-c2daae92a8db', 'en', 'title', 'AlKhiran Port'),
(152, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'fe69b1cf-d868-4995-92e6-c2daae92a8db', 'en', 'description', 'Covering: AlKhiran - Qaruoh Island - Um Almaradem Island - AlAryaqq'),
(153, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'd9dc7dcc-287e-497f-a1ac-c3d9db5a9552', 'en', 'title', 'AlFintass Port'),
(154, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'd9dc7dcc-287e-497f-a1ac-c3d9db5a9552', 'en', 'description', 'Covering: AlFintass - Kubbar Island - Julia\'a - Uraifjan'),
(155, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'b44d4017-3399-4869-bc56-b59c170060bb', 'en', 'title', 'Failaka Island'),
(156, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageSpeciality', 'b44d4017-3399-4869-bc56-b59c170060bb', 'en', 'description', 'Covering: Joon AlKuwait - Miskan Island - Uhha Island - AlMassila'),
(157, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'ce6157b3-fac3-42ca-8490-93697229dffa', 'en', 'name', 'Mercury Marine'),
(158, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'ce6157b3-fac3-42ca-8490-93697229dffa', 'en', 'designation', 'Mercury'),
(159, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'ce6157b3-fac3-42ca-8490-93697229dffa', 'en', 'review', 'in Collaboration with Mercury, Almujadamy Supports Diagnostics & Maintenance of Mercury Engines and Parts'),
(160, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'd799d843-7db3-4387-86cd-4a450bda6d5e', 'en', 'name', 'Suzuki Marine'),
(161, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'd799d843-7db3-4387-86cd-4a450bda6d5e', 'en', 'designation', 'Suzuki'),
(162, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'd799d843-7db3-4387-86cd-4a450bda6d5e', 'en', 'review', 'in Collaboration with Suzuki, Almujadamy Supports Diagnostics & Maintenance of Suzuki Engines and Parts'),
(166, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e8b2af54-fedc-436a-b926-ec8bb8d54a5f', 'en', 'name', 'YAMAHA Outboard'),
(167, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e8b2af54-fedc-436a-b926-ec8bb8d54a5f', 'en', 'designation', 'YAMAHA'),
(168, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e8b2af54-fedc-436a-b926-ec8bb8d54a5f', 'en', 'review', 'in Collaboration with YAMAHA, Almujadamy Supports Diagnostics & Maintenance of YAMAHA Engines and Parts'),
(169, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'b1c5e413-6add-4746-b520-ea90aa3d23a3', 'en', 'name', 'Honda Marine'),
(170, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'b1c5e413-6add-4746-b520-ea90aa3d23a3', 'en', 'designation', 'Honda'),
(171, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'b1c5e413-6add-4746-b520-ea90aa3d23a3', 'en', 'review', 'in Collaboration with HONDA, Almujadamy Supports Diagnostics & Maintenance of HONDA Engines and Parts'),
(172, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '66c232f4-67ee-4817-b86c-73e3b30e7a44', 'en', 'name', 'AMARON Battries'),
(173, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '66c232f4-67ee-4817-b86c-73e3b30e7a44', 'en', 'designation', 'AMARON'),
(174, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', '66c232f4-67ee-4817-b86c-73e3b30e7a44', 'en', 'review', 'in Collaboration with AMARON, Almujadamy is A Proud Partner which Provides Batteries with Annual Warranty Guranteed'),
(175, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageFeature', '15ff056a-6447-4e44-a1eb-cc2355a816f0', 'en', 'title', 'GET YOUR SERVICE 24/7'),
(176, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageFeature', '15ff056a-6447-4e44-a1eb-cc2355a816f0', 'en', 'sub_title', 'Visit our app and select your location to see available services near you'),
(177, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageFeature', '07744dcb-50f4-4045-bab9-0fd68f8b899e', 'en', 'title', 'GET YOUR SERVICE 24/7'),
(178, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageFeature', '07744dcb-50f4-4045-bab9-0fd68f8b899e', 'en', 'sub_title', 'Visit our app and select your location to see available services near you'),
(179, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e1c58fe3-15ec-4028-bee9-ab9456bb443f', 'en', 'name', 'Empower Technology'),
(180, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e1c58fe3-15ec-4028-bee9-ab9456bb443f', 'en', 'designation', 'Subsidiary of Empower State Holdings'),
(181, 'Modules\\BusinessSettingsModule\\Entities\\LandingPageTestimonial', 'e1c58fe3-15ec-4028-bee9-ab9456bb443f', 'en', 'review', 'Empower Technology is honored to be the Development Company of AlMujadamy Marine Rescue App - The First Rescue App in the word that supports Artificial intelligence that support the fast Authority responses All over Kuwait!'),
(182, 'Modules\\CategoryManagement\\Entities\\Category', '50af761b-b99d-4934-a703-8c61eeacb910', 'en', 'name', 'in Sea Boat Towing'),
(183, 'Modules\\CategoryManagement\\Entities\\Category', 'cfe61573-3594-495c-abd3-55fb11947dd8', 'en', 'name', 'Technical Professional Services'),
(184, 'Modules\\CategoryManagement\\Entities\\Category', 'a415f4f0-c594-4711-8fc6-8a3f09d4e0e7', 'en', 'name', 'Electrical Malfunction'),
(185, 'Modules\\CategoryManagement\\Entities\\Category', 'd29df588-6059-4147-b075-da91b960ca4a', 'en', 'name', 'Battery Replacment'),
(186, 'Modules\\CategoryManagement\\Entities\\Category', '5dd99ed6-f8ea-4b53-ac4c-c75de5c40ff9', 'en', 'name', 'Oil & Fillter Replacment'),
(187, 'Modules\\CategoryManagement\\Entities\\Category', '4270a316-be0c-4d8d-96f5-34e5a5d6715d', 'en', 'name', 'AMARON'),
(188, 'Modules\\CategoryManagement\\Entities\\Category', '4270a316-be0c-4d8d-96f5-34e5a5d6715d', 'en', 'description', 'We rovide all nessecary AMARON batteries for all you vessel'),
(189, 'Modules\\CategoryManagement\\Entities\\Category', 'e18d4f7e-6f5a-46a0-b6a7-85b972170a88', 'en', 'name', 'All Nessesary Electrical Accessories'),
(190, 'Modules\\CategoryManagement\\Entities\\Category', 'e18d4f7e-6f5a-46a0-b6a7-85b972170a88', 'en', 'description', 'All Nessesary Electrical Accessories'),
(191, 'Modules\\CategoryManagement\\Entities\\Category', 'c0c5a4d0-8434-4cd1-b92d-35e02473749a', 'en', 'name', 'Fuel Tank Filling in the middle of the Sea'),
(192, 'Modules\\CategoryManagement\\Entities\\Category', 'c0c5a4d0-8434-4cd1-b92d-35e02473749a', 'en', 'description', 'Fuel Tank Filling in the middle of the Sea'),
(193, 'Modules\\CategoryManagement\\Entities\\Category', '3e5440bb-7a1f-4fd2-bcf9-9c29086341f6', 'en', 'name', 'Tow your Boat with All weights'),
(194, 'Modules\\CategoryManagement\\Entities\\Category', '3e5440bb-7a1f-4fd2-bcf9-9c29086341f6', 'en', 'description', 'Gross Tonnage we will Tow 1 - 20 Tons with a price range starting from 50 KWD including a free Diagnostic System Test'),
(195, 'Modules\\CategoryManagement\\Entities\\Category', '5168edca-2ef8-42a1-a2b8-e5003d7053c0', 'en', 'name', 'Oil & Filter Replacments'),
(196, 'Modules\\CategoryManagement\\Entities\\Category', '5168edca-2ef8-42a1-a2b8-e5003d7053c0', 'en', 'description', 'Available Oils for 2 Stroke & 4 Stroke for All brands: YAMAHA - HONDA - Murcery - SUZUKI'),
(197, 'Modules\\CategoryManagement\\Entities\\Category', '09829674-b705-4bb6-8454-0435501b4776', 'en', 'name', 'Technical Professional Service'),
(198, 'Modules\\CategoryManagement\\Entities\\Category', '09829674-b705-4bb6-8454-0435501b4776', 'en', 'description', 'All needed Technical Services for Alll Engines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `boat_number` varchar(255) DEFAULT NULL,
  `boat_name` varchar(255) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `identification_number` varchar(191) DEFAULT NULL,
  `identification_type` varchar(191) NOT NULL DEFAULT 'nid',
  `identification_image` varchar(255) NOT NULL DEFAULT '[]',
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(191) NOT NULL DEFAULT 'male',
  `profile_image` varchar(191) NOT NULL DEFAULT 'default.png',
  `fcm_token` varchar(191) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `user_type` varchar(191) NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `loyalty_point` decimal(24,3) NOT NULL DEFAULT 0.000,
  `ref_code` varchar(50) DEFAULT NULL,
  `referred_by` char(36) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `current_language_key` varchar(255) DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `boat_number`, `boat_name`, `phone`, `identification_number`, `identification_type`, `identification_image`, `date_of_birth`, `gender`, `profile_image`, `fcm_token`, `is_phone_verified`, `is_email_verified`, `phone_verified_at`, `email_verified_at`, `password`, `permissions`, `is_active`, `user_type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `wallet_balance`, `loyalty_point`, `ref_code`, `referred_by`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `current_language_key`) VALUES
('042c5837-7b6b-4407-bbd9-1ec24abe595d', 'انس', 'الشحروري', 'anas.shahrori851@gmail.com', NULL, NULL, '+962779788601', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$y4DpszhfhbrlW2N6cKdkAOmDSFpUTdmFg/wJ55WRCoq4TolevACBm', NULL, 1, 'customer', NULL, NULL, '2024-09-05 09:26:14', '2024-09-05 09:26:14', 0.000, 0.000, 'BXZMVHUWIL', NULL, 0, 0, NULL, 'en'),
('0dd4915d-5c45-49ad-8397-8cf97d302b4e', NULL, NULL, 'admin3@moi.com', NULL, NULL, '99837821', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$V8lSa/aoi0OocWCJK/hI/eXFa1/lM3DD7ewGAn9MIvYYX4ryfTQBW', NULL, 1, 'provider-admin', NULL, NULL, '2024-07-30 12:30:48', '2024-07-30 12:30:48', 0.000, 0.000, 'QHRL4PI2LF', NULL, 0, 0, NULL, 'en'),
('0e9da485-c5cc-4af1-9581-3e3289146f36', 'yaser', 'melhem', 'yasermelhem60@gmail.com', NULL, NULL, '+10776790802', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 1, 1, '2024-09-03 21:28:21', '2024-09-03 21:28:15', '$2y$10$9BrSfxr02L/YXQEdm0epDuz.6BKgzVgCoxBq74hrsvhhItcpxBwxy', NULL, 1, 'customer', NULL, '2024-09-04 05:58:26', '2024-09-04 05:53:21', '2024-09-04 05:58:26', 0.000, 0.000, '8OYGFKSX4F', NULL, 1, 0, NULL, 'en'),
('0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'yosef', 'als', 'yousefyousef@gmail.com', '22', '12', '+96555555555', NULL, '', '[]', NULL, 'male', 'def.png', 'fdui_apTRBCrg9jR1cD08D:APA91bHiXA6oF9iGOStfjb0PeWuFUXOrb0fF0nJ-pQzVpd8vwcSUtSFmaQSXXiSc__uL5fdtXi6XL6Rw0KPFLUsfy6lmVJkr78DZ6ZxgRiUPTDZ4pHa1r_4', 0, 0, NULL, NULL, '$2y$10$mQoDt/ArVpM1gu1/w0svjeh9.LimgWSNDSTZpXM53xZuV/2DV/pR2', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-23 16:46:40', '2024-11-05 21:54:26', 0.000, 0.000, 'BHARVBTEYV', NULL, 0, 0, NULL, 'ar'),
('120a5724-d07f-470f-89bf-6f0119a4b413', NULL, NULL, 'yazanalhalaiqaadmin@gmail.com', NULL, NULL, '786527366', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$O3XoQC9do86TUI7v2GA2XeorhLKSbdBpKxKxCdJaT4XYVfVTMJe5a', '\"[\\\"requests\\\",\\\"categories\\\",\\\"services\\\",\\\"driver_list\\\",\\\"transactions\\\"]\"', 1, 'provider-admin', NULL, NULL, '2024-10-09 10:03:14', '2024-10-09 10:03:14', 0.000, 0.000, 'XAYCI972GU', NULL, 0, 0, NULL, 'en'),
('26ec635f-6403-4b4a-adb6-ea203d3df294', 'Kausha', 'Verma', 'keviverma172@gmail.com', NULL, NULL, '+918979876543', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$CsCIaW6dzY7pHgnIyv/EzOhH7r.BYvHNZJLq9h7VD.vARKvaxE3Pq', NULL, 1, 'customer', NULL, NULL, '2024-12-04 15:17:04', '2024-12-04 15:17:04', 0.000, 0.000, 'GP8BJGIFXB', NULL, 0, 0, NULL, 'en'),
('30aea711-dde5-4560-b7e8-24f996acefe8', NULL, NULL, 'adminmanager@admin.com', NULL, NULL, '6606060', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$zgnbWbmLCcXfM5ja.0QyDuyjhtP.m1/IdAVHdGAMC4P4tHrPCJBmi', '\"[\\\"requests\\\",\\\"driver_list\\\",\\\"transactions\\\"]\"', 1, 'provider-admin', NULL, NULL, '2024-12-05 12:44:43', '2024-12-05 12:44:43', 0.000, 0.000, 'MVLIHAQ7YY', NULL, 0, 0, NULL, 'en'),
('326930e0-c19e-4bc8-aedb-4d6eb61e48a5', 'test', 'user', 'testuser@gmail.com', NULL, NULL, '+148654619485', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$F7HnZCvTQuuU/UUFIvO9Q.Qkz5HSNih54kj3Th/p4hpH1xWuqBw2G', NULL, 1, 'customer', NULL, NULL, '2024-09-04 05:43:19', '2024-09-04 05:50:54', 0.000, 0.000, 'Q20I4CJEWU', NULL, 2, 0, NULL, 'en'),
('353c4ab3-b19b-43ce-8844-4b4c9a2effbc', NULL, NULL, 'admin12@mujadamy.com', NULL, NULL, '55556666', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$5YjdEjdSDzvF9XQzLN6oZOMbOf.V8N4i1s49HTV.PHV2TxqB1Jr4O', '[\"requests\",\"categories\",\"services\"]', 1, 'provider-admin', NULL, NULL, '2024-09-23 17:05:39', '2024-11-02 14:39:39', 0.000, 0.000, 'OJZYD0FPEJ', NULL, 0, 0, NULL, 'en'),
('35a730a9-b423-4fbc-84c5-082b680c2af4', 'YYs', 'yy', 'y.s@v.v', '101', '36', '+965514', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$1a4YRq36KGspxw500lmKDu9jfnEHIYLqr.cCDJC2kjVAuORABgghK', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-23 16:18:40', '2024-09-23 16:18:40', 0.000, 0.000, 'V8DNPFBI3C', NULL, 0, 0, NULL, 'en'),
('3b1b420b-2ff9-4dec-adfd-22b3e3725cd9', 'زورق ٤', 'خارج الخدمة عطل جير', 'driver@driver.com', NULL, NULL, '+1779778855', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$tF.oDiNlHdvuWvoBt9DsRuFK2AxRkL1/OUKw/69JYIKL14YA4qwaq', NULL, 0, 'provider-serviceman', NULL, '2024-09-11 12:11:16', '2024-04-19 19:23:20', '2024-09-11 12:11:16', 0.000, 0.000, 'SRT0AM5MIA', NULL, 0, 0, NULL, 'en'),
('3c73dfa2-ccb8-450e-a9fb-5d76653811f2', 'Hasan', 'Alawadhi', 'Hasan@moi.com', NULL, NULL, '+9656666666', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$vN4lvBomKvnbH.3lp1Tp0unrPxY1evuF6CR5DWZ03G98uHVCHZIZq', NULL, 1, 'provider-serviceman', NULL, '2024-09-11 12:11:23', '2024-07-30 12:20:05', '2024-09-11 12:11:23', 0.000, 0.000, 'YBLTAXAVLL', NULL, 0, 0, NULL, 'en'),
('3eb273f9-3210-4246-9e50-1e6b1f210e44', 'Yazan', 'Halaiqa', 'yazanalhalaiqa@gmail.com', '10', 'test', '+962786527366', NULL, 'nid', '[]', NULL, 'male', '2024-09-05-66d95f1fa9f52.png', 'eEB11gYZTKC-m626CmOV6F:APA91bFfXjd-q2BOtiGPoXF0pOg19PthvO6SXMcbEgMJOc-2aYfSD7A7iZF5dHGgmrAFSPaJgwfERKW7Twd2SITcyJcXFX2rF0GlyK4kPFPxLbzNxX_r-rQ', 0, 0, NULL, NULL, '$2y$10$Ax2SB1b5kOcLSoxnfwhKM.fDeUJqR.Yd5F8PBKgdS3Op6xadWCsOG', NULL, 1, 'customer', NULL, NULL, '2024-09-05 03:28:02', '2025-02-10 14:36:11', 0.000, 0.000, '6MNW06P7LD', NULL, 0, 0, NULL, 'ar'),
('411943a7-36fb-474a-8e8d-f73c4a8a750c', 'Anas', 'Alshahrori', 'anas.shahrori85@gmail.com', NULL, NULL, '+10779788601', NULL, '', '[]', NULL, 'male', '2024-04-19-6622241173877.png', NULL, 0, 0, NULL, NULL, '$2y$10$5v5XELnZMmDuamT06PFHMe3AkAiiRv7un0TeZluthDoryMe94oGA2', NULL, 1, 'admin-employee', NULL, NULL, '2024-04-19 17:58:09', '2024-04-19 17:58:09', 0.000, 0.000, 'QKLJLJJYK0', NULL, 0, 0, NULL, 'en'),
('449b0411-c541-4bf9-8b7f-63f4a9ec611b', 'Sudhanshu', 'Negi', 'negi123@gmail.com', NULL, NULL, '+919758661423', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$9IKXKdd0hr4N1uLK.PGdquR73aG0LOefgtS1b.rtDKtj6AAsNKx7O', NULL, 1, 'customer', NULL, NULL, '2024-12-05 08:59:13', '2024-12-05 08:59:13', 0.000, 0.000, 'R5YSKLI7Y9', NULL, 0, 0, NULL, 'en'),
('531fc65c-b05e-4dd6-bd68-51c04a69e784', 'yousef', 'alshatti', 'yousfalshatti@gmail.com', NULL, NULL, '+96555554444', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$LNCB.EwEr0Ej1o07pnwuQed5Bmh1pxVP7wjhx3SWCjAXXFEXwkh5O', NULL, 1, 'admin-employee', NULL, NULL, '2024-09-24 12:34:21', '2024-09-24 12:34:21', 0.000, 0.000, '2FHMA6EY9D', NULL, 0, 0, NULL, 'en'),
('5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', 'Sudhanshu', 'Negi', 'negi@negi.com', NULL, NULL, '+919759851988', NULL, 'nid', '[]', NULL, 'male', 'default.png', 'clGbLVXfFTfiKjx2P2_NKs:APA91bGBJdYC0c3skwq87gCx7V3jmzTWIFScIlAdf5ckJmquN-B8R8qI8i7Aissq2WDWfz0Yx99h7es2_mFtgLP_JINdQGCsf-aFbTQ8HK3rPgiOuDxT-IU', 0, 0, NULL, NULL, '$2y$10$66WQbz5egaeXTBN49Q.kr.5io5GXOVRdNBCKgPf8OuxgCQJQzRLVG', NULL, 1, 'customer', NULL, NULL, '2024-12-05 09:44:17', '2024-12-10 16:53:43', 0.000, 0.000, '0OHI1GLAR4', NULL, 0, 0, NULL, 'en'),
('61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', NULL, NULL, 'anas@anas.com', NULL, NULL, '+1000', '1111', 'passport', '[\"2024-03-26-66025783e0baf.png\"]', NULL, 'male', 'default.png', NULL, 0, 1, NULL, NULL, '$2y$10$w.pWadVBmB9ENXpomgBxEu0ZGn00nLrqnLuAqsYwqWfUl0Yd3iR5G', NULL, 1, 'provider-admin', NULL, '2024-04-19 16:39:26', '2024-03-26 15:05:07', '2024-04-19 16:39:26', 0.000, 0.000, 'ULPQJFY0X7', NULL, 2, 0, NULL, 'en'),
('6300be25-dcbc-4232-a1a9-b342bdd78bff', 'محمد', 'سليمان', 'msolimansy@gmail.com', NULL, NULL, '+96556523815', NULL, 'nid', '[]', NULL, 'male', 'default.png', 'diNCbKuSSPW07cI8-Rptem:APA91bEytccBt7zuqT4zTVUDs4wfKX-lU59_rSIcHMVSThNf0qeoo28oaaYTNVhWaBiQkH_xvYl0LGZIOKWu-q6FlzSMDl5UDdag2i2EcIwKFfTtqJfTExVGFX52JPdvzBQ0otjsxKJN', 0, 0, NULL, NULL, '$2y$10$ZxnYV.43QF2EZBSKvj3t6uYZ3m1udKjIxtlh4bMZow5M7OFfmGgwy', NULL, 1, 'customer', NULL, NULL, '2024-09-23 16:49:57', '2024-11-04 14:55:49', 0.000, 0.000, 'RMT3QQXYLX', NULL, 0, 0, NULL, 'ar'),
('6704e047-c5a4-4abd-8e1e-98f4503d1648', 'Anas', 'Alshahrori', 'anas@anas.com', NULL, NULL, '+1779788601', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$UaUJAsFr57MT9sw4J.wnWu1LUnD79fmm2/3nfgTqScAcAHhFONjQC', NULL, 1, 'customer', NULL, '2024-04-19 17:57:16', '2024-04-19 17:36:00', '2024-04-19 17:57:16', 0.000, 0.000, 'EGMLT9VRVD', NULL, 0, 0, NULL, 'en'),
('6df43f8a-e20c-4353-acff-8705bf3a8077', 'Yousef', 'Alshatti', 'Y.Alshatti@empowerkwt.com', NULL, NULL, '+96551433393', NULL, 'nid', '[]', NULL, 'male', '2024-07-29-66a664110c91d.png', NULL, 0, 0, NULL, NULL, '$2y$10$eFtdLVo5NGlsrg.v/06PM.HOsu0LiwL/tYxGBEAcSBaYNQIW9BX/e', NULL, 1, 'customer', NULL, '2024-09-23 16:41:59', '2024-07-29 03:30:25', '2024-09-23 16:41:59', 0.000, 0.000, 'PHLHHJ8XEM', NULL, 1, 0, NULL, 'en'),
('72ed24f1-b3c3-4e0a-890b-e22471639d02', 'moh', 'su', '12312@123.com', '21', '22', '+965123321', NULL, '', '[]', NULL, 'male', '2024-09-23-66f19f1b08331.png', NULL, 0, 0, NULL, NULL, '$2y$10$Zh7Ow/7vqdhWeVfD/Rj4W.IFQAkmz5XwHZm60Eq.mQTtp38ExiUhC', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-23 19:02:19', '2024-09-23 19:02:19', 0.000, 0.000, 'CDNKOZQ9J9', NULL, 0, 0, NULL, 'en'),
('75e7b05a-9788-45b1-839f-b936805b72fe', NULL, NULL, 'yaser@gmail.com', NULL, NULL, '64841651651', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$qnY0HGvu5PWkI3O/GILYJ.LPhQ4YHfC6GCEAH9KKp79GtjTGAc3pG', '\"[\\\"transactions\\\"]\"', 1, 'provider-admin', NULL, NULL, '2024-08-31 01:18:26', '2024-08-31 01:18:26', 0.000, 0.000, '1LXSTJSDLT', NULL, 0, 0, NULL, 'en'),
('76514d38-6108-4b78-b2a3-e41efd7f9be9', NULL, NULL, 'Info@empowerkwt.com', NULL, NULL, '+96555555555', 'Ryuurfhh', 'trade_license', '[\"2025-03-06-67c8d9641df44.png\"]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$mO2bkpIMyBaUgqNbnenoTO6Ef9Qu/9HMGUAtmFhh5Lb5nimOERsZK', NULL, 0, 'provider-admin', NULL, NULL, '2025-03-06 02:08:20', '2025-03-06 02:08:20', 0.000, 0.000, 'BERNCQSK0H', NULL, 0, 0, NULL, 'en'),
('7b4e1f85-5109-4d56-ad7b-975c9cbb30dd', NULL, NULL, NULL, NULL, NULL, '+962779788601', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$.L27LUo8cnV1Q5Qnm4RDRuTTnTNrATRhPJGx6uPF2Qx6Rz7eeTEK.', NULL, 1, 'provider-admin', NULL, '2024-04-19 17:27:26', '2024-04-19 16:46:34', '2024-04-19 17:27:26', 0.000, 0.000, 'ZUIEJYZNR1', NULL, 0, 0, NULL, 'en'),
('7e3c4471-507f-418c-97dc-221318cc64ab', 'Sonu', 'Negi', 'sonu@sonu.com', '123456789', 'ABCD', '+916948752314', NULL, '', '[]', NULL, 'male', 'def.png', 'cBTSwdB_QwWkbNxpHAq0CI:APA91bF742APhXdzI0_4NqqV9Xnkk82ivuTx3y4F04UZwy437X8qZF3BhmhFPB7RobtIXr_BlYlNmj5YZVUqCLawm03SBG5UoK1srl4sD0ME_WAYc6uqngM', 0, 0, NULL, NULL, '$2y$10$sFnnX9H/NbW6zgGg0sM2KOHUQ6W7wlBzW8zf9IvT/AY1moZw5oe2S', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-12-05 12:28:20', '2024-12-09 10:42:21', 0.000, 0.000, 'ZU5EBFPMWN', NULL, 0, 0, NULL, 'en'),
('808500dc-ff9c-4918-aadc-a02b986fc9fe', 'yaser', 'melhem', 'yasermelhem60@gmail.com', NULL, NULL, '+10776790802', NULL, 'nid', '[]', NULL, 'male', 'default.png', '', 0, 0, NULL, NULL, '$2y$10$9QIwlXVlA0WxzqRu4TWl0.WryQJgG493OgvUoul0m1zOktD5j892S', NULL, 1, 'customer', NULL, '2024-09-05 02:24:39', '2024-09-04 06:12:48', '2024-09-05 02:24:39', 0.000, 0.000, 'KDBAMD5KHW', NULL, 2, 0, NULL, 'en'),
('82f44630-e829-4799-a84e-e6c72921d12f', 'سليمان', 'العروج', 'Salarouj@empowerkwt.com', NULL, NULL, '+96599604013', NULL, 'nid', '[]', NULL, 'male', '2024-09-10-66e02c5cbd5b5.png', 'ftw8LjPawk-BlWZuM3U6ky:APA91bG2mT-xAu69fS8zuz-1fC4k3Yk4U4TGLqXyRZ_flA5keJzwewws25PjOz5rJLKfbNfeVtcOb2Ps2TXdKoQA9TirvIz3HOyTj_Ay0nRgOIsPLrMfMfU', 0, 0, NULL, NULL, '$2y$10$jzraJll./GqhS33HjAgKBe0Ngmed/BZQpbUpg1Hf4/Epjizr6t6rO', NULL, 1, 'customer', NULL, NULL, '2024-09-05 12:00:04', '2024-12-08 19:47:19', 0.000, 0.000, 'MLMAGTOBAE', NULL, 4, 0, NULL, 'en'),
('853b5926-bfbe-4e55-aaf8-58e7bd86b424', 'Vivek', 'Alarouj', 'slomx3@gmail.com', NULL, NULL, '+919759259905', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$XUjQxf5TNZUJ8BbZhNJviun7oRGb5MpERyWftwP6A16GTohUL5T6G', NULL, 1, 'customer', NULL, NULL, '2024-11-29 14:54:05', '2024-11-29 14:54:05', 0.000, 0.000, 'OZ5YTMHNPO', NULL, 0, 0, NULL, 'en'),
('89206e19-67a4-43a2-963b-607edde34e15', NULL, NULL, '862382@MOI.GOV.KW', NULL, NULL, '67763287638', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$AyBSc3PhVbTOj1jvoo4R7OglZk50wFRYaGNPN2tJB/eFna4dOEn0S', '[\"requests\",\"categories\",\"services\",\"driver_list\",\"transactions\"]', 1, 'provider-admin', NULL, NULL, '2024-07-30 22:36:33', '2024-12-03 09:50:29', 0.000, 0.000, 'X4YDU83JBU', NULL, 0, 0, NULL, 'en'),
('939d9c54-2e93-40ba-9a27-72fef8ec92da', NULL, NULL, 'admin123@mujadamy.com', NULL, NULL, '11112222', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$6YxH7jYXgeKlE6pxFA5am.Y4Vs6I6BFeIJge/kGbITsutjCDEgZHe', '[\"requests\",\"categories\"]', 1, 'provider-admin', NULL, NULL, '2024-11-02 16:33:45', '2024-11-09 19:12:24', 0.000, 0.000, 'HZRPDRQ6UD', NULL, 0, 0, NULL, 'en'),
('96533152-fd99-4516-b067-5831fc350a1c', NULL, NULL, 'arafeh@gmail.com', NULL, NULL, '65486156651', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$nzw8fjhSFIbiaBAl2GlqY.F1rijS72e9VAneS20pIES3120rTWEhi', '\"[\\\"transactions\\\"]\"', 1, 'provider-admin', NULL, '2024-09-01 05:09:19', '2024-08-31 03:12:57', '2024-09-01 05:09:19', 0.000, 0.000, '9RGUYI6BLG', NULL, 0, 0, NULL, 'en'),
('992de8d3-3809-4c2a-8713-fe108127ea52', 'Anas', 'ElShahrouri', 'anas@anas.com', NULL, NULL, '+96577889944', NULL, '', '[]', NULL, 'male', 'def.png', 'daOvac-gSB2oybNIrsEJGJ:APA91bFJord3P6NWXUqhxC-T3n1Vb9xhalXHLPImwbbpcTRI9_BxZoCAn1mMx_TwhZYX2Yhmy5mF4a4K38GOICWM890H6WbUyBanzkl5A2y_R4uCEcbOzzhfDuDNfjzhBDhNfY6UTEs-', 0, 0, NULL, NULL, '$2y$10$vw2p57Ule08XwG9i7BY3MOeXlUdI0TipBdz3f8bO7U1JL3mc9LBbq', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-10 10:31:09', '2024-10-25 20:35:13', 0.000, 0.000, 'HXFYVNSELC', NULL, 0, 0, NULL, 'ar'),
('9d1d70d9-c0f9-45c2-a462-3271610cf059', NULL, NULL, 'anas.shahrori85@gmail.com', NULL, NULL, '779788601', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$sMr80ZOgYL1Z4LImDYUeUeSGs04legxdYTKoV0Fy9MZ1MjOnvDCem', NULL, 1, 'provider-admin', NULL, '2024-04-19 17:57:07', '2024-04-19 17:27:58', '2024-04-19 17:57:07', 0.000, 0.000, '2CWEVIPHIN', NULL, 0, 0, NULL, 'en'),
('a012a0ae-ec77-45db-9230-ec2d7a04bd76', NULL, NULL, NULL, NULL, NULL, '+962779788601', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$Zl.P/ryGRePg0kvlblVrZOqsXxK.X3bsb1P9zO9kSLXvbU.ucJ9oi', NULL, 1, 'provider-admin', NULL, '2024-04-19 16:46:08', '2024-04-19 16:41:14', '2024-04-19 16:46:08', 0.000, 0.000, 'WVIPV3NGQE', NULL, 0, 0, NULL, 'en'),
('a0c4d184-2730-4309-bd34-e11a979ff06f', 'yaser', 'melhem', 'yasermehem60@gmail.com', NULL, NULL, '+962776790802', NULL, 'nid', '[]', NULL, 'male', 'default.png', 'eM0-rWJwQk-EqG5Jdke93o:APA91bEMZP3kDzhYwlkVVL8bp3teZCi5NhwptTEKrlHTbmlKDpr1zCi0pqRhdraPJS4rVDBa0N3JNJiV7JZsDumrg1E_gDss95XFO1DBn4qtnNb4tMrhPLBRJ60rJi3tg5H9oD70O4BA', 1, 1, NULL, NULL, '$2y$10$56OqmirFbg63bAPy1G5Ht.C4T4YVCkM21FWZ6eIweIAtcYexnu6XW', NULL, 1, 'customer', NULL, '2024-09-05 02:54:30', '2024-08-06 04:41:07', '2024-09-05 02:54:30', 0.000, 0.000, 'AND3WVHLPI', NULL, 0, 0, NULL, 'en'),
('a2745585-f1ff-49cf-a265-2279fbee15cd', NULL, NULL, 'admin1@mujadamy.com', NULL, NULL, '51231234', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$BKRnEB6qYjJoxFCQkGb5hehukrSNaRqnK72prqvO/k2ElSio9e2h2', '[\"requests\"]', 1, 'provider-admin', NULL, NULL, '2024-09-05 18:31:17', '2024-09-05 18:38:55', 0.000, 0.000, 'ZIVBSC5VIY', NULL, 0, 0, NULL, 'en'),
('a543b3dc-e196-464d-a390-158991c2d880', 'Khaled', 'Aljasser', 'aljassar@moi.com', NULL, NULL, '+96573737373', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$NNDxa5rfpGJAySK.90OpX.WqkzmmdbHojJ3dvd7AxTNoVSCmOUoZa', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-07-30 12:21:10', '2024-09-23 16:18:52', 0.000, 0.000, 'CLGLGREAPH', NULL, 0, 0, NULL, 'en'),
('af80f800-9348-4d19-ae8c-acdc395f75d3', 'test', 'test2', 'test@test.com', NULL, NULL, '+962776679080', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$YnpojLIOqM7t1dirG2Hq.udonLr.kOS5T2AIZMiGFr2Y/UePE1Csy', NULL, 1, 'customer', NULL, NULL, '2024-08-06 04:55:24', '2024-08-06 04:55:24', 0.000, 0.000, 'FFNEICTTRS', NULL, 0, 0, NULL, 'en'),
('b76768df-fdf1-4878-bc15-87b6fe43c9ff', 'Sulaiman', 'Abdulrazzaq', 'slomx3@hotmail.com', NULL, NULL, '+96511111111', NULL, '', '[]', NULL, 'male', '2024-09-23-66f186781438e.png', NULL, 0, 0, NULL, NULL, '$2y$10$Ysw8X2xuJcCC.f6o2e28EOgzlOAdDppWcPXvedJ0SZGVSso4AFN2S', NULL, 1, 'admin-employee', NULL, NULL, '2024-09-23 17:17:12', '2024-09-23 17:17:12', 0.000, 0.000, 'L6UYOENC7G', NULL, 0, 0, NULL, 'en'),
('b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'Yy', 'Ss', 'y.alshatti@empowerkwt.com', NULL, NULL, '+96551433393', NULL, 'nid', '[]', NULL, 'male', 'default.png', 'fVjbnY38SAaLlBG5tsXVpu:APA91bHwbFAnxLFSvn6FV1HTXoQcBkBupfuFWNmS9shskKmwbryh5mjW1gUiWEriMxLGJ6ms8T7dDke0Yr3JzHRgQj3dkdT4Ay1WZ5B16DG_PTf_cN5ZvWE', 0, 0, NULL, NULL, '$2y$10$r0CWfeeKiLpMJelKYBrh0uq9rprL2HsK0LIYGx2wHeaSaLKhcF9zW', NULL, 1, 'customer', NULL, NULL, '2024-09-23 16:42:59', '2024-11-04 16:57:21', 0.000, 0.000, 'PKYJLDA83I', NULL, 0, 0, NULL, 'en'),
('b9178a82-1185-4259-aea0-8dc8d6702b90', NULL, NULL, 'testadmin2@gmail.com', NULL, NULL, '4864689461', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$Hjp.aUG2yrg/9FCJnMuMoeviJEyP1CkDdHBat9kiIWZYivHXEIrFG', '\"[\\\"driver_list\\\",\\\"transactions\\\"]\"', 1, 'provider-admin', NULL, '2024-09-01 05:09:26', '2024-08-31 02:44:27', '2024-09-01 05:09:26', 0.000, 0.000, 'RAPWD7S4YK', NULL, 0, 0, NULL, 'en'),
('bb542b29-2b2b-4f08-9682-29fcd0c3d705', NULL, NULL, 'b.abdullateef@empowerkwt.ocm', NULL, NULL, '55555555', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 1, 1, NULL, NULL, '$2y$10$JbdxnLO4omFfcyH0Q3XzxOBafJitwNJaJDSf6tAudMFwUJ44IIvNm', NULL, 1, 'provider-admin', NULL, NULL, '2024-08-03 07:24:11', '2024-08-03 07:24:11', 0.000, 0.000, 'TA3T51R50P', NULL, 0, 0, NULL, 'en'),
('bfcc5675-6de8-44b2-9fbd-a97a5f98382c', 'زورق ١', '-٢٢', '1-22@moi.com', NULL, NULL, '+96599322933', NULL, '', '[]', NULL, 'male', '2024-07-30-66a832c745246.png', NULL, 0, 0, NULL, NULL, '$2y$10$XSsOxV1Mf4HXI3N4wkbmau.8WWXvNmK8VUUt5LYy2z.UdsvKcipG2', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-07-30 12:24:39', '2024-09-05 11:43:48', 0.000, 0.000, 'OTBM5XTYV5', NULL, 0, 0, NULL, 'en'),
('c6b05135-d81d-40e1-8cb0-cdf60cf23428', 'Sudhanshu', 'Negi', 'negisudhanshu188@gmail.com', NULL, NULL, '+918171223333', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$j91yF6qamGXhImdM5zyAruWe1nmbiYN9RqJrMl/XzkDlSu.N6EeP6', NULL, 1, 'customer', NULL, NULL, '2024-12-03 15:24:25', '2024-12-03 15:24:25', 0.000, 0.000, 'AXMCNPUIR7', NULL, 0, 0, NULL, 'en'),
('c76b6a17-dbe5-4efb-bfee-3d33d2ded36f', 'Super', 'Admin', 'admin@mujadamy.com', NULL, NULL, '+96566399933', NULL, 'nid', '[]', NULL, 'male', '2025-03-07-67cb46cdf06b4.png', NULL, 0, 0, NULL, NULL, '$2y$10$65lRhrIUGQgkwXgeQe146usltvN2Kfl7L0IhH3vihIDtKrOnn.Bwi', NULL, 1, 'super-admin', NULL, NULL, '2024-03-25 23:47:56', '2025-03-07 22:20:00', 0.000, 0.000, '3JKE11YTNE', NULL, 0, 0, NULL, 'en'),
('cf2540fe-218f-44f4-8597-8792ecaa9d17', 'Sulaiman', 'Alarouj', 'salarouj@empowerkwt.com', NULL, NULL, '+96599604013', NULL, 'nid', '[]', NULL, 'male', '2024-07-30-66a8301eea9b3.png', NULL, 0, 0, NULL, NULL, '$2y$10$cFoejF.NNMVIftQEBAkoH.OnvMhJ4VCTktHUGJAPxnGQBfo/IDI7e', NULL, 1, 'customer', NULL, '2024-09-05 11:56:38', '2024-07-29 03:29:23', '2024-09-05 11:56:38', 0.000, 0.000, 'H3N3ZHKYDW', NULL, 0, 0, NULL, 'en'),
('d145f225-3166-4e02-9299-0f936eb39310', 'Kaushal', 'Verma', 'testinguser1110@gmail.com', NULL, NULL, '+917302641309', NULL, 'nid', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$jhYOyS/DRcPjHc5HXBZ.r.qFKMF7y3ulxsT8lbtEtCbb/rNqbBR3y', NULL, 1, 'customer', NULL, '2024-12-02 08:08:33', '2024-12-02 08:00:00', '2024-12-02 08:08:33', 0.000, 0.000, 'VDCSYIFOEY', NULL, 1, 0, NULL, 'en'),
('d1ce16fe-bfe5-4e99-8465-f9044deaecf1', 'Ali', 'Abul', 'a.abul1994@hotmail.com', '03', 'Mujadamy', '+96563337511', NULL, '', '[]', NULL, 'male', '2024-09-17-66e9a296f20e1.png', 'cJORK72kz0LyvaB9w5sqtC:APA91bHuynKrTK8xDtaNzel-XSxAOGQlhHbhBEhb9A5LSR4JVh1FqpForYhy9UVWVt_XjqXqXjwkkd6a1WiBWoG8tzBo1CHffFlkaapwVDx8oDW8bzJ1TRBRhlkPAbVs2klwfdYm9Syb', 0, 0, NULL, NULL, '$2y$10$frHGgugnLC5Bczrl1U9YtOdEdICtR5HsmYJtFySaLpbd1TIEHwpCe', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-17 17:39:03', '2024-09-18 19:43:25', 0.000, 0.000, '5AZJPF0WLS', NULL, 0, 0, NULL, 'en'),
('e5723a2b-e89b-4f79-845c-ba09e7d5825f', 'Moi', 'Cost Guard', 'moi1@moi.com', NULL, NULL, '+96599484849', NULL, '', '[]', NULL, 'male', 'def.png', NULL, 0, 0, NULL, NULL, '$2y$10$uVouSxKbaBy3ZsFFlTO7keYQL2m929GW1T4uIs23z5NWXCG71qU5.', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-07-30 12:22:09', '2024-09-23 16:43:07', 0.000, 0.000, 'GFTKBPRCY2', NULL, 0, 0, NULL, 'en'),
('ea61faec-d30c-4caa-b597-45b3b5a6dc0a', NULL, NULL, NULL, NULL, NULL, '+962779788601', NULL, '', '[]', NULL, 'male', 'default.png', NULL, 0, 0, NULL, NULL, '$2y$10$pBhghHF1v1JNcPPXEUHncOSGeQmQbdhaKj8nFk72T.NLLnjsd0.sW', NULL, 1, 'provider-admin', NULL, '2024-04-19 16:40:45', '2024-04-19 16:40:36', '2024-04-19 16:40:45', 0.000, 0.000, 'SFCPPSF5YH', NULL, 0, 0, NULL, 'en'),
('ef24a2d5-1913-4ca9-944b-5b17a955c9ea', '1212', '2121', 'yousfashatti@gma.com', NULL, NULL, '+96512344321', NULL, '', '[]', NULL, 'male', 'def.png', 'eGiK4DqTTra4ddEOo8zWqL:APA91bHFe96j9uSBjTEffT1Jb4ubAMmwMnd6NB-x-3YAlns0oianhfflWc9GOaKY5AAZK3uNwDwyzTrjNp0QPawReN5S4E2twmMsSvtoxpyrbbLyfo9bFRQ', 0, 0, NULL, NULL, '$2y$10$WHkjpAN2MMJxkfHEc2EH5uKsNtx9y2jyIbFpFilvL7gsQ4xzRyO6O', NULL, 1, 'provider-serviceman', NULL, '2025-03-08 01:17:57', '2024-09-24 14:41:01', '2025-03-08 01:17:57', 0.000, 0.000, 'P9CFHQAJ4O', NULL, 0, 0, NULL, 'en'),
('f1a51915-905b-4e68-8761-0984f2243d49', 'Kaushaaalllllll', 'Vermaaaaaaa', 'testinguser1110@gmail.com', NULL, NULL, '+96550730200', NULL, 'nid', '[]', NULL, 'male', '2024-12-02-674d43be7b519.png', '@', 0, 0, NULL, NULL, '$2y$10$jr78i5rCGrQ29Z/NU2XYMuw3zvC4IXQhdBcdIt7v5XtboQCxSfEcm', NULL, 1, 'customer', NULL, NULL, '2024-12-02 08:09:11', '2025-01-10 09:43:32', 0.000, 0.000, '7ORGE88B3M', NULL, 1, 0, NULL, 'en'),
('f2c10372-605f-4f4d-acc6-9dac90aadfcc', 'Ali', 'Abul', 'info@almujadamy.com', '5565', 'Almujadamy 1', '+96566399933', NULL, '', '[]', NULL, 'male', '2024-09-11-66e16ecd25109.png', 'eQ-u3TCWFkaDsKstei8uM0:APA91bHgIcvnNWfiX0fYzBKYhTuIL8cTg6V5wtRXzhZXwXSSPLOz1xamIqSd_lWNynaTfN8VW9hP4zX0i3X7w3yJ9FIEWV6c9u3u93syjU6jp_3lQhX286Q', 0, 0, NULL, NULL, '$2y$10$mJfjc4Ezn2IsSB5r4c5HKePOxUU5hcYHRkOkhUdYnBA.gHFHdZEq.', NULL, 1, 'provider-serviceman', NULL, NULL, '2024-09-11 12:10:41', '2025-01-19 16:20:49', 0.000, 0.000, '4B4NJYIKKG', NULL, 1, 0, NULL, 'en'),
('f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', 'yaser', 'melhem', 'yasser@zinutech.com', NULL, NULL, '+10776790802', NULL, 'nid', '[]', NULL, 'male', 'default.png', 'e5FdYvimSPeaChL3-TcdBD:APA91bHBXAFYeeaqn7pY06BECFVBIxBw3PIaNUrU5bStccQ_lYA2MF9aOSjHDoVlrXFz2p6nmLAUak6yQgtRh_AIK8V3McUJY5xWf9uSJ_MbONnIJEnIpvswN-itKc9ZZ7SqLkgFlqH9', 0, 0, NULL, NULL, '$2y$10$zDXe0/DXBqXcnGMZ9k0qvOmLoAs6V5QUKiKY3xgIYDR/aNqVqv5KO', NULL, 1, 'customer', NULL, NULL, '2024-09-05 02:55:26', '2024-09-13 00:21:52', 0.000, 0.000, '2BG5TTGF0A', NULL, 0, 0, NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `lat` varchar(191) DEFAULT NULL,
  `lon` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `street` varchar(191) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_number` varchar(255) DEFAULT NULL,
  `address_label` varchar(255) DEFAULT NULL,
  `zone_id` char(36) DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `house` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `lat`, `lon`, `city`, `street`, `zip_code`, `country`, `address`, `created_at`, `updated_at`, `address_type`, `contact_person_name`, `contact_person_number`, `address_label`, `zone_id`, `is_guest`, `house`, `floor`) VALUES
(1, '411943a7-36fb-474a-8e8d-f73c4a8a750c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-19 17:58:09', '2024-04-19 17:58:09', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, '3b1b420b-2ff9-4dec-adfd-22b3e3725cd9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-19 19:23:20', '2024-04-19 19:23:20', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, '3c73dfa2-ccb8-450e-a9fb-5d76653811f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-30 12:20:05', '2024-07-30 12:20:05', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'a543b3dc-e196-464d-a390-158991c2d880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-30 12:21:10', '2024-07-30 12:21:10', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 'e5723a2b-e89b-4f79-845c-ba09e7d5825f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-30 12:22:09', '2024-07-30 12:22:09', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'bfcc5675-6de8-44b2-9fbd-a97a5f98382c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-30 12:24:39', '2024-07-30 12:24:39', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, NULL, '31.9249326', '35.9711877', '', '', '', '', 'Unknown Location Found', '2024-09-05 03:29:12', '2024-09-05 03:29:12', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(8, NULL, '31.9249326', '35.9711877', '', '', '', '', 'Unknown Location Found', '2024-09-05 04:08:27', '2024-09-05 04:08:27', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(9, NULL, '31.9249326', '35.9711877', '', '', '', '', 'Unknown Location Found', '2024-09-05 04:39:35', '2024-09-05 04:39:35', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(10, NULL, '31.9555', '35.9435', '', '', '', '', 'Unknown Location Found', '2024-09-05 05:09:56', '2024-09-05 05:09:56', 'others', 'yaser melhem', '+10776790802', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(11, NULL, '31.9555', '35.9435', '', '', '', '', 'Unknown Location Found', '2024-09-05 05:18:58', '2024-09-05 05:18:58', 'others', 'yaser melhem', '+10776790802', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(12, NULL, '31.9249329', '35.9711876', '', '', '', '', 'Unknown Location Found', '2024-09-05 05:46:45', '2024-09-05 05:46:45', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(13, NULL, '32.0467215', '35.8889324', '', '', '', '', 'Unknown Location Found', '2024-09-05 00:40:07', '2024-09-05 00:40:07', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(14, NULL, '31.9249263', '35.9711902', '', '', '', '', 'Unknown Location Found', '2024-09-05 00:40:10', '2024-09-05 00:40:10', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(15, NULL, '32.0467215', '35.8889324', '', '', '', '', 'Unknown Location Found', '2024-09-05 00:45:51', '2024-09-05 00:45:51', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(16, NULL, '31.9249318', '35.971187', '', '', '', '', 'Unknown Location Found', '2024-09-05 00:54:32', '2024-09-05 00:54:32', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(17, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '29.268370012546093', '48.05543739348649', NULL, NULL, NULL, NULL, 'مركز السالمية للإنقاذ البحري', '2024-09-05 09:33:49', '2024-09-05 09:34:05', 'service', 'مركز السالمية للإنقاذ البحري', '+96566399933', 'others', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, NULL, NULL),
(18, NULL, '29.36689564392799', '47.97006212381083', '', '', '', '', 'Unknown Location Found', '2024-09-05 12:15:40', '2024-09-05 12:15:40', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(19, NULL, '29.36689564392799', '47.97006212381083', '', '', '', '', 'Unknown Location Found', '2024-09-05 12:50:27', '2024-09-05 12:50:27', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(20, NULL, '29.27687574424819', '48.05244846305396', '', '', '', '', 'Unknown Location Found', '2024-09-05 18:26:32', '2024-09-05 18:26:32', 'others', 'Yazan Halaiqa', '+962786527366', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(21, NULL, '29.376775996566828', '47.98630913671183', '', '', '', '', 'Unknown Location Found', '2024-09-05 18:29:07', '2024-09-05 18:29:07', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(22, '992de8d3-3809-4c2a-8713-fe108127ea52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-10 10:31:09', '2024-09-10 10:31:09', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(23, 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-11 12:10:41', '2024-09-11 12:10:41', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, NULL, '29.1895657569927', '48.10152880847454', '', '', '', '', 'Unknown Location Found', '2024-09-12 13:07:15', '2024-09-12 13:07:15', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(25, NULL, '31.9555', '35.9435', '', '', '', '', 'Unknown Location Found', '2024-09-13 00:22:17', '2024-09-13 00:22:17', 'others', 'yaser melhem', '+10776790802', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(26, 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-17 17:39:03', '2024-09-17 17:39:03', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(27, '35a730a9-b423-4fbc-84c5-082b680c2af4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 16:18:40', '2024-09-23 16:18:40', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, '0ee4a963-df08-4c62-8520-eeb9451dc5e1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 16:46:40', '2024-09-23 16:46:40', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(29, NULL, '29.36936936936937', '47.987338440626935', '', '', '', '', 'Unknown Location Found', '2024-09-23 17:00:28', '2024-09-23 17:00:28', 'others', 'محمد سليمان', '+96556523815', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(30, NULL, '29.36936936936937', '47.987338440626935', '', '', '', '', 'Unknown Location Found', '2024-09-23 17:16:17', '2024-09-23 17:16:17', 'others', 'محمد سليمان', '+96556523815', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(31, 'b76768df-fdf1-4878-bc15-87b6fe43c9ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 17:17:12', '2024-09-23 17:17:12', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(32, NULL, '29.36936936936937', '47.987338440626935', '', '', '', '', 'Unknown Location Found', '2024-09-23 17:18:48', '2024-09-23 17:18:48', 'others', 'محمد سليمان', '+96556523815', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(33, '72ed24f1-b3c3-4e0a-890b-e22471639d02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 19:02:19', '2024-09-23 19:02:19', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(34, '531fc65c-b05e-4dd6-bd68-51c04a69e784', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-24 12:34:21', '2024-09-24 12:34:21', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(35, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '29.376374888025364', '47.98600371927023', '3', '6', '5', '4', '123', '2024-09-24 12:55:36', '2024-09-24 12:55:36', 'service', 'Y', '+96551433393', 'others', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '1', '2'),
(36, 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-24 14:41:01', '2024-09-24 14:41:01', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(37, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-10-29 21:30:35', '2024-10-29 21:30:35', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(38, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 16:50:51', '2024-11-02 16:50:51', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(39, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 16:51:49', '2024-11-02 16:51:49', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(40, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 17:21:46', '2024-11-02 17:21:46', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(41, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 17:22:27', '2024-11-02 17:22:27', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(42, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 17:37:16', '2024-11-02 17:37:16', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(43, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 18:04:34', '2024-11-02 18:04:34', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(44, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-02 18:05:14', '2024-11-02 18:05:14', 'others', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(45, NULL, '29.364786086699528', '47.9890875890851', '', '', '', '', 'Unknown Location Found', '2024-11-09 17:05:46', '2024-11-09 17:05:46', 'service', 'Yy Ss', '+96551433393', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', ''),
(46, NULL, '29.1895657569927', '48.10152880847454', '', '', '', '', 'Unknown Location Found', '2024-11-24 21:01:11', '2024-11-24 21:01:11', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(47, NULL, '29.1895657569927', '48.10152880847454', '', '', '', '', 'Unknown Location Found', '2024-12-02 11:01:41', '2024-12-02 11:01:41', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(48, NULL, '29.1895657569927', '48.10152880847454', '', '', '', '', 'Unknown Location Found', '2024-12-04 16:50:38', '2024-12-04 16:50:38', 'others', 'سليمان العروج', '+96599604013', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(49, NULL, '29.2003157', '79.4866418', '', '', '', '', 'Unknown Location Found', '2024-12-05 10:14:02', '2024-12-05 10:14:02', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(50, NULL, '29.2003157', '79.4866418', '', '', '', '', 'Unknown Location Found', '2024-12-05 10:15:11', '2024-12-05 10:15:11', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(51, NULL, '29.1998119', '79.4816267', '', '', '', '', 'Unknown Location Found', '2024-12-05 12:21:23', '2024-12-05 12:21:23', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(52, '7e3c4471-507f-418c-97dc-221318cc64ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 12:28:20', '2024-12-05 12:28:20', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(53, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '0', '0', 'Riyadh', 'Al-Khabhir', '27272', 'Saudi', 'Flat 3035', '2024-12-05 12:41:08', '2024-12-05 12:41:08', 'service', 'SUd', '+96566044660', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '894864', '1'),
(54, NULL, '0', '0', 'Riyadh', 'Al-Khabhir', '27272', 'Saudi', 'Flat 3035', '2024-12-05 12:41:33', '2024-12-05 12:41:33', 'service', 'SUd', '+96566044660', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '894864', '1'),
(55, NULL, '29.1998119', '79.4816267', '', '', '', '', 'Unknown Location Found', '2024-12-05 12:42:03', '2024-12-05 12:42:03', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(56, NULL, '29.1998119', '79.4816267', '', '', '', '', 'Unknown Location Found', '2024-12-05 13:05:58', '2024-12-05 13:05:58', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(57, NULL, '29.1998119', '79.4816267', '', '', '', '', 'Unknown Location Found', '2024-12-06 09:12:53', '2024-12-06 09:12:53', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL),
(58, NULL, '29.1998119', '79.4816267', '', '', '', '', 'Unknown Location Found', '2024-12-06 10:19:47', '2024-12-06 10:19:47', 'others', 'Sudhanshu Negi', '+919759851988', 'home', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, '411943a7-36fb-474a-8e8d-f73c4a8a750c', '', NULL, NULL),
(2, '3b1b420b-2ff9-4dec-adfd-22b3e3725cd9', '', NULL, NULL),
(3, '3c73dfa2-ccb8-450e-a9fb-5d76653811f2', '', NULL, NULL),
(4, 'a543b3dc-e196-464d-a390-158991c2d880', '', NULL, NULL),
(5, 'e5723a2b-e89b-4f79-845c-ba09e7d5825f', '', NULL, NULL),
(6, 'bfcc5675-6de8-44b2-9fbd-a97a5f98382c', '', NULL, NULL),
(7, '992de8d3-3809-4c2a-8713-fe108127ea52', '', NULL, NULL),
(8, 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', '', NULL, NULL),
(9, 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', '', NULL, NULL),
(10, '35a730a9-b423-4fbc-84c5-082b680c2af4', '', NULL, NULL),
(11, '0ee4a963-df08-4c62-8520-eeb9451dc5e1', '', NULL, NULL),
(12, 'b76768df-fdf1-4878-bc15-87b6fe43c9ff', '', NULL, NULL),
(13, '72ed24f1-b3c3-4e0a-890b-e22471639d02', '', NULL, NULL),
(14, '531fc65c-b05e-4dd6-bd68-51c04a69e784', '', NULL, NULL),
(15, 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', '', NULL, NULL),
(16, '7e3c4471-507f-418c-97dc-221318cc64ab', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_verifications`
--

CREATE TABLE `user_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identity` varchar(255) NOT NULL,
  `identity_type` varchar(255) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifications`
--

INSERT INTO `user_verifications` (`id`, `identity`, `identity_type`, `user_id`, `otp`, `expires_at`, `updated_at`, `created_at`, `hit_count`, `is_temp_blocked`, `temp_block_time`) VALUES
(1, 'anas@anas.com', 'email', NULL, '4381', '2024-03-26 18:09:26', '2024-03-26 15:06:26', '2024-03-26 15:06:26', 0, 0, NULL),
(2, 'testuser@gmail.com', 'email', NULL, '9882', '2024-09-04 06:47:09', '2024-09-04 05:44:09', '2024-09-04 05:44:09', 0, 0, NULL),
(3, 'yasermelhem60@gmail.com', 'email', NULL, '9647', '2024-09-04 08:26:58', '2024-09-04 07:23:58', '2024-09-04 05:54:04', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_zones`
--

CREATE TABLE `user_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `zone_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_zones`
--

INSERT INTO `user_zones` (`id`, `user_id`, `zone_id`, `created_at`, `updated_at`) VALUES
(1, '61e86d3f-e6bc-4e79-bda8-a7f74a5dab28', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(2, 'ea61faec-d30c-4caa-b597-45b3b5a6dc0a', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(3, 'a012a0ae-ec77-45db-9230-ec2d7a04bd76', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(4, '7b4e1f85-5109-4d56-ad7b-975c9cbb30dd', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(5, '9d1d70d9-c0f9-45c2-a462-3271610cf059', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(6, '411943a7-36fb-474a-8e8d-f73c4a8a750c', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(7, '3b1b420b-2ff9-4dec-adfd-22b3e3725cd9', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(8, '3c73dfa2-ccb8-450e-a9fb-5d76653811f2', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(9, 'a543b3dc-e196-464d-a390-158991c2d880', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(10, 'e5723a2b-e89b-4f79-845c-ba09e7d5825f', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(11, 'bfcc5675-6de8-44b2-9fbd-a97a5f98382c', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(12, '0dd4915d-5c45-49ad-8397-8cf97d302b4e', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(13, '89206e19-67a4-43a2-963b-607edde34e15', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(14, 'bb542b29-2b2b-4f08-9682-29fcd0c3d705', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(15, '75e7b05a-9788-45b1-839f-b936805b72fe', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(16, 'b9178a82-1185-4259-aea0-8dc8d6702b90', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(17, '96533152-fd99-4516-b067-5831fc350a1c', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(18, 'a2745585-f1ff-49cf-a265-2279fbee15cd', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(19, '992de8d3-3809-4c2a-8713-fe108127ea52', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(20, 'f2c10372-605f-4f4d-acc6-9dac90aadfcc', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(21, 'd1ce16fe-bfe5-4e99-8465-f9044deaecf1', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(22, '35a730a9-b423-4fbc-84c5-082b680c2af4', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(23, '0ee4a963-df08-4c62-8520-eeb9451dc5e1', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(24, '353c4ab3-b19b-43ce-8844-4b4c9a2effbc', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(25, 'b76768df-fdf1-4878-bc15-87b6fe43c9ff', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(26, '72ed24f1-b3c3-4e0a-890b-e22471639d02', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(27, '531fc65c-b05e-4dd6-bd68-51c04a69e784', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(28, 'ef24a2d5-1913-4ca9-944b-5b17a955c9ea', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(29, '120a5724-d07f-470f-89bf-6f0119a4b413', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(30, '939d9c54-2e93-40ba-9a27-72fef8ec92da', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(31, '7e3c4471-507f-418c-97dc-221318cc64ab', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL),
(32, '30aea711-dde5-4560-b7e8-24f996acefe8', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(191) DEFAULT NULL,
  `variant_key` varchar(191) NOT NULL,
  `service_id` char(36) NOT NULL,
  `zone_id` char(36) NOT NULL,
  `price` decimal(24,3) NOT NULL DEFAULT 0.000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `variant`, `variant_key`, `service_id`, `zone_id`, `price`, `created_at`, `updated_at`) VALUES
(21, 'Service-Cost', 'Service-Cost', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 100.000, '2024-08-06 06:31:46', '2024-08-06 06:31:46'),
(22, 'Delivery-Fees', 'Delivery-Fees', '7eae1fe8-f21c-429d-8b1e-f41641479066', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 10.000, '2024-08-06 06:31:46', '2024-08-06 06:31:46'),
(28, '10', '10', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 10.000, '2024-09-23 16:54:24', '2024-09-23 16:54:24'),
(29, 'Dilvery-fees', 'Dilvery-fees', 'be5ba37d-b2f0-487d-9e91-01557434613f', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 50.000, '2024-09-23 16:54:24', '2024-09-23 16:54:24'),
(35, 'test', 'test', '047b9008-ca42-4393-b717-d04f78e994f2', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 50.000, '2024-11-04 15:17:15', '2024-11-04 15:17:15'),
(36, '1', '1', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 0.000, '2024-11-04 16:34:46', '2024-11-04 16:34:46'),
(37, '2', '2', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 20.000, '2024-11-04 16:34:46', '2024-11-04 16:34:46'),
(38, 'توصيل', 'توصيل', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 'a1614dbe-4732-11ee-9702-dee6e8d77be4', 13.000, '2024-11-04 16:34:46', '2024-11-04 16:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` char(36) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
('1d4587c5-c214-43fe-8d3a-c2f862907b7e', 'مارين', '5555', '2024-10-29-6721106286a26.png', 1, '2024-10-29 19:42:10', '2024-10-29 19:42:10'),
('58487c15-df83-40f2-ae6a-07148f2b59a0', NULL, '2332', '2024-09-23-66f181c00ef2c.png', 1, '2024-09-23 16:57:04', '2024-09-23 16:57:04'),
('63acb8d9-7d9d-4b73-a452-7e45e856d7f1', 'مارين', '5555', '2024-10-29-672110639cafa.png', 1, '2024-10-29 19:42:11', '2024-10-29 19:42:11'),
('9db53b37-0eb1-4b87-ad1a-8338ff4b7d3c', NULL, '0779788601', '2024-04-20-6623476d18abb.png', 1, '2024-04-20 14:41:17', '2024-04-20 14:41:17'),
('ce37701b-123d-470e-b8e2-e73848d5c6f3', 'الغانم مارين', '5555', '2024-11-04-6728c1e60933a.png', 1, '2024-11-04 15:45:26', '2024-11-04 15:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `visited_services`
--

CREATE TABLE `visited_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `service_id` char(36) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visited_services`
--

INSERT INTO `visited_services` (`id`, `user_id`, `service_id`, `count`, `created_at`, `updated_at`) VALUES
(1, 'a0c4d184-2730-4309-bd34-e11a979ff06f', 'be5ba37d-b2f0-487d-9e91-01557434613f', 4, '2024-08-06 06:46:23', '2024-08-06 07:29:21'),
(2, 'a0c4d184-2730-4309-bd34-e11a979ff06f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 3, '2024-08-06 06:46:27', '2024-08-06 07:34:35'),
(3, 'a0c4d184-2730-4309-bd34-e11a979ff06f', '047b9008-ca42-4393-b717-d04f78e994f2', 1, '2024-08-06 06:58:30', '2024-08-06 06:58:30'),
(4, '3eb273f9-3210-4246-9e50-1e6b1f210e44', 'be5ba37d-b2f0-487d-9e91-01557434613f', 16, '2024-09-05 03:29:49', '2024-10-25 20:25:36'),
(5, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', 'be5ba37d-b2f0-487d-9e91-01557434613f', 5, '2024-09-05 03:32:19', '2024-09-05 04:42:52'),
(6, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '7eae1fe8-f21c-429d-8b1e-f41641479066', 5, '2024-09-05 03:36:43', '2024-09-06 15:19:35'),
(7, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '7eae1fe8-f21c-429d-8b1e-f41641479066', 1, '2024-09-05 04:03:44', '2024-09-05 04:03:44'),
(8, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '047b9008-ca42-4393-b717-d04f78e994f2', 17, '2024-09-05 04:07:11', '2024-10-25 18:46:54'),
(9, 'f9ef3c52-cbd6-4d8c-bda9-c4f186ea158c', '047b9008-ca42-4393-b717-d04f78e994f2', 3, '2024-09-05 04:20:36', '2024-09-05 04:45:22'),
(10, '82f44630-e829-4799-a84e-e6c72921d12f', '047b9008-ca42-4393-b717-d04f78e994f2', 7, '2024-09-05 12:15:10', '2024-09-12 09:55:06'),
(11, '82f44630-e829-4799-a84e-e6c72921d12f', 'be5ba37d-b2f0-487d-9e91-01557434613f', 19, '2024-09-05 12:49:48', '2024-12-22 11:47:23'),
(12, '82f44630-e829-4799-a84e-e6c72921d12f', '7eae1fe8-f21c-429d-8b1e-f41641479066', 5, '2024-09-06 15:14:40', '2024-11-24 21:00:32'),
(13, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '047b9008-ca42-4393-b717-d04f78e994f2', 9, '2024-09-23 16:51:49', '2024-09-23 17:53:33'),
(14, '6300be25-dcbc-4232-a1a9-b342bdd78bff', 'be5ba37d-b2f0-487d-9e91-01557434613f', 15, '2024-09-23 16:52:14', '2024-12-16 01:04:06'),
(15, '6300be25-dcbc-4232-a1a9-b342bdd78bff', '7eae1fe8-f21c-429d-8b1e-f41641479066', 9, '2024-09-23 16:52:21', '2024-09-23 17:53:26'),
(16, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '047b9008-ca42-4393-b717-d04f78e994f2', 8, '2024-09-23 16:53:02', '2024-11-05 21:14:05'),
(17, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '7eae1fe8-f21c-429d-8b1e-f41641479066', 7, '2024-09-23 17:58:00', '2024-11-04 16:31:53'),
(18, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', 'be5ba37d-b2f0-487d-9e91-01557434613f', 13, '2024-09-23 18:13:15', '2024-11-05 21:13:21'),
(19, 'b7db24ba-b1c8-45d8-b7a4-6c4537481a34', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 16, '2024-11-02 16:50:07', '2024-11-05 21:13:44'),
(20, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, '2024-12-05 12:36:25', '2024-12-05 12:36:25'),
(21, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '047b9008-ca42-4393-b717-d04f78e994f2', 2, '2024-12-05 12:36:40', '2024-12-05 12:38:04'),
(22, '5cb9e6fd-77f1-4c74-bad1-58e0d4c2eca2', '7eae1fe8-f21c-429d-8b1e-f41641479066', 1, '2024-12-05 12:36:53', '2024-12-05 12:36:53'),
(23, '3eb273f9-3210-4246-9e50-1e6b1f210e44', '0933f3a9-0f6c-40d1-aacb-8885ea8f74d0', 1, '2025-02-10 14:36:53', '2025-02-10 14:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` char(36) NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `request_updated_by` char(36) DEFAULT NULL,
  `amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `request_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL,
  `withdrawal_method_id` char(36) DEFAULT NULL,
  `withdrawal_method_fields` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` polygon DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `is_active`, `created_at`, `updated_at`) VALUES
('a1614dbe-4732-11ee-9702-dee6e8d77be4', 'All over the World', 0x0000000001030000000100000025000000de577956da4566c05ffb2847ee105140de57795612f065c0f4b1e90cbee75040de577956227765c054d9a52e5ab25040de577956123c65c059bde101cc885040de5779563a5f65c0c59ef914fa635040de5779561a9d65c0958caee6411a5040de57795642ed65c05754a92b533e5040de5779560a4366c0ac30798df16a5040de577956d23e66c06bbe60bb649f504022a886a9157f664044ccf8a6df91504022a886a9d5736640616fece9b340504022a886a9f562664027dbc3505a504f408b31538b82356440d6f5637e0f4e4c408b31538b62b162400f243ffb874b1ac08b31538be21e6640d1c08f519a4e43c08b31538b022d6540cb0b0984db1047c08b31538b229861406e3c7181204342c01563a61685145d403c18fa5e73ad40c09ec54c2d8a634640756126aaa37138c03c8b995a142b3440ccd3e164b0e540c0319d59e9ba3151c04883e9781b1b4bc0319d59e97a8e52c0937dad3429d548c0319d59e97a2651c0c48214170a0f33c0319d59e9baa753c02b9648092dfb20c0eb9c59e9ba7459c0b584594c36e63240eb9c59e93aa45ec0918fdd9dcaa6434075ceac741d8a63c02ea401df41044d4075ceac745dd064c08073b254e767504075ceac749dae64c08ed0c2d00d28514075ceac74bd8f63c0a529db2454bf5140eb9c59e97aea5fc01b075ce0df735140319d59e93abe53c0e8f8976fb6a754403c8b995a141739405ee27cdd06ed53409ec54c2d8a3e4d4029474755d4c152401563a616c54f5a400a438459e4e652408b31538b62fd6140527bedec1df55140de577956da4566c05ffb2847ee105140, 1, '2023-08-30 12:41:41', '2023-08-30 12:41:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `added_to_carts`
--
ALTER TABLE `added_to_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_additional_information`
--
ALTER TABLE `booking_additional_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details_amounts`
--
ALTER TABLE `booking_details_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_offline_payments`
--
ALTER TABLE `booking_offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_partial_payments`
--
ALTER TABLE `booking_partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_schedule_histories`
--
ALTER TABLE `booking_schedule_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status_histories`
--
ALTER TABLE `booking_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_zone`
--
ALTER TABLE `category_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_conversations`
--
ALTER TABLE `channel_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_lists`
--
ALTER TABLE `channel_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_users`
--
ALTER TABLE `channel_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_files`
--
ALTER TABLE `conversation_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_customers`
--
ALTER TABLE `coupon_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_settings`
--
ALTER TABLE `data_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_types`
--
ALTER TABLE `discount_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ignored_posts`
--
ALTER TABLE `ignored_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_features`
--
ALTER TABLE `landing_page_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_specialities`
--
ALTER TABLE `landing_page_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_testimonials`
--
ALTER TABLE `landing_page_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_additional_information`
--
ALTER TABLE `post_additional_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_additional_instructions`
--
ALTER TABLE `post_additional_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_bids`
--
ALTER TABLE `post_bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_settings`
--
ALTER TABLE `provider_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_sub_category`
--
ALTER TABLE `provider_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_searches`
--
ALTER TABLE `recent_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_views`
--
ALTER TABLE `recent_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_data`
--
ALTER TABLE `searched_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicemen`
--
ALTER TABLE `servicemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_tag`
--
ALTER TABLE `service_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed_services`
--
ALTER TABLE `subscribed_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_zones`
--
ALTER TABLE `user_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visited_services`
--
ALTER TABLE `visited_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `added_to_carts`
--
ALTER TABLE `added_to_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `booking_additional_information`
--
ALTER TABLE `booking_additional_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `booking_schedule_histories`
--
ALTER TABLE `booking_schedule_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `booking_status_histories`
--
ALTER TABLE `booking_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `category_zone`
--
ALTER TABLE `category_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `discount_types`
--
ALTER TABLE `discount_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_additional_information`
--
ALTER TABLE `post_additional_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `provider_sub_category`
--
ALTER TABLE `provider_sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_modules`
--
ALTER TABLE `role_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_tag`
--
ALTER TABLE `service_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_zones`
--
ALTER TABLE `user_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `visited_services`
--
ALTER TABLE `visited_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
