-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2020 at 05:53 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `CUSTID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(64) NOT NULL,
  `LASTNAME` varchar(64) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `PHONE` varchar(16) NOT NULL,
  PRIMARY KEY (`CUSTID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUSTID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `PHONE`) VALUES
(1, 'John', 'Smith', '5 Fictitious Street, Springfield', '(70)11223344'),
(2, 'Fred', 'Jones', '25 Fictitious Place, Springfield', '(70)22335566'),
(3, 'Bob', 'Bee', '50 Fifty Court, Brisbane', '(70)22337788');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `EVENTID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENTNAME` varchar(64) NOT NULL,
  `LOCATION` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `DATE` varchar(64) NOT NULL,
  PRIMARY KEY (`EVENTID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EVENTID`, `EVENTNAME`, `LOCATION`, `DESCRIPTION`, `DATE`) VALUES
(1, 'Park Run', 'Stones Corners', 'Saturday morning fun run', '25/06/2020'),
(2, 'Meet & Greet BBQ', 'Brisbane CCD', 'Meet and Greet in Brisbane Mall', '27/06/2020'),
(3, 'Clearance Sale', 'Griffith Store', 'Clearance Sales for all items', '30/06/2020');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `PRODID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCTNAME` varchar(64) NOT NULL,
  `MANUFACTURER` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `PRICE` float NOT NULL,
  PRIMARY KEY (`PRODID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODID`, `PRODUCTNAME`, `MANUFACTURER`, `DESCRIPTION`, `PRICE`) VALUES
(1, 'Blender', 'Breville', 'A fantastic wand blender', 99.99),
(2, 'Coffee Master', 'Sunbeam', 'Great Single boiler machine with grander attachment', 699.99),
(3, 'Teapot', 'Teestore', 'China Teapot', 19.99);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
