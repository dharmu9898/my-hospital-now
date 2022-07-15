-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 08:08 AM
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
-- Database: `mhn-doctors-ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `doct_name`, `doct_email`, `doct_id`, `created_at`, `updated_at`) VALUES
(5, 'Bariatric / Obesity surgery', 'DR KD', 'kd@g.com', '58', NULL, NULL),
(6, 'Chinese Medicine', 'DR KD', 'kd@g.com', '58', NULL, NULL),
(7, 'Ayurveda', 'Amardeep', 'ad@g.coom', '62', NULL, NULL),
(8, 'Cancer Alternative treatments', 'Amardeep', 'ad@g.coom', '62', NULL, NULL),
(9, 'Bariatric / Obesity surgery', 'Ram', 'ram@shiv.com', '63', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(10) NOT NULL,
  `name` varchar(210) NOT NULL,
  `state_id` int(30) NOT NULL,
  `state_name` varchar(210) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `state_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Alluri Sitaram Raju Academy of Medical Sciences, Eluru', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(2, 'Andhra Medical College, Visakhapatnam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(3, 'Bhaskar Medical College, Yenkapally', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(4, 'Chalmeda Anand Rao Insttitute Of Medical Sciences, Karimnagar', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(5, 'Deccan College of Medical Sciences, Hyderabad', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(6, 'Dr. VRK Womem\'s Medical College, Aziznagar', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(7, 'Fathima Instt. of Medical Sciences,Kadapa', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(8, 'Gandhi Medical College, Hyderabad', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(9, 'Government Medical College, Anantapur', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(10, 'Great Eastern Medical School and Hospital,Srikakulam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(11, 'GSL Medical College, Rajahmundry', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(12, 'Guntur Medical College, Guntur', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(13, 'Kakatiya Medical College, Wrangal', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(14, 'Kamineni Institute of Medical Sciences, Narketpally', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(15, 'Katuri Medical College, Guntur', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(16, 'Konaseema Institute of Medical Sciences & Research Foundation, Amalapuram', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(17, 'Kurnool Medical College, Kurnool', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(18, 'Maharajah Institute of Medical Sciences, Vizianagaram', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(19, 'Mamata Medical College, Khammam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(20, 'Medicity Institute Of Medical Sciences, Ghanpur', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(21, 'MNR Medical College, Sangareddy', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(22, 'Narayana Medical College, Nellore', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(23, 'NRI Medical College, Guntur', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(24, 'Osmania Medical College, Hyderabad', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(25, 'P E S Institute Of Medical Sciences and Research, Kuppam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(26, 'P.S.I. Medical College , Chinoutpalli', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(27, 'Prathima Institute Of Medical Sciences, Karimnagar', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(28, 'Rajiv Gandhi Institute of Medical Sciences, adilabad', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(29, 'Rajiv Gandhi Institute of Medical Sciences, Kadapa', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(30, 'Rajiv Gandhi Institute of Medical Sciences, Srikakulam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(31, 'Rajiv Gandhi Institute of Medical Sciences, Ongole', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(32, 'Rangaraya Medical College, Kakinada', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(33, 'S V Medical College, Tirupati', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(34, 'S V S Medical College, Mehboobnagar', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(35, 'Santhiram Medical College, Nandyal', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(36, 'Shadan Institute of Medical Sciences,Research Centre and Teaching Hospital, Peerancheru', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(37, 'Siddhartha Medical College, Vijaywada', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(38, 'Sri Sathya Sai Institute of Higher Medical Sciences, Puttaparthi', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(39, 'P.E.S. Institute of Medical Sciences and Research, Kuppam', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(40, 'Alluri Sitarama Raju Academy of Medical Sciences, Eluru', 4017, 'Andhra Pradesh', '0000-00-00 00:00:00', NULL),
(41, 'Assam Medial College, Dibrugarh', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(42, 'Gauhati Medical College and Hospital (GMCH), Guwahati', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(43, 'Jorhat Medical College and Hospital (JMCH), Jorhat', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(44, 'Silchar Medical College and Hospital (SMCH), Silchar', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(45, 'Diphu Medical College and Hospital (DMCH), Diphu', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(46, 'Fakhruddin Ali Ahmed Medical College and Hospital, Barpeta', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(47, 'Tezpur Medical College and Hospital (TMCH), Tezpur', 4027, 'Assam', '0000-00-00 00:00:00', NULL),
(48, 'A N Magadh Medical College, Gaya', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(49, 'Darbhanga Medical College and Hospital, Lehriasarai', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(50, 'Jawaharlal Nehru Medical College, Bhagalpur', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(51, 'Katihar Medical College, Katihar', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(52, 'Mata Gujri Memorial Medical College, Kishanganj', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(53, 'Nalanda Medical College, Patna', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(54, 'Narayan Medical College & Hospital, Sasaram', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(55, 'Patna Medical College, Patna', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(56, 'Shri Krishna Medical College, Muzzafarpur', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(57, 'Government Medical College, Bettiah', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(58, 'Indira Gandhi Institute of Medical Sciences 1983', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(59, 'Lord Buddha Koshi Medical College and Hospital Saharsa', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(60, 'Rajendra Memorial Research Institute of Medical Sciences Patna', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(61, 'Vardhman Institute of Medical Sciences', 4037, 'Bihar', '0000-00-00 00:00:00', NULL),
(62, 'Government Medical College, Chandigarh', 4031, 'Chandigarh', '0000-00-00 00:00:00', NULL),
(63, 'Post Graduate Institute of Medical Education and Research', 4031, 'Chandigarh', '0000-00-00 00:00:00', NULL),
(64, 'Chhattisgarh Institute of Medical Sciences, Bilaspur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(65, 'Government Medical College, NMDC, Jagdalpur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(66, 'Pt. J N M Medical College, Raipur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(67, 'All India Institute of Medical Sciences, Raipur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(68, 'Government Medical College, Raigarh', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(69, 'Government Medical College, Rajnandgaon', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(70, 'Late Baliram Kashyap Memorial Government Medical College, Jagdalpur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(71, 'Raipur Institute of Medical Sciences, Raipur', 4040, 'Chattisgarh', '0000-00-00 00:00:00', NULL),
(72, 'All India Institute of Medical Sciences, New Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(73, 'Army College of Medical Sciences, New Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(74, 'Lady Hardinge Medical College, New Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(75, 'Maulana Azad Medical College, New Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(76, 'University College of Medical Sciences & GTB Hospital, New Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(77, 'Vardhman Mahavir Medical College & Safdarjung Hospital, Delhi', 4021, 'Delhi', '0000-00-00 00:00:00', NULL),
(78, 'Goa Medical College, Panaji', 4009, 'Goa', '0000-00-00 00:00:00', NULL),
(79, 'Ahmedabad Municipal Coporation Medical Education Trust Medical College, Ahmedabad', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(80, 'B J Medical College, Ahmedabad', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(81, 'CU Shah Medical College, Surendra Nagar', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(82, 'Government Medical College, Bhavnagar', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(83, 'Government Medical College, Surat', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(84, 'Gujarat Adani Institute of Medical Sciences, Bhuj', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(85, 'K.J. Mehta General Hospital & College of Medical Sciences, Amargadh', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(86, 'Kesarsal Medical College & Research Institute, Ahmedabad', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(87, 'Medical College, Baroda', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(88, 'MP Shah Medical College,Jamnagar', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(89, 'Pandit Deendayal Upadhyay Medical College, Rajkot', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(90, 'Pramukhswami Medical College, Karmsad', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(91, 'SBKS Medical Instt. & Research Centre, Vadodra', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(92, 'Smt. N.H.L.Municipal Medical College, Ahmedabad', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(93, 'Surat Municipal Institute of Medical Education & Research, Surat', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(94, 'Vivekanand Institute Of Medical Sciences & Research, Valia', 4030, 'Gujarat', '0000-00-00 00:00:00', NULL),
(95, 'Maharaja Agrasen Medical College, Agroha', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(96, 'Maharishi Markandeshwar Institute Of Medical Sciences & Research, Mullana, Ambala', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(97, 'Pt. B D Sharma Postgraduate Institute of Medical Sciences, Rohtak (Haryana)', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(98, 'Shree Guru Gobind Singh Tricentenary Medical College, Gurgaon', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(99, 'AIIMS, Badsa (Jhajjar)', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(100, 'Bhagat Phool Singh Medical College, Sonipat', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(101, 'Employees State Insurance Corporation Medical College, Faridabad', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(102, 'Kalpana Chawla Government Medical College, Karnal', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(103, 'Shaheed Hasan Khan Mewati Government Medical College, Nalhar, Mewat,', 4007, 'Haryana', '0000-00-00 00:00:00', NULL),
(104, 'Dr. Rajendar Prasad Government Medical College, Tanda, H.P', 4020, 'Himachal Pradesh', '0000-00-00 00:00:00', NULL),
(105, 'Indira Gandhi Medical College, Shimla', 4020, 'Himachal Pradesh', '0000-00-00 00:00:00', NULL),
(106, 'Acharya Shri Chander College of Medical Sciences, Jammu', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(107, 'Government Medical College, Jammu', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(108, 'Government Medical College, Srinagar', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(109, 'Sher-I-Kashmir Instt. Of Medical Sciences, Srinagar', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(110, 'Government Medical College, Baramulla', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(111, 'Government Medical College, Anantnag', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(112, 'Government Medical College, Rajouri', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(113, 'Government Medical College, Kathua', 4029, 'Jammu & Kashmir', '0000-00-00 00:00:00', NULL),
(114, 'M G M Medical College, Jamshedpur', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(115, 'Patliputra Medical College, Dhanbad', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(116, 'Rajendra Institute of Medical Sciences, Ranchi', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(117, 'All India Institute of Medical Sciences, Deoghar', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(118, 'Hazaribag Medical College', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(119, 'Palamu Medical College ? Medininagar, Palamu', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(120, 'Phulo Jhano Murmu Medical College and Hospital, Dumka', 4025, 'Jharkhand', '0000-00-00 00:00:00', NULL),
(121, 'A J Institute of Medical Sciences & Research Centre, Mangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(122, 'Adichunchanagiri Institute of Medical Sciences Bellur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(123, 'Al-Ameen Medical College,Bijapur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(124, 'Bangalore Medical College and Research Institute, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(125, 'Basaveswara Medical College and Hospital, Chitradurga', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(126, 'Belgaum Institute of Medical Sciences, Belgaum', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(127, 'Bidar Institute of Medical Sciences,Bidar', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(128, 'Dr BR Ambedkar Medical College, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(129, 'Father Muller?s Institue of Medical Education and Research, Mangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(130, 'Govt. Medical College, Mysore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(131, 'Hassan Institute of Medical Sciences, Hassan', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(132, 'Jawaharlal Nehru Medical College, Belgaum', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(133, 'JJM Medical College, Davangere', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(134, 'JSS Medical College, Mysore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(135, 'K S Hegde Medical Academy, Mangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(136, 'K V G Medical College, Sullia', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(137, 'Karnataka Institute of Medical Sciences, Hubli', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(138, 'Kasturba Medical College, Mangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(139, 'Kasturba Medical College, Manipal', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(140, 'Kempegowda Institute of Medical Sciences, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(141, 'Khaja Banda Nawaz Institute of Medical Sciences, Gulbarga', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(142, 'M S Ramaiah Medical College, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(143, 'Mahadevappa Rampure Medical College, Gulbarga', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(144, 'Mandya Institute of Medical Sciences, Mandya', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(145, 'MVJ Medical College and Research Hospital, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(146, 'Navodaya Medical College, Raichur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(147, 'Raichur Institute of Medical Sciences,Raichur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(148, 'Rajarajeswari Medical College & Hospital, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(149, 'S S Institute of Medical Sciences& Research Centre, Davangere', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(150, 'S. Nijalingappa Medical College & HSK Hospital & Research Centre, Bagalkot', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(151, 'SDM Medical College , Dharwad', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(152, 'Shimoga Institute of Medical Sciences,Shimoga', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(153, 'Shri B M Patil Medical College, Hospital & Research Centre, Bijapur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(154, 'Sri Devaraj URS Medical College, Kolar', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(155, 'Sri Siddhartha Medical College, Tumkur', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(156, 'St. Johns Medical College, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(157, 'Vijaynagar Institute of Medical Sciences, Bellary', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(158, 'Vydehi Institute Of Medical Sciences & Research Centre, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(159, 'Yenepoya Medical College, Mangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(160, 'Gulbarga Institute of Medical Sciences, Gulbarga', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(161, 'Koppal Institute of Medical Sciences, Koppal', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(162, 'National Institute of Mental Health and Neurosciences, Bangalore', 4026, 'Karnataka', '0000-00-00 00:00:00', NULL),
(163, 'Academy of Medical Sceiences,Pariyaram, Kannur', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(164, 'Amala Institute of Medical Sciences, Thrissur', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(165, 'Amrita School of Medicine,Kochi', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(166, 'Azeezia Instt of Medical Science,Meeyannoor,Kollam', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(167, 'Co-operative Medical College, Kochi', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(168, 'Dr. Somervel Memorial CSI Hospital & Medical College, Karakonam, Thiruvananthapuram', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(169, 'Government Medical College, Kottayam', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(170, 'Govt. Medical College, Calicut', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(171, 'Govt. Medical College, Trichur', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(172, 'Jubilee Mission Medical College & Research Institute, Thrissur', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(173, 'Kannur Medical College, Kannur', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(174, 'Karuna Medical College, Palakkad', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(175, 'KMCT Medical College,Calicut', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(176, 'M E S Medical College , Perintalmanna Malappuram Distt.Kerala', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(177, 'Malabar Medical College, Kozhikode', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(178, 'Malankara Orthodox & Syrian Church Medical College, Kolencherry', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(179, 'Medical College, Thiruvananthapuram', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(180, 'Pushpagiri Institute Of Medical Sciences and Research Centre, Tiruvalla', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(181, 'Sree Narayana Instt. of Medical Sciences, Chalakka,Ernakulam', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(182, 'Sree Uthradom Thiurnal Academy of Medical Sciences,Trivandrum', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(183, 'Sri Gokulam Medical College Trust & Research Foundation, Trivandrum', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(184, 'T D Medical College, Alleppey (Allappuzha)', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(185, 'Travancore Medical College, Kollam', 4028, 'Kerala', '0000-00-00 00:00:00', NULL),
(186, 'Gajra Raja Medical College, Gwalior', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(187, 'Gandhi Medical College, Bhopal', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(188, 'Index Medical College Hospital & Research Centre,Indore', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(189, 'L.N. Medical College and Research Centre,Bhopal', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(190, 'M G M Medical College, Indore', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(191, 'Netaji Subash Chandra Bose Medical College, Jabalpur', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(192, 'Peoples College of Medical Sciences & Research Centre, Bhanpur', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(193, 'Ruxmaniben Deepchand Gardi Medical College, Ujjain', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(194, 'Sagar Medical College, Sagar', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(195, 'Shri Aurobindo Institute of Medical Sciences, Indore', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(196, 'Shyam Shah Medical College, Rewa', 4039, 'Madhya Pradesh', '0000-00-00 00:00:00', NULL),
(197, 'ACPM Medical College, Dhule', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(198, 'Armed Forces Medical College, Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(199, 'B. J. Medical College, Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(200, 'Bharati Vidyapeeth Deemed University Medical College & Hospital, Sangli', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(201, 'Bharati Vidyapeeth University Medical College, Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(202, 'Dr Vaishampayan Memorial Medical College, Solapur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(203, 'Dr. D Y Patil Education Societys D Y Patial Medical College, Kolhapur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(204, 'Dr. Panjabrao Alias Bhausaheb Deshmukh Memorial Medical College, Amravati', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(205, 'Dr. Shankarrao Chavan Govt. Medical College, Nanded', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(206, 'Dr. Ulhas Patil Medical College & Hospital, Jalgaon', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(207, 'Dr.Vasantrao Pawar Med. Col. Hosp. & Research Centre,Nasik (Prev. NDMVP Samaj Medical College)', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(208, 'Government Medical College, Aurangabad', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(209, 'Government Medical College, Nagpur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(210, 'Govt Medical College, Akola', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(211, 'Govt. Medical College , Latur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(212, 'Govt. Medical College, Miraj', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(213, 'Grant Medical College, Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(214, 'Indira Gandhi Medical College & Hospital, Nagpur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(215, 'Jawaharlal Nehru Medical College, Sawangi (Meghe), Wardha', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(216, 'KJ Somaiyya Medical College & Research Centre, Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(217, 'Krishna Institute of Medical Sciences, Karad', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(218, 'Lokmanya Tilak Municipal Medical College,Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(219, 'Maharashtra Institute of Medical Sciences & Research, Latur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(220, 'Maharashtra Institute of Medical Education & Research, Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(221, 'Mahatma Gandhi Institute of Medical Sciences, Sevagram, Wardha', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(222, 'Mahatma Gandhi Mission?s Medical College, Navi Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(223, 'Mahatma Gandhi Mission\'s Medical College, Aurangabad', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(224, 'N. K. P. Salve Institute of Medical Sciences, Nagpur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(225, 'Padmashree Dr. D Y Patil Medical College, Pimpri, Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(226, 'Padmashree Dr. D.Y.Patil Medical College, Navi Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(227, 'Padmashri Dr. Vithalrao Vikhe Patil Foundations Medical College, Ahmednagar', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(228, 'Rajashree Chatrapati Shahu Maharaj Government Medical College, Kolhapur', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(229, 'Rajiv Gandhi Medical College and Chhatrapati Shivaji Maharaj Hospital, Thane', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(230, 'Rural Medical College, Loni', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(231, 'Seth GS Medical College, Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(232, 'Shri Vasant Rao Naik Govt. Medical College, Yavatmal', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(233, 'Smt. Kashibai Navale Medical College and Hospital,Narhe,Pune', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(234, 'Sri Bhausaheb Hire Government Medical College, Dhule', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(235, 'SRTR Medical College, Ambajogai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(236, 'Terna Medical College, Navi Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(237, 'Topiwala National Medical College, Mumbai', 4008, 'Maharashtra', '0000-00-00 00:00:00', NULL),
(238, 'Jawaharlal Nehru Institute of Medical Sciences,Porompet,Imphal', 4010, 'Manipur', '0000-00-00 00:00:00', NULL),
(239, 'Regional Institute of Medical Sciences, Imphal', 4010, 'Manipur', '0000-00-00 00:00:00', NULL),
(240, 'Hi-Tech Medical College & Hospital, Bhubaneswar', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(241, 'Instt. Of Medical Sciences & SUM Hospital, Bhubaneswar', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(242, 'Kalinga Institute of Medical Sciences, Bhubaneswar', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(243, 'MKCG Medical College, Berhampur', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(244, 'SCB Medical College, Cuttack', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(245, 'VSS Medical College, Burala', 4013, 'Orissa', '0000-00-00 00:00:00', NULL),
(246, 'Aarupadai Veedu Medical College, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(247, 'Indira Gandhi Medical College & Research Institute, Puducherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(248, 'Jawaharlal Institute of Postgraduate Medical Education & Research, Puducherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(249, 'Mahatma Gandhi Medical College & Research Institute, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(250, 'Pondicherry Institute of Medical Sciences & Research, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(251, 'Sri Lakshmi Narayana Institute of Medical Sciences, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(252, 'Sri Manakula Vinayagar Medical College & Hospital, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(253, 'Sri Venkateswaraa Medical College, Hospital & Research Centre, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(254, 'Vinayaka Missions Medical College, Pondicherry', 4011, 'Puducherry', '0000-00-00 00:00:00', NULL),
(255, 'Adesh Institute of Medical Sciences & Research, Bhatinda', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(256, 'Christian Medical College, Ludhiana', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(257, 'Dayanand Medical College & Hospital, Ludhiana', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(258, 'Gian Sagar Medical College & Hospital, Patiala', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(259, 'Government Medical College, Amritsar', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(260, 'Government Medical College, Patiala', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(261, 'Guru Govind Singh Medical College, Faridkot', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(262, 'Sri Guru Ram Das Institute of Medical Sciences and Research, Sri Amritsar', 4015, 'Punjab', '0000-00-00 00:00:00', NULL),
(263, 'Dr SN Medical College, Jodhpur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(264, 'Geetanjali Medical College & Hospital,Udaipur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(265, 'Government Medical College, Kota', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(266, 'Jawaharlal Nehru Medical College, Ajmer', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(267, 'Jhalawar Medical College, Jhalawa', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(268, 'Mahatma Gandhi Medical College and Hospital, Jaipur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(269, 'National Institute of Medical Science & Research, Jaipur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(270, 'R N T Medical College, Udaipur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(271, 'Sardar Patel Medical College, Bikaner', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(272, 'SMS Medical College, Jaipur', 4014, 'Rajasthan', '0000-00-00 00:00:00', NULL),
(273, 'Sikkim Manipal Institute of Medical Sciences, Gangtok', 4034, 'Sikkim', '0000-00-00 00:00:00', NULL),
(274, 'ACS Medical College and Hospital, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(275, 'Chengalpattu Medical College, Chengalpattu', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(276, 'Chennai Medical College Hospital and research centre,Trichy', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(277, 'Chettinad Hospital & Research Institute, Kanchipuram', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(278, 'Christian Medical College, Vellore', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(279, 'Coimbatore Medical College, Coimbatore', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(280, 'D.D. Medical College and Hospital, Tiruvallur, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(281, 'Government Dharamapuri Medical College, Dharamapuri', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(282, 'Government Vellore Medical College, Vellore', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(283, 'K A P Viswanathan Government Medical College, Trichy', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(284, 'KanyaKumari Government Medical College, Asaripallam', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(285, 'Karpaga Vinayaga Institute of Medical Sciences,Maduranthagam', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(286, 'Kilpauk Medical College, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(287, 'Madras Medical College, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(288, 'Madurai Medical College, Madurai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(289, 'Meenakshi Medical College and Research Institute, Enathur', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(290, 'Melmaruvathur Adiparasakthi Instt. Medical Sciences and Research', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(291, 'Mohan Kumaramangalam Medical College, Salem', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(292, 'Perunthurai Medical College and Institute of Road Transport, Perunthurai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(293, 'PSG Institute of Medical Sciences, Coimbatore', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(294, 'Rajah Muthiah Medical College, Annamalainagar', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(295, 'Saveetha Medical College and Hospital, Kanchipuram', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(296, 'Shri Satya Sai Medical College and Research Institute, Kancheepuram', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(297, 'Sree Balaji Medical College and Hospital, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(298, 'Sree Mookambika Institute of Medical Sciences, Kanyakumari', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(299, 'Sri Muthukumaran Medical College,Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(300, 'Sri Ramachandra Medical College & Research Institute, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(301, 'SRM Medical College Hospital & Research Centre, Kancheepuram', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(302, 'Stanley Medical College, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(303, 'Tagore Medical College and Hospital, Chennai', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(304, 'Thanjavur Medical College,Thanjavur', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(305, 'Theni Government Medical College,Theni', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(306, 'Thiruvarur Govt. Medical College, Thiruvarur', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(307, 'Thoothukudi Medical College, Thoothukudi', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(308, 'Tirunelveli Medical College,Tirunelveli', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(309, 'Villupuram Medical Cololege, Villupuram', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(310, 'Vinayaka Missions Kirupananda Variyar Medical College, Salem', 4035, 'Tamil Nadu', '0000-00-00 00:00:00', NULL),
(311, 'Agartala Government Medical College,Agartala', 4038, 'Tripura', '0000-00-00 00:00:00', NULL),
(312, 'Tripura Medical College and Dr. B R A M Teaching Hospital, Agartala', 4038, 'Tripura', '0000-00-00 00:00:00', NULL),
(313, 'BRD Medical College, Gorakhpur', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(314, 'Chhatrapati Shahuji Maharaj Medical University, Lucknow', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(315, 'Era\'s Lucknow Medical College , Lucknow', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(316, 'GSVM Medial College, Kanpur', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(317, 'Hind Institute of Medical Sciences , Barabanki', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(318, 'Institute of Medical Sciences, BHU, Varansi', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(319, 'Jawaharlal Nehru Medical College, Aligarh', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(320, 'LLRM Medical College, Merrut', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(321, 'Maharani Laxmi Bai Medical College, Jhansi', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(322, 'Moti Lal Nehru Medical College, Allahabad', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(323, 'Muzaffarnagar Medical College, Muzaffarnagar', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(324, 'Rama Medical College and Hospital , Kanpur', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(325, 'Rohilkhand Medical College & Hospital, Bareilly', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(326, 'S N Medical College, Agra', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(327, 'Santosh Medical College, Ghaziabad', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(328, 'Saraswati Institute of Medical Sciences, Hapur', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(329, 'School of Medical Sciences & Research,Greater Noida', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(330, 'Shri Ram Murti Smarak Institute of Medical Sciences, Bareilly', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(331, 'Subharti Medical College, Meerut', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(332, 'Teerthankar Mahaveer Medical College, Moorabad', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(333, 'U.P. Rural Institute of Medical Sciences & Research, Etawah', 4022, 'Uttar Pradesh', '0000-00-00 00:00:00', NULL),
(334, 'Govt. Medical College (Prev.Uttarakhand Forest Hospital Trust Med.Col.), Haldwani', 4016, 'Uttarakhand', '0000-00-00 00:00:00', NULL),
(335, 'Himalayan Institute of Medical Sciences, Dehradun', 4016, 'Uttarakhand', '0000-00-00 00:00:00', NULL),
(336, 'Shri Guru Ram Rai Institute of Medical & Health Sciences, Dehradun', 4016, 'Uttarakhand', '0000-00-00 00:00:00', NULL),
(337, 'Veer Chandra Singh Garhwali Govt. Medical Sc. & Research Instt, Srinagar, Pauri Garhwal', 4016, 'Uttarakhand', '0000-00-00 00:00:00', NULL),
(338, 'Bankura Sammilani Medical College, Bankura', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(339, 'Burdwan Medical College, Burdwan', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(340, 'Calcutta National Medical College, Kolkata', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(341, 'College of Medicine and JNM Hospital,Kalyani,Nadia', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(342, 'Institute of Postgraduate Medical Education & Research, Kolkota', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(343, 'KPC Medical College,Jadavpur,Kolkata', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(344, 'Medical College, Kolkata', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(345, 'Midnapore Medical College, Midnapore', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(346, 'Nilratan Sircar Medical College, Calcutta', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(347, 'North Bengal Medical College, Darjeeling', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(348, 'RG Kar Medical College, Calcutta', 4853, 'West Bengal', '0000-00-00 00:00:00', NULL),
(349, 'Tomo Riba Institute of Health and Medical Sciences, Naharlagun', 4024, 'Arunachal Pradesh', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `council`
--

CREATE TABLE `council` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `council`
--

INSERT INTO `council` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh Medical Council\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Andhra Pradesh Paramedical Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Andhra Pradesh Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Andhra Boards for Ayurveda & Homeopathy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Board of Indian Medicines, Andhra Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Andhra Pradesh Nurses & Midwives Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Arunachal Pradesh Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Arunachal Pradesh Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Arunachal Pradesh Dental Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Arunachal Pradesh Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Arunachal Pradesh Homoeopathic Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Arunachal Pradesh Indian Medicine Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Assam Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Assam State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Assam Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'State Council of Indian Medicine, Assam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Board of Homoeopathic System of Medicine, Assam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Assam Nurses Midwives & Health Visitor Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bihar Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Bihar Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Bihar State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Bihar Nurses Registration Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'State Board of Homoeopathic Medicine, Bihar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'State Council of Ayurvedic & Unani Medicine, Bihar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Chattisgarh Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Dental Council of Chandigarh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Council of Homoepathic System of Medicine, Chandigarh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Goa Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Goa Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Goa State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Goa State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Goa Board of Indian Systems of Medicine and Homoeopathy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Gujarat Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Gujarat State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Gujarat State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Gujarat Board of Ayurvedic & Unani Systems of Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Gujarat State of Council for Physiotherapy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Council of Homoepathic System of Medicine, Gujarat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Council of Indian Medicine, Haryana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Haryana State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Haryana State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Haryana State Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Board of Ayurvedic & Unani Systems of Medicine, Haryana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Council of Homoeopathic System of Medicine, Haryana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Himachal Pradesh State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Himachal Pradesh Paramedical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Himachal Pradesh Nurses Registration Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'State council of Homoeopathic System of Medicine, Himachal Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Board of Ayurvedic & Unani Systems of Medicine, Himachal Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Jharkhand Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Jharkhand State Chikitsa Parishad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Jharkhand Nurses Registration Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Jharkhand Dentist Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Karnataka Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Karnataka Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Karnataka State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Karnataka Aryurvedica and Unanai Practitioner\'s Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Karnataka Board of Homoeopathic System of Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Kerala State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Kerala Nurses & Midwives Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Kerala Sarankur Cochin Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Travancore - Cochin Council of Modern Medicine, Kerala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Travancore - Cochin Council for Indian System of Medicine, Kerala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Travancore - Cochin Council of Homoeopathic Medicine , Kerala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Madhya Pradesh State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Madhya Pradesh Paramedical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'State Council of Homoeopathy, Madhya Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Madhya Pradesh Nurses Registration Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Madhya Pradesh State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Madhya Pradesh Ayurvedic, Unani & Prakritic Chikitsa Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Maharashtra State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Maharashtra Council of Homoeopathy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Maharashtra Council of Indian Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Maharashtra State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Maharashtra Electrohomeopathy Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Maharashtra State Occupational & Physiotherapy Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Manipur Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Manipur Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Manipur State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Manipur State Dental Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Meghalaya Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Meghalaya Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Meghalaya State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Board of Homoeopathic Medicine, Meghalaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Mizoram Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Mizoram Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Mizoram State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Nagaland Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Nagaland State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Nagaland State Dental Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Board of Homeopathic System of Medicine, Nagaland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Orissa Nurses & Midwives Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Orissa State Council of Ayurvedic Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Orissa State Board of Homoepathic Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Punjab State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Punjab Nurses Registration Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Punjab Council of Homeopathic System of Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Board of Ayurvedic & Unani Systems of Medicine, Punjab', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Council of Homeopathic System of Medicine, Punjab', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Council of Alternative System of Medicines, Punjab', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Rajasthan Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Board of Indian Medicine, Rajasthan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Rajasthan State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Rajasthan State Dental Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Rajasthan Homeopathic Medical Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Sikkim Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Sikkim Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Tamilnadu Psychology Association', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Tamilnadu Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Tamilnadu Homeopathic Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Tamilnadu Board of Indian Medicine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Tamilnadu State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Tamilnadu Siddha Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Telangana Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Telangana State Paramedical Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Telangana State Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Telangana State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Telangana State Dentists Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Boards of Indian Medicine & Homeopathy, Telangana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Tripura Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Tripura State Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Tripura Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Council of Homeopathic Medicine, Tripura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Tripura (Dentists) Registration Tribunal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Uttarakhand Nurses Midwives Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Uttarakhand Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Bhartiya Chikitsa Parishad, Uttarakhand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Uttarakhand State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Uttarakhand Homeopathic Medicine Board', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Uttarakhand Dentists Registration Tribunals', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'State Medical Faculty, Uttar Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Uttar Pradesh Nurses & Midwives Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Uttar Pradesh Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Uttar Pradesh Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Bhartiya Chikitsa Parishad, Uttar Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Homeopathic Medicine Board, Uttar Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Uttar Pradesh State Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Board of Ayurvedic and Unani Tibbi Systems of Medicine, Uttar Pradesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'West Bengal Medical Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'West Bengal Nursing Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'West Bengal State Dental Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'West Bengal Veterinary Council', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'State Council of Unani Medicine, West Bengal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Council of Homeopathic Medicine, West Bengal', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profiles`
--

CREATE TABLE `doctor_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` int(10) UNSIGNED NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doct_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `doct_name`, `doct_email`, `doct_id`, `created_at`, `updated_at`) VALUES
(5, 'Spanish', 'DR KD', 'kd@g.com', '58', NULL, NULL),
(6, 'English', 'Amardeep', 'ad@g.coom', '62', NULL, NULL),
(7, 'Hindi', 'Amardeep', 'ad@g.coom', '62', NULL, NULL),
(8, 'Hindi', 'Ram', 'ram@shiv.com', '63', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2020_08_11_053416_create_doctor_profiles_table', 1),
(9, '2020_08_12_095509_create_users_activations_table', 1),
(10, '2021_09_01_072353_create_categories_table', 2),
(11, '2021_09_01_091736_create_languages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('012c9530274a06a38b5601d6f5740f24c578414fcd7a71697fcd6cef0848c291314247730985e1de', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:10:05', '2021-05-03 05:10:05', '2022-05-03 10:40:05'),
('01c9f3d42cbf262ced30bce7a38514644bc3cf9f0d78981773376733ba274e74b247f31c36f88367', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:08:19', '2021-05-03 06:08:19', '2022-05-03 11:38:19'),
('0267554ccbfb8f6a7c5f90e23c6a21962cf9c7dcafbe372e717d7fdb623bc6c633a73dd649c7d111', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:50:22', '2021-04-13 05:50:22', '2022-04-13 11:20:22'),
('049f053c20cbd272b2352fbdb68017e3638642b2f990bc779d7a1d6ec673e20e8a9548431f31d76b', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:09:17', '2021-06-04 07:09:17', '2022-06-04 12:39:17'),
('04d187455c439f383143edb16a0e393db9b60f9ee47dd821c0b183989e8f7b52693190053ba6ee20', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:41:44', '2021-04-13 05:41:44', '2022-04-13 11:11:44'),
('0666d6b59d16c3e927a80989aeb5343f78030e506293d28320fdeadbeef89c23cdf0093028e30b5d', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 03:27:03', '2021-09-02 03:27:03', '2022-09-02 08:57:03'),
('06e19a450c05b42f84e2e02e68e7ad98c1a752be006e2e9c9944903ccc1076fb751bbbc42af3774b', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:15:44', '2021-04-14 04:15:44', '2022-04-14 09:45:44'),
('08a765eafc6a98cbf6e9b2396c350dc4bcb5f4a94eea2e89914f5209d18f7d63636b77abb4187bb7', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 04:02:57', '2021-05-03 04:02:57', '2022-05-03 09:32:57'),
('09d2197b28689b2cd4e68cc767229b3cc6d5584e4d1217ad63cc9d693e6bfe1526acbed5b496b156', 58, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:14:03', '2021-07-21 06:14:03', '2022-07-21 11:44:03'),
('0a595101f1a77cfa67870636d667ef8bd68937324f05f7311d16d3c1a5b4c212a95e139aabb0e06d', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:04:06', '2021-04-13 07:04:06', '2022-04-13 12:34:06'),
('0ba96db42a840ca8699084e2c54e24a1b924e854a9b71ba19a9adcd6a3ceb7aa165b9ca396733d18', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 03:33:29', '2021-04-14 03:33:29', '2022-04-14 09:03:29'),
('0c5afc941619d3ec6927b28d6a8ee4325ab3abe2ee2b6026dd40e26a2f1777b1ef431cfd581dcd98', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:52:24', '2021-04-14 08:52:24', '2022-04-14 14:22:24'),
('0d807295647635c363119414e5cadf6a27728d9b9fb014412ad6ae7c880ba75c23cb55247d81c233', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:07:52', '2021-05-03 05:07:52', '2022-05-03 10:37:52'),
('0e6defb5a4bdacdd77993e8a5991420406fe0df5589d36ec88df1310239728b8045c7f9e0804bd8a', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 10:01:08', '2021-04-16 10:01:08', '2022-04-16 15:31:08'),
('0f4eecb9090cbeb5bfbe0bc9504ba1bdb807f556814dd76f4ae3d42438d3c47e51555df55114a5fb', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:05:47', '2021-04-13 06:05:47', '2022-04-13 11:35:47'),
('0f91b950c9e5a2cd0280fa6849d6efd4d75813af130bfd2ceaedac7341e8e5d46fd5d75e30aa4a62', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:27:05', '2021-05-04 00:27:05', '2022-05-04 05:57:05'),
('0fbe86d39abb3031b49d21c73c1cc604f9736c72a22416ed8e600f5e7c9830f24f92907c2f8b7994', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:37:01', '2021-07-21 06:37:01', '2022-07-21 12:07:01'),
('0fd2eb61e5c1a1b94cc279b5a32bf3959eb4e34bdc864ba321785d9045bfdbfad76f7b18ea470f08', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:43:10', '2021-04-14 08:43:10', '2022-04-14 14:13:10'),
('1015b648cb8d4099606a97300b611cce31fabc088c9f265e1c879b1676f62b0c4f423ab3e2a91c1d', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:51:35', '2021-04-14 01:51:35', '2022-04-14 07:21:35'),
('12039cc5565ddd957b41bc1fdaa6dbefd50ac676559e664b04238710409bde24ae4261540fb35d7f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:45:52', '2021-04-14 04:45:52', '2022-04-14 10:15:52'),
('12f14eba9e61f7784824b471efafed8aa901defa550dc88de746fa3dc02e9f276292627172078021', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:56:08', '2021-04-13 04:56:08', '2022-04-13 10:26:08'),
('130347aa1844b3370cfe40b28cd0611e5abd9829a2fc6a7649ee22869ccc30f8bdaed16ab9089f81', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:20:55', '2021-04-14 08:20:55', '2022-04-14 13:50:55'),
('140aef8c7651b815ad991c048012afb93e9a143096348037370f154e7c4f0991d42089e5f02445a7', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:10:37', '2021-09-02 02:10:37', '2022-09-02 07:40:37'),
('1498ec72f12a01f69d73b72075d90816a23b5d97ea52dbbd680711567be0b983ee9c861cd52bb65d', 63, 7, 'd_user_api_token', '[]', 0, '2021-09-03 00:35:19', '2021-09-03 00:35:19', '2022-09-03 06:05:19'),
('16c30d22fb7bae1b880de31f204d794f168e9ee8ff7d3ae69559338cf672d4183eb08049eed2fbe4', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 07:05:07', '2021-05-03 07:05:07', '2022-05-03 12:35:07'),
('16f3691ead926ad8f5869bd421c3c37764247cc6179823e52ab85001aa21932650965ea19126faf2', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:29:22', '2021-04-14 04:29:22', '2022-04-14 09:59:22'),
('17a02e2c7cc2c7d4bd0794a39b11a590963224c2b5fde2721b796fbfcdff87e5297472ab85170b7c', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:09:43', '2021-05-04 00:09:43', '2022-05-04 05:39:43'),
('18d08d770479414acd930b581eeaf16797dc1f461255d33794a8a9f238fa3c6a658e7981099b234b', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:04:58', '2021-04-13 07:04:58', '2022-04-13 12:34:58'),
('19aec704c5d05b9efa7ca3560f3a33bae079f98006051f6858b35a09e45982526825bd1420738753', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:17:10', '2021-04-14 01:17:10', '2022-04-14 06:47:10'),
('1af62b92c129b3e5fcc814952d1916aef28d54dab7197c7187c6af748d148b2f92ccafa46cceb9a0', 57, 7, 'd_user_api_token', '[]', 0, '2021-07-31 01:34:14', '2021-07-31 01:34:14', '2022-07-31 07:04:14'),
('1af6abfbb73cfba343ed6a3ef90360d6e20ec0db52db21a8c474d5aff905aca17e588684adbf7ad9', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:50:18', '2021-04-14 08:50:18', '2022-04-14 14:20:18'),
('1c393be2f8cc62f13c2841864490b27e6dcefa85adea2f61df8a59594f8f093dd6afad6bd1224c55', 29, 5, 'd_user_api_token', '[]', 0, '2021-05-27 08:58:31', '2021-05-27 08:58:31', '2022-05-27 14:28:31'),
('1c59ce46f900fcf3fb13047b80bcdc855d3adf85ea5f2ebf64916d54895fdee4b069e6baeed76dab', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-12 04:05:36', '2022-03-12 04:05:36', '2023-03-12 09:35:36'),
('1d2d164de814aba3d85109a3e5b845d869cdd981893054710ac127ff3f7e8df55f487f5d8eb51a25', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:44:55', '2021-04-14 08:44:55', '2022-04-14 14:14:55'),
('1eac5dce14388e37b6dcab2ab201cebfea0790c27880fd4b862a0ee518899bfa808d5f27a015fbf1', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 04:46:57', '2021-05-03 04:46:57', '2022-05-03 10:16:57'),
('2076675fee124221b812dab5c9c8182fab1c67c8a3c5ca13eb001ef00ab1092dcf2c4adaf02a5cfe', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:22:57', '2021-05-04 00:22:57', '2022-05-04 05:52:57'),
('20db705c0911a11a25e6b360e0a597006520b92a2fdaee9fc91086a7ccb77712dda54a860b94fb57', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:52:22', '2021-07-21 06:52:22', '2022-07-21 12:22:22'),
('2191cfa5968287fc817cd48d4da5a3db198353d0de53b1502905993877191bcc293ac3b78cbc1eab', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:01:48', '2021-07-31 05:01:48', '2022-07-31 10:31:48'),
('21b79335fedab35b85443ae325b5de4aad12bb84f9b42f98924e3cb213ec31af213e4f3584189ea6', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:10:54', '2021-04-13 05:10:54', '2022-04-13 10:40:54'),
('2221fa75f52826dc1b5e2edb6c7957327381db50e3adc4fcb4f5ff29f30679d6b1e9e4358d569262', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:44', '2021-04-13 06:26:44', '2022-04-13 11:56:44'),
('2305032ba9555c36616d9a4b9e5a936859d7d6cbd706654ddf533cae97d1591828cd8001d0fd4742', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-24 00:51:11', '2022-03-24 00:51:11', '2023-03-24 06:21:11'),
('235cb7d1ed1e8627ecc1e9640f0dd9d99cce3532b9bc362358a0e46dcdb66b7fe18e6a502e1bbf57', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:04:37', '2021-04-13 06:04:37', '2022-04-13 11:34:37'),
('23d452b420b94c4575d04896872e13d101d31f5bbc60499edaae0368a418c8521c95fab45b703c3c', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:38:17', '2021-07-21 06:38:17', '2022-07-21 12:08:17'),
('23ff72253d4655a19588fd67328a03c66aa821d024622ab9fda198dd366190930be1d1fd98b88a60', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:04:29', '2021-07-31 05:04:29', '2022-07-31 10:34:29'),
('240ab8c992be4493bc3c35a7742f6669fbdd89acf781d60a18646e4734525fdb1a07ed2a580e51cf', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-26 00:19:36', '2022-03-26 00:19:36', '2023-03-26 05:49:36'),
('24a8db8685fd09833a2d0bf1a8257e16bb4b2952a3246c97b3e5aa609e87927991b37f056ffd6a06', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:47:05', '2021-04-13 04:47:05', '2022-04-13 10:17:05'),
('272b9c52d06ddcfe243d0c55055371f0f0ce5983cf71a42ec21031430ff213b52da478568369a575', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:39:31', '2021-05-04 00:39:31', '2022-05-04 06:09:31'),
('2816d4d8df2e3694cff0f5c73b31387310e2a6391193312926ad3692e891557985df5ff6c6b6f43f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:10:44', '2021-04-14 01:10:44', '2022-04-14 06:40:44'),
('29ece1898bf548365541e1c131a746c0e04bd126a5f04c572399276e2499db2aa99f41e36a8a37fe', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:09:44', '2021-04-13 06:09:44', '2022-04-13 11:39:44'),
('2a1b3e701888513c76da81dd670d87898ce56b55f5059b7361d89ffe5c27dcd0d9ad777f1153008a', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:01:36', '2021-04-13 06:01:36', '2022-04-13 11:31:36'),
('2c13779727535b5149c5166fa712ec551c73a38326c43ddbeebec8281222c89b0f30eb87730970dd', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:49:16', '2021-05-03 05:49:16', '2022-05-03 11:19:16'),
('2d8ea5437790308417707cd5378c66ebba9b8615e741c4ad6d0532faf8901527600f640233a30f6c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:13:40', '2021-04-13 06:13:40', '2022-04-13 11:43:40'),
('2e19b21855e348aa22858d43af7eaef1476a07e74d10afc51987caa5b44a18c97b37b2e3977960e9', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 07:08:59', '2021-05-03 07:08:59', '2022-05-03 12:38:59'),
('302d1c4f7b9df98a2c9297a93cd561f523120a57595d487927ae75d562cee51ffa1af9c677ca926a', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:04:33', '2021-09-02 02:04:33', '2022-09-02 07:34:33'),
('30b30788907425a30a095513ec35c9a5166f1646a8648a9645526cbf8a62f2d3688dc139a4fe2756', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-12 03:48:25', '2022-03-12 03:48:25', '2023-03-12 09:18:25'),
('30bcf210777185aa202c4128ff791717fa85b2981709e19982939571d769696e12f3d0f50d40353c', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 07:23:40', '2021-07-21 07:23:40', '2022-07-21 12:53:40'),
('30c399d0bf58d3d44575ab06b299d9028824207c4583f3e6e730d882dd607cc7fd9f73c970a843af', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:10:57', '2021-05-03 06:10:57', '2022-05-03 11:40:57'),
('31853d6b3b1aa676090f829f1a3f1b173bef4cb01dccc7f52af40ed51c93294bfa9602ec98959096', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:10:59', '2021-04-13 05:10:59', '2022-04-13 10:40:59'),
('31e6a6258a3f6cfd52c19250c43298fb4faa83343088d7089c3243cb9d70d3b71cecdbd92fe921f2', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 07:11:54', '2021-05-03 07:11:54', '2022-05-03 12:41:54'),
('31fc1ff6fb61728c4b50ef734b17ad84e5a3e3ba366a6f990994047f070d9fee9a757172fda85a3b', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-24 00:00:33', '2022-03-24 00:00:33', '2023-03-24 05:30:33'),
('32f0b057b079d6f1de126e0d7fabb851dfff6bb5c3b388776606a37441da9ce84ddc7bd7913b731f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 07:32:27', '2021-04-12 07:32:27', '2022-04-12 13:02:27'),
('33e8c338db488b845f971c4b17ff83f92514f42f04b8b79db867b06bcc04398b203b59fc0ede47ff', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:57:24', '2021-04-16 09:57:24', '2022-04-16 15:27:24'),
('346a7b20e0e082a4afbafd7b728402ae65f72c7c8fbd21f79bb82cbe314f46b35bdfd8f8ad7b47d8', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:37:13', '2021-05-03 06:37:13', '2022-05-03 12:07:13'),
('3538c7736283e05b07256f4e17526f2401f4e6a566dad204800b2b594c9a647b29998f6a7a98cbfd', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:51:00', '2021-09-02 01:51:00', '2022-09-02 07:21:00'),
('35caafbc14c42074db8eb6785aad11a39dd4f6d336afd6cd997e1137e0677bcfe667433a9f5c2311', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:16:33', '2021-04-13 05:16:33', '2022-04-13 10:46:33'),
('364be8354ba9b5b8c8c9a98a6f6553f642726c2b2a81de4edff4a58e79c919462c577548834f9d1b', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:16:23', '2021-04-14 01:16:23', '2022-04-14 06:46:23'),
('36e99e74229007d41fed52e9ba16bbb4057ee04cef0eec3ad01818e23b64c19c7444f3e0033bd461', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:42:01', '2021-04-13 05:42:01', '2022-04-13 11:12:01'),
('3798f9bbd9c0c82f0a2341dc1602db5784eb5d671cfa6ca8b4c4728c694a03b670cd73c607337ab9', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-01 01:51:57', '2021-09-01 01:51:57', '2022-09-01 07:21:57'),
('37d8da3b4a8c194bf54a6aac0094ad14259e0518a7f29ccfaaacc571341f0a577e140bbcdf31995c', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 02:13:44', '2021-06-04 02:13:44', '2022-06-04 07:43:44'),
('389af93df0a3e645a6fef207f9ab6f7cf2f0406a127db61a6583296f8ce018a3dd2b8c22368012be', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:13:49', '2021-04-14 04:13:49', '2022-04-14 09:43:49'),
('393003b58abd023c8934e4c97d7a04087f2ffe2d7bb407f062631867645d219485cdd9726ab6be0f', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:11:57', '2021-05-04 00:11:57', '2022-05-04 05:41:57'),
('39cf2277099bb6e40c7af98a2a7e29e99a4c0d8afaec26b951f5c8a54480a886eb2e79c04ce5ce18', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:53:16', '2021-04-13 05:53:16', '2022-04-13 11:23:16'),
('3c3acc24a67489e6099b4cdc5ccd7b6474054747f772b9638f43b6ca8b47d2ccca730b2082159cf7', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:55:07', '2021-04-13 07:55:07', '2022-04-13 13:25:07'),
('3d2ed9c45b2996d946513b43512555666dba86125b08951e381e8a6a68cd94b4d2944a597b1f8c2d', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:33:41', '2021-07-31 05:33:41', '2022-07-31 11:03:41'),
('3dd9bd25e313e4a2abc3776a24c7419b6d7838b5f85586f74e9686afa425eac4304ff0a116455998', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 03:19:03', '2021-09-02 03:19:03', '2022-09-02 08:49:03'),
('3e0b13e1f8774e77502fbc5445e402ec6f5c16888c9ca6726ee026200f4f0ce6e5e8056a06440aa3', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:19:38', '2021-05-04 00:19:38', '2022-05-04 05:49:38'),
('3e42d222fd6858c20094589b6c6e63b1cb292987cacf722b8e0a92aaca9e08edaf08d8617bc29c35', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:27:05', '2021-04-14 09:27:05', '2022-04-14 14:57:05'),
('3efc59f171f8dc59122eeb3911fe0e4597e16d56f2ee66c63ae451085d4fde3648a66efa64119743', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:56:53', '2021-07-31 05:56:53', '2022-07-31 11:26:53'),
('4025b61f7319c2b314261589fa1453793b57704d5c5ad060b76b16f6edd1ceb48e4a752fcc5931e3', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:33:36', '2021-05-03 05:33:36', '2022-05-03 11:03:36'),
('40b6e20490d332a17dcc57ae90aadc6d97c6c54a2573fc7036ac6e6b64454d0b2fa88d04df8e3b60', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:41:38', '2021-09-02 01:41:38', '2022-09-02 07:11:38'),
('4131a7aa653a08a8805d7d7ffe42a314118babc9fff798947e9f597c53a46319c80a2e7cd40139cf', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:56:00', '2021-04-13 07:56:00', '2022-04-13 13:26:00'),
('417c4b86a2b1c7722171ae4249db0c85ceb27fc45a66a6513cf22e1537539142cf17adc13dd4f58c', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:59:47', '2021-09-02 01:59:47', '2022-09-02 07:29:47'),
('4211fecf37ae18a3e22025632ecde2d4697b3c5b13fe064b86846d36acb363bc625c635edb58d08f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 05:15:59', '2021-04-14 05:15:59', '2022-04-14 10:45:59'),
('424fafd71ebfca7b0645b5caf1fe0e50597d5ef1b9aa3bd0ca9dbeb185f4454ef5c245f00513d136', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:24:28', '2021-04-14 04:24:28', '2022-04-14 09:54:28'),
('437515807b0607c2a4987e8d07c361a44eda0aa3d3c9befb0c52492cd9c20f0f7cd4a6a9c609b8cc', 58, 7, 'd_user_api_token', '[]', 0, '2021-08-30 06:21:18', '2021-08-30 06:21:18', '2022-08-30 11:51:18'),
('443ff01ab1dcf447a4986d70ea602ace5304492c4a8cef64f6c3afe2cabcb27b89e60ca9d5b34443', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:44:12', '2021-05-04 00:44:12', '2022-05-04 06:14:12'),
('45b42053c00533d5d2f794ad39bc8ef25f664d60937543e22570157bc88d40a64aea3feb551c3fd4', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:04:06', '2021-04-13 06:04:06', '2022-04-13 11:34:06'),
('460126ca7a1a034820376425b71802fd9f5f6a3a47faa2d243495ffdd55d057b6ceea91f99956f68', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:39:46', '2021-09-02 01:39:46', '2022-09-02 07:09:46'),
('46e881af8137426159f6d866c22f030d05d7fda574b780f880422b7c25527441160105250c21acaa', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:34:02', '2021-04-14 01:34:02', '2022-04-14 07:04:02'),
('47d5c2e938eddd0839d48a04e50106c1ec6230e61e7753acd7b12f647365164f6b0ee2fe4edaf2a1', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 07:28:05', '2021-04-12 07:28:05', '2022-04-12 12:58:05'),
('49944aeae561c127f09b98f4b7b4e2b9b20dd58330ab4cd18b4b7dd8e1cff9e3c0e8f674319f10bb', 58, 7, 'd_user_api_token', '[]', 0, '2021-07-21 05:42:02', '2021-07-21 05:42:02', '2022-07-21 11:12:02'),
('49aaa9b8a5f2cf560ae63d8456aa57c8fd013663ec21d38ca442b4055c1178c576cd124948bf9355', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:10:13', '2021-09-02 02:10:13', '2022-09-02 07:40:13'),
('4a3a5ce05f9f983b94bd0482e2913802c8b7558561fda0951abe4125caa141a7b8cdcf684dc24c9b', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:53:58', '2021-04-13 05:53:58', '2022-04-13 11:23:58'),
('4a499e863b57114f49a8888ec4dd1b80ecda1bbb8816c880ffa4e0e0ba459e4da776acd7883ff264', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:11:26', '2021-05-03 06:11:26', '2022-05-03 11:41:26'),
('4b3090594ee5c5bf25ba2cbb88895ffcfe4326835caff416191ae76f699f3ccf50fd92576c914a47', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:22:00', '2021-05-03 06:22:00', '2022-05-03 11:52:00'),
('4c88032460e56a68a2d4ca0ee99b3ebcc61f8203804474542bcdfccb6c3b4e3253613943febd3595', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:29:29', '2021-04-13 06:29:29', '2022-04-13 11:59:29'),
('4cdf5e0abd0d2374840fb62c28c295550b35db25f783231ffc258bd6292e510e627661e041c2a385', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:16:38', '2021-04-13 05:16:38', '2022-04-13 10:46:38'),
('51cf56ff14186cead044103f9e1d95183609ea497537a696b8cded2630d2bfe29eeae1d1b1ca3166', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:23:16', '2021-05-03 06:23:16', '2022-05-03 11:53:16'),
('544df249f0a62b2ed1d912102e18e7ec65f36d77f42399a3386026a13dc7342bc8358dccec73f47e', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:18:05', '2021-05-03 05:18:05', '2022-05-03 10:48:05'),
('55641ffd246bcc2a74a53a22ed264b915d9dec22db9d7d87e0adb0ba60ae54ba600039ac92f713a4', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:23:22', '2021-04-13 07:23:22', '2022-04-13 12:53:22'),
('559841a3c6fd122348a8a8d649290376beff10c1ea7c660775dc314f2123ceb70ac868ba6088c512', 62, 7, 'd_user_api_token', '[]', 0, '2021-09-03 00:30:53', '2021-09-03 00:30:53', '2022-09-03 06:00:53'),
('5805524126323c361fab9382ef9d26437c4a8ee12ce8df957acb180323ba1422614f70accc51ef6e', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:20', '2021-04-13 06:26:20', '2022-04-13 11:56:20'),
('59a0051b5817550444cf77ac66809d862641f85fce0da10811b04c19f0585161dce5e015e273468a', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:59:12', '2021-07-21 06:59:12', '2022-07-21 12:29:12'),
('5ac886ff0878402e5b1c6b5536f5b9b8352f99c39f54f3d33df9c32c013d437b4faf39904ea0905a', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:35:13', '2021-04-13 05:35:13', '2022-04-13 11:05:13'),
('5c8a45bf565556f555bd0bbf1059b6e917d4f9b0c64a14df9457cfc2ae278bc738ee22412fae1f5b', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 03:11:13', '2021-09-02 03:11:13', '2022-09-02 08:41:13'),
('5cd82cda23a7e63f08990612b18898d386435f7836e65dcf11537adba23d0eddde615850eca50014', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:03:36', '2021-04-13 07:03:36', '2022-04-13 12:33:36'),
('5f419dca637014bc89b047eac253e9860a4c6b013b19c6103a26c66a2ee2e905d337849142122a96', 29, 5, 'd_user_api_token', '[]', 0, '2021-05-27 08:54:17', '2021-05-27 08:54:17', '2022-05-27 14:24:17'),
('5f4a90ab04fd2da3682bfe1334ba174f2b34f95f5c9509669db0cc5fd6fb8cc7172da09358d351fa', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:58:18', '2021-04-13 06:58:18', '2022-04-13 12:28:18'),
('606cd459f397248cc26b812b6d2cbd59cafd73be47a66a13cc2cf6b41c14bff3628477d25f864ff2', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:20:43', '2021-04-13 07:20:43', '2022-04-13 12:50:43'),
('612f5d1165faa52f7298a4d520b12ee780b403f9924309a8751e4876355086c55d4f4e29d6d78d56', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:40:43', '2021-04-14 08:40:43', '2022-04-14 14:10:43'),
('613913868f4f552fbbbb93948b56edb09e1db5abcb8720c9a1f537e6407f70f6b5d24814df2c4bbb', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:38', '2021-04-13 06:26:38', '2022-04-13 11:56:38'),
('618ac0a263f40a6cac1c663233fcf922ec57169d0f2bcae2364e7293ebe942a08aa052fadc6fad3b', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:13:06', '2021-05-04 00:13:06', '2022-05-04 05:43:06'),
('6278cae0baf6f3c52328d9bb8f9c578a36e04158bf55949c9da1dceffcd13a5f0daafe817450d18f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:52', '2021-04-13 06:26:52', '2022-04-13 11:56:52'),
('62ac65c63832052d828240928da1ff80d2a3be2a1135cded2e03e99aee81a38910909f72c3bf4bf8', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:26:19', '2021-07-21 06:26:19', '2022-07-21 11:56:19'),
('62f9ce516abf5f408ca6977c35f08c9d6c9aea3debcbdd9a43bc211babda372bacd0c179652252e8', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:39:10', '2021-04-14 04:39:10', '2022-04-14 10:09:10'),
('641c16b870602fd7f1e9b86d349c4306d9d587a0f538dc207f9b057d14caab51fbbf94e531a9d0be', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:44:34', '2021-04-13 07:44:34', '2022-04-13 13:14:34'),
('64b9bc6350b70abc978d6c614bc2c3d0631afea1cdd7440a45506e251929d2c2fbef969ccb0a5637', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:08:41', '2021-04-14 04:08:41', '2022-04-14 09:38:41'),
('654fd7c66858d1f660ca8f527e0773ee035c00cbd4101e228bb65cf90c557ddf913f6d3519b70762', 58, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:24:26', '2021-07-21 06:24:26', '2022-07-21 11:54:26'),
('66350e3b075db79d90842fd4f54a0b02cf638732da89790dc6765f94b6234befbad17bdb348cca81', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:21:22', '2021-04-13 07:21:22', '2022-04-13 12:51:22'),
('6803dcac4d0229582c4524d3a4501ee78e491bd9413f0c99f07d5ecb282aa2c9655998fb8b107446', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:33:24', '2021-04-13 05:33:24', '2022-04-13 11:03:24'),
('68df78e6c0f727c86b5b9410a399e367686c8bdfcccb8499f00babfa6b297316a7f4a8693d03f0c0', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-24 05:55:08', '2022-03-24 05:55:08', '2023-03-24 11:25:08'),
('69b03a4f6bf21cae5b11a3c6cf8c9d3ac7471dc1c93f18a65eabb637a7683ac087c21ef99af8a1fd', 76, 11, 'd_user_api_token', '[]', 0, '2022-03-11 00:29:29', '2022-03-11 00:29:29', '2023-03-11 05:59:29'),
('6a2263d0a0d54cbf15484dfddb9bb12456242f0674e96a69a2b707db556d90cd9f817776795689d2', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:05:46', '2021-04-14 04:05:46', '2022-04-14 09:35:46'),
('6a286d2336f7649420866d9cd7dd14e34c20f4b05ade06c9e7e50216727f9f6c9e5f2565cda6f203', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:26:14', '2021-04-13 07:26:14', '2022-04-13 12:56:14'),
('6b1f27b26304fd5bb474d3edd8341a822b801cfbba4d9dc77119952f1edb9096f4d95426dac910b6', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 07:31:05', '2021-04-12 07:31:05', '2022-04-12 13:01:05'),
('6da46eb6e822fb0f91c7d83c933d378a2d0fe38e452ab061aa8548c99f9b4d6aed41efe6b823b79f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 07:31:32', '2021-04-12 07:31:32', '2022-04-12 13:01:32'),
('6e62f6098f4206ddc2ab798eb7dc11c7201ae4744433725117805d1875770397c9407f0cf218c736', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:29:21', '2021-04-14 01:29:21', '2022-04-14 06:59:21'),
('6fd5edb57c61f7fad5e5e73e2ae3127df2bbf00f446fd73759c19bd8a30531eb62fb393c22d87557', 57, 7, 'd_user_api_token', '[]', 0, '2021-07-31 04:49:25', '2021-07-31 04:49:25', '2022-07-31 10:19:25'),
('6ff5d2182bfc6d39cba8c39ee9ddb342d1015b4e8ae42b6ebea9b6612aed39a54212c10e1666251c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:50:49', '2021-04-14 09:50:49', '2022-04-14 15:20:49'),
('702f7aba59d9afc4c41e5707d16cea7c86b95f5c00be5aade9e027eeb320318fb78db65d33449e55', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:35:14', '2021-05-03 06:35:14', '2022-05-03 12:05:14'),
('70b47af0496b72c2ca206ae72d6f7e687309ca04a140920c5b6654c5d2e8054033b4b507c94607b8', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:35:50', '2021-09-02 01:35:50', '2022-09-02 07:05:50'),
('71467566dade08f678b9e93958ba0d561713d7df54a1160728fb4b612cc8e81b639acca008aa1d70', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:09:22', '2021-04-14 09:09:22', '2022-04-14 14:39:22'),
('71a050e371149aa33d507427a88dad37fba767ca31abebf7c6d3d2ef8cb2e3989dd6d488c2425098', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:38:38', '2021-07-21 06:38:38', '2022-07-21 12:08:38'),
('7234a01b758b71f85989c85b155205e462d370f04cd68383da7cb567f1ed182abd723701d5a83713', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:36:12', '2021-09-02 02:36:12', '2022-09-02 08:06:12'),
('726e231c4e0271722f2601f8b10723fb3ce002712df2d0c5be40e90d32a862e55014f6298d157b7c', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-12 03:42:30', '2022-03-12 03:42:30', '2023-03-12 09:12:30'),
('7347bb5c6c029b5e7529328c0eb181baad94c99fe063d5127e4a0023cab57e5c45161e8df364676c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:31', '2021-04-13 06:26:31', '2022-04-13 11:56:31'),
('73a3134ed3df2ecc105310b2420fa5664360f3bc3b14f3eb2db480071975939b4a3c35055847ef16', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:52:38', '2021-04-13 05:52:38', '2022-04-13 11:22:38'),
('743d9c9a86dc80390de5580be6197d800eb55af9291cc23c89867e9f9ce217024c3c2cf427025662', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:53:17', '2021-04-16 09:53:17', '2022-04-16 15:23:17'),
('788639f6cf6ed72377fc456d3bfcd1f6f1f0e7c7c076837832b9e0f56aa53b11ee5c3161dd261b89', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-31 05:46:47', '2022-03-31 05:46:47', '2023-03-31 11:16:47'),
('78cf5002c65e2df4a3b08ad030c17a67db725ffc1e4e6d643e2778a9eab13df5d6e1d37f09ab25e1', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:56:14', '2021-04-13 04:56:14', '2022-04-13 10:26:14'),
('795aca26c6b8d511e6ee506490b9cf26d0db7934e261aa96ca28dd5353dc3792b02738845a5691cf', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:37:54', '2021-04-13 05:37:54', '2022-04-13 11:07:54'),
('79a1c67e25a76197266ac1eb4c18b05bd686c78ac6b56eea6cb4a27b933db83330d0bdc1733c0e74', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:39:45', '2021-04-14 08:39:45', '2022-04-14 14:09:45'),
('79e56d4b19a1f3b1221de9f2b8f9b05c763c19255dd27292c206bc260ffd8cb67ed5b2ccdfed5e7a', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:19:47', '2021-09-02 02:19:47', '2022-09-02 07:49:47'),
('7a704397400aa888b3ed3670581ea03ab785746da8edc565cdf8e1457b692c85090f408119337cea', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:34:56', '2021-06-04 07:34:56', '2022-06-04 13:04:56'),
('7ae87f21ebbb1dfd07649ef41708cbccbbb51fb90d40b5d0b4f0c4aff08190cc33fe363fda70a4e6', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:16:23', '2021-04-13 05:16:23', '2022-04-13 10:46:23'),
('7b425302c91ba166fcef35e9dd73ad9d702aa0bf94c82f337dda4003f64786bb5775a56fa3ae8537', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:12:44', '2021-04-14 01:12:44', '2022-04-14 06:42:44'),
('7b607cb21224e1fb5897432384316536a2e9d82aabd617c7304a0509df70dd9d18694c07ef19c465', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:21:15', '2021-04-13 07:21:15', '2022-04-13 12:51:15'),
('7ba8e946b2eee9935eead481538835c6423b0c1c5f1467c256d53cd7905bec386b65b940f2a1c1cb', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-01 05:39:40', '2021-09-01 05:39:40', '2022-09-01 11:09:40'),
('7d3996e3f1616087bf0c6a115d2f9ce9b38dc0f26a8576c09c8203f86b1ec1781ecb18ecb70804ca', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:54:54', '2021-05-03 05:54:54', '2022-05-03 11:24:54'),
('80966cc3310012fb2faa18fa43c7925957470528cc8511ba157149bb41baa8cc98bcf90f258037d7', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:09:40', '2021-04-13 05:09:40', '2022-04-13 10:39:40'),
('81183d747505189f69f3d80466c432d6c0114e40e216724fedfb6690561f52d2f7e578345fea01f9', 57, 7, 'd_user_api_token', '[]', 0, '2021-07-21 04:21:33', '2021-07-21 04:21:33', '2022-07-21 09:51:33'),
('81a7731d250aa657d47d950970b64b74a480381a48136919a78c65ca13db8a3ac9fad3276d041c4e', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:05:16', '2021-04-13 05:05:16', '2022-04-13 10:35:16'),
('81f94aeabb05333075213974c4c0cc6824429e7e36c56085e577fe7fe93b34d636cb955a1930ad02', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-12 04:08:50', '2022-03-12 04:08:50', '2023-03-12 09:38:50'),
('83de8aeb44535627350dd61b1c291b2a784d6f207d66cbc61b64de3ab149b55f8811d231fe5a9a07', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 10:11:29', '2021-04-16 10:11:29', '2022-04-16 15:41:29'),
('85075670db6b629406e55030cd7439442e44f11f7a1f014e2f2587fe5592fed7ee219f8d9ec3d7f1', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:22:01', '2021-05-03 06:22:01', '2022-05-03 11:52:01'),
('856d81d825f22da734b933963c28e9adb82d7898ce9fb06600b41b5471e382869b0fd0e41bb91bcc', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:17:59', '2021-04-13 06:17:59', '2022-04-13 11:47:59'),
('857263446ff78958f715bfd6b5607467d5a13bd6b74a8526af6073feccad1223780d3f66e7405de9', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:38:09', '2021-06-04 07:38:09', '2022-06-04 13:08:09'),
('87e41776d03355301b621189ba98f2afc760617ac96690406ea367396e3bddc819809827e83d08ff', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:09:15', '2021-04-13 06:09:15', '2022-04-13 11:39:15'),
('87e452509701033c6f2f73e01a8dcecd7aa1d8e54b82cb4ac3c83767486a24ecec4c3906145a1581', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:49:17', '2021-04-14 01:49:17', '2022-04-14 07:19:17'),
('88079a1d2df466ac1258c30ac7ceaf8a1a96b5d5330668a92dc69e89ada7b0b7f88d5d2f6193c013', 60, 7, 'd_user_api_token', '[]', 0, '2021-08-01 23:28:47', '2021-08-01 23:28:47', '2022-08-02 04:58:47'),
('8893cf07370c66a2333ce06a9c2411ef95923005fa259914d45aa450ffbf44eefc3fe0dbe3be596b', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 03:13:31', '2021-09-02 03:13:31', '2022-09-02 08:43:31'),
('89b8c475d28151e4bde1ac7f2da8d69ad3f84390a79d4399b4771dd97e92bec65aec2e35b76e2873', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:11:05', '2021-04-13 05:11:05', '2022-04-13 10:41:05'),
('8a59ad31bbb49f4a0e4d3fc5b3629e4eb9147b555040872c50239c777d04cf78efc5af5bfa5d93d4', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:56:27', '2021-07-21 06:56:27', '2022-07-21 12:26:27'),
('8ae349b8f3fb52cb4f1d7e7093fe02ac1b097f3eaf889a1391d8531fd8d1b23186e3a86c5a230fda', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:08:53', '2021-04-13 04:08:53', '2022-04-13 09:38:53'),
('8afa9449ff04dd988ee499bef43d7223c5a4efd2be4491b76b93c39b1d63d343240642d2e447693e', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:08:43', '2021-04-14 09:08:43', '2022-04-14 14:38:43'),
('8bf4caec4874889c6c9eedcd3e5a45a36f40a5320c9e430ea7bfdcdad159bb44fc54e2ff429c8dd4', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 05:10:21', '2021-04-14 05:10:21', '2022-04-14 10:40:21'),
('8c0e87b49812898f3519bebf8dad87cadf9c869d2b758475b9ae337dee24b91bce1988aa7e47332f', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:52:12', '2021-05-04 00:52:12', '2022-05-04 06:22:12'),
('8c747a972f3168a5e8dfe7cc74f53d05f9001386b0060adcb9ddf882c75822ef58364b22b5688ba5', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:36:15', '2021-04-14 09:36:15', '2022-04-14 15:06:15'),
('8d091b13cc3d3e27359b060d8c7cc8baf051508ab02e1be16d84ebd7c7a47e86ae50438b0857fad1', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:39:16', '2021-05-03 05:39:16', '2022-05-03 11:09:16'),
('8eeb669b5a15554078a3881b1379b571228e079dc347f8bc18246b8264d2bf004ca877dfe47b6bb4', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:29:34', '2021-04-13 06:29:34', '2022-04-13 11:59:34'),
('905de4e73396de164827b6ab3113f7cdd002e0388276a0597192e726ee556e7cf0fb3cc6fcd66b7b', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:26:40', '2021-04-14 01:26:40', '2022-04-14 06:56:40'),
('9078bab15223bdf7cb27b97ea838f710d8b6491663240efc11a0d78cbd3486c2ee1817fde80d1cf7', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-01 04:11:23', '2021-09-01 04:11:23', '2022-09-01 09:41:23'),
('92b0150e8dca111136de5af31a1f0fafdf8df85821c755d0a07d9cab9ca75ef445dc3fcb5eff85b8', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:54:20', '2021-04-13 06:54:20', '2022-04-13 12:24:20'),
('92d3f311fdeb76225dbbea3a9ce9e07bcb47371397792b827ae710f338b1831a76604ec8e9fd4f21', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:53:08', '2021-04-13 05:53:08', '2022-04-13 11:23:08'),
('931a85dde72560721013c77074057fb5eff0db7e42f7ac020516af6fa9d5bb79bbec9638e4a3ce2a', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:08:14', '2021-04-13 07:08:14', '2022-04-13 12:38:14'),
('931c8fc9172fbae4970ad601e2d5ead3be3b117b9aaf2ff17eb1a26b17de49e2a15e4a6ff068b642', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:40:18', '2021-04-16 09:40:18', '2022-04-16 15:10:18'),
('94812a6cdef184703442df84f8d1cfed231f6a25eb0f1f2ee2642b04960b1a1454678867e4acc44d', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:46:23', '2021-04-16 09:46:23', '2022-04-16 15:16:23'),
('94c146f89b5f0ba3c4acc12c38661038153594428f115fa90f07fb740c601e72f5ec23c9e797e2d8', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:41:56', '2021-04-13 05:41:56', '2022-04-13 11:11:56'),
('95dc769a2a169a32dee653cc9fe6beba900494e011c52e949ce7bb7eefc8c2414f038899fcd2dc61', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 01:01:29', '2021-04-13 01:01:29', '2022-04-13 06:31:29'),
('97436e064b8783ebf0fc597cfa6f63c571c94b7d464e8873eeca80b890ccef5d9b9aa8e929747b3e', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:34:57', '2021-04-13 05:34:57', '2022-04-13 11:04:57'),
('9826866bf2938c28ffbb713024f51a782a399284ca0dc2cdc6e9d6b97400f70ef99764f97984fa11', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:09:55', '2021-04-13 05:09:55', '2022-04-13 10:39:55'),
('997782c23bff0cb1afac9d4eb31732d081f9c6c20143b3b8f50d11c2d3886eb59ac88688d3b8b05e', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:12:23', '2021-05-03 06:12:23', '2022-05-03 11:42:23'),
('99de14a11b4438b83faefb2cdf2721e0ed43a68948e7d22d788ac063542d96c3a36c6639b1538ab5', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:29:28', '2021-04-14 09:29:28', '2022-04-14 14:59:28'),
('9a00dd93be3e2a45b26f10196e97a41fb801f7ec4606069f1f1deaab81e623900699869686b4bc56', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:20:24', '2021-04-14 04:20:24', '2022-04-14 09:50:24'),
('9af75ca7116dd7e060ec5db133f6956ed54ad158532f9d130c01bf2bff7a3d9c42f9e101b3266a83', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:03:40', '2021-04-13 07:03:40', '2022-04-13 12:33:40'),
('9be125fd790153e39194e36c7d7f5c466cb36bc99e2769179f4c7812ca91ca2bd98d676d89bb876d', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:40:15', '2021-04-14 09:40:15', '2022-04-14 15:10:15'),
('9be33fe7f4ab1bd124535cc77eab4a922e5b86e572f319854937ad8df7da318bbf44ce0844bc8049', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:55:05', '2021-05-04 00:55:05', '2022-05-04 06:25:05'),
('9c39eb2b856a5947e522c27a4fe9a81e5fc8dcda7a01e5b17cd2178d99d6b9abc10498f49fe04a76', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:41:54', '2021-04-14 04:41:54', '2022-04-14 10:11:54'),
('9cd906379b3ca600a36657ed8ea3c10e0e4638cd2c06d99a0bfee57a4964106747379f7f48d07dc3', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:09:49', '2021-05-03 06:09:49', '2022-05-03 11:39:49'),
('9d69bc810f64ae650b379e91fc492ed6d2e7ff2c055dc50cc1630372445bd7292f501067f39686cf', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 00:51:30', '2021-04-13 00:51:30', '2022-04-13 06:21:30'),
('a081e50afa9898e719e92e369fd030c5519adfef3775c3b3a12a13e861235ac6306a50e3bfacd34a', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 01:01:24', '2021-05-04 01:01:24', '2022-05-04 06:31:24'),
('a10e5a68b4a99594a6d4c2a6b8c11efba351e5d8aa169b40fd23f5d919ef3374b4c434d6a899f350', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:50:39', '2021-04-13 07:50:39', '2022-04-13 13:20:39'),
('a18e87bf2576a7de831db36844d0a08820c1fb0e284a0913cc4e6953a5201cab7141ad5a46f5892e', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:43:45', '2021-07-21 06:43:45', '2022-07-21 12:13:45'),
('a281a2ebb77ab5afb9fbd5d4463d868432c6737378e9a3350fd5571d0036b0887d8d7bad42f3a62a', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:12:43', '2021-04-14 09:12:43', '2022-04-14 14:42:43'),
('a54526a831148cf8b82e6c2141cdb1167059a2acd375cf318eae47f4ae8c5149f27f477615f13328', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:20:55', '2021-04-14 09:20:55', '2022-04-14 14:50:55'),
('a668bb784207da4fd65a1e06702cf24598613eee62956009bd30fec937afd1f2764df26e1e40dc11', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:07:43', '2021-04-14 04:07:43', '2022-04-14 09:37:43'),
('a6f7d0090813b18259288564ea4b9d1d06f2a0b831b165d25cd4a293bd036303ef71fcb74647db7b', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-14 23:22:38', '2022-03-14 23:22:38', '2023-03-15 04:52:38'),
('a7150818544c5eabe6fbb230ecc0f5bb9a274f4ddf007d22c632a932ae8a490fbd8d467aecfc31ef', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:54:25', '2021-04-13 06:54:25', '2022-04-13 12:24:25'),
('a849561fbe4014130dc616183193096d24a1f41a9f49ba56d583afe376b49adf0e3e3bc4cca8835c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:24:30', '2021-04-13 07:24:30', '2022-04-13 12:54:30'),
('a8aa47192684e45379654a0468105c3d8b7701fc21d02ab06e1e75345096ebbadee63378928e9c24', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:31:22', '2021-04-13 04:31:22', '2022-04-13 10:01:22'),
('a96fd244526e44d0a7b4f7648a2a3aa744e956700da196cf670be6d99fa150e3536a3cc31a3fc249', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-24 05:56:38', '2022-03-24 05:56:38', '2023-03-24 11:26:38'),
('a98c2406d34766385c0ed0a7942a2a76b5ab00e3336957a79912a6e09b5a26c8578f23b841d9bac0', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:48:37', '2021-04-14 01:48:37', '2022-04-14 07:18:37'),
('aadc97b4fccb33e62ef6507f0fc438ee63b7afeab48d388b3eee98f4f2fb5518d97ab874bc37a6ed', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:13:17', '2021-07-31 05:13:17', '2022-07-31 10:43:17'),
('aceae5cbb56217e39665219ffc1829580fd526d0930222b23bb5650a9aabf3061d8852a9b38741e7', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:33:12', '2021-04-13 05:33:12', '2022-04-13 11:03:12'),
('ad07d8f2c3e456a95032054821d2ed81f84fdace149e2ff2e97387e6b5062c879340012a4f6c1437', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:37:52', '2021-06-04 07:37:52', '2022-06-04 13:07:52'),
('ad1b0a8c90a71d46563f19a8cfdca4046b37e5b9b068a5636d2a848eebce50edd1964b457df38073', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:16:29', '2021-04-13 05:16:29', '2022-04-13 10:46:29'),
('ae794a6f7cd5e7355c2861c53fa544195d27eeb3f589fd053707cc363256cd3b37f5c371488c074e', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 03:22:11', '2021-09-02 03:22:11', '2022-09-02 08:52:11'),
('af0d45d896472ab8943a4bd88c30a24f3fe54b60105091a47ae0e6e57177e6823e5d5fdbf192dad7', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:34:00', '2021-05-04 00:34:00', '2022-05-04 06:04:00'),
('af1ef81910188e43418f6ea0c787740a8f2a3548772a9b1b50fa02a4213c46fdfa73a384b717c330', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:49:05', '2021-06-04 07:49:05', '2022-06-04 13:19:05'),
('afa6e3ed20209cdc689534b15d3a9b6b5f175e05d59a31bb3bbe263ce84efd75b5c5b7543eedb7d4', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-26 00:22:25', '2022-03-26 00:22:25', '2023-03-26 05:52:25'),
('b269e61990485d90f0ba8902ec93b8e46282410e3f3830743dac10d2b309380690ddd889e725c799', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:09:45', '2021-04-13 05:09:45', '2022-04-13 10:39:45'),
('b2b96de473b9b08e9c3701570fbd58c248f4332be627498c813cc246e7c0a20b0d97526d74133ee6', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:51:38', '2021-04-16 09:51:38', '2022-04-16 15:21:38'),
('b2f1e2642338166f9b434e208e9935a177ee9be141bf1b846fd57df7f68122607e5eedce1abd5aed', 34, 3, NULL, '[]', 0, '2021-04-12 04:23:28', '2021-04-12 04:23:28', '2022-04-12 09:53:28'),
('b34bde651f67154e7edfa7156f14ff17b2837920337aa831c3a50b384f16f09a54f7a1aa69a458ef', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:41:51', '2021-04-13 05:41:51', '2022-04-13 11:11:51'),
('b41097e0b084875f6a8aea7d424c89d0ead0847d4346b47023ebedd677ec6ae38e5808f1a7c0c319', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:12:26', '2021-09-02 02:12:26', '2022-09-02 07:42:26'),
('b43f606ecc9ffbfe1a71e586f7743d1ca03be498c046cdd4cef87b468d4c14fecec80d0b7d7e2f79', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-31 05:47:25', '2022-03-31 05:47:25', '2023-03-31 11:17:25'),
('b538135d1ea72edb51527122cfc9e9bd0d1b91fb552fdd4095ffe0b33aa85e950056167e97ab88e6', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:48:56', '2021-04-16 09:48:56', '2022-04-16 15:18:56'),
('b5c4f42b0c2c3982ce652e93ccca971690fb83a28cf0f9b3564bd4b2432cded6b7e1e396a170b2d8', 60, 7, 'd_user_api_token', '[]', 0, '2021-07-31 05:55:15', '2021-07-31 05:55:15', '2022-07-31 11:25:15'),
('b6ef3577817218c093879a4dda54f20a74254100652994c883edf3d0697f10900b18c492d9599a38', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:56:11', '2021-04-16 09:56:11', '2022-04-16 15:26:11'),
('b92e937f39a9e21e7469d84cc07addf29140d7df3300b1f21b55f6e63786f5d10654665c0f738805', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:13:17', '2021-04-13 06:13:17', '2022-04-13 11:43:17'),
('ba8096321dd313494df6e5b9e01747de98a48ca84cd7cf4360188e259175cdef2a63f8ca6546bc50', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 02:05:17', '2021-04-14 02:05:17', '2022-04-14 07:35:17'),
('bab29ef1f0a3614689a5a0c4ffcd08edc79ffd835be7705a0ab1c5e7d5f1a35b7c5869c31972f328', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:25:11', '2021-05-04 00:25:11', '2022-05-04 05:55:11'),
('bbe6c2c1fa1557c8c322fd52e176229cea30b78f323f59613a8d79356a580c549fe0a9252afbebf7', 60, 7, 'd_user_api_token', '[]', 0, '2021-08-01 23:29:59', '2021-08-01 23:29:59', '2022-08-02 04:59:59'),
('bd78a15bc0f31bb55a995f53096cc2d678bf24d5059f88cb139f29044fa1fcca50b645848daeb6b5', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:24:08', '2021-04-14 08:24:08', '2022-04-14 13:54:08'),
('be1834d86473846b54f1f9cea2965362241cdc5e4982577559409a18292651eef087304156f74ffc', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:46:06', '2021-04-16 09:46:06', '2022-04-16 15:16:06'),
('bf9e8eb70382d54ac411aa4f8ad590b137f9f9b1d700f80d57744bfcdc7903f59c5e2da50349a695', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:49:10', '2021-05-04 00:49:10', '2022-05-04 06:19:10'),
('bff965562a542c13d4bc05351ea9e09e8c418cc274d0e90ce25114891f26c41a6e6c895991719b5c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:22:06', '2021-04-14 09:22:06', '2022-04-14 14:52:06'),
('c117e120b61fb217ed09a11554eab7d6820ee6c2dce94974bd61b55a9f6855bb786ee917c6b1049c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:12:05', '2021-04-14 01:12:05', '2022-04-14 06:42:05'),
('c2f33a605b2cbcbd1b4cf0f07c0330a42a53d65bdba3d452911f6a5b356bd0f3b1ba4d6b7810bc0e', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:47:01', '2021-04-13 04:47:01', '2022-04-13 10:17:01'),
('c47de54943c72ae609b2773fbb234ecb3c5594ede61f3c864418bfdf1cee1e196f4ec10873061a79', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:37:08', '2021-04-13 05:37:08', '2022-04-13 11:07:08'),
('c4d9bbb5c7e18e12ab39be235111257f764cd088972338a26f26c3f5467967fce2f7c565631504c6', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:10:27', '2021-04-13 05:10:27', '2022-04-13 10:40:27'),
('c6728cffbce4af839f483b130f83e023b41b3a750d4c63f57f8fd6a863a9121a446ee4d133ce1a68', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:18:17', '2021-04-14 01:18:17', '2022-04-14 06:48:17'),
('c8c73b2b9c8acfcf3fec3e4b758a167952d0d6e9afd52bd6928c5fcbd6700dca7e5955fd9806a285', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:33:19', '2021-04-13 05:33:19', '2022-04-13 11:03:19'),
('c8e23e0322cace8377bd017a8c3ddb83350d26757d9d95a986c15cf624499d2cc397f6bcb2bf3ece', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-04 00:36:21', '2021-05-04 00:36:21', '2022-05-04 06:06:21'),
('c8eb61a0873bd7b07eecd7fbaf5faf2b24a5cdd7f4c3a1cddcd48c3d3f3a31e115aa8a9085a05ef5', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 02:36:26', '2021-09-02 02:36:26', '2022-09-02 08:06:26'),
('c98ea1d5860ac746988e854bb3877db24ce80f811e6f1d2be6e405fcf7066dee9a5b4a6112018b2f', 60, 7, 'd_user_api_token', '[]', 0, '2021-08-02 01:20:44', '2021-08-02 01:20:44', '2022-08-02 06:50:44'),
('c9948f0f8f3ae41e9ac6920cb54a9c6effe9d02475b383a3e39b8cf88cd9787cab0d4a4689a8b3c4', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:26:26', '2021-04-13 06:26:26', '2022-04-13 11:56:26'),
('cb8f85b122dc06e0d26bb2523a412878eb6394f50bd20922b10d31c8493ae72aea890ef01e3e5a7a', 29, 5, 'd_user_api_token', '[]', 0, '2021-06-04 07:37:04', '2021-06-04 07:37:04', '2022-06-04 13:07:04'),
('cc9bd5d8181ba4de8f192f47a635370d3beb76fe79fc3fa6093e4ea03a4fed1fc478a49bc4ce59c2', 60, 7, 'd_user_api_token', '[]', 0, '2021-08-02 01:22:53', '2021-08-02 01:22:53', '2022-08-02 06:52:53'),
('ce278fbe0e58a59a02c67e28dc8ccd56be85d8e037fd15442f04fbbe684c25c6a2d447ff8d0b9ece', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:19:37', '2021-05-03 06:19:37', '2022-05-03 11:49:37'),
('ce82ee665aa4e4e8d99cc93011146c038a0165d7ece25796e240fcdf8289bace691dd20441efcba0', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:51:14', '2021-04-14 09:51:14', '2022-04-14 15:21:14'),
('cfc510aefd22a3fea82e3c5314d2e829d7bc89adb46de8a7754c17c367de658462df00c7cbf673e3', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:43:31', '2021-05-03 05:43:31', '2022-05-03 11:13:31'),
('d4b67ec96c07f8ecb34ba0693fde7e67035180a1e45452c080519876df8388ece0be957918dbc49c', 58, 7, 'd_user_api_token', '[]', 0, '2021-07-21 05:14:36', '2021-07-21 05:14:36', '2022-07-21 10:44:36'),
('d6206fcb331c0cc597b3a37ad894f6d45e590b0720beb4bb5f9481c4608cd4fffc06ecdc70543496', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:12:35', '2021-04-14 09:12:35', '2022-04-14 14:42:35'),
('d634f44242bfc932df727b227fcfab30de82ffa762f0e75bd00fc045b90d1e5038a10e1c5e5e1a45', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:05:02', '2021-04-13 07:05:02', '2022-04-13 12:35:02'),
('d63ed9df8a6e4b1afce22be6dc64db9f2c2d30a7677758c3256f9011f72b2bdfc0c0c3088a751243', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:14:25', '2021-04-13 06:14:25', '2022-04-13 11:44:25'),
('d8b6f448a87ad6b986ef15504a7160ff1b70474a43d60f4f0f84fdff4307deb4b0368d2c3987c5c0', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 05:09:50', '2021-04-13 05:09:50', '2022-04-13 10:39:50'),
('d90d7900536a6ef333befbd77bd87332f9c3bfdf85e3c916f139672822c0f7e430a98ccc16ef9465', 75, 11, 'd_user_api_token', '[]', 0, '2022-03-11 00:21:49', '2022-03-11 00:21:49', '2023-03-11 05:51:49'),
('da0aeae68a467ea711eac91740850b6bb6bd85d6c2eddc4e7f39f60a8930d955d4c1d46a163861f1', 58, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:16:07', '2021-07-21 06:16:07', '2022-07-21 11:46:07'),
('dc6c478fcc7f1b87c5925fe536137f6db481c9eee854e5455ba0211ccd63385c5af48a9f89e2db67', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:30:27', '2021-04-13 06:30:27', '2022-04-13 12:00:27'),
('dcf6c72ce3a74cd100ab02a3514c557582cdc583de57980c3fe51a9c6ab5aaa8e2205abb87f2589c', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 06:17:25', '2021-04-12 06:17:25', '2022-04-12 11:47:25'),
('dd3e4f6af7950bc22f7ff67b49bc0ae1c8d2d776d1c7285d8fb4aa420688639d93f6ed309952eed6', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:17:38', '2021-04-14 01:17:38', '2022-04-14 06:47:38'),
('dd9f135926683043e7669690e701f729f1654ebc4fd1cf041c23672be25cc168e1991b5b9855b318', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 09:40:21', '2021-04-14 09:40:21', '2022-04-14 15:10:21'),
('dda53969b94f9559c3c4d145da513f337060579785ed00a75e92ddaba37114cdf65fefa0a08a2717', 59, 7, 'd_user_api_token', '[]', 0, '2021-07-21 06:47:29', '2021-07-21 06:47:29', '2022-07-21 12:17:29'),
('ddeab0227582ccd8d2f07b463917821c986e48e577890c055275cb18eaebfae6abf47791f3b9fc15', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 04:38:48', '2021-05-03 04:38:48', '2022-05-03 10:08:48'),
('debb904087e14e620484eaa6bff22f3c8af33eded9cad6df5e9a2c21640419032fa5f1308b767f5f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:03:44', '2021-04-13 07:03:44', '2022-04-13 12:33:44'),
('df984e9d489d38b151d433bba1b5afd62be600f1b12fbadd4ff7f91cbf20db629a3f4e55c4ce9522', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 08:32:53', '2021-04-14 08:32:53', '2022-04-14 14:02:53'),
('e0837db427c3f3411a3783c5be595375ebd85d1c91ff8a077e7b8dba5d8916acf13397b17340106f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:28:02', '2021-04-14 01:28:02', '2022-04-14 06:58:02'),
('e1996622b02586515ba903586e1c4bb217a5877a96187fc16fe715d71768b346b3016990d00b7ec5', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:30:18', '2021-04-13 06:30:18', '2022-04-13 12:00:18'),
('e1ae67b02cbdeab55ec6042cc23cf24481239d81a25bd930fca1a4e4b30d7c6e42c8e152afd6755f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:20:47', '2021-04-13 07:20:47', '2022-04-13 12:50:47'),
('e28e33ea0fe336d6327e90e47249290f62a223788942d9aae6bddae6b79632b1c8d2dfa4b5f79a30', 77, 11, 'd_user_api_token', '[]', 0, '2022-03-26 00:11:57', '2022-03-26 00:11:57', '2023-03-26 05:41:57'),
('e31044486f762e8dbabf08cbde929e9f13bed389d0205754d089a70460274bd2fc9113366f649f18', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:37:54', '2021-04-13 04:37:54', '2022-04-13 10:07:54'),
('e32cf1ca816f51e011a5217b5165f07c878fad7cb73c24bce82585abe6950b6cd76019818dd14249', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:21:19', '2021-04-13 07:21:19', '2022-04-13 12:51:19');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e584e62fc6671792768fd749904d945c125ec218de7c3f86f5591fd6abfd2285ea28eb8272e6a309', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:56:23', '2021-04-13 07:56:23', '2022-04-13 13:26:23'),
('e63ff5e15f4b2212f794b016850fe16381847e4dca1062029a9a941ea8ea7939729c1e841a16f1af', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 07:31:21', '2021-04-12 07:31:21', '2022-04-12 13:01:21'),
('e6fdbae4ca336577d928f4917c08fec4abf3c9d9878e0abeaad3bc8c7f09aaf0db5fa1e3ed7c29fc', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 05:39:40', '2021-05-03 05:39:40', '2022-05-03 11:09:40'),
('e71fb1be72297e540b64c40848920a153da5c195ab9b7354550918806049012384be7727faa6da32', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-12 04:32:41', '2021-04-12 04:32:41', '2022-04-12 10:02:41'),
('e88509392a57697f2cfacc2c5d18bb88ea70afb8940a49749abfe7bfd29e39813d138470074c3712', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:10:11', '2021-04-13 06:10:11', '2022-04-13 11:40:11'),
('e8f14e8b29a6301545c201a87d4d582890efd65181659de5f62d10d8550e4c6d4b1beb0ddfa2dea8', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:37:21', '2021-04-13 04:37:21', '2022-04-13 10:07:21'),
('e91b73f3f9802ac31187fbb5edf79e15e2a20ce57fd5d186210d54e62d0cd8134dd5fd793cb0e7db', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:22:51', '2021-04-14 01:22:51', '2022-04-14 06:52:51'),
('e991d6d530c8d556582311c9a46d13d4da2abf702a3b31e85ec0b68483dce453055d303150443f72', 59, 7, 'd_user_api_token', '[]', 0, '2021-08-05 18:49:26', '2021-08-05 18:49:26', '2022-08-06 00:19:26'),
('ea57de31a37f1065b8ad90c913f8ae9e3c7b72556f124d855b5788c451fe12e983bda3f060cf7a0a', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:07:21', '2021-04-13 06:07:21', '2022-04-13 11:37:21'),
('eb9edc42c00761e7b954356d8a5724f4edb61effac00814e0f8846e26ad1d753879ca3ef41698320', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 07:00:30', '2021-05-03 07:00:30', '2022-05-03 12:30:30'),
('ef0541a1aefdb6c309cb0617a6b5416feb389285eb1df95719badfcac5065a229fe2d815438d779f', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-02 01:56:39', '2021-09-02 01:56:39', '2022-09-02 07:26:39'),
('f17c8e51aa59592eb99cda40668e3daf5f90c915e3c627b42ce7cc8305628d642a739aa67e03c354', 46, 5, 'd_user_api_token', '[]', 0, '2021-05-03 06:02:26', '2021-05-03 06:02:26', '2022-05-03 11:32:26'),
('f349a4bf180432d2ec5f5ebd92c0dd94b26bf49dee924518b48934954064f30d4d52c8392c1bc6bb', 29, 5, 'd_user_api_token', '[]', 0, '2021-05-27 08:51:11', '2021-05-27 08:51:11', '2022-05-27 14:21:11'),
('f37ed85fc949cdefd2b8a9b2045a8cc3a132186813a55ea867adaeece8547195c751764f3be97a58', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:55:59', '2021-04-14 01:55:59', '2022-04-14 07:25:59'),
('f478fad09f374721928762c2238b5fdbd36aa40ba10537db3e7ba6445a2120678b15e25682cf11ca', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 06:11:05', '2021-04-13 06:11:05', '2022-04-13 11:41:05'),
('f4dabcb5401485dc9e2b2646f78491e513e4be33de9f8905cb0721e47700099501aed43a3a6c3cfb', 57, 7, 'd_user_api_token', '[]', 0, '2021-07-21 04:32:30', '2021-07-21 04:32:30', '2022-07-21 10:02:30'),
('f4eed5f9f0899707b3682fd58144b00d7db53d163f2ff0a31275ef9a30c3c357091e1e7f1da6b2f1', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 04:31:46', '2021-04-14 04:31:46', '2022-04-14 10:01:46'),
('f55ce7a5a516dd55bb8297f7b107f6923367a057a82efd180cb9012356094de74936d2957cc10291', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:51:35', '2021-04-13 04:51:35', '2022-04-13 10:21:35'),
('f591307880c863e50396ab1a3a9be2b91fc5dc6b4f9a4d5e619d195b1c2dad5a6e6a4e879206b51f', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:52:36', '2021-04-13 07:52:36', '2022-04-13 13:22:36'),
('f5d3d12b65213210a7f0ff2c1163d9f95d1a5ed827e93437771ab0f29bdcc13b5c58dba28e2408d5', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 04:31:18', '2021-04-13 04:31:18', '2022-04-13 10:01:18'),
('f64c5151b3f42017ab5c7b9883dde85b5934fc8ae8abc70edc0cb7bdfd2ff530a7e052f17e3621b8', 57, 7, 'd_user_api_token', '[]', 0, '2021-07-31 01:28:44', '2021-07-31 01:28:44', '2022-07-31 06:58:44'),
('f90de99c05f1a423032bc1d4655cc860c47b4251f9e7934fde53e4b0ad255923f1e449edb3a9bb8a', 45, 5, 'd_user_api_token', '[]', 0, '2021-04-16 09:30:58', '2021-04-16 09:30:58', '2022-04-16 15:00:58'),
('f960f79518f44c20e894f406f10fdf45697699ce26df023ec12dd4618c3b50eafc7e1698ee7805e7', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:43:42', '2021-04-13 07:43:42', '2022-04-13 13:13:42'),
('fcd7e95b4e21f7274941e10477015921bd367e937a160adc6f7ef2582b16b6bd717fbad64504d414', 58, 7, 'd_user_api_token', '[]', 0, '2021-09-01 03:58:36', '2021-09-01 03:58:36', '2022-09-01 09:28:36'),
('fdbeeb7068f46818468f484014cfde1664f20752f484a5c4d36d71c7b59b08a852c75a04bcee2885', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-13 07:05:09', '2021-04-13 07:05:09', '2022-04-13 12:35:09'),
('fea343a64c13c78c50511ebf93e6f68c2b647b7f4859890c80386877dec726e0076b17ce62646980', 34, 3, 'h_user_api_token', '[]', 0, '2021-04-14 01:36:14', '2021-04-14 01:36:14', '2022-04-14 07:06:14');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, NULL, 'MHN Doctor App Personal Access Client', 'GpQymq4Ptm9tm5qFHeofoQVAEwSgcxohDv9GOBJ0', 'http://localhost', 1, 0, 0, '2021-03-26 23:52:57', '2021-03-26 23:52:57'),
(2, NULL, 'MHN Doctor App Password Grant Client', 'QzEyBIL0V0moDLlxJnZCEfE2DzhYwPtR4opn1hdE', 'http://localhost', 0, 1, 0, '2021-03-26 23:52:57', '2021-03-26 23:52:57'),
(3, NULL, 'MHN Doctor App Personal Access Client', 'umSi88QLMuy6eJQlrGLQljURbjU8G8pMFiWXH5bG', 'http://localhost', 1, 0, 0, '2021-04-10 01:59:33', '2021-04-10 01:59:33'),
(4, NULL, 'MHN Doctor App Password Grant Client', 'bBLqqYhF4TkqHOTJpNnwkDOnGAzY1stu4UusWqoE', 'http://localhost', 0, 1, 0, '2021-04-10 01:59:33', '2021-04-10 01:59:33'),
(5, NULL, 'MHN Doctor App Personal Access Client', 'YKlbASiFsPRF7qZOw4S8UZsQhXFyxrmm6Dnd9E7Z', 'http://localhost', 1, 0, 0, '2021-04-15 01:00:01', '2021-04-15 01:00:01'),
(6, NULL, 'MHN Doctor App Password Grant Client', 'zQ8zZtqynSB1GsRxd2Wr6k7z2GFDrqsoIpOfCzn3', 'http://localhost', 0, 1, 0, '2021-04-15 01:00:01', '2021-04-15 01:00:01'),
(7, NULL, 'MHN Doctor App Personal Access Client', 'qBFoc9H8jFl6rLFTyilRGL2dNsI5mYXIMBKgcPKO', 'http://localhost', 1, 0, 0, '2021-07-20 00:40:26', '2021-07-20 00:40:26'),
(8, NULL, 'MHN Doctor App Password Grant Client', 'RjyHoItNfrp0e339t8N6jqJSG2bjahogVh4LhnJO', 'http://localhost', 0, 1, 0, '2021-07-20 00:40:27', '2021-07-20 00:40:27'),
(9, NULL, 'MHN Doctor App Personal Access Client', 'vUVQnhLtVDI8qJvFoFbePERgzWbwm9A3ovtpk8ZZ', 'http://localhost', 1, 0, 0, '2021-09-10 04:10:09', '2021-09-10 04:10:09'),
(10, NULL, 'MHN Doctor App Password Grant Client', 'ShGa1zhJyGq8xWE0ebgSwC9WOkU5jyyg9F1uuJfc', 'http://localhost', 0, 1, 0, '2021-09-10 04:10:09', '2021-09-10 04:10:09'),
(11, NULL, 'MyHospitalNow.com Personal Access Client', '7dNuEw3G14xm40ITRyp7Bcg0jRz29mUVhO9DdVDD', 'http://localhost', 1, 0, 0, '2022-03-11 00:20:26', '2022-03-11 00:20:26'),
(12, NULL, 'MyHospitalNow.com Password Grant Client', 'GRrHzQwNOTQVNnC3mrtQ2maZuIrunsVDATkATWhI', 'http://localhost', 0, 1, 0, '2022-03-11 00:20:26', '2022-03-11 00:20:26'),
(13, NULL, 'MyHospitalNow.com Personal Access Client', 'FUkvwPLQL9lH1CzbPWDcnxQiy5w0pj6m0VD7efUW', 'http://localhost', 1, 0, 0, '2022-04-15 06:12:09', '2022-04-15 06:12:09'),
(14, NULL, 'MyHospitalNow.com Password Grant Client', '2dtGzp81v2maUs8noxsgMvWMgxCCkhaM7rmFzAMy', 'http://localhost', 0, 1, 0, '2022-04-15 06:12:10', '2022-04-15 06:12:10'),
(15, NULL, 'MyHospitalNow.com Personal Access Client', 'KQRO4JlWdzeAd3wp4UcQ7mukpMKOYXIDOtiwwRra', 'http://localhost', 1, 0, 0, '2022-04-15 06:14:37', '2022-04-15 06:14:37'),
(16, NULL, 'MyHospitalNow.com Password Grant Client', 'rbcdz7lr1TaliJcxGpZPNdXnjott32ql9uvMTyH0', 'http://localhost', 0, 1, 0, '2022-04-15 06:14:38', '2022-04-15 06:14:38');

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
(1, 1, '2021-03-26 23:52:57', '2021-03-26 23:52:57'),
(2, 3, '2021-04-10 01:59:33', '2021-04-10 01:59:33'),
(3, 5, '2021-04-15 01:00:01', '2021-04-15 01:00:01'),
(4, 7, '2021-07-20 00:40:26', '2021-07-20 00:40:26'),
(5, 9, '2021-09-10 04:10:09', '2021-09-10 04:10:09'),
(6, 11, '2022-03-11 00:20:26', '2022-03-11 00:20:26'),
(7, 13, '2022-04-15 06:12:10', '2022-04-15 06:12:10'),
(8, 15, '2022-04-15 06:14:38', '2022-04-15 06:14:38');

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('chandu@gmail.com', '$2y$10$EJJTMHno5QqObPt1Z3LXHObSiu9RDqWw1nDJ2O38qgQU7nxVLRtLi', '2021-04-07 07:26:49'),
('babu@gmail.com', '$2y$10$2MMuizYGAoMfFKdsa3HLtekM1AWyFNnT78R3m7g7SFt2Uhewr3nqu', '2021-04-07 07:29:13'),
('bhaiya@gmail.com', '$2y$10$StO9fXB8Qw9a.3X.nhkfJOGDo8sMCiJ9hvPu.umvH/ThDH2oFE4P2', '2021-04-07 07:41:21'),
('santosh@gmail.com', '$2y$10$dkdMMq8QM9NsZkqm8HZXRuARGPfZ6ZjhGcxJzz5J9TLMv7Davxaii', '2021-04-08 01:00:14'),
('amit@gmail.com', '$2y$10$PQgX888/7zVK5gVdoG0cROFxZMMCGj/FNKNGmK2EfXMl1QrUwkPiC', '2021-04-08 01:09:49'),
('babumosai@gmail.com', '$2y$10$HzYwmgOXKr/rUxWbo5jgBu3JIWN6hI9Kngz2Q2iuwa4vp6OfrTfBK', '2021-04-08 01:54:21'),
('harerambabu@gmail.com', '$2y$10$gxB2X4wZX6kwLM.UWv0vzuLFPvxKlNJrAS6VH.RftU8DF9XZyQ/ei', '2021-04-08 02:05:28'),
('ajaydas@gmail.com', '$2y$10$5IZu0yL03dGS4J.Mu1AQ6.l7EtRwU1iZYXHsVHCmqncuqD1Y1Moom', '2021-04-08 02:11:46'),
('sohanlal@gmail.com', '$2y$10$QcI61Lzd1hrzfP1N44P2ReZT6Z20aK0sldiAgug21Kjf.gCfup2oC', '2021-04-08 03:50:32'),
('babau@gmail.com', '$2y$10$CwukcHkzJn4hxYcKDF67A.lCm2YegsYHRJrDbcfp/pggJJQgf/l8a', '2021-04-08 06:42:14'),
('sona@gmail.com', '$2y$10$Ix.E1L.5r8QAK2G/Fr27bOlwmIWPGDBOuvdedqXTrodhcR4hTgOm.', '2021-04-08 06:42:58'),
('baburao@gmail.com', '$2y$10$NA6QD4snJfzeU7Numtmvy..3rchWBvlHFBvZJqOztu01qcrumYSbK', '2021-04-09 10:43:53'),
('ramu@gmail.com', '$2y$10$N5Z0D5L1tt96aVI0DpvFFu3ydSJjwVRFqPvc.wGYguaS8//aHi3jO', '2021-04-09 10:52:11'),
('haru@gmail.com', '$2y$10$Hf0yd9GdYL/4LFE.RP8cseE73bsbRgJnbIPnSSiKxnLtnxFILlweW', '2021-04-09 23:51:47'),
('bababab@gmail.com', '$2y$10$Mn3XPgVN4x89uU4H6zVSjueRMC51zPdFARNWnrZvwD/zb45.eT1KC', '2021-04-09 23:57:12'),
('bababsabab@gmail.com', '$2y$10$R9JvWI7NaaIlUSMG70jaXu05F6bbbPg.SwGB7KCF/LHRCTCDLIkJO', '2021-04-09 23:59:07'),
('talala@gmail.com', '$2y$10$1.7XWj26jvJmoi2lvVpjKufSfUryuBlnjls56rCy0/KSEDkKqdvbC', '2021-04-09 23:59:57'),
('bharwenger@hmsil.vom', '$2y$10$T7L9PBLR1XZ8sk/EmsnWTOH/.F2MXUu3q7ZT/ZAa/xa96b1v4xUQC', '2021-04-10 00:00:59'),
('rama22@gmail.com', '$2y$10$Lr/Lg0wJmvBMabTQScFTQuDWLeZylW4mHe6QZsiX2YTvgpf7nPnKq', '2021-04-10 00:02:38'),
('chandan.cotocus@gmail.com', '$2y$10$hiwvlJd.ZUunB/bKyNMa5O4KRB0k8doJujSdPN/LD7qVN4Y5y28XW', '2021-04-16 06:53:24'),
('rohansingh@gmail.com', '$2y$10$XbF3FTX4qjeppZEAT6PtauY0oA/6Drr1k.xe0r5z0Jg1Z42xIFkCO', '2021-05-21 01:52:38'),
('ajay.cotocus@gmail.com', '$2y$10$TVIk.MiBX2YU3c.dLRfvGuJFxKLIxrXJKIXg/HKJt1ZiXcLo/Vjga', '2021-05-22 07:13:11'),
('ajmalkasab@gmail.com', '$2y$10$uK838dNJgG/AsNdd0XCQJOw6Q3uSePfsChnu5vvIfDcA2EpkKKz7a', '2021-05-24 05:38:53'),
('PRADEEPDAS@gmail.com', '$2y$10$6FmkDGOwt1Zclya58kirs.ND9Oa.gNIUWbvrC0mkLj1X/15oR.EYW', '2021-05-24 06:15:24'),
('RAWAT@GMAIL.COM', '$2y$10$HoM3ZWU/7e12Rxyxy8X85.awJW1lAOMdJMNGfcH4raX4uK0tvUTyO', '2021-06-09 00:30:15'),
('sasaram@gmail.com', '$2y$10$dFWtEWfenjPowPwXWr56WuDd3tH.MHRV7h8gos0izjmVi8SLnQJnK', '2021-06-09 02:06:46'),
('bhuwan@gmail.com', '$2y$10$TLCCz46iH8sJk.QQ1PJGpOS2qPnUAViJFS3FCsdphrneXGJDfX28.', '2021-06-09 03:00:31'),
('amaru@g.com', '$2y$10$bhARxbGBQdXY2Fi3rBaO3u0xiLvOWHPgJ4oPeFNX8tkuRFXWFZzUe', '2021-08-02 03:52:36'),
('secondtest@gmail.com', '$2y$10$JRnsTjQSKJJRXkB4Y6n/3eQKAIYWh9sej6JbBk46xFGyVRhsm/T2e', '2022-03-10 05:05:22'),
('testdemotest@gmail.com', '$2y$10$6mcAnzoiBOD6ATE18FiUA..XDZ6xVoi5.zuGIspf9yV9Wvcc4MwrK', '2022-03-10 05:15:14'),
('manish.cotocus1@gmail.com', '$2y$10$dbJ.KeDo7MlvDOuR22.mmODuvrhMVLqdAiHUDaisWwVfCtmULk/eO', '2022-03-10 05:17:30'),
('project@gamil.com', '$2y$10$aRAf1RXrKJK2.7U47UnwyumzRYGckhP.ih84Xo/PBeD1zE6HrsEc.', '2022-03-10 06:33:13'),
('testdemo@gmail.com', '$2y$10$8Q5w3/qQHK09mwmtcP2PsOg5bXd70sFbGVS9hkHohoPEz2oSLN17y', '2022-03-10 09:29:33'),
('democrash@gmail.com', '$2y$10$kllDeGl5k3Kc3YCfz3Ak9uqv3t8m8WC0L.ZA3/o4uPpMPMpfcQqDa', '2022-03-10 10:06:07'),
('sitetest@gmail.com', '$2y$10$PhLslCytLE.I0WQRVZ4gi./tlgZ7rk7HhR7T57Q11Gf49.1uz1Kfu', '2022-03-10 10:13:34'),
('demohospi@gmail.com', '$2y$10$iOaabeUGvkn7Ddv2.7TgRez5i2I2IP7qaTLGjv3UeNZWNi3OEpUai', '2022-03-10 23:13:43'),
('newmail@gmail.com', '$2y$10$0lftd90Vqh59rEugzwQ2neL3zAFhepqXrlpWnvVY4WIQ1Uq4ppdmC', '2022-03-10 23:23:14'),
('mydemotest@gmail.com', '$2y$10$vSmdDdW/tQTKheTJFdtC2.TVRv3O71u3LBeTS6nW8EKnpCjhPNAEW', '2022-03-10 23:50:12'),
('demo10@gmail.com', '$2y$10$VfN7d2HJt2ghj0Ot.oolQeC1pFj7gQ1ehCaU6RrIuT7wT4nUfJM3C', '2022-03-10 23:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_approved` int(11) DEFAULT 0,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` int(10) NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fb_profile` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_profile` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_profile` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `gender` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `bgroup` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colony` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(7) DEFAULT NULL,
  `degree` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `college` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completion` year(4) DEFAULT NULL,
  `eduexperience` int(50) DEFAULT NULL,
  `regnumber` int(50) DEFAULT NULL,
  `regcouncil` varchar(151) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regyear` year(4) DEFAULT NULL,
  `pro_experience` text COLLATE utf8mb4_unicode_ci DEFAULT '"',
  `re_experience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awards` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bibliography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `password`, `admin_approved`, `country_id`, `country_name`, `country_code`, `dial_code`, `phone`, `currency_code`, `currency_symbol`, `currency`, `state_id`, `state`, `city_id`, `city_name`, `fb_profile`, `twitter_profile`, `linkedin_profile`, `avatar`, `gender`, `birth`, `bgroup`, `languages`, `area`, `colony`, `pincode`, `degree`, `college`, `completion`, `eduexperience`, `regnumber`, `regcouncil`, `regyear`, `pro_experience`, `re_experience`, `awards`, `bibliography`, `specialization_id`, `specialization`, `remember_token`, `created_at`, `updated_at`, `is_activated`) VALUES
(62, 'Amardeep', 'amardeep', 'ad@g.coom', '$2y$10$pn9kp5N9LZEmaQDQzlqfuORIcdWXp9VhIfw52720YmrMpST4HbdNa', 0, '101', 'India', 'IN', 91, '9110990730', 'INR', '₹', 'Indian Rupee', '4025', 'Jharkhand', '58076', 'Bokaro', 'fb', 'twitter', 'linkdin', 'default.png', 'male', '1991-12-01', 'B+', 'English,Hindi', '35', 'co-operative colony', 8270013, 'Master of Physiotherapy', 'Guntur Medical College, Guntur', 2006, 20, 1234356789, 'Arunachal Pradesh Nursing Council', 2006, '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', NULL, NULL, 'XaYyLx0d5be6oTS4CvVB41LjwdRJ6oHNOgpomqMZzTpEAl7jSZFAhzVyim4l', '2021-09-03 00:25:30', '2021-09-03 00:33:03', 1),
(63, 'Ram', 'ram', 'ram@shiv.com', '$2y$10$4bU8n5S4jG/ZwF9IubiwxuDiBTjaxw5t5ciQwk9oqy8/sqPEdj4rK', 0, '101', 'India', 'IN', 91, '2123454567', 'INR', '₹', 'Indian Rupee', '4025', 'Jharkhand', '58076', 'Bokaro', 'fb', 'twitter', 'linkdin', 'footer_4-1811358153_1630649292.jpg', 'male', '2006-12-01', 'B+', 'Hindi', '35', 'co-operative colony', 8270013, 'Master of Physiotherapy', 'Maharajah Institute of Medical Sciences, Vizianagaram', 2019, 2, 1234356789, 'State Council of Indian Medicine, Assam', 2019, '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', '<p>TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest</p>', NULL, NULL, 'MhfWtdamRpmenm1gACiVS0uyCd1lm3FX9qH7RI8twD9KJXVPevlNOqnGKRX3', '2021-09-03 00:34:40', '2021-09-03 00:38:12', 1),
(64, 'Manish Kumar', 'manish-kumar', 'secondtest@gmail.com', '$2y$10$4qHdwp4GxGAHuDQ5BzPk2u9AI35mrkUDIhWOuj2CYpcNTiMibTX2S', 0, '95', 'Haiti', 'HT', 509, '4578451258', 'HTG', 'G', 'Gourde', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 05:05:21', '2022-03-10 05:05:21', 0),
(65, 'nishant kumar', 'nishant-kumar', 'testdemotest@gmail.com', '$2y$10$ZJrF3Uii.sOOiNm6LBresej78fQuQnMnPFOQLcC3IkAfgbhu0sGSW', 0, '101', 'India', 'IN', 91, '7845129635', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 05:15:13', '2022-03-10 05:15:13', 0),
(66, 'Manish Kumar', 'manish-kumar', 'manish.cotocus1@gmail.com', '$2y$10$VgHk4blZB56r.mhKjCJs/OJ3V9TiHVO6.Nm5l7q/pcE4oPp.r3EVa', 0, '18', 'Bahrain', 'BH', 973, '1234567890', 'BHD', 'B$', 'Bahamian Dollar', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 05:17:30', '2022-03-10 05:17:30', 0),
(67, 'project', 'project', 'project@gamil.com', '$2y$10$Kur1.g3mD8/UTbp0gibQLunq0fPyVj79Y51dg4KNyqwrLHHNNQYuK', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 06:33:13', '2022-03-10 06:33:13', 0),
(68, 'nishan kumar', 'nishan-kumar', 'testdemo@gmail.com', '$2y$10$2sKlV/dcczAW4aMOqpoFOuAnPOMHYnJ73IY9aM972x1tXFXH7FCoe', 0, '101', 'India', 'IN', 91, '1234567890', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 09:29:33', '2022-03-10 09:29:33', 0),
(69, 'dimple', 'dimple', 'democrash@gmail.com', '$2y$10$dDvpLHgtwuhDrIsTJYf9uOY2TRWsCiMKCgT4/ov/gPV.3B2Cj4rUq', 0, '101', 'India', 'IN', 91, '1234567890', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 10:06:06', '2022-03-10 10:06:06', 0),
(70, 'sitetest', 'sitetest', 'sitetest@gmail.com', '$2y$10$n.IkfkfUG1YUtaBfsz1/Gem3lrr84PRjEW.TkvTYCpwVCO.hIBSRO', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 10:13:34', '2022-03-10 10:13:34', 0),
(71, 'hospital demo', 'hospital-demo', 'demohospi@gmail.com', '$2y$10$aM5o.X6xY8U4.X7jfYoG3OqDi9QzJi2NDjo1c8Xf5/3a5i621sori', 0, '101', 'India', 'IN', 91, '7845963148', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 23:13:43', '2022-03-10 23:13:43', 0),
(72, 'new', 'new', 'newmail@gmail.com', '$2y$10$QZAZI5Wvk2NNJLNfz30QfObabeVpfQt5f8uMzrUz/STp/u4TBkvE.', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 23:23:13', '2022-03-10 23:23:13', 0),
(73, 'demo', 'demo', 'mydemotest@gmail.com', '$2y$10$6ey0D3IF.EMM7SZZf10qqOTVP1qVS3BTFz7Ny8zt4LBSuIZJlju26', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 23:50:11', '2022-03-10 23:50:11', 0),
(74, 'demoproject', 'demoproject', 'demo10@gmail.com', '$2y$10$2AOcD0dS07jYogA89e9v/e0WGXvS9wRkj6O6pFlhF5Dz1PVgCNn9y', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 23:58:56', '2022-03-10 23:58:56', 0),
(75, 'demodemo', 'demodemo', 'nomail@gmail.com', '$2y$10$Jvg7hoYi8jZD65OUACR/h.DiibW1Yv5IW2FI4Fl1Sfg9Jn8dnV9mS', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, 'UDRJv1oCzTIwxiFc615OEB7qTr0XksPJF5pyhTOOUT9LpmiY0QprMkMoMh1R', '2022-03-11 00:00:56', '2022-03-11 00:01:25', 1),
(76, 'demoold', 'demoold', 'nomail@nomail.com', '$2y$10$7B7hObx.d565Ei5S8QRb5eQcNrd4O5TZ8qSvkywIvZnRPXnGWB33e', 0, '101', 'India', 'IN', 91, '7992351224', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, 'zO3e4akfqsZDKr1DQZQm1hnxK8jRUlbTYZgdmvgKCDRdMwxZk5Lxie81kIKq', '2022-03-11 00:18:22', '2022-03-11 00:29:29', 1),
(77, 'doctor', 'doctor', 'doctornew@gmail.com', '$2y$10$6D3pxNRN4DwHoHjJwmGcIO7vNjKp0LMbF/DkNru1syrzvT0q3oIUK', 0, '101', 'India', 'IN', 91, '1237894562', 'INR', '₹', 'Indian Rupee', '', '', '', '', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"', NULL, NULL, NULL, NULL, NULL, 'zru3F8k4aXZI7aR2XC4zMY5tasgDxEPL0DTioSEWR1IsLdlOE4bOTA9CxZtA', '2022-03-12 03:39:32', '2022-03-12 03:42:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_activations`
--

CREATE TABLE `users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `council`
--
ALTER TABLE `council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_activations`
--
ALTER TABLE `users_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activations_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `council`
--
ALTER TABLE `council`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users_activations`
--
ALTER TABLE `users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_activations`
--
ALTER TABLE `users_activations`
  ADD CONSTRAINT `users_activations_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
