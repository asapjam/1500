-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2026 at 03:02 AM
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
-- Database: `grade_keeping`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` enum('F','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `sex`) VALUES
(1, 'Megan', 'F'),
(2, 'Joseph', 'M'),
(3, 'Kyle', 'M'),
(4, 'Katie', 'F'),
(5, 'Abby', 'F'),
(6, 'Nathan', 'M'),
(7, 'Leslie', 'F'),
(8, 'Ian', 'M'),
(9, 'Colin', 'M'),
(10, 'Peter', 'M'),
(11, 'Michael', 'M'),
(12, 'Thomas', 'M'),
(13, 'Devri', 'F'),
(14, 'Ben', 'M'),
(15, 'Aubrey', 'F'),
(16, 'Rebecca', 'F'),
(18, 'Max', 'M'),
(19, 'Rianne', 'F'),
(20, 'Avery', 'M'),
(21, 'Lauren', 'F'),
(22, 'Becca', 'F'),
(23, 'Gregory', 'M'),
(24, 'Sarah', 'F'),
(25, 'Robbie', 'M'),
(26, 'Keaton', 'M'),
(27, 'Carter', 'M'),
(28, 'Teddy', 'M'),
(29, 'Gabrielle', 'F'),
(30, 'Grace', 'F'),
(31, 'Emily', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
