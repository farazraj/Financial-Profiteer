-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2015 at 02:35 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lakecity`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('faraz_raj', 'Money');

-- --------------------------------------------------------

--
-- Table structure for table `member_acc`
--

CREATE TABLE IF NOT EXISTS `member_acc` (
  `DOA` date NOT NULL,
  `Mem_No` bigint(100) NOT NULL,
  `Sel_Sch` varchar(10) DEFAULT NULL,
  `Sch_Names` varchar(100) NOT NULL,
  `Acc_No` bigint(100) NOT NULL AUTO_INCREMENT,
  `Amt` int(50) NOT NULL,
  `Agnt_Name` varchar(100) NOT NULL,
  `Mat_Amt` bigint(100) DEFAULT '0',
  `Is_Closed` tinyint(5) NOT NULL DEFAULT '0',
  `Close_Date` date DEFAULT '0000-00-00',
  `Last_Date` date DEFAULT NULL,
  `Total_Paidamt` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Acc_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1783011 ;

--
-- Dumping data for table `member_acc`
--

INSERT INTO `member_acc` (`DOA`, `Mem_No`, `Sel_Sch`, `Sch_Names`, `Acc_No`, `Amt`, `Agnt_Name`, `Mat_Amt`, `Is_Closed`, `Close_Date`, `Last_Date`, `Total_Paidamt`) VALUES
('2015-04-02', 234001, 'MIS', 'Quarterly Profit', 1783001, 5000, 'Akshay Vyas', NULL, 0, NULL, NULL, 0),
('2015-04-05', 234002, 'MIS', 'Annual Benefit Scheme', 1783002, 10000, 'Abhishek Mathur', NULL, 0, NULL, NULL, 0),
('2015-04-06', 234003, 'MIS', 'Half Yearly Investment Scheme', 1783003, 6000, 'Madhvi Sharma', NULL, 0, NULL, NULL, 0),
('2015-04-10', 234004, 'MIS', 'Monthly Benefit Scheme', 1783004, 2000, 'Akshay Vyas', NULL, 0, NULL, NULL, 0),
('2015-04-11', 234005, 'Bond', 'Triple Benefit', 1783005, 100000, 'Abhay Arora', NULL, 0, NULL, NULL, 0),
('2015-05-08', 234006, 'Bond', 'Triple Benefit', 1783006, 500000, 'Akshay Vyas', NULL, 0, NULL, NULL, 0),
('2015-05-10', 234007, 'Bond', 'Triple Benefit', 1783007, 25000, 'Madhvi Sharma', NULL, 0, NULL, NULL, 0),
('2015-05-20', 234008, 'MIS', 'Quarterly Profit', 1783008, 10000, 'Abhishek Mathur', NULL, 0, NULL, NULL, 0),
('2015-06-01', 234003, 'Bond', 'Triple Benefit', 1783009, 75000, 'Madhvi Sharma', NULL, 0, NULL, NULL, 0),
('2015-06-05', 234006, 'MIS', 'Annual Benefit Scheme', 1783010, 100000, 'Abhishek Mathur', NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `new_agent`
--

CREATE TABLE IF NOT EXISTS `new_agent` (
  `Ag_Num` bigint(50) NOT NULL AUTO_INCREMENT,
  `A_Date` date NOT NULL,
  `A_Name` varchar(100) NOT NULL,
  `A_FH` varchar(100) NOT NULL,
  `A_DOB` date NOT NULL,
  `A_Mob` bigint(100) NOT NULL,
  `A_Gen` varchar(50) NOT NULL,
  `A_Email` varchar(100) NOT NULL,
  `A_RAdd` varchar(100) NOT NULL,
  `A_PANo` bigint(100) NOT NULL,
  `A_BankN` bigint(100) NOT NULL,
  `A_Branch` varchar(100) NOT NULL,
  `A_BankName` varchar(100) NOT NULL,
  `A_Balance` double(100,2) NOT NULL DEFAULT '0.00',
  `A_Pass` tinyint(1) NOT NULL,
  `A_PAN` tinyint(1) NOT NULL,
  `A_Voter` tinyint(1) NOT NULL,
  `A_DL` tinyint(1) NOT NULL,
  `A_BPass` tinyint(1) NOT NULL,
  PRIMARY KEY (`Ag_Num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=486006 ;

--
-- Dumping data for table `new_agent`
--

