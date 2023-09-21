-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 07:54 AM
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
-- Database: `test_dimytech`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`) VALUES
(3, 'Dadang'),
(4, 'Wahyu'),
(5, 'Lana'),
(6, 'Abraham'),
(7, 'Aciel'),
(8, 'Adam'),
(9, 'Adelard'),
(10, 'Adelio'),
(11, 'Aditya'),
(12, 'Adnan'),
(13, 'Adrian'),
(14, 'Adya'),
(15, 'Agam'),
(16, 'Aileen'),
(17, 'Aldari'),
(18, 'Alexi'),
(19, 'Ansel'),
(20, 'Arsenio'),
(21, 'Arlo'),
(22, 'Axel'),
(23, 'Bagas'),
(24, 'Bastian'),
(25, 'Baylor'),
(26, 'Ben'),
(27, 'Bellamy'),
(28, 'Brady'),
(29, 'Brandon'),
(30, 'Brian'),
(31, 'Cakra'),
(32, 'Candra'),
(33, 'Carel'),
(34, 'Carlos');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`id`, `customer_id`, `address`) VALUES
(2, 3, 'Bukit berlian c99'),
(3, 4, 'Jl. Syekh Abd.Rauf, Tapak Tuan'),
(4, 5, 'Jl. Jend. A. Yani Langsa.'),
(5, 6, 'Jl. Nyak Adam Kamil No. 6'),
(6, 7, 'Jl. Nasional No. 39 Meulaboh,'),
(7, 8, 'Jl. Takengon, Bereun.'),
(8, 9, 'Jl. Bupati T. Bachtiar Panglima'),
(9, 10, 'Jl. Syiah Kuala No. 5 Sigli'),
(10, 11, 'Jl. Abdussamad Kutacane'),
(11, 12, 'Jl. Mohd. Jam No. 29 Banda Aceh'),
(12, 13, 'Jl. H. Agus Salim Sabang'),
(13, 14, 'Jl. Utama No. 4 Singkil'),
(14, 15, 'Jl. Tgk Diujung, Sinabang'),
(15, 16, 'Jl. Karet No. 38 Gunung Sitoli'),
(16, 17, 'Jl. DI Panjaitan, Pandan.'),
(17, 18, 'Jl. Kenanga No. 72 Ujung, Padang'),
(18, 19, 'Jl. Balige Km. 2 Tarutung Sumatera'),
(19, 20, 'Jl. Gase Gaulama No. 66 Ujung'),
(20, 21, 'Jl. Turi No. 4 Tanjung Bilai'),
(21, 22, 'Jl. Wiliem Isiander No. 11 Dalan'),
(22, 23, 'Jl. Hutabulu Mejen Balige '),
(23, 24, 'Jl. Sangnawaluh Km 3,5 ('),
(24, 25, 'Jl. Pelita No. 20 Sidikalang'),
(25, 26, 'Jl. Pahlawan Ujung No. 20 '),
(26, 27, 'Jl. Sudirman No. 5 Lubuk Pakam.'),
(27, 28, 'Jl. Diponegoro No. 1 Stabar'),
(28, 29, 'Jl. Tongkol No. 6 Sibolga.'),
(29, 30, 'Jl. Jenderal Sudirman No. 113'),
(30, 31, 'Jl. Brigjen Rajamin Purba, SH No.122'),
(31, 32, 'Jl. Pendidikan No. 4 Tebing Tinggi.'),
(32, 33, 'Jl. Sei Batugingging No. 12, Medan'),
(33, 34, 'Jl. Jend. Gatot Subroto No. 55A. (');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaction`
--

CREATE TABLE `detail_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaction`
--

