-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 08:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhn_hospital_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accridations`
--

CREATE TABLE `accridations` (
  `id` int(10) UNSIGNED NOT NULL,
  `accridation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accridations`
--

INSERT INTO `accridations` (`id`, `accridation`, `hosp_name`, `hosp_email`, `hosp_id`, `created_at`, `updated_at`) VALUES
(12, 'AC Accredited', 'nilam hospital', 'n@n.com', '30', NULL, NULL),
(13, 'HAS Accredited', 'nilam hospital', 'n@n.com', '30', NULL, NULL),
(14, 'HAS Accredited', 'raj hospital', 'raj@r.com', '31', NULL, NULL),
(19, 'JCI Accredited', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(20, 'ACHSI Accredited', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(21, 'AC Accredited', 'maya hospital', 'hospital@gmail.com', '32', NULL, NULL),
(28, 'ACHSI Accredited', 'hospital', 'hospitalnew@gmail.com', '35', NULL, NULL),
(42, 'Select Accredition', 'redline hospital', 'redline@gmail.com', '36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `hosp_name`, `hosp_email`, `hosp_id`, `created_at`, `updated_at`) VALUES
(29, 'Cardiology & Cardiovascular Surgery', 'nilam hospital', 'n@n.com', '30', NULL, NULL),
(30, 'Cancer Alternative treatments', 'raj hospital', 'raj@r.com', '31', NULL, NULL),
(37, 'Age management', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(38, 'Ayurveda', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(39, 'Bariatric / Obesity surgery', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(40, 'Ayurveda', 'maya hospital', 'hospital@gmail.com', '32', NULL, NULL),
(41, 'Cancer Alternative treatments', 'maya hospital', 'hospital@gmail.com', '32', NULL, NULL),
(51, 'Ayurveda', 'hospital', 'hospitalnew@gmail.com', '35', NULL, NULL),
(52, 'Cancer Alternative treatments', 'hospital', 'hospitalnew@gmail.com', '35', NULL, NULL),
(67, 'Ayurveda', 'redline hospital', 'redline@gmail.com', '36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `admin_approved` int(11) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$GT1KcRF5oU13bh9eQhAGDuGRjcQHC.32ija.kvH1bbhQ.FhVFVv/m',
  `role_type` enum('hospital') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hospital',
  `country_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` int(10) UNSIGNED NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `specialization_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `specialization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `accreditation_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `accreditation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address1` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `languages` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `about_us` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `qualification_file` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quality` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vision_and_mission` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_of_beds` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_of_doctors` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `equipments` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `treatments` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `specialities` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `awards_Recognitions` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `testimonials` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Stores the id of the user session',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hospital.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `slug`, `email`, `active`, `admin_approved`, `password`, `role_type`, `country_name`, `country_id`, `country_code`, `dial_code`, `phone`, `currency_code`, `currency_symbol`, `currency`, `state_id`, `state`, `city_id`, `city_name`, `website`, `specialization_id`, `specialization`, `accreditation_id`, `accreditation`, `address1`, `address2`, `fax_number`, `languages`, `about_us`, `qualification_file`, `quality`, `vision_and_mission`, `no_of_beds`, `no_of_doctors`, `equipments`, `treatments`, `specialities`, `awards_Recognitions`, `testimonials`, `remember_token`, `session_id`, `avatar`, `created_at`, `updated_at`) VALUES
