-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 07:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'VADAPAV', '', '2022-09-19 18:06:52'),
(2, 'VADAPAV PIZZA', '', '2022-09-20 15:09:39'),
(3, 'FRIES', '', '2022-09-20 15:18:32'),
(4, 'SNACKY TOWER', '', '2022-09-20 15:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 2, 'omkartotala@gmail.com', 9373642742, 2, 'dgjadhsgfjhasdgf', '2022-09-22 22:02:17'),
(2, 2, 'omkartotala@gmail.com', 9373642742, 2, 'fgdgfhfghfg', '2022-09-29 13:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`id`, `orderId`, `deliveryBoyName`, `deliveryBoyPhoneNo`, `deliveryTime`, `dateTime`) VALUES
(1, 1, 'omkar', 9373642742, 30, '2022-11-13 19:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `vadapavId` int(12) NOT NULL,
  `vadapavName` varchar(255) DEFAULT NULL,
  `vadaPrice` int(12) DEFAULT NULL,
  `vadaDesc` text DEFAULT NULL,
  `vadaCategorieId` int(12) DEFAULT NULL,
  `vadaPubDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`vadapavId`, `vadapavName`, `vadaPrice`, `vadaDesc`, `vadaCategorieId`, `vadaPubDate`) VALUES
(73, 'माझा छकुला ', 12, 'Vadapav + Green Chatani + onion', 1, '2022-09-20 14:49:03'),
(74, 'शाकाल ', 15, 'Vadapav + Chinch + Onion Ring + Chatani', 1, '2022-09-20 14:50:04'),
(75, '  कुबड्या खवीस ', 20, 'Vadapav + Peri-Peri Souce + Peri-Peri Powder + Onion Ring', 1, '2022-09-20 14:52:07'),
(76, ' कवट्या महाकाळ ', 25, 'Vadapav + BBQ Souce + letivj + Tomato Souce + Onion Ring', 1, '2022-09-20 14:52:54'),
(77, 'टकलू हैवान ', 25, 'Vadapav + Koslo + Chese + Shejvan Souce', 1, '2022-09-20 14:54:14'),
(78, 'तात्या विंचू ', 30, 'Vadapav + Mexican Salsa Letivaj + Onion + Tomato + Nachos', 1, '2022-09-20 14:55:43'),
(79, 'कान्होळे', 30, 'Vadapav + Mexican Salsa Letivaj + Onion + Tomato + Nachos', 1, '2022-09-20 14:56:34'),
(80, 'आम्ही सातपुते ', 40, 'Vadapav Patis', 1, '2022-09-20 15:02:31'),
(81, ' छोटा डॅंबीस  (Maragharita Vadapav Pizza)', 80, 'Maragharita Vadapav Pizza', 2, '2022-09-20 15:14:07'),
(82, 'धांगडधिंगा ', 100, 'Cocktail Vadapav Pizza', 2, '2022-09-20 15:16:04'),
(83, 'अप्पा डॅंबीस ', 120, 'BBQ Vadapav Pizza', 2, '2022-09-20 15:18:03'),
(84, 'बनवाबनवी फ्राईज ', 100, 'Cocktail Fries', 3, '2022-09-20 15:21:25'),
(85, ' थरथराट फ्राईज ', 70, 'Peri Peri Fries', 3, '2022-09-20 15:23:15'),
(86, 'अफलातून फ्राईज ', 70, 'Lemon Chilly Fries', 3, '2022-09-20 15:25:26'),
(87, 'टाइमपास फ्राईज ', 50, 'Salted Fries', 3, '2022-09-20 15:26:58'),
(88, 'किरकिरे टाँवर ', 100, 'Blue Lagoon + Peri Peri Fries + Peri Peri Souce', 4, '2022-09-20 15:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `vadapavId` int(21) DEFAULT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `vadapavId`, `itemQuantity`) VALUES
(2, 2, 73, 1),
(3, 3, 81, 1),
(4, 3, 85, 1),
(5, 3, 73, 1),
(6, 4, 75, 1),
(7, 5, 73, 1),
(8, 5, 74, 1),
(9, 6, 85, 1),
(10, 7, 73, 2),
(11, 7, 74, 1),
(12, 7, 82, 1),
(13, 8, 2, 1),
(14, 8, 73, 1),
(15, 9, 73, 1),
(16, 10, 81, 2),
(17, 11, 85, 1),
(18, 12, 88, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(9, 2, '2346/47 C ward Near Shaniwar peth post office Shaniwar peth kolhapur, ', 416002, 9273717300, 12, '0', '0', '2022-11-18 00:12:14'),
(10, 2, '2346/47 C ward Near Shaniwar peth post office Shaniwar peth kolhapur, ', 416002, 9373642742, 160, '0', '0', '2022-11-18 00:13:02'),
(11, 4, 'shivaji peth kolhapur, shivaji peth kolhapur', 416012, 7498088688, 70, '0', '0', '2022-11-18 00:13:56'),
(12, 4, 'shiavji peth kolhapur, shivaji peth kolhapur', 416012, 7498088688, 200, '0', '0', '2022-11-18 00:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'Villain\'s Adda', 'satyajeetmahadik@gmail.com', 7588265661, 8624832767, 'Shop no 1 Azad chowk near datta mandir, kolhapur. 416001', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58'),
(2, 'omkar', 'Omkar', 'Totala', 'omkartotala@gmail.com', 9373642742, '0', '$2y$10$s/5sS0iYiW.JBk4lItcCGOmrUCJB9dL3BC.cy6zFV.4.gOVhEbtfq', '2022-09-18 20:32:17'),
(4, 'sanket', 'sanket', 'sasane', 'saketsasane@gmail.com', 9273717300, '0', '$2y$10$xChYLJlPZyrBSiIQeAQ86.dFppH8HOtheZ9cWrFfWoFQxizFa2P6a', '2022-09-18 21:41:11'),
(5, 'jay', 'digvijay', 'salunkhe', 'digvijay@gmail.com', 7083923923, '0', '$2y$10$I7NoBZT9P2W3fhauJEzh1u/Pe0KvgJczckFbPqIUX4nq07LPpHUpq', '2022-09-20 19:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `vadapavId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`vadapavId`);
ALTER TABLE `menu` ADD FULLTEXT KEY `pizzaName` (`vadapavName`,`vadaDesc`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