INSERT INTO `detail_transaction` (`id`, `transaction_id`, `payment_method_id`, `product_id`) VALUES
(12, 10, 4, 5),
(13, 10, 3, 3),
(14, 10, 5, 5),
(15, 11, 4, 2),
(16, 11, 3, 3),
(17, 11, 3, 1),
(18, 12, 1, 3),
(19, 12, 1, 8),
(20, 12, 6, 3),
(21, 13, 1, 8),
(22, 13, 2, 2),
(23, 13, 5, 6),
(24, 14, 4, 8),
(25, 14, 1, 1),
(26, 14, 1, 4),
(27, 15, 1, 5),
(28, 15, 3, 6),
(29, 15, 7, 2),
(30, 16, 4, 1),
(31, 16, 4, 6),
(32, 16, 2, 3),
(33, 17, 6, 2),
(34, 17, 7, 8),
(35, 17, 4, 5),
(36, 18, 6, 6),
(37, 18, 7, 1),
(38, 18, 5, 8),
(39, 19, 3, 7),
(40, 19, 1, 1),
(41, 19, 3, 5),
(42, 20, 2, 3),
(43, 20, 1, 1),
(44, 20, 5, 6),
(45, 21, 1, 8),
(46, 21, 5, 2),
(47, 21, 4, 4),
(48, 23, 7, 5),
(49, 23, 4, 1),
(50, 23, 5, 4),
(51, 24, 1, 1),
(52, 24, 6, 7),
(53, 24, 6, 1),
(54, 25, 1, 2),
(55, 25, 5, 8),
(56, 25, 3, 2),
(57, 26, 4, 2),
(58, 26, 7, 7),
(59, 26, 3, 1),
(60, 27, 5, 2),
(61, 27, 1, 3),
(62, 27, 1, 2),
(63, 28, 7, 1),
(64, 28, 6, 1),
(65, 28, 7, 1),
(66, 29, 6, 1),
(67, 29, 2, 7),
(68, 29, 6, 1),
(69, 30, 5, 2),
(70, 30, 5, 1),
(71, 30, 3, 6),
(72, 31, 7, 1),
(73, 31, 1, 2),
(74, 31, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `is_active`) VALUES
(1, 'OVO', 1),
(2, 'GOPAY', 1),
(3, 'DANA', 1),
(4, 'BANK BNI', 1),
(5, 'BRI', 1),
(6, 'BCA', 1),
(7, 'JENIUS', 1),
(8, 'JAGO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Cola-cola', 6000),
(2, 'Big Burger Cheese', 26000),
(3, 'Caramel Big Pop Cord', 45000),
(4, 'Ice Lemon Tea', 20000),
(5, 'Ice Leci Tea', 20000),
(6, 'Big Friend Frice', 35000),
(7, 'Big Fried Chicked', 35000),
(8, 'Salad Buah 250ml', 15000),
(9, 'Big Smooties Banana mix Bery', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `released_year` int(11) NOT NULL,
  `githut_rank` int(11) DEFAULT NULL,
  `pypl_rank` int(11) DEFAULT NULL,
  `tiobe_rank` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript', 1995, 1, 3, 7, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(2, 'Python', 1991, 2, 1, 3, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(3, 'Java', 1995, 3, 2, 2, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(4, 'TypeScript', 2012, 7, 10, 42, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(5, 'C#', 2000, 9, 4, 5, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(6, 'PHP', 1995, 8, 6, 8, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(7, 'C++', 1985, 5, 5, 4, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(8, 'C', 1972, 10, 5, 1, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(9, 'Ruby', 1995, 6, 15, 15, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(10, 'R', 1993, 33, 7, 9, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(11, 'Objective-C', 1984, 18, 8, 18, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(12, 'Swift', 2015, 16, 9, 13, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(13, 'Kotlin', 2011, 15, 12, 40, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(14, 'Go', 2009, 4, 13, 14, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(15, 'Rust', 2010, 14, 16, 26, '2023-09-20 19:25:07', '2023-09-20 19:25:07'),
(16, 'Scala', 2004, 11, 17, 34, '2023-09-20 19:25:07', '2023-09-20 19:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `customer_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `customer_address_id`) VALUES
(21, 3),
(20, 4),
(25, 4),
(24, 5),
(27, 8),
(29, 11),
(18, 15),
(12, 16),
(10, 17),
(14, 17),
(13, 18),
(15, 18),
(31, 19),
(19, 23),
(11, 25),
(17, 26),
(28, 27),
(16, 28),
(30, 30),
(23, 32),
(26, 32);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`) VALUES
('36a2ccfc-7e95-470e-809a-e06976e5d420', 'Prof. Lavon Hane DVM', 'kaylah.ward@example.net', '2023-09-09 05:25:53'),
('36bdfcee-7577-4686-84d6-4f7782d26e47', 'Jennyfer Tromp', 'broderick06@example.net', '2023-09-09 05:25:14'),
('39906668-96b8-4dc0-a723-f2c05d42bca4', 'Prof. Horace Lakin II', 'yfeil@example.net', '2023-09-09 05:25:53'),
('3aeb9874-47bd-4d83-820e-f67d5a0d7e6c', 'Fabiola Lowe', 'russel.bobby@example.org', '2023-09-09 05:25:53'),
('3fad55db-5f68-4d3c-813d-6a3dc008fe91', 'Miss Beverly Prohaska', 'kenyon33@example.com', '2023-08-26 02:27:05'),
('44971930-da48-4c2d-ae24-2bc1ad8d3e84', 'Camron Anderson', 'gabriella.considine@example.net', '2023-09-09 05:25:53'),
('45b068f7-b7a2-47b4-a18f-890f2c662f3e', 'Jennyfer Williamson', 'annette.senger@example.com', '2023-09-09 05:25:53'),
('4777f8b2-9c2f-4fc3-ad51-a65dd4dc0d12', 'Freddy Schmidt', 'abshire.cleve@example.com', '2023-09-09 05:25:53'),
('47abec86-8c91-4969-b1a1-e98920b8d86a', 'Rita Lebsack MD', 'huel.coty@example.org', '2023-09-09 05:25:53'),
('49274d3e-1a83-482e-8ad8-d58b0184354a', 'Mariam Hagenes', 'howell.alva@example.net', '2023-09-09 05:25:53'),
('4a5c5afb-4763-496b-a3f7-f37d8fb8a875', 'Michele Franecki I', 'murphy.hulda@example.net', '2023-09-09 05:25:53'),
('4a5d4434-959c-4d7d-b043-62769ae39395', 'Eliseo Breitenberg III', 'armani28@example.net', '2023-09-09 05:25:53'),
('4ba733de-11a4-49df-9b0f-23ff4fb38a00', 'Dr. Jeremie Volkman', 'lbayer@example.net', '2023-09-09 05:25:53'),
('4c86bd1c-0f4a-4ee4-964c-f1a7e8fd458a', 'Mr. Arne Pouros', 'zora.kshlerin@example.net', '2023-09-09 05:25:53'),
('4f336846-aa09-4214-b99b-a323585dc33d', 'Gilda Beer', 'bridie16@example.com', '2023-09-09 05:25:53'),
('55a6da5a-3342-4725-b4ec-b8e2dc6341b6', 'Prof. Jillian Marvin', 'carlee24@example.com', '2023-09-09 05:25:53'),
('58a8a915-90f4-452c-98aa-618ce1a60ea1', 'Corene Gusikowski', 'hagenes.webster@example.net', '2023-09-09 05:25:14'),
('5a15875e-3b78-4176-bf9a-c8b594abf702', 'Miss Suzanne Heidenreich', 'brandyn.sauer@example.net', '2023-09-09 05:25:53'),
('5cf37d20-165a-46d8-9119-b2c9c9e0b9a3', 'Ms. Nia Goldner', 'lschamberger@example.org', '2023-09-09 05:25:53'),
('5e05685d-2e17-42d3-9397-fc571087e28d', 'Dr. Karlee Cremin', 'melody34@example.org', '2023-08-26 02:27:05'),
('5e441761-e7fc-4a73-9c28-81a000f69718', 'Dr. Earlene Spinka', 'nina84@example.org', '2023-09-09 05:25:53'),
('62540f5d-be47-4db7-8c18-f9d8af2b31e9', 'Ella Jenkins', 'nolan.karl@example.net', '2023-09-09 05:25:53'),
('631292cf-1b24-42fb-bfa8-3621ef412808', 'Dr. Orin Ritchie', 'wondricka@example.net', '2023-09-09 05:25:53'),
('6395a57a-13f6-4d34-ba49-6a93606141bf', 'Jacinto Cronin', 'joshua.prosacco@example.net', '2023-09-09 05:25:53'),
('66b0bcc2-303d-4d20-9610-f297ee0f0a34', 'Foster Roberts', 'grimes.kirsten@example.net', '2023-09-09 05:25:14'),
('6a2a90af-11ea-4a5f-9984-97b96fc4bd0e', 'Vickie Schmidt', 'elisabeth.ohara@example.org', '2023-09-09 05:25:53'),
('6c5fa08c-0d7e-438c-8a1b-8b69ee6bfdfe', 'Dr. Melvina Wisozk', 'luciano65@example.net', '2023-09-09 05:25:53'),
('6cc6dc79-4d65-49eb-bbbf-f0244fc9f011', 'Jackeline Stoltenberg III', 'fhuel@example.com', '2023-09-09 05:25:53'),
('6ee3d6e8-3555-4f42-a3b7-f31c84cfcafb', 'Prof. Brenden Bartoletti IV', 'sammie41@example.org', '2023-09-09 05:25:53'),
('72a2371d-84a6-41b5-bd0a-bcf0c7979f7c', 'Ila McCullough', 'kenyon81@example.org', '2023-09-09 05:25:53'),
('73e6aaad-6cd5-49da-a719-d192f8a4e523', 'Myrtice Sauer', 'jovani11@example.com', '2023-08-26 02:27:05'),
('748af8df-b4c9-442b-9146-0ee93fa58e63', 'Amos Schaefer', 'paucek.mortimer@example.net', '2023-09-09 05:25:14'),
('750b2709-9af1-40ae-9d41-4c893257cf2e', 'Selina Schroeder', 'lillian88@example.org', '2023-09-09 05:25:53'),
('7b971a43-99f2-44ea-a2d3-08dd1d72144f', 'Dr. Telly Rosenbaum II', 'jermain.pacocha@example.net', '2023-09-09 05:25:53'),
('82e903c2-967b-4873-8b25-280c94ea755c', 'Clemmie Beatty V', 'allene07@example.org', '2023-09-09 05:25:53'),
('83a35ea8-a985-4045-a0c8-56baa3f056c8', 'Prof. Hulda Romaguera', 'runte.maeve@example.net', '2023-09-09 05:25:53'),
('890f4706-209f-4f8b-816d-c89236a7132e', 'Mr. Brennon Beahan PhD', 'kcollier@example.net', '2023-09-09 05:25:53'),
('8abba458-33d0-434a-9a37-a78ce75e7340', 'Jeremy Kilback', 'dawson.kuhic@example.net', '2023-09-09 05:25:53'),
('8b8b3634-e5fb-42c1-b308-8999303ed019', 'Prof. Elisha Marks III', 'imelda.pacocha@example.org', '2023-09-09 05:25:53'),
('91766b81-4322-4c35-b662-0eba699c40a8', 'Miss Virginia Kuhic MD', 'rosella.mraz@example.net', '2023-09-09 05:25:53'),
('935e7d4e-0627-46bb-8f65-a815287e099c', 'Icie Adams DVM', 'qwuckert@example.net', '2023-09-09 05:25:53'),
('93a5df40-dcfe-4b4b-958e-1a135bebd5a9', 'Antonette Bosco Jr.', 'bernier.elenor@example.com', '2023-09-09 05:25:14'),
('94a10afb-b0d3-44fb-8aea-7969d8c6cd56', 'Alexandro Weber', 'marion.bartoletti@example.net', '2023-09-09 05:25:53'),
('96dfe94f-ceae-4d8b-b44b-4abe2c18f3e7', 'Rodrick Kutch', 'ablick@example.net', '2023-09-09 05:25:14'),
('9d43e199-fe65-4dc0-bcc5-d5a4a81585b9', 'Salvador Renner', 'lnader@example.com', '2023-09-09 05:25:53'),
('a5bebc67-c0d2-449e-90be-c8d05f1cb98a', 'Buster Sporer', 'davin63@example.net', '2023-09-09 05:25:53'),
('a6820eb6-0d15-48c5-b7fe-20ba18d81e24', 'Dr. Markus Denesik PhD', 'zulauf.jammie@example.com', '2023-09-09 05:25:53'),
('a915e1b8-9ede-455b-b8ac-6d1c26bff8bc', 'Dr. Madison Johnston PhD', 'phyllis.hegmann@example.org', '2023-09-09 05:25:53'),
('aa529992-956e-462f-8f13-655cdd53b12e', 'Dr. Moses Bogan', 'schroeder.danny@example.org', '2023-09-09 05:25:53'),
('b28ff61d-090d-41a1-a4f2-1f9de6a8eaa0', 'Cassidy Rice', 'theodora.okuneva@example.net', '2023-08-26 02:27:05'),
('b491949b-d109-4a8e-bf66-e975aaa21791', 'Moch Rifqi Ramdhani', 'rifqiramdhani8@gmail.com', '2023-08-26 02:29:13'),
('b6a3daa1-1ec6-4a68-80dc-83002da03200', 'Mrs. Amira Oberbrunner', 'wdurgan@example.com', '2023-09-09 05:25:53'),
('ba60afbb-9d1c-4a18-8d00-f3e780862980', 'Dr. Kara Gislason', 'maureen17@example.org', '2023-09-09 05:25:14'),
('c18bed81-a06e-44b7-aeb9-07dddeaa19de', 'Jody Stark', 'ortiz.lysanne@example.com', '2023-08-26 02:27:05'),
('c42a12b6-a220-47e7-99cd-de5b92b57c60', 'Maddison Sanford', 'werner55@example.net', '2023-08-26 02:27:05'),
('c5895304-054d-4812-be68-79c70f312cfb', 'Ilene Walker', 'denesik.joseph@example.com', '2023-09-09 05:25:53'),
('c797142c-f28c-4f8c-a3af-352ed085efb1', 'Bennett Lubowitz', 'selina.franecki@example.net', '2023-09-09 05:25:53'),
('cc1b3f9f-7025-455a-b3fb-42239735d7d4', 'Dejon Schultz', 'leannon.pete@example.com', '2023-09-09 05:25:53'),
('cd16afa4-d375-4dfc-8b42-0506138378e9', 'Mallie Hackett II', 'savanah.carroll@example.org', '2023-09-09 05:25:53'),
('cee539c7-3d40-4081-b757-6918b9290b6d', 'Francesco Goyette', 'camilla63@example.net', '2023-09-09 05:25:14'),
('d3c585e9-e014-402f-bcde-2625f429d98b', 'Brianne Roberts', 'wyman.nora@example.org', '2023-09-09 05:25:53'),
('d52674cb-e26a-49aa-9877-e6aa16aebe47', 'Macy Gorczany', 'garfield.wilderman@example.com', '2023-09-09 05:25:53'),
('d68ace14-d23a-48c3-82a5-f859fcc96608', 'Elwin Homenick', 'marco71@example.org', '2023-09-09 05:25:53'),
('e4ef93d3-33f4-429b-85b4-cad3ab9a402c', 'Ms. Mathilde Reichel', 'brain48@example.org', '2023-08-26 02:27:05'),
('e7609ed9-79d8-4068-82fa-069b14915805', 'Brandon Murray V', 'igerlach@example.org', '2023-09-09 05:25:53'),
('e8516be6-cfcf-4f8a-98c4-419f5b5acc7b', 'Dr. Domingo Wiegand Sr.', 'xthompson@example.org', '2023-09-09 05:25:53'),
('e95e0140-9cf6-4f7f-ada1-7363a651eab1', 'Haven Jones', 'bennie08@example.net', '2023-09-09 05:25:14'),
('ea59a940-b362-4f3c-a5e2-21814ecf7612', 'Elvie Collier', 'kunze.joshuah@example.net', '2023-09-09 05:25:53'),
('ea7aa070-0c84-4af6-86f6-dbf26a26efb5', 'Mr. Zachary Ward PhD', 'chaya.kohler@example.com', '2023-09-09 05:25:14'),
('eadbaf59-5e65-4e1b-bb3c-581c1bdf391e', 'Jaiden Smith', 'neva23@example.org', '2023-09-09 05:25:53'),
('efbeff10-a7a2-4b8f-b74c-dc6db206c432', 'Rocio Farrell', 'viviane20@example.com', '2023-09-09 05:25:53'),
('efcf7e38-4474-43e8-ba5b-9ced6507ef25', 'Ms. Betty Bechtelar', 'savannah.reynolds@example.org', '2023-09-09 05:25:53'),
('f0eb41e8-6f36-4e25-bec3-0d165e942e23', 'Wilfrid O\'Conner', 'stone.anderson@example.com', '2023-09-09 05:25:53'),
('f10121d0-7849-401d-8c6c-013ea820f265', 'Derrick Crist', 'dell55@example.org', '2023-09-09 05:25:53'),
('f10e009c-8cce-4f16-b51c-82d7ceaaf5ff', 'Conner Fritsch', 'chaya34@example.com', '2023-09-09 05:25:53'),
('f20aa336-2716-4e31-9bb9-0575ee733ece', 'Raheem Keeling', 'allene.weber@example.net', '2023-09-09 05:25:53'),
('f23b99e9-54e5-4b4f-be9f-e8f5cc09f04d', 'Ivy Batz I', 'margarett97@example.org', '2023-09-09 05:25:53'),
('f5ea56ca-ac5f-4743-a195-952057a057d7', 'Julie Crist', 'moore.edd@example.com', '2023-09-09 05:25:53'),
('f6b91213-fc73-4c33-8b6b-bdacf120d2d6', 'Gussie Simonis DDS', 'rosanna.rempel@example.org', '2023-09-09 05:25:53'),
('fa196ab7-743e-4699-a189-2682c1294cd1', 'Eugene O\'Reilly', 'johnston.mylene@example.net', '2023-09-09 05:25:53'),
('fcd76c20-5a62-44fc-b7e5-ef01e0df4c60', 'Mrs. Haylie Hayes Jr.', 'ihickle@example.net', '2023-09-09 05:25:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `product_ia` (`product_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_address_id` (`customer_address_id`);

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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD CONSTRAINT `detail_transaction_ibfk_1` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaction_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `payment_method` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaction_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
