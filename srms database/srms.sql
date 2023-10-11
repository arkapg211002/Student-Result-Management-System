-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 04:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-01 10:30:57'),
(2, 'teacher', '81dc9bdb52d04dc20036dbd8313ed055', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(10, 'First Year', 1, 'A', '2023-10-10 15:39:14', NULL),
(11, 'Second Year', 2, 'A', '2023-10-10 15:39:40', NULL),
(12, 'First Year', 1, 'B', '2023-10-10 15:39:53', NULL),
(13, 'Second Year', 2, 'B', '2023-10-10 15:40:12', NULL),
(14, 'Third Year', 3, 'A', '2023-10-10 15:40:26', NULL),
(15, 'Third Year', 3, 'B', '2023-10-10 15:40:36', NULL),
(16, 'Fourth Year', 4, 'A', '2023-10-10 15:41:13', NULL),
(17, 'Fourth Year', 4, 'B', '2023-10-10 15:41:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(34, 10, 10, 12, 90, '2023-10-10 16:00:47', NULL),
(35, 10, 10, 11, 90, '2023-10-10 16:00:47', NULL),
(36, 9, 13, 14, 95, '2023-10-10 16:01:10', NULL),
(37, 9, 13, 13, 94, '2023-10-10 16:01:10', NULL),
(38, 9, 13, 15, 100, '2023-10-10 16:01:10', NULL),
(39, 8, 14, 18, 94, '2023-10-10 16:01:30', NULL),
(40, 8, 14, 19, 90, '2023-10-10 16:01:30', NULL),
(41, 8, 14, 17, 92, '2023-10-10 16:01:30', NULL),
(42, 8, 14, 16, 94, '2023-10-10 16:01:30', NULL),
(43, 11, 16, 21, 96, '2023-10-10 16:03:42', NULL),
(44, 11, 16, 20, 89, '2023-10-10 16:03:42', NULL),
(45, 12, 17, 21, 90, '2023-10-10 16:03:55', NULL),
(46, 12, 17, 20, 93, '2023-10-10 16:03:55', NULL),
(47, 14, 14, 18, 89, '2023-10-11 05:48:57', NULL),
(48, 14, 14, 22, 70, '2023-10-11 05:48:57', NULL),
(49, 14, 14, 19, 89, '2023-10-11 05:48:57', NULL),
(50, 14, 14, 17, 92, '2023-10-11 05:48:57', NULL),
(51, 14, 14, 16, 99, '2023-10-11 05:48:57', NULL),
(52, 13, 14, 18, 99, '2023-10-11 05:49:55', NULL),
(53, 13, 14, 22, 78, '2023-10-11 05:49:55', NULL),
(54, 13, 14, 19, 89, '2023-10-11 05:49:55', NULL),
(55, 13, 14, 17, 98, '2023-10-11 05:49:55', NULL),
(56, 13, 14, 16, 88, '2023-10-11 05:49:55', NULL),
(57, 15, 14, 18, 96, '2023-10-11 05:52:48', NULL),
(58, 15, 14, 22, 95, '2023-10-11 05:52:48', NULL),
(59, 15, 14, 19, 93, '2023-10-11 05:52:48', NULL),
(60, 15, 14, 17, 92, '2023-10-11 05:52:48', NULL),
(61, 15, 14, 16, 91, '2023-10-11 05:52:48', NULL),
(62, 16, 13, 14, 89, '2023-10-11 06:32:25', NULL),
(63, 16, 13, 13, 98, '2023-10-11 06:32:25', NULL),
(64, 16, 13, 15, 90, '2023-10-11 06:32:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(9, 'Arighna Jana', '13000121012', 'arif1402786@gmail.com', 'Male', '2003-06-11', 13, '2023-10-10 15:58:34', NULL, 1),
(10, 'SOUMYADEEPNANDY', '13000121033', 'soumyadnandy@gmail.com', 'Male', '2023-10-10', 10, '2023-10-10 15:59:25', NULL, 1),
(11, 'SAGNIK MUKHOPADHYAY', '13000121040', 'm.sagnik.2003@gmail.com', 'Male', '2013-06-05', 16, '2023-10-10 15:59:53', NULL, 1),
(12, 'PRITHWISHSARKAR', '13000121033', 'pritz1824@gmail.com', 'Male', '2008-01-01', 17, '2023-10-10 16:00:24', NULL, 1),
(13, 'ANUVAB CHAKRAVARTY', '13000121036', 'anucbs2018@gmail.com', 'Male', '2023-10-11', 14, '2023-10-11 05:47:35', NULL, 1),
(14, 'Ameyo Das', '13000121078', 'ameyod@gmail.com', 'Male', '2019-12-31', 14, '2023-10-11 05:48:11', NULL, 1),
(15, 'Arkapratim Ghosh', '13000121058', 'arkapratimghosh1264@gmail.com', 'Male', '2002-10-21', 14, '2023-10-11 05:52:16', NULL, 1),
(16, 'Debarghya Chakraborty', '13000121083', 'acdc@gmail.com', 'Male', '2023-10-11', 13, '2023-10-11 06:31:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL),
(32, 10, 11, 1, '2023-10-10 15:48:13', NULL),
(33, 10, 12, 1, '2023-10-10 15:48:20', NULL),
(34, 12, 11, 1, '2023-10-10 15:48:26', NULL),
(35, 11, 12, 0, '2023-10-10 15:48:32', '2023-10-10 15:50:43'),
(36, 11, 13, 1, '2023-10-10 15:50:03', NULL),
(37, 13, 13, 1, '2023-10-10 15:50:11', NULL),
(38, 11, 14, 1, '2023-10-10 15:50:16', NULL),
(39, 13, 14, 1, '2023-10-10 15:50:22', NULL),
(40, 12, 12, 1, '2023-10-10 15:50:57', NULL),
(41, 11, 15, 1, '2023-10-10 15:52:38', NULL),
(42, 13, 15, 1, '2023-10-10 15:52:43', NULL),
(43, 14, 16, 1, '2023-10-10 15:54:17', NULL),
(44, 14, 17, 1, '2023-10-10 15:54:22', NULL),
(45, 14, 18, 1, '2023-10-10 15:54:28', NULL),
(46, 14, 19, 1, '2023-10-10 15:54:32', NULL),
(47, 15, 16, 1, '2023-10-10 15:54:39', NULL),
(48, 15, 17, 1, '2023-10-10 15:54:43', NULL),
(49, 15, 18, 1, '2023-10-10 15:54:47', NULL),
(50, 15, 19, 1, '2023-10-10 15:54:52', NULL),
(51, 14, 16, 0, '2023-10-10 15:56:16', '2023-10-10 15:56:35'),
(52, 16, 20, 1, '2023-10-10 16:02:59', NULL),
(53, 16, 21, 1, '2023-10-10 16:03:03', NULL),
(54, 17, 20, 1, '2023-10-10 16:03:07', NULL),
(55, 17, 21, 1, '2023-10-10 16:03:10', NULL),
(56, 14, 22, 1, '2023-10-11 05:46:59', NULL),
(57, 15, 22, 1, '2023-10-11 05:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(11, 'Physics', 'BSPH101', '2023-10-10 15:47:42', NULL),
(12, 'Mathematics ', 'BSM101', '2023-10-10 15:47:59', NULL),
(13, 'Data Structures and Algorithms', 'PCC-CS301', '2023-10-10 15:49:29', NULL),
(14, 'Computer Organization', 'PCC-CS302', '2023-10-10 15:49:53', NULL),
(15, 'Discrete Mathematics', 'PCC-CS401', '2023-10-10 15:52:31', NULL),
(16, 'Software Engineering', 'ESC-501', '2023-10-10 15:53:10', NULL),
(17, 'Operating Systems', 'PCC-CS502', '2023-10-10 15:53:27', NULL),
(18, 'Compiler Design', 'PCC-CS501', '2023-10-10 15:53:41', NULL),
(19, 'Object Oriented Programming', 'PCC-CS503', '2023-10-10 15:53:57', NULL),
(20, 'Machine Learning', 'ML-2023', '2023-10-10 16:02:41', NULL),
(21, 'Deep Learning', 'DL-2023', '2023-10-10 16:02:52', NULL),
(22, 'Digital Electronics', 'PCC-CS303', '2023-10-11 05:46:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'teacher', 'teacher', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
