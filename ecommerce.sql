-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 02, 2020 at 02:07 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `category` enum('book','stationary','other') DEFAULT NULL,
  `purchase_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `purchase_timestamp`) VALUES
(1, 'harry_potter', 'book', '2020-07-31 15:02:22'),
(2, 'harry_potter', 'book', '2020-07-31 16:07:07'),
(3, 'deception_point', 'book', '2020-07-31 16:07:08'),
(4, 'drunkards_walk', 'book', '2020-07-31 16:07:08'),
(5, 'the_kite_runner', 'book', '2020-07-31 16:07:08'),
(6, 'animal_farm', 'book', '2020-07-31 16:07:08'),
(7, 'night_lamp', '', '2020-07-31 16:07:08'),
(8, 'pencil_box', 'stationary', '2020-07-31 16:07:08'),
(9, 'fountain_pen', 'stationary', '2020-07-31 16:07:08'),
(10, 'study_bed_table', 'other', '2020-07-31 16:07:08'),
(11, 'personal_diary', 'stationary', '2020-07-31 16:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `phone`, `registration_time`) VALUES
(1, 'venu@xyz.com', 'Venu', 'Sharma', 547903927, '2016-09-28 16:00:04'),
(2, 'Shubham@xyz.com', 'Shubha', NULL, 538915694, '2020-07-31 15:42:23'),
(3, 'disha@xyz.com', 'Disha', 'Kaur', 557825323, '2016-09-29 18:32:14'),
(4, 'ankit@xyz.com', 'Ankit', 'Kumar', 561322116, '2016-09-30 09:35:18'),
(5, 'mrinal@xyz.com', 'Mrinal', 'Joy', 517918670, '2016-10-02 03:38:06'),
(6, 'abhilash@xyz.com', 'Jalsani', NULL, 509841902, '2016-10-01 05:00:00'),
(7, 'hardik@xyz.com', 'Hardik', 'Arora', 2147483647, '2016-09-30 07:50:45'),
(8, 'yesha@xyz.com', 'Yesha', 'Krishna', 534532216, '2016-09-30 07:50:45'),
(9, 'rushit@xyz.com', 'Rushit', NULL, 534395370, '2016-09-29 06:16:37'),
(10, 'jessy@xyz.com', 'Jessy', 'Joseph', 591053100, '2016-09-28 18:32:14'),
(11, 'jasper@xyz.com', 'Japreet', NULL, 515078235, '2016-09-29 18:20:12'),
(12, 'prachi@xyz.com', 'Prachi', NULL, 530670640, '2016-09-29 06:42:12'),
(17, 'ishikasrivastava999@', 'Suryansh', 'Srivastava', 0, '2020-08-01 06:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

DROP TABLE IF EXISTS `users_products`;
CREATE TABLE IF NOT EXISTS `users_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `purchase_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `product_id`, `purchase_timestamp`) VALUES
(1, 12, 3, '2016-10-10 12:40:12'),
(2, 12, 6, '2016-10-12 12:40:12'),
(3, 18, 6, '2016-10-29 06:42:12'),
(4, 4, 6, '2016-10-15 07:35:04'),
(5, 10, 9, '2016-10-09 20:45:16'),
(6, 7, 4, '2016-10-10 03:04:42'),
(7, 5, 1, '2016-10-19 11:28:54'),
(8, 4, 5, '2016-10-14 06:05:32'),
(9, 8, 5, '0000-00-00 00:00:00'),
(10, 7, 7, '2016-10-04 07:42:35'),
(11, 12, 2, '2016-10-14 06:53:41'),
(12, 12, 7, '2016-10-21 08:45:13'),
(13, 7, 2, '2016-10-05 10:38:02'),
(14, 7, 8, '2016-10-06 12:04:49'),
(15, 1, 2, '2016-10-13 10:07:51'),
(16, 11, 6, '2016-10-15 04:33:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
