-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 11:31 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opensesamedatabase1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contestanttable`
--

CREATE TABLE `contestanttable` (
  `RegistationId` int(11) NOT NULL,
  `DcodId` varchar(20) NOT NULL,
  `ContestantName` varchar(30) NOT NULL,
  `CollegeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `FeedbackNo` int(11) NOT NULL,
  `DcodId` varchar(30) NOT NULL,
  `QuestionFeedback` varchar(400) NOT NULL,
  `InterfaceFeedback` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE `logintable` (
  `LoginId` int(11) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`LoginId`, `Password`, `UserType`) VALUES
(1, 'cetmca', 'contestant'),
(2, 'cet123mca', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `questiontable`
--

CREATE TABLE `questiontable` (
  `QuestionNo` int(11) NOT NULL,
  `Question` varchar(50) NOT NULL,
  `Answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questiontable`
--

INSERT INTO `questiontable` (`QuestionNo`, `Question`, `Answer`) VALUES
(1, 'images/set1/Question1.jpg', 'PASSION'),
(2, 'images/set1/Question2.jpg', '87'),
(3, 'images/set1/Question3.jpg', 'T'),
(4, 'images/set1/Question4.jpg', 'SPLIT PERSONALITY'),
(5, 'images/set1/Question5.jpg', 'JUNE'),
(6, 'images/set1/Question6.jpg', 'E'),
(7, 'images/set1/Question7.jpg', '042'),
(8, 'images/set1/Question8.jpg', 'PASSWORD'),
(9, 'images/set1/Question9.jpg', '312211'),
(10, 'images/set1/Question10.jpg', '366329');

-- --------------------------------------------------------

--
-- Table structure for table `scoretable`
--

CREATE TABLE `scoretable` (
  `Id` int(11) NOT NULL,
  `DcodId` varchar(20) NOT NULL,
  `ContestantName` varchar(50) NOT NULL,
  `Level1` int(11) DEFAULT '0',
  `Level2` int(11) DEFAULT '0',
  `Level3` int(11) DEFAULT '0',
  `Level4` int(11) DEFAULT '0',
  `Level5` int(11) DEFAULT '0',
  `Level6` int(11) DEFAULT '0',
  `Level7` int(11) DEFAULT '0',
  `Level8` int(11) DEFAULT '0',
  `Level9` int(11) NOT NULL DEFAULT '0',
  `Level10` int(11) NOT NULL DEFAULT '0',
  `Total` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contestanttable`
--
ALTER TABLE `contestanttable`
  ADD PRIMARY KEY (`RegistationId`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`FeedbackNo`);

--
-- Indexes for table `logintable`
--
ALTER TABLE `logintable`
  ADD PRIMARY KEY (`LoginId`);

--
-- Indexes for table `questiontable`
--
ALTER TABLE `questiontable`
  ADD PRIMARY KEY (`QuestionNo`);

--
-- Indexes for table `scoretable`
--
ALTER TABLE `scoretable`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contestanttable`
--
ALTER TABLE `contestanttable`
  MODIFY `RegistationId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `FeedbackNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logintable`
--
ALTER TABLE `logintable`
  MODIFY `LoginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questiontable`
--
ALTER TABLE `questiontable`
  MODIFY `QuestionNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `scoretable`
--
ALTER TABLE `scoretable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
