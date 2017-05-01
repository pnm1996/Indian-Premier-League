-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 10:10 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `city` varchar(40) NOT NULL,
  `stadium` varchar(40) NOT NULL,
  `year_establishment` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`city`, `stadium`, `year_establishment`, `capacity`, `ticket_price`) VALUES
('bangalore', 'Chinnaswammy', 1954, 25000, 1000),
('hyderabad', 'Holkar ', 1960, 15000, 400),
('kolkata', 'Eden Gardens', 1920, 23000, 500),
('mumbai', 'wankhede', 1902, 32000, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `f_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `home_city` varchar(40) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`f_id`, `name`, `home_city`, `owner`) VALUES
(1, 'Red Chillies Entertainment', 'Kolkata', 'SRK and Juhi Chawla'),
(2, 'Reliance', 'mumbai', 'Nita Ambani'),
(3, 'Sun Tv', 'Hyderabad', 'Sun entertainments ltd.'),
(4, 'Kingfisher', 'Bangalore', 'Vijay Mallya');

-- --------------------------------------------------------

--
-- Table structure for table `kkr`
--

CREATE TABLE `kkr` (
  `pid` int(11) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
PARTITION BY LIST (pid)
(
PARTITION p0 VALUES IN (1,2)ENGINE=InnoDB,
PARTITION p1 VALUES IN (3,4)ENGINE=InnoDB
);

--
-- Dumping data for table `kkr`
--

INSERT INTO `kkr` (`pid`, `jersey_no`, `name`, `status`, `price`) VALUES
(1, 10, 'Gautam Gambhir', 'Retained', 1000000),
(2, 33, 'Robin Uthappa', 'Retained', 2000000),
(3, 62, 'Suryakumar Yadav', 'Not-Retained', 500000),
(4, 61, 'Yusuf Pathan', 'Not-Retained', 880000);

-- --------------------------------------------------------

--
-- Table structure for table `mi`
--

CREATE TABLE `mi` (
  `pid` int(11) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
PARTITION BY LIST (pid)
(
PARTITION p0 VALUES IN (1,2)ENGINE=InnoDB,
PARTITION p1 VALUES IN (3,4)ENGINE=InnoDB
);

--
-- Dumping data for table `mi`
--

INSERT INTO `mi` (`pid`, `jersey_no`, `name`, `status`, `price`) VALUES
(1, 12, 'Hardik Pandya', 'Retained', 100000),
(2, 321, 'Krunal Pandya', 'Retained', 100000),
(3, 2, 'Nitish Rana', 'Not-Retained', 5200000),
(4, 31, 'Rohit Sharma', 'Not-Retained', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL,
  `base_price` int(11) NOT NULL,
  `runs` int(11) DEFAULT NULL,
  `wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `type`, `base_price`, `runs`, `wickets`) VALUES
(1, 'Hardik Pandya', 'All-Rounder', 1000000, 1300, 65),
(2, 'Krunal Pandya', 'All-Rounder', 500000, 567, 43),
(3, 'David Warner', 'Batsman', 5000000, 2700, NULL),
(4, 'Yuvraj Singh', 'All-Rounder', 10000000, 4000, 65),
(5, 'Alabh Mehta', 'All-Rounder', 999999999, 959595, 59595),
(7, 'Alabh Mehta', 'All-Rounder', 2147483647, 959, 9855);

-- --------------------------------------------------------

--
-- Table structure for table `rcb`
--

CREATE TABLE `rcb` (
  `pid` int(11) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
PARTITION BY LIST (pid)
(
PARTITION p0 VALUES IN (1,2)ENGINE=InnoDB,
PARTITION p1 VALUES IN (3,4)ENGINE=InnoDB
);

--
-- Dumping data for table `rcb`
--

INSERT INTO `rcb` (`pid`, `jersey_no`, `name`, `status`, `price`) VALUES
(1, 18, 'Virat Kohli', 'Retained', 1000000),
(2, 333, 'Chris Gayle', 'Retained', 2000000),
(3, 62, 'Sarfaraz Khan', 'Not-Retained', 500000),
(4, 61, 'Pawan Negi', 'Not-Retained', 880000);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `name` varchar(40) NOT NULL,
  `mode` varchar(40) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
PARTITION BY RANGE (amount)
(
PARTITION p0 VALUES LESS THAN (3000000)ENGINE=InnoDB,
PARTITION p1 VALUES LESS THAN (7500000)ENGINE=InnoDB,
PARTITION p2 VALUES LESS THAN MAXVALUEENGINE=InnoDB
)
);

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`name`, `mode`, `amount`) VALUES
('Ceat', 'Strategic Time Out', 2000000),
('SAP', 'Scam', 1000),
('Vodafone', 'Hoardings', 6500000),
('Vivo', 'Title', 10000000),
('FBB', 'Title', 10000000),
('FBB', 'Title', 10000000),
('Fabc', 'Title', 10000000),
('asas', 'Title', 10000000),
('asass', 'Title', 10000000),
('xx', 'Title', 10000000),
('FBBas', 'Title', 10000000),
('god', 'Title', 10000000),
('sagar', 'Title', 10000000),
('SAS', 'Title', 10000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000),
('ss', 'Title', 100000000);

-- --------------------------------------------------------

--
-- Table structure for table `srh`
--

CREATE TABLE `srh` (
  `pid` int(11) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
PARTITION BY LIST (pid)
(
PARTITION p0 VALUES IN (1,2)ENGINE=InnoDB,
PARTITION p1 VALUES IN (3,4)ENGINE=InnoDB
);

--
-- Dumping data for table `srh`
--

INSERT INTO `srh` (`pid`, `jersey_no`, `name`, `status`, `price`) VALUES
(1, 18, 'David Warner', 'Retained', 1000000),
(2, 333, 'Rashid Khan', 'Retained', 2000000),
(3, 62, 'Shikhar Dhawan', 'Not-Retained', 500000),
(4, 61, 'Deepak Hooda', 'Not-Retained', 880000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`city`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `kkr`
--
ALTER TABLE `kkr`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `mi`
--
ALTER TABLE `mi`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rcb`
--
ALTER TABLE `rcb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `srh`
--
ALTER TABLE `srh`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
