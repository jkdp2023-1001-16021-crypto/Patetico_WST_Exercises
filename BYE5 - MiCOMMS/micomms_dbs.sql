-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2025 at 04:37 AM
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
-- Database: `micomms_dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `admin_ID` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_email` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manageorder_tb`
--

CREATE TABLE `manageorder_tb` (
  `mng_ID` int(11) NOT NULL,
  `admin_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `mng_action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdtls_tb`
--

CREATE TABLE `orderdtls_tb` (
  `orderDtls_ID` int(11) NOT NULL,
  `prod_ID` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `order_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory_tb`
--

CREATE TABLE `orderhistory_tb` (
  `history_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tb`
--

CREATE TABLE `order_tb` (
  `order_ID` int(11) NOT NULL,
  `orderDtls_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_stat` varchar(20) NOT NULL,
  `order_total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_tb`
--

CREATE TABLE `payment_tb` (
  `payment_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_meth` varchar(20) NOT NULL,
  `payment_stat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_tb`
--

CREATE TABLE `portfolio_tb` (
  `port_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `port_title` varchar(20) NOT NULL,
  `port_desc` varchar(20) NOT NULL,
  `port_img` varchar(20) NOT NULL,
  `port_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productdtls_tb`
--

CREATE TABLE `productdtls_tb` (
  `prodDtls_ID` int(11) NOT NULL,
  `color_style` varchar(20) NOT NULL,
  `comm_type` varchar(20) NOT NULL,
  `prod_price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `prod_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `prodDtls_ID` int(11) NOT NULL,
  `prod_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesumm_tb`
--

CREATE TABLE `salesumm_tb` (
  `summ_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `summ_totalSales` int(11) NOT NULL,
  `summ_totalRev` int(11) NOT NULL,
  `summ_period` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useracc_tb`
--

CREATE TABLE `useracc_tb` (
  `acc_ID` int(11) NOT NULL,
  `acc_email` varchar(20) NOT NULL,
  `acc_pass` varchar(20) NOT NULL,
  `acc_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo_tb`
--

CREATE TABLE `userinfo_tb` (
  `user_ID` int(11) NOT NULL,
  `acc_ID` int(11) NOT NULL,
  `user_fullN` varchar(20) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `user_address` varchar(20) NOT NULL,
  `user_bday` date NOT NULL,
  `user_pfp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `manageorder_tb`
--
ALTER TABLE `manageorder_tb`
  ADD PRIMARY KEY (`mng_ID`),
  ADD KEY `admin_ID` (`admin_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `orderdtls_tb`
--
ALTER TABLE `orderdtls_tb`
  ADD PRIMARY KEY (`orderDtls_ID`),
  ADD KEY `prod_ID` (`prod_ID`);

--
-- Indexes for table `orderhistory_tb`
--
ALTER TABLE `orderhistory_tb`
  ADD PRIMARY KEY (`history_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `orderDtls_ID` (`orderDtls_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `payment_tb`
--
ALTER TABLE `payment_tb`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `portfolio_tb`
--
ALTER TABLE `portfolio_tb`
  ADD PRIMARY KEY (`port_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `productdtls_tb`
--
ALTER TABLE `productdtls_tb`
  ADD PRIMARY KEY (`prodDtls_ID`);

--
-- Indexes for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD PRIMARY KEY (`prod_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `prodDtls_ID` (`prodDtls_ID`);

--
-- Indexes for table `salesumm_tb`
--
ALTER TABLE `salesumm_tb`
  ADD PRIMARY KEY (`summ_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `useracc_tb`
--
ALTER TABLE `useracc_tb`
  ADD PRIMARY KEY (`acc_ID`);

--
-- Indexes for table `userinfo_tb`
--
ALTER TABLE `userinfo_tb`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `acc_ID` (`acc_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manageorder_tb`
--
ALTER TABLE `manageorder_tb`
  ADD CONSTRAINT `manageorder_tb_ibfk_1` FOREIGN KEY (`admin_ID`) REFERENCES `admin_tb` (`admin_ID`),
  ADD CONSTRAINT `manageorder_tb_ibfk_2` FOREIGN KEY (`order_ID`) REFERENCES `order_tb` (`order_ID`);

--
-- Constraints for table `orderdtls_tb`
--
ALTER TABLE `orderdtls_tb`
  ADD CONSTRAINT `orderdtls_tb_ibfk_1` FOREIGN KEY (`prod_ID`) REFERENCES `product_tb` (`prod_ID`);

--
-- Constraints for table `orderhistory_tb`
--
ALTER TABLE `orderhistory_tb`
  ADD CONSTRAINT `orderhistory_tb_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `order_tb` (`order_ID`);

--
-- Constraints for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD CONSTRAINT `order_tb_ibfk_1` FOREIGN KEY (`orderDtls_ID`) REFERENCES `orderdtls_tb` (`orderDtls_ID`),
  ADD CONSTRAINT `order_tb_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `userinfo_tb` (`user_ID`);

--
-- Constraints for table `payment_tb`
--
ALTER TABLE `payment_tb`
  ADD CONSTRAINT `payment_tb_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `order_tb` (`order_ID`);

--
-- Constraints for table `portfolio_tb`
--
ALTER TABLE `portfolio_tb`
  ADD CONSTRAINT `portfolio_tb_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `userinfo_tb` (`user_ID`);

--
-- Constraints for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD CONSTRAINT `product_tb_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `userinfo_tb` (`user_ID`),
  ADD CONSTRAINT `product_tb_ibfk_2` FOREIGN KEY (`prodDtls_ID`) REFERENCES `productdtls_tb` (`prodDtls_ID`);

--
-- Constraints for table `salesumm_tb`
--
ALTER TABLE `salesumm_tb`
  ADD CONSTRAINT `salesumm_tb_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `userinfo_tb` (`user_ID`);

--
-- Constraints for table `userinfo_tb`
--
ALTER TABLE `userinfo_tb`
  ADD CONSTRAINT `userinfo_tb_ibfk_1` FOREIGN KEY (`acc_ID`) REFERENCES `useracc_tb` (`acc_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
