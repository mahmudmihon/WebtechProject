-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 07:14 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boikinun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newbooks`
--

CREATE TABLE `newbooks` (
  `id` int(10) NOT NULL,
  `imageName` varchar(1000) NOT NULL,
  `bookName` varchar(1000) NOT NULL,
  `slug` varchar(10000) NOT NULL,
  `writerName` varchar(1000) NOT NULL,
  `publication` varchar(1000) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `price` int(8) NOT NULL,
  `quantity` int(100) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `date_view` date NOT NULL,
  `counter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newbooks`
--

INSERT INTO `newbooks` (`id`, `imageName`, `bookName`, `slug`, `writerName`, `publication`, `subject`, `price`, `quantity`, `description`, `date_view`, `counter`) VALUES
(1, '1554476053-2144919637.jpg', 'nature', 'nature', 'zahir', 'zahir', 'beauty', 100, 95, 'Hello!', '0000-00-00', 1),
(2, '1554951701book3.jpg', 'vallage na', 'vallage-na', 'zahir', 'zahir', 'vallage na', 50, 100, NULL, '0000-00-00', 1),
(3, '1554954116book1.jpg', 'rakib', 'rakib', 'rakib', 'rakib', 'rakib', 10, 49, NULL, '0000-00-00', 1),
(4, '1554954138book2.jpg', 'argho', 'argho', 'argho', 'argho', 'argho', 30, 39, NULL, '0000-00-00', 1),
(5, '1554954159book7.jpg', 'talat', 'talat', 'talat', 'talat', 'talat', 40, 60, NULL, '0000-00-00', 1),
(6, '1554954179book8.jpg', 'zahir', 'zahir', 'zahir', 'zahir', 'beauty', 50, 20, NULL, '0000-00-00', 1),
(7, '15563877216066showing.jpg', 'tiger', 'tiger', 'zahir', 'zahir', 'beauty', 50, 10, 'white tiger', '0000-00-00', 1),
(8, '15564233533(2).JPG', 'shapla', 'shapla', 'rakib', 'rakib', 'beauty', 10, 10, 'Beautiful Bangladesh', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `odate` date NOT NULL,
  `status` int(100) NOT NULL,
  `payment_method` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `aphone` varchar(1000) DEFAULT NULL,
  `address` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `product_id`, `quantity`, `total`, `odate`, `status`, `payment_method`, `name`, `phone`, `aphone`, `address`) VALUES
(6, 859, 8, 4, 10, 450, '2019-04-27', 1, 'Cash on Delivery', 'Mihon Mahmud', '1521308755', '1521308755', 'BAIUST Hostel'),
(7, 859, 8, 1, 1, 450, '2019-04-27', 0, 'Cash on Delivery', 'Mihon Mahmud', '1521308755', '1521308755', 'BAIUST Hostel'),
(8, 859, 8, 6, 1, 450, '2019-04-27', 0, 'Cash on Delivery', 'Mihon Mahmud', '1521308755', '1521308755', 'BAIUST Hostel'),
(9, 4642, 46, 1, 1, 1000, '2019-04-28', 0, 'Bkash', 'Mihon Mahmud', '+8801521308755', '+8801521308755', 'BAIUST Hostel'),
(10, 0, 0, 0, 0, 0, '0000-00-00', 0, '', '', '', NULL, ''),
(11, 0, 0, 0, 0, 0, '0000-00-00', 0, '', '', '', NULL, ''),
(12, 0, 0, 0, 0, 0, '0000-00-00', 1, '', '', '', NULL, ''),
(13, 0, 0, 0, 0, 0, '0000-00-00', 1, '', '', '', NULL, ''),
(20, 4641, 46, 1, 1, 100, '2019-04-28', 0, 'Bkash', 'Mihon Mahmud', '1521308755', '123456789', 'BAIUST Hostel'),
(21, 4664, 46, 3, 1, 40, '2019-04-28', 0, 'Bkash', 'rasel', '123456789', '123456789', 'BAIUST Hostel'),
(22, 4664, 46, 4, 1, 40, '2019-04-28', 0, 'Bkash', 'rasel', '123456789', '123456789', 'BAIUST Hostel'),
(23, 876, 8, 1, 2, 200, '2019-04-29', 0, 'Cash on Delivery', 'zahir', '+8801521308755', '+8801521308755', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notices`
--

