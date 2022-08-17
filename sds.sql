-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 04:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sds`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin123@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `id` int(5) NOT NULL,
  `uid` int(5) NOT NULL,
  `doc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`id`, `uid`, `doc`) VALUES
(4, 12, 'SHASHANK CV.pdf'),
(5, 12, 'shashankdshetty.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `pid` int(11) NOT NULL,
  `uid` int(5) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(15) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `image` varchar(300) NOT NULL,
  `col1` varchar(50) NOT NULL,
  `course1` varchar(50) NOT NULL,
  `year1` date NOT NULL,
  `per1` int(3) NOT NULL,
  `col2` varchar(50) NOT NULL,
  `course2` varchar(50) NOT NULL,
  `year2` date NOT NULL,
  `per2` int(3) NOT NULL,
  `exp1` varchar(500) NOT NULL,
  `exp2` varchar(500) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `lang` varchar(500) NOT NULL,
  `ac` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`pid`, `uid`, `fname`, `mname`, `lname`, `email`, `dob`, `phone`, `addr`, `image`, `col1`, `course1`, `year1`, `per1`, `col2`, `course2`, `year2`, `per2`, `exp1`, `exp2`, `skill`, `lang`, `ac`) VALUES
(18, 12, 'Shashank', 'd', 'shetty', 'shashankdshetty17@gmail.com', '2000-06-20', '+919497446118', 'Sri sai nilaya .shanthinagar.kuloor charla po ...manjeshar', '184762.jpg', 'st aloysius college mangalore', 'BCA', '2018-06-12', 84, 'NMAMIT nitte', 'MCA', '2023-08-08', 90, '2 years worked in a startup. Done 2 internship during postgraduation', '', 'JAVA,Python,Javascript,Php,mysql,Bootstrap.', 'English,Hindi,Kannada,Malayalam,Tulu', 'completed course in cybercecurity.'),
(21, 12, 'Shashank', 'D', 'shetty', 'shashankdshetty17@gmail.com', '2022-08-17', '+919497446118', 'Sri sai nilaya .shanthinagar.kuloor charla po ...manjeshar', 'IMG_0020.jpg', 'wer', 'ert', '1999-12-30', 3, '', '', '0000-00-00', 0, '23', '', '34', '45', '345'),
(23, 16, 'Crisin', 'Babu', 'shetty', 'cristin123@gmail.com', '2022-08-17', '8848588312', 'Sri sai nilaya .shanthinagar.kuloor charla po ...manjeshar', '16605694225655240755365702304529.jpg', 'Nitte', 'sss', '2022-08-15', 20, '', '', '0000-00-00', 0, 'Hsjsksks', '', 'Hsjsiks', 'Hsjsksk', 'Hsjsiwk');

-- --------------------------------------------------------

--
-- Table structure for table `qr`
--

CREATE TABLE `qr` (
  `qid` int(11) NOT NULL,
  `type` int(2) NOT NULL,
  `qr` varchar(250) NOT NULL,
  `uid` int(5) NOT NULL,
  `sid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qr`
--

INSERT INTO `qr` (`qid`, `type`, `qr`, `uid`, `sid`) VALUES
(6, 1, '../admin/assets/qrimg/qrimg162f950fd94a79.png', 12, 18),
(7, 1, '../admin/assets/qrimg/qrimg162f9552cd12c9.png', 12, 21),
(8, 2, '../admin/assets/qrimg/qrimg162f95628dd629.png', 12, 4),
(9, 2, '../admin/assets/qrimg/qrimg162f956d325b05.png', 12, 5),
(10, 1, '../admin/assets/qrimg/qrimg162fa477cf2f1b.png', 16, 23);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`uid`, `fname`, `lname`, `email`, `password`) VALUES
(12, 'Shashank d', 'shetty', 'shashankdshetty17@gmail.com', '12345'),
(15, 'Shravya', 'Acharya', 'shravya@gmail.com', '12345'),
(16, 'Cristin', 'Babu', 'cristin123@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `qr`
--
ALTER TABLE `qr`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
