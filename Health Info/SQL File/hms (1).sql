-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 06:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(6, 'Dentist', 12, 9, 100, '2021-12-28', '10:00 PM', '2021-12-27 15:52:02', 1, 1, NULL),
(7, 'General Physician', 10, 9, 500, '2021-12-28', '10:00 PM', '2021-12-27 15:55:10', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `holpitalName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `holpitalName`) VALUES
(10, 'General Physician', 'Dr.Rafiqul Islam', 'Chittagong', '500Tk', 1500000000, 'rk@gmail.com', '8afe736e674506c7d45f3c9ddd6cfa9d', 'CMC'),
(11, 'Dermatologist', 'Dr.Nafis', 'Dhaka', '500', 32342342, 'nf@gmail.com', 'n123456', 'United Hospital'),
(12, 'Dentist', 'Dr.Mirza', 'Murshidabad', '100Tk', 134555, 'm@gmail.com', 'm123456', 'Chittagong General Hospital'),
(13, 'Test', 'Dr.Riyaz', 'Chittagong', '100tk', 123123, 'r@gmail.com', 's123456', 'Evercare'),
(14, 'Dentist', 'Dr.Rabbi', 'Chittagong', '500tk', 12312, 'ra@gmail.com', 'ra23456', 'DMC'),
(15, '  Gynecologist/Obstetrician', 'Dr.Arup Ratan', 'Jamalkhan', '200', 34234242, 'ar@gmail.com', 'bc4d3eb54537c5c3f736d8f9e0fddf6a', 'General Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(21, NULL, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 13:05:40', NULL, 0),
(22, NULL, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 13:06:10', NULL, 0),
(23, NULL, 'nf@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 13:08:09', NULL, 0),
(24, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 13:09:26', NULL, 1),
(25, NULL, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:53:16', NULL, 0),
(26, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:54:11', NULL, 1),
(27, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:55:26', NULL, 1),
(28, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:17:33', NULL, 1),
(29, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:29:11', NULL, 1),
(30, 10, 'rk@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:39:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `total_bed` int(11) NOT NULL,
  `exist_bed` int(11) NOT NULL,
  `exist_covid_bed` int(11) NOT NULL,
  `ICU_exist` int(11) NOT NULL,
  `Location` varchar(40) NOT NULL,
  `Contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `Name`, `total_bed`, `exist_bed`, `exist_covid_bed`, `ICU_exist`, `Location`, `Contact`) VALUES
(1, 'Chittagong Ma o Shishu Hospital', 150, 70, 40, 10, 'Agrabed,Chittagong', 267812287),
(2, 'Chittagong Medical', 1000, 500, 150, 3, 'Chittagong', 12121),
(3, 'Primeview ', 200, 100, 30, 6, 'Chittagong', 41434323),
(4, 'Evergreen', 300, 250, 30, 9, 'Chittagong', 124141),
(5, 'United Hospital', 550, 400, 250, 16, 'Chittagong', 2412412);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(4, 'Arup', 'arup@gmail.com', 1765137555, ' How are You?', '2021-12-27 16:14:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(8, 6, '120/80', 'null', '67', '103', 'Napa', '2021-12-27 16:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(6, 10, 'Rafiqul', 902834, 'r@gmail.com', 'male', 'IIUC', 21, 'Fever', '2021-12-27 16:19:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'Rahat', 0x3a3a3100000000000000000000000000, '2021-12-24 15:35:07', NULL, 0),
(25, NULL, 'Rafiqul', 0x3a3a3100000000000000000000000000, '2021-12-24 15:37:11', NULL, 0),
(26, NULL, 'Rafiqul', 0x3a3a3100000000000000000000000000, '2021-12-24 15:38:00', NULL, 0),
(27, NULL, 'Rafiqul', 0x3a3a3100000000000000000000000000, '2021-12-24 15:38:46', NULL, 0),
(28, NULL, 'Rafiqul', 0x3a3a3100000000000000000000000000, '2021-12-24 15:39:06', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-24 15:48:51', NULL, 1),
(30, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-24 16:01:59', NULL, 1),
(31, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-26 12:50:08', NULL, 1),
(32, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-26 13:09:04', NULL, 1),
(33, NULL, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 12:45:32', NULL, 0),
(34, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 12:45:41', NULL, 1),
(35, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 12:52:35', NULL, 1),
(36, NULL, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:49:58', NULL, 0),
(37, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:51:31', NULL, 1),
(38, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 15:54:55', NULL, 1),
(39, NULL, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:30:07', NULL, 0),
(40, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:31:15', NULL, 1),
(41, 9, 'rafiqul@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-27 16:38:57', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Rahat', 'Chittagong', 'Chittagong', 'male', 'rahat@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-12-24 15:32:42', NULL),
(9, 'Rafiqul', 'Chittagong', 'Chittagong', 'male', 'rafiqul@gmail.com', '158a46e11d40271f1ddc25e415f72c8b', '2021-12-24 15:36:16', '2021-12-27 16:31:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
