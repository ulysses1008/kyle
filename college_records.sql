-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 04:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sad`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_records`
--

CREATE TABLE `college_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birth_order` varchar(20) DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `language_home` varchar(100) DEFAULT NULL,
  `language_fluent` varchar(100) DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_dob` date DEFAULT NULL,
  `father_birthplace` varchar(100) DEFAULT NULL,
  `father_nationality` varchar(50) DEFAULT NULL,
  `father_current_address` varchar(255) DEFAULT NULL,
  `father_permanent_address` varchar(255) DEFAULT NULL,
  `father_landline` varchar(20) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `father_business_address` varchar(255) DEFAULT NULL,
  `father_business_phone` varchar(20) DEFAULT NULL,
  `father_language` varchar(100) DEFAULT NULL,
  `father_religion` varchar(50) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_dob` date DEFAULT NULL,
  `mother_birthplace` varchar(100) DEFAULT NULL,
  `mother_nationality` varchar(50) DEFAULT NULL,
  `mother_current_address` varchar(255) DEFAULT NULL,
  `mother_permanent_address` varchar(255) DEFAULT NULL,
  `mother_landline` varchar(20) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `mother_business_address` varchar(255) DEFAULT NULL,
  `mother_business_phone` varchar(20) DEFAULT NULL,
  `mother_language` varchar(100) DEFAULT NULL,
  `mother_religion` varchar(50) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `guardian_phone` varchar(20) DEFAULT NULL,
  `guardian_relationship` varchar(50) DEFAULT NULL,
  `emergency_name` varchar(100) DEFAULT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_records`
--
ALTER TABLE `college_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_record` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_records`
--
ALTER TABLE `college_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college_records`
--
ALTER TABLE `college_records`
  ADD CONSTRAINT `fk_user_record` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
