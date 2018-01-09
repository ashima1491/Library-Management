-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2013 at 04:29 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbooktbl`
--

CREATE TABLE IF NOT EXISTS `addbooktbl` (
  `genre` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `edition` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addbooktbl`
--

INSERT INTO `addbooktbl` (`genre`, `name`, `author`, `edition`, `price`, `id`) VALUES
('Magazines', 'India Today', 'India Today publications', 'january 2013', 200, '1/1/1'),
('b', 'c', 'cd', '39', 9999.9, '1/5/8'),
('a', 'b', 'c', '3', 1234.89, '2/8/4'),
('a', 'b', 'c', '2', 1235, '3/8/9'),
('Science', 'Principles Of Physics', 'H.C. Verma', '1998', 134.56, '4/8/6'),
('Literature', 'Julius Caesar', 'W.Shakespeare', 'null', 1000, '4/8/8'),
('literature', 'hamlet', 'W.Shakespeare', 'Null', 1784.89, '7/8/9'),
('Literature', 'Macbeth', 'W.Shakespeare', 'Null', 1567.89, '8/9/2');

-- --------------------------------------------------------

--
-- Table structure for table `addmembertbl`
--

CREATE TABLE IF NOT EXISTS `addmembertbl` (
  `name` varchar(100) NOT NULL,
  `phone1` bigint(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `father_nme` varchar(100) NOT NULL,
  `phone2` bigint(200) NOT NULL,
  `id` int(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `sem` int(100) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addmembertbl`
--

INSERT INTO `addmembertbl` (`name`, `phone1`, `gender`, `father_nme`, `phone2`, `id`, `dept`, `sem`, `dob`) VALUES
('a', 1234567890, 'Female', 'dc', 1342567890, 1, 'e', 1, '1970-01-01'),
('b', 1234567890, 'Female', 'w', 1234563464, 2, 'cse', 1, '1974-03-01'),
('a', 1234578900, 'Female', 'we', 1235343435, 3, 'ece', 4, '1987-06-04'),
('a', 1234567890, 'Male', 'dghu', 1345677904, 4, 'cse', 5, '1983-06-06'),
('ashima sharma', 1234567890, 'Female', 'dc sharma', 1234567890, 5, 'y', 6, '1976-07-02'),
('rita', 1432456789, 'Female', 'ajay', 1357687098, 6, 'cse', 5, '1988-03-07'),
('gunjan', 9087657863, 'Female', 'amit', 7686525879, 7, 'ece', 7, '1999-05-07'),
('varsha', 4325567904, 'Female', 'udit kumar', 1234567890, 8, 'ece', 2, '1993-10-07'),
('usha', 2143256587, 'Female', 'anil gupta', 1325465789, 10, 'ece', 3, '1982-03-06'),
('rachna', 1243257658, 'Female', 'sujit', 1457890753, 11, 'ece', 4, '1995-10-05'),
('c', 1234567899, 'Female', 'dc sharma', 1245678900, 12, 'ece', 2, '1985-07-04'),
('anita verma', 5678903452, 'Female', 'sumit verma', 1223466789, 13, 'ece', 5, '1999-07-06'),
('a', 8907634324, 'Male', 'b', 2355678999, 15, 'cse', 3, '1985-12-07'),
('vijay', 2142568931, 'Male', 'sunil', 1246890034, 16, 'cse', 3, '1993-06-24'),
('Naina Chopra', 9803456732, 'Female', 'Sumit Chopra', 8469870256, 17, 'ece', 5, '1990-04-05'),
('arjun kumar', 5986507657, 'Male', 'sanjay kumar', 5465779890, 19, 'ece', 3, '1984-10-06'),
('a', 1243256789, 'Male', 'v', 3256890005, 23, 'ece', 5, '1972-06-04'),
('Rita', 2546769006, 'Female', 'Arnav', 1246890034, 28, 'ece', 3, '1998-05-28'),
('Simi Kumar', 1324567890, 'Female', 'Rajan Kumar', 1324676898, 29, 'ece', 2, '1988-10-07'),
('ash', 1245768798, 'Female', 'abh', 1357893625, 34, 'ece', 2, '1976-07-06'),
('b', 1234567899, 'Male', 'bcd', 7890531243, 45, 'cse', 3, '1971-02-07'),
('as', 6789024214, 'Female', 'yhj', 2315658980, 123, 'ece', 5, '1971-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooktbl`
--

CREATE TABLE IF NOT EXISTS `issuebooktbl` (
  `studentid` varchar(100) NOT NULL,
  `bookid1` varchar(100) NOT NULL,
  `date_issued` date NOT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `bookid1` (`bookid1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebooktbl`
--

INSERT INTO `issuebooktbl` (`studentid`, `bookid1`, `date_issued`) VALUES
('1', '2/8/9', '0000-00-00'),
('11', '1/5/8', '2012-02-04'),
('12', '4/8/9', '2010-06-07'),
('13', '4/8/7', '2010-06-07'),
('28', '4/8/8', '2010-07-05'),
('29', '8/9/2', '2011-03-04'),
('3', '3/8/9', '2012-02-04'),
('9', '5/6/9', '2010-06-06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
