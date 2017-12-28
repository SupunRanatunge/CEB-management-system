-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 09:36 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cebf`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `customer_ID` int(11) DEFAULT NULL,
  `last_Bill_Amount` int(20) DEFAULT NULL,
  `current_Outstanding` int(20) DEFAULT NULL,
  `due_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`customer_ID`, `last_Bill_Amount`, `current_Outstanding`, `due_Date`) VALUES
(234, 0, -79, '2017.12.10'),
(12, 440, 79, '2017.12.27'),
(45, 5249, 10497, '2017.12.26'),
(3, 423, 423, '2017.12.27');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `account_Number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `name`, `location`, `account_Number`) VALUES
(1, 'branch1', 'Colombo', 1),
(2, 'branch2', 'Rathnapura', 44354),
(3, 'branch3', 'Galle', 44334),
(4, 'branch4', 'Kalutara', 3434354);

-- --------------------------------------------------------

--
-- Stand-in structure for view `branch_month`
-- (See below for the actual view)
--
CREATE TABLE `branch_month` (
`year` int(4)
,`month` varchar(20)
,`SUM(no_Of_Units)` decimal(41,0)
,`branch_ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `branch_year`
-- (See below for the actual view)
--
CREATE TABLE `branch_year` (
`year` int(4)
,`SUM(no_Of_Units)` decimal(41,0)
,`branch_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`ID`) VALUES
(1234);

-- --------------------------------------------------------

--
-- Table structure for table `change_customer_details`
--

CREATE TABLE `change_customer_details` (
  `customer_ID` int(11) DEFAULT NULL,
  `branch_ID` int(11) DEFAULT NULL,
  `new_Name` varchar(100) DEFAULT NULL,
  `new_Email` varchar(100) DEFAULT NULL,
  `new_Contact_No` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `branch_ID` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `account_Number` int(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `branch_ID`, `name`, `address`, `account_Number`, `email`, `contact_No`) VALUES
(1, 1, 's', 'd', 2, 'd', 2),
(2, 1, 'c', 'df', 23, 'd@d.d', 23),
(3, 1, 'sd', 'fd', 34, 's@d.h', 34),
(8, 1, 'n', 'n', 8, 'b@f.h', 8),
(12, 1, 'a2', 'wqdqw', 123, 'aw@gmail.com', 12323244),
(45, 1, '8', 's', 2, 'g@s.kl', 4),
(234, 1, 'wdasd', 'scsadcs', 234, 'scscdc', 2323),
(2320, 1, 'cfd', 'df', 23, 'df@d.h', 23),
(2345, 1, 'sdcds', 'dcs', 0, 'sfvcdf@SDCSD.CK', 0),
(4455, 1, 'ed', 'gh', 0, 'f@f.h', 67),
(22323, 1, 's', 'd', 1, 's2dsds@dd.sd', 2),
(23333, 1, 'c', '', 12, 'w@d.com', 32),
(33334, 1, 'd', 'h', 2, 'd@f.j', 2),
(333444, 1, 'g', 'sd', 23, 'd@s.d', 23),
(23333333, 1, 'f', 'f', 2, 'f@s.sd', 2),
(123344445, 1, 'sd', '', 12, '', 12),
(2147483647, 1, 'sds', 'dvf', 23, 'd@s.d', 23);

-- --------------------------------------------------------

--
-- Table structure for table `customer_credentials`
--

CREATE TABLE `customer_credentials` (
  `ID` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_credentials`
--

INSERT INTO `customer_credentials` (`ID`, `password`) VALUES
(12, '12'),
(45, '09'),
(23333333, 'f'),
(2345, '12'),
(4455, 'gf'),
(333444, 'h'),
(2, 'd'),
(3, 'sd'),
(2147483647, 'dcs'),
(2320, 'df'),
(33334, 'f');

-- --------------------------------------------------------

--
-- Table structure for table `domestic`
--

CREATE TABLE `domestic` (
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domestic`
--

INSERT INTO `domestic` (`ID`) VALUES
(12),
(45),
(234),
(33334),
(333444);

-- --------------------------------------------------------

--
-- Table structure for table `domestic_costing`
--

CREATE TABLE `domestic_costing` (
  `unit_range` int(11) NOT NULL,
  `price` float NOT NULL,
  `fixed` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domestic_costing`
--

INSERT INTO `domestic_costing` (`unit_range`, `price`, `fixed`) VALUES
(60, 7.85, 90),
(90, 10, 90),
(120, 27.75, 480),
(180, 32, 480),
(181, 45, 540);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `branch_ID` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `branch_ID`, `name`, `email`, `contact_No`) VALUES
(0, 1, 's', 'sd@d.l', 2),
(8, 1, 'er', 'df@@dfg.gh', 12),
(12, 1, 'sdcsdc', 'sdcsdcsd', 123123),
(80, 1, 'ff', 'f@d.j', 54),
(123, 1, 'en', 'adfsdsd', 4355),
(1234, 1, 'a1', 'e1', 1234),
(2222, 1, 'dfgh', 'f@s.h', 4545),
(2233, 1, 'dscds', 'S@d.fre', 23),
(3232, 1, 'sfd', 'sd@d.llll', 2),
(3344, 1, 'd', 's@d.sdf', 23),
(4545, 1, 'hggh', 'hf@sd.sd', 23),
(5656, 1, 'hghg', 'gh@sf.sfd', 234),
(6767, 1, 'rgdrt', 'fg@d.g', 56),
(11111, NULL, 'sd', 'as', 23),
(12345, 1, 'sdasdasd', 'assd@sdcsd.com', 1221312),
(45678, 1, 'dfgh', 'g@fdvdf.dfv', 456),
(55555, 1, 'f', 'a@s.d', 23),
(123456, 1, 'dcdfsv', 'refe', 12132),
(345678, 1, 'vbnm', 'dscd@sdcsd.cd', 123),
(2345678, 1, 'erfe', 'dfvfd@dc.ck', 23),
(34343434, 1, 'ggh', 'f@v.gh', 45);

-- --------------------------------------------------------

--
-- Table structure for table `employee_credentials`
--

CREATE TABLE `employee_credentials` (
  `ID` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_credentials`
--

INSERT INTO `employee_credentials` (`ID`, `password`) VALUES
(1234, '1234'),
(123, '123'),
(12345, '12345'),
(12, 'sxas'),
(123456, '123456'),
(11111, '11111'),
(0, 'sd'),
(3232, 'xc'),
(45678, 'dfgh'),
(345678, 'sdcsd'),
(2345678, 'erfer'),
(4545, 'bb'),
(5656, '5656'),
(6767, 'gffg'),
(2222, 'sdfg'),
(0, 'fmj'),
(80, 'gh'),
(0, '56'),
(34343434, ''),
(2233, 'sd'),
(8, '8');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`ID`) VALUES
(1),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `general_costing`
--

CREATE TABLE `general_costing` (
  `unit_range` int(11) NOT NULL,
  `price` float NOT NULL,
  `fixed` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_costing`
--

INSERT INTO `general_costing` (`unit_range`, `price`, `fixed`) VALUES
(300, 18.3, 240),
(301, 22.85, 240);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getid`
-- (See below for the actual view)
--
CREATE TABLE `getid` (
`year` int(4)
,`month` varchar(20)
,`customer_ID` int(11)
,`no_Of_Units` int(20)
,`branch_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `head_manager`
--

CREATE TABLE `head_manager` (
  `ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_manager`
--

INSERT INTO `head_manager` (`ID`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `industrial`
--

CREATE TABLE `industrial` (
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial`
--

INSERT INTO `industrial` (`ID`) VALUES
(2),
(2320),
(2345),
(2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `industrial_costing`
--

CREATE TABLE `industrial_costing` (
  `unit_range` int(11) NOT NULL,
  `price` float NOT NULL,
  `fixed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_costing`
--

INSERT INTO `industrial_costing` (`unit_range`, `price`, `fixed`) VALUES
(300, 10.8, 600),
(301, 12.2, 600);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`) VALUES
(0),
(123),
(3344),
(55555),
(34343434);

-- --------------------------------------------------------

--
-- Table structure for table `meter_reader`
--

CREATE TABLE `meter_reader` (
  `ID` int(11) NOT NULL,
  `service_Area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meter_reader`
--

INSERT INTO `meter_reader` (`ID`, `service_Area`) VALUES
(0, NULL),
(80, NULL),
(2222, NULL),
(2233, NULL),
(12345, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_records`
--

CREATE TABLE `monthly_records` (
  `year` int(4) DEFAULT NULL,
  `branch_ID` int(11) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `energy_Consumption_Of_Month` int(20) DEFAULT NULL,
  `number_Of_Total_Users` int(20) DEFAULT NULL,
  `total_Amount_Of_Income` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_register_customer`
--

CREATE TABLE `non_register_customer` (
  `name` varchar(100) DEFAULT NULL,
  `NIC` varchar(12) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_No` int(10) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_register_customer`
--

INSERT INTO `non_register_customer` (`name`, `NIC`, `address`, `email`, `contact_No`, `branch`, `date_time`) VALUES
('f', '34', 'df', 's@df.com', 3, '', '2017.11.16'),
('f', '344554', 'df', 's@df.com', 3, '1', '2017.11.16'),
('fg', '4656', 'ds', 'xs@sfd.com', 56, '', '2017.11.16'),
('hn', '545', 'vc', 'v2@d.jhj', 56, '1', '2017.12.17'),
('xcvb', 'dcvb', 'x nm', 'nvn@sd.com', 656, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `customer_ID` int(11) DEFAULT NULL,
  `branch_ID` int(11) DEFAULT NULL,
  `cashier_ID` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`customer_ID`, `branch_ID`, `cashier_ID`, `date`, `amount`) VALUES
(234, 1, 1234, '2017.11.10', '23.00'),
(12, 1, 1234, '2017.12.17', '800.00');

-- --------------------------------------------------------

--
-- Table structure for table `used_unites`
--

CREATE TABLE `used_unites` (
  `year` int(4) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `customer_ID` int(11) DEFAULT NULL,
  `no_Of_Units` int(20) DEFAULT NULL,
  `bill_For_That_Month` int(20) DEFAULT NULL,
  `meter_reader_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `used_unites`
--

INSERT INTO `used_unites` (`year`, `month`, `customer_ID`, `no_Of_Units`, `bill_For_That_Month`, `meter_reader_ID`) VALUES
(2017, '11', 234, 56, 440, '123456'),
(2017, '11', 12, 45, 353, '123456'),
(2017, '10', 12, 23, 500, '2345'),
(2017, '12', 45, 200, 5249, '12345'),
(2017, '12', 3, 10, 423, '12345'),
(2017, '12', 12, 56, 440, '12345');

-- --------------------------------------------------------

--
-- Structure for view `branch_month`
--
DROP TABLE IF EXISTS `branch_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branch_month`  AS  select `getid`.`year` AS `year`,`getid`.`month` AS `month`,sum(`getid`.`no_Of_Units`) AS `SUM(no_Of_Units)`,`getid`.`branch_ID` AS `branch_ID` from `getid` group by `getid`.`branch_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `branch_year`
--
DROP TABLE IF EXISTS `branch_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `branch_year`  AS  select `getid`.`year` AS `year`,sum(`getid`.`no_Of_Units`) AS `SUM(no_Of_Units)`,`getid`.`branch_ID` AS `branch_ID` from `getid` group by `getid`.`branch_ID`,`getid`.`year` ;

-- --------------------------------------------------------

--
-- Structure for view `getid`
--
DROP TABLE IF EXISTS `getid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getid`  AS  select `used_unites`.`year` AS `year`,`used_unites`.`month` AS `month`,`used_unites`.`customer_ID` AS `customer_ID`,`used_unites`.`no_Of_Units` AS `no_Of_Units`,`customer`.`branch_ID` AS `branch_ID` from (`used_unites` join `customer` on((`customer`.`ID` = `used_unites`.`customer_ID`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD UNIQUE KEY `customer_ID_2` (`customer_ID`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `change_customer_details`
--
ALTER TABLE `change_customer_details`
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `branch_ID` (`branch_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `branch_ID` (`branch_ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `customer_credentials`
--
ALTER TABLE `customer_credentials`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `domestic`
--
ALTER TABLE `domestic`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `branch_ID` (`branch_ID`);

--
-- Indexes for table `employee_credentials`
--
ALTER TABLE `employee_credentials`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD KEY `iD1` (`ID`);

--
-- Indexes for table `industrial`
--
ALTER TABLE `industrial`
  ADD KEY `id2` (`ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `meter_reader`
--
ALTER TABLE `meter_reader`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `monthly_records`
--
ALTER TABLE `monthly_records`
  ADD KEY `branch_ID` (`branch_ID`);

--
-- Indexes for table `non_register_customer`
--
ALTER TABLE `non_register_customer`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `branch_ID` (`branch_ID`),
  ADD KEY `cashier_ID` (`cashier_ID`);

--
-- Indexes for table `used_unites`
--
ALTER TABLE `used_unites`
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `change_customer_details`
--
ALTER TABLE `change_customer_details`
  ADD CONSTRAINT `change_customer_details_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `change_customer_details_ibfk_2` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `customer_credentials`
--
ALTER TABLE `customer_credentials`
  ADD CONSTRAINT `customer_credentials_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `domestic`
--
ALTER TABLE `domestic`
  ADD CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `employee_credentials`
--
ALTER TABLE `employee_credentials`
  ADD CONSTRAINT `employee_credentials_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `general`
--
ALTER TABLE `general`
  ADD CONSTRAINT `iD1` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `industrial`
--
ALTER TABLE `industrial`
  ADD CONSTRAINT `id2` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `meter_reader`
--
ALTER TABLE `meter_reader`
  ADD CONSTRAINT `meter_reader_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `monthly_records`
--
ALTER TABLE `monthly_records`
  ADD CONSTRAINT `monthly_records_ibfk_1` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`cashier_ID`) REFERENCES `cashier` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `used_unites`
--
ALTER TABLE `used_unites`
  ADD CONSTRAINT `used_unites_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
