-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 07:04 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Kishore Gandham', 'kishoregandham001@gmail.com', 'Kishore001', '97434601ed1e7006027cd0d70cf74df6', '2018-03-11 11:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Pankaj Jallote', '2018-03-20 04:15:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 1, 1, 1, 200, '2017-07-08 20:04:55', '2018-03-11 11:56:31'),
(2, 'c programing', 2, 2, 2, 150, '2017-07-08 20:17:31', '2018-03-11 11:56:31'),
(3, 'Business Management', 4, 2, 3, 450, '2018-03-20 00:27:08', NULL),
(4, 'Software Engineering', 3, 3, 4, 299, '2018-03-20 04:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Programing', 1, '2017-07-04 18:35:25', '2018-03-20 00:10:41'),
(2, 'Technology', 1, '2017-07-04 18:35:39', '2018-03-11 11:53:29'),
(3, 'Science', 1, '2017-07-04 18:35:55', '2018-03-11 11:53:29'),
(4, 'Management', 1, '2017-07-04 18:36:16', '2018-03-11 11:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID015', '2018-03-13 07:36:18', '2018-03-15 04:35:42', 1, 0),
(2, 1, 'SID025', '2018-03-16 06:04:34', NULL, 0, NULL),
(3, 2, 'SID012', '2018-03-18 15:05:38', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'Kishore Gandham', 'kishoregandham001@gmail.com', '6677889900', '97434601ed1e7006027cd0d70cf74df6', 1, '2018-03-11 09:56:43', '2018-03-17 06:14:15'),
(12, 'SID013', 'Chandra Skhar T', 'chandugadulocal601@gmail.com', '9603102841', '3226581051d0d2b31d367675add88990', 1, '2018-03-11 10:19:31', '2018-03-11 10:28:19'),
(13, 'SID014', 'Sai Sankeerth', 'saisankeerth1998@gmail.com', '8309566154', '3226581051d0d2b31d367675add88990', 1, '2018-03-05 22:55:13', '2018-03-11 11:12:50'),
(15, 'SID015', 'Vinay Kumar T', 'vinaykmr.thota@gmail.com', '8801730384', 'acd84050d92b190b401f0e92264a700a', 1, '2018-03-13 07:33:27', NULL),
(18, 'SID016', 'Kusuma P', 'pinnintikusuma96@gmail.com', '9985726081', 'd8cb36bdfa73bdf107935e1198e036d7', 1, '2018-03-15 04:22:48', NULL),
(19, 'SID017', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 04:47:26', NULL),
(20, 'SID018', 'Lakshmanarao Karaka', 'lakshmanaraokaraka@gmail.com', '9989102976', '8b4365aa47715026713fd80d4642e0a3', 1, '2018-03-16 04:49:32', NULL),
(21, 'SID019', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:43:25', NULL),
(22, 'SID020', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:43:31', NULL),
(23, 'SID021', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:43:44', NULL),
(24, 'SID022', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:45:01', NULL),
(25, 'SID023', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:55:50', NULL),
(26, 'SID024', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 05:55:56', NULL),
(27, 'SID025', 'Siva Dokkari', 'sivadokkari1369@gmail.com', '8106573693', '6f81ce8b12015fd9900ce0a3efeba6d9', 1, '2018-03-16 05:57:05', NULL),
(28, 'SID026', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 06:07:33', NULL),
(29, 'SID027', 'Mohanteja Chitturi', 'mohantejachitturi1@gmail.com', '8309216336', '45e77cdab05fb24d0f9be9bde162c5e1', 1, '2018-03-16 06:11:45', NULL),
(30, 'SID028', 'Mohanteja Chitturi', 'mohantejachitturi1@gmail.com', '8309216336', '45e77cdab05fb24d0f9be9bde162c5e1', 1, '2018-03-16 06:12:15', NULL),
(31, 'SID029', 'borra vinay', 'vinnu.vinay189@gmail.com', '9063262200', '44a8008afefd381846da23ad8e5190c5', 1, '2018-03-16 06:13:54', NULL),
(32, 'SID030', 'borra vinay', 'vinnu.vinay189@gmail.com', '9063262200', '44a8008afefd381846da23ad8e5190c5', 1, '2018-03-16 06:15:39', NULL),
(33, 'SID031', 'Kishore Gandham', 'gkishore.15.cse@anits.edu.in', '9989102976', '97434601ed1e7006027cd0d70cf74df6', 1, '2018-03-16 06:17:12', NULL),
(34, 'SID032', 'Kishore Gandham', 'gkishore.15.cse@anits.edu.in', '9989102976', '97434601ed1e7006027cd0d70cf74df6', 1, '2018-03-16 06:18:50', NULL),
(35, 'SID033', 'Gopi Gandham', 'gopigandham1998@gmail.com', '7799459458', '69df4a0789e2af8b7c8876a0b2cf698e', 1, '2018-03-16 06:20:21', NULL),
(36, 'SID034', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-16 06:23:07', NULL),
(37, 'SID035', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, '2018-03-17 16:17:29', NULL),
(38, 'SID036', 'test', 'test@gmail.com', '11223344', 'dfdd128c9f6bafe140586dcafb292329', 1, '2018-03-18 05:59:13', NULL),
(39, 'SID037', 'j.bhargavi', 'jbhargavi.15.cse@anits.edu.in', '9121537702', '48a4d4064afc1fe4625bec30a94ccf41', 1, '2018-03-19 04:50:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
