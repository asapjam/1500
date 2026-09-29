-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2026 at 03:40 AM
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
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`student_id`, `date`) VALUES
(3, '2012-09-03'),
(5, '2012-09-03'),
(10, '2012-09-06'),
(11, '2012-09-09'),
(20, '2012-09-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `absence_count_view`
-- (See below for the actual view)
--
CREATE TABLE `absence_count_view` (
`student_id` int(10) unsigned
,`absence_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_by_event_view`
-- (See below for the actual view)
--
CREATE TABLE `average_by_event_view` (
`event_id` int(10) unsigned
,`average_score` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_student_score_view`
-- (See below for the actual view)
--
CREATE TABLE `average_student_score_view` (
`student_id` int(10) unsigned
,`average_score` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `grade_event`
--

CREATE TABLE `grade_event` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `category` enum('T','Q') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_event`
--

INSERT INTO `grade_event` (`event_id`, `date`, `category`) VALUES
(1, '2012-09-03', 'Q'),
(2, '2012-09-06', 'Q'),
(3, '2012-09-09', 'T'),
(5, '2012-09-23', 'Q'),
(6, '2012-10-01', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`student_id`, `event_id`, `score`) VALUES
(1, 1, 20),
(1, 2, 17),
(1, 3, 88),
(1, 5, 15),
(1, 6, 100),
(2, 2, 8),
(2, 3, 84),
(2, 5, 12),
(2, 6, 91),
(3, 1, 20),
(3, 2, 13),
(3, 3, 69),
(3, 5, 11),
(3, 6, 94),
(4, 1, 18),
(4, 2, 13),
(4, 3, 71),
(4, 6, 74),
(5, 1, 13),
(5, 2, 17),
(5, 3, 97),
(5, 5, 13),
(5, 6, 97),
(6, 1, 18),
(6, 2, 13),
(6, 3, 83),
(6, 5, 18),
(6, 6, 89),
(7, 1, 14),
(7, 2, 17),
(7, 3, 88),
(7, 5, 14),
(7, 6, 76),
(8, 1, 14),
(8, 2, 8),
(8, 3, 75),
(8, 5, 18),
(8, 6, 65),
(9, 1, 11),
(9, 2, 19),
(9, 3, 83),
(9, 5, 13),
(9, 6, 73),
(10, 1, 19),
(10, 2, 18),
(10, 3, 72),
(10, 5, 14),
(10, 6, 63),
(11, 1, 18),
(11, 2, 15),
(11, 3, 74),
(11, 5, 18),
(11, 6, 98),
(12, 1, 19),
(12, 2, 19),
(12, 3, 77),
(12, 5, 8),
(12, 6, 75),
(13, 2, 18),
(13, 3, 67),
(13, 5, 8),
(14, 1, 11),
(14, 2, 18),
(14, 3, 68),
(14, 5, 16),
(14, 6, 77),
(15, 1, 20),
(15, 2, 16),
(15, 3, 75),
(15, 5, 13),
(15, 6, 62),
(16, 1, 18),
(16, 2, 9),
(16, 3, 60),
(16, 5, 15),
(16, 6, 98),
(18, 1, 20),
(18, 2, 9),
(18, 3, 96),
(18, 5, 18),
(18, 6, 94),
(19, 1, 9),
(19, 2, 11),
(19, 3, 79),
(19, 5, 18),
(19, 6, 74),
(20, 1, 9),
(20, 3, 76),
(20, 5, 14),
(20, 6, 62),
(21, 1, 13),
(21, 2, 12),
(21, 3, 91),
(21, 5, 17),
(21, 6, 73),
(22, 1, 13),
(22, 2, 10),
(22, 3, 81),
(22, 5, 17),
(22, 6, 95),
(23, 1, 16),
(23, 2, 17),
(23, 3, 81),
(23, 5, 15),
(24, 1, 11),
(24, 2, 19),
(24, 3, 62),
(24, 6, 68),
(25, 1, 19),
(25, 2, 10),
(25, 3, 79),
(25, 5, 14),
(25, 6, 85),
(26, 1, 10),
(26, 2, 18),
(26, 3, 86),
(26, 5, 8),
(26, 6, 91),
(27, 1, 15),
(27, 2, 8),
(27, 3, 90),
(27, 6, 70),
(28, 1, 15),
(28, 2, 13),
(28, 3, 68),
(28, 5, 20),
(28, 6, 77),
(29, 1, 19),
(29, 2, 16),
(29, 3, 66),
(29, 5, 16),
(29, 6, 66),
(30, 1, 17),
(30, 2, 12),
(30, 3, 79),
(30, 6, 68),
(31, 1, 11),
(31, 2, 19),
(31, 3, 81),
(31, 5, 9),
(31, 6, 76);

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

-- --------------------------------------------------------

--
-- Structure for view `absence_count_view`
--
DROP TABLE IF EXISTS `absence_count_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `absence_count_view`  AS SELECT `absence`.`student_id` AS `student_id`, count(`absence`.`date`) AS `absence_count` FROM `absence` GROUP BY `absence`.`student_id` ;

-- --------------------------------------------------------

--
-- Structure for view `average_by_event_view`
--
DROP TABLE IF EXISTS `average_by_event_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_by_event_view`  AS SELECT `score`.`event_id` AS `event_id`, avg(`score`.`score`) AS `average_score` FROM `score` GROUP BY `score`.`event_id` ;

-- --------------------------------------------------------

--
-- Structure for view `average_student_score_view`
--
DROP TABLE IF EXISTS `average_student_score_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_student_score_view`  AS SELECT `score`.`student_id` AS `student_id`, avg(`score`.`score`) AS `average_score` FROM `score` WHERE `score`.`event_id` not in (3,6) GROUP BY `score`.`student_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`student_id`,`date`);

--
-- Indexes for table `grade_event`
--
ALTER TABLE `grade_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`student_id`,`event_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade_event`
--
ALTER TABLE `grade_event`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `grade_event` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
