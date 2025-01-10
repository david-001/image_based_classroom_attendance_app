-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2016 at 01:24 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dakim_ecng_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendanceimage`
--

CREATE TABLE `attendanceimage` (
  `id` int(32) NOT NULL,
  `course` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendanceimage`
--

INSERT INTO `attendanceimage` (`id`, `course`, `date`, `path`) VALUES
(1, 'ECNG 3034', '2016-04-04 13:27:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 3034_2016-04-04_13-27-00.jpg'),
(2, 'ECNG 6706', '2016-04-06 10:27:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 6706_2016-04-06_10-27-00.jpg'),
(3, 'ECNG 7000', '2016-04-08 13:07:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-08_13-07-00.jpg'),
(4, 'ECNG 7000', '2016-04-08 13:10:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-08_13-10-00.jpg'),
(5, 'ECNG 7000', '2016-04-15 13:05:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-15_13-05-00.jpg'),
(6, 'ECNG 7000', '2016-04-22 13:00:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-22_13-00-00.jpg'),
(7, 'ECNG 7000', '2016-04-22 13:03:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-22_13-03-00.jpg'),
(8, 'ECNG 7000', '2016-04-22 13:05:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-22_13-05-00.jpg'),
(9, 'ECNG 7000', '2016-04-29 13:02:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-29_13-02-00.jpg'),
(10, 'ECNG 7000', '2016-04-29 13:06:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-29_13-06-00.jpg'),
(11, 'ECNG 7000', '2016-04-29 13:09:00', 'http://192.168.0.2:80/ECNG/AttendanceImages/ECNG 7000_2016-04-29_13-09-00.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `attendanceimagebk`
--

CREATE TABLE `attendanceimagebk` (
  `id` int(32) NOT NULL,
  `course` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendanceimagebk`
--

INSERT INTO `attendanceimagebk` (`id`, `course`, `date`, `time`, `path`) VALUES
(1, 'ECNG 7000', '2015-12-01', '13:27:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 7000_2015-12-01_13-27-00.jpg'),
(2, 'ECNG 6706', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-02-29.jpg'),
(3, 'ECNG 6706', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-02-29.jpg'),
(4, 'ECNG 7000', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-02-29.jpg'),
(5, 'ECNG 3034', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-02-29.jpg'),
(6, 'ECNG 3034', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-02-29.jpg'),
(7, 'ECNG 7000', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-02-29.jpg'),
(8, 'ECNG 7000', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-02-29.jpg'),
(9, 'ECNG 7000', '2016-02-29', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 7000_2016-02-29.jpg'),
(10, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01.jpg'),
(11, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01.jpg'),
(12, 'ECNG 7000', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 7000_2016-03-01.jpg'),
(13, 'ECNG 3034', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-03-01.jpg'),
(14, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01_22-09-51.jpg'),
(15, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01_22:15:11.jpg'),
(16, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01_22:15:11.jpg'),
(17, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01.jpg'),
(18, 'ECNG 3034', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-03-01.jpg'),
(19, 'ECNG 6706', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01_22-33-33.jpg'),
(20, 'ECNG 3034', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-03-01_22-34-30.jpg'),
(21, 'ECNG 3034', '2016-03-01', '00:00:00', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 3034_2016-03-01_22-34-30.jpg'),
(22, 'ECNG 6706', '2016-03-01', '00:00:22', 'http://192.168.0.4:80/ECNG/AttendanceImages/ECNG 6706_2016-03-01_22-41-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coursesinfo`
--

CREATE TABLE `coursesinfo` (
  `id` int(32) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursesinfo`
--

INSERT INTO `coursesinfo` (`id`, `course`, `student_id`, `first_name`, `last_name`) VALUES
(1, 'ECNG 7000', '000000001', 'Jane', 'Harper'),
(2, 'ECNG 7000', '000000003', 'Gordon', 'Richardson'),
(3, 'ECNG 7000', '000000004', 'Zane', 'Knight'),
(4, 'ECNG 7000', '000000015', 'Guillermo', 'Garcia'),
(5, 'ECNG 7000', '000000016', 'Randall', 'Walter'),
(6, 'ECNG 6706', '000000002', 'Samuel', 'Green'),
(7, 'ECNG 6706', '000000005', 'Tamara', 'Wilkerson'),
(8, 'ECNG 6706', '000000006', 'Kerry', 'Davis'),
(9, 'ECNG 6706', '000000007', 'Pete', 'Sanders'),
(10, 'ECNG 6706', '000000008', 'Brooke', 'Clarke'),
(11, 'ECNG 6706', '000000009', 'Iris', 'Henderson'),
(12, 'ECNG 6706', '000000013', 'Walter', 'Hayes'),
(13, 'ECNG 6706', '000000014', 'Vincent', 'Stewart'),
(14, 'ECNG 3034', '000000010', 'Gerard', 'Clayton'),
(15, 'ECNG 3034', '000000011', 'Alison', 'Brock'),
(16, 'ECNG 3034', '000000012', 'Benjamin', 'Carson');

-- --------------------------------------------------------

--
-- Table structure for table `ecng3034attendance`
--

CREATE TABLE `ecng3034attendance` (
  `id` int(32) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecng3034attendance`
--

INSERT INTO `ecng3034attendance` (`id`, `student_id`, `first_name`, `last_name`, `date`) VALUES
(1, '000000011', 'Alison', 'Brock', '2016-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `ecng6706attendance`
--

CREATE TABLE `ecng6706attendance` (
  `id` int(32) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecng6706attendance`
--

INSERT INTO `ecng6706attendance` (`id`, `student_id`, `first_name`, `last_name`, `date`) VALUES
(1, '000000007', 'Pete', 'Sanders', '2016-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `ecng7000attendance`
--

CREATE TABLE `ecng7000attendance` (
  `id` int(32) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecng7000attendance`
--

INSERT INTO `ecng7000attendance` (`id`, `student_id`, `first_name`, `last_name`, `date`) VALUES
(1, '000000015', 'Guillermo', 'Garcia', '2016-04-08'),
(2, '000000016', 'Randall', 'Walter', '2016-04-08'),
(3, '000000015', 'Guillermo', 'Garcia', '2016-04-15'),
(4, '000000015', 'Guillermo', 'Garcia', '2016-04-22'),
(5, '000000015', 'Guillermo', 'Garcia', '2016-04-29'),
(6, '000000016', 'Randall', 'Walter', '2016-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `facestable`
--

CREATE TABLE `facestable` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable`
--

INSERT INTO `facestable` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(3, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(4, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(5, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(6, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(7, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(8, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(9, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(10, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(11, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(12, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(13, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(14, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(15, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(16, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable1`
--

CREATE TABLE `facestable1` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable1`
--

INSERT INTO `facestable1` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.png'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.png'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.png'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.png'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.png'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.png'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-no-smile.png'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-smile.png'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-no-smile.png'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-smile.png'),
(11, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.png'),
(12, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.png'),
(13, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.png'),
(14, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.png'),
(15, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.png'),
(16, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.png'),
(17, 'person02-left-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-no-smile.png'),
(18, 'person02-left-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-smile.png'),
(19, 'person02-right-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-no-smile.png'),
(20, 'person02-right-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-smile.png'),
(21, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.png'),
(22, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.png'),
(23, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.png'),
(24, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.png'),
(25, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.png'),
(26, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.png'),
(27, 'person03-left-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-no-smile.png'),
(28, 'person03-left-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-smile.png'),
(29, 'person03-right-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-no-smile.png'),
(30, 'person03-right-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-smile.png'),
(31, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.png'),
(32, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.png'),
(33, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.png'),
(34, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.png'),
(35, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.png'),
(36, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.png'),
(37, 'person04-left-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-no-smile.png'),
(38, 'person04-left-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-smile.png'),
(39, 'person04-right-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-no-smile.png'),
(40, 'person04-right-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-smile.png'),
(41, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.png'),
(42, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.png'),
(43, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.png'),
(44, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.png'),
(45, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.png'),
(46, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.png'),
(47, 'person05-left-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-no-smile.png'),
(48, 'person05-left-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-smile.png'),
(49, 'person05-right-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-no-smile.png'),
(50, 'person05-right-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-smile.png'),
(51, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.png'),
(52, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.png'),
(53, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.png'),
(54, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.png'),
(55, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.png'),
(56, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.png'),
(57, 'person06-left-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-no-smile.png'),
(58, 'person06-left-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-smile.png'),
(59, 'person06-right-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-no-smile.png'),
(60, 'person06-right-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-smile.png'),
(61, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.png'),
(62, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.png'),
(63, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.png'),
(64, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.png'),
(65, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.png'),
(66, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.png'),
(67, 'person07-left-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-no-smile.png'),
(68, 'person07-left-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-smile.png'),
(69, 'person07-right-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-no-smile.png'),
(70, 'person07-right-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-smile.png'),
(71, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.png'),
(72, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.png'),
(73, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.png'),
(74, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.png'),
(75, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.png'),
(76, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.png'),
(77, 'person08-left-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-no-smile.png'),
(78, 'person08-left-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-smile.png'),
(79, 'person08-right-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-no-smile.png'),
(80, 'person08-right-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-smile.png'),
(81, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.png'),
(82, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.png'),
(83, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.png'),
(84, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.png'),
(85, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.png'),
(86, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.png'),
(87, 'person09-left-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-no-smile.png'),
(88, 'person09-left-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-smile.png'),
(89, 'person09-right-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-no-smile.png'),
(90, 'person09-right-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-smile.png'),
(91, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.png'),
(92, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.png'),
(93, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.png'),
(94, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.png'),
(95, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.png'),
(96, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.png'),
(97, 'person10-left-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-no-smile.png'),
(98, 'person10-left-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-smile.png'),
(99, 'person10-right-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-no-smile.png'),
(100, 'person10-right-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-smile.png'),
(101, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.png'),
(102, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.png'),
(103, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.png'),
(104, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.png'),
(105, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.png'),
(106, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.png'),
(107, 'person11-left-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-no-smile.png'),
(108, 'person11-left-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-smile.png'),
(109, 'person11-right-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-no-smile.png'),
(110, 'person11-right-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-smile.png'),
(111, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.png'),
(112, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.png'),
(113, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.png'),
(114, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.png'),
(115, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.png'),
(116, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.png'),
(117, 'person12-left-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-no-smile.png'),
(118, 'person12-left-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-smile.png'),
(119, 'person12-right-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-no-smile.png'),
(120, 'person12-right-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-smile.png'),
(121, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.png'),
(122, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.png'),
(123, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.png'),
(124, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.png'),
(125, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.png'),
(126, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.png'),
(127, 'person13-left-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-no-smile.png'),
(128, 'person13-left-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-smile.png'),
(129, 'person13-right-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-no-smile.png'),
(130, 'person13-right-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-smile.png'),
(131, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.png'),
(132, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.png'),
(133, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.png'),
(134, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.png'),
(135, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.png'),
(136, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.png'),
(137, 'person14-left-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-no-smile.png'),
(138, 'person14-left-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-smile.png'),
(139, 'person14-right-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-no-smile.png'),
(140, 'person14-right-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-smile.png'),
(141, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.png'),
(142, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.png'),
(143, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.png'),
(144, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.png'),
(145, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.png'),
(146, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.png'),
(147, 'person15-left-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-no-smile.png'),
(148, 'person15-left-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-smile.png'),
(149, 'person15-right-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-no-smile.png'),
(150, 'person15-right-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-smile.png'),
(151, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.png'),
(152, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.png'),
(153, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.png'),
(154, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.png'),
(155, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.png'),
(156, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.png'),
(157, 'person16-left-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-no-smile.png'),
(158, 'person16-left-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-smile.png'),
(159, 'person16-right-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-no-smile.png'),
(160, 'person16-right-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-smile.png');

-- --------------------------------------------------------

--
-- Table structure for table `facestable2`
--

CREATE TABLE `facestable2` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable2`
--

INSERT INTO `facestable2` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-front-smile-up.jpg'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-left-no-smile.jpg'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-left-smile.jpg'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-right-no-smile.jpg'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabaseCV/person01-right-smile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable_allfaces_bkup`
--

CREATE TABLE `facestable_allfaces_bkup` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable_allfaces_bkup`
--

INSERT INTO `facestable_allfaces_bkup` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.jpg'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-no-smile.jpg'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-smile.jpg'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-no-smile.jpg'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-smile.jpg'),
(11, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(12, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.jpg'),
(13, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.jpg'),
(14, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.jpg'),
(15, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.jpg'),
(16, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.jpg'),
(17, 'person02-left-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-no-smile.jpg'),
(18, 'person02-left-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-smile.jpg'),
(19, 'person02-right-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-no-smile.jpg'),
(20, 'person02-right-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-smile.jpg'),
(21, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(22, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.jpg'),
(23, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.jpg'),
(24, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.jpg'),
(25, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.jpg'),
(26, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.jpg'),
(27, 'person03-left-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-no-smile.jpg'),
(28, 'person03-left-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-smile.jpg'),
(29, 'person03-right-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-no-smile.jpg'),
(30, 'person03-right-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-smile.jpg'),
(31, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(32, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.jpg'),
(33, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.jpg'),
(34, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.jpg'),
(35, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.jpg'),
(36, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.jpg'),
(37, 'person04-left-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-no-smile.jpg'),
(38, 'person04-left-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-smile.jpg'),
(39, 'person04-right-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-no-smile.jpg'),
(40, 'person04-right-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-smile.jpg'),
(41, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(42, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.jpg'),
(43, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.jpg'),
(44, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.jpg'),
(45, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.jpg'),
(46, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.jpg'),
(47, 'person05-left-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-no-smile.jpg'),
(48, 'person05-left-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-smile.jpg'),
(49, 'person05-right-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-no-smile.jpg'),
(50, 'person05-right-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-smile.jpg'),
(51, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(52, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.jpg'),
(53, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.jpg'),
(54, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.jpg'),
(55, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.jpg'),
(56, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.jpg'),
(57, 'person06-left-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-no-smile.jpg'),
(58, 'person06-left-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-smile.jpg'),
(59, 'person06-right-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-no-smile.jpg'),
(60, 'person06-right-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-smile.jpg'),
(61, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(62, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.jpg'),
(63, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.jpg'),
(64, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.jpg'),
(65, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.jpg'),
(66, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.jpg'),
(67, 'person07-left-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-no-smile.jpg'),
(68, 'person07-left-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-smile.jpg'),
(69, 'person07-right-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-no-smile.jpg'),
(70, 'person07-right-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-smile.jpg'),
(71, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(72, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.jpg'),
(73, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.jpg'),
(74, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.jpg'),
(75, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.jpg'),
(76, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.jpg'),
(77, 'person08-left-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-no-smile.jpg'),
(78, 'person08-left-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-smile.jpg'),
(79, 'person08-right-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-no-smile.jpg'),
(80, 'person08-right-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-smile.jpg'),
(81, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(82, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.jpg'),
(83, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.jpg'),
(84, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.jpg'),
(85, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.jpg'),
(86, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.jpg'),
(87, 'person09-left-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-no-smile.jpg'),
(88, 'person09-left-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-smile.jpg'),
(89, 'person09-right-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-no-smile.jpg'),
(90, 'person09-right-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-smile.jpg'),
(91, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(92, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.jpg'),
(93, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.jpg'),
(94, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.jpg'),
(95, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.jpg'),
(96, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.jpg'),
(97, 'person10-left-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-no-smile.jpg'),
(98, 'person10-left-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-smile.jpg'),
(99, 'person10-right-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-no-smile.jpg'),
(100, 'person10-right-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-smile.jpg'),
(101, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(102, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.jpg'),
(103, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.jpg'),
(104, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.jpg'),
(105, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.jpg'),
(106, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.jpg'),
(107, 'person11-left-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-no-smile.jpg'),
(108, 'person11-left-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-smile.jpg'),
(109, 'person11-right-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-no-smile.jpg'),
(110, 'person11-right-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-smile.jpg'),
(111, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(112, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.jpg'),
(113, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.jpg'),
(114, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.jpg'),
(115, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.jpg'),
(116, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.jpg'),
(117, 'person12-left-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-no-smile.jpg'),
(118, 'person12-left-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-smile.jpg'),
(119, 'person12-right-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-no-smile.jpg'),
(120, 'person12-right-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-smile.jpg'),
(121, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(122, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.jpg'),
(123, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.jpg'),
(124, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.jpg'),
(125, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.jpg'),
(126, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.jpg'),
(127, 'person13-left-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-no-smile.jpg'),
(128, 'person13-left-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-smile.jpg'),
(129, 'person13-right-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-no-smile.jpg'),
(130, 'person13-right-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-smile.jpg'),
(131, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(132, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.jpg'),
(133, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.jpg'),
(134, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.jpg'),
(135, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.jpg'),
(136, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.jpg'),
(137, 'person14-left-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-no-smile.jpg'),
(138, 'person14-left-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-smile.jpg'),
(139, 'person14-right-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-no-smile.jpg'),
(140, 'person14-right-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-smile.jpg'),
(141, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(142, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.jpg'),
(143, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.jpg'),
(144, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.jpg'),
(145, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.jpg'),
(146, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.jpg'),
(147, 'person15-left-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-no-smile.jpg'),
(148, 'person15-left-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-smile.jpg'),
(149, 'person15-right-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-no-smile.jpg'),
(150, 'person15-right-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-smile.jpg'),
(151, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg'),
(152, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.jpg'),
(153, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.jpg'),
(154, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.jpg'),
(155, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.jpg'),
(156, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.jpg'),
(157, 'person16-left-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-no-smile.jpg'),
(158, 'person16-left-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-smile.jpg'),
(159, 'person16-right-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-no-smile.jpg'),
(160, 'person16-right-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-smile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable_allfaces_bkup1`
--

CREATE TABLE `facestable_allfaces_bkup1` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable_allfaces_bkup1`
--

INSERT INTO `facestable_allfaces_bkup1` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.jpg'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-no-smile.jpg'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-smile.jpg'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-no-smile.jpg'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-smile.jpg'),
(11, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(12, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.jpg'),
(13, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.jpg'),
(14, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.jpg'),
(15, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.jpg'),
(16, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.jpg'),
(17, 'person02-left-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-no-smile.jpg'),
(18, 'person02-left-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-smile.jpg'),
(19, 'person02-right-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-no-smile.jpg'),
(20, 'person02-right-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-smile.jpg'),
(21, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(22, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.jpg'),
(23, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.jpg'),
(24, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.jpg'),
(25, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.jpg'),
(26, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.jpg'),
(27, 'person03-left-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-no-smile.jpg'),
(28, 'person03-left-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-smile.jpg'),
(29, 'person03-right-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-no-smile.jpg'),
(30, 'person03-right-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-smile.jpg'),
(31, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(32, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.jpg'),
(33, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.jpg'),
(34, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.jpg'),
(35, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.jpg'),
(36, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.jpg'),
(37, 'person04-left-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-no-smile.jpg'),
(38, 'person04-left-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-smile.jpg'),
(39, 'person04-right-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-no-smile.jpg'),
(40, 'person04-right-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-smile.jpg'),
(41, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(42, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.jpg'),
(43, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.jpg'),
(44, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.jpg'),
(45, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.jpg'),
(46, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.jpg'),
(47, 'person05-left-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-no-smile.jpg'),
(48, 'person05-left-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-smile.jpg'),
(49, 'person05-right-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-no-smile.jpg'),
(50, 'person05-right-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-smile.jpg'),
(51, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(52, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.jpg'),
(53, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.jpg'),
(54, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.jpg'),
(55, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.jpg'),
(56, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.jpg'),
(57, 'person06-left-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-no-smile.jpg'),
(58, 'person06-left-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-smile.jpg'),
(59, 'person06-right-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-no-smile.jpg'),
(60, 'person06-right-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-smile.jpg'),
(61, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(62, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.jpg'),
(63, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.jpg'),
(64, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.jpg'),
(65, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.jpg'),
(66, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.jpg'),
(67, 'person07-left-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-no-smile.jpg'),
(68, 'person07-left-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-smile.jpg'),
(69, 'person07-right-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-no-smile.jpg'),
(70, 'person07-right-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-smile.jpg'),
(71, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(72, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.jpg'),
(73, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.jpg'),
(74, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.jpg'),
(75, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.jpg'),
(76, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.jpg'),
(77, 'person08-left-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-no-smile.jpg'),
(78, 'person08-left-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-smile.jpg'),
(79, 'person08-right-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-no-smile.jpg'),
(80, 'person08-right-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-smile.jpg'),
(81, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(82, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.jpg'),
(83, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.jpg'),
(84, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.jpg'),
(85, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.jpg'),
(86, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.jpg'),
(87, 'person09-left-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-no-smile.jpg'),
(88, 'person09-left-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-smile.jpg'),
(89, 'person09-right-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-no-smile.jpg'),
(90, 'person09-right-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-smile.jpg'),
(91, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(92, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.jpg'),
(93, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.jpg'),
(94, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.jpg'),
(95, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.jpg'),
(96, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.jpg'),
(97, 'person10-left-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-no-smile.jpg'),
(98, 'person10-left-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-smile.jpg'),
(99, 'person10-right-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-no-smile.jpg'),
(100, 'person10-right-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-smile.jpg'),
(101, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(102, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.jpg'),
(103, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.jpg'),
(104, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.jpg'),
(105, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.jpg'),
(106, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.jpg'),
(107, 'person11-left-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-no-smile.jpg'),
(108, 'person11-left-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-smile.jpg'),
(109, 'person11-right-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-no-smile.jpg'),
(110, 'person11-right-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-smile.jpg'),
(111, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(112, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.jpg'),
(113, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.jpg'),
(114, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.jpg'),
(115, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.jpg'),
(116, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.jpg'),
(117, 'person12-left-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-no-smile.jpg'),
(118, 'person12-left-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-smile.jpg'),
(119, 'person12-right-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-no-smile.jpg'),
(120, 'person12-right-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-smile.jpg'),
(121, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(122, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.jpg'),
(123, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.jpg'),
(124, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.jpg'),
(125, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.jpg'),
(126, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.jpg'),
(127, 'person13-left-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-no-smile.jpg'),
(128, 'person13-left-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-smile.jpg'),
(129, 'person13-right-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-no-smile.jpg'),
(130, 'person13-right-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-smile.jpg'),
(131, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(132, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.jpg'),
(133, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.jpg'),
(134, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.jpg'),
(135, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.jpg'),
(136, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.jpg'),
(137, 'person14-left-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-no-smile.jpg'),
(138, 'person14-left-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-smile.jpg'),
(139, 'person14-right-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-no-smile.jpg'),
(140, 'person14-right-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-smile.jpg'),
(141, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(142, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.jpg'),
(143, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.jpg'),
(144, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.jpg'),
(145, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.jpg'),
(146, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.jpg'),
(147, 'person15-left-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-no-smile.jpg'),
(148, 'person15-left-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-smile.jpg'),
(149, 'person15-right-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-no-smile.jpg'),
(150, 'person15-right-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-smile.jpg'),
(151, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg'),
(152, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.jpg'),
(153, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.jpg'),
(154, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.jpg'),
(155, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.jpg'),
(156, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.jpg'),
(157, 'person16-left-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-no-smile.jpg'),
(158, 'person16-left-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-smile.jpg'),
(159, 'person16-right-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-no-smile.jpg'),
(160, 'person16-right-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-smile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable_noside_views`
--

CREATE TABLE `facestable_noside_views` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable_noside_views`
--

INSERT INTO `facestable_noside_views` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.jpg'),
(7, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(8, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.jpg'),
(9, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.jpg'),
(10, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.jpg'),
(11, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.jpg'),
(12, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.jpg'),
(13, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(14, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.jpg'),
(15, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.jpg'),
(16, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.jpg'),
(17, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.jpg'),
(18, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.jpg'),
(19, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(20, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.jpg'),
(21, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.jpg'),
(22, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.jpg'),
(23, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.jpg'),
(24, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.jpg'),
(25, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(26, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.jpg'),
(27, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.jpg'),
(28, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.jpg'),
(29, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.jpg'),
(30, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.jpg'),
(31, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(32, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.jpg'),
(33, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.jpg'),
(34, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.jpg'),
(35, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.jpg'),
(36, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.jpg'),
(37, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(38, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.jpg'),
(39, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.jpg'),
(40, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.jpg'),
(41, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.jpg'),
(42, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.jpg'),
(43, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(44, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.jpg'),
(45, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.jpg'),
(46, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.jpg'),
(47, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.jpg'),
(48, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.jpg'),
(49, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(50, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.jpg'),
(51, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.jpg'),
(52, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.jpg'),
(53, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.jpg'),
(54, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.jpg'),
(55, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(56, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.jpg'),
(57, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.jpg'),
(58, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.jpg'),
(59, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.jpg'),
(60, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.jpg'),
(61, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(62, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.jpg'),
(63, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.jpg'),
(64, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.jpg'),
(65, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.jpg'),
(66, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.jpg'),
(67, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(68, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.jpg'),
(69, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.jpg'),
(70, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.jpg'),
(71, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.jpg'),
(72, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.jpg'),
(73, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(74, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.jpg'),
(75, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.jpg'),
(76, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.jpg'),
(77, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.jpg'),
(78, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.jpg'),
(79, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(80, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.jpg'),
(81, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.jpg'),
(82, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.jpg'),
(83, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.jpg'),
(84, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.jpg'),
(85, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(86, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.jpg'),
(87, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.jpg'),
(88, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.jpg'),
(89, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.jpg'),
(90, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.jpg'),
(91, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg'),
(92, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.jpg'),
(93, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.jpg'),
(94, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.jpg'),
(95, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.jpg'),
(96, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable_one_view`
--

CREATE TABLE `facestable_one_view` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable_one_view`
--

INSERT INTO `facestable_one_view` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.jpg'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-no-smile.jpg'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-smile.jpg'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-no-smile.jpg'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-smile.jpg'),
(11, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(12, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.jpg'),
(13, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.jpg'),
(14, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.jpg'),
(15, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.jpg'),
(16, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.jpg'),
(17, 'person02-left-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-no-smile.jpg'),
(18, 'person02-left-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-smile.jpg'),
(19, 'person02-right-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-no-smile.jpg'),
(20, 'person02-right-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-smile.jpg'),
(21, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(22, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.jpg'),
(23, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.jpg'),
(24, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.jpg'),
(25, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.jpg'),
(26, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.jpg'),
(27, 'person03-left-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-no-smile.jpg'),
(28, 'person03-left-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-smile.jpg'),
(29, 'person03-right-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-no-smile.jpg'),
(30, 'person03-right-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-smile.jpg'),
(31, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(32, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.jpg'),
(33, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.jpg'),
(34, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.jpg'),
(35, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.jpg'),
(36, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.jpg'),
(37, 'person04-left-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-no-smile.jpg'),
(38, 'person04-left-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-smile.jpg'),
(39, 'person04-right-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-no-smile.jpg'),
(40, 'person04-right-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-smile.jpg'),
(41, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(42, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.jpg'),
(43, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.jpg'),
(44, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.jpg'),
(45, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.jpg'),
(46, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.jpg'),
(47, 'person05-left-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-no-smile.jpg'),
(48, 'person05-left-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-smile.jpg'),
(49, 'person05-right-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-no-smile.jpg'),
(50, 'person05-right-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-smile.jpg'),
(51, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(52, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.jpg'),
(53, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.jpg'),
(54, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.jpg'),
(55, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.jpg'),
(56, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.jpg'),
(57, 'person06-left-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-no-smile.jpg'),
(58, 'person06-left-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-smile.jpg'),
(59, 'person06-right-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-no-smile.jpg'),
(60, 'person06-right-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-smile.jpg'),
(61, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(62, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.jpg'),
(63, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.jpg'),
(64, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.jpg'),
(65, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.jpg'),
(66, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.jpg'),
(67, 'person07-left-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-no-smile.jpg'),
(68, 'person07-left-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-smile.jpg'),
(69, 'person07-right-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-no-smile.jpg'),
(70, 'person07-right-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-smile.jpg'),
(71, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(72, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.jpg'),
(73, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.jpg'),
(74, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.jpg'),
(75, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.jpg'),
(76, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.jpg'),
(77, 'person08-left-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-no-smile.jpg'),
(78, 'person08-left-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-smile.jpg'),
(79, 'person08-right-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-no-smile.jpg'),
(80, 'person08-right-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-smile.jpg'),
(81, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(82, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.jpg'),
(83, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.jpg'),
(84, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.jpg'),
(85, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.jpg'),
(86, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.jpg'),
(87, 'person09-left-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-no-smile.jpg'),
(88, 'person09-left-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-smile.jpg'),
(89, 'person09-right-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-no-smile.jpg'),
(90, 'person09-right-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-smile.jpg'),
(91, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(92, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.jpg'),
(93, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.jpg'),
(94, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.jpg'),
(95, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.jpg'),
(96, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.jpg'),
(97, 'person10-left-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-no-smile.jpg'),
(98, 'person10-left-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-smile.jpg'),
(99, 'person10-right-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-no-smile.jpg'),
(100, 'person10-right-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-smile.jpg'),
(101, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(102, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.jpg'),
(103, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.jpg'),
(104, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.jpg'),
(105, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.jpg'),
(106, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.jpg'),
(107, 'person11-left-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-no-smile.jpg'),
(108, 'person11-left-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-smile.jpg'),
(109, 'person11-right-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-no-smile.jpg'),
(110, 'person11-right-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-smile.jpg'),
(111, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(112, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.jpg'),
(113, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.jpg'),
(114, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.jpg'),
(115, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.jpg'),
(116, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.jpg'),
(117, 'person12-left-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-no-smile.jpg'),
(118, 'person12-left-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-smile.jpg'),
(119, 'person12-right-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-no-smile.jpg'),
(120, 'person12-right-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-smile.jpg'),
(121, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(122, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.jpg'),
(123, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.jpg'),
(124, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.jpg'),
(125, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.jpg'),
(126, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.jpg'),
(127, 'person13-left-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-no-smile.jpg'),
(128, 'person13-left-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-smile.jpg'),
(129, 'person13-right-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-no-smile.jpg'),
(130, 'person13-right-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-smile.jpg'),
(131, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(132, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.jpg'),
(133, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.jpg'),
(134, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.jpg'),
(135, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.jpg'),
(136, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.jpg'),
(137, 'person14-left-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-no-smile.jpg'),
(138, 'person14-left-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-smile.jpg'),
(139, 'person14-right-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-no-smile.jpg'),
(140, 'person14-right-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-smile.jpg'),
(141, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(142, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.jpg'),
(143, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.jpg'),
(144, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.jpg'),
(145, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.jpg'),
(146, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.jpg'),
(147, 'person15-left-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-no-smile.jpg'),
(148, 'person15-left-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-smile.jpg'),
(149, 'person15-right-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-no-smile.jpg'),
(150, 'person15-right-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-smile.jpg'),
(151, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg'),
(152, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.jpg'),
(153, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.jpg'),
(154, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.jpg'),
(155, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.jpg'),
(156, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.jpg'),
(157, 'person16-left-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-no-smile.jpg'),
(158, 'person16-left-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-smile.jpg'),
(159, 'person16-right-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-no-smile.jpg'),
(160, 'person16-right-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-smile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facestable_one_view_old`
--

CREATE TABLE `facestable_one_view_old` (
  `id` int(32) NOT NULL,
  `img_name` varchar(1000) NOT NULL,
  `student_id` varchar(1000) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `img_path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facestable_one_view_old`
--

INSERT INTO `facestable_one_view_old` (`id`, `img_name`, `student_id`, `first_name`, `last_name`, `img_path`) VALUES
(1, 'person01-front-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile.jpg'),
(2, 'person01-front-no-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-down.jpg'),
(3, 'person01-front-no-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-no-smile-up.jpg'),
(4, 'person01-front-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile.jpg'),
(5, 'person01-front-smile-down', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-down.jpg'),
(6, 'person01-front-smile-up', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-front-smile-up.jpg'),
(7, 'person01-left-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-no-smile.jpg'),
(8, 'person01-left-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-left-smile.jpg'),
(9, 'person01-right-no-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-no-smile.jpg'),
(10, 'person01-right-smile', '000000001', 'Jane', 'Harper', 'http://localhost/ECNG/FaceDatabase/person01-right-smile.jpg'),
(11, 'person02-front-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile.jpg'),
(12, 'person02-front-no-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-down.jpg'),
(13, 'person02-front-no-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-no-smile-up.jpg'),
(14, 'person02-front-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile.jpg'),
(15, 'person02-front-smile-down', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-down.jpg'),
(16, 'person02-front-smile-up', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-front-smile-up.jpg'),
(17, 'person02-left-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-no-smile.jpg'),
(18, 'person02-left-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-left-smile.jpg'),
(19, 'person02-right-no-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-no-smile.jpg'),
(20, 'person02-right-smile', '000000002', 'Samuel', 'Green', 'http://localhost/ECNG/FaceDatabase/person02-right-smile.jpg'),
(21, 'person03-front-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile.jpg'),
(22, 'person03-front-no-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-down.jpg'),
(23, 'person03-front-no-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-no-smile-up.jpg'),
(24, 'person03-front-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile.jpg'),
(25, 'person03-front-smile-down', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-down.jpg'),
(26, 'person03-front-smile-up', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-front-smile-up.jpg'),
(27, 'person03-left-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-no-smile.jpg'),
(28, 'person03-left-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-left-smile.jpg'),
(29, 'person03-right-no-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-no-smile.jpg'),
(30, 'person03-right-smile', '000000003', 'Gordon', 'Richardson', 'http://localhost/ECNG/FaceDatabase/person03-right-smile.jpg'),
(31, 'person04-front-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile.jpg'),
(32, 'person04-front-no-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-down.jpg'),
(33, 'person04-front-no-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-no-smile-up.jpg'),
(34, 'person04-front-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile.jpg'),
(35, 'person04-front-smile-down', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-down.jpg'),
(36, 'person04-front-smile-up', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-front-smile-up.jpg'),
(37, 'person04-left-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-no-smile.jpg'),
(38, 'person04-left-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-left-smile.jpg'),
(39, 'person04-right-no-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-no-smile.jpg'),
(40, 'person04-right-smile', '000000004', 'Zane', 'Knight', 'http://localhost/ECNG/FaceDatabase/person04-right-smile.jpg'),
(41, 'person05-front-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile.jpg'),
(42, 'person05-front-no-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-down.jpg'),
(43, 'person05-front-no-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-no-smile-up.jpg'),
(44, 'person05-front-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile.jpg'),
(45, 'person05-front-smile-down', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-down.jpg'),
(46, 'person05-front-smile-up', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-front-smile-up.jpg'),
(47, 'person05-left-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-no-smile.jpg'),
(48, 'person05-left-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-left-smile.jpg'),
(49, 'person05-right-no-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-no-smile.jpg'),
(50, 'person05-right-smile', '000000005', 'Tamara', 'Wilkerson', 'http://localhost/ECNG/FaceDatabase/person05-right-smile.jpg'),
(51, 'person06-front-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile.jpg'),
(52, 'person06-front-no-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-down.jpg'),
(53, 'person06-front-no-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-no-smile-up.jpg'),
(54, 'person06-front-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile.jpg'),
(55, 'person06-front-smile-down', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-down.jpg'),
(56, 'person06-front-smile-up', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-front-smile-up.jpg'),
(57, 'person06-left-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-no-smile.jpg'),
(58, 'person06-left-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-left-smile.jpg'),
(59, 'person06-right-no-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-no-smile.jpg'),
(60, 'person06-right-smile', '000000006', 'Kerry', 'Davis', 'http://localhost/ECNG/FaceDatabase/person06-right-smile.jpg'),
(61, 'person07-front-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile.jpg'),
(62, 'person07-front-no-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-down.jpg'),
(63, 'person07-front-no-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-no-smile-up.jpg'),
(64, 'person07-front-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile.jpg'),
(65, 'person07-front-smile-down', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-down.jpg'),
(66, 'person07-front-smile-up', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-front-smile-up.jpg'),
(67, 'person07-left-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-no-smile.jpg'),
(68, 'person07-left-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-left-smile.jpg'),
(69, 'person07-right-no-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-no-smile.jpg'),
(70, 'person07-right-smile', '000000007', 'Pete', 'Sanders', 'http://localhost/ECNG/FaceDatabase/person07-right-smile.jpg'),
(71, 'person08-front-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile.jpg'),
(72, 'person08-front-no-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-down.jpg'),
(73, 'person08-front-no-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-no-smile-up.jpg'),
(74, 'person08-front-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile.jpg'),
(75, 'person08-front-smile-down', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-down.jpg'),
(76, 'person08-front-smile-up', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-front-smile-up.jpg'),
(77, 'person08-left-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-no-smile.jpg'),
(78, 'person08-left-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-left-smile.jpg'),
(79, 'person08-right-no-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-no-smile.jpg'),
(80, 'person08-right-smile', '000000008', 'Brooke', 'Clarke', 'http://localhost/ECNG/FaceDatabase/person08-right-smile.jpg'),
(81, 'person09-front-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile.jpg'),
(82, 'person09-front-no-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-down.jpg'),
(83, 'person09-front-no-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-no-smile-up.jpg'),
(84, 'person09-front-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile.jpg'),
(85, 'person09-front-smile-down', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-down.jpg'),
(86, 'person09-front-smile-up', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-front-smile-up.jpg'),
(87, 'person09-left-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-no-smile.jpg'),
(88, 'person09-left-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-left-smile.jpg'),
(89, 'person09-right-no-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-no-smile.jpg'),
(90, 'person09-right-smile', '000000009', 'Iris', 'Henderson', 'http://localhost/ECNG/FaceDatabase/person09-right-smile.jpg'),
(91, 'person10-front-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile.jpg'),
(92, 'person10-front-no-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-down.jpg'),
(93, 'person10-front-no-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-no-smile-up.jpg'),
(94, 'person10-front-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile.jpg'),
(95, 'person10-front-smile-down', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-down.jpg'),
(96, 'person10-front-smile-up', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-front-smile-up.jpg'),
(97, 'person10-left-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-no-smile.jpg'),
(98, 'person10-left-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-left-smile.jpg'),
(99, 'person10-right-no-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-no-smile.jpg'),
(100, 'person10-right-smile', '000000010', 'Gerard', 'Clayton', 'http://localhost/ECNG/FaceDatabase/person10-right-smile.jpg'),
(101, 'person11-front-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile.jpg'),
(102, 'person11-front-no-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-down.jpg'),
(103, 'person11-front-no-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-no-smile-up.jpg'),
(104, 'person11-front-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile.jpg'),
(105, 'person11-front-smile-down', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-down.jpg'),
(106, 'person11-front-smile-up', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-front-smile-up.jpg'),
(107, 'person11-left-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-no-smile.jpg'),
(108, 'person11-left-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-left-smile.jpg'),
(109, 'person11-right-no-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-no-smile.jpg'),
(110, 'person11-right-smile', '000000011', 'Alison', 'Brock', 'http://localhost/ECNG/FaceDatabase/person11-right-smile.jpg'),
(111, 'person12-front-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile.jpg'),
(112, 'person12-front-no-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-down.jpg'),
(113, 'person12-front-no-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-no-smile-up.jpg'),
(114, 'person12-front-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile.jpg'),
(115, 'person12-front-smile-down', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-down.jpg'),
(116, 'person12-front-smile-up', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-front-smile-up.jpg'),
(117, 'person12-left-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-no-smile.jpg'),
(118, 'person12-left-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-left-smile.jpg'),
(119, 'person12-right-no-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-no-smile.jpg'),
(120, 'person12-right-smile', '000000012', 'Benjamin', 'Carson', 'http://localhost/ECNG/FaceDatabase/person12-right-smile.jpg'),
(121, 'person13-front-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile.jpg'),
(122, 'person13-front-no-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-down.jpg'),
(123, 'person13-front-no-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-no-smile-up.jpg'),
(124, 'person13-front-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile.jpg'),
(125, 'person13-front-smile-down', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-down.jpg'),
(126, 'person13-front-smile-up', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-front-smile-up.jpg'),
(127, 'person13-left-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-no-smile.jpg'),
(128, 'person13-left-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-left-smile.jpg'),
(129, 'person13-right-no-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-no-smile.jpg'),
(130, 'person13-right-smile', '000000013', 'Walter', 'Hayes', 'http://localhost/ECNG/FaceDatabase/person13-right-smile.jpg'),
(131, 'person14-front-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile.jpg'),
(132, 'person14-front-no-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-down.jpg'),
(133, 'person14-front-no-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-no-smile-up.jpg'),
(134, 'person14-front-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile.jpg'),
(135, 'person14-front-smile-down', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-down.jpg'),
(136, 'person14-front-smile-up', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-front-smile-up.jpg'),
(137, 'person14-left-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-no-smile.jpg'),
(138, 'person14-left-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-left-smile.jpg'),
(139, 'person14-right-no-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-no-smile.jpg'),
(140, 'person14-right-smile', '000000014', 'Vincent', 'Stewart', 'http://localhost/ECNG/FaceDatabase/person14-right-smile.jpg'),
(141, 'person15-front-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile.jpg'),
(142, 'person15-front-no-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-down.jpg'),
(143, 'person15-front-no-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-no-smile-up.jpg'),
(144, 'person15-front-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile.jpg'),
(145, 'person15-front-smile-down', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-down.jpg'),
(146, 'person15-front-smile-up', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-front-smile-up.jpg'),
(147, 'person15-left-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-no-smile.jpg'),
(148, 'person15-left-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-left-smile.jpg'),
(149, 'person15-right-no-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-no-smile.jpg'),
(150, 'person15-right-smile', '000000015', 'Guillermo', 'Garcia', 'http://localhost/ECNG/FaceDatabase/person15-right-smile.jpg'),
(151, 'person16-front-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile.jpg'),
(152, 'person16-front-no-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-down.jpg'),
(153, 'person16-front-no-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-no-smile-up.jpg'),
(154, 'person16-front-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile.jpg'),
(155, 'person16-front-smile-down', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-down.jpg'),
(156, 'person16-front-smile-up', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-front-smile-up.jpg'),
(157, 'person16-left-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-no-smile.jpg'),
(158, 'person16-left-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-left-smile.jpg'),
(159, 'person16-right-no-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-no-smile.jpg'),
(160, 'person16-right-smile', '000000016', 'Randall', 'Walter', 'http://localhost/ECNG/FaceDatabase/person16-right-smile.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendanceimage`
--
ALTER TABLE `attendanceimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendanceimagebk`
--
ALTER TABLE `attendanceimagebk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursesinfo`
--
ALTER TABLE `coursesinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecng3034attendance`
--
ALTER TABLE `ecng3034attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecng6706attendance`
--
ALTER TABLE `ecng6706attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecng7000attendance`
--
ALTER TABLE `ecng7000attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable`
--
ALTER TABLE `facestable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable1`
--
ALTER TABLE `facestable1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable2`
--
ALTER TABLE `facestable2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable_allfaces_bkup`
--
ALTER TABLE `facestable_allfaces_bkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable_allfaces_bkup1`
--
ALTER TABLE `facestable_allfaces_bkup1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable_noside_views`
--
ALTER TABLE `facestable_noside_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable_one_view`
--
ALTER TABLE `facestable_one_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facestable_one_view_old`
--
ALTER TABLE `facestable_one_view_old`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendanceimage`
--
ALTER TABLE `attendanceimage`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `attendanceimagebk`
--
ALTER TABLE `attendanceimagebk`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `coursesinfo`
--
ALTER TABLE `coursesinfo`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ecng3034attendance`
--
ALTER TABLE `ecng3034attendance`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecng6706attendance`
--
ALTER TABLE `ecng6706attendance`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecng7000attendance`
--
ALTER TABLE `ecng7000attendance`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `facestable`
--
ALTER TABLE `facestable`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `facestable1`
--
ALTER TABLE `facestable1`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `facestable2`
--
ALTER TABLE `facestable2`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `facestable_allfaces_bkup`
--
ALTER TABLE `facestable_allfaces_bkup`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `facestable_allfaces_bkup1`
--
ALTER TABLE `facestable_allfaces_bkup1`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `facestable_noside_views`
--
ALTER TABLE `facestable_noside_views`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `facestable_one_view`
--
ALTER TABLE `facestable_one_view`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `facestable_one_view_old`
--
ALTER TABLE `facestable_one_view_old`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
