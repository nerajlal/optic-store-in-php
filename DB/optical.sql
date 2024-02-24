-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2024 at 01:57 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `optical`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `senderid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` varchar(200) NOT NULL,
  `label` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `senderid`, `name`, `email`, `message`, `label`, `status`) VALUES
(7, 15, 'Neraj Lal', 'anandhu@gmail.com', 'Good quality glasses', 'positive', 1),
(8, 10, 'test', 'neraj@gmail.com', 'Product is not good', 'positive', 1),
(10, 16, 'Neraj Lal', 'neraj@gmail.com', 'bad Quality', 'negative', 0),
(11, 10, 'Neraj Lal', 'neraj@gmail.com', 'waste of money', 'negative', 1),
(12, 15, 'Check', 'anandhu@gmail.com', 'nice one', 'positive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `loginid` int(10) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL DEFAULT 'nil',
  `address` varchar(300) NOT NULL,
  `phno` bigint(50) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `loginid` (`loginid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `loginid`, `name`, `email`, `city`, `address`, `phno`) VALUES
(9, 10, 'Neraj Lal', 'neraj@gmail.com', 'nil', 'lal bhavan mukkoodu p.o mulavana', 8547470675),
(11, 15, 'anandhu', 'anandhu@gmail.com', 'kollam', 'anandhu bhavan kundara p.o Mulavana', 8547489685),
(14, 16, 'hospital', 'hospital@gmail.com', 'kollam', 'hospital p.o kollam', 8574259577),
(16, 24, 'aca', 'saas@jjn.nk', '', 'asds', 7965485231),
(17, 25, 'asdasscac', 'sad@sa.dsfds', 'xasdas', 'adas', 1254789632),
(18, 26, 'Neraj Lal S', 'neraj123@gmail.com', '', 'lal bhavan Mukkoodu p.o Mulavana', 8547470675);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `p_id` int(5) NOT NULL,
  `feed` varchar(25) NOT NULL,
  `label` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `p_id`, `feed`, `label`) VALUES
(1, 32, 'good', 'positive'),
(2, 32, 'bad', 'negative'),
(3, 31, 'bad one', 'negative'),
(4, 33, 'good one', 'positive'),
(5, 33, 'good for use', 'positive'),
(6, 33, 'bad for using', 'negative'),
(7, 33, 'great good one', 'positive');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE IF NOT EXISTS `institution` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `city` varchar(25) NOT NULL,
  `institution_type` varchar(20) NOT NULL,
  `institution_name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `pic` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`id`, `city`, `institution_type`, `institution_name`, `username`, `phone`, `pic`) VALUES
(11, 'kollam', 'Hospital', 'LMS', 'hospital@gmail.com', 91854747067, 'pic/hos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(80) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `user` varchar(30) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `email`, `password`, `pic`, `status`, `user`) VALUES
(10, 'neraj@gmail.com', 'Neraj123@', 'pic/th.jpg', 1, 'user'),
(2, 'admin@gmail.com', 'Admin123@', '', 3, 'admin'),
(15, 'anandhu@gmail.com', 'Anandhu123@', '', 1, 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `file` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `username`, `file`) VALUES
(3, 'hospital@gmail.com', 'pic/ho.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `brand` varchar(25) NOT NULL,
  `model` varchar(11) NOT NULL,
  `frame_color` varchar(10) NOT NULL,
  `price` varchar(29) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `lens_color` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `username`, `brand`, `model`, `frame_color`, `price`, `photo`, `lens_color`) VALUES
(33, 'anandhu@gmail.com', 'Rayban', 'S332', 'gold', '5000', 'product/th.png', 'blue'),
(29, 'anandhu@gmail.com', 'Polaroid', 'd23', 'black', '2000', 'product/th2.png', 'white'),
(32, 'anandhu@gmail.com', 'Prada digital', 'digital', 'black', '3000', 'product/th3.png', 'white'),
(31, 'anandhu@gmail.com', 'Coolwinks', 'reddy', 'red', '2000', 'product/th1.png', 'white');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `user` varchar(50) NOT NULL,
  `shop` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `name`, `user`, `shop`, `address`, `phone`, `product_id`, `price`, `status`) VALUES
(16, 'Nera', 'neraj@gmail.com', 'anandhu@gmail.com', 'lal bhavan Mukkoodu p.o Mulavana', 8547470675, '31', 2000, 0),
(15, 'NerajLal', 'neraj@gmail.com', 'anandhu@gmail.com', 'lal bhavan Mukkoodu p.o Mulavana', 7547470675, '32', 3000, 3),
(21, 'Neraj', 'neraj@gmail.com', 'anandhu@gmail.com', 'lal bhavan Mukkoodu p.o Mulavana', 8547470675, '29', 2000, 0),
(20, 'Neraj', 'neraj@gmail.com', 'anandhu@gmail.com', 'lal bhavan Mukkoodu p.o Mulavana', 8547470675, '33', 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `author` varchar(10) NOT NULL DEFAULT 'Admin',
  `senderid` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`author`, `senderid`, `message`) VALUES
('Admin', 'hospital@gmail.com', 'working'),
('Admin', 'anandhu@gmail.com', 'ðŸ‘ ok'),
('Admin', 'hospital@gmail.com', 'jnjk'),
('Admin', 'anandhu@gmail.com', 'good');
