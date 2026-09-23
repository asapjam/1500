-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 06:52 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--
CREATE DATABASE IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `movies`;

-- --------------------------------------------------------

--
-- Table structure for table `movies_basic`
--

DROP TABLE IF EXISTS `movies_basic`;
CREATE TABLE `movies_basic` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `release_year` int(10) UNSIGNED DEFAULT NULL,
  `director` varchar(40) DEFAULT NULL,
  `studio` varchar(30) DEFAULT NULL,
  `critics_rating` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_basic`
--

INSERT INTO `movies_basic` (`id`, `title`, `genre`, `release_year`, `director`, `studio`, `critics_rating`) VALUES
(1, 'Coat Of Mysteries', 'Children', 1901, 'Julian Fowler', 'Studio 60', '5.5'),
(2, 'Students And Boys', 'Horror', 1903, 'Julian Fowler', 'Bix', '3.4'),
(3, 'Created By The End', 'Sci-Fi', 1910, 'Rebecca Adams', 'Falstead Group', '5.9'),
(4, 'Men And Traitors', 'Sci-Fi', 1912, 'Julian Fowler', 'Arpeggio Brothers', '3.2'),
(5, 'Hunters Of Eternity', 'Sci-Fi', 1913, 'Ryan Ross', 'Torchwood', '7.0'),
(6, 'Vanish In The Slaves', 'Adventure', 1914, 'Violet Wells', 'Falstead Group', '8.8'),
(7, 'Shield Of Dreams', 'Children', 1915, 'Alexander Moore', 'Arpeggio Brothers', '8.0'),
(8, 'Bird Of Yesterday', 'Children', 1919, 'Julian Fowler', 'Studio 60', '3.1'),
(9, 'Opponent Of Fortune', 'Drama', 1919, 'Steven Spencer', 'Lionel Brownstone', '5.0'),
(10, 'Descendants And Wives', 'Adventure', 1921, 'Arthur Evans', 'Torchwood', '6.7'),
(11, 'Present From Petals', 'Children', 1921, 'Violet Scott', 'Studio 60', '5.4'),
(12, 'Origin Of Nowhere', 'Sci-Fi', 1924, 'Julian Fowler', 'Lionel Brownstone', '5.7'),
(13, 'Music In The Crypts', 'Horror', 1925, 'Julian Fowler', 'Studio 60', '6.6'),
(14, 'Extermination Of New Earth', 'Sci-Fi', 1925, 'Alisa Barrett', 'Arpeggio Brothers', '6.4'),
(15, 'Intelligence In Technolic Advancements', 'Sci-Fi', 1930, 'Tyler Brooks', 'Lionel Brownstone', '4.0'),
(16, 'Monsters And Wolves', 'Horror', 1931, 'Julian Fowler', 'Lionel Brownstone', '9.0'),
(17, 'Armies Without A Home', 'Drama', 1932, 'Caroline Watson', 'Arpeggio Brothers', '7.3'),
(18, 'Heirs And Farmers', 'Drama', 1935, 'Amelia Turner', 'Torchwood', '5.2'),
(19, 'Women And Mercenaries', 'Sci-Fi', 1937, 'Sarah Adams', 'Falstead Group', '8.4'),
(20, 'Homes Of Remorse', 'Drama', 1938, 'Sienna Warren', 'Bix', '3.7'),
(21, 'Creation Of Bad News', 'Drama', 1939, 'Stuart Scott', 'Arpeggio Brothers', '7.7'),
(22, 'Cleaning With The Neighbor', 'Children', 1941, 'Jared Cooper', 'Lionel Brownstone', '6.5'),
(23, 'Savior Of The End', 'Adventure', 1943, 'Sophia Baker', 'Torchwood', '4.6'),
(24, 'Perfection Of Rainbows', 'Adventure', 1943, 'Sophia Baker', 'Arpeggio Brothers', '4.4'),
(25, 'Bunnies In The River', 'Children', 1946, 'Garry Scott', 'Lionel Brownstone', '9.4'),
(26, 'Students With Black Hair', 'Horror', 1947, 'Lilianna Mason', 'Falstead Group', '9.8'),
(27, 'Gangsters And Blacksmiths', 'Adventure', 1949, 'Sophia Baker', 'Bix', '7.2'),
(28, 'Rebels Of The Void', 'Drama', 1949, 'Garry Scott', 'Lionel Brownstone', '6.8'),
(29, 'Peasant Of Dawn', 'Drama', 1955, 'Garry Scott', 'Falstead Group', '3.7'),
(30, 'Defiant In The North', 'Horror', 1960, 'Sophia Baker', 'Bix', '3.6'),
(31, 'Officer Of The Ocean', 'Sci-Fi', 1960, 'Dominik Nelson', 'Falstead Group', '4.3'),
(32, 'Captured In The Attic', 'Horror', 1962, 'Sophia Baker', 'Torchwood', '7.9'),
(33, 'Death In The Elements', 'Drama', 1974, 'Sophia Baker', 'Falstead Group', '4.2'),
(34, 'Spy Of The Sands', 'Sci-Fi', 1980, 'Marcus Rogers', 'Falstead Group', '6.6'),
(35, 'Supporters And Bearers', 'Drama', 1983, 'Garry Scott', 'Studio 60', '6.4'),
(36, 'Agent Of Perfection', 'Adventure', 1985, 'Abigail Payne', 'Lionel Brownstone', '3.1'),
(37, 'Friend Of The Forest', 'Horror', 1986, 'Elise Harper', 'Arpeggio Brothers', '3.8'),
(38, 'Wizards Of Riddles', 'Children', 1988, 'Emma Russell', 'Lionel Brownstone', '4.3'),
(39, 'Surprise Without Fear', 'Adventure', 1991, 'Samantha Clark', 'Lionel Brownstone', '9.8'),
(40, 'Guests In The Cabin', 'Horror', 1992, 'Stuart Scott', 'Torchwood', '9.8'),
(41, 'Turtles Of Next Year', 'Adventure', 1994, 'Samantha Clark', 'Falstead Group', '6.4'),
(42, 'Helpless In The Shadows', 'Horror', 1995, 'Samantha Clark', 'Bix', '5.4'),
(43, 'Tree Behind The Counter', 'Horror', 1998, 'Miley Watson', 'Bix', '3.2'),
(44, 'Little Girl Of The Sun', 'Children', 2003, 'Julia Robinson', 'Falstead Group', '8.3'),
(45, 'Starting The East', 'Drama', 2003, 'Samantha Clark', 'Studio 60', '6.6'),
(46, 'Thieves Of Eternity', 'Adventure', 2012, 'Thomas Wright', 'Arpeggio Brothers', '3.1'),
(47, 'Little Dragons And Dogs', 'Children', 2012, 'Edward Wells', 'Lionel Brownstone', '5.6'),
(48, 'Clones Of Honor', 'Sci-Fi', 2014, 'Alina Morgan', 'Lionel Brownstone', '6.0'),
(49, 'Cows And Chickens', 'Children', 2017, 'Miley Watson', 'Torchwood', '6.5'),
(50, 'Blinded By The Ashes', 'Adventure', 2020, 'Anna Wilson', 'Lionel Brownstone', '9.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies_basic`
--
ALTER TABLE `movies_basic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies_basic`
--
ALTER TABLE `movies_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
