-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 10:48 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobibank`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `usertype` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `picture` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `username`, `name`, `password`, `email`, `contactno`, `gender`, `usertype`, `address`, `picture`) VALUES
(3, 'sagar11', 'Sagar', '1335', 'sagar@hrmail.com', '11223345', 'Male', 'Employee', 'dhaka', '3.jpg'),
(4, 'shafin110', 'shafin', '1122', 'sas@maol', '11223345', 'Male', 'Employee', 'dhaka', '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `empsalary`
--

CREATE TABLE `empsalary` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `salary` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `empsalary`
--

INSERT INTO `empsalary` (`id`, `username`, `salary`, `date`) VALUES
(1, 'shafin11', '10000', '2020-11-24'),
(2, 'mahin11', '500', '2020-11-24'),
(3, 'sagar111', '10000', '0000-00-00'),
(5, 'sadik00', '10000', '2020-11-25'),
(6, 'sadik00', '500', '2020-11-25'),
(7, 'sadik110', '10000', '2021-01-04'),
(8, 'sadik110', '500', '2021-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `managr`
--

CREATE TABLE `managr` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `usertype` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `picture` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `managr`
--

INSERT INTO `managr` (`id`, `username`, `name`, `password`, `email`, `contactno`, `gender`, `usertype`, `address`, `picture`) VALUES
(1, 'sadat123', 'sadat', '1234', 'sad@mail.com', '1122334455', 'male', 'manager', 'pabna', '2.jpg'),
(2, 'sadik11', 'sadik', '1223', 'sadik@mail.com', '11223345', 'male', 'employee', 'dhaka', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `send` varchar(100) COLLATE utf8_bin NOT NULL,
  `receive` varchar(100) COLLATE utf8_bin NOT NULL,
  `balance` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `send`, `receive`, `balance`, `date`) VALUES
(1, 'Nafiz11', '5000', '', '195000', '2020-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8_bin NOT NULL,
  `Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Password` varchar(100) COLLATE utf8_bin NOT NULL,
  `Email` varchar(100) COLLATE utf8_bin NOT NULL,
  `ContactNo` varchar(100) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `UserType` varchar(100) COLLATE utf8_bin NOT NULL,
  `Address` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Name`, `Password`, `Email`, `ContactNo`, `Gender`, `UserType`, `Address`) VALUES
(1, 'sadat111', 'Sadat', '1234', 'sadat@mail.com', '12345678', 'Male', 'Manager', 'Dhaka'),
(3, 'sagar11', 'sagar', '12345', '', '', '', 'Customer', ''),
(8, 'sadat22', 'Sadat', '12345', '', '', '', 'Employee', ''),
(10, 'pranto11', 'pranto', '12378', '', '', '', 'Employee', ''),
(11, 'moain12', 'Moain', '12340', '', '', '', 'Employee', ''),
(12, 'sadik00', 'Sadaik', '11123', '', '', '', 'Employee', ''),
(13, 'nahid11', 'Nahid', '1234', 'nahid@mail.com', '1234567', 'Male', 'admin', 'Dhaka'),
(14, 'sadik11', 'Sadik', '12345', 'sadik@mail.com', '12345678', 'male', 'Manager', 'Pabna'),
(15, 'zaman23', 'Zaman', '1255', 'zaman@mail.com', '123456789', 'Male', 'Customer', 'Pabna');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `usertype` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `picture` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `email`, `contactno`, `gender`, `usertype`, `address`, `picture`) VALUES
(1, 'sadat123', 'sadat', '1234', 'sad@mail.com', '11223334', 'male', 'manager', 'pabna', '2.jpg'),
(2, 'sadik110', 'Sadaik', '1234', 'sas@maol', '11223345', 'Male', 'employee', 'dhaka', '2.jpg'),
(5, 'mahin11', 'Mahin', '1234', 'ma@mail.com', '11223344', 'male', 'customer', 'Pabna', '2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empsalary`
--
ALTER TABLE `empsalary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managr`
--
ALTER TABLE `managr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empsalary`
--
ALTER TABLE `empsalary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `managr`
--
ALTER TABLE `managr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
