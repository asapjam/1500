-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2026 at 07:37 AM
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
-- Database: `graves`
--

-- --------------------------------------------------------

--
-- Table structure for table `graves`
--

CREATE TABLE `graves` (
  `graveID` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `birthDate` date NOT NULL,
  `deathDate` date NOT NULL,
  `veteranStatus` tinyint(4) NOT NULL,
  `famous` tinyint(4) NOT NULL,
  `photoName` varchar(255) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `longitude` varchar(150) NOT NULL,
  `altitude` float NOT NULL,
  `graveyardID` int(11) NOT NULL,
  `addedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graves`
--

INSERT INTO `graves` (`graveID`, `firstName`, `middleName`, `lastName`, `birthDate`, `deathDate`, `veteranStatus`, `famous`, `photoName`, `latitude`, `longitude`, `altitude`, `graveyardID`, `addedBy`) VALUES
(1, 'Alfred', 'P', 'Kafka', '1923-11-24', '1943-09-21', 1, 0, 'kafka.jpg', '42.45.23', '-71.1370', 29.53, 1, 1),
(2, 'Merv', '', 'Griffin', '1925-07-06', '2007-08-12', 0, 1, 'griffin.png', '31.760107040', '-106.492294312', 3750, 2, 2),
(3, 'Joel', 'H', 'Cheskin', '1942-07-23', '2014-02-05', 0, 0, 'cheskin.jpg', '36.822467804', '-79.397003174', 715.22, 3, 3),
(4, 'Ruth', 'E', 'Brannen', '1907-04-16', '1907-06-18', 0, 0, 'brannen.jpg', '44.282329559', '-73.982955933', 1850.39, 4, 4),
(5, 'Steve', 'J', 'Ireland', '1931-09-01', '2001-07-07', 0, 0, 'ireland.png', '45.483539581', '-84.593986511', 613.52, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graves`
--
ALTER TABLE `graves`
  ADD PRIMARY KEY (`graveID`),
  ADD KEY `graveyardID_fk_graves` (`graveyardID`),
  ADD KEY `addedBy_fk_graves` (`addedBy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `graves`
--
ALTER TABLE `graves`
  MODIFY `graveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graves`
--
ALTER TABLE `graves`
  ADD CONSTRAINT `addedBy_fk_graves` FOREIGN KEY (`addedBy`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `graveyardID_fk_graves` FOREIGN KEY (`graveyardID`) REFERENCES `graveyards` (`graveyardID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