(28, 'KM Memorial', 'km-memorial', 'km@gmail.com', 1, 1, '$2y$10$v3dYaCdCnhQLF/CsB2hc1ujsJeShlKE2q3LSTnzvB.PpHFXfAM46m', 'hospital', 'India', '101', 'IN', 91, '1235467890', 'INR', '₹', 'Indian Rupee', '4022', 'Uttar Pradesh', '57669', 'Ambedkar Nagar', 'http://www.kmmhospital.com/', NULL, 'Ayurveda', NULL, 'AGPAL Accredited', 'Ramnagar Colony', 'Chas1', '1234567890', 'English', '<p>Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2Test2</p>', '', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestT</p>', '40', '11', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '9ICemiYOPMXmcFB2mmGFUqrG0vbNdCPT3XCY7Wzb2wZ6Zn6ynENlMX35GFqo', 'AwAoHU2lLziMENl72LEu4HQfK55f2GWsDAwSeH3i', 'hospital.png', '2021-07-24 00:50:40', '2021-08-30 02:53:25'),
(29, 'mks', 'mks', 'mks@m.com', 1, 1, '$2y$10$rUUu21eh3uWOGQyb8rYl1eS0UPJDQhBrcCJVtVOanZJUBXCqXEW8i', 'hospital', 'India', '101', 'IN', 91, '2321234567', 'INR', '₹', 'Indian Rupee', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'eYuKiovMIT56G86gKp7JGJV15E9qJrS1UkqGG4PyPcuUIiacXrEOnNKzsULb', NULL, 'hospital.png', '2021-08-23 00:58:17', '2021-08-23 01:01:23'),
(30, 'nilam hospital', 'nilam-hospital', 'n@n.com', 1, 1, '$2y$10$cohkokmkWDryB9MfZCxCBedTKYOGqddcwvObFverA1S7wr4Mjyq86', 'hospital', 'India', '101', 'IN', 91, '1232476321', 'INR', '₹', 'Indian Rupee', '4025', 'Jharkhand', '58076', 'Bokaro', 'http://www.kmmhospital.com/', '', '', '', '', 'chas', 'Chas', '1234567890', 'Hindi', '<p>test</p>', '', '<p>test</p>', '<p>test</p>', '50', '10', '<p>test</p>', '', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'SgtvucubSgovQDSyrO3oTIIWWen8Bq3h9IBACEPoRE4cJCqlVUEe2SdmSuS1', NULL, 'hospital.png', '2021-08-25 18:45:28', '2021-08-25 18:47:40'),
(31, 'raj hospital', 'raj-hospital', 'raj@r.com', 1, 1, '$2y$10$1zeqyh45vP9vWjxSkQiLVePHvFas6gArce3lPSzcVs09AzYaJHPce', 'hospital', 'India', '101', 'IN', 91, '6576345678', 'INR', '₹', 'Indian Rupee', '4022', 'Uttar Pradesh', '57677', 'Amethi', 'http://www.kmmhospital.com/', '', '', '', '', 'chas', 'Chas1', '1234567890', 'English', '<p>test</p>', '', '<p>test</p>', '<p>test</p>', '100', '10', '<p>test</p>', '', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'OlslB3LTGWaFOgfyBmUWnzWF2ZKDMelM3tkbZ9RHZOmmNtjTwcSp9snYQLr3', NULL, 'hospital.png', '2021-08-25 19:07:38', '2021-08-25 19:09:51'),
(32, 'maya hospital', 'maya-hospital', 'hospital@gmail.com', 1, 1, '$2y$10$.58B9fierGT3AzSyBm4WreFz78Q3CJjLUk0DZnbmsY1hgdZrwPhGK', 'hospital', 'India', '101', 'IN', 91, '8521478523', 'INR', '₹', 'Indian Rupee', '4025', 'Jharkhand', '58076', 'Bokaro', 'www.mayahospitaldemo.com', '', '', '', '', 'near kali mandir chowk', 'ashirwad bhawan, plot-65', '1245698745', 'English,Hindi', '<p>we are best option to make you comfort, good staff with good maintaince.</p>', '', '<p>assured you the best of experincd&nbsp;</p>', '<p>be health and make indian fit</p>', '1500', '20', '<p>laser scan and many more, moderrn equipement</p>', '', '<p>we provide you door to door ambulance, first day bed charge is free.</p>', '<p>had many on the best</p>', '<p>curretly awards get&nbsp;</p>', 'x866E8gWQdXXNxQNNxigF4McHJREhmqpb5k1jKJufgI1048moYSOprfa0I9N', 'vDvH3rcQZnkQc6Eh6vvV78TjsMMFDBQc8aPLS2nM', 'hospital,_green-1934492217_1648097831.jpg', '2022-03-08 10:15:33', '2022-03-23 23:27:11'),
(33, 'Astonic Hospital', 'astonic-hospital', 'newtesting@gmail.com', 1, 1, '$2y$10$FFfrhAuHFGqrd0S2wc2DNO1Lh2dTRdWCsJfZpu9g4jI6LF0Og4Zim', 'hospital', 'India', '101', 'IN', 91, '1234567890', 'INR', '₹', 'Indian Rupee', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N19HDaGNTSj8DAQHAobbXgkHYZvykT64pF2Bl9bAYgmeKu8T43D8MqPiWorJ', 'IehDQQQQe83GHpZRQbZZ7kgxD885dKfuxZ7wP8nO', 'hospital.png', '2022-03-10 00:13:49', '2022-03-11 05:21:26'),
(34, 'testo', 'testo', 'testo@gmail.com', 0, 1, '$2y$10$GT1KcRF5oU13bh9eQhAGDuGRjcQHC.32ija.kvH1bbhQ.FhVFVv/m', 'hospital', 'India', '101', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 'hospital.png', '2022-03-10 23:35:18', '2022-03-10 23:35:18'),
(35, 'hospital', 'hospital', 'hospitalnew@gmail.com', 1, 1, '$2y$10$N71v1v7G9AaG5DOAumEfVOYQQCDBpuBLQOZklEB/ke3Wab5e6TiJ6', 'hospital', 'India', '101', 'IN', 91, '1234567852', 'INR', '₹', 'Indian Rupee', '4025', 'Jharkhand', '58076', 'Bokaro', 'dreamcometrue.com', '', '', '', '', 'near kali mandir chowk', 'ashirwad bhawan, plot-65', '1245698745', 'English', '<p>asdfghbjgfds</p>', '', '<p>aWsgfchjbgfdsa</p>', '<p>Wezrftchbkjhhtrgewq</p>', '2000', '20', '<p>aSdzfxghbjgfdsaz</p>', '', '<p>QAsDXFGCVHJJGFDS</p>', '<p>qWAezrtdfyguhkjhgrfewqefgrch</p>', '<p>zfdgtkjlkjytrewqergfchgjbkj</p>', 'TzvflShLOb7WBsGneoPvsQ8aAfw7jgSQjmmXfehWUeEmd3x20eeEopgMolAM', 'ci9UJH2GU6kBYeK2F3CoIIfe2NP58ANo03ndqkb9', 'amazone_elasticache-1920961269_1648040648.png', '2022-03-12 03:04:11', '2022-03-31 05:19:42'),
(36, 'redline hospital', 'redline-hospital', 'redline@gmail.com', 1, 1, '$2y$10$.AnsbYlUJ3m72chFQIyzIOdJS.Akn2QcpHY1k3Sq0cK8B8xnKPoEa', 'hospital', 'India', '101', 'IN', 91, '1234567890', 'INR', '₹', 'Indian Rupee', '4018', 'Nagaland', '131772', 'Dimāpur', 'www.redlinemyhospital.com', '', '', '', '', 'near kali mandir chowk', 'ashirwad bhawan, plot-65', '1245698745', 'Hindi', '<p>Hi, I am the director of Redline Hopsital. We provide you best facilities near your surround.</p>', '', '<p>ASDFGCHJB,HMNGFBVDCS</p>', '<p>CSDFGHJKJHGFDSA</p>', '1500', '20', '<p>ASETFHYUHJKJMHGFDS</p>', '', '<p>Orthodontic, Blood Circulation and Physician checkup</p>', '<p>Awarded for best OPD infrastructure.</p>', '<p>efzrgxthyjukijhgfbdcsxaz</p>', 'msTaF62YLzQAi3LtyXBsQeCMYnh7xuKWZ52h7x7k6wf61AJFjXnVec2Tjtaz', 'INNZHcqvqQqVZupI2uXrYMMfPN7SuginClfPwQuG', 'doctor-image-981355611_1648107439.webp', '2022-03-23 23:49:21', '2022-03-26 01:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_password_resets`
--

CREATE TABLE `hospital_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_password_resets`
--

INSERT INTO `hospital_password_resets` (`email`, `token`, `created_at`) VALUES
('cetan.cotocus@gmail.com', '$2y$10$f8LBH2Ude63mcmF2XYalsewtC8VYLgRu1qTdt4QbO4apECImx9EPa', '2020-01-27 11:28:40'),
('raju@raju.com', '$2y$10$Vjld7nTLp6qtoPc/FRlI6euTPOle3FOHVUJ1yqG7fi6CA97PLBPBe', '2020-02-03 18:07:41'),
('fsdfs@fdsfs.com', '$2y$10$Fo9/69dlqMbXyRaHZRMfyuMLiNVQRGUp2WmiLQVzhxvoh5Muku4Ky', '2020-02-03 18:08:23'),
('contact@devopsschool.com', '$2y$10$G1ExaH/aUj84zTVawin5c.98sDzxjUFKOtDc.b4wggq5AS9PaGmMe', '2020-08-14 12:52:00'),
('Rakesh.cotocus@gmail.com', '$2y$10$OtmJbeagHxO5REfXXs8W5u0lZTUV8u46vnMej8dXoFnJIM06E3t3O', '2020-11-13 05:34:42'),
('chandan.cotocus@gmail.com', '$2y$10$G.FewdoqfsX6gR9VxUtr7uZPFhQu5OUOMxmyjm37uejoCU67Ywwxy', '2021-03-17 02:13:10'),
('chandan@devopsschool.com', '$2y$10$CGRbToAMvE7gtJQ9ynXarOrE3GO8W40h6VQqTkZbgiq0vOydA7mme', '2021-03-17 04:26:16'),
('hari@gmail.com', '$2y$10$znEXXh59eMgGQkyGfhiKxOG3uHCTOR7J1S7qHKAAytdxwlVAx9TQq', '2021-03-20 04:43:13'),
('ramsetu@gmail.com', '$2y$10$L6tvrhh4KUSNM4sp6Wdb1Ob.bx.uXpeCEFchU2t9RFQ8bAjN/riD2', '2021-04-01 05:40:58'),
('sabba@gmail.com', '$2y$10$6WpDsz3P3F/CuCQD/RGuSu9UNWl.bFdzdT0cI8F6HAWB/qjeMhlLK', '2021-04-02 00:43:19'),
('newcinema@gmail.com', '$2y$10$HBFLkas67Z14poCtv6sPEuGV3DgwP4.Pc7Lq57ZMSzMtsA5gGdqha', '2021-05-31 05:54:39'),
('jawahar@gmail.com', '$2y$10$5lmYQUm.KdSdqsT9BuzUOuWr3OQw8322.yRizI3uzGHzkdizDt1H.', '2021-05-31 06:01:10'),
('bhakdsfal@gmail.com', '$2y$10$yIk14K/701imPE0TK856qOHLMpk3WjNdSnmTzIGMfYIs9OF44uaPS', '2021-05-31 06:33:11'),
('ramukaka@gmail.com', '$2y$10$fiT8jsJLOrxT4JIsWFKD3ua0Gmfa0jUNS1XnQjWYgel/aq2JsaEQK', '2021-06-09 00:39:40'),
('mk@gmail.com', '$2y$10$PmMRncY1.utKEEKN.TjkXe.G27wJ4AVfQm1AhEgO8FuOQeCSXIy26', '2021-07-23 23:56:41'),
('muskan@gmail.com', '$2y$10$Dbh1qvA4hrbaDWcHICpF7OZc6pWDAYt7a.jDNOEbB3/8aKFmXuFVO', '2021-07-24 00:12:06'),
('testo@gmail.com', '$2y$10$WleSX9VCT.UXbEmPpNHJ5.uA88a9NUnL4ZryC0i/upknKerNzONey', '2022-03-10 23:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_video_links`
--

CREATE TABLE `hospital_video_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `h_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_video_links`
--

INSERT INTO `hospital_video_links` (`id`, `hospital_id`, `h_email`, `video_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'deepak.cotocus@gmail.com', 'https://www.youtube.com/embed/24rGqtxuLhc', 'link 1', '2020-11-23 06:58:37', '2020-11-23 06:58:37'),
(7, 10, 'mahindra@gmail.com', 'https://www.youtube.com/embed/-8VU_bpfHi8', 'Covid', '2021-05-13 08:45:13', '2021-05-13 08:45:13'),
(8, 9, 'maaambey@gmail.com', 'https://www.youtube.com/embed/Wp2jmT9Wbao', 'Issues', '2021-05-15 01:45:51', '2021-05-15 01:45:51'),
(9, 10, 'mahindra@gmail.com', 'https://www.youtube.com/embed/Nfoyt8igr7U', 'Measurement of covid', '2021-05-17 00:37:16', '2021-05-17 00:37:16'),
(10, 13, 'srinivas@gmail.com', 'https://www.youtube.com/embed/69hnNaxIzZY', 'test video', '2021-05-18 23:59:12', '2021-05-18 23:59:12'),
(11, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/mpF-Mv1o5xE', 'Covid Care', '2021-05-20 00:32:55', '2021-05-20 00:32:55'),
(12, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/_NKvJ43XBkY', 'Defeat CoronaVirus', '2021-05-26 01:43:15', '2021-05-26 01:43:15'),
(13, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/IZvaLzo7hJM', 'my videos', '2021-06-02 04:04:55', '2021-06-02 04:04:55'),
(14, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/opgzItbPCyc', 'Covid Experience', '2021-06-02 06:08:03', '2021-06-02 06:08:03'),
(15, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/8UoYBMmW8Zc', 'India\'s COVID Catastrophe', '2021-06-02 06:15:12', '2021-06-02 06:15:12'),
(16, 15, 'rakesh@gmail.com', 'https://www.youtube.com/embed/oroS8BMekcM', 'AP villagers skip masks', '2021-06-02 06:22:28', '2021-06-02 06:22:28'),
(17, 17, 'krishna@gmail.com', 'https://www.youtube.com/embed/UMTDmP81mG4', 'Anatomy of the Heart', '2021-06-08 06:44:24', '2021-06-08 06:44:24'),
(18, 17, 'krishna@gmail.com', 'https://www.youtube.com/embed/ebzbKa32kuk', 'Human Heart Anatomy 2020 (3D Medical Animation)', '2021-06-08 06:46:26', '2021-06-08 06:46:26'),
(19, 23, 'amardeep@devopsschool.com', 'https://www.youtube.com/embed/TTjjvmrTR_A', 'Bokaro k.m.memorial hospital varsik year', '2021-07-21 00:18:20', '2021-07-21 00:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hosp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `hosp_name`, `hosp_email`, `hosp_id`, `created_at`, `updated_at`) VALUES
(32, 'Hindi', 'nilam hospital', 'n@n.com', '30', NULL, NULL),
(33, 'English', 'raj hospital', 'raj@r.com', '31', NULL, NULL),
(36, 'English', 'KM Memorial', 'km@gmail.com', '28', NULL, NULL),
(37, 'English', 'maya hospital', 'hospital@gmail.com', '32', NULL, NULL),
(38, 'Hindi', 'maya hospital', 'hospital@gmail.com', '32', NULL, NULL),
(44, 'English', 'hospital', 'hospitalnew@gmail.com', '35', NULL, NULL),
(59, 'Hindi', 'redline hospital', 'redline@gmail.com', '36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_09_24_090439_create_test_table', 1),
(10, '2019_10_15_160754_create_hospital_password_resets_table', 1),
(19, '2019_10_13_110947_create_hospital_table', 2),
(20, '2020_04_10_102856_add_session_id_to_hospitals_table', 2),
(21, '2020_11_10_063837_create_hospital_video_links_table', 2),
(22, '2021_08_12_111505_create_languages_table', 3),
(23, '2021_08_13_074717_create_categories_table', 4),
(24, '2021_08_13_101109_create_accridations_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00476072928406c69fc39ad886c8474efe67177206c114d5173160bc935f58b733c773d056b09524', NULL, 1, NULL, '[]', 0, '2020-01-29 16:21:51', '2020-01-29 16:21:51', '2021-01-29 16:21:51'),
('0070031f99bc8b367e60a8207a2081d1bb3467c2a3df6e82ecf9a534e811f2a51f767864895edd85', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:51:37', '2022-03-23 04:51:37', '2023-03-23 10:21:37'),
('0082553c9d75410e814bd9ea150a87604180025979b55106c061ac23baad627b82c96842ccc832e6', NULL, 1, NULL, '[]', 0, '2020-04-10 10:57:01', '2020-04-10 10:57:01', '2021-04-10 10:57:01'),
('00eb4c303e8bb8886011fcdc0a60294912076db270522f930a881d3a523de9b8b683ac45ae99845d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:09:57', '2022-03-23 07:09:57', '2023-03-23 12:39:57'),
('00fc8ba8a56daae3027c659d6945ce1211111f89ca7c8e4ce8a20cff3be532fe799b5c2fcd19676a', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:54:57', '2022-03-26 01:54:57', '2023-03-26 07:24:57'),
('010e46e1212205295367315439f225f9d81f40606554761949948057009f04376a2b4cd8bedf0bbe', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:58:04', '2022-03-23 06:58:04', '2023-03-23 12:28:04'),
('01ebc9bf7285539f3289ee55a184863359ad7753e6372b3c37218217cc4180c6c702ae51122c81ee', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-14 02:18:17', '2022-03-14 02:18:17', '2023-03-14 07:48:17'),
('0316ed217fbe2f363573a4d6550b772e1e505614c7b798fc908544095e0456ca75c1bcdfeccc8e21', NULL, 1, NULL, '[]', 0, '2020-04-06 13:05:10', '2020-04-06 13:05:10', '2021-04-06 13:05:10'),
('0359a8c2508410fc97f9c72b7b5eb76e7d7617a808d816e514f9f5f3f7d574412e9d217d2ee5398b', NULL, 1, NULL, '[]', 0, '2020-05-23 16:28:10', '2020-05-23 16:28:10', '2021-05-23 16:28:10'),
('0385bb03e5def92b51eb8924fb005aef64f05ef3b3bff7500697fe11143a3e732425be54913dad72', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:56:26', '2022-03-23 05:56:26', '2023-03-23 11:26:26'),
('042373dced1e34e5bf4d43ab461858e6b0d64923b31c3784ea6e2093aa624de9c91935308188e24c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:03:34', '2022-03-23 06:03:34', '2023-03-23 11:33:34'),
('044e2a71fffc30d5105612684ece58a38de772c098945940b69d834a684ed5e74ddd6c69595c7029', NULL, 1, NULL, '[]', 0, '2020-04-07 10:42:21', '2020-04-07 10:42:21', '2021-04-07 10:42:21'),
('048f07ae893505c7b7022d3d42df54c0b90b7f7415982df4b150953bce2fbe96b7d3ca6b3bd420a5', 13, 3, 'h_user_api_token', '[]', 0, '2020-08-21 06:59:22', '2020-08-21 06:59:22', '2021-08-21 06:59:22'),
('04b9b640c763c53e77c78276e8829042f49ec5328310e7699da28b3bd5d6c2c8632d740f9ddcd5a4', NULL, 1, NULL, '[]', 0, '2020-06-10 08:49:41', '2020-06-10 08:49:41', '2021-06-10 08:49:41'),
('04d6a979382541e5f9e29e455f25e507ad38be59b1b6f758ff12c32a94d2c20a0084e4f78b1b3909', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:26:05', '2022-03-23 05:26:05', '2023-03-23 10:56:05'),
('04dae336cee4453e0cbf2ebe508eedefa47ff6d61addba40cf5f6996da7b425572f60c4dae2cc63d', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:00', '2020-08-14 12:40:00', '2021-08-14 12:40:00'),
('05a672ec98e2cb65766834debbf1771798f41feb67ec191843daf5f9c0c6ac8fe64446163887259d', NULL, 7, NULL, '[]', 0, '2021-05-24 05:45:14', '2021-05-24 05:45:14', '2022-05-24 11:15:14'),
('062f39e9d49825a421696b7e589abc65f3b79b603f13582e3570b664aac7d3ee172b9a7feb072d4f', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-14 13:29:47', '2020-08-14 13:29:47', '2021-08-14 13:29:47'),
('06481f05aa83b8e857d243085c61ff3e82dff3af68e242b19253982e4c381abdd3707fdc43dff093', NULL, 1, NULL, '[]', 0, '2020-06-01 08:07:39', '2020-06-01 08:07:39', '2021-06-01 08:07:39'),
('06762417e4c74c49854995db7cd97c2aa0fc26f7cc40fb2fdeccc8f8753d2f22a0125a196c71dc85', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:35:06', '2022-03-23 04:35:06', '2023-03-23 10:05:06'),
('06f3053f35a7767165a067aa2baf71ff2acb03fce7381f3d5cecf2755e4a729ebb5729bfd0925448', 28, 9, 'h_user_api_token', '[]', 0, '2021-08-26 01:32:40', '2021-08-26 01:32:40', '2022-08-26 07:02:40'),
('06f4c45ea727ca7ea75e3238b49c514e4dd54b02a50b9573c64c0d8da83af98a843d9785db213833', NULL, 1, NULL, '[]', 0, '2020-02-19 12:11:43', '2020-02-19 12:11:43', '2021-02-19 12:11:43'),
('075fa8b325ec0cfd7bed7435c06350f5a53693f2db1dcb910843746d7138fbd5f000d21ec2241370', NULL, 1, NULL, '[]', 0, '2020-06-29 08:36:48', '2020-06-29 08:36:48', '2021-06-29 08:36:48'),
('07ff04fdc1bcf97b9913906571cb2ee36d5c0c9e021e424ce8d4e8fd8702931b265e3c0a82a26155', NULL, 1, NULL, '[]', 0, '2020-08-21 06:54:53', '2020-08-21 06:54:53', '2021-08-21 06:54:53'),
('08c9c6431afe1f63b9cc5de4c65875dcc4fcf277328c93d8b4690365209d5ca01714b3b092a521ca', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:53:58', '2022-03-26 01:53:58', '2023-03-26 07:23:58'),
('0950f5bf347f90b71c806ea20268f4326099d63640877f16ed87d2f5fbf6b6239136a42919dc5757', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:48:16', '2022-03-26 01:48:16', '2023-03-26 07:18:16'),
('0a2cc7d9d4e47e68ee46b498afecab3897a9c5bfb70819b1bcff15dc255c0c875e49b7e1ed54fe37', NULL, 1, NULL, '[]', 0, '2020-04-08 14:30:14', '2020-04-08 14:30:14', '2021-04-08 14:30:14'),
('0a546ca4fb97a3662bfc89a916c6496cf1593282a0be404c6abddd5c033549be7ef54ecbc2c9bfae', NULL, 1, NULL, '[]', 0, '2020-05-23 16:12:30', '2020-05-23 16:12:30', '2021-05-23 16:12:30'),
('0a55e42b55fb33ae61bc4c74d9d19504217db00f47878d439618e0b1fd916a3214967b76c36c4c4b', NULL, 1, NULL, '[]', 0, '2020-06-27 06:54:00', '2020-06-27 06:54:00', '2021-06-27 06:54:00'),
('0a837eb160d6649beb0bcdb9529604ad28e94559276cacb718210a635033f124165ecfe34dd00245', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:44:54', '2022-03-26 01:44:54', '2023-03-26 07:14:54'),
('0adfa030dd1273c63633c98412578c917fb9452dd95ef115a85779afb8cf1cc1edbeeb5008d938de', NULL, 1, NULL, '[]', 0, '2020-11-03 10:07:27', '2020-11-03 10:07:27', '2021-11-03 10:07:27'),
('0b135acc4746b4c68041297ae5e9533633b8876ea07175c670a8e4d7ea1327c1771c2925476420ee', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:25:20', '2022-03-23 07:25:20', '2023-03-23 12:55:20'),
('0b249397a4c0b5867ce05ef053f173be1b06f3de891435734e345de2c2c0fc184b273b8ad803c4ae', NULL, 1, NULL, '[]', 0, '2020-05-25 13:32:53', '2020-05-25 13:32:53', '2021-05-25 13:32:53'),
('0bd59e76c68c58ca593216a3963b28a8875ddaa2c43af7d6ec2b2ef73ca0ee761d1c973e644f778c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:45:41', '2022-03-23 06:45:41', '2023-03-23 12:15:41'),
('0bf4b8dfcb71916fb0e34f2c8e44e0f42b2482c7e664f34368c90c723f5777955961399b355294cf', NULL, 1, NULL, '[]', 0, '2020-04-11 07:22:56', '2020-04-11 07:22:56', '2021-04-11 07:22:56'),
('0c52255a62c9970b946fb51639dee559a1ff81cb47b48fae3978e09a13efc638c4ad5385266c834f', NULL, 1, NULL, '[]', 0, '2020-04-11 07:23:13', '2020-04-11 07:23:13', '2021-04-11 07:23:13'),
('0cbba0f00179a25ef4ef1f89cdfecc4126269c8173ae39b9d3fe91be355b4c64c7fa3d574e29adca', NULL, 1, NULL, '[]', 0, '2020-05-30 11:34:24', '2020-05-30 11:34:24', '2021-05-30 11:34:24'),
('0ccc52b99bbc29d53dad6cccaf7a5f1c679fc64ed04a218d998bfd7acc87afd665d047a5a3d68340', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:38:18', '2022-03-23 01:38:18', '2023-03-23 07:08:18'),
('0ccfaff789c16350acd1088552feef5882b9c5b24e95199bf064bede3026c1cf7a9679da394bbb46', NULL, 1, NULL, '[]', 0, '2020-05-23 12:23:57', '2020-05-23 12:23:57', '2021-05-23 12:23:57'),
('0cdf8379469b13b24c389e507c243847145b053cff617738116c663f08c11a6233c0232e3130d964', NULL, 1, NULL, '[]', 0, '2020-04-06 11:53:37', '2020-04-06 11:53:37', '2021-04-06 11:53:37'),
('0d2b52fc8c12b6f35d6b8c9888eceecde227eea6a48d7b0d004ad8797d0f0f7469260dd2dc001748', NULL, 1, NULL, '[]', 0, '2020-05-23 12:13:42', '2020-05-23 12:13:42', '2021-05-23 12:13:42'),
('0e482e4da509c19ee7876b49dc2a6499f7dc8a14acdfa42f1c643541e88a085d01e3e83321a11cd5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 03:31:08', '2022-03-23 03:31:08', '2023-03-23 09:01:08'),
('0ea59d70d52e5509c31dd6fbc0e006e2eca0de2ffb850440ce4f889f1da27bd608ec0adaf47410d2', NULL, 1, NULL, '[]', 0, '2020-04-06 11:29:17', '2020-04-06 11:29:17', '2021-04-06 11:29:17'),
('0ef8800f92d4492fddda1ad9057e3091562dd2769f6dea657492ad204ddf0ce1b6c8ce6c9b2ac3b9', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:59', '2020-07-13 15:05:59', '2021-07-13 15:05:59'),
('0fe4f8fa836f434bc274b82cae2d34a651e884c122b54a724af1e3440164430981552b5a58e320e7', NULL, 1, NULL, '[]', 0, '2020-04-02 09:45:13', '2020-04-02 09:45:13', '2021-04-02 09:45:13'),
('101372c9d8c6900e3e0278939bf69cf80a0e8c3fa622f0fcb42d725ebbddfd480a95c0ddb943f1cb', NULL, 1, NULL, '[]', 0, '2020-03-10 13:22:55', '2020-03-10 13:22:55', '2021-03-10 13:22:55'),
('1047245b2cbe7e31ebce351dd3810a23f9133b780f8309a32b5091e75d028a36eac7726136a0fe62', NULL, 1, NULL, '[]', 0, '2020-08-08 08:56:08', '2020-08-08 08:56:08', '2021-08-08 08:56:08'),
('10a32b0316f273befe4cc06dc25d9645b5376afae96378e7abf3475087cd684df74e93841fe1560c', NULL, 1, NULL, '[]', 0, '2020-05-25 06:31:27', '2020-05-25 06:31:27', '2021-05-25 06:31:27'),
('10d1e90f8d2724a0d09bc1b595e010bfe643ad017147ae5bf1527cf4d09835799f07559299be1cc4', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:11:44', '2022-03-23 07:11:44', '2023-03-23 12:41:44'),
('1135a4d6e59471e29b7d657a5b4161c73f3bfb1a559579914374ce94ea36a6b75961b7ef410bacce', NULL, 1, NULL, '[]', 0, '2020-02-03 18:08:25', '2020-02-03 18:08:25', '2021-02-03 18:08:25'),
('1262e0a31c08aa20ec69b3bd8ca18507609bad9fcf64cc320e9660a93065501978ea41b209ea0ae2', 31, 9, 'h_user_api_token', '[]', 0, '2021-08-25 19:08:04', '2021-08-25 19:08:04', '2022-08-26 00:38:04'),
('1375dc49d008d50eda2560471372622bfeab4d575d921c591c5a66787092bc00af155a1be7df3d0c', 28, 9, 'h_user_api_token', '[]', 0, '2021-08-26 04:11:39', '2021-08-26 04:11:39', '2022-08-26 09:41:39'),
('1452254445927697275c6040386709764807d17101e96415cb0b4470fa1f151e387a9ba990ca0d64', NULL, 1, NULL, '[]', 0, '2020-06-19 12:04:03', '2020-06-19 12:04:03', '2021-06-19 12:04:03'),
('1593765eb21d20575094e110367dcfec3e7a2004a300d3bbd964304f4ccd035e79c225dc71d5a87c', NULL, 1, NULL, '[]', 0, '2020-03-21 09:09:58', '2020-03-21 09:09:58', '2021-03-21 09:09:58'),
('15de39c37e3887c1350440f3565561c4383252dd3fde9c587f9f79393de86ffe459cacb78363fecd', 28, 9, 'h_user_api_token', '[]', 0, '2021-08-30 02:52:51', '2021-08-30 02:52:51', '2022-08-30 08:22:51'),
('15fbfa83ab70739b6f2bcce2a6a611bc260ebce9fde39c6f31898256275e552a314ceafbaac0a01c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:23:11', '2022-03-23 07:23:11', '2023-03-23 12:53:11'),
('16306d60abe4fe0db61c9d9708ab0e88d8bdb37c84a472c7e4c88d809e594f17a34d720d16b2deea', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-08 10:55:14', '2020-08-08 10:55:14', '2021-08-08 10:55:14'),
('166c5b42beaf3b5c23569891838f7336c2f3b6bf3e9f656ddaaf512d1a2eca04b0f81ac34ebff260', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:15:35', '2022-03-23 06:15:35', '2023-03-23 11:45:35'),
('167e77c5a17da7f99cc662dbeef65435e536ae60bbc0bf0ba23e63069cb8f09ff1574a7b5cfe8510', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:54:39', '2022-03-23 04:54:39', '2023-03-23 10:24:39'),
('16b2d6e6449b9770650e90a721af5494095a44c946e5b09aee630da13a69fb72de4986cc5b96f157', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:40:39', '2022-03-23 01:40:39', '2023-03-23 07:10:39'),
('176aa2ce8ac7fabda79d6e51fdbbb50cbf9b2e7fbc39abdba5e0050c9d5c8c966b26db7c17041858', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:36:50', '2022-03-26 01:36:50', '2023-03-26 07:06:50'),
('1777084b803c6486c02bb454ae2019e0a2e42924fa4ba07c4d6e9bdf38449f6faae4c8ccbf8026bd', NULL, 1, NULL, '[]', 0, '2020-06-18 07:48:02', '2020-06-18 07:48:02', '2021-06-18 07:48:02'),
('179c365eb3d5378233fe0f7aebfe82256bbd753c7e29af7feef4160dfca2eacdfdd1c9dc403a4bbc', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:10:46', '2022-03-23 07:10:46', '2023-03-23 12:40:46'),
('17cd937ed43756e51a8e28a99b154da0eb1c2197c3eee6d9f11ec3c20a603e6414a9d9965e3c9eb7', 31, 5, 'h_user_api_token', '[]', 0, '2020-11-11 13:13:31', '2020-11-11 13:13:31', '2021-11-11 13:13:31'),
('1832d4e52afefb17658242238667c1652570193c1b38a1000b4bb82d5668e12c910faa98d8979880', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:46', '2020-08-08 10:58:46', '2021-08-08 10:58:46'),
('18694b7a85e076fd113a516f3d5679680dac404784236eb69df19e534bcb9f1a7edc422cd6321d2c', NULL, 1, NULL, '[]', 0, '2020-06-29 12:18:02', '2020-06-29 12:18:02', '2021-06-29 12:18:02'),
('18af8121b53e11d90809f47c24a954802d675cf4f46820f76755636c6ab1888ab6950c2035b1e035', NULL, 1, NULL, '[]', 0, '2020-06-27 11:44:55', '2020-06-27 11:44:55', '2021-06-27 11:44:55'),
('18b1b4223b7ea59c9059a2ae0b268a64d2c870cf31f6d3c176616fede069c73c360f65d898ae5683', NULL, 1, NULL, '[]', 0, '2020-04-08 14:14:42', '2020-04-08 14:14:42', '2021-04-08 14:14:42'),
('18c381ef1122baf02ee11d4ac3bc40c181a28341617a041edb40b1ae35d6c14f60c0dfab7beacf1a', NULL, 1, NULL, '[]', 0, '2020-07-21 14:04:13', '2020-07-21 14:04:13', '2021-07-21 14:04:13'),
('19059c456379c6dfcdd086ced3e5885d4d3747ac11a19c761cf65a916df32b28b92da4c0d90e4d21', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:23:33', '2022-03-23 06:23:33', '2023-03-23 11:53:33'),
('19126230db29e633503ead9a77f348b986ad8ebb50b8b2573a6b852fddf31d44b488909adb4aebd9', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:08:25', '2022-03-23 07:08:25', '2023-03-23 12:38:25'),
('197a02c44870a37f6d676cd9b75e1492b6de371d476dae759e2e50f111a698ba3f500b636f85c5f4', NULL, 1, NULL, '[]', 0, '2020-02-03 18:08:45', '2020-02-03 18:08:45', '2021-02-03 18:08:45'),
('19e44ad2e89314e122e6823fc0a66b076e81bd55b99797478874ebe137b65a55af4654683757a267', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:26:14', '2022-03-23 07:26:14', '2023-03-23 12:56:14'),
('1a2df7c57c8816b8634f0af35b3ffee456085a39c352ba0fdbd1aed086d70f8e36a6027baa56b922', NULL, 1, NULL, '[]', 0, '2020-04-06 13:08:20', '2020-04-06 13:08:20', '2021-04-06 13:08:20'),
('1a3fe3b86f6baaa20d86e9228c951828ac40cd0e674cfc628c029bc8d94b5349a7324493f9744b31', NULL, 1, NULL, '[]', 0, '2020-03-30 07:02:00', '2020-03-30 07:02:00', '2021-03-30 07:02:00'),
('1a552d062142e4c47d29a21e028daddefea8cb2982e7c9c3223774810e0db86884a4b180929e6c32', NULL, 1, NULL, '[]', 0, '2020-05-23 13:12:20', '2020-05-23 13:12:20', '2021-05-23 13:12:20'),
('1ad172a32b74671462ee9fd4b7aa310a659d7b7e07fd7a905f723f6f2e1782c703d7916ad70299ca', NULL, 1, NULL, '[]', 0, '2020-07-11 11:13:53', '2020-07-11 11:13:53', '2021-07-11 11:13:53'),
('1af5d15b6188fcde45e80e403f8f2c44f0a29646359fadc712ded74c34f77ca7af7f6d26836cadef', NULL, 1, NULL, '[]', 0, '2020-07-21 13:30:05', '2020-07-21 13:30:05', '2021-07-21 13:30:05'),
('1b1173a52d4a953fecbf2a8a3b1305ad4eaec87e7a740455c0c2ddb2369076afe7e71fee717ffd4e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:53:49', '2022-03-23 05:53:49', '2023-03-23 11:23:49'),
('1b282ad54d9699ec69fe5b54153f67dde026068b5ad7621fbc0fd0788a25702846c58c40aebedd70', NULL, 1, NULL, '[]', 0, '2020-01-27 11:28:17', '2020-01-27 11:28:17', '2021-01-27 11:28:17'),
('1b7434414a37081c30029cc4f8883b1db360d00ca3ce262dbd0ab21f40e06bc12a6322d040a6a884', NULL, 7, NULL, '[]', 0, '2021-05-24 01:28:34', '2021-05-24 01:28:34', '2022-05-24 06:58:34'),
('1b7a6b9a3c2c15e8d0c00f2c61785c7730af2f00b4e15ba6a7a827bddffb558eac750ae7e667ef77', NULL, 1, NULL, '[]', 0, '2020-06-01 05:25:21', '2020-06-01 05:25:21', '2021-06-01 05:25:21'),
('1bdb015c3f675b2c28c0adf31b6d841d8b4e96567d3b56f2213bbcc82385b31bfd00db5e56849296', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:25:24', '2022-03-23 07:25:24', '2023-03-23 12:55:24'),
('1c52907877ee93d5f6ea3a1c9831fc32d9668972c45f2c7f25e96ccfc83993d9f9fc6b2aa9b0d6f3', NULL, 1, NULL, '[]', 0, '2020-06-09 10:13:26', '2020-06-09 10:13:26', '2021-06-09 10:13:26'),
('1cd1302c887b11467856095384d2acc5cd0a51433fa0f1b8e966efcd41e0f8aa43f41a89be6e0f6c', NULL, 1, NULL, '[]', 0, '2020-04-11 04:49:24', '2020-04-11 04:49:24', '2021-04-11 04:49:24'),
('1d21d1336f9caaa667c4fa996a30e8e2956951a47affe6460991b646176bc3bb211450ac8b51deb9', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:35:31', '2022-03-23 05:35:31', '2023-03-23 11:05:31'),
('1da948449acbbdec806d099e322444246c1fee08fe9ab07125e867e3b080b72aa0e3d97e7ddf0e6f', 26, 5, 'h_user_api_token', '[]', 0, '2020-11-03 06:47:26', '2020-11-03 06:47:26', '2021-11-03 06:47:26'),
('1dc9329b17a875b437150cfdf88438b86abe2aa82dc26bf2d37a382d10eddc106f55bd24a36732e5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:44:10', '2022-03-23 04:44:10', '2023-03-23 10:14:10'),
('1e1cc88205eadfd407f80c6d18217507153837e74d680b3f36c0111c1f82eb9f2ca5d5134bbcd59c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:59:07', '2022-03-23 06:59:07', '2023-03-23 12:29:07'),
('1e48b1b82b598582d341a08f610ee4620dacc5208f203d7308376fdd371c05c227c1fdcdfcd636fd', NULL, 1, NULL, '[]', 0, '2020-07-27 06:03:38', '2020-07-27 06:03:38', '2021-07-27 06:03:38'),
('20b36428140db2f36f6cc79455ad1636b93b5ed9de874de7570d69ee6cd3a6e16ab093b09fe86c28', NULL, 1, NULL, '[]', 0, '2020-05-25 05:13:13', '2020-05-25 05:13:13', '2021-05-25 05:13:13'),
('20b58604ed62bfb77fbee9dc29d90ce94c02d58612fea5192c3d8d517cc3ecf2b513e393b2ce8f79', NULL, 1, NULL, '[]', 0, '2020-07-10 18:12:33', '2020-07-10 18:12:33', '2021-07-10 18:12:33'),
('20e0ece4349500ffd77d1f7a8637ea773671c64fb54ed4adc8948875e969d67adc29a2927b2d29b7', NULL, 1, NULL, '[]', 0, '2020-07-21 14:02:47', '2020-07-21 14:02:47', '2021-07-21 14:02:47'),
('2104102be7d83d4905cde24596e72f0e84e6b4c339bd125186b3c8db76e5634e03ac03a0b055c440', NULL, 5, NULL, '[]', 0, '2020-11-03 10:05:24', '2020-11-03 10:05:24', '2021-11-03 10:05:24'),
('2146812ef68360069a3e56f5ff9a427b65361e483269a371c1ef21ed9f34a1f3e8d0f3889001df97', NULL, 1, NULL, '[]', 0, '2020-04-08 14:36:24', '2020-04-08 14:36:24', '2021-04-08 14:36:24'),
('2176846620963c9e694ba96c682507e35f420ed0ead8f53ff31c4426b10a767a900100257c7912e8', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 00:47:48', '2022-03-23 00:47:48', '2023-03-23 06:17:48'),
('228e341578dc36a304a6a262c82b0eba430e2cb7c3f226355937cdcb2b14d63979f69914c8bf2ce2', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:07:56', '2022-03-15 02:07:56', '2023-03-15 07:37:56'),
('232417e5200da2017f12fdcb3da65cb7d9d60266b2acbacd2e16615f42d4b4d7955269d447ec01e8', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:11:20', '2022-03-15 02:11:20', '2023-03-15 07:41:20'),
('23650c5febf89e792e611ecb628a9449dacae87474defa254f09c96b328713db31833119765abffb', NULL, 1, NULL, '[]', 0, '2020-07-30 10:17:40', '2020-07-30 10:17:40', '2021-07-30 10:17:40'),
('23c7227af59a8838c1b8c3a6a705b91b9cd9c4d8775fe4d61c1e583115c9388c56c2f572ce6d57e0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:33:34', '2022-03-23 05:33:34', '2023-03-23 11:03:34'),
('24ae7527e85fddcb754f1d413b0ff51f10e8658c9373de2adb6960eafcfb7bb85988a918f6bb40ed', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:22:01', '2022-03-23 05:22:01', '2023-03-23 10:52:01'),
('25451406cb38b5eb7c6c0f5e6da77d5f69a6f5af8fad37e7c3b1c5852a11747a70b7f942a6f5305f', NULL, 1, NULL, '[]', 0, '2020-04-06 12:33:22', '2020-04-06 12:33:22', '2021-04-06 12:33:22'),
('2552e031a00c4e8cd5726a6cb06e08af51420d71a6ce1d8f6d97a674a9ecfce1a8b171240355a65e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:23:46', '2022-03-23 05:23:46', '2023-03-23 10:53:46'),
('260bb83a46c43d3ddfe5524f2bc3ca6d0f52013cf34659ff60b4130a4d94ed4664cdc95fb0d24dce', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:44:18', '2022-03-23 23:44:18', '2023-03-24 05:14:18'),
('2691d68fa11253812b294e6bc0eae8467487e2b6937174ed1d1c7b59849bb3fe6617d029c6b328fb', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:43:35', '2022-03-23 04:43:35', '2023-03-23 10:13:35'),
('26a0674cb62be8b347aed842b1d44fee066d8e0d637272ad648d23e288ad41ef7956ec2cde7d458d', NULL, 1, NULL, '[]', 0, '2020-02-03 18:07:43', '2020-02-03 18:07:43', '2021-02-03 18:07:43'),
('2744a004b0e03f6c04ec4d4355f00e9305b96a7941e786ef75a1d447f1ca84ceea0f50d1fb1f05ac', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:09:50', '2022-03-23 05:09:50', '2023-03-23 10:39:50'),
('277103d5404f8e841d336a49fdaf1340f643b1ce5eb36df17253ce4c8fcea98deec6a9faf604672b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:46:29', '2022-03-23 04:46:29', '2023-03-23 10:16:29'),
('27a276e93fa7fe3090e34a9760318957354c584be1ee6618247d5b58aa41ca6f175ada8d5bdbad21', NULL, 1, NULL, '[]', 0, '2020-05-30 11:39:06', '2020-05-30 11:39:06', '2021-05-30 11:39:06'),
('2848e19564d52c7690b490c1ca150bc5529334ca23381f4c04fc0e243ea5707b4ed61630e9d27bd1', NULL, 1, NULL, '[]', 0, '2020-04-11 04:53:16', '2020-04-11 04:53:16', '2021-04-11 04:53:16'),
('286b7d27241df5ed1267335f3a948d302be9d5e9d91514876e90a94d467ecfcb2bcfcf089ec0212f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:20:48', '2022-03-23 01:20:48', '2023-03-23 06:50:48'),
('29ba684ab4c16a0cca9b42299b5310991139d77641b4616800b9ca13ed01148ec58023e376983003', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 00:42:49', '2022-03-15 00:42:49', '2023-03-15 06:12:49'),
('29bb78e0745087b6fd1046f80bc1e79728e0e6679b9e6f6e4ec7ec79d158d93ed99176c662eb4ab4', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:30:52', '2022-03-23 06:30:52', '2023-03-23 12:00:52'),
('2a2f2bf37d509dc276413137edbc1616b9170d5c00b98de2c379558aafbef5d688b7bde1a4105a06', NULL, 1, NULL, '[]', 0, '2020-05-30 11:38:59', '2020-05-30 11:38:59', '2021-05-30 11:38:59'),
('2bc715cc715def0e891ccb3c1a7be3ae1e36e0d88e031e7dd579b33eabf468b0364b6d31cdb87fad', NULL, 7, NULL, '[]', 0, '2021-05-13 00:35:27', '2021-05-13 00:35:27', '2022-05-13 06:05:27'),
('2c016573f651735b2005801d20f8a58826ea45074c40f991d5bb53f5e403115050be6ee1772aae9d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:03:36', '2022-03-23 07:03:36', '2023-03-23 12:33:36'),
('2c0b4216e2ef930f3127d97576d5e8da44cee00504848a834d67a5f50a0d54dc31ddd1e207ddc782', NULL, 1, NULL, '[]', 0, '2020-07-29 12:06:32', '2020-07-29 12:06:32', '2021-07-29 12:06:32'),
('2c627a2d042c45ef9c76054fb2276ae1d6fda58ab57a11b98366324e7016840f133ca3b06b9e3f1e', 8, 3, 'h_user_api_token', '[]', 0, '2020-07-29 12:11:35', '2020-07-29 12:11:35', '2021-07-29 12:11:35'),
('2cc6b1ecfdd9394439b416f5b5a89e665df7d5693e28526b89e56b0c38f52daf2cd7148cf7fea06e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:32:58', '2022-03-23 06:32:58', '2023-03-23 12:02:58'),
('2d528fd059b0e1dd6745f60ce71d607aa047ce44e9fe96754ac186f4b015a00207bcdb8b75122f03', NULL, 1, NULL, '[]', 0, '2020-02-03 08:39:35', '2020-02-03 08:39:35', '2021-02-03 08:39:35'),
('2db5a239d3b0e9fca587d25c3679da376d81f82a8a0906b125223c673031e6afc38a03c9c47cc1cd', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:18:05', '2022-03-23 23:18:05', '2023-03-24 04:48:05'),
('2deb6d8906d40c56c8a2f4eafba2594908bd85023eaf1cf3f5a868450de70bd1e582a20612c64059', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:16:21', '2022-03-23 05:16:21', '2023-03-23 10:46:21'),
('2e12f7a40e4f20c23649716f197df011feff361507627556ddec065cee5488c4a7ef3b13bd1598f5', NULL, 1, NULL, '[]', 0, '2020-02-13 11:19:17', '2020-02-13 11:19:17', '2021-02-13 11:19:17'),
('2f1f8211bea69c2786f73a5375b6fd2ca46a57accc4876c4ef75fa0e0869535cd54b331a4878504f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 01:56:12', '2022-03-15 01:56:12', '2023-03-15 07:26:12'),
('2f315b0d1ad15e31aa02dbce100f8be9b52cecba5b36e67efddcdebe79c52321c2c5fd6a53e1f849', NULL, 1, NULL, '[]', 0, '2020-07-24 06:43:02', '2020-07-24 06:43:02', '2021-07-24 06:43:02'),
('2f5cfd18397a03b0bc045ceb179f3df191bc7006035e0df9c647f5b96775a01d9ab75e45f9dba130', NULL, 1, NULL, '[]', 0, '2020-11-03 12:13:09', '2020-11-03 12:13:09', '2021-11-03 12:13:09'),
('2f83e5e1c17cf4accfa50388f452cb7933889fa73a244bf244c420d207a4d021c4c96bf93208c6c2', NULL, 1, NULL, '[]', 0, '2020-05-23 16:28:50', '2020-05-23 16:28:50', '2021-05-23 16:28:50'),
('303067d0c20c8c1c253d8246f6f4f8eac13b308fab7389b32767eb61510d1edd988ca511b521284d', NULL, 1, NULL, '[]', 0, '2020-06-27 06:27:58', '2020-06-27 06:27:58', '2021-06-27 06:27:58'),
('3083e3700e77ed7e0fcd5263a95d63269d6f0e299a36a452c28e46f56c269d217efad343d527f5ff', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:37:31', '2022-03-26 01:37:31', '2023-03-26 07:07:31'),
('30962e9eefbda165cc837ee2490cf610bd11d77e583db65b411a2d271808ad7275af59be881075c3', NULL, 5, NULL, '[]', 0, '2020-10-27 03:07:54', '2020-10-27 03:07:54', '2021-10-27 03:07:54'),
('31e9adf2ae2d88fc33be42e6aaedd67791f8b97babb995d95d5da435f1344bc6fb1894419e228347', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:22', '2020-08-14 12:47:22', '2021-08-14 12:47:22'),
('32ee249ec67b97d11a6db284ef6382a9788a3c85dbe72beddef43cf3615f1e2f9f6fe21d91fef39a', NULL, 1, NULL, '[]', 0, '2020-02-18 13:07:23', '2020-02-18 13:07:23', '2021-02-18 13:07:23'),
('33aa7c04c6267cd5430c863b08dbfef78d41144add7f837fa023bb73e07a49a23e34dc521e92e9c6', NULL, 1, NULL, '[]', 0, '2020-03-30 10:24:49', '2020-03-30 10:24:49', '2021-03-30 10:24:49'),
('34f7ad0a9f652cc541c40667fd482f936d726136084301285fc5c9c2044039b9d1283ea6b8a1da30', NULL, 1, NULL, '[]', 0, '2020-04-10 11:14:43', '2020-04-10 11:14:43', '2021-04-10 11:14:43'),
('35817d5cac4d8f67012038a2a2b9ff6c73778b86745ae46e1b9c5361d17852ba7aa77c7a22fb7a46', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:02:44', '2022-03-23 07:02:44', '2023-03-23 12:32:44'),
('365499b3145d3a0fa24e325b3472fa873121fdbcff0d2736f08d61262161b6ddc5632844aa420f0c', NULL, 1, NULL, '[]', 0, '2020-06-01 05:24:06', '2020-06-01 05:24:06', '2021-06-01 05:24:06'),
('365ba7656ececcff5933b595e06c4abbb21b2e33177e74aa63e97c1022891798e05461e79a084c5d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-14 02:20:26', '2022-03-14 02:20:26', '2023-03-14 07:50:26'),
('36ff0a00c16e6c3400d2f509c26420eceb63cbc9e62127f10f17b2c2cd08a36608b94d05c4948632', NULL, 7, NULL, '[]', 0, '2021-03-27 05:59:32', '2021-03-27 05:59:32', '2022-03-27 11:29:32'),
('37014d3c0968101275dd1c0e1c7304adf288fd05fdfc916c40e967696c73f949edff763d6932ff28', NULL, 1, NULL, '[]', 0, '2020-05-25 05:07:08', '2020-05-25 05:07:08', '2021-05-25 05:07:08'),
('370f6d2d3267435ee0f6f871327a489c2689eb6974fc99da9a7e2d73475f43ed8ca0c59191e66bb5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:34:15', '2022-03-23 06:34:15', '2023-03-23 12:04:15'),
('3759aed1c4dab3456688cf4ed17f16d209ec5787d7635d172c2c2b3d11c1b1182512342f3922ab43', NULL, 1, NULL, '[]', 0, '2020-06-01 08:05:30', '2020-06-01 08:05:30', '2021-06-01 08:05:30'),
('377211ea23981b5603db015330a1845223926657b9db4020eea0e393991475beb3da2406f68bdaa3', NULL, 1, NULL, '[]', 0, '2020-07-07 07:02:04', '2020-07-07 07:02:04', '2021-07-07 07:02:04'),
('37cd42ffd33ee7df7aaaab58ba4abfea2e3e6f997a1fb3b1b9935f353d0a4a6a1eb2ce74e0b067bf', NULL, 1, NULL, '[]', 0, '2020-03-21 10:33:47', '2020-03-21 10:33:47', '2021-03-21 10:33:47'),
('37e148b42baebe2a7f8348c38556123b26c9d3a078a307df1d27fd98e29ae917492a7a3cebc9c63c', NULL, 1, NULL, '[]', 0, '2020-08-21 06:58:41', '2020-08-21 06:58:41', '2021-08-21 06:58:41'),
('3827b27c076a7671fd341bb2c1be30743ff33f89b874f2cbaa7f56571c5625ec0be640239662ac49', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:21:05', '2022-03-23 06:21:05', '2023-03-23 11:51:05'),
('38a545f930e2c787c3116a96e3883af1be5ffe176c080064d18dd1f3ea1bfc6fd8e139044ef05e9b', NULL, 1, NULL, '[]', 0, '2020-06-19 07:58:53', '2020-06-19 07:58:53', '2021-06-19 07:58:53'),
('393512a66655c925ba0a37fadf7aa4d7f6cda604710932938bbe87960709b23d17f19a849932f129', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:28:24', '2022-03-23 06:28:24', '2023-03-23 11:58:24'),
('397fe919a3d250eb9e021c81a9c405c908dc22fcd65e36c2744ee69595b37abb3da226020b5ec39e', NULL, 1, NULL, '[]', 0, '2020-05-25 05:10:54', '2020-05-25 05:10:54', '2021-05-25 05:10:54'),
('3a5aca4307a7b46c1224b670c23ead560bb0691e8151a8bab5b338ebbf7cba686d552146517c7711', NULL, 1, NULL, '[]', 0, '2020-05-30 11:34:15', '2020-05-30 11:34:15', '2021-05-30 11:34:15'),
('3ab6db0cef8631c7b747e75be66de95d467c3c758b131c3c61248b9e0be82b8b3655d5306fa3e414', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:36:26', '2022-03-23 07:36:26', '2023-03-23 13:06:26'),
('3b95d9969b7d18877f65fe8788a082e7ea78913c9e46c9f5325f3e73837de0960c21e7323eeeba4a', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:27:43', '2022-03-23 06:27:43', '2023-03-23 11:57:43'),
('3bc33709349a6b16e257bfca03af04506e7af9082fef88e47134c96249bae2d71642e06685c4b0be', NULL, 1, NULL, '[]', 0, '2020-03-30 10:35:10', '2020-03-30 10:35:10', '2021-03-30 10:35:10'),
('3c4b9da5b849b255f217e33d869dd9fbfae3ad42ad96c8dd4dae2a6e56117ac4b180ba996f20b66a', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:42:28', '2022-03-26 01:42:28', '2023-03-26 07:12:28'),
('3c5eed18fe00be34a666294e8f5925dd69afaa8bb22d621b4f487b259d46bb8fe2cf5322c6f986b9', NULL, 1, NULL, '[]', 0, '2020-06-11 09:41:42', '2020-06-11 09:41:42', '2021-06-11 09:41:42'),
('3cbf02f088a04bcc5fee55ce8c7a8ec9913f8457b466e379128e263d2c62138509599ed0eaa49039', NULL, 1, NULL, '[]', 0, '2020-05-25 13:58:59', '2020-05-25 13:58:59', '2021-05-25 13:58:59'),
('3cf4f79616945bc3681f1b57e566ed4961bd7e32650a90d6c5f0266d24015cbcc29703049eca923c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:33:45', '2022-03-23 07:33:45', '2023-03-23 13:03:45'),
('3d0ce5434798eaf94ac68c6f07be399a238bc3523058a8c409978b5b34b6b7460b204a14bbde7090', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-14 13:04:39', '2020-08-14 13:04:39', '2021-08-14 13:04:39'),
('3d9ec8c9eae0b90b0dbda97f082b3da72537f7d92321b195f609f7243736c779998965d49839c7ac', NULL, 1, NULL, '[]', 0, '2020-07-25 11:15:11', '2020-07-25 11:15:11', '2021-07-25 11:15:11'),
('3e12eb271e7a95d5f0491ff8429b3826fb574aacc497d5fc2c399b3da7a6c15361f2e5d5d99694f1', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:45:28', '2022-03-23 04:45:28', '2023-03-23 10:15:28'),
('3e246b42204a13ab000f717dc909724239232cccb4c1e4b334cc2c1aafb71684ae465dee0cf8b268', NULL, 1, NULL, '[]', 0, '2020-04-10 10:57:39', '2020-04-10 10:57:39', '2021-04-10 10:57:39'),
('3f409a910be055fa0dcedc9502a8288bc9a6cf87031690f412ff62f78c1ea87794b0758e720c5aab', NULL, 1, NULL, '[]', 0, '2020-06-10 08:52:49', '2020-06-10 08:52:49', '2021-06-10 08:52:49'),
('3f4ec51ef95f7634cb3eec127265b285205551883a01309233d95670272e5d40634cc107b5c2dd7e', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:27:19', '2022-03-23 23:27:19', '2023-03-24 04:57:19'),
('3fd77a62b4ec1ca9b42a8f7733168c8f65fc0648840b6d6b6668bfdf5d9fec9328e2303a9e9d5aab', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-12 04:04:21', '2022-03-12 04:04:21', '2023-03-12 09:34:21'),
('4051fd181aa44b7b8df9d764378850f743c31410d0dfea595de0ef139f0a01e8cae91690a900ecf5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:19:51', '2022-03-23 07:19:51', '2023-03-23 12:49:51'),
('40c9f7768bab3a67e48832d3103448ed9904b658f2c0af61ac4e73b1252c7153f0b8663b8d1916fc', NULL, 5, NULL, '[]', 0, '2020-11-03 06:41:13', '2020-11-03 06:41:13', '2021-11-03 06:41:13'),
('40feb7c0c2c6c3e1014c4d6ca37dffc7725474ee9e21978b295b25eb94b9e7811f3f19d22e1c38e9', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:14:43', '2022-03-23 07:14:43', '2023-03-23 12:44:43'),
('413e293432bdc7ca17c717017456844437531c2add9b6c44e47c59971ca324819c122088d76a85da', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 00:41:49', '2022-03-23 00:41:49', '2023-03-23 06:11:49'),
('413f64ce9e733847cfe5f9cdd9b11c9dddae15cd1a2b9a705be3e8fc31b369ca2b23055e6b982f8d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:01:29', '2022-03-23 06:01:29', '2023-03-23 11:31:29'),
('4170d76865e458eff29144dd256975937745f701a1d047a7c8364017831fb8058ebb16b5b8168a91', NULL, 1, NULL, '[]', 0, '2020-06-30 04:44:23', '2020-06-30 04:44:23', '2021-06-30 04:44:23'),
('41c1d4c55208e87faf1a60e252d43eebffc13fdf3fca6677b93c59609b59b28fed456053f1fd6b58', NULL, 1, NULL, '[]', 0, '2020-06-18 04:40:05', '2020-06-18 04:40:05', '2021-06-18 04:40:05'),
('4206105e299cc6be09f0bb309f442ac98a6d1bea45cce6f5bf51d1d493fcb43c598856cf4c254757', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:59:05', '2022-03-23 06:59:05', '2023-03-23 12:29:05'),
('42398bb8b11bc038ca5b54655bb51c0520dba2ebb84b268c735065e565a9ed62e705b3363f7e0837', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 02:01:03', '2022-03-26 02:01:03', '2023-03-26 07:31:03'),
('4283b01584bc5a78fb48504f3019d258addd6ae12e58153d3da7fc4520e742493e574d0fc87b48b4', NULL, 1, NULL, '[]', 0, '2020-07-24 06:54:37', '2020-07-24 06:54:37', '2021-07-24 06:54:37'),
('42ace97f90f532623c3bbd1656d0dd5e317bec998d8f3a67d17fda76664c4388eeefce23b5eaa3c4', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:20:30', '2022-03-23 07:20:30', '2023-03-23 12:50:30'),
('439623d2766aa36593bc38e07e7f893f63da5d9950e189eb2584032d87b4c4054ff0a4481b8dedce', NULL, 1, NULL, '[]', 0, '2020-06-09 10:03:25', '2020-06-09 10:03:25', '2021-06-09 10:03:25'),
('43eb61d5f1c69c8e08f3e8b24f302f3437375785b22a44b2df98529ed478a40986c1ba6d7766cb7d', NULL, 1, NULL, '[]', 0, '2020-04-08 14:14:36', '2020-04-08 14:14:36', '2021-04-08 14:14:36'),
('441e3f9678261e114cee7d0fbdc590094da239e7e853d94f53daaf91a0700cca77bc39b0b11a503f', NULL, 1, NULL, '[]', 0, '2020-04-02 09:07:02', '2020-04-02 09:07:02', '2021-04-02 09:07:02'),
('44a89b1a0b1c0c85af4d3d004a895794483556d4f507d5df6aa7079d19c3360198bb0e8a05405dcb', NULL, 1, NULL, '[]', 0, '2020-02-20 12:40:06', '2020-02-20 12:40:06', '2021-02-20 12:40:06'),
('45b6b325bb00dbdc8b6161459260ae3a98b0cf5f6f8f8bb2e132e0acc811d2285ee09d1577448829', NULL, 1, NULL, '[]', 0, '2020-08-14 12:46:15', '2020-08-14 12:46:15', '2021-08-14 12:46:15'),
('4665973c2d6958c6b019e2899c37590802f15081e81dd5c9fbe05e9ab39c41c4abd7fb707733d440', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:02:42', '2022-03-23 07:02:42', '2023-03-23 12:32:42'),
('466d91b5a7d87876a7d2c18e24c94edc81f88822f917ceec2e1f30ac76efb2e4c905d68fe7448eae', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:01:50', '2022-03-23 01:01:50', '2023-03-23 06:31:50'),
('470387dbadba1e7f51567fbf3a32167cc0558fe23a9ecd691f2d7b91b53347419099346ca9116525', NULL, 1, NULL, '[]', 0, '2020-04-08 14:16:37', '2020-04-08 14:16:37', '2021-04-08 14:16:37'),
('47340a06056032687b8ff7219ffcca820044b066891bd43d2475ed1f2843252985d4e532ba811d73', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:03:10', '2022-03-23 01:03:10', '2023-03-23 06:33:10'),
('481fa64c4f0d6a775a64077f2aa4c776a687836bea13ad80bfdb6bb508dd0fcf55630641af75166b', NULL, 1, NULL, '[]', 0, '2020-04-06 12:58:21', '2020-04-06 12:58:21', '2021-04-06 12:58:21'),
('4820d9f612514cc22cdad7bd0870c13ea4159c11e20962a512ae2482a0aecc72ee2a88c85e28fc3b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:57:44', '2022-03-23 06:57:44', '2023-03-23 12:27:44'),
('4822328ed9bf0840f14608bd32582528693f5cf67055d87f499799b01bdaa3d6a5c5e508faf184de', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:34:16', '2022-03-23 07:34:16', '2023-03-23 13:04:16'),
('4973826fc1bbefa88dbd3272d6fb7deecea8f06cf31a270d8255bd80b9162b89c2a08c7764776800', NULL, 1, NULL, '[]', 0, '2020-05-23 16:43:45', '2020-05-23 16:43:45', '2021-05-23 16:43:45'),
('497a23851e98bd400cea1513f764e05ab2542d6e02a997ef85c0cea1af7127791841055b866de2af', NULL, 5, NULL, '[]', 0, '2020-09-16 10:55:45', '2020-09-16 10:55:45', '2021-09-16 10:55:45'),
('49f25347f56439008acefc78c1fee0f626fa2c5670b20a8a09048d52d5a12dafeccd9532b73d481f', NULL, 1, NULL, '[]', 0, '2020-07-13 14:45:19', '2020-07-13 14:45:19', '2021-07-13 14:45:19'),
('4ade293784f8ca226e26831b2df86aafdaa26934e8f89f1102370e890c545eb3a0ee73f30373e158', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:52:24', '2022-03-23 04:52:24', '2023-03-23 10:22:24'),
('4bab5bf8a801c509b2ffa03c4ee8bf31a2e444dbf37aff69fa57fb91329ef3f411a1aa3ba88c31e1', NULL, 1, NULL, '[]', 0, '2020-04-06 10:49:29', '2020-04-06 10:49:29', '2021-04-06 10:49:29'),
('4bc64201e044d22c6202c7006dbacb8637f522ffb0cf702bf450379afebe83a843d07808d900dc4c', NULL, 1, NULL, '[]', 0, '2020-03-30 07:04:41', '2020-03-30 07:04:41', '2021-03-30 07:04:41'),
('4c0f41d7521896a417a4135c80b0424a02779111778da3530797be57cde121a34f776518bf80cab0', NULL, 1, NULL, '[]', 0, '2020-08-21 06:56:36', '2020-08-21 06:56:36', '2021-08-21 06:56:36'),
('4c7e23fba69355e0fcfe78b49f03280e8afaeb7ff998a947d3e1d2edc3fdc7249c0d068e796004a0', 31, 5, 'h_user_api_token', '[]', 0, '2020-11-13 06:08:19', '2020-11-13 06:08:19', '2021-11-13 06:08:19'),
('4cbcdef25de6ce7a994f191583c1d7d75df01c392ccb0cb42b6305fa4b2b685b9af18ab9fb0e04fa', NULL, 1, NULL, '[]', 0, '2020-06-30 04:40:16', '2020-06-30 04:40:16', '2021-06-30 04:40:16'),
('4cd66d2697571be9dc072101b696fe275620d4539825d4a1eb3ce3b0e476f5c3927419e33088d7b2', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:33:03', '2022-03-23 05:33:03', '2023-03-23 11:03:03'),
('4cff9181c2041afe8ae7195c05b824a5a739f115199c0d6f6a41ae20de2e3e69b89e8a88b198fa8d', NULL, 1, NULL, '[]', 0, '2020-06-27 06:30:48', '2020-06-27 06:30:48', '2021-06-27 06:30:48'),
('4d22149c4e67988b18eec2fdf91522c22ddc5376cfbfaed22bc9badc3633342d3bcfc9aa8bf584a1', NULL, 1, NULL, '[]', 0, '2020-02-19 11:35:08', '2020-02-19 11:35:08', '2021-02-19 11:35:08'),
('4d80865f423ae887537730aeae27bbc464688bf73d862c0c47c38285ced3e9f3325a601e29dfe29b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:21:04', '2022-03-23 07:21:04', '2023-03-23 12:51:04'),
('4da7b26c1e9bf549191d707b6c56c7e46114e638da19ca6ef03702989183454000e31034af82ec1d', NULL, 1, NULL, '[]', 0, '2020-06-01 05:23:21', '2020-06-01 05:23:21', '2021-06-01 05:23:21'),
('4e299bc3f557fb97dda91de504fcf93302676ffc3c0868ccd1071a9c05839ceb90ae579dd0e894fb', NULL, 1, NULL, '[]', 0, '2020-04-14 04:52:54', '2020-04-14 04:52:54', '2021-04-14 04:52:54'),
('4e3616104efc30a3b0a27771ced2e8793423dbfd762f9d1dcdb83f87670fd06207635f08d76e3a11', NULL, 1, NULL, '[]', 0, '2020-08-14 12:46:32', '2020-08-14 12:46:32', '2021-08-14 12:46:32'),
('4e7e9c21e1ae7c6feb7698d46fa3c7c957bc6e3db3606bc68eabbaeca654686f9ee8cbb5310102fc', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:27', '2020-08-14 12:47:27', '2021-08-14 12:47:27'),
('4ec99f8e51918cb18df39edd34c96ab360145bcc9b4203e0ae9f901916a223bbeed67d8e214bad6b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:00:39', '2022-03-23 07:00:39', '2023-03-23 12:30:39'),
('4f6c7c1225209184b6d4e5e5ae37ecdf85afa7091954222c1943e37d883961e9efe015eb76a9f4d5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:06:55', '2022-03-23 05:06:55', '2023-03-23 10:36:55'),
('4f75e991d897b92b8df7d1edbff3033d30e181e7d8285d1e70015f5f7f80940c1ea5b16fdb9fd8d0', 28, 9, 'h_user_api_token', '[]', 0, '2021-08-30 01:53:16', '2021-08-30 01:53:16', '2022-08-30 07:23:16'),
('4f7f962e1f085f0ce73de6d21cc79b50418e8109f79d3ad47d8f81033d782a76cfe50061f4544829', NULL, 1, NULL, '[]', 0, '2020-04-06 11:03:08', '2020-04-06 11:03:08', '2021-04-06 11:03:08'),
('4fb223e9065363c14da612bb73a4592817dd35506c6b1df81bb0258d8b51d8f81f47397babdb87d0', NULL, 1, NULL, '[]', 0, '2020-08-23 07:30:13', '2020-08-23 07:30:13', '2021-08-23 07:30:13'),
('4fcf713867399d8e86a0fe92790f8d53ba0a79f263fa3ac91196ebd497c47c596379a5ba82c8ae46', NULL, 1, NULL, '[]', 0, '2020-07-20 08:05:51', '2020-07-20 08:05:51', '2021-07-20 08:05:51'),
('50c6c4e41798c0cabe0c8ff8218eb85d00b1320428533aee8df2eafd9f24ed5de5ef0e7c7706859d', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-14 12:56:34', '2020-08-14 12:56:34', '2021-08-14 12:56:34'),
('50f68e5df17414793544f229f4b03dc3a9fc6b59fb46a779da379f9cd7c33549743498b53c16be31', NULL, 1, NULL, '[]', 0, '2020-07-20 08:01:02', '2020-07-20 08:01:02', '2021-07-20 08:01:02'),
('51602384072715b9f3cf0764053035557e1a121cec952ac5cf7133b4443e18206e3ab7f5b69bfb7a', NULL, 1, NULL, '[]', 0, '2020-04-07 10:41:38', '2020-04-07 10:41:38', '2021-04-07 10:41:38'),
('519aa1fdba88a60e832ca0dd565af53bfa8d0e9ded535ac5b16d59f142d45c4299a13cbec98ffc50', NULL, 5, NULL, '[]', 0, '2020-09-16 10:50:37', '2020-09-16 10:50:37', '2021-09-16 10:50:37'),
('529944129f6b5dadc568201cd41ced515bba856f93d0da9e9e1e763516e894ae59df919b424a8dbb', NULL, 1, NULL, '[]', 0, '2020-06-30 04:42:26', '2020-06-30 04:42:26', '2021-06-30 04:42:26'),
('52b21998d542b04254406cbb08a52183c3ef51fba68244a72ecaf1d75c2d5abebf6774e8e5d5432b', NULL, 9, NULL, '[]', 0, '2021-07-20 05:47:58', '2021-07-20 05:47:58', '2022-07-20 11:17:58'),
('52d57c812eb9bbb72d221444bf887392cc23d4ad326ffc708e2f54a614aad0a659eb3681ba7e5859', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:35:16', '2022-03-26 01:35:16', '2023-03-26 07:05:16'),
('5316790d9e7eac0a6f35f154cd153f31b1d98efeb9adf05ee972e10d6ac0dbd929e6d7d3f6452272', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:37:30', '2022-03-23 05:37:30', '2023-03-23 11:07:30'),
('5370c7e3e2320b6919a31d8c80572f92a8bb94650ba73230c37f1ac2d68589d7e1e275289967bd35', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 02:00:20', '2022-03-26 02:00:20', '2023-03-26 07:30:20'),
('548f8b290627055d5dda283f5cedee5fd019e2371690a9afad7850ca4e240906a5531a5e8a548870', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:14:13', '2022-03-15 02:14:13', '2023-03-15 07:44:13'),
('5560a1b5d8b0f6919f4f7bc79e5dc0549112b953508abe454a18e84727fd7cb2319541b98af88833', NULL, 1, NULL, '[]', 0, '2020-04-04 04:24:46', '2020-04-04 04:24:46', '2021-04-04 04:24:46'),
('559515b3fcc662d7c005bcccb068972eab02cddff15dd5c19d44af51e6d82f4ede87f758c2efcdc0', NULL, 1, NULL, '[]', 0, '2020-11-03 06:51:41', '2020-11-03 06:51:41', '2021-11-03 06:51:41'),
('56eba0bc70128c0be5a35ede1ee1fbfcafbc807fc7ecec80e9fa8a2e36ce54caca68295c6e4b6cf2', NULL, 1, NULL, '[]', 0, '2020-01-29 15:32:57', '2020-01-29 15:32:57', '2021-01-29 15:32:57'),
('57e5b18627020641360248b4f63aca4888ae22fa19a955215681ea7d3109d4b97ab3e71b40814788', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:03:08', '2022-03-23 05:03:08', '2023-03-23 10:33:08'),
('588c63d83779adcf3b963eac5ec08c5737e25e45da548ed3bdb2410145000367e8876a1ce4e4f3a4', NULL, 1, NULL, '[]', 0, '2020-06-09 09:35:08', '2020-06-09 09:35:08', '2021-06-09 09:35:08'),
('58af2a46baa88a33353db90bb0c90a41af176417d2c8dc7eda64d4caa7e377cb14095781f3b0a794', NULL, 1, NULL, '[]', 0, '2020-03-19 10:20:41', '2020-03-19 10:20:41', '2021-03-19 10:20:41'),
('58d091686ef6efab64edd12f4392ba6aae224bd715b8877507356bce094384a2ba50c575c59cac8e', NULL, 11, NULL, '[]', 0, '2022-03-15 05:42:36', '2022-03-15 05:42:36', '2023-03-15 11:12:36'),
('590cafd7073c9d7c1841033bc98935d8923bd6772ed9ca877ee55586998203100cf20265c8da852e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:39:42', '2022-03-23 01:39:42', '2023-03-23 07:09:42'),
('59a2650146a00621503da27477441784a2ad773bf2bb227b837412f931681367034ba3f22466f908', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:30:42', '2022-03-23 07:30:42', '2023-03-23 13:00:42'),
('59dbc2e60b5243cb7f466fd709cd505acc5a447d450a335d6456651dfd16384dd8b785ccaaaa50b2', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-08 07:33:28', '2020-08-08 07:33:28', '2021-08-08 07:33:28'),
('5a77fef8632c8c2b0dbd00b71840e29a84b0f435f8ff9435f4cbe970f110bccded7fcd82919b2caf', NULL, 1, NULL, '[]', 0, '2020-07-11 11:11:25', '2020-07-11 11:11:25', '2021-07-11 11:11:25'),
('5a7cd430757da680df92a6aadfa51f226c916ade29449c22c72f4cb1a6cf0cdcafcefd7046dfc357', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:21:53', '2022-03-23 06:21:53', '2023-03-23 11:51:53'),
('5aed036a4e30142766fd59e32814aeb5c629b7d119e6ba561b75ad6043cb4fb03a4912656f5e5e6b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:44:37', '2022-03-23 06:44:37', '2023-03-23 12:14:37'),
('5b1861e50800c39318166a38eb58f28a1f4e5fdaef1e443c3c24af177641f89718cde1d19bc6a0d7', NULL, 1, NULL, '[]', 0, '2020-03-30 07:08:39', '2020-03-30 07:08:39', '2021-03-30 07:08:39'),
('5b52146b4430713cd59d09e86413dcd4d967b09517b6c99714d22009b85f4584bdd4e7a4c9fe7f91', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 02:01:13', '2022-03-26 02:01:13', '2023-03-26 07:31:13'),
('5c72fb9d24c36d107160b7fd4c47f5dc82f62808e87163546a0758c868f2573cfc6a4bfad35baf7e', NULL, 1, NULL, '[]', 0, '2020-07-13 14:43:26', '2020-07-13 14:43:26', '2021-07-13 14:43:26'),
('5d47c62839a84574ac7169c0b245d2ea1285cd31243613cc400ad8e625aabc3db0a8c81f34dc6ce2', NULL, 1, NULL, '[]', 0, '2020-05-25 06:46:03', '2020-05-25 06:46:03', '2021-05-25 06:46:03'),
('5d58b44c404584691bda725cc1ea3f7c041c20caff93ef1c109b2d7a486b5b642375a3e49f3cba29', NULL, 1, NULL, '[]', 0, '2020-07-24 06:53:30', '2020-07-24 06:53:30', '2021-07-24 06:53:30'),
('5d96589ac48ebb1a13b9beadb4e5c63aaa332ff502e734d20568769997ef4de26a6bf4366a773b57', NULL, 1, NULL, '[]', 0, '2020-07-06 11:26:47', '2020-07-06 11:26:47', '2021-07-06 11:26:47'),
('5db4dcfeb7c86363b207fb24c57588177d1cda88323d585ef8811bde3af5cc6bae93811c074ee0e4', NULL, 1, NULL, '[]', 0, '2020-04-04 04:25:19', '2020-04-04 04:25:19', '2021-04-04 04:25:19'),
('5dc935c38145d9a6704455b003057bce370becae3cf6de2b3ab1695cb31ad8e51bfbd2ff9364c488', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:40:21', '2022-03-26 01:40:21', '2023-03-26 07:10:21'),
('5ddbd5b0fc29bebcccf4a98c36a2d16c48424e7757fae48e64965ce47de9956e594eb6a6137602c0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:19:23', '2022-03-23 06:19:23', '2023-03-23 11:49:23'),
('5de48c5ad7684badbd26ab722f04cf04cf1a2e2bbe2799008308ab720148d14b2f0949eee9a8d634', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:56:59', '2022-03-23 04:56:59', '2023-03-23 10:26:59'),
('5debc4c6b8a769e2c1c83c414986e5e33b37997f3e03ad648e1e2a3b5eb013164b5048cf99d76ff5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:41:53', '2022-03-23 06:41:53', '2023-03-23 12:11:53'),
('5e015214bef8301106b62bdc4c1120147c3d3f76739ccbb26abc9516f9bf5056c6adbe3f5cbf253e', NULL, 1, NULL, '[]', 0, '2020-02-06 08:54:39', '2020-02-06 08:54:39', '2021-02-06 08:54:39'),
('5ec4f9f3f73f9f225de008c8253822a2fa6c1322c59b97ac77583eb4304733e4bccc85994c4f4620', NULL, 1, NULL, '[]', 0, '2020-08-14 13:02:39', '2020-08-14 13:02:39', '2021-08-14 13:02:39'),
('5ed775332a38e9cd81ee18e8439b2462d2a3b1da7fc66a4de9cb65b6a15205efbccb6cdb2675413e', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:09', '2020-08-14 12:47:09', '2021-08-14 12:47:09'),
('5f9bf54c12d8379628514e87f179b4e1f8e89c589acb307c9a2606b3273b38fd78ad0d93d7034653', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:15:05', '2022-03-23 06:15:05', '2023-03-23 11:45:05'),
('5fef8af0c94e2038ee77590a2a0031d9a1a1a7e9bb3424b556affa026b1f4b37ee758a9a6e744990', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-14 23:23:42', '2022-03-14 23:23:42', '2023-03-15 04:53:42'),
('6040686a6bbdfbd8c2e99757d3a9acda348a49981f708f94c264cab94e522d0fb3e66875596ecce1', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:34', '2020-08-14 12:47:34', '2021-08-14 12:47:34'),
('609a4b352761be09353d90ce184323eee57aa4fb7d1e2968de3cc938e8c3567b7271d0d469eb7372', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:50:30', '2022-03-23 04:50:30', '2023-03-23 10:20:30'),
('60c4bd684150e1fad1d9d40dce32aa1af04f7d22a34e782f03e9a29c3e09c15244a941e06479d4b4', NULL, 1, NULL, '[]', 0, '2020-04-11 04:52:16', '2020-04-11 04:52:16', '2021-04-11 04:52:16'),
('611fb7cd127f02c2a307236f96d502efa17b5360eba5322ad8e7b91642d4753cd440dc21e84cadcf', NULL, 1, NULL, '[]', 0, '2020-06-01 05:29:20', '2020-06-01 05:29:20', '2021-06-01 05:29:20'),
('6186ff535424865bb24d6835e6a6ab3d760fff409b79d81d6fa6154cdabcba546f7eddd2484c2632', NULL, 1, NULL, '[]', 0, '2020-05-23 16:43:01', '2020-05-23 16:43:01', '2021-05-23 16:43:01'),
('61e14d6d9a1a010ca46f9fd05635714733364bfb2cc32fd19e83930e21bd32f81a0dc765a00eab1f', NULL, 1, NULL, '[]', 0, '2020-04-08 14:16:43', '2020-04-08 14:16:43', '2021-04-08 14:16:43'),
('628eca21807fd0a0d0c628ff8d3d96e619c53b8fe585f6d4aeff0d23e4d0c6ee12848b0957282218', NULL, 1, NULL, '[]', 0, '2020-06-09 13:04:09', '2020-06-09 13:04:09', '2021-06-09 13:04:09'),
('636ad4b38ad39bd929fbffe3871466781cb0847a71508c1ba06448baa3b2fa0e8a065bd83f5d3534', NULL, 11, NULL, '[]', 0, '2022-03-15 05:27:58', '2022-03-15 05:27:58', '2023-03-15 10:57:58'),
('63c20a521403b72eee1198a97b6ea04890188097ab1ce9f2fdcea225c92d1308287fa64cb0e97be1', NULL, 5, NULL, '[]', 0, '2020-10-23 13:33:08', '2020-10-23 13:33:08', '2021-10-23 13:33:08'),
('63fe3cc14969178bee46fefa6297f474138141b9d1b5660d2d9021a3ebda4bc31d48adef9ad08d00', NULL, 1, NULL, '[]', 0, '2020-03-19 05:24:59', '2020-03-19 05:24:59', '2021-03-19 05:24:59'),
('63fe6f9f20172d71c0f21274f27b628ae0e9acddbeb226f02bd935410af10b11cbad3be1c9f16b27', NULL, 1, NULL, '[]', 0, '2020-06-09 13:16:40', '2020-06-09 13:16:40', '2021-06-09 13:16:40'),
('6584806879422e11163411f1c263ad32c265c3cd45cf37ae2528b5ce5ba76490d445992629c926de', NULL, 1, NULL, '[]', 0, '2020-07-06 11:25:59', '2020-07-06 11:25:59', '2021-07-06 11:25:59'),
('66b5c145a72b046441e3afd8c9580f4768f8ecdc886d4b42f5a9d7f042af245b52f662292d506d4f', NULL, 1, NULL, '[]', 0, '2020-08-08 10:17:35', '2020-08-08 10:17:35', '2021-08-08 10:17:35'),
('66ea9940ae97e45c2167c8c53b2cd2cb774396a06277a8d829456d2ad53d2cdc6a556f5263a687a5', NULL, 1, NULL, '[]', 0, '2020-02-12 11:18:20', '2020-02-12 11:18:20', '2021-02-12 11:18:20'),
('683e86df4cf4a5d50c9a6eefd00dc626146f7bde8042244efbcdf2f9bd612cac4bb4e29b93ac7a07', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:56:51', '2022-03-23 06:56:51', '2023-03-23 12:26:51'),
('685ac9c1b009fbc7797e9d229ffdfe2502c434bc162a8455e8f6ed6e7cd5cd52a05c5ee9f68c2605', NULL, 1, NULL, '[]', 0, '2020-04-06 11:59:19', '2020-04-06 11:59:19', '2021-04-06 11:59:19'),
('689e0a3d2ed0df768f4a80a8da8f7f8c4503b9566bdfa770646351b336881fb596b5f1ff12dde9b8', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:31:19', '2022-03-26 01:31:19', '2023-03-26 07:01:19'),
('68feff54c932208bc694ad90deb7e38a9e3af508d767a137ceb3c15fc0cf14b81ac60e06187b6b8c', NULL, 1, NULL, '[]', 0, '2020-07-25 10:44:37', '2020-07-25 10:44:37', '2021-07-25 10:44:37'),
('692927c5619d4486997451490a88269678762ba9c3ba41c05ce6e9f5b59cbdceda14e13883a6c396', NULL, 1, NULL, '[]', 0, '2020-07-06 11:11:56', '2020-07-06 11:11:56', '2021-07-06 11:11:56'),
('69c81768c58c23ab9845f7985d1f273438b3168b94f55364da338abfa62d39801f39664146737ff0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:55:20', '2022-03-23 05:55:20', '2023-03-23 11:25:20'),
('6a2461442b7f4810754801e9a87d621a9db7bd5e73ea3a88a86896f621d9f5704f14f7c1d1bef89f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:30:37', '2022-03-23 05:30:37', '2023-03-23 11:00:37'),
('6a914f93813aaeb5c88258f8054f93ea57151752eafd09db9ec718108d2f5e5c698f7e410c62690a', NULL, 1, NULL, '[]', 0, '2020-05-30 11:04:17', '2020-05-30 11:04:17', '2021-05-30 11:04:17'),
('6a99ef3a266283f62d4d04a6418437b1e448f333fb542d32612df0f989c7fbc94cbe22b069aabefa', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:02:44', '2022-03-23 07:02:44', '2023-03-23 12:32:44'),
('6af9889b15cce704fcfbf2fdb193d2a49629a327ab59ac437a7a476a0ff8d6adc8862a25c872d598', NULL, 1, NULL, '[]', 0, '2020-02-19 11:51:31', '2020-02-19 11:51:31', '2021-02-19 11:51:31'),
('6b1a0395d6aecba136218a3020096861fca35a46589ec8364f88938273c84dc16c36cc92d4aedc77', NULL, 11, NULL, '[]', 0, '2022-03-15 05:41:07', '2022-03-15 05:41:07', '2023-03-15 11:11:07');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6b3f1c95cc3a8a47577052568b8853a4ac2f8aacc002cbc4eb845ac3bb148b18466154927a0902ed', NULL, 5, NULL, '[]', 0, '2020-10-15 04:50:59', '2020-10-15 04:50:59', '2021-10-15 04:50:59'),
('6c46c7c4bd2b4b2791ca945eef23827ad7d2a4339ceee891fc6b7317369634a8988e67020462a690', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:31:25', '2022-03-23 06:31:25', '2023-03-23 12:01:25'),
('6cf7455a52c83daf24ec4d0fb7b56c0ae86e8cdc93d645aa09a36de927148dfa6e8951c9587fc307', NULL, 1, NULL, '[]', 0, '2020-06-24 08:44:07', '2020-06-24 08:44:07', '2021-06-24 08:44:07'),
('6d2ba7bf314aa2fd6319c92cc108e1c2307d3d65304d89bff7e05d7bf45457b173f9061d88f106a1', NULL, 7, NULL, '[]', 0, '2021-03-20 04:43:11', '2021-03-20 04:43:11', '2022-03-20 10:13:11'),
('6d2c93af55cdef344383231e388bd5bfa1878c3b77f64ba9031167d732ba5b7409768519333600b3', NULL, 1, NULL, '[]', 0, '2020-05-30 11:34:04', '2020-05-30 11:34:04', '2021-05-30 11:34:04'),
('6db6fb163621c059e5f3036eaf4664fe81a05953d8a7a6c8f2ecade2a805c4818ce14d75fe893a37', NULL, 1, NULL, '[]', 0, '2020-07-13 14:44:27', '2020-07-13 14:44:27', '2021-07-13 14:44:27'),
('6dc15c0e67e4092d0a9df6b81595b9dac5ba519e98ac76d7c7260582acf2da72830ed195e096463d', NULL, 1, NULL, '[]', 0, '2020-06-19 11:51:26', '2020-06-19 11:51:26', '2021-06-19 11:51:26'),
('6dff926cf2d898291bd2d90f3e025be151f07fc00e7ecc1feccb2728b54e88ae6371767270d3f3f6', NULL, 1, NULL, '[]', 0, '2020-02-08 07:30:52', '2020-02-08 07:30:52', '2021-02-08 07:30:52'),
('6e0e0e579ecc1a59f9008bf694de682aa3b507c14f22b75148413f3d429d9a6f7675deba3c421cd8', NULL, 1, NULL, '[]', 0, '2020-02-19 12:02:49', '2020-02-19 12:02:49', '2021-02-19 12:02:49'),
('6eba48a2e4a03edf899397a435cc82dd02020421e26fa1d8b539c3dc3a551c613f6824c9d1e4e35b', NULL, 1, NULL, '[]', 0, '2020-04-10 10:57:07', '2020-04-10 10:57:07', '2021-04-10 10:57:07'),
('6fc281be93f43825cc56868b42bcabc2d291588cb64090d0c6f599273ba6c4f7a727e3f6ec616d69', NULL, 1, NULL, '[]', 0, '2020-05-23 13:12:53', '2020-05-23 13:12:53', '2021-05-23 13:12:53'),
('7088176904b9080ce1af47c57c105eadd7f81b8713fdd0ff1a10a683de8ed90fb815d7f7e75b5805', NULL, 1, NULL, '[]', 0, '2020-06-01 05:23:58', '2020-06-01 05:23:58', '2021-06-01 05:23:58'),
('708ab859739c468b1849ba707b8a4dfbe63d104dcca9767964f9f73fe47cf318a9da4656ae3233bb', NULL, 1, NULL, '[]', 0, '2020-07-13 14:40:49', '2020-07-13 14:40:49', '2021-07-13 14:40:49'),
('70f873fcc19a5c56f600d7a4d22dceeab893be6119f6395d2f1dfa706ad97fdbd4f43aef4171b44d', NULL, 1, NULL, '[]', 0, '2020-07-06 11:14:52', '2020-07-06 11:14:52', '2021-07-06 11:14:52'),
('713e34ba86a712b8c5e402fbc1639a40cbf091ab6920b3969efd0d369e772031be8249d62a935017', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:24:58', '2022-03-23 07:24:58', '2023-03-23 12:54:58'),
('714d297e99418e7d56824c833c8e42e767295d362b662f037cd1fe948e6c8c42e23420cb0a1ccb80', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:36:20', '2022-03-23 07:36:20', '2023-03-23 13:06:20'),
('71e599acae2bd7c8f91092591b9ef3733513662e99659709af18d33a174d79bdade8c49cb6a8fdfb', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:07:41', '2022-03-23 06:07:41', '2023-03-23 11:37:41'),
('721b82190bcee0c963c8156d2967f310c0719be509b678872fe661df26efd1c1d78eee8e4a98befc', NULL, 1, NULL, '[]', 0, '2020-08-14 13:04:14', '2020-08-14 13:04:14', '2021-08-14 13:04:14'),
('723a5482b1f37cdc728f167b2c0cc6d8fd60f7fbb2bca7778ae8476ce3340b44573d81c902cb027d', NULL, 1, NULL, '[]', 0, '2020-05-23 16:13:01', '2020-05-23 16:13:01', '2021-05-23 16:13:01'),
('72a2def1fc4a0fd83e4f2caf4e19b0a5532b332adb2fb797f2e283d74d108d702c749e89dd7ab89d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:55:39', '2022-03-23 06:55:39', '2023-03-23 12:25:39'),
('72e75230118d2e4b6e4cb4490699a2cfcc24597d01277a7bd6e623cb0b0fafb118c1d99f4f39f7da', NULL, 1, NULL, '[]', 0, '2020-04-08 14:37:28', '2020-04-08 14:37:28', '2021-04-08 14:37:28'),
('72ff459b14a495d579abb8a125cb17a1c6cb4a72ea9e5d7e3116b76a2d905a7ac4748d5d61ed1d82', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:18:38', '2022-03-23 05:18:38', '2023-03-23 10:48:38'),
('73b12094f03e49a26612d220fa2323610b69a9de8a28eba470fdb041ba590cb1f7a1a5dace9af5e2', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:51:48', '2022-03-23 05:51:48', '2023-03-23 11:21:48'),
('73ebea520031f613e4c033d7e0cd881f398a99bd68a5a2ac6c4b894170448eacce702569a19fdc3a', NULL, 1, NULL, '[]', 0, '2020-05-23 12:20:29', '2020-05-23 12:20:29', '2021-05-23 12:20:29'),
('765afb6a5527186a4b87fa85abc88249f8abc670c07ea752c0d9a3c0c55a795046a405c389d3fb42', NULL, 1, NULL, '[]', 0, '2020-03-30 07:18:34', '2020-03-30 07:18:34', '2021-03-30 07:18:34'),
('765badb4e0e45682e7d3b37f4ffb3b790bf1a8aacd0615420f5b6b9b64f1ec2d8aa9276838f45a1c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:13:14', '2022-03-23 07:13:14', '2023-03-23 12:43:14'),
('766db9b6a3ee26a84ee84f65bef1d5147fe2bcf14e60a6a968a1e757698e2282d5ab0cdb42ffcb1f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:39:51', '2022-03-23 04:39:51', '2023-03-23 10:09:51'),
('7671e80c0f793b8acad97260b11755ed8cb636d4d518e7e8f2fedf41351c5ff1905743a0aded6fad', NULL, 1, NULL, '[]', 0, '2020-04-02 09:47:58', '2020-04-02 09:47:58', '2021-04-02 09:47:58'),
('77439011c26f5919402bf69a3de08848da34233d60b45d54f8bfcf1ee31d44041e58fc777a7a63b2', NULL, 1, NULL, '[]', 0, '2020-05-23 16:43:36', '2020-05-23 16:43:36', '2021-05-23 16:43:36'),
('7767689aa025da6c2e4b074dbb13168bf920a87a2ab7880d6c697231e935675fe55496a93d09cb99', NULL, 1, NULL, '[]', 0, '2020-04-13 10:56:26', '2020-04-13 10:56:26', '2021-04-13 10:56:26'),
('77fb9738bf1741e610ccf907cb0f077651a6300533a9eb35fcc84a271b4445d88529d5de17730806', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:10:24', '2022-03-23 06:10:24', '2023-03-23 11:40:24'),
('7804d66a513a7d71144ff2c1dbfd7a563271270eb13543ba2f1bfb0a6691f64eb62ee490c00bc9b7', NULL, 5, NULL, '[]', 0, '2020-10-10 12:29:44', '2020-10-10 12:29:44', '2021-10-10 12:29:44'),
('7864956afda05bf1daa856e058e6f94703d26b32c036d58a939e569ae3d9b6a210234ebafd4d67d5', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:51:13', '2022-03-26 01:51:13', '2023-03-26 07:21:13'),
('790092a7dfcffd60b4d4b3a223b8f4fa7b77ea91e0f11e2a24a56b0796235c39607acd598f2c0e01', NULL, 1, NULL, '[]', 0, '2020-07-06 11:06:44', '2020-07-06 11:06:44', '2021-07-06 11:06:44'),
('7963e97455b1527a60836437e6fe6ca64e5b2bead5afdd0f523d820279d188897997f555fd92504c', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:35:01', '2022-03-26 01:35:01', '2023-03-26 07:05:01'),
('79c11787b564568d707f032429f28654a4c0ae88d556faf2044a5463c059d87140425e66ba923d33', NULL, 1, NULL, '[]', 0, '2020-06-19 11:51:05', '2020-06-19 11:51:05', '2021-06-19 11:51:05'),
('7a2379b66fb9faec6e4343ba78c8a8f5cc5536764ce3abe298a9a0add66a269770af5da58b9976bf', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:51', '2020-07-17 16:53:51', '2021-07-17 16:53:51'),
('7a31d40784b05f8e32a779b33429d26e51420daf7066658147a5224e29afec84d0955ce4a6835940', NULL, 1, NULL, '[]', 0, '2020-07-29 12:05:56', '2020-07-29 12:05:56', '2021-07-29 12:05:56'),
('7a5bab8fe1071be16de8966478adc321df565666d4ddae06de9341ba3c0d7b1a9a0d4c5931fe33d4', NULL, 1, NULL, '[]', 0, '2020-07-20 08:03:26', '2020-07-20 08:03:26', '2021-07-20 08:03:26'),
('7a79fa3da5827a86e93d606fa7c97319c8d190a73b155defd750db46df16a8993b08cf90bac38146', NULL, 1, NULL, '[]', 0, '2020-11-03 12:04:20', '2020-11-03 12:04:20', '2021-11-03 12:04:20'),
('7a7e156faf534bf07d4daa93580d158e8051ff2dd74cf03b2a9c511b20092017021396030c550e9e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:16:06', '2022-03-23 07:16:06', '2023-03-23 12:46:06'),
('7baed7aeba6a8d9d93d299a0961ea82656e9b5994154104b5d4dd9cabd40557e4a5ff0f2cfe80737', NULL, 1, NULL, '[]', 0, '2020-07-10 18:18:07', '2020-07-10 18:18:07', '2021-07-10 18:18:07'),
('7c44a3fd3cfd91e7db9212bad911ee89a87bba151a5b28e9afaabc5ec7f20a8e26dd1dc6a53275cb', NULL, 1, NULL, '[]', 0, '2020-06-09 09:40:43', '2020-06-09 09:40:43', '2021-06-09 09:40:43'),
('7c8e0cf2f7ec01e0406bec3ab1a55ae7eca8e8e3f179d43acf716554e566c1ad5bfd09de7c8d0ccd', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:21:09', '2022-03-23 07:21:09', '2023-03-23 12:51:09'),
('7cdb0c6a59afad59b42d80e47b160660490f805cdd0ac36452256576d0a4638e9f993bb1b8b3a3b4', NULL, 1, NULL, '[]', 0, '2020-06-20 07:57:14', '2020-06-20 07:57:14', '2021-06-20 07:57:14'),
('7d261510a18211f8c26e073ab1e607a194e0b7f3690188c3bb7c0c413b7e25ca103388ad95e6feb1', NULL, 1, NULL, '[]', 0, '2020-06-20 08:02:36', '2020-06-20 08:02:36', '2021-06-20 08:02:36'),
('7dcd8224d3e5813fe703d69513ea0227e47968e27bbe30d4438c141ab386554c8eca0fed623f98ca', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:37:56', '2022-03-26 01:37:56', '2023-03-26 07:07:56'),
('7e25a492f70d884b3a65c4e77031740d824ca2164eea9fbd6693b923da0058dce5a040216bfdec56', NULL, 1, NULL, '[]', 0, '2020-04-06 10:55:09', '2020-04-06 10:55:09', '2021-04-06 10:55:09'),
('7f25540313a49d703659ee4969d8565c580934b28f7c1625bc98185eb3ea7cee6b0a67c1df84d9d7', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:00:44', '2022-03-23 05:00:44', '2023-03-23 10:30:44'),
('7fa192a55dbcbcb4b6afd0cb9547b8bb6faead2df2447f42efab30bba28067be16db63e20c6fb0d1', NULL, 1, NULL, '[]', 0, '2020-07-07 06:58:52', '2020-07-07 06:58:52', '2021-07-07 06:58:52'),
('7fc1ce8235d9b83d46b3a054882fb9f57f8482cd8ec7ba4763cdc85e9e450a306d60b988e3e86195', NULL, 5, NULL, '[]', 0, '2020-10-07 15:07:05', '2020-10-07 15:07:05', '2021-10-07 15:07:05'),
('7fd2016dacb2a6d6f7bcd6cc5c58246f559a4fbc377c58a86d7b777dfff752cd7aa8cd8ef44e331e', NULL, 1, NULL, '[]', 0, '2020-07-21 13:42:03', '2020-07-21 13:42:03', '2021-07-21 13:42:03'),
('811b13371e95a16c43ee0f6c8efd26d59cc38894095a0e8d1740ce695018ba4323daf43c51873456', NULL, 1, NULL, '[]', 0, '2020-12-04 10:41:49', '2020-12-04 10:41:49', '2021-12-04 10:41:49'),
('81aa259976dec2696289d145d123002a87e1e3071a14f0f2558e3af60549e5c5841ea36043467750', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:47:02', '2022-03-23 06:47:02', '2023-03-23 12:17:02'),
('8203eede4632bc06a10d4817abfecaa2692fe75ebe006edc89595e0ca985e5674deffdb83c788e83', NULL, 1, NULL, '[]', 0, '2020-04-13 10:56:22', '2020-04-13 10:56:22', '2021-04-13 10:56:22'),
('8210ea5a36a292a052cfce6c3e929123465af0d0385a7ada83f28117560899cc8e9afbe81eb41ab9', NULL, 1, NULL, '[]', 0, '2020-03-30 05:36:43', '2020-03-30 05:36:43', '2021-03-30 05:36:43'),
('8215710c3eb53eaf6b685ccc12a664c6eeb86da8f35b9c544a55823a0dcf1ce968607958ecf642de', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:36:51', '2022-03-23 04:36:51', '2023-03-23 10:06:51'),
('824ae29a5cf42c987b5749b4d1ef2f7ea1e157b0a5e95e0424df72feecb930d97456d0bf80e2b46f', NULL, 1, NULL, '[]', 0, '2020-06-11 09:35:48', '2020-06-11 09:35:48', '2021-06-11 09:35:48'),
('82850ca8e2d5cf3cfc75dd06a47cccae12d59b365b3fc47804a8ac0d242cd35fe9c61afe4af02065', 8, 3, 'h_user_api_token', '[]', 0, '2020-07-29 14:51:30', '2020-07-29 14:51:30', '2021-07-29 14:51:30'),
('83407e4f1500cf0f2b47c4524d6ac16e2a09913e90da3879d4af5680d405e7ed1130de9046731f43', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:31:49', '2022-03-23 05:31:49', '2023-03-23 11:01:49'),
('8391e1ee0747fced3580560cb109a2074c2e4601eaf6d15ff35fd1a7f466da30852a4c5e260965ec', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 03:41:51', '2022-03-23 03:41:51', '2023-03-23 09:11:51'),
('83bb14ba44a34dceab084702433b15630a40a773fd98e69ff33693de74fe5246e18e3889e73020f6', NULL, 1, NULL, '[]', 0, '2020-04-08 14:30:08', '2020-04-08 14:30:08', '2021-04-08 14:30:08'),
('83c9ba17cd0d504d3fcce0dc574f26724393eef583bb721af33286b5d09359022a9ad0a695a57f78', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:59:03', '2022-03-23 06:59:03', '2023-03-23 12:29:03'),
('83e38cc5ca90e4da0520d979f45f59c9a4264c440b521f842947785b0c2c08bcea21c417e86c059e', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:53:43', '2022-03-26 01:53:43', '2023-03-26 07:23:43'),
('849b940ff801de03260202972a3b44ef4298d1582ba7752f3d6ac770624f0cc6808fcba24cab6ecf', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:10:42', '2022-03-23 07:10:42', '2023-03-23 12:40:42'),
('84aea4b92b03253199aefc482771f6ff171a0167971b69240a580ab8b8e2a7aca0d374d77e571d52', NULL, 1, NULL, '[]', 0, '2020-07-21 13:28:14', '2020-07-21 13:28:14', '2021-07-21 13:28:14'),
('8531438944929d351584c441bd80eb4ca0593824000428dc5990bb6015bcaf22b44cd8426b230f00', NULL, 1, NULL, '[]', 0, '2020-11-03 06:44:33', '2020-11-03 06:44:33', '2021-11-03 06:44:33'),
('866120619ec210842ad9da597ed0d202be726c647c87632211b47ea734531a09446e3ef08cc6244d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:58:49', '2022-03-23 05:58:49', '2023-03-23 11:28:49'),
('8690910c7a15a50893cff0bf7c74c0d9a53877fef2e6ddb9d839f459b58cf977d5eecf790b94e4d6', NULL, 1, NULL, '[]', 0, '2020-11-03 06:44:40', '2020-11-03 06:44:40', '2021-11-03 06:44:40'),
('86b15ef9c677fde99efaa3ae623d025af0e4ce9972c901a37ead4e65ce8ad955d0cee6bbf9f63edd', NULL, 1, NULL, '[]', 0, '2020-01-29 15:33:04', '2020-01-29 15:33:04', '2021-01-29 15:33:04'),
('8765f3322edd251d6eea61707a65660f75b40a86e4d9fc8161cc59bfbc9643a8e9c724406d10a821', NULL, 1, NULL, '[]', 0, '2020-07-29 12:05:44', '2020-07-29 12:05:44', '2021-07-29 12:05:44'),
('87cdee029bae63854617d5820db80d24d2c67fc6aa8288727eb7a3b14a3eece2be7e1649cd506261', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:57:55', '2022-03-23 05:57:55', '2023-03-23 11:27:55'),
('8805cab31329154b0b8a03b2d8388553bb0ff837956e3bcf69ba714f180d38d22a696a9927d4457e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:40:48', '2022-03-23 05:40:48', '2023-03-23 11:10:48'),
('880cd3f5562e7e18be17eb78884fd2ec571e8e5952f3db2c158c61097a7a71d589210a9e357bbda4', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 03:08:10', '2022-03-26 03:08:10', '2023-03-26 08:38:10'),
('88ac115b255348840807bda71beb661a98e6045a45fd015a621eaec78070f6703d30346bfa7c7572', NULL, 5, NULL, '[]', 0, '2020-10-13 13:10:44', '2020-10-13 13:10:44', '2021-10-13 13:10:44'),
('890735cf5cd344644fb71da24cac6d713edc4bd3016cfabfce1b452337d8d9dbcac8bce9ac3648f6', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:57:42', '2022-03-23 06:57:42', '2023-03-23 12:27:42'),
('89cf8ce2cd86b2314d2fa2888950c816860cf7f93fab4aa42b60d4ffd6afcff69a63adfc8b81a1af', NULL, 1, NULL, '[]', 0, '2020-04-10 11:18:41', '2020-04-10 11:18:41', '2021-04-10 11:18:41'),
('89fd202b3ea982687330f51844dbb803c9b809a6f8093a87a9b9b9794b7c4817de25dd83672bf5cd', NULL, 1, NULL, '[]', 0, '2020-06-19 12:03:48', '2020-06-19 12:03:48', '2021-06-19 12:03:48'),
('8a19b1905ca7c725bae54248634a657ec4a13e75d0323843e41922dc9c851fab3bfda682c1f793a1', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:09:34', '2022-03-23 06:09:34', '2023-03-23 11:39:34'),
('8a5c611b5ae743819d52b452a558832e52fd7ce78ffc5f8467cb8978d4b3f37624b58a90b46eb293', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:43:43', '2022-03-23 06:43:43', '2023-03-23 12:13:43'),
('8af58a892ec05451cbe0956a53c4c7d48b919d074c77ed1fcd6e4bfab271ebb5b10dc9a976770429', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:13', '2020-08-14 12:47:13', '2021-08-14 12:47:13'),
('8b34170f0d0cf22c4274d6f70431576e30b5a49e9598dcc7b4d513b4209da361653b97627242bc1e', NULL, 1, NULL, '[]', 0, '2020-05-23 12:24:54', '2020-05-23 12:24:54', '2021-05-23 12:24:54'),
('8b813b1d685dfa33601453948870729da0bcfcc5566910dd40a217e469447280e609e78e57866d4c', NULL, 7, NULL, '[]', 0, '2021-05-13 00:37:23', '2021-05-13 00:37:23', '2022-05-13 06:07:23'),
('8b9da0b2d6434d2a1c449d99224bc7fbf07b3b7d8d184083e1a2700331a77a1acb3a44a8a6cd0ad3', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 01:55:34', '2022-03-15 01:55:34', '2023-03-15 07:25:34'),
('8bac0b2f95044d5c03b0e14f96382bcb9460763a5ba41045ead4c6664e12298ccd6a8782fa7729b6', NULL, 1, NULL, '[]', 0, '2020-08-14 12:55:05', '2020-08-14 12:55:05', '2021-08-14 12:55:05'),
('8c28d0be5867dcc1debd92e9c8b68e41b702a9fa0c2580fb353051c618d39f713f3d52c0440d493b', NULL, 1, NULL, '[]', 0, '2020-07-29 14:42:42', '2020-07-29 14:42:42', '2021-07-29 14:42:42'),
('8c303847760d10c2cb294432a88772f8c928e62941efb89f13eb325563bb6d3b388a282866172fb6', NULL, 1, NULL, '[]', 0, '2020-05-30 11:39:03', '2020-05-30 11:39:03', '2021-05-30 11:39:03'),
('8c3ab466c5bda6ade2f48458c4c85f1a8bf11486037c1aec91dbaa5747d8050181b53ff3aed14e1d', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:29', '2020-08-14 12:47:29', '2021-08-14 12:47:29'),
('8c6c5b3a2114237be83f5d0c31d3a322251244305b4c61533a705d4d44f875e65bae4f292cd82cc3', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:59', '2020-08-14 12:40:59', '2021-08-14 12:40:59'),
('8c7fa7d76b9f1d487e26a1ef99533ec06043ce8154369d64d78cf2a839c1cb5f118721ad4338e057', NULL, 1, NULL, '[]', 0, '2020-11-19 13:22:35', '2020-11-19 13:22:35', '2021-11-19 13:22:35'),
('8c959b114804b0577f2c231a26c5cac6915ca86a0841f036220629948bf4b2f9dbf26db73e37426b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:04:47', '2022-03-23 07:04:47', '2023-03-23 12:34:47'),
('8cf8e902a61eb841f46c5ba2c5d63546334d9880b6c934494a12f8bb9b8f126e838841c7ff833be3', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:57:41', '2022-03-23 06:57:41', '2023-03-23 12:27:41'),
('8f16f7724d9317b7f428b5b70ca1dd39b09536ae2022c2042946f817d94ccdef72b7710e09c4d2aa', NULL, 1, NULL, '[]', 0, '2020-07-21 13:29:10', '2020-07-21 13:29:10', '2021-07-21 13:29:10'),
('8f23d41c848f09c519306863e56661ec9043d96b3f5d3f5a13a0987a7240d9a762ae8c992b07d865', NULL, 1, NULL, '[]', 0, '2020-06-01 05:24:45', '2020-06-01 05:24:45', '2021-06-01 05:24:45'),
('8f4fd0ba46c00d36770b39c3051b51cbf9db8b5292c55ab7e76234b9417da7388b8e5aac38d8e396', NULL, 1, NULL, '[]', 0, '2020-02-03 18:05:55', '2020-02-03 18:05:55', '2021-02-03 18:05:55'),
('9019efc626e719715142050d71d6e1ca2d7b141eecd46b301c9f0867f383438246af6b9ca2003faf', NULL, 1, NULL, '[]', 0, '2020-08-14 12:48:59', '2020-08-14 12:48:59', '2021-08-14 12:48:59'),
('90daf0f8f94074ceedc9b38cf9511f6ce1036a5b07fcacb42e6740e881f1c65489edc91712d3baf1', NULL, 1, NULL, '[]', 0, '2020-05-25 06:31:34', '2020-05-25 06:31:34', '2021-05-25 06:31:34'),
('90e97507f41b55991742aa233c495484af8a132154c9eab3aa47cb5d1c933e448a52753d08bf59cc', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:03:51', '2022-03-23 07:03:51', '2023-03-23 12:33:51'),
('910d5729ae3df0fcf7eb2ef86961c5b6def64d53187097d3c7b489f78ac4c6d2a99832161432f658', NULL, 1, NULL, '[]', 0, '2020-05-23 12:41:30', '2020-05-23 12:41:30', '2021-05-23 12:41:30'),
('912a6415fbe788e1aa20170821f9734c426d7f4a88d9b78a37d915440094972322726c3f7566871f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:39:13', '2022-03-23 01:39:13', '2023-03-23 07:09:13'),
('914e3ab39929978494e1e3c631dafa991da4fa11a6063f65856389dcc589517c5ddef49ef4d0719f', NULL, 1, NULL, '[]', 0, '2020-03-30 10:49:56', '2020-03-30 10:49:56', '2021-03-30 10:49:56'),
('91f37896699e2684ab106917e56c948d52bd06e5468a3f963cda6c283b330e6627d5e0f03d8c5eb0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:08:00', '2022-03-15 02:08:00', '2023-03-15 07:38:00'),
('92406a470181992d4c6be0f06d3a007978f7d24639129131ba939e677180c417491a39ac2d18cd71', NULL, 1, NULL, '[]', 0, '2020-07-10 19:52:09', '2020-07-10 19:52:09', '2021-07-10 19:52:09'),
('92e5d80959eb36d186c8eeb12385037289fdde695474a50a4a7af32b7bd66bc96845d3af9a4a17bc', NULL, 5, NULL, '[]', 0, '2020-10-12 13:09:20', '2020-10-12 13:09:20', '2021-10-12 13:09:20'),
('931fef0c032a2b9628c8025df70772cab5605c70d283d3d895452d85e288af6284be403bdb7a261f', NULL, 1, NULL, '[]', 0, '2020-06-20 08:01:13', '2020-06-20 08:01:13', '2021-06-20 08:01:13'),
('93b5da053bd61791112ad9762f5e72ef438c20a00899efcc3176c404c162e27a8970b353ce6d591c', NULL, 1, NULL, '[]', 0, '2020-07-29 12:07:08', '2020-07-29 12:07:08', '2021-07-29 12:07:08'),
('9426a93d79a7300f42d628243e9a9cd5e1d7f329f018350eb0874f9e720d1b5c662a1eb859bee207', NULL, 9, NULL, '[]', 0, '2021-08-05 00:16:04', '2021-08-05 00:16:04', '2022-08-05 05:46:04'),
('9460cb5ce128ae7c1512d3e5fd7daa7bb1c5638b238b580734586dff13e9d5e4d5a91c0a83449f8d', NULL, 1, NULL, '[]', 0, '2020-07-27 06:05:18', '2020-07-27 06:05:18', '2021-07-27 06:05:18'),
('94a266e32d60c167a79d5e01760e738c0868d13a5ec4522ef7bf6cdc22a0aeae3d6c08a2d6ec2c7b', NULL, 1, NULL, '[]', 0, '2020-04-02 09:25:47', '2020-04-02 09:25:47', '2021-04-02 09:25:47'),
('94e186911ab333c81a934c89374366d07f892409ba24f500fdb9f94c70f1ae02fe3d0ba4d2d81fa8', NULL, 1, NULL, '[]', 0, '2020-06-19 11:55:59', '2020-06-19 11:55:59', '2021-06-19 11:55:59'),
('956b8a870604b47f89cf864efb5a672975a67b802fce1a508b64c56997333295c8fa58cce65242cc', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:04:43', '2022-03-23 01:04:43', '2023-03-23 06:34:43'),
('95c95ff7e3355c7b55a0bb3ace27dd1c467d255f017689aa59b13654c2f9e07d2b42d2ef09bc0802', NULL, 1, NULL, '[]', 0, '2020-03-23 05:55:19', '2020-03-23 05:55:19', '2021-03-23 05:55:19'),
('95db8ed0894f83f21d4158878d4d254138ae4acff5879a30c2724eed5da72a414de5550f3191f7c2', NULL, 1, NULL, '[]', 0, '2020-06-01 05:39:08', '2020-06-01 05:39:08', '2021-06-01 05:39:08'),
('96c7fe57965c93985a1639643d3dfa5c77b8fec7132980cd768f9c27c6bdb30af86c67c4cdd01f54', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:21:20', '2022-03-23 01:21:20', '2023-03-23 06:51:20'),
('9790f6721d9978af050bf84b44260b53af18141b2903628e814e3bd1513b2e6f2fda84ca2c4670af', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:42:37', '2022-03-23 06:42:37', '2023-03-23 12:12:37'),
('97b0c57801c02fc34994c945813cd60b32ef46a9e28c1032d5375e1d66c3ede218b6422bf32833ba', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:45:39', '2022-03-26 01:45:39', '2023-03-26 07:15:39'),
('97b636d7f529be58a3670bd77b2b403b04ceb3b2b473b54db91c2bd7c93a26207c8469f1d4fafcc9', NULL, 1, NULL, '[]', 0, '2020-04-13 11:15:05', '2020-04-13 11:15:05', '2021-04-13 11:15:05'),
('97fd788f81024a73e7054944378b938d4cf9bd822119daa4f2afd35bc5499299427ce37464510920', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:08:55', '2022-03-23 07:08:55', '2023-03-23 12:38:55'),
('990d76cd02482ba0197cac0e8450d6b4037bd072157f6229d02ab75975c957fd9f60c92d47c1d3d1', NULL, 1, NULL, '[]', 0, '2020-06-18 04:46:29', '2020-06-18 04:46:29', '2021-06-18 04:46:29'),
('99ab2dff1d935c726f24657aaabbf09634461cc09d4fa3b8bcbc96028b7eeed45f8a216416686be8', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:02:26', '2022-03-23 05:02:26', '2023-03-23 10:32:26'),
('99c104948b9a55a241361f3caa70fbe0d5d3e7a024e8f0ce1224d09442a5fc435567a3d724836c1f', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 02:02:05', '2022-03-26 02:02:05', '2023-03-26 07:32:05'),
('9a604e9102a84855beec864fd008c5c207fd82bbbb8eeda7610465af462c0667d1774db1362c5e50', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:25:42', '2022-03-23 06:25:42', '2023-03-23 11:55:42'),
('9aa1b908981807e151670a594094d7fe1947dad0a90dd4aa00636d75e9c2b4f66095b27af593d366', NULL, 1, NULL, '[]', 0, '2020-04-11 04:45:28', '2020-04-11 04:45:28', '2021-04-11 04:45:28'),
('9acc7630a75572f23426ee8c081165e4c4e16e80711c7a8e488cb9ceef9ddcdb02f93fce64e3c30e', NULL, 1, NULL, '[]', 0, '2020-04-08 14:36:28', '2020-04-08 14:36:28', '2021-04-08 14:36:28'),
('9b5443da27ec425bb9c04e7f0fd44e8e001b2fac8f2b61a01ee452740896b8e6dd530914213fc1bc', NULL, 1, NULL, '[]', 0, '2020-06-01 05:24:36', '2020-06-01 05:24:36', '2021-06-01 05:24:36'),
('9b5b41bdd747e0aad1729595475ecf4d6bfc25a044a8eeb8b2f7741fbd34b2191f85edae9e59a8f1', NULL, 1, NULL, '[]', 0, '2020-04-07 12:56:08', '2020-04-07 12:56:08', '2021-04-07 12:56:08'),
('9b65fd41e605885fdf3274547cd6f3a1b43824fac4ac60c9e09b91b4989d615f6ef077fcc7183cc3', NULL, 11, NULL, '[]', 0, '2022-03-15 05:31:28', '2022-03-15 05:31:28', '2023-03-15 11:01:28'),
('9b8c8a89971f7e6dde0174a5d64ecae65c6e2b327846650b2b5d570ad537f78fe37c83c4ba2fc1db', NULL, 7, NULL, '[]', 0, '2021-03-27 02:27:56', '2021-03-27 02:27:56', '2022-03-27 07:57:56'),
('9bfa50fdc69d49b9056846f4f39d6e3c3d8c9d765e590a2701e0b8979c630b50e1a3c755a80976c3', NULL, 1, NULL, '[]', 0, '2020-01-29 16:22:24', '2020-01-29 16:22:24', '2021-01-29 16:22:24'),
('9bffb0ae304ff88baa74721ddebdc1b6404bdfa38aea66ee991ba796357fb0ec4c624db6126db87b', NULL, 1, NULL, '[]', 0, '2020-06-01 05:25:15', '2020-06-01 05:25:15', '2021-06-01 05:25:15'),
('9c0d36b3b374aea5f65d6c96cb7c2a92a286b82100b78a0805c831796ffa3191f3df5ed029ce5b50', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:24:36', '2022-03-23 06:24:36', '2023-03-23 11:54:36'),
('9c662fd34f3b025056304ea0e0b8d169ca6712d037926a857f82485c30d7c47111b3c667eb07a2b2', NULL, 1, NULL, '[]', 0, '2020-06-29 12:19:25', '2020-06-29 12:19:25', '2021-06-29 12:19:25'),
('9c98616bb36e870e03759c7cd43bf36200cbe12d0e3654204973a9616c5f21b736e92af91a4764b6', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:00:38', '2022-03-23 07:00:38', '2023-03-23 12:30:38'),
('9cef198d766852ae9ac52ed5138db62192805d905f3a1e5f42e9e7171a3d55d08466bf6e5f95836e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:16:01', '2022-03-23 07:16:01', '2023-03-23 12:46:01'),
('9d61da4909e07fa5c7b8ad0e7250286503c24b85630a24e918b588acfa5cad95500dcdf3b6be48d0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:09:11', '2022-03-15 02:09:11', '2023-03-15 07:39:11'),
('9d96fab6847f58c3e4c061e83ff355053aae4b5914e4ec5790e93b3c2a3bfef53140672f330ba2f5', NULL, 1, NULL, '[]', 0, '2020-06-19 12:02:57', '2020-06-19 12:02:57', '2021-06-19 12:02:57'),
('9e44f5e93fe8efddec34ab3e56cf40bfc115c7a87ac9feb1c5647c778d49b31cf4ad89b209e59261', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:52:14', '2022-03-26 01:52:14', '2023-03-26 07:22:14'),
('9fc1021cd24752f462c7c90453f27cc2640f05bcc2105743144fdae6c6547b63667b402c39d2883c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:59:59', '2022-03-23 05:59:59', '2023-03-23 11:29:59'),
('a02abf12ec9a897ba00f8d75f5f250cb4a2843acc60ced39416ae22e7721d261d49b345e0fcabd2e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 01:46:27', '2022-03-15 01:46:27', '2023-03-15 07:16:27'),
('a0fa74dd2979d6bf6d92290bfd16232517535a7f3604de4aa8cbf0797a5235fe24854aee7fd559a1', NULL, 1, NULL, '[]', 0, '2020-06-24 08:42:31', '2020-06-24 08:42:31', '2021-06-24 08:42:31'),
('a10442f9b494700815bdd822983f3199c5c7d6d0395b2fbcc9c375cdc9c42541547b1e86be89e8a6', NULL, 1, NULL, '[]', 0, '2020-11-03 07:55:26', '2020-11-03 07:55:26', '2021-11-03 07:55:26'),
('a17808eca49e4a74a28f8cb0f3874ee6160093d35eec2a2463e19c294e85ab855f5480ee68432280', NULL, 1, NULL, '[]', 0, '2020-05-26 07:29:56', '2020-05-26 07:29:56', '2021-05-26 07:29:56'),
('a19a739f9cf21bbe223ad444cdc99b00bdb2ded5a2f6408d617212ff2e9f7e0d381b43d15f656a0e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:47:34', '2022-03-23 04:47:34', '2023-03-23 10:17:34'),
('a22c047659705e5276cdfb4e40ffe8afd88ab93ef2e5fee6f50da8108baa095e6fcb92b79dc01a8b', NULL, 1, NULL, '[]', 0, '2020-02-19 11:39:18', '2020-02-19 11:39:18', '2021-02-19 11:39:18'),
('a2a1abc7c3c4102801c977ee1eae3bbd03fd94266a0a2035cf202a04382abf8cdf363e855e674fd1', NULL, 1, NULL, '[]', 0, '2020-03-30 05:39:39', '2020-03-30 05:39:39', '2021-03-30 05:39:39'),
('a3c1e23fbde1e7535bb80c458d2a59c7eecd90a9a1d2e97f96b08d3b3fffbeaa05689c3781133a22', NULL, 5, NULL, '[]', 0, '2020-10-06 10:50:19', '2020-10-06 10:50:19', '2021-10-06 10:50:19'),
('a408cc6bce9219a374cf41b68aac64d6a407fe21b5ca0a1ff44d6c9a691f19c6acbb1444fd46ffc7', NULL, 1, NULL, '[]', 0, '2020-04-07 10:52:56', '2020-04-07 10:52:56', '2021-04-07 10:52:56'),
('a4568508a913d2e66fd89fc0d718cb1630bc651a3ed65fe085eb6a27555ec9b8a8b02cc47c19779f', NULL, 1, NULL, '[]', 0, '2020-04-06 10:57:20', '2020-04-06 10:57:20', '2021-04-06 10:57:20'),
('a461caa2e824ec0e1176c11a8756ea7a89398a9fb881e0061062b53b1d584958e0038a6fef15d4be', NULL, 1, NULL, '[]', 0, '2020-02-03 18:08:23', '2020-02-03 18:08:23', '2021-02-03 18:08:23'),
('a4b5a2464acb1dcd3dcd86f0133988fc45e2a46392f1f50621877f6ed28f05fd3425d3a204ea860b', NULL, 1, NULL, '[]', 0, '2020-07-06 11:16:49', '2020-07-06 11:16:49', '2021-07-06 11:16:49'),
('a4e42493ce7af0bcb9299ba8b15222626f97ec77de3cd5f62f21f4c0997c9700d696480337cc1a4a', NULL, 1, NULL, '[]', 0, '2020-04-08 14:18:41', '2020-04-08 14:18:41', '2021-04-08 14:18:41'),
('a6741b18ecb0d0b18805f08ee00a8fb724c3e023616cc7abda4d43fe578273db2883aa71f2c79b8f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:42:24', '2022-03-23 04:42:24', '2023-03-23 10:12:24'),
('a690eaecb4f11f28cbbc8a046bfb3aded9a6a7cd271d2dac9a3556d179187f7792fd8e9fb4dde447', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:16:10', '2022-03-23 06:16:10', '2023-03-23 11:46:10'),
('a6a86a29f2b513112bf30d80fe93f32ce68c5f075bb04282065cf46aa63df9a249a19db723d9ebf8', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-08 10:56:47', '2020-08-08 10:56:47', '2021-08-08 10:56:47'),
('a706daaba16f33d2c38dae02ac036219e69b5181244e3bc541f902771dc07e79eb46dcbd40e85ea7', 13, 7, 'h_user_api_token', '[]', 0, '2021-05-18 23:54:45', '2021-05-18 23:54:45', '2022-05-19 05:24:45'),
('a7a6f7c0b071c4c19b43f578d0319aaebdb707f2ce7445b092450a074460a30c11283da1605252ca', NULL, 1, NULL, '[]', 0, '2020-06-19 11:57:02', '2020-06-19 11:57:02', '2021-06-19 11:57:02'),
('a7aa08e31084cae67fc9ba564556485a48f241027061fbff2ca57b6e026d9e27f350432324833c8b', NULL, 1, NULL, '[]', 0, '2020-03-20 10:18:27', '2020-03-20 10:18:27', '2021-03-20 10:18:27'),
('a7baf3fffc8d15670b7c16a9e5db9ffba2e8aa104e0a6ffb4708bbb6d6d59d49fd3d284c1a28e9bd', NULL, 1, NULL, '[]', 0, '2020-03-19 10:23:14', '2020-03-19 10:23:14', '2021-03-19 10:23:14'),
('a8317944bc0b81d11f077962cd84aabb8e62c830ca2542c2e9924c61d6140810030422e3a4e199e8', NULL, 1, NULL, '[]', 0, '2020-07-29 12:06:20', '2020-07-29 12:06:20', '2021-07-29 12:06:20'),
('a85c709c4fa0105b66d2e09358df22706e11090514c1927382c85591a976c91562cb1306e199fa5d', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:22', '2020-07-13 15:05:22', '2021-07-13 15:05:22'),
('a887d400950b7d149e37cf897732b9ff4a55c2cc3a36437ddda0732488061b70e2ab2370789e9dff', NULL, 1, NULL, '[]', 0, '2020-07-06 11:34:15', '2020-07-06 11:34:15', '2021-07-06 11:34:15'),
('a88883bd46c44845e87131d8c590a9b4e57cc2df3f9b38269117ad2d6f28693eafd79f2901dcff05', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:11:37', '2022-03-23 06:11:37', '2023-03-23 11:41:37'),
('a8ccd3739d165a024b6eb422060f269579dd5a3adc5c547de88d0def5a9afd5132a731089a89f6a7', NULL, 1, NULL, '[]', 0, '2020-07-21 13:41:05', '2020-07-21 13:41:05', '2021-07-21 13:41:05'),
('a90e3b7651cb5d83efed4fb84e0a5f2a29d1066807c8954eb0172d3be1f788fd941398d10a9b8d51', NULL, 1, NULL, '[]', 0, '2020-04-08 14:36:34', '2020-04-08 14:36:34', '2021-04-08 14:36:34'),
('a96588301f8460f2c362db7ba551dc6274fc33fccfff58d3537cae59e36d1878b7fbb2b4a37e7090', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 00:47:18', '2022-03-23 00:47:18', '2023-03-23 06:17:18'),
('a990343043003740f1ca0a9d8edaf0a0761877ed777d33b45f9abdb52b2983ae1298283be51ed20c', NULL, 1, NULL, '[]', 0, '2020-06-11 09:40:46', '2020-06-11 09:40:46', '2021-06-11 09:40:46'),
('a9939e9993981d598849092ce1bf60c22b5fba79d0cbf92c5134d55dbdf40ad44c544ed959419495', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:04', '2020-08-08 10:58:04', '2021-08-08 10:58:04'),
('aa26eb496845b68ba9fb777133e5e6e33eaf27f40dac52674c30d3de40e73364a899231e44a4f23d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:04:46', '2022-03-23 06:04:46', '2023-03-23 11:34:46'),
('aa4e7560ddad63b620115ce9ec62c975647880db66f58c707ee2e8dc4f275a0af30f5824717a73b7', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:34:21', '2022-03-26 01:34:21', '2023-03-26 07:04:21'),
('ab200d8b914f151e6cc362e0146fa0f241889b51c2d8f2e02846e2f6c7bdbd1b1d62593b9e3dce9e', NULL, 1, NULL, '[]', 0, '2020-06-19 11:52:06', '2020-06-19 11:52:06', '2021-06-19 11:52:06'),
('ab893ae67365828914be8388811d514bdbed772cf8ab91613d47b8cdc469cb748380881cdcc0964d', NULL, 1, NULL, '[]', 0, '2020-11-03 12:26:05', '2020-11-03 12:26:05', '2021-11-03 12:26:05'),
('abaa480ef56823ae7c505e5e4c6d6e919d86ebc7b8a48b502c44a1024d0d4ec0e1788ffddf314872', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:17:32', '2022-03-23 06:17:32', '2023-03-23 11:47:32'),
('abee02f90348b065aae4f1680ae4b9a7851cc0aff313ae5a4d7c642d502186a49541b8249d5bd719', NULL, 1, NULL, '[]', 0, '2020-11-03 06:50:21', '2020-11-03 06:50:21', '2021-11-03 06:50:21'),
('ac5d78ec2f0d4c1b6e445c226755cc6e5e9801406ac2bbbae286b2177cff577100f8d4c8855cadf0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:14:24', '2022-03-23 05:14:24', '2023-03-23 10:44:24'),
('ad290059454f7c6233ae4b6854e1d5963ec20a348f937819d17c425c8650375f47502207bb09f7d7', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:49:29', '2022-03-26 01:49:29', '2023-03-26 07:19:29'),
('adcf72be13b76b20749c884d64b56c104544ba4d62b9e72e96f54dd5161b876532b5ed0e65db6897', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:20:05', '2022-03-23 01:20:05', '2023-03-23 06:50:05'),
('adf2bb6ada99c0f6f1538cbf36da74ae69ccd6f089600b6a4353a70eb1b4452cf2c0d8e4cd1d848e', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:24:27', '2022-03-23 23:24:27', '2023-03-24 04:54:27'),
('aebbf0ef7af34da08c4b1067f2b5335db73c06f5ebe9f4d9f62ba53ef2e71adb2110e040216ce6b9', NULL, 1, NULL, '[]', 0, '2020-08-14 12:47:19', '2020-08-14 12:47:19', '2021-08-14 12:47:19'),
('af553359ad9a6a6b2d0962f84ecd4a59fe6adfcb72a808afa115260c3fd8d5f48e7ae1e4954af54a', NULL, 1, NULL, '[]', 0, '2020-05-26 07:30:28', '2020-05-26 07:30:28', '2021-05-26 07:30:28'),
('b093bbc3fc4fa9a9c3b299529ad8bfc7e78deb71f3ed01fda48fea3c5447086e557172cabda6a8d8', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:33:40', '2022-03-23 07:33:40', '2023-03-23 13:03:40'),
('b126e1e15b07b083c62be3747fc5e0c68d42d1910cb692c4cb2c3aa4bf324e9f14ab11f312e783f8', NULL, 1, NULL, '[]', 0, '2020-08-08 03:56:13', '2020-08-08 03:56:13', '2021-08-08 03:56:13'),
('b1cc07d5cb107d602c4b70b61a1b44954f8a1496c818a944e371a8a688afceefe853f78769c17b23', NULL, 1, NULL, '[]', 0, '2020-03-23 09:53:27', '2020-03-23 09:53:27', '2021-03-23 09:53:27'),
('b1e18dd0c5483755091c27a4ae64c4a612fd238e8ab8358063bc6e8f28324d83111713fe565798b0', NULL, 1, NULL, '[]', 0, '2020-04-06 10:56:18', '2020-04-06 10:56:18', '2021-04-06 10:56:18'),
('b2228b7dbdef1a054e7ccdb8a038566c84520036505f94d5b0ef5b35cbe7fb3dab124f0ea5b92707', NULL, 1, NULL, '[]', 0, '2020-02-06 08:54:54', '2020-02-06 08:54:54', '2021-02-06 08:54:54'),
('b225ce0a6b1fe24fc9138983da955716377dccda6f087747407c6c94142cd800a01e65c626805859', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:19:54', '2022-03-23 07:19:54', '2023-03-23 12:49:54'),
('b284f3342895f28c914def79612d721c7fe5af08f40bb8d1fb0f1818e090c5a1ff8d439ccd05694e', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:43:14', '2022-03-26 01:43:14', '2023-03-26 07:13:14'),
('b2bb98e13c50396294f13a5dcf1029abe1a2c329778a98af7902919876724f11c9cbb9042a61d522', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:06:22', '2022-03-23 06:06:22', '2023-03-23 11:36:22'),
('b331968f02e356ab9c2a25b98e9b9e25c3124e55ecba42db914abe12cab746e26dbed5b6c55ea11d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:17:50', '2022-03-23 07:17:50', '2023-03-23 12:47:50'),
('b3784e061ca8a5731f230ef729272f5483fce7001e975cb71c8aeefb41793f7e238b88a16a8f0882', NULL, 5, NULL, '[]', 0, '2020-10-23 13:26:39', '2020-10-23 13:26:39', '2021-10-23 13:26:39'),
('b37cfb077c8f053add34a77617d4581dafbed2bb85538260e893afee768f50579c8fb00adbb05ce1', NULL, 1, NULL, '[]', 0, '2020-07-10 18:15:36', '2020-07-10 18:15:36', '2021-07-10 18:15:36'),
('b42d008cc2ab7ae9ed529eb3c0bb93fea835a436086a59362c15eee53957f53835188f108c4ddb4b', NULL, 1, NULL, '[]', 0, '2020-05-25 06:27:11', '2020-05-25 06:27:11', '2021-05-25 06:27:11'),
('b447ee965d0905970a11601bbc1fa0924ffeae3074216d3149bfe3f0bb1f2ca0b8b91be46a657d01', NULL, 5, NULL, '[]', 0, '2020-10-15 03:23:30', '2020-10-15 03:23:30', '2021-10-15 03:23:30'),
('b542fe4bb8b63d5e66af7a997a378435bb62ac129cf8a35c9e0df6687c2c65a14aba18caa150454e', NULL, 1, NULL, '[]', 0, '2020-05-23 09:00:29', '2020-05-23 09:00:29', '2021-05-23 09:00:29'),
('b5578b87d26f7a59feb89f17301c59121f1262965ec34f980547407ff6996aedd337dee531358a10', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:58:30', '2022-03-23 06:58:30', '2023-03-23 12:28:30'),
('b570c47909aacc89e1e63cbe41149503fa4c72aea6674a1afc4b1a79a29e2bde9a0d93dbaa118832', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:46:59', '2022-03-23 04:46:59', '2023-03-23 10:16:59'),
('b57fb478247ac878b4ae4b5fa3cb7ba9316787f797cba2e0ffab406ebc0fb2f9c74cd2a5d1df0f39', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:14:36', '2022-03-23 07:14:36', '2023-03-23 12:44:36'),
('b5ea4182884bf4d8e56e355a5e248d75292cd6803ee694c95ae5b3223b50be212b00cb8628e459ba', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:02:32', '2022-03-23 06:02:32', '2023-03-23 11:32:32'),
('b5ed3935c410d4d26d45c121da8be73ddd3d8edfc14f97cf71316da6233a5ee4a426561285c18f43', NULL, 1, NULL, '[]', 0, '2020-07-07 07:03:46', '2020-07-07 07:03:46', '2021-07-07 07:03:46'),
('b68a313b33c71cdda48fe1a1635f8670fbd43dee43170bf5b37404dad1e8d872f3516418ee680016', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:12:19', '2022-03-23 07:12:19', '2023-03-23 12:42:19'),
('b6978825869ed02c22b2261dcfb1fb576698e336d02e5ba62218dbd959cc28795376e490643e9a6e', NULL, 7, NULL, '[]', 0, '2021-05-13 00:35:06', '2021-05-13 00:35:06', '2022-05-13 06:05:06'),
('b6f6d6977ffbb43bfc1e4459566d203b460778d3a15c53f4049b5566900813e8fe73bb5f515fbe55', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-08 10:59:08', '2020-08-08 10:59:08', '2021-08-08 10:59:08'),
('b7164e39e18ce5d96ba25d147719359d815d2b7f4553864f468b44686b1445698f3b4cdebd51a343', NULL, 1, NULL, '[]', 0, '2020-02-07 06:17:38', '2020-02-07 06:17:38', '2021-02-07 06:17:38'),
('b7e838212fa950c2ebb57c028466bb5238f4931ff83866ff4271a224fd4a99052ead6582e0b9bc60', NULL, 5, NULL, '[]', 0, '2020-10-10 12:33:59', '2020-10-10 12:33:59', '2021-10-10 12:33:59'),
('b8a600c2bca1ac6225cc6ff1ccf35f08ccbc7edc00a580dfe426c5e293fcf4a41c6b57d9337ae66b', NULL, 1, NULL, '[]', 0, '2020-03-30 10:40:20', '2020-03-30 10:40:20', '2021-03-30 10:40:20'),
('b96e9349fcb15eb09d9a92930a9ca4e066c99ea3debd0741180081cc344ea43b526a50f97e3b9db0', NULL, 1, NULL, '[]', 0, '2020-03-05 10:35:04', '2020-03-05 10:35:04', '2021-03-05 10:35:04'),
('b9881606e0932cbcab3f6c8d2d11392a5204007a2c8cf402c6c22299178b6d7141d341c20c0a08a1', NULL, 1, NULL, '[]', 0, '2020-02-07 06:14:24', '2020-02-07 06:14:24', '2021-02-07 06:14:24'),
('b9e93aa7a35355f3d2aba14b3daa64fe3eff7a5fc90e940cc0ddc6ef7ad261e7cb50edd49518bb3d', NULL, 1, NULL, '[]', 0, '2020-06-19 12:05:39', '2020-06-19 12:05:39', '2021-06-19 12:05:39'),
('ba17eb8c8dca55ca610956c0fdd8f6e0d22c658d88876207b12466cf2105db262444251d139c6c2d', NULL, 5, NULL, '[]', 0, '2020-11-03 07:53:48', '2020-11-03 07:53:48', '2021-11-03 07:53:48'),
('ba371d29aa5bef4ef0b3044b1c32d196db347efec299c280b5fd632c101a7dbe31a6d11e7c52d4a4', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:45:07', '2022-03-23 06:45:07', '2023-03-23 12:15:07'),
('ba6c5d522c28e4feb8eba65e61d53c9b06ba52536f32e92a195f8ca926e1b8e240c57a655f5db131', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:41:13', '2022-03-23 04:41:13', '2023-03-23 10:11:13'),
('bac12d4f3843533b0096d1a68bd933ea74b1686944ad6b35746acc44301d6de55c1bdd515e6908d9', NULL, 1, NULL, '[]', 0, '2020-02-08 07:31:11', '2020-02-08 07:31:11', '2021-02-08 07:31:11'),
('bc90df4295cc1fb702735fa45499709904693e767959bec24421fa7ec77d86e78e8b25da33863cb6', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:32:40', '2022-03-23 05:32:40', '2023-03-23 11:02:40'),
('bd15a35cc789684df7fb685a92df63a182ee7d9e09fed69aff2850015486a6d9524f36814ae00640', NULL, 1, NULL, '[]', 0, '2020-04-08 14:14:16', '2020-04-08 14:14:16', '2021-04-08 14:14:16'),
('bdbc02b0c96927a8ba6648ff9e4cb435c9e2387cc4ff3167e9b319c726094e433ad58e5285fff65f', NULL, 1, NULL, '[]', 0, '2020-06-19 11:55:34', '2020-06-19 11:55:34', '2021-06-19 11:55:34'),
('bdd40eea9616ad330977cf7c4307ab071abf29d11d92080f848fef1066738c7ff52868835aff188c', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:22:46', '2022-03-23 23:22:46', '2023-03-24 04:52:46'),
('bf5161ae9a3dad3e6245c8b0b301364c54ff3a35c6453b754f2c51d2288e2dd2273539753413ae6f', NULL, 1, NULL, '[]', 0, '2020-01-29 15:32:52', '2020-01-29 15:32:52', '2021-01-29 15:32:52'),
('bffdf3ed0a116cbc4c34d12ca3cdbe61f0186e258f5ab4e32342f81f829b847273dfc10d0720814d', NULL, 1, NULL, '[]', 0, '2020-06-20 07:52:12', '2020-06-20 07:52:12', '2021-06-20 07:52:12'),
('c122fe3dab6d110f63d2903a0e2da4e89e2e54e251fbba09a620703ef0695c93071dd8dfdc321f09', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:08:57', '2022-03-15 02:08:57', '2023-03-15 07:38:57'),
('c1766935c7351ddfb49913a7e725d649aa406ead63232e2c6901b1f53f373c0e0b6349941f6aef06', 13, 3, 'h_user_api_token', '[]', 0, '2020-08-23 08:41:28', '2020-08-23 08:41:28', '2021-08-23 08:41:28'),
('c1de8a60e8306574c39ebe2c5dbfd168e90105df64238d63468c267d444ace7f48488fc4ab963fba', NULL, 1, NULL, '[]', 0, '2020-07-13 15:02:55', '2020-07-13 15:02:55', '2021-07-13 15:02:55'),
('c21847792be2c092d33584885ea908a15c19e7df7888df898eae253600e7599b8a41c02b1cf9bbec', NULL, 1, NULL, '[]', 0, '2020-11-03 12:12:18', '2020-11-03 12:12:18', '2021-11-03 12:12:18'),
('c25737777b6923fdc048d5fdadb0271ac16da3540050b28bf9eb0de03d593eb18a61d01c6bf7e41a', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:01:41', '2022-03-23 07:01:41', '2023-03-23 12:31:41'),
('c2a9b231d19a6907f9e877284f230bf6bc86dc5e075e53aa982b089dde74ec9f2e426764b58219fa', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:59:53', '2022-03-23 06:59:53', '2023-03-23 12:29:53'),
('c2d8fafc622340fc9f4b00fffe98d1f9477efd8d3153908e40da3d769749b45a515be306cd75fa24', NULL, 1, NULL, '[]', 0, '2020-02-08 07:05:04', '2020-02-08 07:05:04', '2021-02-08 07:05:04'),
('c3750b9c3ba2c5732714587208d48e5b8fb5b4b58a2074b0e2ed9dd5154c048ae7a9405338acf898', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:30:00', '2022-03-23 06:30:00', '2023-03-23 12:00:00'),
('c3ffc6c59de065999c9f8349433f0b154c28a2ced35fde38fc835f7307290be4585663118ccf16b4', NULL, 1, NULL, '[]', 0, '2020-07-11 11:14:22', '2020-07-11 11:14:22', '2021-07-11 11:14:22'),
('c40072bc19be60be8a961c5750c26a3d554c38de4b79120b4c3ebfa8bd8eb1fcfb11297ede14a8ec', NULL, 1, NULL, '[]', 0, '2020-07-17 14:07:20', '2020-07-17 14:07:20', '2021-07-17 14:07:20'),
('c40ea97789c7660064f2e717ca58df60429d66b8ff6cbde19c35482954347cab935890d96debef4b', NULL, 1, NULL, '[]', 0, '2020-07-27 06:04:36', '2020-07-27 06:04:36', '2021-07-27 06:04:36'),
('c4fb23e2066c329185d05386f229de08fc1ebcd01c5994b9d6e81270d15ba26c88b6455c54fd1907', NULL, 1, NULL, '[]', 0, '2020-02-03 08:18:20', '2020-02-03 08:18:20', '2021-02-03 08:18:20'),
('c52ee95c6f10310122376a62a0c688c317ff58bb870f46774446251d11a1a55c2e861f79139dc9b9', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:29', '2020-08-14 12:40:29', '2021-08-14 12:40:29'),
('c5ed797e8e4805fde3cbd07039351933deeffa007339a054cdf487b8eb9c9d2a1abc8c507bb16aa6', NULL, 1, NULL, '[]', 0, '2020-08-14 12:52:00', '2020-08-14 12:52:00', '2021-08-14 12:52:00'),
('c65285a7bacaf51ecf913ba818328c94f18ebcca441cbc57966e43c18056540d9652965254242e90', NULL, 1, NULL, '[]', 0, '2020-06-10 08:51:02', '2020-06-10 08:51:02', '2021-06-10 08:51:02'),
('c776181683ab5df546d09f174ed9b174c2526d50121c3b2873205b287a8390ae4cf02af4aebd33ee', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:16:45', '2022-03-23 07:16:45', '2023-03-23 12:46:45'),
('cad425a6ef89e7ed8edd2a56788d7b3052386fbceef5d0fc42aae067a6f8e314a3965beef630906a', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:34:05', '2022-03-23 05:34:05', '2023-03-23 11:04:05'),
('caebdcf4325dc69ffb2329693e1024025dc5214386456de405306fc2f305ee8fecd5d680a7f0f34e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:02:31', '2022-03-15 02:02:31', '2023-03-15 07:32:31'),
('cb7faebea3c09771a9b817d7546cded10f0d7850fd806e55a8fddde8b621f7d8786f2a6b105512be', NULL, 1, NULL, '[]', 0, '2020-06-27 06:58:04', '2020-06-27 06:58:04', '2021-06-27 06:58:04'),
('cbd7f70d8a004e04c5a908775a1d5bc8376c5b73a38057c0383148d022a699366b82f19fb32bf6f4', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:13:10', '2022-03-23 07:13:10', '2023-03-23 12:43:10'),
('cc4fb1cb92e1adb8a42b820052f22e05a3bc482006c3e4b917bb1e6ac999e874d4e0228e84779052', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:00:40', '2022-03-23 07:00:40', '2023-03-23 12:30:40'),
('cd4e477164ea766ae3bca31dc63ffee6526da6ff8f02ac65afb49206d6bea889ae8470ad50eb0116', NULL, 1, NULL, '[]', 0, '2020-04-13 10:58:56', '2020-04-13 10:58:56', '2021-04-13 10:58:56'),
('cdd6604780bba7e3508adafb0a29150b3a40d9fab82dee4220d5e40fb2cd2584b40fe6255dc28a2f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:27:28', '2022-03-23 07:27:28', '2023-03-23 12:57:28'),
('cded9a9a36ceb4470d5623ea1a4028815e942d196251090320fccc08db0bcdf9ef7a912a5dfa6f8f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:10:44', '2022-03-23 07:10:44', '2023-03-23 12:40:44'),
('ce5af748d80c0b00ad071582f4946591585f683f79067d28f17046e3aa2fd2b0a0a75a1ebdd29b97', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:43:30', '2022-03-23 23:43:30', '2023-03-24 05:13:30'),
('cf3af528913e88cf0caa6bbb1a2364e37f0ec3d0597c769e07fa7a600a97bf44bf605fb183301149', NULL, 5, NULL, '[]', 0, '2020-10-27 13:00:20', '2020-10-27 13:00:20', '2021-10-27 13:00:20'),
('cf58af142076e56332386128c8d603989855149862d6a8e06ea0c11001a69f7e5ecc84ed854e9f90', NULL, 1, NULL, '[]', 0, '2020-07-29 12:06:08', '2020-07-29 12:06:08', '2021-07-29 12:06:08'),
('d066123377f0c6e00099507671bf33181eee892017374934587052d583cb21be42f042baeeff38a0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:24:23', '2022-03-23 05:24:23', '2023-03-23 10:54:23'),
('d069c3ab14bccd6c94c8ad98ea8d0125a3ce3618198002a673f099eca8c3abf8a66c5a52de1eeda9', NULL, 1, NULL, '[]', 0, '2020-08-08 10:44:30', '2020-08-08 10:44:30', '2021-08-08 10:44:30'),
('d0c4fff3ad00fb81de97a303a040126c732f0206f7bcd8f0a6c030e090b9cf0b47a5bd3c5be4a35c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:44:23', '2022-03-23 04:44:23', '2023-03-23 10:14:23'),
('d1f92fb40e15feff4e46a476ce71d3b0a76297a6962b3734e76e0b9e09329114c94dc6b06166c063', NULL, 1, NULL, '[]', 0, '2020-06-30 06:25:29', '2020-06-30 06:25:29', '2021-06-30 06:25:29'),
('d27516104d106ec9c081e440462782d148fa94794f4eaabb3e3af5289b2441a74d3bfc8873bae2a6', NULL, 1, NULL, '[]', 0, '2020-11-03 10:07:30', '2020-11-03 10:07:30', '2021-11-03 10:07:30'),
('d2a3b70e209a177d2a3c81ba6884db23161946217470eb2a3f47daf1b33d0320fabcc59058567ce5', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:13:05', '2022-03-23 06:13:05', '2023-03-23 11:43:05'),
('d2a76f9b5fac05bcf73c758194cefa8dd0c33bc12c69dbcc59473e5ee7490648964e5696ea94f56f', NULL, 1, NULL, '[]', 0, '2020-06-29 13:57:19', '2020-06-29 13:57:19', '2021-06-29 13:57:19'),
('d3334a383c54125109feb3591b5b9076dcb7eece6b4e2272f19c26c0f79206ecf491c13cbf677849', NULL, 1, NULL, '[]', 0, '2020-05-23 16:12:53', '2020-05-23 16:12:53', '2021-05-23 16:12:53'),
('d3f8e9f847ee7b066b6371daaa7cdae35a428289e67f38c4bc3636eaacc9e0e4f6db7e26563f081c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:40:00', '2022-03-23 01:40:00', '2023-03-23 07:10:00'),
('d4b8e2ce7cdb0967af8935e5e8ce481622ef603e3b14d6c412e3cbd487ede1449924272d8c5c4357', NULL, 1, NULL, '[]', 0, '2020-08-14 12:45:50', '2020-08-14 12:45:50', '2021-08-14 12:45:50'),
('d59a87a6d33908e4003f1eb06345737b07ef7079b1f4ab316f01ae288ba0eb12e4cc4c865b0c1ee3', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:37:23', '2022-03-23 01:37:23', '2023-03-23 07:07:23'),
('d5e171faa9a1052b29890f15be68c8c98411f93c19308d5a97b40a64efccac6d3c016858acd4e1f9', NULL, 1, NULL, '[]', 0, '2020-07-07 07:06:15', '2020-07-07 07:06:15', '2021-07-07 07:06:15'),
('d5e9f73b4dcaf842f5b8d924124dc9cd5124e872b78b0b616caaa42ea5e7492929104b661b9f6a64', NULL, 1, NULL, '[]', 0, '2020-05-25 06:52:56', '2020-05-25 06:52:56', '2021-05-25 06:52:56'),
('d61bb1e180cc62baf35852abab93574bce0214e94dd40cf177cf920ac181ef54d907487f79f213f5', NULL, 11, NULL, '[]', 0, '2022-03-15 05:40:06', '2022-03-15 05:40:06', '2023-03-15 11:10:06'),
('d6809069be2e80d36992c2535370e5d2c2705f42f42ad0f8a3042ea2febf8b0bca2409843eb335fe', NULL, 1, NULL, '[]', 0, '2020-07-07 06:56:21', '2020-07-07 06:56:21', '2021-07-07 06:56:21'),
('d6d6c8eb260cf45bd764cad87ae2d9008d66bc13d57b52779b94a24cd5a6bf9173264dc430aa33de', NULL, 5, NULL, '[]', 0, '2020-10-27 03:19:17', '2020-10-27 03:19:17', '2021-10-27 03:19:17'),
('d70e10b8c82b8ddf0a2dbd93d012466e8de8734ff5c8615c339e2a7a14ea2ad0ab490a6b9b6e9ad0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-14 02:19:35', '2022-03-14 02:19:35', '2023-03-14 07:49:35'),
('d74211a6f991d9a0c3afeee1e55de8c9df737d8e920cc2d535dec96e1fa4d71714cae11d677510ee', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:23:36', '2022-03-23 07:23:36', '2023-03-23 12:53:36'),
('d7ef5bae487792e437a61bd4c5b378da7246210fa9ba5d96617ed71e15b80c8b996306d4fc66e6b3', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:56:56', '2022-03-23 06:56:56', '2023-03-23 12:26:56'),
('d83d327677e8fb99298285512c4d3be3e17ed0c25f1a206ee683708ea3ad6dfe8349af562762ea4c', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:11:13', '2022-03-15 02:11:13', '2023-03-15 07:41:13'),
('d86f4affc6cae5d321efc5a4bc61b86a45b58f1ba3a2948defbfbfb62fe59dc7e7e61f3304d29e73', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:15', '2020-07-14 13:46:15', '2021-07-14 13:46:15'),
('d8d9f90fe3d5f9270daebd60f8f9d3965fd6fb52de3e4fac1ce13b09d158f4463446729f9768d7cc', NULL, 1, NULL, '[]', 0, '2020-03-30 10:28:02', '2020-03-30 10:28:02', '2021-03-30 10:28:02'),
('d963452538524d0345bed4da2f7c629015f83fbd1ec30e4751b94d46084d71f64f1fd9c3788d8262', NULL, 1, NULL, '[]', 0, '2020-04-08 14:14:31', '2020-04-08 14:14:31', '2021-04-08 14:14:31'),
('d9921b78e3a3d93f975207ae426a1ecee7cb45f858b7e6ab2c1ec9e976a207fa99e0f174420142ae', 7, 3, 'h_user_api_token', '[]', 0, '2020-08-08 10:46:31', '2020-08-08 10:46:31', '2021-08-08 10:46:31'),
('d9979f97ba9271b0d594d0e55f5008e162ecfb8d16dc28ea847f712067937cb58cddf5b32d13fce0', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:31:27', '2022-03-26 01:31:27', '2023-03-26 07:01:27'),
('da83a624c348792e7858e230871d7237b375db0dbc0bec0c9798dd08a6caecc9e109f6923a5cb28d', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:42:47', '2022-03-23 05:42:47', '2023-03-23 11:12:47'),
('dad2acf6876cc4517392ef89893079ab83ebaf6d6b16289309773b9b658f295f0e19420dc498d0d0', NULL, 1, NULL, '[]', 0, '2020-02-17 10:04:10', '2020-02-17 10:04:10', '2021-02-17 10:04:10'),
('db1066c3b5c4f1741a9ca09d6f6c69e9d522e668001a14b0bb393b7b58baa0dc2fe96f850fe56f33', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 01:48:58', '2022-03-15 01:48:58', '2023-03-15 07:18:58'),
('db2db12e6911fec6cf860268b03d8322d3c720712849712631bce537718af6e33b7bfe409e436a96', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:35:09', '2022-03-23 06:35:09', '2023-03-23 12:05:09');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('db41f7336993dc1d751f831b38e14ce11f55b8d4ec8d32a78ca72d305b8bc7c300eaa02ee83985d9', NULL, 1, NULL, '[]', 0, '2020-03-18 08:12:54', '2020-03-18 08:12:54', '2021-03-18 08:12:54'),
('db4b7a0e4f9596885f8a45c78d90407e6aa9fd7d1e53cadc3a9ee45824ee73768c95d2c8577f7999', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 04:49:32', '2022-03-23 04:49:32', '2023-03-23 10:19:32'),
('dbe4c872b441126b919a05312f9aa5b866ec107f7c55085e170e52c946f0330738b56caeca85d586', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:46:17', '2022-03-23 06:46:17', '2023-03-23 12:16:17'),
('dc74f79c3c92d869b31620c1d4137be8d71dc09411d9eb8eedbda0b8fb16c4090eb300bcc8ff88cb', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-31 05:19:43', '2022-03-31 05:19:43', '2023-03-31 10:49:43'),
('dcb06cdeb0d47bcd2fc2cbdc6bc7753f69df9d9eaf735c49d85293d528b5f839debfd34e8419bb4e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:06:25', '2022-03-23 01:06:25', '2023-03-23 06:36:25'),
('dce6330ca5f277b4fff901684232b16a78dfff733484b5eb9bc1e0ede180692c6b0863c5ca31d776', NULL, 1, NULL, '[]', 0, '2020-04-10 11:14:38', '2020-04-10 11:14:38', '2021-04-10 11:14:38'),
('dcf9084a68a73dffe71e5b1f4b4590d98c9c5d54260874c8a46c52ab4964adfefbde963fe84c30e1', NULL, 1, NULL, '[]', 0, '2020-07-27 06:06:00', '2020-07-27 06:06:00', '2021-07-27 06:06:00'),
('de6004960cfaebb652dd7f0c8680811e5f8651a3e262c3039685b03701debd2e8b2f2dea79cfdb6e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:38:44', '2022-03-23 07:38:44', '2023-03-23 13:08:44'),
('df20bfb6129a1cd7e52eea0b0520e2a77b8f2c1800a94e56c57edb800d3ebc943a046407abc2a334', NULL, 1, NULL, '[]', 0, '2020-05-23 16:28:58', '2020-05-23 16:28:58', '2021-05-23 16:28:58'),
('dfc24b3d6e4d97d6f5fd30037625fe512043f15a659031375bb2b599d2efac21aa79d31392fc6cb7', NULL, 1, NULL, '[]', 0, '2020-04-07 10:53:22', '2020-04-07 10:53:22', '2021-04-07 10:53:22'),
('e0a49c5745d662932f9a81a9d3b5e4c8fed894bf41537a88fad10510e0077efe5b40482a3b8e24d4', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 02:00:48', '2022-03-26 02:00:48', '2023-03-26 07:30:48'),
('e0ec628f54a0333cca25830ef97da541fe6b08fdf42c7369b65736d128b3a9fd1cfe087f39dbe1e7', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:09:51', '2022-03-23 07:09:51', '2023-03-23 12:39:51'),
('e191229c8a981085e4ab541340f44ec3bac0d1e96a73e76eab6c3a79551edfe0748ef4b231a72373', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:26:30', '2022-03-23 05:26:30', '2023-03-23 10:56:30'),
('e2f09a824c3fb0e457748b59af6ea72c14ee15295a26a2a8e2446d2e68903f649fc56f27f0a811b3', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:22:41', '2022-03-23 07:22:41', '2023-03-23 12:52:41'),
('e3051c67f2a305239a766f707541a805ea023d8cdc193505d633386c1a98937075b468f7597d998a', NULL, 1, NULL, '[]', 0, '2020-07-25 10:46:02', '2020-07-25 10:46:02', '2021-07-25 10:46:02'),
('e3be12f68cb746361294e1e14a1364232d4ff33d6f73932f5f5a1249533fb3c336444749896edb0e', NULL, 1, NULL, '[]', 0, '2020-03-18 08:17:13', '2020-03-18 08:17:13', '2021-03-18 08:17:13'),
('e3c97b086e07dd5d2aaf4ab82abc0776792952b8562d902acc7dd1dd139610333ec1bd840df5cf9c', NULL, 1, NULL, '[]', 0, '2020-02-07 05:02:27', '2020-02-07 05:02:27', '2021-02-07 05:02:27'),
('e4028c0f2dfa3e41040de389b4e057c11065dde748edbe9ead584bdca1b8e1801a8eee30711a592e', NULL, 1, NULL, '[]', 0, '2020-04-06 10:54:48', '2020-04-06 10:54:48', '2021-04-06 10:54:48'),
('e42728900e64c1e284d181df14df3b9a58ca1555b3c0bc62d6918771d66d66c9b0c401b196a581de', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 00:48:12', '2022-03-23 00:48:12', '2023-03-23 06:18:12'),
('e444f12a6dec56ca40e47cda603ac060833ae74e46425a012024fd813d3c11e4eb52d6ec6a3a42e5', NULL, 1, NULL, '[]', 0, '2020-05-30 11:38:42', '2020-05-30 11:38:42', '2021-05-30 11:38:42'),
('e487ff43bf89ab30b417dc41f59278c76ed7bbd45beb701cf68db290746f972b89841ccfc25572c8', NULL, 1, NULL, '[]', 0, '2020-06-19 11:51:21', '2020-06-19 11:51:21', '2021-06-19 11:51:21'),
('e5231f8eb61b4a465efdac032325024ab5b72823b5502b045adac8671334e8bd6281ef9e8de84c20', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:14', '2020-07-17 16:53:14', '2021-07-17 16:53:14'),
('e574734a9b5048916ddbcd291920b16beac784eeb4f56feb654e661a9819599ea5ae0cd59e42fb79', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:46:25', '2022-03-26 01:46:25', '2023-03-26 07:16:25'),
('e576750ffd2d33b60995cca5f92b62564ca75c11ee832d11147d61404a4331692a375f627d93e4cc', NULL, 1, NULL, '[]', 0, '2020-03-30 10:39:26', '2020-03-30 10:39:26', '2021-03-30 10:39:26'),
('e5c018a49bb96aae51974b401a812d419414b871c0a686b7f5e6e5a14cf584acbc3d2973d5e36015', NULL, 1, NULL, '[]', 0, '2020-08-14 12:49:38', '2020-08-14 12:49:38', '2021-08-14 12:49:38'),
('e61d9277fc8dd3774f48b8d062c20dfb35e3576588e55f23872ab1563eb0c18590a54fb36ac3cd41', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:00:27', '2022-03-23 06:00:27', '2023-03-23 11:30:27'),
('e61ffc2e82b1265c0851ed68210bd6614d3cbe489c240d518ecdf69809c8146d2041d307b0cfd475', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:31:28', '2022-03-23 05:31:28', '2023-03-23 11:01:28'),
('e636c639326477a9c1162ec5616e97a529da1c1077bcaaa53e657faa139e42a1ad65889735d3874f', 36, 11, 'h_user_api_token', '[]', 0, '2022-03-26 01:58:06', '2022-03-26 01:58:06', '2023-03-26 07:28:06'),
('e7220d1bb7b4f0bbfbc110aace76faa4d359c531843cc50c3d009c429b8cff62a2420299f9d29e54', NULL, 1, NULL, '[]', 0, '2020-07-24 06:52:42', '2020-07-24 06:52:42', '2021-07-24 06:52:42'),
('e749a02ab5a3ef42ef864039505c944bdc4d1546add68d45f1c93c6c1631ccf55b282a327ba7eda4', NULL, 1, NULL, '[]', 0, '2020-05-23 16:12:44', '2020-05-23 16:12:44', '2021-05-23 16:12:44'),
('e7d39ddc0c63867942b124d3954e4ae19b7751f731232699f1877c7f48084169c1b38547b84e7c73', NULL, 1, NULL, '[]', 0, '2020-08-14 12:46:21', '2020-08-14 12:46:21', '2021-08-14 12:46:21'),
('e80a455662b3bbdabdfcafc0ce1043822fbc742e32d206f23771103b47cee2d62649a03d80cb3116', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:58:31', '2022-03-23 05:58:31', '2023-03-23 11:28:31'),
('e87571f61711c06af90007406e800708d875acf0d53dec51d451abc233b1c600c12d11da49995937', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:14:50', '2022-03-23 06:14:50', '2023-03-23 11:44:50'),
('e888ac662612bcbaa865c5b22d65bcb2a9597953ceb33497f42a2bbd89dae66197de59aa23d824ae', NULL, 1, NULL, '[]', 0, '2020-08-14 12:55:56', '2020-08-14 12:55:56', '2021-08-14 12:55:56'),
('e92c7fba9af844c03fa85b07191fed79e76c1a6f38458f632c2df0294283f852cce384c47601a342', NULL, 11, NULL, '[]', 0, '2022-03-15 05:36:36', '2022-03-15 05:36:36', '2023-03-15 11:06:36'),
('ea225d452f17eb73199bbfd07c82f3461bb52c1ddec91d4561bdc9f9066f664cb000c413daaa7030', NULL, 1, NULL, '[]', 0, '2020-05-25 06:49:47', '2020-05-25 06:49:47', '2021-05-25 06:49:47'),
('ea43ad77773922132d787102760df10e7f0ce60e86df2ddc84a1b3bf44cb731b88082514999db417', NULL, 1, NULL, '[]', 0, '2020-06-19 11:58:45', '2020-06-19 11:58:45', '2021-06-19 11:58:45'),
('ea5d9767711522cfbdcb18417a170cce7cd39c37627a448cb895fdaaed7f5d9fea9804b6e59ace86', NULL, 1, NULL, '[]', 0, '2020-07-29 12:15:34', '2020-07-29 12:15:34', '2021-07-29 12:15:34'),
('eacff3de8cc675a31cf4f5c0505e8f03c8ded1a51173dcdbadb2921d2213eb2003ad5ab95e0ecc67', NULL, 1, NULL, '[]', 0, '2020-09-15 06:34:24', '2020-09-15 06:34:24', '2021-09-15 06:34:24'),
('eb1a3869d823f3d96705ec22c02362adf356c94095e07dc01d866ee2a2347bf9008e32cd7cbcc7bf', NULL, 1, NULL, '[]', 0, '2020-07-06 11:19:06', '2020-07-06 11:19:06', '2021-07-06 11:19:06'),
('eb417419d4d3e19076b87c9de456dae8f0ef6c00c89d150786f0676af0b62d39601897a7e0074ae1', NULL, 1, NULL, '[]', 0, '2020-02-19 11:44:06', '2020-02-19 11:44:06', '2021-02-19 11:44:06'),
('eb84e340299579312e0c0d35ef6aefff17dd31863fd1782b43e5bb5affe11b4f21c9c719c26d9465', NULL, 9, NULL, '[]', 0, '2021-08-05 00:45:17', '2021-08-05 00:45:17', '2022-08-05 06:15:17'),
('ebb258be270da58d2d4ceb28dd49557e457911b6a3a2c2dbc9da301b38604ddb601df196cf72aba2', NULL, 1, NULL, '[]', 0, '2020-02-20 12:45:34', '2020-02-20 12:45:34', '2021-02-20 12:45:34'),
('ebc42929547cf5f8b95fff1bac3835a673858ce59c1f00c1956ebea2cd86a07193ae9ecb3bdf88c1', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:36:08', '2022-03-23 06:36:08', '2023-03-23 12:06:08'),
('ed09214690bea0f570b86221b49a93572c16d866485768aba873f21c754a9e0013df32ef83a0d87e', NULL, 1, NULL, '[]', 0, '2020-11-03 07:55:18', '2020-11-03 07:55:18', '2021-11-03 07:55:18'),
('ed80f5f2fbc9f202589f0ea70eb475b8a3fcba35908b7ae40176fc59f492cf50e7130930d28f0f9d', NULL, 1, NULL, '[]', 0, '2020-06-09 09:41:56', '2020-06-09 09:41:56', '2021-06-09 09:41:56'),
('ee442b585bac5f11446636c2e750c7cdd54e300b2ec9367c8387b366adfb81ed98dc10ca50338c7a', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:26:40', '2022-03-23 06:26:40', '2023-03-23 11:56:40'),
('ee4eb02e854dd539e61c3bebe60bb65c1a3cfa27f52dd172090523cc86ae7eda4468f3c7a0971c4f', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:12:40', '2022-03-23 06:12:40', '2023-03-23 11:42:40'),
('eff04ed146a221ca76244960a14b37eeb65e163fa0c06be1d330919ca7303f6c67a47e7bd47d0533', NULL, 1, NULL, '[]', 0, '2020-04-08 14:30:10', '2020-04-08 14:30:10', '2021-04-08 14:30:10'),
('f0fa4f3c1b006607e5437122007bc54d0953ae0c3a5bc9535353dfad464123aca778506b1131cf47', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:29:24', '2022-03-23 06:29:24', '2023-03-23 11:59:24'),
('f1ba232d6c9fcac0853cec5864095e60a54521002d1ca3bead747f30d96cda8a868d0ce54aec5588', NULL, 1, NULL, '[]', 0, '2020-07-25 11:16:12', '2020-07-25 11:16:12', '2021-07-25 11:16:12'),
('f25453bb15867fea41b6d97d15d806414cee0c05f3e8006420614aa69a8400362b31e1eb8e233315', NULL, 1, NULL, '[]', 0, '2020-02-07 06:05:11', '2020-02-07 06:05:11', '2021-02-07 06:05:11'),
('f2ba1815714c940409477d4c1dc0d447661d20f1ed4e2b1641c47845e1533b7f351e48b9abd7d0df', NULL, 1, NULL, '[]', 0, '2020-04-11 07:23:22', '2020-04-11 07:23:22', '2021-04-11 07:23:22'),
('f45ffedc90107ac74f98e34eb8452c70f87893e97272b19db02e3fc8f96b61c957b806490b73fbe9', NULL, 1, NULL, '[]', 0, '2020-04-06 12:13:33', '2020-04-06 12:13:33', '2021-04-06 12:13:33'),
('f4c799e7e35181b725df3417120968d945a9c4d05c2e20d3f0c43a43413eb56deb80e51a2e59c3a4', NULL, 1, NULL, '[]', 0, '2020-06-11 09:33:22', '2020-06-11 09:33:22', '2021-06-11 09:33:22'),
('f510a2eb019bb302354e05bdc29d9a9b8196300adf0b53ed3d952441a3a1e8a3152b3b7effdbcc73', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:32:10', '2022-03-23 06:32:10', '2023-03-23 12:02:10'),
('f5edd835e94105bd8ad14734ca0459361c80ed1b3be14387071793c3f37bde41019d6eddcaf903e2', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:46:21', '2022-03-23 06:46:21', '2023-03-23 12:16:21'),
('f607236290bca04583735ce6f9961002d53544fce6203a058f3167fd3d045ba0713c05fb909b86ad', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 01:38:54', '2022-03-23 01:38:54', '2023-03-23 07:08:54'),
('f63df96a379b247e689c9fe83927408095d7e0af01c7c98440c5a206febdf3c5f6bfe3e2c50ae524', NULL, 7, NULL, '[]', 0, '2021-03-20 04:43:23', '2021-03-20 04:43:23', '2022-03-20 10:13:23'),
('f6bd06277d6bbb07c8d38ea5959c071b5b757d433be0d15ddaa572fb79a7a64e5eae8d39e2339eb8', NULL, 1, NULL, '[]', 0, '2020-07-08 13:36:09', '2020-07-08 13:36:09', '2021-07-08 13:36:09'),
('f736680aec6b7ac67f0d30b607b21df61bb5510d2de72ba6ff8e154cfebb2fd6294a0bebda6a6ed1', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:36:29', '2022-03-23 23:36:29', '2023-03-24 05:06:29'),
('f73de0004708f66b4142fe47f3840c49a714fe03faa8fd0ae9f506bb79d204539a02a5c59c7013cc', NULL, 1, NULL, '[]', 0, '2020-04-06 11:39:29', '2020-04-06 11:39:29', '2021-04-06 11:39:29'),
('f753d052b7b3c988761ee81d96b4f2aeae15f4b545337baf2c55ca75eee89c4b4a4bc33703770e55', NULL, 1, NULL, '[]', 0, '2020-04-06 11:47:56', '2020-04-06 11:47:56', '2021-04-06 11:47:56'),
('f77aac03c9cdacb77b3ef57c28c0ea6cc50882519d7f4a37acfe9134a572ad159701fcdfac1f3821', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:20:32', '2022-03-23 07:20:32', '2023-03-23 12:50:32'),
('f81f7fc46d89ef6868c73eb2340498aae78841550036c30c31c023baf0d52ecb07ef20986b7f007d', NULL, 1, NULL, '[]', 0, '2020-03-27 12:27:34', '2020-03-27 12:27:34', '2021-03-27 12:27:34'),
('f8677a73a0ad19eef868ce4ff92ae83abaf739b2edc500d69040d640567ab22c2f120919835b9786', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:18:17', '2022-03-23 05:18:17', '2023-03-23 10:48:17'),
('f931790087911b2d2426d32208f48fd30226ff36f22d38d40de92524f4a16d5bbe7fccf80d0f68a9', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:26:10', '2022-03-23 07:26:10', '2023-03-23 12:56:10'),
('f981557fb4602bca90b32a35a983c5fc91f09820f987fcf0f7a8b4a602fbe3056edd350dccd6509b', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-15 02:11:49', '2022-03-15 02:11:49', '2023-03-15 07:41:49'),
('f9b13009647bd8f7ef058a60a1844fbaf91b6e966b0d7524b4f66554d6444ad43c1c9c01789a7e7e', NULL, 1, NULL, '[]', 0, '2020-07-14 13:45:32', '2020-07-14 13:45:32', '2021-07-14 13:45:32'),
('f9d104890eb4f62022deee8c3c7d9e2562c8c7680ff6f786227d09d370be8c5ed1d4713badd9711e', NULL, 1, NULL, '[]', 0, '2020-07-13 15:04:11', '2020-07-13 15:04:11', '2021-07-13 15:04:11'),
('fa019944c4a0012572d8485fd56732e1a8f9060cddd82393fce4a615a06aace6c140ae00ae179a6f', NULL, 1, NULL, '[]', 0, '2020-02-03 18:07:40', '2020-02-03 18:07:40', '2021-02-03 18:07:40'),
('fa74d3de292e29a218bff36c13ca2b2b5785ef58a71a028d05fbeb9d50401add9ddc82308cdf4dd4', NULL, 1, NULL, '[]', 0, '2020-04-10 11:18:10', '2020-04-10 11:18:10', '2021-04-10 11:18:10'),
('faa66e1eb4c81a801d83b2747965ae7b4a1ed276b3322995d7f02243737f5554315da987d99b36be', NULL, 1, NULL, '[]', 0, '2020-11-06 09:29:37', '2020-11-06 09:29:37', '2021-11-06 09:29:37'),
('fadfe0476fa3a0a2ed85d8a4828c57c4fac9b3a16aedd656f87dcb69d9ef17e3e7be5d3e636df85e', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 05:29:57', '2022-03-23 05:29:57', '2023-03-23 10:59:57'),
('faf09a9fa009f9ee3e79076fa34e1a12d765f3c4cb70e54e40cbe0a88b76b6bb703df5a0f95c6968', NULL, 1, NULL, '[]', 0, '2020-07-21 13:40:10', '2020-07-21 13:40:10', '2021-07-21 13:40:10'),
('fb365625641c276c0f6e7b0004a6443e9f0cde2c935c73ef3fd390f5fff5c6b00550c1ca7d5bcb3b', NULL, 1, NULL, '[]', 0, '2020-04-07 10:26:21', '2020-04-07 10:26:21', '2021-04-07 10:26:21'),
('fbadd5718c3be944504745495750fbfdc8fcd25a2c3f10fd084d1b4cdf87e9f110f6dfd9d2f831db', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:38:23', '2022-03-23 23:38:23', '2023-03-24 05:08:23'),
('fbbc5df3358f85006819bba08f2d64bb8b07d26b726cd1205c04fe7b8d62983beb04f030fd283704', NULL, 1, NULL, '[]', 0, '2020-02-12 09:21:25', '2020-02-12 09:21:25', '2021-02-12 09:21:25'),
('fbf81508305fa03827743e000a87457f50b82b920ec09bde0e678db6b6a7b178bb4d4ed13049e8e0', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 00:40:29', '2022-03-23 00:40:29', '2023-03-23 06:10:29'),
('fc0d8a91c82abb733d5402cd9b1ea73976c19c0825850a4fa6ee024bd4ba40d098afe4152f404f88', NULL, 1, NULL, '[]', 0, '2020-02-03 18:08:05', '2020-02-03 18:08:05', '2021-02-03 18:08:05'),
('fc121f8c7cf621ce3293adf1d185440c9bcb2bbcfb31855b723dfd6607458838d8957c7701402d8c', NULL, 1, NULL, '[]', 0, '2020-07-17 14:56:51', '2020-07-17 14:56:51', '2021-07-17 14:56:51'),
('fc9cbed489e69cab29eed8fe03b2e86566d80f28d8729166e58923373372809c067a5c7727150d4e', NULL, 1, NULL, '[]', 0, '2020-01-29 16:22:21', '2020-01-29 16:22:21', '2021-01-29 16:22:21'),
('fd068b34e72e1295b1083ba8cf2b48838c9ac8b674e65e31299ec74428658c8ee13332c40e92d748', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 06:18:29', '2022-03-23 06:18:29', '2023-03-23 11:48:29'),
('fd428b3de8016a14ee76e06e35ad751bf75e909762be7e65bc191989fc722c43d7ed9c2b2f7984fc', NULL, 1, NULL, '[]', 0, '2020-04-08 14:35:01', '2020-04-08 14:35:01', '2021-04-08 14:35:01'),
('fd6b9d2e3b3a92a3348f189e5dc1b25d6a79d3c1baedd909a1297367100eb74a83296568e9fb75cb', 35, 11, 'h_user_api_token', '[]', 0, '2022-03-23 07:24:16', '2022-03-23 07:24:16', '2023-03-23 12:54:16'),
('fe50f51368eb2e677dcf5456bd00082baecf70e3832f357286a829e5b9845e687c8df4b1d4b519ea', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:58', '2020-07-14 13:46:58', '2021-07-14 13:46:58'),
('fea4b76fe3e0c066a58745323b555dd60f615d675f6032e02df0571b0722da25d13d1cab393194fb', NULL, 1, NULL, '[]', 0, '2020-08-14 12:46:37', '2020-08-14 12:46:37', '2021-08-14 12:46:37'),
('fec963aa9bebb5031ed09a337d9945a7c31534c973ba3a7e827c4cc5bda6e18a1e734057dd3c4f6d', NULL, 1, NULL, '[]', 0, '2020-05-30 11:05:12', '2020-05-30 11:05:12', '2021-05-30 11:05:12'),
('ff48ae785e16d24e24e690628f84d43d321a7c8834ca454a898a2d72e2a0f14b674101efc05fc574', NULL, 1, NULL, '[]', 0, '2020-08-24 10:08:37', '2020-08-24 10:08:37', '2021-08-24 10:08:37'),
('ff96019af24b268efc0898f1b00618fa6ae7b8ce9a9a5b344ee3fa1fc13d005f3139ec179e837b7f', NULL, 1, NULL, '[]', 0, '2020-03-10 13:24:59', '2020-03-10 13:24:59', '2021-03-10 13:24:59'),
('ffa061c76770749c7ff4387c2f9eb247233c821c506af582999f57487ea8738c439e552b288dd3e6', NULL, 1, NULL, '[]', 0, '2020-08-08 08:53:31', '2020-08-08 08:53:31', '2021-08-08 08:53:31'),
('ffb715f029c63d46f427612e19bf6c563596b4bc9d5388c26d8006111f84a22637461b27004d9de3', 32, 11, 'h_user_api_token', '[]', 0, '2022-03-23 23:36:03', '2022-03-23 23:36:03', '2023-03-24 05:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SP Hospital Application Personal Access Client', 'GzURlpPnn0EDvY8W0oe7Je0J0XO6CmSC82oL6lJk', 'http://localhost', 1, 0, 0, '2020-01-21 12:14:06', '2020-01-21 12:14:06'),
(2, NULL, 'SP Hospital Application Password Grant Client', 'tmQOBS2eV5izvaQqFbyBjh1Snfn3R6oviibCxw8a', 'http://localhost', 0, 1, 0, '2020-01-21 12:14:06', '2020-01-21 12:14:06'),
(3, NULL, 'My Hospital Now > Hospital Application Personal Access Client', 'tNmFBFTxRw4zYdSyc2wDbZF9hm0po03jWVdnbQR1', 'http://localhost', 1, 0, 0, '2020-04-02 08:53:10', '2020-04-02 08:53:10'),
(4, NULL, 'My Hospital Now > Hospital Application Password Grant Client', 'sVf9HJDgo7MsZnX5GivweUbQ4VPNX86nGE0deJFa', 'http://localhost', 0, 1, 0, '2020-04-02 08:53:10', '2020-04-02 08:53:10'),
(5, NULL, 'My Hospital Now > Hospital Application Personal Access Client', '7Hh1doyG4AoyUMb3lqQoEqwrAiewxuwGhkn39wCN', 'http://localhost', 1, 0, 0, '2020-09-14 11:31:48', '2020-09-14 11:31:48'),
(6, NULL, 'My Hospital Now > Hospital Application Password Grant Client', 'jjuoDd364YhO0268d859ZKYmVrFevG6e8BIR5mfk', 'http://localhost', 0, 1, 0, '2020-09-14 11:31:48', '2020-09-14 11:31:48'),
(7, NULL, 'My Hospital Now > Hospital Application Personal Access Client', 'LpdqcHS4j5abwoBUqVvJ2gH8I185zPMhJ0nlSE9Y', 'http://localhost', 1, 0, 0, '2021-03-15 06:00:05', '2021-03-15 06:00:05'),
(8, NULL, 'My Hospital Now > Hospital Application Password Grant Client', 'GPbPBuCr1qGJS07865wL1Nm04bUNUUIyL0hcoX2S', 'http://localhost', 0, 1, 0, '2021-03-15 06:00:05', '2021-03-15 06:00:05'),
(9, NULL, 'My Hospital Now > Hospital Application Personal Access Client', 'm0tLW8zWXQtohKj4UolfNGxN905QveLwcvBjMvM9', 'http://localhost', 1, 0, 0, '2021-07-20 00:42:12', '2021-07-20 00:42:12'),
(10, NULL, 'My Hospital Now > Hospital Application Password Grant Client', 'E3XF3ciFh3PrYNEfEeFLxJFTnLoM5JB2gU3YWjXT', 'http://localhost', 0, 1, 0, '2021-07-20 00:42:12', '2021-07-20 00:42:12'),
(11, NULL, 'My Hospital Now > Hospital Application Personal Access Client', 'FycIquBG6YRC5uu8y9xRTekCrUk70pI4kkQuzDzm', 'http://localhost', 1, 0, 0, '2022-03-08 00:31:24', '2022-03-08 00:31:24'),
(12, NULL, 'My Hospital Now > Hospital Application Password Grant Client', 'UXOkogVNBaK9sCrCV9NdAFirTY0MkGnBn5fpnW5x', 'http://localhost', 0, 1, 0, '2022-03-08 00:31:24', '2022-03-08 00:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-21 12:14:06', '2020-01-21 12:14:06'),
(2, 3, '2020-04-02 08:53:10', '2020-04-02 08:53:10'),
(3, 5, '2020-09-14 11:31:48', '2020-09-14 11:31:48'),
(4, 7, '2021-03-15 06:00:05', '2021-03-15 06:00:05'),
(5, 9, '2021-07-20 00:42:12', '2021-07-20 00:42:12'),
(6, 11, '2022-03-08 00:31:24', '2022-03-08 00:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test_name`, `test_desc`, `created_at`, `updated_at`) VALUES
(1, 'Labore.', 'Voluptates veniam.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(2, 'Beatae.', 'Repellendus tenetur.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(3, 'Ut.', 'Laboriosam suscipit.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(4, 'Ipsam.', 'Ipsum incidunt.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(5, 'Omnis.', 'Fugit et minus sunt.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(6, 'Et cumque.', 'Earum eligendi.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(7, 'Ipsa.', 'Labore aut saepe.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(8, 'Sequi.', 'Deserunt aspernatur.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(9, 'Expedita.', 'Ut qui velit sunt.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(10, 'Maxime.', 'Dicta veniam.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(11, 'Rerum eos.', 'Accusantium aut vel.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(12, 'Et ea.', 'Ipsam perferendis.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(13, 'Minima ea.', 'Ut provident quo.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(14, 'Ut eius.', 'Qui officia est.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(15, 'Veniam.', 'Amet ipsa sed est.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(16, 'Maxime.', 'Et qui soluta.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(17, 'Sed qui.', 'Voluptatum.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(18, 'Natus.', 'Ullam.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(19, 'Veritatis.', 'Et consequuntur est.', '2020-01-21 12:14:16', '2020-01-21 12:14:16'),
(20, 'Tempore.', 'Ipsa blanditiis.', '2020-01-21 12:14:16', '2020-01-21 12:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accridations`
--
ALTER TABLE `accridations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hospitals_email_unique` (`email`);

--
-- Indexes for table `hospital_password_resets`
--
ALTER TABLE `hospital_password_resets`
  ADD KEY `hospital_password_resets_email_index` (`email`);

--
-- Indexes for table `hospital_video_links`
--
ALTER TABLE `hospital_video_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `accridations`
--
ALTER TABLE `accridations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hospital_video_links`
--
ALTER TABLE `hospital_video_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
