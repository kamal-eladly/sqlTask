-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 09:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `faild_jops`
--

CREATE TABLE `faild_jops` (
  `id` int(11) NOT NULL,
  `connection` varchar(250) NOT NULL,
  `queue` varchar(250) NOT NULL,
  `payload` varchar(250) NOT NULL,
  `exeption` varchar(250) NOT NULL,
  `falid_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `final_decition`
--

CREATE TABLE `final_decition` (
  `id` int(11) NOT NULL,
  `pre_decition_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `pdf` varchar(250) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pre_decision`
--

CREATE TABLE `pre_decision` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program` varchar(250) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `student_id` int(11) NOT NULL,
  `puplic` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `name_eng` varchar(100) NOT NULL,
  `social_id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `shoba` varchar(10) NOT NULL,
  `schoolType` varchar(15) NOT NULL,
  `schoolName` varchar(250) NOT NULL,
  `student_phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `father_Phone` varchar(10) NOT NULL,
  `firstLanguage` int(11) NOT NULL,
  `total` float NOT NULL,
  `eng1` float NOT NULL,
  `finalTotal` float NOT NULL,
  `reg_data` datetime NOT NULL,
  `password` varchar(250) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_reqirments`
--

CREATE TABLE `student_reqirments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `raghba_1` int(11) NOT NULL,
  `raghba_2` int(11) NOT NULL,
  `raghba_3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `email_vertifaid_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email_vertifaid_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(250) NOT NULL,
  `rememper_taken` varchar(100) NOT NULL,
  `theam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faild_jops`
--
ALTER TABLE `faild_jops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_decition`
--
ALTER TABLE `final_decition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `pre_decition_id` (`pre_decition_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_reqirments`
--
ALTER TABLE `student_reqirments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raghba_2` (`raghba_2`),
  ADD KEY `raghba_1` (`raghba_1`),
  ADD KEY `raghba_3` (`raghba_3`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faild_jops`
--
ALTER TABLE `faild_jops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_decition`
--
ALTER TABLE `final_decition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_decision`
--
ALTER TABLE `pre_decision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_reqirments`
--
ALTER TABLE `student_reqirments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_decition`
--
ALTER TABLE `final_decition`
  ADD CONSTRAINT `final_decition_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `final_decition_ibfk_2` FOREIGN KEY (`pre_decition_id`) REFERENCES `pre_decision` (`id`);

--
-- Constraints for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD CONSTRAINT `pre_decision_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `student_reqirments`
--
ALTER TABLE `student_reqirments`
  ADD CONSTRAINT `student_reqirments_ibfk_1` FOREIGN KEY (`raghba_1`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `student_reqirments_ibfk_2` FOREIGN KEY (`raghba_2`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `student_reqirments_ibfk_3` FOREIGN KEY (`raghba_3`) REFERENCES `programs` (`program_id`),
  ADD CONSTRAINT `student_reqirments_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
