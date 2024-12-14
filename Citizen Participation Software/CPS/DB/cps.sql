-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2024 at 09:16 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '08-05-2020 07:23:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
CREATE TABLE IF NOT EXISTS `category_list` (
  `id` int NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(1, 'President'),
(3, 'Vice Presindent'),
(4, 'Officer');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

DROP TABLE IF EXISTS `complaintremark`;
CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaintNumber` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

DROP TABLE IF EXISTS `discussion`;
CREATE TABLE IF NOT EXISTS `discussion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gov_id`
--

DROP TABLE IF EXISTS `gov_id`;
CREATE TABLE IF NOT EXISTS `gov_id` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FirstName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LastName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gender` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Dob` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `Religion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ProfilePic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gov_id`
--

INSERT INTO `gov_id` (`ID`, `UserID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Gender`, `Dob`, `CourseID`, `Religion`, `Address`, `Password`, `ProfilePic`, `JoiningDate`) VALUES
(1, 'Universal101', 'Test', 'Sample', 8956231478, 'testl@gmail.com', 'unisex', '1984-01-05', 1, 'christian', 'J-125, Mohan Road Jakirpur Merrut', '202cb962ac59075b964b07152d234b70', '779b7513263ef185b6d094af290ef5401595083511.png', '2024-12-13 05:47:02'),
(3, 'Emp103', 'Test', 'Sample', 6544654654, 'test@gmail.com', 'Male', '1990-07-05', 3, 'Hindu', 'B-234 Nehru Nagar New Delhi', '202cb962ac59075b964b07152d234b70', '779b7513263ef185b6d094af290ef5401595247971.png', '2023-05-20 10:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryid` int NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Nambeye', 'admin', 977421111, 'nambeyeelyn5@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

DROP TABLE IF EXISTS `tblcomplaints`;
CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `category` int NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE IF NOT EXISTS `tblnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` mediumtext,
  `ClassId` int DEFAULT NULL,
  `NoticeMsg` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'meeting', 3, 'Meet the admin for seeing copies of membership cards', '2024-01-19 06:35:58'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 19:03:43'),
(6, 'reported problems', 4, 'check reported problems', '2024-05-08 19:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

DROP TABLE IF EXISTS `tblpublicnotice`;
CREATE TABLE IF NOT EXISTS `tblpublicnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(3, 'Testing 1', 'This notice is for testing', '2024-05-08 09:32:26'),
(4, 'Testing 2', 'This notice is for testing', '2024-05-08 09:35:34'),
(5, 'Testing 3', 'This notice is for testing', '2024-05-08 10:25:08'),
(6, 'Testing 4', 'This notice is for testing', '2024-05-08 10:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

DROP TABLE IF EXISTS `tbl_task`;
CREATE TABLE IF NOT EXISTS `tbl_task` (
  `tbl_task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) NOT NULL,
  `task_priority` varchar(255) NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `date_updated` date NOT NULL,
  PRIMARY KEY (`tbl_task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`tbl_task_id`, `task_name`, `task_priority`, `task_status`, `date_added`, `date_updated`) VALUES
(1, 'Sample', 'Low', 'Pending', '2024-07-12', '2024-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `phone`, `email`, `usertype`, `password`) VALUES
(1, 'Admin', 967678772, 'admin@gmail.com', 'admin', '1234'),
(9, 'Council', 974994042, 'student@gmail.com ', 'student', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 12:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 12:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 12:16:30', '', 1),
(0, 2, 'jonathansimenda@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-13 08:23:37', '13-12-2024 01:53:53 PM', 1),
(0, 2, 'jonathansimenda@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-13 08:41:15', '', 1),
(0, 2, 'jonathansimenda@gmail.com', 0x3a3a3100000000000000000000000000, '2024-12-13 08:41:45', '', 1),
(0, 4, 'steve@webdamn.com', 0x3a3a3100000000000000000000000000, '2024-12-13 08:50:20', '13-12-2024 02:20:41 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'John Smith', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', 9999999999, NULL, NULL, NULL, NULL, NULL, '2020-05-08 14:10:50', '2020-05-08 14:16:22', 1),
(2, 'jonathan simenda', 'jonathansimenda@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 967678772, NULL, NULL, NULL, NULL, NULL, '2024-12-11 07:05:43', '0000-00-00 00:00:00', 1),
(4, 'chunda', 'steve@webdamn.com', '81dc9bdb52d04dc20036dbd8313ed055', 974994042, NULL, NULL, NULL, NULL, NULL, '2024-12-13 08:49:23', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

DROP TABLE IF EXISTS `user_productivity`;
CREATE TABLE IF NOT EXISTS `user_productivity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `voting_opt_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4),
(0, 1, 1, 3, 8),
(0, 1, 3, 5, 8),
(0, 1, 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `voting_cat_settings`
--

DROP TABLE IF EXISTS `voting_cat_settings`;
CREATE TABLE IF NOT EXISTS `voting_cat_settings` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `max_selection` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

DROP TABLE IF EXISTS `voting_list`;
CREATE TABLE IF NOT EXISTS `voting_list` (
  `id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(1, 'Sample Voting', 'Sample only', 1),
(3, 'Test Voting', 'Test Only', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

DROP TABLE IF EXISTS `voting_opt`;
CREATE TABLE IF NOT EXISTS `voting_opt` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(1, 1, 1, '1600398180_no-image-available.png', 'James Smith'),
(5, 1, 3, '1600415520_avatar.jpg', 'George Ngosa'),
(6, 1, 4, '1600400340_no-image-available.png', 'Cadidate 1'),
(7, 1, 4, '1600400340_no-image-available.png', 'Cadidate 2'),
(8, 1, 4, '1600400340_no-image-available.png', 'Cadidate 3'),
(9, 1, 4, '1600400520_no-image-available.png', 'Cadidate  4'),
(10, 1, 4, '1600400640_no-image-available.png', 'Cadidate 5'),
(11, 1, 4, '1600400400_no-image-available.png', 'Cadidate 6'),
(12, 1, 3, '1600415520_no-image-available.png', 'Claire mwansa');

-- --------------------------------------------------------

--
-- Table structure for table `v_users`
--

DROP TABLE IF EXISTS `v_users`;
CREATE TABLE IF NOT EXISTS `v_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1+admin , 2 = users',
  `contactNo` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `v_users`
--

INSERT INTO `v_users` (`id`, `name`, `username`, `password`, `type`, `contactNo`, `status`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1, NULL, NULL),
(3, 'Voter 2', 'voter2', 'voter2', 2, NULL, NULL),
(4, 'Voter 1', 'voter1', 'voter1', 2, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
