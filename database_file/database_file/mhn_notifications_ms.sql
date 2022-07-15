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
-- Database: `mhn_notifications_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` bigint(20) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(364, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:26:\\\"amardeep.cotocus@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"22\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1629263937, 1629263937),
(365, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:26:\\\"amardeep.cotocus@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"22\\\";s:4:\\\"name\\\";s:4:\\\"Amar\\\";s:7:\\\"country\\\";s:6:\\\"Angola\\\";s:8:\\\"category\\\";s:26:\\\"Cosmetic \\/ Plastic Surgery\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"3243567890\\\";s:4:\\\"desc\\\";s:4:\\\"test\\\";s:10:\\\"patient_id\\\";s:2:\\\"96\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1629263939, 1629263939),
(366, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:26:\\\"amardeep.cotocus@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"23\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1629264049, 1629264049),
(367, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:26:\\\"amardeep.cotocus@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"23\\\";s:4:\\\"name\\\";s:4:\\\"Amar\\\";s:7:\\\"country\\\";s:19:\\\"Antigua And Barbuda\\\";s:8:\\\"category\\\";s:11:\\\"Gynaecology\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"4356785456\\\";s:4:\\\"desc\\\";s:4:\\\"test\\\";s:10:\\\"patient_id\\\";s:2:\\\"96\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1629264049, 1629264049),
(368, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:16:\\\"testing@demo.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"28\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646742387, 1646742387),
(369, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:16:\\\"testing@demo.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"28\\\";s:4:\\\"name\\\";s:14:\\\"raushan mishra\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:14:\\\"Age management\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"7891234569\\\";s:4:\\\"desc\\\";s:24:\\\"Need quick and effective\\\";s:10:\\\"patient_id\\\";s:3:\\\"103\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646742389, 1646742389),
(370, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:16:\\\"testing@demo.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"29\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646742536, 1646742536),
(371, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:16:\\\"testing@demo.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"29\\\";s:4:\\\"name\\\";s:11:\\\"simakishori\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:15:\\\"General Surgery\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"7878787878\\\";s:4:\\\"desc\\\";s:30:\\\"it start again with same issue\\\";s:10:\\\"patient_id\\\";s:3:\\\"103\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646742537, 1646742537),
(372, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:17:\\\"started@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"30\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646821598, 1646821598),
(373, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:17:\\\"started@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"30\\\";s:4:\\\"name\\\";s:10:\\\"demo kumar\\\";s:7:\\\"country\\\";s:7:\\\"Armenia\\\";s:8:\\\"category\\\";s:16:\\\"Chinese Medicine\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"1212457845\\\";s:4:\\\"desc\\\";s:2:\\\"ok\\\";s:10:\\\"patient_id\\\";s:3:\\\"104\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646821600, 1646821600),
(374, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:18:\\\"nomail@newmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"31\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646982554, 1646982554),
(375, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:18:\\\"nomail@newmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"31\\\";s:4:\\\"name\\\";s:10:\\\"demopracti\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:16:\\\"Gastroenterology\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"7885452214\\\";s:4:\\\"desc\\\";s:20:\\\"need resposns asap!!\\\";s:10:\\\"patient_id\\\";s:3:\\\"105\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646982555, 1646982555),
(376, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:21:\\\"testingmail@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"32\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646996856, 1646996856),
(377, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:21:\\\"testingmail@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"32\\\";s:4:\\\"name\\\";s:11:\\\"sanju singh\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:11:\\\"Diagnostics\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"7992351224\\\";s:4:\\\"desc\\\";s:4:\\\"ASAP\\\";s:10:\\\"patient_id\\\";s:3:\\\"106\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1646996858, 1646996858),
(378, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:18:\\\"paitient@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"33\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1647071580, 1647071580),
(379, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:18:\\\"paitient@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"33\\\";s:4:\\\"name\\\";s:8:\\\"Paitient\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:23:\\\"Physical Rehabilitation\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"1234567896\\\";s:4:\\\"desc\\\";s:4:\\\"ASAP\\\";s:10:\\\"patient_id\\\";s:3:\\\"107\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1647071582, 1647071582),
(380, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToHospitalsJob\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\SendEmailToHospitalsJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":2:{s:12:\\\"patientEmail\\\";s:18:\\\"paitient@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"34\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1647071704, 1647071704),
(381, 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailToPatientJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\SendEmailToPatientJob\\\":8:{s:17:\\\"\\u0000*\\u0000emailJobParams\\\";O:8:\\\"stdClass\\\":10:{s:4:\\\"case\\\";s:2:\\\"QC\\\";s:12:\\\"patientEmail\\\";s:18:\\\"paitient@gmail.com\\\";s:7:\\\"quoteId\\\";s:2:\\\"34\\\";s:4:\\\"name\\\";s:8:\\\"Paitient\\\";s:7:\\\"country\\\";s:5:\\\"India\\\";s:8:\\\"category\\\";s:15:\\\"General Surgery\\\";s:12:\\\"country_code\\\";s:1:\\\"0\\\";s:5:\\\"phone\\\";s:10:\\\"1234567896\\\";s:4:\\\"desc\\\";s:26:\\\"I am suffering from stress\\\";s:10:\\\"patient_id\\\";s:3:\\\"107\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}s:6:\\\"\\u0000*\\u0000job\\\";N;}\"}}', 0, NULL, 1647071705, 1647071705);

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
(9, '2019_11_30_060510_create_jobs_table', 1);

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
('00683101c6caf5405de55f696a609298183e53f5cf67bd402e535b6d88e7568fdf85bfbe93431885', NULL, 1, NULL, '[]', 0, '2020-06-11 09:33:21', '2020-06-11 09:33:21', '2021-06-11 09:33:21'),
('019b7415eead2c0eaef85d055671497d2846e88bf6a8c25f180a122bcae183366a857853bd67780d', NULL, 1, NULL, '[]', 0, '2020-07-21 13:40:09', '2020-07-21 13:40:09', '2021-07-21 13:40:09'),
('024bbef4475dc77db9486f5a206e8b01b4dd18b43f521604356dc57de355909994a8657f37b81315', NULL, 1, NULL, '[]', 0, '2020-04-06 13:05:07', '2020-04-06 13:05:07', '2021-04-06 13:05:07'),
('0383f2a1acd4da3443e5219d6a1ac0e395c86571b734776255b6cad4b203b0ce876e56a62e062af9', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:21', '2020-07-13 15:05:21', '2021-07-13 15:05:21'),
('03ab1d142802f63c18cd43515a04380f7f940ec3d624d8233ff7b6a0aa49e14c63434e7d520dff2f', NULL, 1, NULL, '[]', 0, '2020-07-21 14:00:00', '2020-07-21 14:00:00', '2021-07-21 14:00:00'),
('03b1e586bb3894694b7f326dd28c7468feff50275baab280db1128c7cd44e31e70b6071c4d90ff4e', NULL, 1, NULL, '[]', 0, '2020-04-06 11:29:09', '2020-04-06 11:29:09', '2021-04-06 11:29:09'),
('03e2285d19b7c44d064bfc44ac5e38bde9472c04a49acbc52b4cf7fc201e390898f77bc5d22af5c4', NULL, 1, NULL, '[]', 0, '2020-02-20 12:40:05', '2020-02-20 12:40:05', '2021-02-20 12:40:05'),
('052d8685ccf45a8babfab8d7d032ddcc515adf97aa887fc40935eb281b9a3a66db08e68e535cf3e5', NULL, 1, NULL, '[]', 0, '2020-06-20 07:52:11', '2020-06-20 07:52:11', '2021-06-20 07:52:11'),
('059df9d65a3add6e22989200d229aa53dc18d222d8c32adc8fe4c7ee7118392d0cd2d6337e80323c', NULL, 1, NULL, '[]', 0, '2020-07-28 12:21:44', '2020-07-28 12:21:44', '2021-07-28 12:21:44'),
('06ff462f9619f5e5f25953e17179bbe377b8866578a11e92a1f9b4579beed9a05e4744cf4e9c4605', NULL, 1, NULL, '[]', 0, '2020-11-05 05:57:11', '2020-11-05 05:57:11', '2021-11-05 05:57:11'),
('073c27990e764593c1c0629e03bfa6e4b1782a2f6df140b1b43e618ab6af48090a3d50be0a25dd24', NULL, 1, NULL, '[]', 0, '2020-03-30 05:36:36', '2020-03-30 05:36:36', '2021-03-30 05:36:36'),
('07c9807979eb79f8b2c0f91a17758b11936e1bf1480e78fabc4412ac6a621419c9bb3d1bf21da766', NULL, 1, NULL, '[]', 0, '2020-07-21 13:29:07', '2020-07-21 13:29:07', '2021-07-21 13:29:07'),
('07ca9243346a13eaf6147416576c454dd75f41297113ab078c3d14a895db2a9f4809a23252526849', NULL, 1, NULL, '[]', 0, '2020-04-06 10:55:07', '2020-04-06 10:55:07', '2021-04-06 10:55:07'),
('0813ddedf5960324650765a6ee36da2908760ae03f1d09a8b679c348d8fe66234b8ae564c52338f7', NULL, 1, NULL, '[]', 0, '2020-03-21 10:33:46', '2020-03-21 10:33:46', '2021-03-21 10:33:46'),
('0823f53796b41df8330331536f26e1cdb20c9380778f1526d8b9215005cb15f6e7e056e9ea3359dd', NULL, 1, NULL, '[]', 0, '2020-07-21 13:40:09', '2020-07-21 13:40:09', '2021-07-21 13:40:09'),
('0836aa41e51776587e3ea27336f2805ef73740c697ef1a6e45024359b7d50dad465156bf3169fd19', NULL, 1, NULL, '[]', 0, '2020-04-04 04:24:39', '2020-04-04 04:24:39', '2021-04-04 04:24:39'),
('096c9b269e7f304d86eb66b2a23b80cd9c04e9fc7bfbddf47b219ad2cbd84169d404841843ef45ab', NULL, 1, NULL, '[]', 0, '2020-05-23 11:57:29', '2020-05-23 11:57:29', '2021-05-23 11:57:29'),
('0a455de5f0eefce2bca52255b5edd6f78ff981e4443d3c5ecca3333cd4b090ca499f91cf19185e0a', NULL, 1, NULL, '[]', 0, '2020-04-06 12:13:21', '2020-04-06 12:13:21', '2021-04-06 12:13:21'),
('0a484c32d14141c87f1f56370f5892580b753712cbb0303dd9b2c9c79d4a7098abb0a6cff454cbad', NULL, 1, NULL, '[]', 0, '2020-11-03 10:15:56', '2020-11-03 10:15:56', '2021-11-03 10:15:56'),
('0a56a4ee778243fbeff3d93869d47294199115e53d18526d5258ffcada74bf65e9cb37e4d826ff27', NULL, 1, NULL, '[]', 0, '2020-02-08 07:05:03', '2020-02-08 07:05:03', '2021-02-08 07:05:03'),
('0ad893b250d25e5aacf99cd2019a83bafdd0d575e1cf7b53e67653189a61daa87e4ced3dffe6407a', NULL, 1, NULL, '[]', 0, '2020-07-25 11:15:09', '2020-07-25 11:15:09', '2021-07-25 11:15:09'),
('0ae76571b49267debbe915f93cd3185058edfd2d548456d32d05576226e3b939367e4cc950645332', NULL, 1, NULL, '[]', 0, '2020-07-24 06:43:00', '2020-07-24 06:43:00', '2021-07-24 06:43:00'),
('0bdf35aa893170ce63f5f5f0b71b769e4506817f38e35e3ce23cbc3ae63bb714f22d0d67418a2572', NULL, 1, NULL, '[]', 0, '2020-07-30 10:17:39', '2020-07-30 10:17:39', '2021-07-30 10:17:39'),
('0bebb851379d52e26a5fe7e3878b1d1fddb3eb92b4ac3cd27085c2b5298e53d83bed0d2bd4202219', NULL, 1, NULL, '[]', 0, '2020-11-03 12:23:50', '2020-11-03 12:23:50', '2021-11-03 12:23:50'),
('0bee6d76d85ef51a409cfa327d0d0b25312d27c171c6460804943fcf07f8bac6ac4cac15751434b0', NULL, 1, NULL, '[]', 0, '2020-08-24 10:08:36', '2020-08-24 10:08:36', '2021-08-24 10:08:36'),
('0c09076227525c57e894e5a7768626b6c374cd2b6a14c79a53bb47d07f4ffdf8d8be7215c4e43dfa', NULL, 1, NULL, '[]', 0, '2020-07-25 11:15:09', '2020-07-25 11:15:09', '2021-07-25 11:15:09'),
('0c18248ad4ea5d16abd9726ee298a4d69d126a7597bbc9f18a816f8f81376bcb45f9f0f7b3257110', NULL, 9, NULL, '[]', 0, '2022-03-11 05:37:34', '2022-03-11 05:37:34', '2023-03-11 11:07:34'),
('0c3d6dcc3024172af1039c04adc30c93994ede03a73f94fd72d5bcbe00f0ed9ed4ee8d17db64132d', NULL, 1, NULL, '[]', 0, '2020-06-18 04:40:05', '2020-06-18 04:40:05', '2021-06-18 04:40:05'),
('0c628b63793412c7fcc82e77f04c4aba0f30a768d267708daff67e7ecf230fa0fae718b4c197e396', NULL, 1, NULL, '[]', 0, '2020-06-01 08:05:29', '2020-06-01 08:05:29', '2021-06-01 08:05:29'),
('0cbbf48f3d2ad31f4a060e80c21045ff23a360dda3af910251902aa74d9f074171b0bf4e19f5eda1', NULL, 1, NULL, '[]', 0, '2020-07-27 06:53:00', '2020-07-27 06:53:00', '2021-07-27 06:53:00'),
('0cd6d20dc02266ae247234241751bb7a63a6f5fd32c1214779818ecc59ac7c613dd01b81964377f5', NULL, 1, NULL, '[]', 0, '2020-02-19 12:02:48', '2020-02-19 12:02:48', '2021-02-19 12:02:48'),
('0d615ac68e5a8ed1ac771e5961f261f247e2342073d956a90b164042a1324501ce4ba831eb0a9778', NULL, 1, NULL, '[]', 0, '2020-06-10 13:08:48', '2020-06-10 13:08:48', '2021-06-10 13:08:48'),
('0d78081f90962b56f6e69c4585b763e7430a8b97cbf779a80a92785ecc942774c4b129d9964f1962', NULL, 1, NULL, '[]', 0, '2020-06-27 06:27:56', '2020-06-27 06:27:56', '2021-06-27 06:27:56'),
('0d7897a3a43a5b6dad23ffda091dcac4484e0756c9bb5099b8226161304e58f084d8007e4d4032d4', NULL, 1, NULL, '[]', 0, '2020-07-29 14:49:39', '2020-07-29 14:49:39', '2021-07-29 14:49:39'),
('0f12c64074d43eae4ac72a839d143bfb52ea5e5c938ea9076ff86e622c1ae53454a9863f28e88707', NULL, 1, NULL, '[]', 0, '2020-07-10 18:18:05', '2020-07-10 18:18:05', '2021-07-10 18:18:05'),
('0f25822537de07695d721642bcf5b109f0f222d0ce8c02c3569c81ed9f78a757aabe47000cf8f5f7', NULL, 1, NULL, '[]', 0, '2020-07-06 11:30:24', '2020-07-06 11:30:24', '2021-07-06 11:30:24'),
('0f3e2b0a1778cc65b3ff17e6c78a96b06e52643a6c23da9b62328169c2e142600e66b38e1ca4c5bb', NULL, 1, NULL, '[]', 0, '2020-11-03 11:10:48', '2020-11-03 11:10:48', '2021-11-03 11:10:48'),
('1035f32f4849896d2fc4d9d6da5c0aeab87973ea5eb5367a756c357786154ae60e835151e90e876e', NULL, 1, NULL, '[]', 0, '2020-07-13 14:54:24', '2020-07-13 14:54:24', '2021-07-13 14:54:24'),
('1042614d219de9b83ca813e71c59e125f305baf0bcd41cc0e7c19b6989def62cca41aae49ea94040', NULL, 1, NULL, '[]', 0, '2020-03-30 10:40:18', '2020-03-30 10:40:18', '2021-03-30 10:40:18'),
('10d19e2b1f5c6aeb0b7901dfc5f6dcb8565fec40c7f3923ee60263f6b16aaacbea196a252efb9163', NULL, 1, NULL, '[]', 0, '2020-04-06 13:08:03', '2020-04-06 13:08:03', '2021-04-06 13:08:03'),
('128ee7336e6cf2476b1f3a099c11ff48bb4579ed960b923a9ed3cf4050c7ea81b9430d9816ae61df', NULL, 1, NULL, '[]', 0, '2020-07-14 13:45:32', '2020-07-14 13:45:32', '2021-07-14 13:45:32'),
('12918fb4108585588dcf4b77a21214b49d27995bd97e2edb7455dc7e6cc8c81efaf1b7210b6574c2', NULL, 7, NULL, '[]', 0, '2021-08-05 00:15:47', '2021-08-05 00:15:47', '2022-08-05 05:45:47'),
('12c2efd642cc53d406cefa8122a407c393501ad7661d6a72ad63199e18da8ecd230612ece5c4715a', NULL, 9, NULL, '[]', 0, '2022-03-09 04:56:39', '2022-03-09 04:56:39', '2023-03-09 10:26:39'),
('1309fa3dd16c2be03090052964e4accd80dc4103904e980f38ac472c5e3dc53539eb61362d8e87a3', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:28', '2020-08-14 12:40:28', '2021-08-14 12:40:28'),
('13af697d90becdd4c7cfccbe38b33122993b142fbf3da02bb27c585f65442c8ae75fd52720404ac0', NULL, 1, NULL, '[]', 0, '2020-07-24 07:01:38', '2020-07-24 07:01:38', '2021-07-24 07:01:38'),
('14a2430954f3d0400742fe9e7b72ed20f88a812380620a303fd174cbd09daf3a8e98ce3d84072b2e', NULL, 1, NULL, '[]', 0, '2020-05-19 10:19:47', '2020-05-19 10:19:47', '2021-05-19 10:19:47'),
('15b948e11888d95bd70cd7740d29fcba50f0a289413df5e42a69f0701ad2764cc089539466fd441c', NULL, 1, NULL, '[]', 0, '2020-04-06 10:54:39', '2020-04-06 10:54:39', '2021-04-06 10:54:39'),
('1694c08dc0fdb4366cf8d01e07196ef368f94aa52f0effac0e375ea43526bfef5c9bfcc344e1ab9f', NULL, 1, NULL, '[]', 0, '2020-01-29 03:43:46', '2020-01-29 03:43:46', '2021-01-29 03:43:46'),
('16eb9a211c9a8a469d4a2fa7747d686822e694c037862a32c8376c9ada6ff6b0f739ea9817eb6b6a', NULL, 1, NULL, '[]', 0, '2020-07-28 12:17:13', '2020-07-28 12:17:13', '2021-07-28 12:17:13'),
('1783624da4e049eadd5d65fa4131ea71ec2663b680a84db05820f0daec2fd08892bd5b87f6d8554f', NULL, 1, NULL, '[]', 0, '2020-07-13 14:43:23', '2020-07-13 14:43:23', '2021-07-13 14:43:23'),
('18679f8f0d0c43c0004ad88eda06c89f66d9c29a8739486eebfafedb3ecb744b70d88b5a978a1f2c', NULL, 1, NULL, '[]', 0, '2020-05-25 05:12:22', '2020-05-25 05:12:22', '2021-05-25 05:12:22'),
('19119c9f07bcd221731bef9ce7fd024047d87bfb361bf53fda5c8eb8c11681d3ceed695ec9ccec06', NULL, 1, NULL, '[]', 0, '2020-07-17 17:05:37', '2020-07-17 17:05:37', '2021-07-17 17:05:37'),
('19d6798281579bea96970b12d707a7eaa43f40fa82032b0592cad976915ed87e12ff4918ba559ac0', NULL, 1, NULL, '[]', 0, '2020-05-23 12:20:10', '2020-05-23 12:20:10', '2021-05-23 12:20:10'),
('1a56856dce78d347d2da9f904056ca48814fd74493f2cb592a2dcd240602bac4576796c6fa8a0764', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:57', '2020-07-13 15:05:57', '2021-07-13 15:05:57'),
('1ac9e50d96f53269ef51fb83c05030a86e6dc28086375fe68a4fbe17235a795008b82a07549a476d', NULL, 1, NULL, '[]', 0, '2020-03-10 13:28:10', '2020-03-10 13:28:10', '2021-03-10 13:28:10'),
('1ad3d9d6a6c1836c7b2082ccab242d37494b236cc66c8b64fd49f1a23693bb0b37d63160a5bb18d2', NULL, 1, NULL, '[]', 0, '2020-05-23 05:01:17', '2020-05-23 05:01:17', '2021-05-23 05:01:17'),
('1b6ea7155fb9eedddb0145368080102f8bbbae8ecc19b552e0d55fa4d09b8991f5c89c6c436e5a6a', NULL, 1, NULL, '[]', 0, '2020-06-01 05:29:17', '2020-06-01 05:29:17', '2021-06-01 05:29:17'),
('1cb09139bc187e18ae553c19f8dd2324de28af8a23a6d44344a065c388afde158f865a4c30ed2747', NULL, 1, NULL, '[]', 0, '2020-07-27 06:05:17', '2020-07-27 06:05:17', '2021-07-27 06:05:17'),
('1cc273b14c274f89cc8816f547f14bf2f3590f95c0d17aa96ba8bc17bc3ecc88686ced319e86f022', NULL, 1, NULL, '[]', 0, '2020-11-03 12:04:17', '2020-11-03 12:04:17', '2021-11-03 12:04:17'),
('1cf84008fd145ec59b14c647f38c421f4ae20d33a9342632d470db6d6d47438d5ff3b695b59f9973', NULL, 1, NULL, '[]', 0, '2020-03-19 10:28:45', '2020-03-19 10:28:45', '2021-03-19 10:28:45'),
('1d6331a59c48df313fb0a85ff2854a1bdf39930bc3eb924ce96f5b72aa7964cc66b7f41960a8f56f', NULL, 1, NULL, '[]', 0, '2020-07-14 13:52:30', '2020-07-14 13:52:30', '2021-07-14 13:52:30'),
('1dc5105f2ea84b9d9e79570943c2eeedbe2eb04dfb1d1be2430bb3f3635578c5c5d07714841b1477', NULL, 1, NULL, '[]', 0, '2020-07-27 06:05:17', '2020-07-27 06:05:17', '2021-07-27 06:05:17'),
('1dfee61f15fc9c854bf95bee1d6448751cae0163da5b2f2fe2bc06b9d1bf49897b229df039e24034', NULL, 9, NULL, '[]', 0, '2022-03-12 02:25:03', '2022-03-12 02:25:03', '2023-03-12 07:55:03'),
('1ea95caff12910b9b4278b4735d96a0373c0936c424bd9394a38f5e0f2d5b325412bdccf3fe22655', NULL, 1, NULL, '[]', 0, '2020-08-08 10:50:19', '2020-08-08 10:50:19', '2021-08-08 10:50:19'),
('1ff03f88db81d6669763e18a1fb3098727b405d5adc00c5ddf92b9270713962f10983a7243ffab7e', NULL, 1, NULL, '[]', 0, '2020-07-07 07:03:45', '2020-07-07 07:03:45', '2021-07-07 07:03:45'),
('203d747e876b5ffb05f3154f835cecf6f9ae956fb25b07a10c557be3dcb77c8487957f046ae7802a', NULL, 1, NULL, '[]', 0, '2020-06-24 08:42:28', '2020-06-24 08:42:28', '2021-06-24 08:42:28'),
('20ceb099b1ad226d94898cb6d8be44c2720ebdb774dc5b039c9397bf12642c20ed99762ee664c3e0', NULL, 1, NULL, '[]', 0, '2020-07-21 13:45:42', '2020-07-21 13:45:42', '2021-07-21 13:45:42'),
('21c20ab404d6c5f9bed1c256e6ff830fc150d46b9ab84f0887ce042a5702b9b035bf0f1b5ca12e47', NULL, 1, NULL, '[]', 0, '2020-11-03 10:15:56', '2020-11-03 10:15:56', '2021-11-03 10:15:56'),
('22242c2079c0c5b7f05f965643211c8c5b836de9277070272bed80c34e3dd413f3423eff1ef60665', NULL, 1, NULL, '[]', 0, '2020-03-30 07:04:37', '2020-03-30 07:04:37', '2021-03-30 07:04:37'),
('22300f7acb81881ac227353003a08dc4facdc5996e7e12886285794495ebb081a0b168ca91a3a451', NULL, 1, NULL, '[]', 0, '2020-06-11 09:33:21', '2020-06-11 09:33:21', '2021-06-11 09:33:21'),
('22e4bd172624279307105813c5ca9c6ee91dc5a2c8a274c59fbae042256c42b15e11ae8deafe0a8b', NULL, 1, NULL, '[]', 0, '2020-12-04 10:41:48', '2020-12-04 10:41:48', '2021-12-04 10:41:48'),
('231a80ee8ab5afc9f8d9142ce6a8431b289ff3b8bb46b0d5f6b8afdbed9dfe9f380831598573b7c5', NULL, 1, NULL, '[]', 0, '2020-07-17 14:56:51', '2020-07-17 14:56:51', '2021-07-17 14:56:51'),
('235d3bf0fc44bb1912affa7a9222824aedbd22ce803e3f59907d7fd674ba7797e34caa4440274412', NULL, 1, NULL, '[]', 0, '2020-06-27 06:30:46', '2020-06-27 06:30:46', '2021-06-27 06:30:46'),
('2496d137726d76a75cef7f90926809f8b8bf364f7a3f8793a99e3178ae1992482f772d9390cac266', NULL, 1, NULL, '[]', 0, '2020-02-03 18:01:59', '2020-02-03 18:01:59', '2021-02-03 18:01:59'),
('2578cc0d027ae5ad0970c11c3740b86810c503c770633a8cc875e3dd519472b34fc9d4b11db57250', NULL, 1, NULL, '[]', 0, '2020-07-21 13:54:12', '2020-07-21 13:54:12', '2021-07-21 13:54:12'),
('25e5eeb1508acc64151fc5305b3408bbd0831bcb3a01496bd6802bdad2288955a3d3ec018714f605', NULL, 1, NULL, '[]', 0, '2020-07-14 13:49:12', '2020-07-14 13:49:12', '2021-07-14 13:49:12'),
('268f4cf589dff073eca2a8c1746e9d8301c873b4d5d9ddd2002f3a08ec58a6679978cc0ee6bb616d', NULL, 1, NULL, '[]', 0, '2020-07-11 11:29:08', '2020-07-11 11:29:08', '2021-07-11 11:29:08'),
('27111d74e825f25fae1872a98f250cbcd545b2c27d0ad00907d1524158d39967610f978aaca7b961', NULL, 1, NULL, '[]', 0, '2020-08-24 10:08:36', '2020-08-24 10:08:36', '2021-08-24 10:08:36'),
('276c7787a03ffa9efb10e49420ff37e2eec48cf5432741ad33d19a24b09b3cf10b774f08bbc645da', NULL, 1, NULL, '[]', 0, '2020-05-14 08:12:30', '2020-05-14 08:12:30', '2021-05-14 08:12:30'),
('28931a6772fe509664b0e65e650fe162c1d6396a46889a5b01bc7d5c9ff823bbd8a982c3f5dee9c2', NULL, 1, NULL, '[]', 0, '2020-08-23 07:30:12', '2020-08-23 07:30:12', '2021-08-23 07:30:12'),
('28f2199a52bfb77e5bb3aca7fc2d6cdfa1a6651672f677bd53f453deaa7d2475f9a02d65ebc6c73d', NULL, 1, NULL, '[]', 0, '2020-07-07 06:58:52', '2020-07-07 06:58:52', '2021-07-07 06:58:52'),
('29b2f68943024e370e3ce6183d5edb0eaf1afc0944562b42d7a7bdebd6cdc042fbf6079fb0a94852', NULL, 1, NULL, '[]', 0, '2020-07-21 13:28:13', '2020-07-21 13:28:13', '2021-07-21 13:28:13'),
('29dac3e88e4061c2ad88b2501af81ffc50b3b68348f241e670fad31cec96b17463e528e98eaf968e', NULL, 1, NULL, '[]', 0, '2020-07-28 12:21:02', '2020-07-28 12:21:02', '2021-07-28 12:21:02'),
('2a6ea805d3296fe770fece6b6ec794143fbb8fa57ceb2225b4f2d8a8d3ee1d4bca249a3d8f5bdb06', NULL, 1, NULL, '[]', 0, '2020-02-06 08:56:58', '2020-02-06 08:56:58', '2021-02-06 08:56:58'),
('2b02d7033920205364742c4c05469df6f9813a652eb0ce2aa9c56e4abfca1aa8490da8d227023728', NULL, 1, NULL, '[]', 0, '2020-04-06 13:08:05', '2020-04-06 13:08:05', '2021-04-06 13:08:05'),
('2bb8fc4385553553e46249f51d2ed2957c49282a61560957f89ff4d5f09d6311daa1e62f04c45307', NULL, 9, NULL, '[]', 0, '2022-03-08 06:56:24', '2022-03-08 06:56:24', '2023-03-08 12:26:24'),
('2bff76873bd434dafcfd8c9ca3ed3d555a96de7d050f3d84d1d4a11d66d5b83596b7b3071c5745e7', NULL, 1, NULL, '[]', 0, '2020-04-06 11:29:08', '2020-04-06 11:29:08', '2021-04-06 11:29:08'),
('2c000f81a743c0ba60bc9843555685170c8d4fe4d6fbd9c69a777c98c280b2dfffbdc256e02b9a77', NULL, 1, NULL, '[]', 0, '2020-11-18 12:46:00', '2020-11-18 12:46:00', '2021-11-18 12:46:00'),
('2c4d3225cb8eaed83afd0a07b55126ac19415c56f0a0fac9b327817a9663db14895f1899c4cda03f', NULL, 1, NULL, '[]', 0, '2020-07-07 07:02:00', '2020-07-07 07:02:00', '2021-07-07 07:02:00'),
('2cd872640ad8a234436959eaadb513cadbeac9e323a5910f11a5ce0ecc6edd69ac6ce0e763db0d45', NULL, 1, NULL, '[]', 0, '2020-06-27 06:53:57', '2020-06-27 06:53:57', '2021-06-27 06:53:57'),
('2d1dfa4e31cb22848447deab5c6d00d6184f879a13b87a943a81da2a7d1f81831a103608f47ab05d', NULL, 1, NULL, '[]', 0, '2020-11-05 05:45:11', '2020-11-05 05:45:11', '2021-11-05 05:45:11'),
('2d4855350a7e8e1bfa012935c7c520198c544f57eddeaa9895cf9fe7c93557c844b1b9be8f7d8323', NULL, 1, NULL, '[]', 0, '2020-08-14 13:04:13', '2020-08-14 13:04:13', '2021-08-14 13:04:13'),
('2d7a64e1e2f92be7f5772efce5de9a8910c5fd96ea704a02f106f59d738bc28ad293401530b5e51c', NULL, 1, NULL, '[]', 0, '2020-07-24 06:43:00', '2020-07-24 06:43:00', '2021-07-24 06:43:00'),
('2ed4b1050e7a60edc039027640756a9780705676a14a98d15989f09c4337ebc67374fda0fbf8e804', NULL, 7, NULL, '[]', 0, '2021-08-05 00:45:14', '2021-08-05 00:45:14', '2022-08-05 06:15:14'),
('2f080a1b8c37c094a0de1d8d19b36d91ae836a40056e6f02dc56d9740cc86e9a880a2d5c560d6a9b', NULL, 1, NULL, '[]', 0, '2020-07-24 06:54:36', '2020-07-24 06:54:36', '2021-07-24 06:54:36'),
('2f552cda7ea4ee617d67e0a7d04068b61e1ba80578e88d61812bf291815cc9b53e2380ff10736792', NULL, 1, NULL, '[]', 0, '2020-07-11 10:54:09', '2020-07-11 10:54:09', '2021-07-11 10:54:09'),
('2f84c1809d53a07219214e7d2c532b6b2bde47e801cb017e5a4e11f9b2fa72f7280ad6a074380d11', NULL, 7, NULL, '[]', 0, '2021-08-04 23:24:33', '2021-08-04 23:24:33', '2022-08-05 04:54:33'),
('2fd722d650b0455a4bbe1f10379b36b4821dcdc6724bd17303cf5ef8b12bedfd98577b289f1f0904', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:45', '2020-08-08 10:58:45', '2021-08-08 10:58:45'),
('3031061103f099051f5a56d76706e8989b815c5da1336c106be66296617d14d62668d0d6b32fc52d', NULL, 1, NULL, '[]', 0, '2020-03-05 10:36:17', '2020-03-05 10:36:17', '2021-03-05 10:36:17'),
('308db12568a8c152882043549315bcb81ef200101528b3a5d314bba999a125c070bef1c4d698ea7c', NULL, 1, NULL, '[]', 0, '2020-07-13 14:50:44', '2020-07-13 14:50:44', '2021-07-13 14:50:44'),
('30a734eba699305c17408c695cb83c99eebf920c27402ef983424b7c841fb10a14c8eff3d46b1d6b', NULL, 1, NULL, '[]', 0, '2020-08-08 10:17:32', '2020-08-08 10:17:32', '2021-08-08 10:17:32'),
('30f77636eeb26d0aa1f59bff17bf87483b63ba316a930e5cf2b6076f418de955adc7c0c90c13e50b', NULL, 1, NULL, '[]', 0, '2020-07-06 11:06:42', '2020-07-06 11:06:42', '2021-07-06 11:06:42'),
('3148f0ab88c6fafeb1b2f17a7b54b99b4c832eb625a98d95d24c7f6431f442390d6af7f9965df6f0', NULL, 1, NULL, '[]', 0, '2020-02-03 17:49:27', '2020-02-03 17:49:27', '2021-02-03 17:49:27'),
('321797b714c9378d8924faf5f505e21fde7b72cc2bfddc28a5fae260023d1b428b34b939fa823dae', NULL, 1, NULL, '[]', 0, '2020-01-25 12:36:46', '2020-01-25 12:36:46', '2021-01-25 12:36:46'),
('32d0d0da3ba4fd25350f9533bdaed4c67b82f74b6c52e6709e9eec39a4d4caada155755a8330eb1f', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:57', '2020-08-14 12:40:57', '2021-08-14 12:40:57'),
('32d91c59dfd978d22ce22cd8262c4f4dcf8831a101446387a6668d7f6567e2ac2e20357b8e5cb272', NULL, 1, NULL, '[]', 0, '2020-10-06 12:59:08', '2020-10-06 12:59:08', '2021-10-06 12:59:08'),
('3330b3c1281cac1e4e4e964e576c0165531b262c90961b89df5255c8cd0c1885370d427180ffd2c9', NULL, 1, NULL, '[]', 0, '2020-08-14 12:39:58', '2020-08-14 12:39:58', '2021-08-14 12:39:58'),
('33bb4984eba222c39b2950de7a49fdaccaa65cef4874cc900eed948acd23894c9ac6e58bbdc75936', NULL, 7, NULL, '[]', 0, '2021-08-19 01:59:46', '2021-08-19 01:59:46', '2022-08-19 07:29:46'),
('341ee5a8802ad533a521c2d66c65cf1c5fb4421ee95dfa4fd5cbe4d9fafeeb57e2550aeff0502a16', NULL, 1, NULL, '[]', 0, '2020-06-27 07:00:28', '2020-06-27 07:00:28', '2021-06-27 07:00:28'),
('3497002eda793f6168774a96ddb629a005979e20371c47b551c429cd4a902ffd08417e7c409aca48', NULL, 1, NULL, '[]', 0, '2020-06-09 10:05:02', '2020-06-09 10:05:02', '2021-06-09 10:05:02'),
('3530fef0d103865f1688aeae6529c1738a436f8bd160d87bd025f69d1608030bf770b8a721b8b38f', NULL, 1, NULL, '[]', 0, '2020-06-20 08:01:11', '2020-06-20 08:01:11', '2021-06-20 08:01:11'),
('36978598b9d3cb1b191e48f1bd960ed509f2d409732529ec4ba34e2352adaf48c245f066def05314', NULL, 1, NULL, '[]', 0, '2020-07-29 12:13:11', '2020-07-29 12:13:11', '2021-07-29 12:13:11'),
('36f3fea1e31560b373a3ca750ed76fea74678190cdbf2075e9c44d546dea181368266d6b67a507a5', NULL, 1, NULL, '[]', 0, '2020-06-01 08:05:29', '2020-06-01 08:05:29', '2021-06-01 08:05:29'),
('38892a6a2cdc3393d104ef1c22244e972e0598095d25f036e13ee5737ce6e9548cc42d7e4276b954', NULL, 1, NULL, '[]', 0, '2020-04-04 04:25:17', '2020-04-04 04:25:17', '2021-04-04 04:25:17'),
('38a8d9cac501e5ab61ca0a176d9ba2841795b92cd23506bf28755d8586cf0d3fd8c2cf26cbd6246d', NULL, 1, NULL, '[]', 0, '2020-05-23 12:20:10', '2020-05-23 12:20:10', '2021-05-23 12:20:10'),
('38f4cf27de025be1810079716e4453edd20c309170778a712fc5a230747751f653d1bdcf37e9d767', NULL, 1, NULL, '[]', 0, '2020-07-28 12:19:16', '2020-07-28 12:19:16', '2021-07-28 12:19:16'),
('391df9d006bd3c983e6ab3c446643e519ed1e51c686196345fbc449e2606825f3a59e2cefb99b51d', NULL, 1, NULL, '[]', 0, '2020-07-21 13:42:02', '2020-07-21 13:42:02', '2021-07-21 13:42:02'),
('3ae5254a8b797c8ed0f1d603d355d3963add25678b2b4b2bc69a33819dca59d72bdc759484600cd0', NULL, 1, NULL, '[]', 0, '2020-07-27 06:53:43', '2020-07-27 06:53:43', '2021-07-27 06:53:43'),
('3afabb41fc5c6800cd71f6936793a3269b0ee02ff34c16687209be13ea0578b409a287a1baf42ae7', NULL, 1, NULL, '[]', 0, '2020-03-30 10:35:09', '2020-03-30 10:35:09', '2021-03-30 10:35:09'),
('3c24e3e9e58bd41bc236f331ded2b0cd433a4a94c609c4c9906eee347e8585a01ca9a630f62269b0', NULL, 1, NULL, '[]', 0, '2020-03-19 10:25:08', '2020-03-19 10:25:08', '2021-03-19 10:25:08'),
('3d5595f574e9ffb88d174d21a0c90d839d1c3491e2c74b79219afbb190af9a4379832fbeae54bf4f', NULL, 1, NULL, '[]', 0, '2020-02-18 13:07:22', '2020-02-18 13:07:22', '2021-02-18 13:07:22'),
('3e051e44b277585802c763a5f73b2a0c93fb5912cffec086e1706ec76096356ddd0b7c370c15bd94', NULL, 1, NULL, '[]', 0, '2020-06-09 10:07:58', '2020-06-09 10:07:58', '2021-06-09 10:07:58'),
('3e58add814dfe0d38055d014453166f66ecb4c3f49d7c49c1925f28fd5150eb376044c6f09af1c6c', NULL, 1, NULL, '[]', 0, '2020-03-18 08:45:34', '2020-03-18 08:45:34', '2021-03-18 08:45:34'),
('3effd261a0098713940c022d164aa2ad5a532c830ad1d45fe9eb32fd516852825d755ba10b9b7c6c', NULL, 1, NULL, '[]', 0, '2020-07-27 06:05:58', '2020-07-27 06:05:58', '2021-07-27 06:05:58'),
('3f811661ef7b7d5863ed057dad8522cf4d557d6f0cc7a2a38b92fa90bd1ca0e4a5fb312683e61591', NULL, 1, NULL, '[]', 0, '2020-06-27 06:58:01', '2020-06-27 06:58:01', '2021-06-27 06:58:01'),
('3ffb528defb8fdf89fab617ecfd9b6dc2c5f51845612e920e8e758971d905bb2565abee6231aecc9', NULL, 1, NULL, '[]', 0, '2020-07-21 13:53:01', '2020-07-21 13:53:01', '2021-07-21 13:53:01'),
('405b6b04f37348ec855522701fa50c42882ab8c6b6a2e190f98823b9bcc1854949c4ae8349c0ae48', NULL, 1, NULL, '[]', 0, '2020-07-06 11:16:49', '2020-07-06 11:16:49', '2021-07-06 11:16:49'),
('4198e106e96ee432f267d57c3547fb0cdde0740201eb37627a3756e7279b0d96346433f14f8a222b', NULL, 1, NULL, '[]', 0, '2020-01-27 11:16:07', '2020-01-27 11:16:07', '2021-01-27 11:16:07'),
('4214b38f47cc8bcb98ee6ea0a2026107851067644f36c3e077dea1070b5edff09e552de52617d570', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:14', '2020-07-17 16:53:14', '2021-07-17 16:53:14'),
('4225726def2567ab40eb09171fe24e87dc2a8e13c720d3fcab79ea4a41ace95fcba0cfd0534f3ba7', NULL, 1, NULL, '[]', 0, '2020-06-20 08:03:29', '2020-06-20 08:03:29', '2021-06-20 08:03:29'),
('423d3d9fba5a9f473e10cfcf5819e6fe0b7d0076138a008ee9b9eaf3b6c7c3937484c90f87716d20', NULL, 1, NULL, '[]', 0, '2020-06-19 08:03:19', '2020-06-19 08:03:19', '2021-06-19 08:03:19'),
('425fdf299833ded4ff325ee3ad1ee6b4711af00dfe4c3cf4e92f03cac6ca872a978d863550e25e88', NULL, 1, NULL, '[]', 0, '2020-09-15 06:34:22', '2020-09-15 06:34:22', '2021-09-15 06:34:22'),
('426d2bc684c8cd8d7ac1851ac378b528811ee8f75eb79f88ae337b258e495141bf9f46a4952d926d', NULL, 1, NULL, '[]', 0, '2020-07-14 13:50:26', '2020-07-14 13:50:26', '2021-07-14 13:50:26'),
('428d22ef871983154377997199abd30e94a4db8a8f0c4f70a3ed95651507eae3313bdcea8e4952a9', NULL, 1, NULL, '[]', 0, '2020-08-14 13:31:42', '2020-08-14 13:31:42', '2021-08-14 13:31:42'),
('42be1e3ce443dcf7d91b53bdccabd990f68cb30b080a9e5ae7ee07a2a12be2431e61e6779eb11cce', NULL, 1, NULL, '[]', 0, '2020-02-03 18:02:49', '2020-02-03 18:02:49', '2021-02-03 18:02:49'),
('42e90eac0ef8f8d4895dd44835582596c68638dc80f92efb6594cad141b0c9f862e887edccd02406', NULL, 1, NULL, '[]', 0, '2020-06-19 08:01:35', '2020-06-19 08:01:35', '2021-06-19 08:01:35'),
('451cf0399ea2df068573a92bf55916d6e76dbc6852128f27e98ee6cf50e5c87564ebf9ee101138a8', NULL, 1, NULL, '[]', 0, '2020-03-19 05:24:58', '2020-03-19 05:24:58', '2021-03-19 05:24:58'),
('45ec5f3681bb89b11c07d45f54d4977dcb74ae942d13e12aadecd6e7ce523595f6f685b99c307c42', NULL, 1, NULL, '[]', 0, '2020-07-21 14:00:37', '2020-07-21 14:00:37', '2021-07-21 14:00:37'),
('45f4a64750d2dd1ea631b687ca9b891e2c6a7eb74aa9735245b1d04072b7ebe066e2cc044030c5f9', NULL, 1, NULL, '[]', 0, '2020-06-20 07:52:11', '2020-06-20 07:52:11', '2021-06-20 07:52:11'),
('467cc8968228f9f84bcba5dddb5c2b0e7e1fb0e4d32e323ef8b555a09703caec9ed5a44b22ec6f4a', NULL, 1, NULL, '[]', 0, '2020-07-29 12:03:11', '2020-07-29 12:03:11', '2021-07-29 12:03:11'),
('4682fa9d3b11a3a891d2352f3988a415855e309101a22ceecaa5a1377228ba0621e3582e18ca60eb', NULL, 9, NULL, '[]', 0, '2022-03-08 06:58:56', '2022-03-08 06:58:56', '2023-03-08 12:28:56'),
('468bd4091dec98a18e0a614760aed57af2ad248c684b1964436f5a5927cf95125ff80c770a2bd142', NULL, 1, NULL, '[]', 0, '2020-07-06 11:14:50', '2020-07-06 11:14:50', '2021-07-06 11:14:50'),
('47c6e6b79a2771b12d13a88b470577451eb9b2f2fb9c4d725638decb9424a36d1560f1e5eede7422', NULL, 1, NULL, '[]', 0, '2020-07-06 11:06:43', '2020-07-06 11:06:43', '2021-07-06 11:06:43'),
('47d219d90686a807ecbfa4b00dd79c59af7ec068f7e040ff988441c1a363c4c5c61441edfec557a7', NULL, 1, NULL, '[]', 0, '2020-07-20 08:01:00', '2020-07-20 08:01:00', '2021-07-20 08:01:00'),
('47e7b419621e7a8735ada1e2259fdcc6111986cc2896b8f70033fae6213a3818e64d466ba9090377', NULL, 1, NULL, '[]', 0, '2020-07-24 07:02:00', '2020-07-24 07:02:00', '2021-07-24 07:02:00'),
('48fb2f52f89afa482aa18dbfc9b0bdb6f226b3f1510b34113becb25cbc401fb176c4d3694fb87180', NULL, 1, NULL, '[]', 0, '2020-07-21 13:29:07', '2020-07-21 13:29:07', '2021-07-21 13:29:07'),
('4963e8163c3842e249fa17df7c4df2c5639086a099c243a76b272327e961f0b20db2de1fc403a9b8', NULL, 7, NULL, '[]', 0, '2021-08-17 23:48:55', '2021-08-17 23:48:55', '2022-08-18 05:18:55'),
('4a31b2a9b23bf7cd01ccc8d30c3ad584fee17bd357a55ed96f14b79ca1ba4dafc7589146a83b524a', NULL, 1, NULL, '[]', 0, '2020-04-06 10:57:12', '2020-04-06 10:57:12', '2021-04-06 10:57:12'),
('4a4c5848d9deee37850e18be774569518643b3163b9b27e198a85e2e9d0a5fbef43c2aa8dd712695', NULL, 1, NULL, '[]', 0, '2020-04-06 10:54:41', '2020-04-06 10:54:41', '2021-04-06 10:54:41'),
('4b1ebbc6a468054e5750425f5654736b93f28b0cdef6b83701fc505badabe3647c1b445afa97e288', NULL, 1, NULL, '[]', 0, '2020-07-07 06:58:51', '2020-07-07 06:58:51', '2021-07-07 06:58:51'),
('4b6a05518fcfd8aef96bf4a589f73199679159e12101774f49cfc12ec7d8ed291bb016c80b49c4f6', NULL, 1, NULL, '[]', 0, '2020-11-05 06:02:26', '2020-11-05 06:02:26', '2021-11-05 06:02:26'),
('4c2c5fad5f2542a1e2f3535344379ca29064c52c38bb1c7cec0283c1dfd1a49b878e6debe31fb217', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:57', '2020-08-14 12:40:57', '2021-08-14 12:40:57'),
('4c9c19a3b5baf859541af893b196b29c4518ac1fcbf42db8293f8c75f11b17a56a1416592a6248f4', NULL, 1, NULL, '[]', 0, '2020-08-14 13:31:20', '2020-08-14 13:31:20', '2021-08-14 13:31:20'),
('4d84cfb02ee8d87275d6b493b9608365736e951be1289e5222ced693574bbc3980b73f1f8f073ede', NULL, 1, NULL, '[]', 0, '2020-03-25 05:12:43', '2020-03-25 05:12:43', '2021-03-25 05:12:43'),
('4f30bd3665ce2085dfb7d44069a3b037fda415c16b6b82d353201de044b2b6e30c4d3826fbf3a984', NULL, 1, NULL, '[]', 0, '2020-05-25 05:08:56', '2020-05-25 05:08:56', '2021-05-25 05:08:56'),
('4f3b6e312eb682977e8312c29d2736faf73ca30513dba38d0f7f2387d0ac33c91f4db1aba2449a47', NULL, 1, NULL, '[]', 0, '2020-02-17 10:04:10', '2020-02-17 10:04:10', '2021-02-17 10:04:10'),
('4fa9745bccdf7fba96f04b5721147fad655c2c89fb8a48131b5008b39bb480de8799f07623be4669', NULL, 1, NULL, '[]', 0, '2020-07-25 11:16:11', '2020-07-25 11:16:11', '2021-07-25 11:16:11'),
('504796c350bc9a8f4d18daa56f70da84d8452342cc81740395bd1a7e77beafd814842b1d3609d2a7', NULL, 1, NULL, '[]', 0, '2020-11-05 05:57:11', '2020-11-05 05:57:11', '2021-11-05 05:57:11'),
('505ab5cd0b222ea7c15ab32f0b67874b77deac95bcd6e6a6b66c0afe38d1fce06a6d70380d623165', NULL, 1, NULL, '[]', 0, '2020-06-11 09:44:27', '2020-06-11 09:44:27', '2021-06-11 09:44:27'),
('505b9e14b430f22227ff85ff982507e852e50517b2c33fb16234d87db491baf4e0fe013fca0bccd5', NULL, 1, NULL, '[]', 0, '2020-07-27 06:11:11', '2020-07-27 06:11:11', '2021-07-27 06:11:11'),
('506512f3c586a17fff1fe341c9478987bcc59679c2c3a055efffc18cf4189f7ef9889cb596d23007', NULL, 1, NULL, '[]', 0, '2020-07-07 08:31:11', '2020-07-07 08:31:11', '2021-07-07 08:31:11'),
('5162da4f84f57c21967443f7736a18ae1667615abed168701b0e8e6dd1c23fd4d43024feb2fdb245', NULL, 1, NULL, '[]', 0, '2020-02-14 05:56:02', '2020-02-14 05:56:02', '2021-02-14 05:56:02'),
('51add868a4e305fc6171bba3b79a9dfa3ac4e2cb2a2aa44ed9ee831d1b838ae9a49ad47028777e7c', NULL, 1, NULL, '[]', 0, '2020-07-20 08:09:15', '2020-07-20 08:09:15', '2021-07-20 08:09:15'),
('5238ac0392dfeb075dbc9ae2fde2dce2770e8166b25dfa9b46f475ea4e54166e44c65b6a89a43179', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:49', '2020-07-17 16:53:49', '2021-07-17 16:53:49'),
('52d9508fa27c816bc4debb79c514ba1796c2f9a52e1d6a7105da958c29506476a07eebe3d00e85cb', NULL, 1, NULL, '[]', 0, '2020-03-10 13:24:58', '2020-03-10 13:24:58', '2021-03-10 13:24:58'),
('52e3d69afd723737e2e0b6fa57474e222f9139ace0874652b6791d080981346e4b3f348f03d9a968', NULL, 1, NULL, '[]', 0, '2020-02-19 11:35:07', '2020-02-19 11:35:07', '2021-02-19 11:35:07'),
('52f500afe574b8c7f7cfe15bf2e94067e0c71be5505321853b683f05733599d016a11e313d4039ca', NULL, 1, NULL, '[]', 0, '2020-07-21 14:04:12', '2020-07-21 14:04:12', '2021-07-21 14:04:12'),
('5301b78651bcc0db14bd8cc7387de376ac3bf673cb9751f98f7e2a7fc24639e6f98db2a89838395f', NULL, 1, NULL, '[]', 0, '2020-05-23 12:23:56', '2020-05-23 12:23:56', '2021-05-23 12:23:56'),
('53a9b0f31b6ff11d684a898c14d82fff855ece747e58183237fb8b3974011308228d143750399940', NULL, 1, NULL, '[]', 0, '2020-03-30 07:08:34', '2020-03-30 07:08:34', '2021-03-30 07:08:34'),
('5422c929d75e707cc6a7ae2e1d10a367db83e84fa9ed92708b38e4602e76c8467cfcbe53012f1408', NULL, 1, NULL, '[]', 0, '2020-06-27 06:53:57', '2020-06-27 06:53:57', '2021-06-27 06:53:57'),
('54c1524710c13f8ce7e88b03e72225a720af4e6c8de0179ba57996a07909d4d8f0722fbd48b4ba7a', NULL, 1, NULL, '[]', 0, '2020-07-10 18:29:12', '2020-07-10 18:29:12', '2021-07-10 18:29:12'),
('54d961e6e1b7586f3902d1e22ada0833101a919bb5a1d1033d2e1bd206cc8bf0e9e429842be3e044', NULL, 1, NULL, '[]', 0, '2020-07-29 12:07:07', '2020-07-29 12:07:07', '2021-07-29 12:07:07'),
('5566c87e54ddae54250629620ed89452351742bd518fa46307e6d12ae64a2a7ffe7a0fdb4006c530', NULL, 1, NULL, '[]', 0, '2020-07-27 06:10:25', '2020-07-27 06:10:25', '2021-07-27 06:10:25'),
('5603b8b5a0e9d8fd926cdfa5d2466c5a52d88e9c90f4f2a786b2c7f76bd9e0e239bbc0a5ca1d6658', NULL, 1, NULL, '[]', 0, '2020-03-23 05:55:19', '2020-03-23 05:55:19', '2021-03-23 05:55:19'),
('565b502e8dfa575d258ca12cab56826396c4b8c37449ec95a191467e71fe533a1f17d435bcf61394', NULL, 1, NULL, '[]', 0, '2020-06-27 06:58:01', '2020-06-27 06:58:01', '2021-06-27 06:58:01'),
('56eba300123f2428df706d6cac650910189427f524a0e09d397cd8b98c4a01ea6e36e65166e2038f', NULL, 1, NULL, '[]', 0, '2020-07-21 13:51:30', '2020-07-21 13:51:30', '2021-07-21 13:51:30'),
('56ecccd38c6c4dcb1b0f56e4e1c27ba4d3f04fa83ff4bcd2c7b34e039b5d5b1bed6eeb8f35a3c1e5', NULL, 1, NULL, '[]', 0, '2020-07-13 14:45:17', '2020-07-13 14:45:17', '2021-07-13 14:45:17'),
('57688732f52a4c7bed085ee3e2525a0b5b378fcff4ff0d709af95e71be51734ba86e430185765e07', NULL, 1, NULL, '[]', 0, '2020-03-18 08:46:38', '2020-03-18 08:46:38', '2021-03-18 08:46:38'),
('578d22c65e079b1e462565f55dd4dc45f51b24842c56cb34b3998d96833fd4854d350107eaa8f6cb', NULL, 1, NULL, '[]', 0, '2020-03-27 12:27:33', '2020-03-27 12:27:33', '2021-03-27 12:27:33'),
('57beb3b4a819910fe778166945be7741615b7491272b7ea52aac079e3f47bddaf1463c4baa6666c8', NULL, 1, NULL, '[]', 0, '2020-07-14 13:51:36', '2020-07-14 13:51:36', '2021-07-14 13:51:36'),
('5a3742bc203c02b5afd56a037aa44ba009f2b7b6701340d1ee8f9a7e2db88180908a46e10ec1c45a', NULL, 1, NULL, '[]', 0, '2020-08-14 12:39:58', '2020-08-14 12:39:58', '2021-08-14 12:39:58'),
('5b3646871004bf6931c5be12b5d39d1b5be487fc3c58dbb8ca22e52cb159aeb338e1f9ed57cbc290', NULL, 1, NULL, '[]', 0, '2020-06-27 06:30:46', '2020-06-27 06:30:46', '2021-06-27 06:30:46'),
('5baf5576ff9095c32ff40c93d5f30ed1d931e8e088dd4f75e45a0d5145fa1de4661c7475cc7aa435', NULL, 1, NULL, '[]', 0, '2020-05-07 13:46:55', '2020-05-07 13:46:55', '2021-05-07 13:46:55'),
('5bcc79f4c2bb0a468abf4d748266395dd8790f4fe5999cbc5ba7435a0cf07ba774652bc48ba01d34', NULL, 1, NULL, '[]', 0, '2020-07-14 13:45:31', '2020-07-14 13:45:31', '2021-07-14 13:45:31'),
('5c7e7e3e2ce0c37927145c99cc98952009e381a2f08abeda57ee0a30d42683340aca6543755e925d', NULL, 1, NULL, '[]', 0, '2020-08-08 10:17:32', '2020-08-08 10:17:32', '2021-08-08 10:17:32'),
('5d07b467db13ebbe00f0b806ff20fa1a40dbe5e827715b37f3d0f4439a5fd45b08588752b9818614', NULL, 1, NULL, '[]', 0, '2020-07-21 14:01:04', '2020-07-21 14:01:04', '2021-07-21 14:01:04'),
('5d4c441aeacc55730b07c00d715d34c871e8f74952b72e85528ccada4a61e76be8a6176e84e80bd4', NULL, 1, NULL, '[]', 0, '2020-05-30 10:46:59', '2020-05-30 10:46:59', '2021-05-30 10:46:59'),
('5d7e654cb16c848b640a1bbfec2c128b2e2b902adf71784dcf3965122767851321c3cfc0f01fa028', NULL, 1, NULL, '[]', 0, '2020-03-19 05:25:28', '2020-03-19 05:25:28', '2021-03-19 05:25:28'),
('5efd5fe7ef13be189a1f643edda01c2e66b8637696af53561f29b44d1ddd117f2f88181a9fb0c154', NULL, 9, NULL, '[]', 0, '2022-03-08 06:56:28', '2022-03-08 06:56:28', '2023-03-08 12:26:28'),
('5f3eb6cc941f1035af644e5fc91a0a21a3be3ad913dbf1c0834a36193008019db918a0562887461c', NULL, 1, NULL, '[]', 0, '2020-05-30 11:16:52', '2020-05-30 11:16:52', '2021-05-30 11:16:52'),
('5fc9c2f1498a735774ef12cf8ec6247fc509961ccae1dfc2db11c9d38ac2366fc30cd212954a896c', NULL, 1, NULL, '[]', 0, '2020-07-28 12:17:47', '2020-07-28 12:17:47', '2021-07-28 12:17:47'),
('5fe7ded1cf640fe2f84b379022bc6e156f3990bd01ede7865a77e74ddf41878ab7de0c3c79fba3fb', NULL, 1, NULL, '[]', 0, '2020-06-09 11:32:10', '2020-06-09 11:32:10', '2021-06-09 11:32:10'),
('605f3ddd71a4f4edc919c9d5956fdeb13abb2dffc77e01f6ec2c47626f5fb29a3b7209462b02407d', NULL, 1, NULL, '[]', 0, '2020-07-29 12:07:07', '2020-07-29 12:07:07', '2021-07-29 12:07:07'),
('61283f16a1f5e573fc1b1819d9c48ed2687fd8cca9c8d0ff140489277264c9a6aaa951e63378e278', NULL, 1, NULL, '[]', 0, '2020-05-23 12:25:46', '2020-05-23 12:25:46', '2021-05-23 12:25:46'),
('62012dfa11a988c7c57a93f3bc4109962bdb21574b100ce74794eaa665e4d8ac69cc7b7d0e19c6ae', NULL, 1, NULL, '[]', 0, '2020-01-27 11:24:34', '2020-01-27 11:24:34', '2021-01-27 11:24:34'),
('6280fdd03a295cc620314ad73c62181c8083bbec1b2e5ca295056a17410aa28465aa77fa9e3fbd3e', NULL, 1, NULL, '[]', 0, '2020-06-29 12:18:00', '2020-06-29 12:18:00', '2021-06-29 12:18:00'),
('62b655aaeae3aa3ea7bd0805bf63d3276c871a3284bf81ba95edcaad7ab2eaeb21b421812d513e9d', NULL, 1, NULL, '[]', 0, '2020-05-07 13:46:55', '2020-05-07 13:46:55', '2021-05-07 13:46:55'),
('634ccbd9b58eb38b079b0f8eb732ea3c7509e69f378aa1a3afcb99d9f58377914bbb1ee4ea7bf79b', NULL, 1, NULL, '[]', 0, '2020-07-25 11:16:11', '2020-07-25 11:16:11', '2021-07-25 11:16:11'),
('64560c9eb396042cf3aa91c5f6bbf47a7bb5119ade31b49afef787128c22403dd31fef08d68505e9', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:57', '2020-07-14 13:46:57', '2021-07-14 13:46:57'),
('645b98f505d532790aeb9df94b8c976146c235ff8d451b34915dcc9c3e6601f87584139ef1cd75e4', NULL, 1, NULL, '[]', 0, '2020-06-11 09:35:47', '2020-06-11 09:35:47', '2021-06-11 09:35:47'),
('6534427d62a169639410fc25e5ec57da0bf47f7d3055a73f7491acf2eaea75262b65621bd3cdf001', NULL, 1, NULL, '[]', 0, '2020-04-06 11:59:08', '2020-04-06 11:59:08', '2021-04-06 11:59:08'),
('66477b914bf1a8d204d2745190d87b4e7151294ab0d29ace98eaf6801718cde8b8d9c37f8c3accdf', NULL, 1, NULL, '[]', 0, '2020-05-23 05:01:16', '2020-05-23 05:01:16', '2021-05-23 05:01:16'),
('66a2f2831c15c29857180444be6edc9a88fcaf820ed018f4a5d17e176b6ed81dd3d85d4a4638c052', NULL, 9, NULL, '[]', 0, '2022-03-09 04:56:36', '2022-03-09 04:56:36', '2023-03-09 10:26:36'),
('6721d8571b10949d2299503a0ed7ecf9c5b3b8ffc018db739e12ac0d70609133ed1275f243c72612', NULL, 1, NULL, '[]', 0, '2020-06-20 07:57:10', '2020-06-20 07:57:10', '2021-06-20 07:57:10'),
('67d9a60c58ad08eba76665edb1cfd1a2aaa30a908a035c0c1303840fd4543f98fc0c0f49d4369664', NULL, 1, NULL, '[]', 0, '2020-04-06 10:56:09', '2020-04-06 10:56:09', '2021-04-06 10:56:09'),
('67e9b0445e41a8ecb348ea19dd0c3eb3723b209654502438e2de39ffe184b5eda2a9e3d17a76c968', NULL, 7, NULL, '[]', 0, '2021-08-05 00:15:47', '2021-08-05 00:15:47', '2022-08-05 05:45:47'),
('68d6bb2a3827f892eb0cdcc82f91d76ce91eb585d2fb428a18c8c30f711b2ece47ed32eb0a92ffca', NULL, 1, NULL, '[]', 0, '2020-03-18 08:48:53', '2020-03-18 08:48:53', '2021-03-18 08:48:53'),
('68fe89ef5d4b2fbaa118f142858e617ce8a41904fa37ee8162288d3ba51147f7ab989f13496f1ef3', NULL, 1, NULL, '[]', 0, '2020-11-03 12:26:04', '2020-11-03 12:26:04', '2021-11-03 12:26:04'),
('69395ea58ecda88974952070ce520888e8e747c446be7bbf5e8ca0a0d0edf17ed833e4aade70cc39', NULL, 1, NULL, '[]', 0, '2020-11-05 05:45:11', '2020-11-05 05:45:11', '2021-11-05 05:45:11'),
('69b539e41ac3e6a52d4879db770ceece407940ff53d369e9836d465192aa205b31eb64e8cf0c87c9', NULL, 1, NULL, '[]', 0, '2020-07-29 12:11:53', '2020-07-29 12:11:53', '2021-07-29 12:11:53'),
('6ad595a27ded61847436a8d07e857433ed5725a0913a61475f153f7358a26fee4fb9060445dc48ca', NULL, 1, NULL, '[]', 0, '2020-08-08 08:56:08', '2020-08-08 08:56:08', '2021-08-08 08:56:08'),
('6b29d2d37b8ae742bd9b41fc568ab8f1dac2abb5089488576d222c575bd2c3aad96763d41393b6e6', NULL, 9, NULL, '[]', 0, '2022-03-11 01:39:11', '2022-03-11 01:39:11', '2023-03-11 07:09:11'),
('6b5400885e05b7a48375bbd1b4c3133077ed3e95067ef1f31efc3a7439545622d812c3252ba781b9', NULL, 1, NULL, '[]', 0, '2020-07-24 07:02:38', '2020-07-24 07:02:38', '2021-07-24 07:02:38'),
('6b71001e1c1b552c5fef7414f3f8e670115e9913168b2ce6ee604a9b94b14d13835827bc8b744ca2', NULL, 1, NULL, '[]', 0, '2020-06-30 04:46:43', '2020-06-30 04:46:43', '2021-06-30 04:46:43'),
('6c92f558db6226deca9e25289a9d999614c53effaabb7a5c2039df7812de05294967e598d94fb0e4', NULL, 1, NULL, '[]', 0, '2020-07-21 13:30:03', '2020-07-21 13:30:03', '2021-07-21 13:30:03'),
('6ccef6f0ce3a70c5a946a5fc4900b16bba70ca21ed80c65685b93fd2654a8a8221d4c2017e5e56f3', NULL, 1, NULL, '[]', 0, '2020-11-03 12:23:50', '2020-11-03 12:23:50', '2021-11-03 12:23:50'),
('6cf9032d3c75adc9664bc392b4f5bd5e7c34067f203e444f8577754b7991ec298a6725d03cdf64be', NULL, 7, NULL, '[]', 0, '2021-08-17 23:48:58', '2021-08-17 23:48:58', '2022-08-18 05:18:58'),
('6e0314315b21905b36c2f5c4f7cf4d156eabc1c6238df4990246c23bea16f866e0488e7249826607', NULL, 1, NULL, '[]', 0, '2020-06-01 14:20:02', '2020-06-01 14:20:02', '2021-06-01 14:20:02'),
('6e63c88b1f924810abfccd4432dc89df7f5cffdc635bdc7bce3798558b8f6b23fb71be1540e48c77', NULL, 1, NULL, '[]', 0, '2020-04-06 11:47:46', '2020-04-06 11:47:46', '2021-04-06 11:47:46'),
('6f206fa07798a5b2b6614f60cf33ba7e37e7c7cc702ee4195b6962541cd0411a89031017cdd02ad9', NULL, 1, NULL, '[]', 0, '2020-07-20 13:39:32', '2020-07-20 13:39:32', '2021-07-20 13:39:32'),
('6f3d387462f44660cbf7995cdb39f5018d303e77f700dd3409c524d01b0db53fde97a7137e652dce', NULL, 1, NULL, '[]', 0, '2020-07-10 18:21:22', '2020-07-10 18:21:22', '2021-07-10 18:21:22'),
('6f877bbe96e05b432783666ee7cff9f8d750a59be5b0c2ba362884405fc273e9b18ed2fd11d58f20', NULL, 1, NULL, '[]', 0, '2020-08-08 10:49:44', '2020-08-08 10:49:44', '2021-08-08 10:49:44'),
('72020868ee2ce3b62757900522edac998d4b0dab4e2f25e4eda319dcf830346b2595870bb34afb1a', NULL, 1, NULL, '[]', 0, '2020-06-10 08:52:48', '2020-06-10 08:52:48', '2021-06-10 08:52:48'),
('724551d528aac2cb6715ba11cec097efbd8f82be7216e72297ae58ed5790629c640b6eaa5133b7e0', NULL, 1, NULL, '[]', 0, '2020-08-08 08:53:28', '2020-08-08 08:53:28', '2021-08-08 08:53:28'),
('72d9953c87c059474f7e8e3fb0378cf7b4d9deed47834062bf6fe0dfe40cd030b390552f11bc7fc3', NULL, 1, NULL, '[]', 0, '2020-11-05 06:03:55', '2020-11-05 06:03:55', '2021-11-05 06:03:55'),
('736eb527ca7ac35a94e7faf12e740130a4d9d7d5c3a82144f3c6028ffe00b87025946a4b6d67a6d1', NULL, 1, NULL, '[]', 0, '2020-05-25 05:08:56', '2020-05-25 05:08:56', '2021-05-25 05:08:56'),
('747a1b5a21bd27f8641bd2bf98a982ad305ca7e1a1c251e4aef33bc3dcde7a3f43a03e87d3437121', NULL, 1, NULL, '[]', 0, '2020-03-10 13:22:54', '2020-03-10 13:22:54', '2021-03-10 13:22:54'),
('74fbc6bb29e02e8af5804a25c9ab30c3b7279bb2498a045e596006db3bae76be640309c576fec40c', NULL, 1, NULL, '[]', 0, '2020-06-30 04:44:22', '2020-06-30 04:44:22', '2021-06-30 04:44:22'),
('75f4f68ab3b27cd7bbfc48392e252b73592b3a3395b6f18f314422597ddfede6d7ea380746f9bd3b', NULL, 1, NULL, '[]', 0, '2020-05-20 08:41:55', '2020-05-20 08:41:55', '2021-05-20 08:41:55'),
('75f9496918d335d9282895c55d02c67352e4ac91dcc505454aa01243860814b76104439ee0118506', NULL, 1, NULL, '[]', 0, '2020-07-27 06:11:53', '2020-07-27 06:11:53', '2021-07-27 06:11:53'),
('76fe67e0fef92bb6cf43296a131f4f65e4b1defe75600c7f28bebf6a9a4e83100c87e1b706ba29e3', NULL, 1, NULL, '[]', 0, '2020-07-24 06:53:29', '2020-07-24 06:53:29', '2021-07-24 06:53:29'),
('774989524f1c2776c3b3e543a645ab7e287bbf911e86f9ae53717b22bd0e20f09253a85cf332d18d', NULL, 1, NULL, '[]', 0, '2020-06-30 04:40:15', '2020-06-30 04:40:15', '2021-06-30 04:40:15'),
('787169a3b8a304afc7c6d54b9f17477a04ce4588e3587167286458e456c19bb314b0630b13cd70bc', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:57', '2020-07-14 13:46:57', '2021-07-14 13:46:57'),
('78b0b8ed6a6c7d5f7a654258d3ded7933334dfb44e83794d06f371d2948d547f750a65a00d9d9035', NULL, 1, NULL, '[]', 0, '2020-08-08 03:56:11', '2020-08-08 03:56:11', '2021-08-08 03:56:11'),
('797d0e8adf2536592b41141cb61085d9cf39c0a49e155416fbb8fe91ce2b9a3c76d89e6418ebf7d8', NULL, 1, NULL, '[]', 0, '2020-04-04 04:25:17', '2020-04-04 04:25:17', '2021-04-04 04:25:17'),
('79e8fd7d3bd852f6e9abd28ff3ccd217c099d27cfab5a31459581211b1c2be04922d83000aab0e99', NULL, 1, NULL, '[]', 0, '2020-03-19 10:20:40', '2020-03-19 10:20:40', '2021-03-19 10:20:40'),
('7a044d261871009b2fbc5bd999b1fb23466b7f2323ba89b81d1e05e565df6784cce45aa2604af121', NULL, 1, NULL, '[]', 0, '2020-03-30 07:18:32', '2020-03-30 07:18:32', '2021-03-30 07:18:32'),
('7a75e4803c14fc94b7a886cfeff69f24206078f8474451b7d155353a7f20287ee622a128ac49adec', NULL, 1, NULL, '[]', 0, '2020-02-20 12:46:51', '2020-02-20 12:46:51', '2021-02-20 12:46:51'),
('7ae0fae78dbfd598951b7ad4c0133706beba2235a3e259db774797e800831ceef75edff07316380b', NULL, 1, NULL, '[]', 0, '2020-07-08 13:36:07', '2020-07-08 13:36:07', '2021-07-08 13:36:07'),
('7ae80adff6e1527e717c76d3e1128c18f50a05cf1831a390d54be1c276aa9ba2a31a8572767b53cb', NULL, 1, NULL, '[]', 0, '2020-06-30 04:40:15', '2020-06-30 04:40:15', '2021-06-30 04:40:15'),
('7b3f075bca6dd13f7a24e6a5f382c502ae9a2255ef0ac420c466b6e7228563eef4f4e7b2f6709ba0', NULL, 1, NULL, '[]', 0, '2020-07-14 13:50:01', '2020-07-14 13:50:01', '2021-07-14 13:50:01'),
('7b74806ec554b915a8e4efff892ec676a2408b959fbc4f134eddc16febebd9604a0599e91e8f5acb', NULL, 1, NULL, '[]', 0, '2020-05-23 12:25:45', '2020-05-23 12:25:45', '2021-05-23 12:25:45'),
('7b9d0774ae034abacdfc06838e19ceae7653b7572bb02e96e30eb42ec01faf8ea4915b9a71d0d20a', NULL, 1, NULL, '[]', 0, '2020-06-30 04:42:24', '2020-06-30 04:42:24', '2021-06-30 04:42:24'),
('7bac39a5894f1d0fea3e20210582ad379662ddfb8140c336d2dedbef6de5feacf71878ca22c62eda', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:13', '2020-07-17 16:53:13', '2021-07-17 16:53:13'),
('7c22a9871398215d469fd3bb95a71663d2c6fd6b82b5e83b06f2285f2e45f9853457ce3bd5070b7b', NULL, 1, NULL, '[]', 0, '2020-06-11 09:40:44', '2020-06-11 09:40:44', '2021-06-11 09:40:44'),
('7c38cbe0de2032542501513116ce6721ae8876641571d37c19e863a4d68296dde12c3a11cfec737d', NULL, 1, NULL, '[]', 0, '2020-04-06 12:58:07', '2020-04-06 12:58:07', '2021-04-06 12:58:07'),
('7cbf053a1c737b92ba4bf336cb34362c112786d53bb4ade415875b4c3d362f73b4def2fb4bb29778', NULL, 1, NULL, '[]', 0, '2020-07-27 06:09:19', '2020-07-27 06:09:19', '2021-07-27 06:09:19'),
('7ed81068fdd2dc265fd32a56551042fa959e051a238bcbcb27b01c2baa3d7e35b9760626903a1656', NULL, 1, NULL, '[]', 0, '2020-07-17 16:53:49', '2020-07-17 16:53:49', '2021-07-17 16:53:49'),
('7f574ff0d979c4dd7aff0a061425c9ff3aade86a4dfa86eb458aef21bc123e664a8fd79cfff9cfdb', NULL, 1, NULL, '[]', 0, '2020-07-07 07:08:34', '2020-07-07 07:08:34', '2021-07-07 07:08:34'),
('80446d45d10ef37d005a0a6b9e0dabd5f2e99940596930b06077978aa846cc0ca9d9b670d70e0245', NULL, 1, NULL, '[]', 0, '2020-02-20 12:45:32', '2020-02-20 12:45:32', '2021-02-20 12:45:32'),
('8089fd88ba44a44d86ebff8af7b437278925a37cdf065f122e9142e5820565b3288a01d3d9af22a6', NULL, 1, NULL, '[]', 0, '2020-08-14 13:04:13', '2020-08-14 13:04:13', '2021-08-14 13:04:13'),
('819099cc03622169ed40d63a4724f7ce01a81a7a3e010ecafaa85f7a647681746baa0ffd3a48e143', NULL, 1, NULL, '[]', 0, '2020-07-24 06:53:29', '2020-07-24 06:53:29', '2021-07-24 06:53:29'),
('82d7d7562ef46539a3a71d71a34fc9d651a1f07963553965ef617f057b17735740c1f932c137716c', NULL, 1, NULL, '[]', 0, '2020-03-30 10:39:19', '2020-03-30 10:39:19', '2021-03-30 10:39:19'),
('83474471aa7fc0d696943558a2679c003ab66817b06bab4fd3fe97c25ad3956c140a77e949d34a52', NULL, 1, NULL, '[]', 0, '2020-11-05 06:02:26', '2020-11-05 06:02:26', '2021-11-05 06:02:26'),
('8365b6732ddbbb92dbbc565bddff60122b7418adcbfaf98598aed54ff6f3276f81b4e3b0ef6772cf', NULL, 7, NULL, '[]', 0, '2021-07-23 01:55:51', '2021-07-23 01:55:51', '2022-07-23 07:25:51'),
('83bceb135d66e29d0fe359d80d94b7fed05a7ea75f4ba57c8524e415be7714757230953ec48d5fe3', NULL, 1, NULL, '[]', 0, '2020-04-06 11:03:00', '2020-04-06 11:03:00', '2021-04-06 11:03:00'),
('841376f9b7c47cac820ec8cdc8e2b06d4c3412d16079ed904cebf9e65987e51d35b588b50a52b782', NULL, 1, NULL, '[]', 0, '2020-03-21 09:09:56', '2020-03-21 09:09:56', '2021-03-21 09:09:56'),
('85a434f4e82d7806c646d6a76974a3b566790f1ed9849860963ccd2ccecc28e6ffffdd269647d6c3', NULL, 1, NULL, '[]', 0, '2020-03-30 07:08:37', '2020-03-30 07:08:37', '2021-03-30 07:08:37'),
('85fda9babc50b6c8943c489fa1fecbdb4b2c748564d92027488784d017cbd434ad9a2c91754f4222', NULL, 1, NULL, '[]', 0, '2020-07-24 06:58:18', '2020-07-24 06:58:18', '2021-07-24 06:58:18'),
('862b1745d38bbaad8798c7895ab74052c7e4ecfc8ca9dbaab5b51395a89401a2967850d6b04dd3d9', NULL, 1, NULL, '[]', 0, '2020-07-21 14:02:47', '2020-07-21 14:02:47', '2021-07-21 14:02:47'),
('8692370f8e65a4786575a287dc2be39ed94454b901c5a79842fe43145939c95bea51f8a03c6b76bf', NULL, 1, NULL, '[]', 0, '2020-07-17 17:04:24', '2020-07-17 17:04:24', '2021-07-17 17:04:24'),
('870a984a0a57eef691e5f6e0aa0ab2447c3e28fa650612798307f37b561c9cb0a80017ac072fa104', NULL, 1, NULL, '[]', 0, '2020-07-27 06:04:35', '2020-07-27 06:04:35', '2021-07-27 06:04:35'),
('871254a3f66a26e332f7f4e0059e00890d989b12565cf7a8ce6d727288ccb98e27b9095e0ceaa5b8', NULL, 1, NULL, '[]', 0, '2020-03-30 10:49:49', '2020-03-30 10:49:49', '2021-03-30 10:49:49'),
('8725b8cca897c89377bfbcea8648af925b0b4ff5ea39fb39e92ab44dde5e89a7dc8739ccfb0fd3ef', NULL, 1, NULL, '[]', 0, '2020-07-14 13:52:47', '2020-07-14 13:52:47', '2021-07-14 13:52:47'),
('88601f04fa9a78d7be1f61ddfe9f704934c4a3eca7789acbd10f2b555d14530c704d2b2463b3f44e', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:21', '2020-07-13 15:05:21', '2021-07-13 15:05:21'),
('88e1995e5593bff965203a7903930fefdfb0d663b933db417746b6c596c808122f3521f3a6ce5186', NULL, 1, NULL, '[]', 0, '2020-04-13 11:15:37', '2020-04-13 11:15:37', '2021-04-13 11:15:37'),
('896af993dcb0e962e83fb5ca9fc547b8a23cc19b2fda52b973aa6bc1d2a78c0b9bd162c968e7af4f', NULL, 1, NULL, '[]', 0, '2020-03-19 05:17:18', '2020-03-19 05:17:18', '2021-03-19 05:17:18'),
('89ae2592fb221816d5aa96a3a940172636cce0900be5e211dd0d140c826b414e92cec2f9e0c6862f', NULL, 1, NULL, '[]', 0, '2020-06-29 12:18:00', '2020-06-29 12:18:00', '2021-06-29 12:18:00'),
('89da894de310590372b12f6cef7070466b163df9472e070f2168a3523490c62e01aaa2d02ed88117', NULL, 1, NULL, '[]', 0, '2020-07-10 18:12:31', '2020-07-10 18:12:31', '2021-07-10 18:12:31'),
('8b99fec5c7367c7bcce1e17142ad27dddd727817b7668df34260e6ebb9c763b14851438c6aec6367', NULL, 1, NULL, '[]', 0, '2020-03-05 10:35:02', '2020-03-05 10:35:02', '2021-03-05 10:35:02'),
('8c5810c8f7207b3a796b50088fc8902bf2789d98e42bdad0d13ef6ec96ac32e9ecabf90ca54434b4', NULL, 1, NULL, '[]', 0, '2020-06-20 07:58:41', '2020-06-20 07:58:41', '2021-06-20 07:58:41'),
('8c6f9db60773875eec49babac16cac38c5a5e27e62fcc9d580cdb5ff1f4a156cb726f7677a597c28', NULL, 1, NULL, '[]', 0, '2020-04-06 11:39:20', '2020-04-06 11:39:20', '2021-04-06 11:39:20'),
('8cb13a9c512282a1960ed47ff2b925a9f84e08fa642ef48079f0e3d9fad820efe16fab708141b082', NULL, 1, NULL, '[]', 0, '2020-03-20 10:18:26', '2020-03-20 10:18:26', '2021-03-20 10:18:26'),
('8d4ddf8ac378647dce20903a40faff3344a9affd06e37bb617ade8733ceb07136ecce522a7a7dcf3', NULL, 1, NULL, '[]', 0, '2020-07-10 18:20:29', '2020-07-10 18:20:29', '2021-07-10 18:20:29'),
('8daddf97eddfa4b08223f8b576b0d3a50287ba922888f03233d2c8aa3f9b568c72d40a7e2bc4a91e', NULL, 1, NULL, '[]', 0, '2020-08-14 12:40:28', '2020-08-14 12:40:28', '2021-08-14 12:40:28'),
('8dbf7af592b5745bb6780bb0ee4d472029c24ea09f2758cdda8562c30e977862b8dcdcb6083485c9', NULL, 1, NULL, '[]', 0, '2020-11-03 12:26:04', '2020-11-03 12:26:04', '2021-11-03 12:26:04'),
('8e1390bf519b97cab1b6f3ae75f84ab566373bed4a0a30435ed66794cbbd1d02ff0237a420d476d8', NULL, 1, NULL, '[]', 0, '2020-06-24 08:44:06', '2020-06-24 08:44:06', '2021-06-24 08:44:06'),
('8e633b2b55b7cfdf67b268bab327543f54ba8fa5df234af29f742c159309f4cee78e8b4ed7c8eb6b', NULL, 1, NULL, '[]', 0, '2020-07-21 13:41:02', '2020-07-21 13:41:02', '2021-07-21 13:41:02'),
('8ebd19d15b15fd7c16d3de9559b3ff41292eed43dd32c9e711f7b66daaeaea7c41bf28ab5cd83b2e', NULL, 1, NULL, '[]', 0, '2020-02-12 11:18:18', '2020-02-12 11:18:18', '2021-02-12 11:18:18'),
('8fa51c6d0c64825a4f1ce9501fabb1b8ed8341e0021bbf7e59d8facedff60d280421778ff0a3dcb6', NULL, 1, NULL, '[]', 0, '2020-06-09 13:17:42', '2020-06-09 13:17:42', '2021-06-09 13:17:42'),
('8fae38786d6d83e423ec736bdcfe059760d90910cdc687fd80f4d62cee24c10ba678fc29414e8833', NULL, 1, NULL, '[]', 0, '2020-07-28 12:29:02', '2020-07-28 12:29:02', '2021-07-28 12:29:02');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('8fdc44c20946bc3f344ffbd0b83e37aa88fa92757d2e15759985517ef4d7d1bd201d4f237b16137e', NULL, 1, NULL, '[]', 0, '2020-07-24 06:54:36', '2020-07-24 06:54:36', '2021-07-24 06:54:36'),
('901513588db17ab89865832ddf4d619c44b842ad2093594d6c3e9e361f0903a1d081d11a9380bfca', NULL, 1, NULL, '[]', 0, '2020-07-25 11:17:01', '2020-07-25 11:17:01', '2021-07-25 11:17:01'),
('9037ddf7054a3391989e69b5e925ba81a104eb76a7424b782cfd08658e6100b1b08b82ebc71936a8', NULL, 1, NULL, '[]', 0, '2020-04-13 10:58:40', '2020-04-13 10:58:40', '2021-04-13 10:58:40'),
('905a8dcc4267612b132b492637d41fd89358cc664ca3da439e444383d759346912401c37484c7076', NULL, 1, NULL, '[]', 0, '2020-07-28 12:28:30', '2020-07-28 12:28:30', '2021-07-28 12:28:30'),
('908a40b5b52dfdf9e2d137d833419f86bcfd00185cdc2a1b7da17ec1d389fdc194893ed38f0a33a3', NULL, 1, NULL, '[]', 0, '2020-07-13 15:04:10', '2020-07-13 15:04:10', '2021-07-13 15:04:10'),
('90b048497c81a25eb25b58682d746f68ce7cde30f92a3a057a04c31ba548d00890d10866d8457485', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:02', '2020-08-08 10:58:02', '2021-08-08 10:58:02'),
('90d1d7dc47505ef6e74290be93a7b2c086bbcc2fe40ee5fd44c802a41cbc38c05f51ccd19228ff1c', NULL, 1, NULL, '[]', 0, '2020-11-03 10:54:03', '2020-11-03 10:54:03', '2021-11-03 10:54:03'),
('90e812cbfb9c33031afd5275c86ab930ef98faf5dffdf1e3c72d9eef0d06fba9c0556de84af05fb9', NULL, 1, NULL, '[]', 0, '2020-02-03 18:00:18', '2020-02-03 18:00:18', '2021-02-03 18:00:18'),
('91466fdfd393fcf4b0bc98caec92ef0e5a4776a2abad6126a85a90bd8d16f5c12e831a33ab7e52a2', NULL, 1, NULL, '[]', 0, '2020-03-30 05:36:38', '2020-03-30 05:36:38', '2021-03-30 05:36:38'),
('91826ea85a0d618f56b722ee52f98501f8c8b0d668d0162fdf5750cc2fe393ef3fa1abf7833b0772', NULL, 1, NULL, '[]', 0, '2020-04-06 11:39:18', '2020-04-06 11:39:18', '2021-04-06 11:39:18'),
('91bc151ff23c39dc3a88524c20630c2d436898c5e83ced89805caed1e6a539b376a5da9989eb2a20', NULL, 1, NULL, '[]', 0, '2020-07-25 11:16:37', '2020-07-25 11:16:37', '2021-07-25 11:16:37'),
('91c95da532817fd3dc46b64a79d6b69bd2a0285cb4dff2e282a11cfbf966f2c15bc34203451b9884', NULL, 1, NULL, '[]', 0, '2020-06-11 09:41:40', '2020-06-11 09:41:40', '2021-06-11 09:41:40'),
('9248912805d52592b83199dd2905ff9ee25a42bc9e57690cf280a39d5574731f1c6caf9656479abc', NULL, 1, NULL, '[]', 0, '2020-11-03 10:26:17', '2020-11-03 10:26:17', '2021-11-03 10:26:17'),
('9282c5cb3b1210dd3b97324bc22c726f45966ff794705c70d4ea030e48395619a5ee2909782758e2', NULL, 1, NULL, '[]', 0, '2020-03-19 10:23:13', '2020-03-19 10:23:13', '2021-03-19 10:23:13'),
('92e90d401a3c0e0cbe75bc754394111b5ab8b5c06fc81534140e5967ca8193fcfe5d8c369b4f422a', NULL, 1, NULL, '[]', 0, '2020-07-28 12:16:13', '2020-07-28 12:16:13', '2021-07-28 12:16:13'),
('93af45d897ce4be51f92af20328d966efcb7d00f6d5e5b7eb4ca1f233a54ce665d75f2c35bcf9743', NULL, 1, NULL, '[]', 0, '2020-07-10 18:18:06', '2020-07-10 18:18:06', '2021-07-10 18:18:06'),
('94290446c859f9dbb2b1858aa39901a0fa425b4b7945cc492423a58632975f9b5036c47d579f7b7f', NULL, 1, NULL, '[]', 0, '2020-07-06 11:11:53', '2020-07-06 11:11:53', '2021-07-06 11:11:53'),
('974884a466be0478c950c3fedd807af7df466b4b5425f27bb90d91b048299b5d8de663cc7193fd69', NULL, 1, NULL, '[]', 0, '2020-07-21 13:58:30', '2020-07-21 13:58:30', '2021-07-21 13:58:30'),
('975f630261006bb02689fee43eccb9ed79bad010ef5bcb43469ab9d3ae786194aafc50ca8873e29f', NULL, 1, NULL, '[]', 0, '2020-02-19 12:11:42', '2020-02-19 12:11:42', '2021-02-19 12:11:42'),
('97fdcc2625e44e44a9e2866476cc2a564fcc95533d0bab55ab1b2c22fdd0c7e22f183aa30507db26', NULL, 1, NULL, '[]', 0, '2020-03-23 09:53:25', '2020-03-23 09:53:25', '2021-03-23 09:53:25'),
('98624e05fd22ac92352f3f04bacee70206fd808f791a96aa5c5f47ff326f5623bd2b904c84277b2a', NULL, 1, NULL, '[]', 0, '2020-07-13 14:45:17', '2020-07-13 14:45:17', '2021-07-13 14:45:17'),
('9a80b38676a27ff31c8205f1c537b58c4cb1e016ae77afd6ae6f939a40fa73e77fb018fd7bc8649a', NULL, 1, NULL, '[]', 0, '2020-07-10 18:22:02', '2020-07-10 18:22:02', '2021-07-10 18:22:02'),
('9b9d3c8cce19d72604269c61cef927637b4951b60c0e4311b4717627157a346c6f6c736da9151626', NULL, 9, NULL, '[]', 0, '2022-03-12 02:25:04', '2022-03-12 02:25:04', '2023-03-12 07:55:04'),
('9c146334d21622898e7d734f91e456421b58dc8d841badd69f70958c33f59a89cb1b756013ad9385', NULL, 1, NULL, '[]', 0, '2020-07-13 14:53:15', '2020-07-13 14:53:15', '2021-07-13 14:53:15'),
('9c478562736de7bc52261acb2f43836839874883c9a2475fad9e47ea7df8515c2843b29bd755496f', NULL, 1, NULL, '[]', 0, '2020-07-28 12:16:13', '2020-07-28 12:16:13', '2021-07-28 12:16:13'),
('9ccca6f4bae4aadf4a2953958e912f3f959f8a6c8e669a3cfc7b8fec60c80c470d709da1024a9c19', NULL, 1, NULL, '[]', 0, '2020-07-10 18:27:12', '2020-07-10 18:27:12', '2021-07-10 18:27:12'),
('9ddb86203a99de2fcd2d9559a3deba2a19b5ca9afa137cc5b1dce4ad242b81e5a7af0e579b95e58d', NULL, 1, NULL, '[]', 0, '2020-06-09 09:40:40', '2020-06-09 09:40:40', '2021-06-09 09:40:40'),
('9ecdc524691970d10095dcf416f1796130a49424f041b0bb7b7374e707b9f21a7e0dc6ec10808595', NULL, 5, NULL, '[]', 0, '2021-05-31 23:39:00', '2021-05-31 23:39:00', '2022-06-01 05:09:00'),
('9efc74ce49fe40cf647f5f4b387eb73cf89539417974a70a10fb55c35dcce621da134f0edf8f4880', NULL, 1, NULL, '[]', 0, '2020-11-03 10:10:21', '2020-11-03 10:10:21', '2021-11-03 10:10:21'),
('9f153c81b4dc8527671583b42a4a0a7928f12208d6696ab809ff90da596ca41da5d67f37d5bbe64d', NULL, 1, NULL, '[]', 0, '2020-07-29 14:51:08', '2020-07-29 14:51:08', '2021-07-29 14:51:08'),
('9f47deb0627ff4e55684da8117cd26351173469d847c8473d47426046e6e48e84b7ffe1664e57ccb', NULL, 1, NULL, '[]', 0, '2020-07-29 12:04:13', '2020-07-29 12:04:13', '2021-07-29 12:04:13'),
('9f5cca5f6f2c727789fbc8568342a7825d85048c66dcff09424bf4ef247ebe73ec10af87c8bd716c', NULL, 1, NULL, '[]', 0, '2020-03-19 04:38:30', '2020-03-19 04:38:30', '2021-03-19 04:38:30'),
('9fb5d62e74aa29d7c4c00bba19ad0e4261ee65de86f5c8127c85be0f6aca1932e24b1f5f6d89610e', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:12', '2020-07-14 13:46:12', '2021-07-14 13:46:12'),
('a093e47e886360c189345618f3954014a92a42f6ed85f739e1945873a3732cd6b9e46692d3701f12', NULL, 1, NULL, '[]', 0, '2020-07-28 12:18:54', '2020-07-28 12:18:54', '2021-07-28 12:18:54'),
('a0df233dd7c65ef6c9929e467f9b3129575a0102c3b010f1dbce6e07e7e06407ba364b22656c3276', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:45', '2020-08-08 10:58:45', '2021-08-08 10:58:45'),
('a1dc30791a81f036d91b9473567eb3dfd0ac26cc35b223fa9bddbd4d369eca80434336385546951d', NULL, 1, NULL, '[]', 0, '2020-07-28 12:17:47', '2020-07-28 12:17:47', '2021-07-28 12:17:47'),
('a2539afa7c255c4d8c6a8f4cb2a7d88a44e5569ff4d6a98d174a3d09c2b26c01befa28636a1a2889', NULL, 1, NULL, '[]', 0, '2020-07-28 12:19:39', '2020-07-28 12:19:39', '2021-07-28 12:19:39'),
('a276fca2e61e970a48922da791cc666e922f49f8474917a5fbb10adf3719425c6fd572e826f613f1', NULL, 1, NULL, '[]', 0, '2020-07-27 06:52:38', '2020-07-27 06:52:38', '2021-07-27 06:52:38'),
('a28e87720af016b7e6b580f2ec92065f1ab7da5903c77954ea38c2aefea7909cc90e8800b99f1c0b', NULL, 1, NULL, '[]', 0, '2020-05-23 11:38:55', '2020-05-23 11:38:55', '2021-05-23 11:38:55'),
('a2e838b0731697d00d75eb1b338aab3a0121749b858e8ae53c97e076df7e548d41b33bc558a3a50b', NULL, 1, NULL, '[]', 0, '2020-07-14 13:50:50', '2020-07-14 13:50:50', '2021-07-14 13:50:50'),
('a3ccedb93c124d986caafb65ad8def1a576449f6014cc2de8f713b70e044779ba512769b45bf37a8', NULL, 1, NULL, '[]', 0, '2020-07-24 07:01:17', '2020-07-24 07:01:17', '2021-07-24 07:01:17'),
('a3df23077a3dcc711aaf4d48bd122d07dc952b20d3dd327e1b63385fccd3bf6ae64cd2904e3e09e1', NULL, 1, NULL, '[]', 0, '2020-06-10 08:51:00', '2020-06-10 08:51:00', '2021-06-10 08:51:00'),
('a3fd1e49e9f5e6da3d82347d08b719b3c5e692cfc6fdd44952195e79b7ea6a8078a0e907a361c8c6', NULL, 1, NULL, '[]', 0, '2020-07-14 13:51:09', '2020-07-14 13:51:09', '2021-07-14 13:51:09'),
('a45d4c8c86c2fc16b26e5823b59d1cf433b5dab9a79c8e908787dc34ae9a448ca621477fa2e0c655', NULL, 1, NULL, '[]', 0, '2020-07-10 18:15:34', '2020-07-10 18:15:34', '2021-07-10 18:15:34'),
('a549320ae93b84da72b13568f5409907bc9c79f5de75fb46d9e209dd407eee14cdece34fbe78e55c', NULL, 1, NULL, '[]', 0, '2020-06-19 12:07:40', '2020-06-19 12:07:40', '2021-06-19 12:07:40'),
('a5cdb8d69ae2235f8fa13c1a72bcd7d295cb6d369949388be04d5cecc635cb2e3f5eadbcf3fafcf2', NULL, 9, NULL, '[]', 0, '2022-03-08 10:51:51', '2022-03-08 10:51:51', '2023-03-08 16:21:51'),
('a5fb5863cc2ecd3f8e7865474a868c907baf0e17abcc151733d79241e7b9155c763706c868526260', NULL, 1, NULL, '[]', 0, '2020-02-13 11:19:17', '2020-02-13 11:19:17', '2021-02-13 11:19:17'),
('a6182c1697ace6ab2a8c674e8b0b4af0ce3db21ce5958ae5db590d0a655baa9bd9b05f981fb78c3b', NULL, 1, NULL, '[]', 0, '2020-06-11 09:35:47', '2020-06-11 09:35:47', '2021-06-11 09:35:47'),
('a6c8c75fd5e1abb4bfe2c6da61a4258d4f5d76f2db20b186d0f9dfbc3d8b586ec1b6b74030f11f18', NULL, 1, NULL, '[]', 0, '2020-07-21 13:28:14', '2020-07-21 13:28:14', '2021-07-21 13:28:14'),
('a70c52994fee32c61811d1d9a9a605263510c93f0d8e064af2a789a84b6211dd1fd788b3170f134a', NULL, 1, NULL, '[]', 0, '2020-07-06 11:11:53', '2020-07-06 11:11:53', '2021-07-06 11:11:53'),
('a73417bec8673cdfd942b3514ed9bb4d5802ebfd23702c348b39a0acd65b4f09cc7e95199d19f854', NULL, 9, NULL, '[]', 0, '2022-03-08 06:58:56', '2022-03-08 06:58:56', '2023-03-08 12:28:56'),
('a7e90ef665eca36d5a5c7c1ec1f28756c742252c61a4cde825639e07f17ce6a0749571a3c16dee04', NULL, 1, NULL, '[]', 0, '2020-03-21 10:37:07', '2020-03-21 10:37:07', '2021-03-21 10:37:07'),
('a7f517cd7a8541e7a775a4478b090ca290ca661f0fb8f6bbb952c2a4a427b94cbd71858c52b6af87', NULL, 1, NULL, '[]', 0, '2020-07-21 13:59:39', '2020-07-21 13:59:39', '2021-07-21 13:59:39'),
('a7fb8de322882963e411cea641e5b93d3c9f9e79aaaf7a22660b2df4e9e9be5fcb64627620f2eb89', NULL, 1, NULL, '[]', 0, '2020-07-25 11:18:54', '2020-07-25 11:18:54', '2021-07-25 11:18:54'),
('a80a370e23db0991c1e1750aa258a240ae8cf94de45a99661c6030ce148488ca873f70f3aa70b6d8', NULL, 1, NULL, '[]', 0, '2020-07-25 11:18:10', '2020-07-25 11:18:10', '2021-07-25 11:18:10'),
('a80f3af913a37da64a843baf6bac8c06fc9431a9689f288e337ae5b8b02a39d92816345a57816ba0', NULL, 1, NULL, '[]', 0, '2020-02-07 04:54:39', '2020-02-07 04:54:39', '2021-02-07 04:54:39'),
('a81ece51d9bed903a58b8459cfc79f430f64463be1eaa3263680fe6c006b07bf4c09ad09e8748c45', NULL, 1, NULL, '[]', 0, '2020-02-03 17:45:14', '2020-02-03 17:45:14', '2021-02-03 17:45:14'),
('a81fbccbc92054d322115e74badeb4a1dd52bfa12eea9836d4640b80fa900620cdd0a30cf21afe9e', NULL, 1, NULL, '[]', 0, '2020-07-20 08:01:00', '2020-07-20 08:01:00', '2021-07-20 08:01:00'),
('a8fb4a46402105abeafc22c4843487e98a88ea9f7aa840da3e7048a5555ea11460225cfefd832a65', NULL, 1, NULL, '[]', 0, '2020-07-24 06:52:39', '2020-07-24 06:52:39', '2021-07-24 06:52:39'),
('a931cf9b7d493b8ebb8fdbbaf8d8e14ca04cf4e42728d5cada54b40bed2e6be68a83068eb78614bf', NULL, 1, NULL, '[]', 0, '2020-05-14 08:12:30', '2020-05-14 08:12:30', '2021-05-14 08:12:30'),
('a96db3ea0a26c76edfe8577bc54592e37712b33821456e81bfcd6befcbd4398a99656a91fae2042b', NULL, 1, NULL, '[]', 0, '2020-05-23 11:57:29', '2020-05-23 11:57:29', '2021-05-23 11:57:29'),
('a9839d02935c9f46ec1b8e60dbdb8397fb3d547f1afeac136cfab1018db47f5f5b4383546412d37c', NULL, 1, NULL, '[]', 0, '2020-08-08 10:44:29', '2020-08-08 10:44:29', '2021-08-08 10:44:29'),
('a9be313289309224f820b8a78f380479e3c38a1caae7fc56dcb2e1f96b627d5187f0e5a7e37666aa', NULL, 1, NULL, '[]', 0, '2020-06-30 04:44:23', '2020-06-30 04:44:23', '2021-06-30 04:44:23'),
('aa975dea210fb9c9640ab7eb3dc00b60f207e61673b45c0d531ba9507719e62a147e69d2511ce797', NULL, 1, NULL, '[]', 0, '2020-05-23 12:23:56', '2020-05-23 12:23:56', '2021-05-23 12:23:56'),
('aaf4d47d5ecc4892751e5dd915e396d3ed1e44380d60c4f8eed3825ed22e2540dddaec5d79e2a948', NULL, 1, NULL, '[]', 0, '2020-06-10 08:51:00', '2020-06-10 08:51:00', '2021-06-10 08:51:00'),
('ab659fdfdf65a6a8468b006018ddf75426e32ad34c06f0e1637afe2efa9520c749e152991a975038', NULL, 1, NULL, '[]', 0, '2020-07-21 13:46:08', '2020-07-21 13:46:08', '2021-07-21 13:46:08'),
('abd0674345364db24b9f3cba6fba4ad0e291d6d6bd908193ec2522ce7824bf21d27e837933b5f545', NULL, 1, NULL, '[]', 0, '2020-06-09 09:40:40', '2020-06-09 09:40:40', '2021-06-09 09:40:40'),
('ada6e38e41f2b2361eb9df48e533baffb321be78180990507ca473d273692b1d2b61a488ee4cb816', NULL, 1, NULL, '[]', 0, '2020-11-03 06:48:05', '2020-11-03 06:48:05', '2021-11-03 06:48:05'),
('adab8b994b1072a97fff6677ef57cfd29f42615fe8328b045efdec1597ec38c549981186c8147eaa', NULL, 1, NULL, '[]', 0, '2020-06-11 11:51:11', '2020-06-11 11:51:11', '2021-06-11 11:51:11'),
('ae2b0db551ade76813497f5753e4d56ee28061d33cfb891ce90cbc4d139fa6563487789fcaeeaa42', NULL, 1, NULL, '[]', 0, '2020-06-24 08:42:28', '2020-06-24 08:42:28', '2021-06-24 08:42:28'),
('ae6a9140bd38bb718c82d4d8f769105f9e83e4f085b1aa315a5c97c8f1a50711e4e2764538015e8e', NULL, 1, NULL, '[]', 0, '2020-03-21 09:11:08', '2020-03-21 09:11:08', '2021-03-21 09:11:08'),
('aed7c5dd61313b8808c6a76539ee7b58f9d9beb1b593c8354b27c445cced023a5d22f687cb6d00ad', NULL, 1, NULL, '[]', 0, '2020-07-13 14:44:27', '2020-07-13 14:44:27', '2021-07-13 14:44:27'),
('af1fc9580969f9145e3a1df6027df78b3ae10f27de71c1c0514dbb6afd7527dc616f7fe747575dee', NULL, 1, NULL, '[]', 0, '2020-07-13 14:53:47', '2020-07-13 14:53:47', '2021-07-13 14:53:47'),
('b015b5a62cd116b7540735becce42483d0e8e3c6c98aa396c2b4899a01b04a9b6e58114fbb5bcb7e', NULL, 1, NULL, '[]', 0, '2020-05-23 11:38:55', '2020-05-23 11:38:55', '2021-05-23 11:38:55'),
('b03210169be88294c1de385d7ae9da1d785ef1fc89d4a5f582a73f8552b49428d73d34451688829b', NULL, 1, NULL, '[]', 0, '2020-06-10 08:49:39', '2020-06-10 08:49:39', '2021-06-10 08:49:39'),
('b04b8c1c76711abfed9042eaef7762ea61fefd3e17a1b0aa21343c05608755eea261b8ce8cb585b8', NULL, 1, NULL, '[]', 0, '2020-08-14 13:02:38', '2020-08-14 13:02:38', '2021-08-14 13:02:38'),
('b05b7a829a995b1d171e522c6dd2a4be4966b8213c846b7b1362a3428f5a1f53f5d18d4db67ac8e4', NULL, 1, NULL, '[]', 0, '2020-08-08 10:47:23', '2020-08-08 10:47:23', '2021-08-08 10:47:23'),
('b08d46f591f0bd08464e8ed8decf67ff9e8e7a9dea705a63620ac803c185d5ebeadd6a3122364c5c', NULL, 1, NULL, '[]', 0, '2020-07-21 13:41:02', '2020-07-21 13:41:02', '2021-07-21 13:41:02'),
('b120863484679dcddcdde36c2600aa2d76347532db6cfb31b4d78a37659ceb9630ce7041bb1719bb', NULL, 1, NULL, '[]', 0, '2020-08-08 10:49:21', '2020-08-08 10:49:21', '2021-08-08 10:49:21'),
('b13b9c28334ecd9bbbc2b8f9fc5c4643fb2b9289e63a4993fab990ebd6d5146b79adc1eb1483ddb9', NULL, 1, NULL, '[]', 0, '2020-04-11 04:45:24', '2020-04-11 04:45:24', '2021-04-11 04:45:24'),
('b22c15494ea54329929caa4e3f055ce37df0e352f48f5f3c0dd63b5dedf4b9c2b886450b29cfec81', NULL, 1, NULL, '[]', 0, '2020-02-19 11:51:30', '2020-02-19 11:51:30', '2021-02-19 11:51:30'),
('b2319fe57bc79b71c6786e0fb5c50bd6f4163791df1d5605678e5f2d4bbf4451c5fa1d5b5969f6cb', NULL, 5, NULL, '[]', 0, '2021-05-20 00:55:13', '2021-05-20 00:55:13', '2022-05-20 06:25:13'),
('b264369aeb8ac4ca51cfec4e4ac554b7bc830336eb60d58ea1ed9aafc1803033999c5e1a38beddca', NULL, 1, NULL, '[]', 0, '2020-08-08 03:56:11', '2020-08-08 03:56:11', '2021-08-08 03:56:11'),
('b3131762c7463c1e7511827d559fdc246801ef99017d77471e23e4f25cdfa38c79939831e00a2c4d', NULL, 1, NULL, '[]', 0, '2020-05-30 11:01:22', '2020-05-30 11:01:22', '2021-05-30 11:01:22'),
('b3211be5bb807848835e8c98adec9b6900bafc9d04669b2269f3d36e597db2b37618c4f6554fff03', NULL, 1, NULL, '[]', 0, '2020-03-30 10:27:59', '2020-03-30 10:27:59', '2021-03-30 10:27:59'),
('b3b322d2e3580a682faddc067f710d50b79017aec97fd64764998394c6e67a0c2b5bcd814e6d41ea', NULL, 1, NULL, '[]', 0, '2020-03-19 12:10:14', '2020-03-19 12:10:14', '2021-03-19 12:10:14'),
('b3cadd536830c54b3d1a3db510d14b4a0844f5ef41534b9db63d360432f7db55ed4db6310d7cc93c', NULL, 1, NULL, '[]', 0, '2020-08-14 13:02:38', '2020-08-14 13:02:38', '2021-08-14 13:02:38'),
('b3eeeeb0bd22df70f968fc9323dd1a9c8ecf2e2846388d4efcf39af93b3a30e5934b75f1f265b355', NULL, 1, NULL, '[]', 0, '2020-02-03 18:04:01', '2020-02-03 18:04:01', '2021-02-03 18:04:01'),
('b3f356352327f4b0248a0ef4851f68a042742cae32cf323a2835dae43af82bbdd5433184377c5d13', NULL, 1, NULL, '[]', 0, '2020-07-25 11:18:32', '2020-07-25 11:18:32', '2021-07-25 11:18:32'),
('b428b93f11965327f8e9d7acc1ab2faadb6978f620fbbaebeaf5ac92ab42220a1f2aaf8d95064cbc', NULL, 1, NULL, '[]', 0, '2020-03-30 10:24:43', '2020-03-30 10:24:43', '2021-03-30 10:24:43'),
('b45d9b4a01a30a6ce47becdbf77ae22b7f2d2f1ef86efb6750dc9008ddcc828687c8bfb2e19be39a', NULL, 1, NULL, '[]', 0, '2020-07-30 10:17:39', '2020-07-30 10:17:39', '2021-07-30 10:17:39'),
('b51fd313adb819c9220a9ee6bb1aed3a2782ee8611dec209eec08a77934e74f85a3c4e2979d277e0', NULL, 1, NULL, '[]', 0, '2020-07-17 16:59:09', '2020-07-17 16:59:09', '2021-07-17 16:59:09'),
('b5a0eedb1b0bd7004dcc1a003d1d16867887237a73d6b5e770729b91e8660515c586a88e5a38a305', NULL, 1, NULL, '[]', 0, '2020-03-23 15:15:20', '2020-03-23 15:15:20', '2021-03-23 15:15:20'),
('b5c2f079d0957fb46c2976620e5af0a6e80bd15cca62905f34cb8ecd8ad7d1604c26387c18a664f1', NULL, 1, NULL, '[]', 0, '2020-03-30 07:18:31', '2020-03-30 07:18:31', '2021-03-30 07:18:31'),
('b5f0c459fcd62b0df77de65852d3a61fcdaa97689a033ea20774f5b7b64fbaeb185fa5efa4c41afa', NULL, 1, NULL, '[]', 0, '2020-07-29 14:52:01', '2020-07-29 14:52:01', '2021-07-29 14:52:01'),
('b63a5a03deb6a07e9e48779f85d9f4bd2bcafd3b7e71d8f7c0d30847b0ea5f451a50b5e52a1323c4', NULL, 1, NULL, '[]', 0, '2020-06-09 13:18:23', '2020-06-09 13:18:23', '2021-06-09 13:18:23'),
('b6f9cd3bd91c3404cd981ff5d0dba7cb452cd750d6b47feaf08e38a8c0bbf3e87b14d2898827ed28', NULL, 1, NULL, '[]', 0, '2020-09-15 06:34:22', '2020-09-15 06:34:22', '2021-09-15 06:34:22'),
('b7078592d9ea2fdfd0fe1a6862479c9aaab9b4ae3bc8508446411695ef3c1cc767041d35ead94d53', NULL, 9, NULL, '[]', 0, '2022-03-12 02:23:01', '2022-03-12 02:23:01', '2023-03-12 07:53:01'),
('b754ef70f08b5cebe86921ee5fc04e45506ab4d7446a460895f0e1985b33703666169467c4e85835', NULL, 1, NULL, '[]', 0, '2020-11-05 06:03:55', '2020-11-05 06:03:55', '2021-11-05 06:03:55'),
('b7fbb5682565edc18f17db7e2abff3d0e81d58b54de1539b3d606a2c7e85a365e23753867c64f241', NULL, 1, NULL, '[]', 0, '2020-03-30 07:01:58', '2020-03-30 07:01:58', '2021-03-30 07:01:58'),
('b83f9ca7f2c468e5d1df01b3c3c423dab142b5c33b06826179b998a3a89c56508f5efe9b55a566dd', NULL, 1, NULL, '[]', 0, '2020-07-29 12:03:11', '2020-07-29 12:03:11', '2021-07-29 12:03:11'),
('b8587c41ad358601ec5edd4288a374b1517ab59f0852ed555f586a46a76dd8631a18d7c2f33d9691', NULL, 1, NULL, '[]', 0, '2020-07-10 18:24:38', '2020-07-10 18:24:38', '2021-07-10 18:24:38'),
('b8d57d554c9b3403c5478c8a3c71be942d3510b844fc1cd1088d007035ba9896b42a30a221260110', NULL, 1, NULL, '[]', 0, '2020-04-06 12:13:23', '2020-04-06 12:13:23', '2021-04-06 12:13:23'),
('b8e6d966cc5dd95b187ce6a751bf2fffd93de416855cf689b5bb4e8e50050171a5541453b61940a8', NULL, 1, NULL, '[]', 0, '2020-06-10 08:49:40', '2020-06-10 08:49:40', '2021-06-10 08:49:40'),
('b94758e5d242db4e11b29666955a6e1be0679af6948e17a2bc1d2ccabefb34c15ba5e23e00d1b165', NULL, 1, NULL, '[]', 0, '2020-12-04 10:41:48', '2020-12-04 10:41:48', '2021-12-04 10:41:48'),
('b988606da00a5105646a1fe0ed68bba34801585711f680e1b62da8456bade3a6c57603534af8b225', NULL, 1, NULL, '[]', 0, '2020-08-08 08:56:07', '2020-08-08 08:56:07', '2021-08-08 08:56:07'),
('b9b5e7d38e62dce183a4d9ec6637d608d44a5014d775dbb5bcd62d19536cca512eb57274f95f8a61', NULL, 1, NULL, '[]', 0, '2020-06-20 07:57:10', '2020-06-20 07:57:10', '2021-06-20 07:57:10'),
('b9bb87225b6d453ca39aa2f024a9cb2fa2cd29d7ccff5173f7d4f5e16c2d577252d34194b84e6eaf', NULL, 1, NULL, '[]', 0, '2020-04-06 10:51:44', '2020-04-06 10:51:44', '2021-04-06 10:51:44'),
('b9c074a24d1dd3bcd47fd7136a4003e94029a0be7663169d27ede30fff2f45abd50a551c6c477969', NULL, 1, NULL, '[]', 0, '2020-06-19 07:58:52', '2020-06-19 07:58:52', '2021-06-19 07:58:52'),
('bc354ce2b9abd2c6fc60cdf41ff6c16953dd3092621dacf9c0d1b7b01803b66c67ce53ff4d16384b', NULL, 1, NULL, '[]', 0, '2020-08-08 10:59:26', '2020-08-08 10:59:26', '2021-08-08 10:59:26'),
('be76ebe2ffc6d881a6de30618917e72bf153a85324e987aaf3b37d4023488006c253c2ff2b2c5ffc', NULL, 1, NULL, '[]', 0, '2020-07-24 06:52:39', '2020-07-24 06:52:39', '2021-07-24 06:52:39'),
('be807c191efb6b7b42027026ffa9b17eaaec51f3b63ca359418b1a71fb24d5e7bd7dccc08f8f0c0d', NULL, 1, NULL, '[]', 0, '2020-07-27 06:05:57', '2020-07-27 06:05:57', '2021-07-27 06:05:57'),
('bf1132ceae639773fca2ff858be4525ec19d88e410e2044240138b16d62c55c6c988d9ba3f90c6ce', NULL, 1, NULL, '[]', 0, '2020-06-27 06:27:56', '2020-06-27 06:27:56', '2021-06-27 06:27:56'),
('bf7ac8ca99fb2650c451219e9f4b2d37c9c7e23468981177c4249891fe8f95f5288061a4636b902e', NULL, 1, NULL, '[]', 0, '2020-03-30 10:35:08', '2020-03-30 10:35:08', '2021-03-30 10:35:08'),
('bf981cb09ac54fe1f2676bfea4a0d41cb8225ab2620139acfc73b730b0f4874c4c8c03ab8bb4a7b9', NULL, 1, NULL, '[]', 0, '2020-04-06 11:59:09', '2020-04-06 11:59:09', '2021-04-06 11:59:09'),
('c0b5dec4bffeb3c86ab270467eb343dac31ff98f146bb01119c815932ae37f0a649cc45d016ec930', NULL, 1, NULL, '[]', 0, '2020-03-18 08:17:12', '2020-03-18 08:17:12', '2021-03-18 08:17:12'),
('c11381c4c86eda85d037a804c2cbe36b6a4c47112cc4681be7ca01d62d838eaff40785ecc9fc705b', NULL, 7, NULL, '[]', 0, '2021-08-05 00:45:14', '2021-08-05 00:45:14', '2022-08-05 06:15:14'),
('c1e6cf4d86a7e115e9836cd45952bd78fa75736e678111c978566680cd7897342dbdd0df9a603499', NULL, 1, NULL, '[]', 0, '2020-05-23 12:24:54', '2020-05-23 12:24:54', '2021-05-23 12:24:54'),
('c21fe8bad64bfadce3b6b440351e42205c730d2fa0ac24e9a7c74d1082ffb12d49a1cbf411d74e22', NULL, 1, NULL, '[]', 0, '2020-07-17 17:04:02', '2020-07-17 17:04:02', '2021-07-17 17:04:02'),
('c2486f95dd70b4e5dc9e1b2e457cb37035e45ec2f67f66cfc990d3386634615edf3b26f34a822daf', NULL, 1, NULL, '[]', 0, '2020-06-20 07:55:40', '2020-06-20 07:55:40', '2021-06-20 07:55:40'),
('c279bbff6fa9425212e54f878f4285593087eabbf3cebe62f36a2c73630014019e94d7a9e9a663c1', NULL, 1, NULL, '[]', 0, '2020-06-11 09:40:45', '2020-06-11 09:40:45', '2021-06-11 09:40:45'),
('c33fea8b515ac4b2515ffa146b1595d2dfd76f6bdcf1a2834ff06117f0d192b7e36d65dd00613f37', NULL, 1, NULL, '[]', 0, '2020-07-07 07:02:01', '2020-07-07 07:02:01', '2021-07-07 07:02:01'),
('c36ef0a3958d12d275b06eaa8bb5f84f7648c02a9cbdb57e64e97bbc682026be1d05c776bfa116f6', NULL, 1, NULL, '[]', 0, '2020-07-21 13:51:08', '2020-07-21 13:51:08', '2021-07-21 13:51:08'),
('c478fd945f290860c98af6202094ca26cca6897aae3aed4742dd43063ab7010be02d868d4c07c8e7', NULL, 7, NULL, '[]', 0, '2021-08-17 23:50:49', '2021-08-17 23:50:49', '2022-08-18 05:20:49'),
('c543dfa8a8a7ab43ca02adcd30cc9a2079ca6abc4a8090081037f548ffa2c4208406c4e335789a88', NULL, 1, NULL, '[]', 0, '2020-07-13 14:54:04', '2020-07-13 14:54:04', '2021-07-13 14:54:04'),
('c578e6f54f2c699a06ef5494dd60b627897a7d6e7148a799cbe5b3c7d0aa34cecf25cdf8ea7864df', NULL, 1, NULL, '[]', 0, '2020-07-20 08:05:49', '2020-07-20 08:05:49', '2021-07-20 08:05:49'),
('c5a205a6ab444a466c3ae3eba47460d39b134834197b0f6ac43cbd204942014ced3ce86383b8cd9b', NULL, 1, NULL, '[]', 0, '2020-03-27 16:42:35', '2020-03-27 16:42:35', '2021-03-27 16:42:35'),
('c5bd6fd2b9f7d552a7730dcefcd99501168599f2e7df29477444175b1299208775a754925ce0cd64', NULL, 1, NULL, '[]', 0, '2020-07-20 08:03:24', '2020-07-20 08:03:24', '2021-07-20 08:03:24'),
('c5ce8d08f5ac0660ddcf7410f65326ae65d937610074db2e310dee5c447d9f6ca4b78c1edec7f714', NULL, 1, NULL, '[]', 0, '2020-03-30 07:01:58', '2020-03-30 07:01:58', '2021-03-30 07:01:58'),
('c5f286779e77f5698050e04551ff9304ecdb6f2ee16c09a9ff84ff3156894dc7df0737f5b337b93f', NULL, 1, NULL, '[]', 0, '2020-07-20 08:03:24', '2020-07-20 08:03:24', '2021-07-20 08:03:24'),
('c6cd1b4e9ff6ed593b3cf5a802eeb3acf5c3439eca0eed3a2ff75e0a0c4c9d203a130fef91315ad0', NULL, 1, NULL, '[]', 0, '2020-07-20 08:05:49', '2020-07-20 08:05:49', '2021-07-20 08:05:49'),
('c6ddf5fb8f35fe24554e8df513630afca1506948bc88720d1ffd13f5421fccdee4dd05fdbf8d841e', NULL, 1, NULL, '[]', 0, '2020-07-13 14:43:23', '2020-07-13 14:43:23', '2021-07-13 14:43:23'),
('c7f18d0b99b839355dab424438205e05e87b7c646523f6439b89fb1d84b97cbc9d302b3d7eaa3d9d', NULL, 1, NULL, '[]', 0, '2020-03-30 10:24:46', '2020-03-30 10:24:46', '2021-03-30 10:24:46'),
('c825e72c6fca2482d929bf5b70f389d5cf9c153ec7530fb94c97a82280072ba095d601b82fc315c1', NULL, 1, NULL, '[]', 0, '2020-07-17 14:56:51', '2020-07-17 14:56:51', '2021-07-17 14:56:51'),
('c87fa214530e45ab9be992b8984127a64d6855471359a1df7f2e02b297ee33fc92f295f97b8ce50d', NULL, 1, NULL, '[]', 0, '2020-05-23 12:24:53', '2020-05-23 12:24:53', '2021-05-23 12:24:53'),
('c95c2163391d4144b2e9701f6182d8c109426f47793ee466286efea32fcbb313afe18d64382f5d3d', NULL, 1, NULL, '[]', 0, '2020-11-03 10:54:03', '2020-11-03 10:54:03', '2021-11-03 10:54:03'),
('c9f83ad3f193ff5947f3f655f3e36805ca044ba8661512b01e24b8a6e1fbcd95945f38c7c9047991', NULL, 1, NULL, '[]', 0, '2020-07-13 14:51:22', '2020-07-13 14:51:22', '2021-07-13 14:51:22'),
('ca603e14cadc9dad7e18dd94b996a3350362dbdc44b7e0c2180fe4a63dfb5995baed4ada6641270b', NULL, 1, NULL, '[]', 0, '2020-07-21 13:59:19', '2020-07-21 13:59:19', '2021-07-21 13:59:19'),
('cbce48916b948875fcfd083803fbe2121b856d57d1d72dfd94291dae07bd1126da80f1326c93f729', NULL, 1, NULL, '[]', 0, '2020-06-09 10:07:58', '2020-06-09 10:07:58', '2021-06-09 10:07:58'),
('cbf8fdc4111852cc1b983f0c921dd3837a454176fc86619be9c6736e9115e9ca1dc59e596fd95e23', NULL, 1, NULL, '[]', 0, '2020-04-06 11:53:25', '2020-04-06 11:53:25', '2021-04-06 11:53:25'),
('cc5853df9572876cb354f7dfe07c5e480f533ac82407811b5d738579e117a6e938e420c26d5aeed3', NULL, 1, NULL, '[]', 0, '2020-07-21 13:50:42', '2020-07-21 13:50:42', '2021-07-21 13:50:42'),
('cca4c048aec1f520b696a5523109d7bc9f7a5266a5786d5cfee920722277e58cb5c8837a18ba950e', NULL, 1, NULL, '[]', 0, '2020-05-19 10:19:47', '2020-05-19 10:19:47', '2021-05-19 10:19:47'),
('cd5adf6164483b0262efdd33cd177b4394f3e5a84511e0d5444756236bf59653359564a6923ed04d', NULL, 1, NULL, '[]', 0, '2020-04-04 04:24:38', '2020-04-04 04:24:38', '2021-04-04 04:24:38'),
('cd756893a4e5685369ebac0e22eaf39a8eedf2c43cf92da221f03452e54cb1e7142c1dd4b34c77c2', NULL, 1, NULL, '[]', 0, '2020-07-11 11:13:06', '2020-07-11 11:13:06', '2021-07-11 11:13:06'),
('cdaee448747753a7ef2a2b1fd2ecfd7b9cb4a1e97332f628c1ff245d06636c3bdc092acedb62b072', NULL, 1, NULL, '[]', 0, '2020-04-11 04:50:22', '2020-04-11 04:50:22', '2021-04-11 04:50:22'),
('cdd755e0dee681949354d59db53521541ee9dc636513927243f42790922bb5a134b19228439b56d9', NULL, 1, NULL, '[]', 0, '2020-07-07 06:56:20', '2020-07-07 06:56:20', '2021-07-07 06:56:20'),
('cdefb7473298403bc4175d6d899a6366b5d3166ed5b4e2ce859a4764329a4ba8d3e355aa48c58903', NULL, 1, NULL, '[]', 0, '2020-03-30 10:49:46', '2020-03-30 10:49:46', '2021-03-30 10:49:46'),
('ce4a0fe56e90f6cb92e57fad39035a596f0eba90471352b8c5805acee12a9be9a234b6fea744e7a3', NULL, 1, NULL, '[]', 0, '2020-06-09 13:18:02', '2020-06-09 13:18:02', '2021-06-09 13:18:02'),
('ce69ab20ebe1e249e30f2eb64367504fb53482013eb931f883d449e922bea7f5552a182d76b333eb', NULL, 1, NULL, '[]', 0, '2020-05-30 11:21:39', '2020-05-30 11:21:39', '2021-05-30 11:21:39'),
('ceb81e4d30d0386db932364db3163a9fa80e4db667e2401d56c848657211166e2e18d607ab70e458', NULL, 1, NULL, '[]', 0, '2020-04-11 04:45:24', '2020-04-11 04:45:24', '2021-04-11 04:45:24'),
('cef59172e852f98ac3e4dfc4ae6bd4e4acaa869890ab884fbbf013b6893080badecd5422c6b2e68e', NULL, 1, NULL, '[]', 0, '2020-08-08 10:58:02', '2020-08-08 10:58:02', '2021-08-08 10:58:02'),
('cf3cd344cf4b76d65ccc111b0ea306507dfa4b059cce02d10576962e5afe171166d83d8c4e0654cb', NULL, 1, NULL, '[]', 0, '2020-03-23 09:53:25', '2020-03-23 09:53:25', '2021-03-23 09:53:25'),
('cf6dcf0b886f3cee5290b7c0292b7c3644b080d4a85e5ecd83caafc8594ced4753964b157620e060', NULL, 1, NULL, '[]', 0, '2020-02-07 06:14:23', '2020-02-07 06:14:23', '2021-02-07 06:14:23'),
('cfb790e20b0c2e6867a3974914578b3e4f48d9674f557616dde062295baa01843e1a4dcd38567bee', NULL, 1, NULL, '[]', 0, '2020-04-06 12:58:06', '2020-04-06 12:58:06', '2021-04-06 12:58:06'),
('cfd41b67b6b4d82dfb5085e5bf406c09ff71ea97d3aa8f7e860874027c1a9c7bf8d226968425e087', NULL, 1, NULL, '[]', 0, '2020-04-06 10:56:11', '2020-04-06 10:56:11', '2021-04-06 10:56:11'),
('cfe2368879a5b8449ab04ac394a3eb9e16038c05915eaa8159421e9b138e175ec578808dafe5c479', NULL, 1, NULL, '[]', 0, '2020-07-28 12:21:24', '2020-07-28 12:21:24', '2021-07-28 12:21:24'),
('d02167c2a8c21c6024adee031b7229d28b6e4af8aa523e78dc11eee09dc9d0c129e542de3694dd53', NULL, 1, NULL, '[]', 0, '2020-08-08 10:50:40', '2020-08-08 10:50:40', '2021-08-08 10:50:40'),
('d109c3fcbb15d323e85ea4821e76cf8a80739afd9b14b61dcf81fb5e908d17e40d5e1733e6b2a45a', NULL, 1, NULL, '[]', 0, '2020-07-21 14:02:47', '2020-07-21 14:02:47', '2021-07-21 14:02:47'),
('d16dcd0a866c51ebe2b59220db4c80bfe74d378b286c2f731810a0c575dcf3e5cc965e73a9c0ca05', NULL, 1, NULL, '[]', 0, '2020-03-19 12:12:22', '2020-03-19 12:12:22', '2021-03-19 12:12:22'),
('d1ca7967ee39d5c8a6320bc47e421803546d3a28a09dc48af0f3c566d268511430ee42f8a636a7ad', NULL, 1, NULL, '[]', 0, '2020-05-30 11:01:22', '2020-05-30 11:01:22', '2021-05-30 11:01:22'),
('d34aed8917d7661b0fec795cbf6986c8b7be0a4f64f4641c25aa1806fef3b96e5a5bc3b7a8ee5728', NULL, 1, NULL, '[]', 0, '2020-04-06 13:05:08', '2020-04-06 13:05:08', '2021-04-06 13:05:08'),
('d3acd66293b8aab2ef21f4f4047f3029ac14e05afc608b24c69bbcb7643f03e2893e913840cfc3d3', NULL, 1, NULL, '[]', 0, '2020-07-10 18:15:34', '2020-07-10 18:15:34', '2021-07-10 18:15:34'),
('d3ce6d887d9c8a530c4d82cab86663721ad225b368ee42db7cc6a983df536364f6a246459f2a203f', NULL, 1, NULL, '[]', 0, '2020-03-30 10:40:19', '2020-03-30 10:40:19', '2021-03-30 10:40:19'),
('d3e2388f98669571727ac3f02dce922e343069a36806091283faf8756e3f38594931d302429e38f1', NULL, 1, NULL, '[]', 0, '2020-06-09 09:15:39', '2020-06-09 09:15:39', '2021-06-09 09:15:39'),
('d48c5873f193e78dc4dec528c0ab4a72d8f1fa598ef3beb63e3a23959c2af592535f896cb5190a4e', NULL, 1, NULL, '[]', 0, '2020-06-09 09:15:39', '2020-06-09 09:15:39', '2021-06-09 09:15:39'),
('d4efd1bf00c294258872baa3a16ab86d5ff369d9029022900a54fba15c86749d504e50ef5cd65afa', NULL, 7, NULL, '[]', 0, '2021-07-23 01:55:54', '2021-07-23 01:55:54', '2022-07-23 07:25:54'),
('d5255c8afe6dc732d3b25c32be5eda935fa85f82f1723d3efcaa7dd51c7652ffa71d2c71376496b4', NULL, 1, NULL, '[]', 0, '2020-03-18 08:12:54', '2020-03-18 08:12:54', '2021-03-18 08:12:54'),
('d527c4e6a230bae3fc78102f03cb25faf5c20db12f39630453c21f2ba1c676ad425742c80a2e15bc', NULL, 1, NULL, '[]', 0, '2020-08-23 07:30:12', '2020-08-23 07:30:12', '2021-08-23 07:30:12'),
('d5e58ecd4db9d0b0b56ad3f3f29a6060a8fcdd640bdde86ed8cbccbf9f111526262c56e8961153a7', NULL, 1, NULL, '[]', 0, '2020-07-06 11:21:18', '2020-07-06 11:21:18', '2021-07-06 11:21:18'),
('d5e8361bfa1244b6824b61a24d82d80f8f7fafdc9bf5e7e149fb3704335b87ee375cbbd4bb3215d5', NULL, 1, NULL, '[]', 0, '2020-06-29 12:19:24', '2020-06-29 12:19:24', '2021-06-29 12:19:24'),
('d69b240246d1187831a1ecee972eda4352b0e011632aadb553540a71cc6edecc048178e8f098df37', NULL, 1, NULL, '[]', 0, '2020-07-07 06:56:20', '2020-07-07 06:56:20', '2021-07-07 06:56:20'),
('d6af77e35671c23b047b21e6456e3e2e98d9ab2d745bf71690135b5bf816aebc4a3a86128932127c', NULL, 1, NULL, '[]', 0, '2020-07-11 10:54:09', '2020-07-11 10:54:09', '2021-07-11 10:54:09'),
('d73085e69f95d65e7f396d0edba7dcad0d7e24a5041582e8575f3a23540f0e9aee65936b3a2716c7', NULL, 1, NULL, '[]', 0, '2020-04-06 10:57:11', '2020-04-06 10:57:11', '2021-04-06 10:57:11'),
('d737c5b78fcf3abb9de4b70902d1ae66da89deff91c85a4f1342d7f1b12ed59cda6c02975b37a55f', NULL, 1, NULL, '[]', 0, '2020-06-11 09:41:40', '2020-06-11 09:41:40', '2021-06-11 09:41:40'),
('d762fbadffda37a94ccbec98ddc5f2c270e5d53ef24471a69ba31da88226af5cd12a1b5b017827ab', NULL, 1, NULL, '[]', 0, '2020-02-19 11:44:05', '2020-02-19 11:44:05', '2021-02-19 11:44:05'),
('d7820be7e88b6487bc2f17bb2cf1adb0eddb0beeb851c0abc5303b83ce6e4015700849b4d2064c96', NULL, 1, NULL, '[]', 0, '2020-06-24 08:44:06', '2020-06-24 08:44:06', '2021-06-24 08:44:06'),
('d78b8610258dbb6c9fab628a17b0e07c2a8f11e52c4cc76976f591265defb79528079a061ea19cda', NULL, 1, NULL, '[]', 0, '2020-11-06 09:29:34', '2020-11-06 09:29:34', '2021-11-06 09:29:34'),
('d879fbba97120ed2a3e67bd9ccb6d290cf5dd541251b30279f03ca17b4cf624bf079530b6878b3c4', NULL, 1, NULL, '[]', 0, '2020-07-10 18:12:31', '2020-07-10 18:12:31', '2021-07-10 18:12:31'),
('d8ac1414ddf68b7c5a41522aba52b60f75963217f6cb6a97c909eb7604b0359a94eb001bbe08b0bb', NULL, 1, NULL, '[]', 0, '2020-03-27 12:27:33', '2020-03-27 12:27:33', '2021-03-27 12:27:33'),
('d8e81b310b506bb086c625dd635097a350b2975e68d4464e93c142721aebdd3d9e78852073753cb8', NULL, 1, NULL, '[]', 0, '2020-07-06 11:14:51', '2020-07-06 11:14:51', '2021-07-06 11:14:51'),
('d9487ccca8ecfbe606def850f44e177f748a148765eb58ab1e5e0cf051fb4780a44ec0638eee34aa', NULL, 1, NULL, '[]', 0, '2020-03-30 10:27:58', '2020-03-30 10:27:58', '2021-03-30 10:27:58'),
('d96c29b8a8261a15077ef299849d26a4a932d774a049abe8e13d6dc3f866af2fbc2cfc2e7a944f6e', NULL, 1, NULL, '[]', 0, '2020-07-14 13:46:12', '2020-07-14 13:46:12', '2021-07-14 13:46:12'),
('d96d5f0f60cb05825da60bd4a89a5475ad09c3ff04bad4282bfcfa8641bd9c12836b6b3758cf854d', NULL, 1, NULL, '[]', 0, '2020-02-19 11:39:17', '2020-02-19 11:39:17', '2021-02-19 11:39:17'),
('d96ea994a737436fa0c6ae4c9763ac12b802d77decb99a98d46a22cb607cb76b0942beca70abd5df', NULL, 1, NULL, '[]', 0, '2020-07-21 13:55:06', '2020-07-21 13:55:06', '2021-07-21 13:55:06'),
('d987715a9897d386946256ae6d96f1108b4e40c76c0702561cfd456453e73e6054773099ecbd488a', NULL, 1, NULL, '[]', 0, '2020-06-19 07:58:51', '2020-06-19 07:58:51', '2021-06-19 07:58:51'),
('d9d7937fdc3077cb7e70af2375a1200a67f0aed3eeb585c87e37029eedc1d503ab1a2aafd7486362', NULL, 9, NULL, '[]', 0, '2022-03-11 05:37:37', '2022-03-11 05:37:37', '2023-03-11 11:07:37'),
('da2826714f7f17d0c6bad339dc482da86d1e33e936e25cf441316b3714c314d81dd85da61dd3c412', NULL, 1, NULL, '[]', 0, '2020-05-20 08:41:55', '2020-05-20 08:41:55', '2021-05-20 08:41:55'),
('da70ffbcf19c4bc84b9411d0793722e718deefd2841b06d1a9ad4ccef1e19f8a07ae25e3a8937cd2', NULL, 1, NULL, '[]', 0, '2020-02-12 11:22:50', '2020-02-12 11:22:50', '2021-02-12 11:22:50'),
('daee2c893ce9aaa774d2719bb92d59717d9cd0b2e9c21c3fbb6b1774992d60c42a82aa410697df5e', NULL, 1, NULL, '[]', 0, '2020-07-25 11:17:24', '2020-07-25 11:17:24', '2021-07-25 11:17:24'),
('daf90832d4412251d7692cd8e33151b8d6392c018b5d745693be4fe8933a782d2fa598cc858d8f06', NULL, 1, NULL, '[]', 0, '2020-08-14 13:05:40', '2020-08-14 13:05:40', '2021-08-14 13:05:40'),
('db1c240f13098cfb5793077670d30eb70a741a93988d45db080967536668782546d056d84836377d', NULL, 5, NULL, '[]', 0, '2021-05-05 00:55:08', '2021-05-05 00:55:08', '2022-05-05 06:25:08'),
('db591ce575b5864aaef83a789b34ad85be84f6979234074f643769308a5ee62d42002fde3a30667c', NULL, 1, NULL, '[]', 0, '2020-07-25 10:44:36', '2020-07-25 10:44:36', '2021-07-25 10:44:36'),
('db79cba78dca919ae0237b5bdd24082c16f8aa91b93035e7386f9c70521577618254373a3b9dbef2', NULL, 1, NULL, '[]', 0, '2020-07-07 07:03:45', '2020-07-07 07:03:45', '2021-07-07 07:03:45'),
('db9ae977a50a476e07c55a44b72b2cbfa6e3f0ed6005b075372a2ded8ed457e9d68463d562804fa9', NULL, 1, NULL, '[]', 0, '2020-07-13 14:52:46', '2020-07-13 14:52:46', '2021-07-13 14:52:46'),
('dba75c8bfc67903e3a33141901d027b3d601eb01dd5306b8309aea3d084425ef6e7e83a272b9b76c', NULL, 1, NULL, '[]', 0, '2020-06-20 08:01:11', '2020-06-20 08:01:11', '2021-06-20 08:01:11'),
('dbb3d5ff5fdb3442b63f572437cdb235835f723f5f0d9225ad82f7a63c1b6895a816a7fc01e51489', NULL, 1, NULL, '[]', 0, '2020-04-06 12:33:11', '2020-04-06 12:33:11', '2021-04-06 12:33:11'),
('dd5123904a5cd47a1ce0337d1e73d405eea3cd705a3f2be69990cce526e46c583fddebd1139364f5', NULL, 1, NULL, '[]', 0, '2020-06-30 04:42:24', '2020-06-30 04:42:24', '2021-06-30 04:42:24'),
('dd800bdec53fba9f4deea2a52c5be118c4f6dba7eb17818a240e9998b34d9883b04b911e12fd3c36', NULL, 1, NULL, '[]', 0, '2020-06-18 04:40:05', '2020-06-18 04:40:05', '2021-06-18 04:40:05'),
('dd93b8d80c1ed937c4c48223011d2432551aea1e79cb9984ac739c729d75588b59c71e73a6588058', NULL, 1, NULL, '[]', 0, '2020-07-21 13:47:40', '2020-07-21 13:47:40', '2021-07-21 13:47:40'),
('de0eb8fda0de1a2b956fca19982377913d8487e8b8077374b84e19ac334738e2c60c5bf43e72454f', NULL, 1, NULL, '[]', 0, '2020-03-30 07:04:34', '2020-03-30 07:04:34', '2021-03-30 07:04:34'),
('de1c2b15f7c709b8f533dc3195d9e9f719c10006333cf59e85271436d854787438bec8393a4e4669', NULL, 1, NULL, '[]', 0, '2020-05-07 13:42:55', '2020-05-07 13:42:55', '2021-05-07 13:42:55'),
('de25e1a24c51953f2b8e01979e065ef6d4abba05cf03af446555a5ab82f7bf79c327cd49f8307e39', NULL, 1, NULL, '[]', 0, '2020-05-30 10:46:59', '2020-05-30 10:46:59', '2021-05-30 10:46:59'),
('de7a1aec40c3ca2fd14d29931bf25e2618ec09d3010e1b92f8000ad779d9b3c5d03984198e00b238', NULL, 1, NULL, '[]', 0, '2020-07-13 14:51:55', '2020-07-13 14:51:55', '2021-07-13 14:51:55'),
('dfa4f314d6250157c4229b8f95b8acb8785169f7e4205d3c0c0bc8553b04564514ff579aa3fbd8a0', NULL, 7, NULL, '[]', 0, '2021-08-17 23:50:49', '2021-08-17 23:50:49', '2022-08-18 05:20:49'),
('e03ae15dd4b1700f368b1c3c06928a040b9508fd2d9a6ee409f35c052b6a4188c99f2c59357e0b23', NULL, 1, NULL, '[]', 0, '2020-04-06 11:47:47', '2020-04-06 11:47:47', '2021-04-06 11:47:47'),
('e0e0898e8fdc45f852ce98073e7bdf78d7e462de9fba33c3c105b242de37251229179b8272cc134e', NULL, 1, NULL, '[]', 0, '2020-06-27 06:37:40', '2020-06-27 06:37:40', '2021-06-27 06:37:40'),
('e0ed306c773d4c32e0a7b0dc093a4f70936ef521c0e9fc0e1eb84cd3c3b17ed588b993cdefadd7c9', NULL, 1, NULL, '[]', 0, '2020-02-07 06:17:37', '2020-02-07 06:17:37', '2021-02-07 06:17:37'),
('e154d70b7f26dc0b07285c4aee6b0c0745882188f6180ab811379e41dd47140e5b401cb7a0c91ec3', NULL, 1, NULL, '[]', 0, '2020-06-29 12:19:23', '2020-06-29 12:19:23', '2021-06-29 12:19:23'),
('e1a1142dc8c39e8ca3e19f5dcb146cf1eaa7265f34eadbe792cfc4460962d083baa341690cab6ae1', NULL, 1, NULL, '[]', 0, '2020-07-21 14:04:12', '2020-07-21 14:04:12', '2021-07-21 14:04:12'),
('e2051c14ab2284d4d6cdb2a7d4d86217f2a618a84dad5b83eb94fe2b6cc4b770c140d7649d7047c5', NULL, 1, NULL, '[]', 0, '2020-11-03 10:26:17', '2020-11-03 10:26:17', '2021-11-03 10:26:17'),
('e2072464bb17d4174c79913914a46358e6e1e682bfae0fd37cc5ac675a4700e7d9420c4a20188739', NULL, 1, NULL, '[]', 0, '2020-04-06 12:33:10', '2020-04-06 12:33:10', '2021-04-06 12:33:10'),
('e2c7cd12c477b9aac91265db74aa14b0b6b074a0f5823a0ee0eebe87ce15cb736b9ea6d2c29b6d1e', NULL, 1, NULL, '[]', 0, '2020-07-17 14:07:17', '2020-07-17 14:07:17', '2021-07-17 14:07:17'),
('e3a457eb6c8e8009ac53feaa512fd58bb1056e153c1565ad3b312030fbbeff9ad8e443e7979769d8', NULL, 1, NULL, '[]', 0, '2020-08-08 10:59:46', '2020-08-08 10:59:46', '2021-08-08 10:59:46'),
('e427178708617337bc26ebc30f4679707742f74fb23cad9fa736baa80ee7719b855db30da07ba8fa', NULL, 1, NULL, '[]', 0, '2020-07-08 13:36:07', '2020-07-08 13:36:07', '2021-07-08 13:36:07'),
('e4ebf89d597d7b3dc8301aadbf00c9e6af44d2e3af31d3c5a17025e1d911f56b580a94d3c23c9037', NULL, 1, NULL, '[]', 0, '2020-07-13 14:52:20', '2020-07-13 14:52:20', '2021-07-13 14:52:20'),
('e51a8a6951c902cc0a844582aed981992fb41bfa7c486c2e5cdc658dc5ed265d105cb0449d93c7c6', NULL, 1, NULL, '[]', 0, '2020-07-14 13:49:35', '2020-07-14 13:49:35', '2021-07-14 13:49:35'),
('e6253a3902a3bff15f0cea44b28bf2a10e7f7644f91d0ade9eeacaf0aa1045b690b14dac9ccd790a', NULL, 1, NULL, '[]', 0, '2020-11-06 09:29:35', '2020-11-06 09:29:35', '2021-11-06 09:29:35'),
('e692d5d9e2ab1ff35ee23ba37cfa9d6b07ad6804c4b1f8c4536a3779c362de32bd991e32e08e19af', NULL, 1, NULL, '[]', 0, '2020-04-06 11:53:27', '2020-04-06 11:53:27', '2021-04-06 11:53:27'),
('e6c34f2156d1d2e89eefb0647420b97bcdfb4a11caf96ae7adee25623e1fd6cfcc9ae389575f0931', NULL, 1, NULL, '[]', 0, '2020-07-17 14:07:17', '2020-07-17 14:07:17', '2021-07-17 14:07:17'),
('e707616321cd59b66a0f1eb8ef3475b004b4e531bfdfa67af3edbeb1483161daaf2355f1a9ff0af3', NULL, 1, NULL, '[]', 0, '2020-11-03 10:32:59', '2020-11-03 10:32:59', '2021-11-03 10:32:59'),
('e7cc3f573ee3483b9b137283eaf8adebdddc1f8a740835f2bf1469405f91830cf2a4867699ee3e0d', NULL, 1, NULL, '[]', 0, '2020-06-01 05:39:05', '2020-06-01 05:39:05', '2021-06-01 05:39:05'),
('e7e76a343f33422d1e36f725d1cd880af59868c47edc71d6fc5909a7f8cb87bedcc6d4cc621e42d4', NULL, 1, NULL, '[]', 0, '2020-07-17 16:54:20', '2020-07-17 16:54:20', '2021-07-17 16:54:20'),
('e7f55f6cd9503ac2f1c4a58b853164b05974bc1693c2060f399fe8668dc8edb3e15a13d53d061d57', NULL, 1, NULL, '[]', 0, '2020-02-08 07:23:16', '2020-02-08 07:23:16', '2021-02-08 07:23:16'),
('e864b80ba39753434fb16835d08e9d7da5ca7d8616f968df4c3077d8ff268779844415837b30ecb8', NULL, 1, NULL, '[]', 0, '2020-06-27 07:02:09', '2020-06-27 07:02:09', '2021-06-27 07:02:09'),
('e88e492795b8950eb8c89c1e65bf572ce05af127c6c460d04b368f960ef89ba2ec5213f355948cf0', NULL, 1, NULL, '[]', 0, '2020-07-29 12:10:03', '2020-07-29 12:10:03', '2021-07-29 12:10:03'),
('e88eafa374ab69f4bbf0de343cc9b1f54b54bc72856f2087571765064ed42c602700cb1e8ea29c72', NULL, 1, NULL, '[]', 0, '2020-05-07 13:42:55', '2020-05-07 13:42:55', '2021-05-07 13:42:55'),
('e8b79e1016060d0421879fde642da5c94b240be4be69dd22d4c9dfeab0f329b0502ba1ec7f3a2b0d', NULL, 1, NULL, '[]', 0, '2020-08-08 10:44:29', '2020-08-08 10:44:29', '2021-08-08 10:44:29'),
('e8b83fc261480ceb77dfd067cda029b8daae57e119b9a2ae41ce8d6b2de137d6ba176370ca6958f1', NULL, 1, NULL, '[]', 0, '2020-07-13 15:05:57', '2020-07-13 15:05:57', '2021-07-13 15:05:57'),
('e8c233867296ad03db1488e1d886916040b32100de198464de9e58448cfe80cf48c02576d9dcf00e', NULL, 9, NULL, '[]', 0, '2022-03-12 02:22:58', '2022-03-12 02:22:58', '2023-03-12 07:52:58'),
('e9f210b0221d413b4d1e4449813128fac0de3a81f256dab15c3962394b41659c1039eda7f0ad8dee', NULL, 1, NULL, '[]', 0, '2020-04-06 10:55:08', '2020-04-06 10:55:08', '2021-04-06 10:55:08'),
('ea0941209bb6dea971b7a3ffbeb4766389d6090dfc1049643ad228e8d150b7c420668dace8f0a894', NULL, 1, NULL, '[]', 0, '2020-02-12 09:21:24', '2020-02-12 09:21:24', '2021-02-12 09:21:24'),
('ea4982a51a43f54bc1f5f01d3aa3d3425d6e7689bc2bc367a59701b546703db2446d42343fcc15da', NULL, 1, NULL, '[]', 0, '2020-07-27 06:53:21', '2020-07-27 06:53:21', '2021-07-27 06:53:21'),
('ea81d94bd8c4af52fd7b86bf877a9605efce529a6a0637d88a9bae7a9add282be170fb3a635e22da', NULL, 1, NULL, '[]', 0, '2020-07-21 13:42:01', '2020-07-21 13:42:01', '2021-07-21 13:42:01'),
('eac2df1b090316b85af42dbf6df27fa431f541ea6e47e46a47ed48b7f89c9cee52a0a80a9f7e0bef', NULL, 1, NULL, '[]', 0, '2020-08-08 08:53:28', '2020-08-08 08:53:28', '2021-08-08 08:53:28'),
('ebd41d03fcde56e52a52bb4de7cf8b3065cb86e847efe3cbd776a7fd541f0fde997be8a0ce850c6e', NULL, 1, NULL, '[]', 0, '2020-07-28 12:17:13', '2020-07-28 12:17:13', '2021-07-28 12:17:13'),
('ec07a714bedd54f0a93395c4e6302946b6fcfc00893c65f757199c58433a6fa274d7125dcef4a7f3', NULL, 1, NULL, '[]', 0, '2020-03-30 05:39:35', '2020-03-30 05:39:35', '2021-03-30 05:39:35'),
('ec5c955993d61fa8065d09bf34a32d6b5fb14f75e4f841f0f846197d558731c3cb90d885eceb9d8d', NULL, 1, NULL, '[]', 0, '2020-07-24 06:56:13', '2020-07-24 06:56:13', '2021-07-24 06:56:13'),
('ec8839aa36af6e9a40eefb281785adba3d83f1a39d7dafb6fc8998e2e93a2c572c2d1aebcebe90f6', NULL, 1, NULL, '[]', 0, '2020-07-17 17:04:47', '2020-07-17 17:04:47', '2021-07-17 17:04:47'),
('eca810aecb2a0cbab330e9c6f73cfa8f045ca261041bb1d65307938828db49d98765612243fd55b3', NULL, 1, NULL, '[]', 0, '2020-06-30 04:48:29', '2020-06-30 04:48:29', '2021-06-30 04:48:29'),
('ee52c1300588d49b086e251539bab8957c347baf3b7f2244ff2f0d6e92c631ccb6ff80806e20451b', NULL, 1, NULL, '[]', 0, '2020-07-13 14:44:27', '2020-07-13 14:44:27', '2021-07-13 14:44:27'),
('ee705b7e49703e66388012080ce30361bfb9c93230614a627f7d16a4c7a63e38187b6f8e3a095147', NULL, 1, NULL, '[]', 0, '2020-07-21 13:45:10', '2020-07-21 13:45:10', '2021-07-21 13:45:10'),
('eea03479c3413e98aab8c8bae9edd19bc012fed8904a648ca7394cf715d1f148ca9eec306a4a96ba', NULL, 1, NULL, '[]', 0, '2020-11-03 10:10:21', '2020-11-03 10:10:21', '2021-11-03 10:10:21'),
('eea4a7fac9459f3d86f7ef65c326e889ddb86b4d468162f4f23b01128ee4063ba0f8860771096f47', NULL, 1, NULL, '[]', 0, '2020-06-01 05:39:05', '2020-06-01 05:39:05', '2021-06-01 05:39:05'),
('eedf1b1805cbead691e24725a74ac985a416e78ca7e37ea897301fbad7efbf596f45b9301bcb9a69', NULL, 1, NULL, '[]', 0, '2020-03-30 10:39:21', '2020-03-30 10:39:21', '2021-03-30 10:39:21'),
('ef267737aca843adab56318463efebae7e8cda82f761d036286fe846286b5fa795b4dc8cdd40012a', NULL, 1, NULL, '[]', 0, '2020-06-10 08:52:48', '2020-06-10 08:52:48', '2021-06-10 08:52:48'),
('ef60f9ec2ce1ab6f7d31ff52fd19a63c172af6e65909533fb9a9a9552b4f227763ca4235a6759ee0', NULL, 1, NULL, '[]', 0, '2020-07-13 15:04:10', '2020-07-13 15:04:10', '2021-07-13 15:04:10'),
('efacd628b97eefc37c370d11642604649591fdf09508ee741e6d11a83f7f8a1d3cf8e22f7c333841', NULL, 1, NULL, '[]', 0, '2020-03-30 05:39:33', '2020-03-30 05:39:33', '2021-03-30 05:39:33'),
('f04ea9fe3d7932c9c4561e59b355fdb07fcee84782372f56d1452868dd737c3cf70f4f0f07314bf7', NULL, 1, NULL, '[]', 0, '2020-07-21 13:30:04', '2020-07-21 13:30:04', '2021-07-21 13:30:04'),
('f2ddbc6cd193c18fb0433d252ed588b6fb1d568041ceeabe26a45865f8db0ac23bbcdd84978d9488', NULL, 1, NULL, '[]', 0, '2020-07-21 13:47:14', '2020-07-21 13:47:14', '2021-07-21 13:47:14'),
('f34db11db51aa129aef961d6747538931bfb4bec4d332a9f2ca65edb345ff8662aad2c6fa9716635', NULL, 1, NULL, '[]', 0, '2020-07-29 14:28:00', '2020-07-29 14:28:00', '2021-07-29 14:28:00'),
('f35e0fdd0c486b57571e5cab1663c0565633a40b03f54f386c07b4f66c207ba0026dcb5acc7c299d', NULL, 1, NULL, '[]', 0, '2020-03-25 12:55:24', '2020-03-25 12:55:24', '2021-03-25 12:55:24'),
('f3b4558c7a4b9be9ff9b1d47065071750e041ede65de8e074d4fe2c0483d195ed83acb5f9a38637e', NULL, 1, NULL, '[]', 0, '2020-07-17 17:05:19', '2020-07-17 17:05:19', '2021-07-17 17:05:19'),
('f475f292d2c869906e999a91d6320c1818c96cbbfe8a288869a7398071356f46339fd4a7a8f71fd2', NULL, 1, NULL, '[]', 0, '2020-07-27 06:04:35', '2020-07-27 06:04:35', '2021-07-27 06:04:35'),
('f47f01b1f0af26524dbf0b7ac1f20c47a489bf75b405ceab7016b9890dd0e0b2c5bd36af7a9ac68c', NULL, 1, NULL, '[]', 0, '2020-08-14 13:32:01', '2020-08-14 13:32:01', '2021-08-14 13:32:01'),
('f4ede1dc31f5ea8f568f55cbd6f02faaa937a6e08a66751968202715c8eec2b6e44f6b5af1982c09', NULL, 1, NULL, '[]', 0, '2020-03-23 12:38:58', '2020-03-23 12:38:58', '2021-03-23 12:38:58'),
('f6675da84c00427abb2d7e7e623a37da4f6a5f135c3f7316e014b323e9d83be278dd27cf94cd13af', NULL, 1, NULL, '[]', 0, '2020-07-27 06:03:34', '2020-07-27 06:03:34', '2021-07-27 06:03:34'),
('f6c024f85d71829d7d044c72518fd6c738b541b0cea4ef9268c3472aad976384217b24d2badce18e', NULL, 1, NULL, '[]', 0, '2020-07-29 14:28:00', '2020-07-29 14:28:00', '2021-07-29 14:28:00'),
('f79459948f6b35ab9f2353fa2bf760ed732ae6b20c0e5a9d2c2071c3e88b9b5a8752dc45cc868066', NULL, 1, NULL, '[]', 0, '2020-07-07 08:31:46', '2020-07-07 08:31:46', '2021-07-07 08:31:46'),
('f7d8e3e4aca579e84262263ccd589eb4e6b7873f8a7cd4b1a56ae2c08cbcdc9e479a35a57fc50a61', NULL, 1, NULL, '[]', 0, '2020-07-29 12:04:13', '2020-07-29 12:04:13', '2021-07-29 12:04:13'),
('f8162e0fea2496a06e9acba2e09e71ac5bf50703eced053b72e6e25d72074a0e4c80535a0d25d93a', NULL, 1, NULL, '[]', 0, '2020-06-01 05:29:17', '2020-06-01 05:29:17', '2021-06-01 05:29:17'),
('f9eaaf6fd70083f22011fe154ccbf9410cf4ed2d70f9f4c57874ae169cfbb26ce1b1695a3a47c342', NULL, 1, NULL, '[]', 0, '2020-06-10 08:55:16', '2020-06-10 08:55:16', '2021-06-10 08:55:16'),
('f9ee9bc4583df87496cf346c77ded2812aeb9e9d208b7cbd49e3a2706dd45acf2b055252ad9a578f', NULL, 1, NULL, '[]', 0, '2020-02-07 06:05:10', '2020-02-07 06:05:10', '2021-02-07 06:05:10'),
('fab003a64249ccd992b5018818a397f4c3f5ca5e5ae660b5901b3bd19bbc465306f1be799ec3f53e', NULL, 1, NULL, '[]', 0, '2020-07-06 11:16:49', '2020-07-06 11:16:49', '2021-07-06 11:16:49'),
('fb2fb863b1225801e907d5f19c582da19d30501a90cf8b4f0496b58e4983fd09b6fc8d3011dcf1a1', NULL, 1, NULL, '[]', 0, '2020-07-21 13:46:51', '2020-07-21 13:46:51', '2021-07-21 13:46:51'),
('fb654e3ec6a42fd70679d1af0cd73a308fa6c56cee495e156af92031db24f0d17f69510988b6b606', NULL, 1, NULL, '[]', 0, '2020-04-13 10:58:41', '2020-04-13 10:58:41', '2021-04-13 10:58:41'),
('fbb489f1fcec4565ae6e2fdb1c63b5f3a5c44ff73af90c1d080d97d99b3d900e44ff803e327b9d4e', NULL, 1, NULL, '[]', 0, '2020-10-06 12:59:08', '2020-10-06 12:59:08', '2021-10-06 12:59:08'),
('fd078763f948d71542b9cfa01ca1d23204fc3c576f4ffbce432de5a8028afeea8b8ad4ef4faca466', NULL, 1, NULL, '[]', 0, '2020-07-27 06:03:34', '2020-07-27 06:03:34', '2021-07-27 06:03:34'),
('fd573c4c04518750392302a21365343d81b1d0817b7318d112b43ee2db1e41bfb724edaa7133e39b', NULL, 1, NULL, '[]', 0, '2020-11-03 10:32:59', '2020-11-03 10:32:59', '2021-11-03 10:32:59'),
('fdea5368e67fdf2903d3ecf2f7728944240f86054a7280ac48cc4bb37daa835cc00633d3662eaf9c', NULL, 1, NULL, '[]', 0, '2020-11-03 12:04:17', '2020-11-03 12:04:17', '2021-11-03 12:04:17'),
('fdf4a56fa34dd3851b505f12d7b47884292ae96c06b0b87d934ebc22168f3bb5ac9fbc2b315882e0', NULL, 1, NULL, '[]', 0, '2020-07-25 10:44:36', '2020-07-25 10:44:36', '2021-07-25 10:44:36'),
('fe3a5050764cc134a5346a9532516e74b48426e4f81b7e39c9ee71c9496d42e56835a052dddf02b3', NULL, 1, NULL, '[]', 0, '2020-11-03 11:10:48', '2020-11-03 11:10:48', '2021-11-03 11:10:48'),
('fed28743f4dad0ea227456e5638fe71c6256bcb1c3564db3958568030b7d45d80fb11ee678130bee', NULL, 9, NULL, '[]', 0, '2022-03-11 01:39:14', '2022-03-11 01:39:14', '2023-03-11 07:09:14'),
('ff0cd9d707726822d57acac4a8d75bda381717a4ccbc1755b5182591e029ca3a1947bb91cf91dd6b', NULL, 1, NULL, '[]', 0, '2020-04-06 11:02:59', '2020-04-06 11:02:59', '2021-04-06 11:02:59'),
('fff805535e349f742b488268423ba7cedcd144b52378e1eb3b4c76f0aa412c2d9f0df4e4ffe7db5f', NULL, 7, NULL, '[]', 0, '2021-08-04 23:24:38', '2021-08-04 23:24:38', '2022-08-05 04:54:38');

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
(1, NULL, 'SP Notifications MS Personal Access Client', 'asdt3nQq1nrl7gUKLlxLWpgsqNPnCeLsSsoiTFEN', 'http://localhost', 1, 0, 0, '2020-01-21 12:15:41', '2020-01-21 12:15:41'),
(2, NULL, 'SP Notifications MS Password Grant Client', 'sA6NuE986ABCvl68pM7jFzP3gkWxFGQ6KcXpNnCW', 'http://localhost', 0, 1, 0, '2020-01-21 12:15:41', '2020-01-21 12:15:41'),
(3, NULL, 'SP Notifications MS Personal Access Client', 'NozY4Ewcau4mffRpiefP1bbjwpHBiSzKVfH8ODSb', 'http://localhost', 1, 0, 0, '2021-03-15 05:23:14', '2021-03-15 05:23:14'),
(4, NULL, 'SP Notifications MS Password Grant Client', 'F0sZWcza1MzfozJXQbNH1d1QzR6cgHpRRhved1pw', 'http://localhost', 0, 1, 0, '2021-03-15 05:23:15', '2021-03-15 05:23:15'),
(5, NULL, 'SP Notifications MS Personal Access Client', 'PzWNJ1ecCDM1bnXnOnAN4dnCqKE12WSBzoIc1RCP', 'http://localhost', 1, 0, 0, '2021-03-15 05:57:13', '2021-03-15 05:57:13'),
(6, NULL, 'SP Notifications MS Password Grant Client', 'jBpnjLNOBFLM3OwQZzrp4WtFHBismknJjNsVjWr2', 'http://localhost', 0, 1, 0, '2021-03-15 05:57:13', '2021-03-15 05:57:13'),
(7, NULL, 'SP Notifications MS Personal Access Client', 'S74OBZoQ0A7IgvfxLhK2Zq3n7Lu9o269XIfaK6ci', 'http://localhost', 1, 0, 0, '2021-07-20 00:43:45', '2021-07-20 00:43:45'),
(8, NULL, 'SP Notifications MS Password Grant Client', 'ZWwwyI9tNF8oYBTgD0Hgrqs8XCUZCbKYCETkZXTY', 'http://localhost', 0, 1, 0, '2021-07-20 00:43:45', '2021-07-20 00:43:45'),
(9, NULL, 'SP Notifications MS Personal Access Client', 'T4csE9E7ECxuAfgFEZ49K5s4Ir3OiR8IqiexOszw', 'http://localhost', 1, 0, 0, '2022-03-08 00:32:27', '2022-03-08 00:32:27'),
(10, NULL, 'SP Notifications MS Password Grant Client', 'X0ST6shlc4P1P9LWYhtNJ7CbP0dgNNIzvVkU8IIN', 'http://localhost', 0, 1, 0, '2022-03-08 00:32:27', '2022-03-08 00:32:27');

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
(1, 1, '2020-01-21 12:15:41', '2020-01-21 12:15:41'),
(2, 3, '2021-03-15 05:23:14', '2021-03-15 05:23:14'),
(3, 5, '2021-03-15 05:57:13', '2021-03-15 05:57:13'),
(4, 7, '2021-07-20 00:43:45', '2021-07-20 00:43:45'),
(5, 9, '2022-03-08 00:32:27', '2022-03-08 00:32:27');

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
