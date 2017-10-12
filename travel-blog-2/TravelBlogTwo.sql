-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2017 at 05:04 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TravelBlogTwo`
--
CREATE DATABASE IF NOT EXISTS `TravelBlogTwo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `TravelBlogTwo`;

-- --------------------------------------------------------

--
-- Table structure for table `Experiences`
--

CREATE TABLE `Experiences` (
  `ExperienceId` int(11) NOT NULL,
  `Description` longtext,
  `LocationId` int(11) NOT NULL,
  `Title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Experiences`
--

INSERT INTO `Experiences` (`ExperienceId`, `Description`, `LocationId`, `Title`) VALUES
(1, 'Wat Pho temple was amazing. ', 1, 'Wat Pho'),
(2, 'World Champion B-Boy crew member. ', 2, 'B-boy Salon'),
(8, 'The best wineries in regards to price, views, service', 3, 'Top 10 Wineries');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `LocationId` int(11) NOT NULL,
  `LocationCity` longtext,
  `LocationCountry` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`LocationId`, `LocationCity`, `LocationCountry`) VALUES
(1, 'Bangkok', 'Thailand'),
(2, 'Chiang Mai', 'Thailand'),
(3, 'Cape Town', 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20171012014400_Initial', '1.1.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Experiences`
--
ALTER TABLE `Experiences`
  ADD PRIMARY KEY (`ExperienceId`),
  ADD KEY `IX_Experiences_LocationId` (`LocationId`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Experiences`
--
ALTER TABLE `Experiences`
  MODIFY `ExperienceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Experiences`
--
ALTER TABLE `Experiences`
  ADD CONSTRAINT `FK_Experiences_Locations_LocationId` FOREIGN KEY (`LocationId`) REFERENCES `Locations` (`LocationId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
