-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 02:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wbts_admin`
--

CREATE TABLE `wbts_admin` (
  `adminID` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wbts_admin`
--

INSERT INTO `wbts_admin` (`adminID`, `email`, `name`, `password`) VALUES
(1, 'johndavid@gmail.com', 'John David', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `wbts_booths`
--

CREATE TABLE `wbts_booths` (
  `boothID` int(11) NOT NULL,
  `boothName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wbts_scores`
--

CREATE TABLE `wbts_scores` (
  `scoreID` int(50) NOT NULL,
  `userID` int(50) NOT NULL,
  `boothID` int(50) NOT NULL,
  `boothName` varchar(255) NOT NULL,
  `scoreValue` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wbts_users`
--

CREATE TABLE `wbts_users` (
  `userID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wbts_users`
--

INSERT INTO `wbts_users` (`userID`, `email`, `password`, `name`) VALUES
(1, 'van345@gmail.com', '123', 'van');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wbts_admin`
--
ALTER TABLE `wbts_admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `wbts_booths`
--
ALTER TABLE `wbts_booths`
  ADD PRIMARY KEY (`boothID`);

--
-- Indexes for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  ADD PRIMARY KEY (`scoreID`),
  ADD KEY `boothID` (`boothID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `wbts_users`
--
ALTER TABLE `wbts_users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wbts_admin`
--
ALTER TABLE `wbts_admin`
  MODIFY `adminID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wbts_booths`
--
ALTER TABLE `wbts_booths`
  MODIFY `boothID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  MODIFY `scoreID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wbts_users`
--
ALTER TABLE `wbts_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  ADD CONSTRAINT `wbts_scores_ibfk_1` FOREIGN KEY (`boothID`) REFERENCES `wbts_booths` (`boothID`),
  ADD CONSTRAINT `wbts_scores_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `wbts_users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