INSERT INTO `new_agent` (`Ag_Num`, `A_Date`, `A_Name`, `A_FH`, `A_DOB`, `A_Mob`, `A_Gen`, `A_Email`, `A_RAdd`, `A_PANo`, `A_BankN`, `A_Branch`, `A_BankName`, `A_Balance`, `A_Pass`, `A_PAN`, `A_Voter`, `A_DL`, `A_BPass`) VALUES
(486001, '2015-03-30', 'Abhishek Mathur', 'Om Prakash Mathur', '1986-05-02', 9414657890, 'Male', 'abhi.mathur12@gmail.com', '34, Bohra Ganeshji Chauraha, Udaipur(Rajasthan)', 9087654321, 55467890325, 'Surajpole', 'State Bank Of India', 5000.00, 0, 1, 0, 1, 1),
(486002, '2015-03-31', 'Abhay Arora', 'Jagdish Arora', '1984-09-13', 9773456378, 'Male', 'a24_arora@yahoomail.com', '23, Shivaji Nagar, Udaipur (Rajasthan)', 8076543234, 99007865431, 'Surajpole', 'Axis Bank', 0.00, 1, 1, 0, 1, 1),
(486003, '2015-04-03', 'Akshay Vyas', 'Raju Vyas', '1989-12-10', 8876987006, 'Male', 'vyas_ak@yahoomail.com', '15, Kalka Mata Road, Udaipur, Rajasthan', 9088767655, 66778809871, 'Surajpole', 'IDBI Bank', 0.00, 1, 1, 1, 0, 0),
(486004, '2015-04-15', 'Madhvi Sharma', 'Suhas Sharma', '1985-03-29', 9001554367, 'Female', 'sharma.madhu@gmail.com', '76, New Fatehpura, Udaipur, Rajasthan', 5058973524, 22200837571, 'Surajpole', 'Axis Bank', 0.00, 1, 1, 0, 0, 1),
(486005, '2015-04-28', 'Rahul Jain', 'Prafful jain', '1984-01-29', 9775667345, 'Male', 'rj.123@yahoomail.com', '512, Ashok nagar, Udaipur (Raj.) ', 4005787689, 550098796984, 'Surajpole', 'Axis Bank', 0.00, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_member`
--

CREATE TABLE IF NOT EXISTS `new_member` (
  `M_No` int(50) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FH_Name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Caste` varchar(50) NOT NULL,
  `Gen` varchar(50) NOT NULL,
  `M_Status` varchar(50) NOT NULL,
  `R_Add` varchar(100) NOT NULL,
  `C_Add` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Phone` bigint(100) NOT NULL,
  `Mobile` bigint(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Edu` varchar(100) NOT NULL,
  `A_Date` date DEFAULT NULL,
  PRIMARY KEY (`M_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=234009 ;

--
-- Dumping data for table `new_member`
--

INSERT INTO `new_member` (`M_No`, `Date`, `Name`, `FH_Name`, `DOB`, `Caste`, `Gen`, `M_Status`, `R_Add`, `C_Add`, `City`, `State`, `Phone`, `Mobile`, `Email`, `Edu`, `A_Date`) VALUES
(234001, '2015-04-02', 'Raj Sharma', 'Vishnu Sharma', '1987-08-28', 'Hindu', 'Male', 'Unmarried', '46, Maldas Street', '34, Maldas Street', 'Udaipur', 'Rajasthan', 294267543, 9988264563, 'coolraj@reddifmail.com', 'B.A.', NULL),
(234002, '2015-04-05', 'Avinash Jain', 'Kuldeep Jain', '1988-01-15', 'Hindu', 'Male', 'Married', '67, Sundarwas', '89, Thokar Chauraha', 'Udaipur', 'Rajasthan', 294256745, 9414125638, 'jainavi67@gmail.com', 'M.Com', '2013-05-19'),
(234003, '2015-04-06', 'Priya Rai', 'Sumit Rai', '1982-06-24', 'Hindu', 'Female', 'Married', '69, Fatehpura', '69, Fatehpura', 'Udaipur', 'Rajasthan', 2946509877, 9782899876, 'priyu.rai@hotmail.com', 'M.A.', '2008-02-14'),
(234004, '2015-04-10', 'Abbas Ali', 'Ali Hussain', '1989-06-15', 'Bohra (Muslim)', 'Male', 'Unmarried', '10, Bohrawadi', '110, Loha Bazar', 'Udaipur', 'Rajasthan', 294243456, 7789654437, 'abbas786110@gmail.com', 'B.B.M', NULL),
(234005, '2015-04-11', 'Jenny Fernandez', 'David Fernandez', '1990-07-21', 'Christian', 'Female', 'Married', '32, Bhopalpura', '67, Shakti Nagar', 'Udaipur', 'Rajasthan', 294287656, 7727876567, 'jf143@yahoomail.comn', 'Fashion Designing', '2014-07-21'),
(234006, '2015-05-08', 'Lalu Yadav', 'Mittha Yadav', '1970-09-20', 'Hindu', 'Male', 'Married', '89, Savina', '74, Durga Nursery Road', 'Udaipur', 'Rajasthan', 2942435678, 9001590876, 'lalva69@rediffmail.com', '12th Pass', '1991-12-31'),
(234007, '2015-05-10', 'Laxman Prajapat', 'Narulal Prajapat', '1989-09-09', 'Hindu', 'Male', 'Unmarried', '75, Pratapnagar', '85, Shevasharm', 'Udaipur', 'Rajasthan', 2942468948, 7737600600, 'prajapat23@gmail.com', 'B.com', NULL),
(234008, '2015-05-20', 'Aarohi Mehra', 'Rakesh Mehra', '1992-04-30', 'hindu', 'Male', 'Unmarried', '150, Rani Road', '150, Rani Road', 'Udaipur', 'Rajasthan', 2943208677, 9786545672, 'angel.mehra256@yahoo.co.in', 'B.Tech', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `new_member2`
--

CREATE TABLE IF NOT EXISTS `new_member2` (
  `Nom_Name` varchar(100) NOT NULL,
  `Gaurd_Name` varchar(100) NOT NULL,
  `Rel_Nom` varchar(50) NOT NULL,
  `Nom_DOB` date NOT NULL,
  `Mem_Fee` decimal(50,0) NOT NULL,
  `Share_Amt` decimal(50,0) NOT NULL,
  `Tot` decimal(65,0) NOT NULL,
  `Brch` varchar(50) NOT NULL,
  `Pan_No` bigint(100) NOT NULL,
  `Bank_No` bigint(100) NOT NULL,
  `Bank_Name` varchar(100) NOT NULL,
  `IFC` varchar(100) NOT NULL,
  `Brch_Code` varchar(100) NOT NULL,
  `Passport` tinyint(1) NOT NULL,
  `Pan_Card` tinyint(1) NOT NULL,
  `Voter_ID` tinyint(1) NOT NULL,
  `Drive_Lic` tinyint(1) NOT NULL,
  `Rashan` tinyint(1) NOT NULL,
  `Bank_Pass` tinyint(1) NOT NULL,
  `Other` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `new_member2`
--

INSERT INTO `new_member2` (`Nom_Name`, `Gaurd_Name`, `Rel_Nom`, `Nom_DOB`, `Mem_Fee`, `Share_Amt`, `Tot`, `Brch`, `Pan_No`, `Bank_No`, `Bank_Name`, `IFC`, `Brch_Code`, `Passport`, `Pan_Card`, `Voter_ID`, `Drive_Lic`, `Rashan`, `Bank_Pass`, `Other`, `id`, `mem_id`) VALUES
('Suman Sharma ', 'Vishnu Sharma', 'Mother', '1971-09-27', '1500', '500', '2000', 'Surajpole', 2012356178, 33167864211, 'Bank Of Baroda', 'BARBOFATUDA', 'FATUDA', 0, 1, 0, 1, 0, 1, '', 1, 234001),
('Alka Jain', 'Sudha Jain', 'Wife', '1991-08-25', '1500', '1000', '2500', 'Surajpole', 76865416187, 8876534567, 'State Bank Of India', 'SBISUNDERUDA', 'DERUDA', 1, 1, 0, 0, 0, 1, 'Aadhar Card', 2, 234002),
('Aditya Rai', 'Sumit Rai', 'Son', '1994-03-12', '1500', '1500', '3000', 'Surajpole', 76899976381, 34522566671, 'ICICI', 'ICICIMADHU', 'IMADHU', 1, 1, 0, 0, 0, 1, '', 3, 234003),
('Rashida Ali', 'Ali Hussain', 'Mother', '1970-12-08', '1500', '1000', '2500', 'Surajpole', 98725567261, 88975643623, 'Urban Co-Op. Bank', 'URBANHATH', 'ANHATH', 1, 1, 0, 1, 0, 1, '', 4, 234004),
('Maria jones', 'David Fernandez', 'Sister', '1993-08-16', '1500', '500', '2000', 'Surajpole', 3008761789, 12566435667, 'Punjab National Bank', 'PNBCHKUDA', 'CHKUDA', 1, 1, 0, 0, 0, 1, '', 5, 234005),
('Rabdi Devi', 'Hasmukh Lal', 'Wife', '1974-11-15', '1500', '2000', '3500', 'Surajpole', 9986562342, 77798293689, 'Canara Bank', 'CANABAPUDAI', 'APUDAI', 0, 1, 1, 0, 1, 1, 'Aadhar Card', 6, 234006),
('Ladulal Prajapat', 'Narulal Prajapat', 'Brother', '1993-08-16', '1500', '700', '2200', 'SURAJPOLE', 400123465, 99888774351, 'State Bank Of Bikaner & Jaipur ', 'SBBJPRAUDA', 'PRAUDA', 0, 0, 1, 0, 1, 1, '', 7, 234007),
('Arnav  Mehra', 'Rakesh Mehra', 'Brother', '1996-12-09', '1500', '1200', '2700', 'Surajpole', 526726727, 38982309383, 'ICICI BANK', 'ICICIMADUDA', 'MADUDA', 1, 1, 1, 0, 0, 1, '', 8, 234008);

-- --------------------------------------------------------

--
-- Table structure for table `pay_inst`
--

CREATE TABLE IF NOT EXISTS `pay_inst` (
  `P_Accno` int(100) NOT NULL,
  `P_Date` date NOT NULL,
  `P_Amt` int(100) DEFAULT NULL,
  PRIMARY KEY (`P_Accno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_inst`
--

INSERT INTO `pay_inst` (`P_Accno`, `P_Date`, `P_Amt`) VALUES
(1783001, '2015-08-02', 5000),
(1783003, '2015-10-06', 6000),
(1783004, '2015-05-10', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `sch_bond`
--

CREATE TABLE IF NOT EXISTS `sch_bond` (
  `BSch_Name` varchar(100) NOT NULL,
  `Int_Rt` decimal(50,2) NOT NULL,
  `Ag_Com` decimal(50,2) NOT NULL,
  `T_Dur` int(50) NOT NULL,
  `Min_Dur` int(50) NOT NULL,
  `Int_Typ` varchar(50) NOT NULL,
  `Intr_Mat` decimal(50,2) NOT NULL,
  PRIMARY KEY (`BSch_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_bond`
--

INSERT INTO `sch_bond` (`BSch_Name`, `Int_Rt`, `Ag_Com`, `T_Dur`, `Min_Dur`, `Int_Typ`, `Intr_Mat`) VALUES
('Triple Benefit', '10.00', '5.00', 36, 12, 'Compound', '7.00');

-- --------------------------------------------------------

--
-- Table structure for table `sch_mi`
--

CREATE TABLE IF NOT EXISTS `sch_mi` (
  `MI_Schn` varchar(100) NOT NULL,
  `MIInt_Rt` decimal(50,2) NOT NULL,
  `MIAg_Com` decimal(50,2) NOT NULL,
  `MIT_Dur` int(100) NOT NULL,
  `MIInt_Term` varchar(100) NOT NULL,
  `MIInt_Typ` varchar(100) NOT NULL,
  `MIPen` decimal(50,2) NOT NULL,
  PRIMARY KEY (`MI_Schn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_mi`
--

INSERT INTO `sch_mi` (`MI_Schn`, `MIInt_Rt`, `MIAg_Com`, `MIT_Dur`, `MIInt_Term`, `MIInt_Typ`, `MIPen`) VALUES
('Annual Benefit Scheme', '8.00', '5.00', 60, 'Annual', 'Simple', '1000.00'),
('Half Yearly Investment Scheme', '6.00', '3.00', 36, 'Half Yearly', 'Compund', '700.00'),
('Monthly Benefit Scheme', '7.00', '2.00', 12, 'Monthly', 'Simple', '300.00'),
('Quarterly Profit', '5.00', '2.50', 24, 'Quarterly', 'Compund', '500.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
