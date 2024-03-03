-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 10:20 AM
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
-- Database: `cbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7894561238, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Eggless Cake', '2019-04-05 10:36:01'),
(4, 'Kids Cake', '2019-04-05 10:36:25'),
(5, 'Photo Cake', '2019-04-05 10:36:35'),
(6, 'Premium Cake', '2019-04-05 10:36:47'),
(7, 'Cup Cake', '2019-04-05 10:43:13'),
(14, 'Wedding cake', '2024-02-21 09:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
(3, 'Test', 'test@gmail.com', 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
(4, 'Anuj', 'ak330@gmail.com', 'This is for testing.', '2021-07-18 14:35:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`, `Weight`, `CreationDate`) VALUES
(1, 'Eggless Cake', 'Black Forest Cake', '560', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '1d60fc8c392da1803c14cfb6727dae14.jpg', '1 pcs', '500 gm', '2021-07-07 11:59:35'),
(3, 'Eggless Cake', 'Irish Coffee Cake', '2000', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '66a6f0dc19c2a2257b8a9691abd9b015.jpg', '1', '2 kg', '2021-07-07 13:02:46'),
(4, 'Kids Cake', 'Happier Mickey N Minnie Cake', '3600', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '897e767e9e8d96288b5db4fbb4e30c5a.jpg', '1', '3 kg', '2021-07-09 05:18:29'),
(6, 'Premium Cake', 'Indulging Pineapple Cake', '1800', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '812dc257444fc21da4c01aabe3dfedc8jpeg', '1', '2 kg', '2021-07-09 05:21:30'),
(7, 'Premium Cake', 'Fantastic Chocolate Cake', '1800', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', '1', '1.5 kg', '2021-07-09 05:22:45'),
(8, 'Cup Cake', 'Chocolate Cupcake', '400', '                                                                                                        This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '51f2e276b44316f2202402e5075579a5.jpg', '4 pcs', '500 gm', '2021-07-09 05:24:51'),
(9, 'First Birthday Cake', 'Jungle Theme Cake', '4800', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', 'bb0248cc8639e76969a01523158357f5jpeg', '1', '4 kg', '2021-07-09 05:27:25'),
(10, 'First Birthday Cake', 'Farm Cake', '3200', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', 'e6f0ef529bb9dd0807c98112739b5f36.jpg', '1', '3 kg', '2021-07-09 05:30:05'),
(11, 'Midnight Cake', 'Love Harbinger Cake', '1600', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '00f943a85103630af16dbe2f7aff194bjpeg', '1', '2 kg', '2021-07-09 05:32:02'),
(12, 'Midnight Cake', 'Choco Gem Fusion Cake', '2000', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '1e6ae4ada992769567b71815f124fac5.jpg', '1', '1.5 kg', '2021-07-09 05:33:28'),
(13, 'First Anniversary Cake', 'Delicious Anniversary Poster Cake', '1800', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '88374bcd74aa4b4f14257d9ec926965a.jpg', '1', '2 kg', '2021-07-09 05:36:02'),
(14, 'First Anniversary Cake', 'Anniversary Fusion Red Velvet And Chocolate Cake', '2500', '                                                    This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', 'efc1a80c391be252d7d777a437f86870.jpg', '1', '2 kg', '2021-07-09 05:37:26'),
(15, 'Photo Cake', 'Photo Cake Custom', '1500', '                                                                                                        This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '1dbad7524707795f7d0e54982c877f84.jpg', '1', '1 kg', '2021-07-16 12:41:11'),
(16, 'Eggless Cake', 'Eggless Irish vanilla cake', '1900', '                                                 	', '0f5c6e3f0ab1117a18da043ebd2bcfd1jpeg', '1', '1.5 kg', '2024-02-21 08:38:16'),
(17, 'Eggless Cake', 'Eggless strawberry mousse cake', '1200', '                                                 	', '794751441674131a36caf4b5840135f4.jpg', '1', '1 kg', '2024-02-21 08:38:46'),
(18, 'Kids Cake', 'Minion cake', '3000', '                                                 	', 'd039c52edefe987cafaa07d7d9a0b1c9jpeg', '1', '2.5 kg', '2024-02-21 08:40:58'),
(19, 'Kids Cake', 'Teddy Bear cake', '1200', '                                                                                                     	', '98e497dd16650710bdf7ca437a23f73b.jpg', '1', '1.5 kg', '2024-02-21 08:41:24'),
(20, 'Kids Cake', 'Barbie cake', '3500', '                                                                                                     	', 'df98f1642ff8000da42736f8ba9f9043jpeg', '1', '3 kg', '2024-02-21 08:41:50'),
(22, 'Photo Cake', 'Chocolate photo cake', '999', '                                                 	', 'b3db7375b078c23a9c6b61f0cc1c4e1fjpeg', '1', '1 kg', '2024-02-21 08:48:55'),
(23, 'Photo Cake', 'Surprise photo cake', '1600', '                                                 	', '1d50f37d7d2a8c7ac242844a47cbf9a2jpeg', '1', '1.5 kg', '2024-02-21 08:49:29'),
(24, 'Photo Cake', 'Red velvet photo cake', '1800', '                                                 	', 'a2132358e3c9921a41d1b545bb848567.jpg', '1', '1.5 kg', '2024-02-21 08:50:03'),
(25, 'Premium Cake', 'Belgium chocolate truffle cake', '1800', '                                                 	', 'b1e23653b7e2273aebd5ae0b638a5a05jpeg', '1', '1.5 kg', '2024-02-21 08:55:20'),
(27, 'Premium Cake', 'Death By Chocolate(DBC) cake', '1600', '                                                 	', '0aed8148986450aa4ecb9cd34abf1600.jpg', '1', '1 kg', '2024-02-21 08:56:47'),
(28, 'Cup Cake', 'Fun cookie monster cupcake', '350', '                                                 	', '76dcd0bf62aa25abe15bb2a34adf5f23.jpg', '4', '500 gm', '2024-02-21 09:02:28'),
(29, 'Cup Cake', 'Rich chocolate cupcake', '900', '                                                 	', '386132d6e8b815fa7936023d28c5f808.jpg', '4', '500 gm', '2024-02-21 09:03:23'),
(30, 'Cup Cake', 'Rainbow cupcakes', '600', '                                                 	', '9ccac6ae83b823dc0882d5548f3251a2.jpg', '4', '500 gm', '2024-02-21 09:03:56'),
(31, 'Wedding cake', 'Premium multi tiered wedding cake', '8000', '                                                 	', '60822743fe08c81641884f1d867bc8f8.jpg', '1', '4 kg', '2024-02-21 09:09:28'),
(32, 'Wedding cake', '2 tiered wedding cake', '5000', '                                                 	', '9426b628f6a248fd64f3a7fe5caee740.jpg', '1', '3 kg', '2024-02-21 09:10:02'),
(33, 'Wedding cake', '3 tiered wedding cake', '3500', '                                                 	', '736a248967fc37167ccb0017f44fe7d5.jpg', '1', '3.5 kg', '2024-02-21 09:10:39'),
(34, 'Wedding cake', '3 tiered wedding cake with photo', '8500', '                                                 	', '3cf50218cbbd2e5a7dba9d627fb7cea6.jpg', '1', '4 kg', '2024-02-21 09:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '684785077', 'order confirmed', 'Order Confirmed', '2021-07-14 07:18:21', NULL),
(2, '684785077', 'Cake being prepared', 'Cake being Prepared', '2021-07-14 07:18:53', NULL),
(3, '684785077', 'Cake pickup', 'Cake Pickup', '2021-07-14 07:19:19', NULL),
(4, '684785077', 'Cake Delivered', 'Cake Delivered', '2021-07-14 07:21:00', NULL),
(5, '728672835', 'Order is Confirmed', 'Order Confirmed', '2021-07-18 14:33:25', NULL),
(6, '728672835', 'The cake is Picked up.', 'Cake Pickup', '2021-07-18 14:34:03', NULL),
(7, '728672835', 'The Cake is Delivered', 'Cake Delivered', '2021-07-18 14:34:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '684785077', 'dsfde', 'rtert', 'tretret', 'trtert', 'terterte', '2021-07-14 07:16:49', 'Cake Delivered'),
(2, '1', '143132597', 'erte', 'bkkj', 'kjhkj', 'kjhbjkh', 'kjhkjh', '2021-07-14 07:17:16', NULL),
(3, '1', '478333935', 'lkjlk', 'lkjlk', 'lkjlk', 'lkjkl', 'lkjlk', '2021-07-14 07:17:51', NULL),
(4, '6', '890594955', 'tyu', 'uiu', 'yui', 'uiyi', 'iuyui', '2021-07-16 07:07:52', NULL),
(5, '6', '197974391', 'fdads', 'dgfd', 'dfgfdf', 'gfdgf', 'gfdgf', '2021-07-16 12:10:40', NULL),
(6, '8', '728672835', 'Q 42342', 'ABC Street', 'New Delhi', 'Near XYZ', 'New Delhi', '2021-07-18 14:32:50', 'Cake Delivered'),
(7, '9', '680281068', '73', '2nd cross', 'abc', 'xyz', 'Bangalore', '2024-02-21 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `CashonDelivery` varchar(100) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `CashonDelivery`, `OrderDate`) VALUES
(1, '1', '2', 1, '684785077', 'Cash on Delivery', '2021-07-14 07:16:30'),
(2, '1', '7', 1, '143132597', 'Cash on Delivery', '2021-07-14 07:16:57'),
(3, '1', '1', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:23'),
(4, '1', '10', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:29'),
(5, '1', '3', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:32'),
(6, '1', '1', NULL, NULL, NULL, '2021-07-14 12:12:42'),
(7, '1', '1', NULL, NULL, NULL, '2021-07-14 12:22:37'),
(8, '1', '1', NULL, NULL, NULL, '2021-07-14 12:23:42'),
(9, '1', '2', NULL, NULL, NULL, '2021-07-14 12:23:47'),
(10, '1', '2', NULL, NULL, NULL, '2021-07-14 12:42:23'),
(12, '6', '2', 1, '890594955', 'Cash on Delivery', '2021-07-16 07:07:25'),
(13, '6', '5', 1, '197974391', 'Cash on Delivery', '2021-07-16 12:06:45'),
(14, '8', '1', 1, '728672835', 'Cash on Delivery', '2021-07-18 14:32:11'),
(15, '9', '3', 1, '680281068', 'Cash on Delivery', '2024-02-21 09:15:55'),
(16, '9', '25', 1, '680281068', 'Cash on Delivery', '2024-02-21 09:16:05'),
(17, '9', '18', 1, '680281068', 'Cash on Delivery', '2024-02-21 09:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<p class=\"MsoNormal\"><span style=\"font-size: 11.5pt; line-height: 115%; font-family: Roboto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">We provide you a trustworthy and convenient platform\r\nto choose best gift for your family, friends etc. for every occasion like\r\nbirthdays, anniversaries, marriage, love, farewell and many more. We offer wide\r\nrange of products in various categories like cakes, egg-less cakes, drawing\r\ncakes, 3D cakes, photo cakes, collectibles, chocolates, bouquet, flowers bunch,\r\nsoft toys, greeting cards, candles, photo frames, handicrafts etc. We also\r\ncustomize gifts according to customer wish.</span></p>', NULL, NULL, '2021-07-16 06:44:44'),
(2, 'contactus', 'Contact Us', 'No. 63, Off&nbsp; Magadi Main Rd, Vishwaneedam Post, Bharath Nagar, Anjana Nagar, Bengaluru, Karnataka 560091', 'cakebakery@gmail.com', 9586478596, '2024-02-21 08:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2021-07-16 07:32:33'),
(2, 'rahul@gmail.com', '2021-07-16 07:32:33'),
(3, 'ak@gmail.com', '2021-07-18 14:35:00'),
(4, 'archana@g', '2024-02-21 09:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Pankaj', 'Shahu', 'testuser@gmail.com', 7894561236, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:41:22'),
(2, 'Rakesh', 'Chandra', 'rakesh@gmail.com', 7656234589, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Yogesh', 'Chandra', 'y@gmail.com', 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Yogesh', 'Shah', 'Test1@gmail.com', 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'Abir', 'Rajwansh', 'abir@gmail.com', 7987897897, '202cb962ac59075b964b07152d234b70', '2021-07-10 06:58:13'),
(7, 'Devi Nand', 'Shah', 'Devi@gmail.com', 9797987987, '202cb962ac59075b964b07152d234b70', '2021-07-16 08:02:24'),
(8, 'Anuj', 'Kumar', 'ak3330@gmail.com', 1122334455, 'f925916e2754e5e03f75dd58a5733251', '2021-07-18 14:31:30'),
(9, 'Archana', 'V', 'archana@gmail.com', 9986582405, '827ccb0eea8a706c4c34a16891f84e7b', '2024-02-21 09:14:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
