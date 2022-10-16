-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 08:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res-q`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(3, 'AB.H1', 'qwe@123'),
(4, 'Achieee', '112345'),
(5, 'SRC', '1729');

-- --------------------------------------------------------

--
-- Table structure for table `bb`
--

CREATE TABLE `bb` (
  `Sl No.` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bb`
--

INSERT INTO `bb` (`Sl No.`, `name`, `user_id`, `user_name`, `password`, `Date`) VALUES
(18, 'BossP', 4240950411155523, 'lol', '123456', '2022-10-14 20:37:23'),
(19, 'Huss', 6500821, 'ain', '123456', '2022-10-14 20:38:52'),
(20, 'pall', 9223372036854775807, 'pal', '123456', '2022-10-14 20:39:23'),
(21, 'ocd', 596919834417352210, 'ocd', '123456', '2022-10-14 20:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `A+` varchar(100) NOT NULL,
  `B+` varchar(100) NOT NULL,
  `O+` varchar(100) NOT NULL,
  `AB+` varchar(100) NOT NULL,
  `A-` varchar(100) NOT NULL,
  `B-` varchar(100) NOT NULL,
  `O-` varchar(100) NOT NULL,
  `AB-` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `Longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`user_id`, `name`, `A+`, `B+`, `O+`, `AB+`, `A-`, `B-`, `O-`, `AB-`, `location`, `Latitude`, `Longitude`) VALUES
(6500821, 'Huss', 'Availabe', 'Unavailable', 'Availabe', 'Availabe', 'Availabe', 'Availabe', 'Unavailable', 'Unavailable', '22.510063, 88.409356', '22.510063', '88.409356'),
(4240950411155523, 'BossP', 'Availabe', 'Availabe', 'Availabe', 'Unavailable', 'Availabe', 'Unavailable', 'Availabe', 'Availabe', '22.523581, 88.384422', '22.523581', '88.384422'),
(596919834417352210, 'ocd', 'Unavailable', 'Unavailable', 'Availabe', 'Availabe', 'Availabe', 'Availabe', 'Availabe', 'Availabe', '22.527545, 88.435234', '22.527545', '88.435234'),
(9223372036854775807, 'pall', 'Availabe', 'Availabe', 'Availabe', 'Availabe', 'Unavailable', 'Unavailable', 'Unavailable', 'Unavailable', '22.502649, 88.391546', '22.502649', '88.391546');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `bb`
--
ALTER TABLE `bb`
  ADD PRIMARY KEY (`Sl No.`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Date` (`Date`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `Ap` (`A+`),
  ADD KEY `Bp` (`B+`),
  ADD KEY `Op` (`O+`),
  ADD KEY `ABp` (`AB+`,`A-`,`B-`,`O-`,`AB-`),
  ADD KEY `location` (`location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bb`
--
ALTER TABLE `bb`
  MODIFY `Sl No.` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