CREATE TABLE `tbl_notices` (
  `id` int(11) NOT NULL,
  `notice1` varchar(1000) NOT NULL,
  `notice2` varchar(5000) NOT NULL,
  `notice3` varchar(5000) NOT NULL,
  `oldBook_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notices`
--

INSERT INTO `tbl_notices` (`id`, `notice1`, `notice2`, `notice3`, `oldBook_id`) VALUES
(12, 'change description ', '', '', 5),
(13, 'name should be changed', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oldbooks`
--

CREATE TABLE `tbl_oldbooks` (
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(6000) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `image_name` varchar(200) NOT NULL,
  `added_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_oldbooks`
--

INSERT INTO `tbl_oldbooks` (`id`, `city`, `area`, `title`, `description`, `phone_number`, `price`, `image_name`, `added_date`, `user_id`, `status`) VALUES
(1, 'Dhaka', 'banani', 'book424', 'nice book', '01738473333', '1233', '5cc5d260ad0ed9.64418657.jpg', '28/04/19 18:25PM', 8, 'reviewed'),
(2, 'Chittagong', 'agrabad', 'Student Hax', '10 minutes Book', '01773853282', '120', '5cc5ef6dc69a23.57122526.jpg', '28/04/19 20:22PM', 8, 'reviewed'),
(3, 'Chittagong', 'pahartoli', 'Emotional marketing', 'kine luv nai ', '01521548787', '200', '5cc5efc45e8463.26234858.jpg', '28/04/19 20:24PM', 8, 'reviewed'),
(4, 'Khulna', 'daulatpur', 'vallagena ', 'valo na lagle kinte paren', '01738473335', '150', '5cc5f00f92df04.64148089.jpg', '28/04/19 20:35PM', 9, 'pending'),
(5, 'Rajshahi', 'motihar', 'father oh the nation ', 'tel baj', '01715160906', '500', '5cc5f05a10ca21.85037941.jpg', '28/04/19 20:34PM', 9, 'pending'),
(6, 'Dhaka', 'mirpur', 'kokhno baire jewona', 'argho baire ber hoiona mirpur!!!!!!!!!!!!', '01773853282', '120', '5cc5f17e78b870.89294514.jpg', '28/04/19 20:31PM', 8, 'reviewed'),
(7, 'Dhaka', 'gulshan', 'paradoxical sajid', 'valo book', '01521646259', '150', '5cc5f5bbf12dd9.44838416.jpg', '28/04/19 20:49PM', 60, 'reviewed'),
(8, 'Chittagong', 'oxygen Mor', 'Motivational Book', 'sobai kinte paro', '01725698631', '200', '5cc5f5eec11251.02359157.jpg', '28/04/19 20:50PM', 60, 'reviewed'),
(9, 'Rajshahi', 'motihar', 'Misir ali', 'jooss boi', '01723698546', '500', '5cc5f626110704.37106514.gif', '28/04/19 20:51PM', 60, 'reviewed'),
(10, 'Chittagong', 'oxygen Mor', 'Ele Bele', 'hudai boi', '01756985632', '300', '5cc5f6cf36a937.13031222.gif', '28/04/19 20:54PM', 61, 'reviewed'),
(11, 'Dhaka', 'banani', 'waiting', 'good book', '01825498753', '200', '5cc5f6f3d60845.20276771.jpg', '28/04/19 20:54PM', 61, 'reviewed'),
(12, 'Khulna', 'sonadanga', 'My childhood', 'funny book', '01725986354', '100', '5cc5f721a251e1.16578900.gif', '28/04/19 20:55PM', 61, 'reviewed'),
(13, 'Dhaka', 'gulshan', 'Bottle Vut', 'story book', '01956842356', '250', '5cc5f7f7893081.82941619.jpg', '28/04/19 20:59PM', 62, 'reviewed'),
(14, 'Khulna', 'sonadanga', 'Story book', 'chotoder golpo', '01524589635', '300', '5cc5f86b3e3a91.15420180.jpg', '28/04/19 21:00PM', 62, 'reviewed'),
(15, 'Dhaka', 'gulshan', 'testtt', 'test test', '12345678909', '1000', '5cc66cd8698ee2.36816277.jpg', '29/04/19 05:18AM', 8, 'reviewed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `added_date` varchar(30) NOT NULL,
  `flag` int(5) NOT NULL,
  `modified_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `password`, `phone_number`, `address`, `gender`, `date_of_birth`, `added_date`, `flag`, `modified_date`) VALUES
(7, 'admin a', 'hridoy.9@gmail.com', '@22222222', '01783737377', 'mirpur', 'male', '12/12/1996', '17/03/19 16:44PM', 2, '28/04/19 10:33AM'),
(8, 'customer a', 'customer@gmail.com', '@22222222', '01783737377', 'mirpur', 'male', '12/12/1996', '22/03/19 18:09PM', 3, '28/04/19 10:41AM'),
(9, 'admin a', 'admin@gmail.com', '@22222222', '01783737377', 'mirpur', 'male', '12/12/1996', '22/03/2019', 1, '28/04/19 10:33AM'),
(48, 'Talat T', 'talat@gmai.com', '@11111111', '01783625322', 'mirpur', 'male', '12/12/1996', '22/03/19 18:09PM\r\n', 2, ''),
(49, 'Iram I', 'iram@gmai.com', '@22222222', '01783635333', 'bonani', 'male', '14/10/1998', '22/03/19 18:09PM\r\n', 2, ''),
(50, 'Rakib r', 'rakib@gmai.com', '@33333333', '0178325344', 'gabtoli', 'male', '11/12/1997', '22/03/19 18:09PM\r\n', 2, ''),
(51, 'Islam I', 'islam@gmai.com', '@44444444', '01773625355', 'gulshan', 'male', '19/2/1992', '22/03/19 18:09PM\r\n', 2, ''),
(52, 'Argho A', 'argho@gmai.com', '@55555555', '01785625366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 2, ''),
(53, 'Zahir Z', 'zahir@gmai.com', '@66666666', '01783925377', 'bonani', 'male', '12/6/1996', '22/03/19 18:09PM\r\n', 2, ''),
(54, 'Thor T', 'thor@gmai.com', '@12121212', '01783645333', 'bonani', 'male', '24/10/1994', '22/03/19 18:09PM\r\n', 2, ''),
(55, 'Hulk H', 'hulk@gmai.com', '@12312312', '0178325316', 'gabtoli', 'male', '15/6/1990', '22/03/19 18:09PM\r\n', 2, ''),
(56, 'Loki L', 'loki@gmai.com', '@44445555', '01773625355', 'gulshan', 'female', '19/2/1992', '22/03/19 18:09PM\r\n', 2, ''),
(57, 'Kuddus K', 'kuddus@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 2, ''),
(58, 'Mofiz M', 'mofiz@gmai.com', '@66655666', '01783925386', 'bonani', 'male', '12/6/1996', '22/03/19 18:09PM\r\n', 2, ''),
(59, 'Modon M', 'modon@gmai.com', '@66666666', '01783925377', 'bonani', 'male', '12/6/1996', '22/03/19 18:09PM\r\n', 2, ''),
(60, 'Amina A', 'amina@gmai.com', '@12121212', '01783645333', 'bonani', 'female', '24/10/1994', '22/03/19 18:09PM\r\n', 3, ''),
(61, 'Rohima R', 'rohima@gmai.com', '@12312312', '0178325316', 'gabtoli', 'fmale', '15/6/1990', '22/03/19 18:09PM\r\n', 3, ''),
(62, 'Komola K', 'komola@gmai.com', '@44445555', '01773625355', 'gulshan', 'female', '19/2/1992', '22/03/19 18:09PM\r\n', 3, ''),
(63, 'Lotif L', 'lotif@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(64, 'Labiba L', 'labiba@gmai.com', '@12121212', '01783645333', 'bonani', 'female', '24/10/1994', '22/03/19 18:09PM\r\n', 3, ''),
(65, 'Anika A', 'anika@gmai.com', '@12312312', '0178325316', 'gabtoli', 'fmale', '15/6/1990', '22/03/19 18:09PM\r\n', 3, ''),
(66, 'Sahida S', 'sahida@gmai.com', '@44445555', '01773625355', 'gulshan', 'female', '19/2/1992', '22/03/19 18:09PM\r\n', 3, ''),
(67, 'Anik A', 'anik@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(68, 'Rohim R', 'rohim@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(69, 'Habiba H', 'habiba@gmai.com', '@12121212', '01783645333', 'bonani', 'female', '24/10/1994', '22/03/19 18:09PM\r\n', 3, ''),
(70, 'Rafee R', 'rafee@gmai.com', '@12312312', '0178325316', 'gabtoli', 'fmale', '15/6/1990', '22/03/19 18:09PM\r\n', 3, ''),
(71, 'Oishi O', 'oishi@gmai.com', '@44445555', '01773625355', 'gulshan', 'female', '19/2/1992', '22/03/19 18:09PM\r\n', 3, ''),
(72, 'Shakib S', 'shakib@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(73, 'Mahir M', 'mahir@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(74, 'Fatena F', 'fatema@gmai.com', '@12121212', '01783645333', 'bonani', 'female', '24/10/1994', '22/03/19 18:09PM\r\n', 3, ''),
(75, 'Rishat R', 'rishat@gmai.com', '@12312312', '0178325316', 'gabtoli', 'fmale', '15/6/1990', '22/03/19 18:09PM\r\n', 3, ''),
(76, 'Fahim F', 'fahim@gmai.com', '@44445555', '01773625355', 'gulshan', 'male', '19/2/1992', '22/03/19 18:09PM\r\n', 3, ''),
(77, 'Meraj M', 'meraj@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, ''),
(78, 'Proma P', 'proma@gmai.com', '@12312312', '0178325316', 'gabtoli', 'fmale', '15/6/1990', '22/03/19 18:09PM\r\n', 3, ''),
(79, 'Oli O', 'oli@gmai.com', '@44445555', '01773625355', 'gulshan', 'male', '19/2/1992', '22/03/19 18:09PM\r\n', 3, ''),
(80, 'Asif A', 'asif@gmai.com', '@55558686', '01723695366', 'kuril', 'male', '12/11/1999', '22/03/19 18:09PM\r\n', 3, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newbooks`
--
ALTER TABLE `newbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_oldbooks`
--
ALTER TABLE `tbl_oldbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newbooks`
--
ALTER TABLE `newbooks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_notices`
--
ALTER TABLE `tbl_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_oldbooks`
--
ALTER TABLE `tbl_oldbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
