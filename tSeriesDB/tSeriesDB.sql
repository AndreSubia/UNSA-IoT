-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 17, 2021 at 08:18 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tSeriesDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ruleTable`
--

CREATE TABLE `ruleTable` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL DEFAULT '\0',
  `topicPattern` varchar(1024) NOT NULL,
  `payloadPattern` varchar(2048) NOT NULL,
  `method` varchar(7) NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruleTable`
--

INSERT INTO `ruleTable` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 0x01, 'timestamp%', '%', 'POST', 'www.in24hrs.xyz:1880/modifiedTime/rule-engine-works');

-- --------------------------------------------------------

--
-- Table structure for table `thingData`
--

CREATE TABLE `thingData` (
  `id` int(11) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ruleTable`
--
ALTER TABLE `ruleTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thingData`
--
ALTER TABLE `thingData`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ruleTable`
--
ALTER TABLE `ruleTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thingData`
--
ALTER TABLE `thingData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
