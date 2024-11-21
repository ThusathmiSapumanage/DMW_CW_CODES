-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 21, 2024 at 09:04 AM
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
-- Database: `dmw_cw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(10) NOT NULL,
  `AName` varchar(30) NOT NULL,
  `AAddress` varchar(50) NOT NULL,
  `AEmail` varchar(20) NOT NULL,
  `APhoneNum` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `AName`, `AAddress`, `AEmail`, `APhoneNum`, `Password`) VALUES
(1, 'Harindu', 'Gampaha', 'hv@gmail.com', 33212344, '123'),
(3, 'Uvindu', 'Ragama', 'usl@gmail.com', 123123, '124'),
(4, 'Thusathmi', 'Colombo 09', 'tvs@gmail.com', 7125342, 'T1234');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamID` int(10) NOT NULL,
  `ExamName` varchar(30) NOT NULL,
  `ExamDate` date NOT NULL,
  `ExamTime` time NOT NULL,
  `MID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ExamID`, `ExamName`, `ExamDate`, `ExamTime`, `MID`) VALUES
(10, 'DMW', '2024-11-22', '06:07:00', 0),
(11, 'CN', '2024-11-28', '11:06:00', 0),
(12, 'ICS', '2024-11-22', '14:00:00', 0),
(13, 'OOP', '2024-11-18', '00:11:00', 0),
(14, 'DMarketing', '2024-11-30', '11:20:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE `gpa` (
  `GpaId` int(11) NOT NULL,
  `SName` varchar(50) NOT NULL,
  `Gpa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpa`
--

INSERT INTO `gpa` (`GpaId`, `SName`, `Gpa`) VALUES
(1, 'Thusathmi', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LID` int(10) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `LPhoneNum` int(10) NOT NULL,
  `LEmail` varchar(20) NOT NULL,
  `LAddress` varchar(30) NOT NULL,
  `AdminID` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LID`, `LName`, `LPhoneNum`, `LEmail`, `LAddress`, `AdminID`, `Password`) VALUES
(1, 'lecture 1', 1123456789, 'abs@gmail.com', 'ragama', 0, '123'),
(3, 'gayan sam', 73473874, 'g@gmail.com', 'jhdfjdhf', 0, 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `marksandgrade`
--

CREATE TABLE `marksandgrade` (
  `ExamID` int(10) NOT NULL,
  `SName` varchar(50) NOT NULL,
  `Module` varchar(50) NOT NULL,
  `Marks` int(3) NOT NULL,
  `Grade` varchar(3) NOT NULL,
  `Points` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marksandgrade`
--

INSERT INTO `marksandgrade` (`ExamID`, `SName`, `Module`, `Marks`, `Grade`, `Points`) VALUES
(1, 'Thusathmi', 'DMW', 99, 'A+', 4.00),
(2, 'Thusathmi', 'CN', 100, 'A+', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `MID` int(10) NOT NULL,
  `MDiscription` varchar(100) NOT NULL,
  `MName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`MID`, `MDiscription`, `MName`) VALUES
(1, 'developing Mordern Web', 'DMW'),
(2, 'Object oriented programing', 'OOP'),
(3, 'Computer network', 'CN'),
(4, 'Introduction to computer science', 'ICS');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(10) NOT NULL,
  `SName` varchar(30) NOT NULL,
  `SAge` int(11) NOT NULL,
  `SAddress` varchar(50) NOT NULL,
  `SEmail` varchar(20) NOT NULL,
  `SContact` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SName`, `SAge`, `SAddress`, `SEmail`, `SContact`, `Password`) VALUES
(1, 'Thusathmi', 18, 'ragama', 'Thusath@g.gmail', 987654321, '123'),
(2, 'dinidu', 23, 'gampaha', 'Dini@gmail.asd', 1241434353, '123'),
(3, 'harindu', 24, 'asdasd', 'harindu@g.mal', 98765123, '123'),
(4, 'ranuki', 56, 'ragama', 'hasda@g.hasd', 987654321, '123'),
(5, 'uvindu', 34, 'gampha', 'uvindusankalpa2021@g', 987654321, '123'),
(7, 'usha nira', 78, 'matara', 'u@gmail.com', 3747343, 'admin@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ExamID`);

--
-- Indexes for table `gpa`
--
ALTER TABLE `gpa`
  ADD PRIMARY KEY (`GpaId`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `marksandgrade`
--
ALTER TABLE `marksandgrade`
  ADD UNIQUE KEY `ExamID` (`ExamID`,`SName`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `ExamID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gpa`
--
ALTER TABLE `gpa`
  MODIFY `GpaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `LID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marksandgrade`
--
ALTER TABLE `marksandgrade`
  MODIFY `ExamID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `MID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `SID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
