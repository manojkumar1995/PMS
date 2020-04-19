-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2020 at 03:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `employee_id` varchar(80) NOT NULL,
  `department` varchar(80) NOT NULL,
  `designation` varchar(80) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Employee_accounts`
--

CREATE TABLE `Employee_accounts` (
  `no` int(11) NOT NULL,
  `employee_id` varchar(80) NOT NULL,
  `role` varchar(20) NOT NULL,
  `bank_acc_no` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `pf_acc_no` int(11) NOT NULL,
  `bank_type` varchar(20) NOT NULL,
  `emp_share` int(11) NOT NULL,
  `org_share` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employee_accounts`
--

INSERT INTO `Employee_accounts` (`no`, `employee_id`, `role`, `bank_acc_no`, `bank_name`, `pf_acc_no`, `bank_type`, `emp_share`, `org_share`, `ts`) VALUES
(1, '14-720-8513', 'Employee', 2141262416, 'Bank of America', 226335945, 'Savings', 2, 2, '2020-04-19 12:10:45'),
(2, '22-028-9805', 'Employee', 95943680, 'Bank of America', 42721408, 'Savings', 2, 2, '2020-04-19 12:10:45'),
(3, '70-402-7957', 'Employee', 65878573, 'Bank of America', 31244556, 'Savings', 2, 2, '2020-04-19 12:10:45'),
(4, '83-245-2269', 'Employee', 24415361, 'Bank of America', 50074976, 'Savings', 2, 2, '2020-04-19 12:10:45'),
(5, '92-482-9472', 'Employee', 18093306, 'Bank of America', 19448786, 'Savings', 2, 2, '2020-04-19 12:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Information`
--

CREATE TABLE `Employee_Information` (
  `employee_id` varchar(80) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `department` varchar(120) NOT NULL,
  `experience` int(10) NOT NULL,
  `salary` int(11) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employee_Information`
--

INSERT INTO `Employee_Information` (`employee_id`, `first_name`, `last_name`, `gender`, `department`, `experience`, `salary`, `age`, `address`, `email`, `mobile`, `country`, `ts`) VALUES
('14-720-8513', 'Whitby', 'Duplan', 'Male', 'Engineering', 8, 19014, 46, '80955 Green Way', 'wduplan1@digg.com', '06-415-6276', 'Slovenia', '2020-04-12 13:20:49'),
('22-028-9805', 'Zonnya', 'Palomba', 'Female', 'Marketing', 4, 10403, 29, '43 Sunfield Junction', 'zpalomba2@fotki.com', '476-788-5344', 'Colombia', '2020-04-12 13:23:20'),
('70-402-7957', 'Cordula', 'Postance', 'Female', 'Product Management', 5, 11880, 29, '9967 Lyons Way', 'cpostance4@aboutads.info', '575-140-3617', 'Canada', '2020-04-12 13:29:49'),
('83-245-2269', 'Lindy', 'Morriarty', 'Female', 'Engineering', 3, 17487, 41, '241 Kennedy Alley', 'lmorriarty3@shareasale.com', '619-841-8596', 'Canada', '2020-04-12 13:26:26'),
('92-482-9472', 'Ryley', 'Santoro', 'Male', 'Accounting', 5, 16287, 35, '2 Calypso Terrace', 'rsantoro0@cbsnews.com', '94-666-2631', 'Canada', '2020-04-12 13:17:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `Employee_accounts`
--
ALTER TABLE `Employee_accounts`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `Employee_Information`
--
ALTER TABLE `Employee_Information`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee_accounts`
--
ALTER TABLE `Employee_accounts`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
