-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 12:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`email`, `password`) VALUES
('admin@gmail.com', '123'),
('admin1@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `coursetable`
--

CREATE TABLE `coursetable` (
  `course_id` varchar(200) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `seat_limit` int(200) NOT NULL,
  `seat_available` int(200) NOT NULL,
  `tuitionfee` int(200) NOT NULL,
  `examfee` int(200) NOT NULL,
  `totalfee` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursetable`
--

INSERT INTO `coursetable` (`course_id`, `semester`, `course_name`, `seat_limit`, `seat_available`, `tuitionfee`, `examfee`, `totalfee`) VALUES
('1', 'Beginner', 'Graphics Designing', 80, 60, 10000, 400, 0),
('10', 'Beginner', 'DOM', 50, 0, 12000, 500, 0),
('100', 'Advance', 'Artificial Intelligence', 10, 0, 50000, 5000, 0),
('101', 'Beginner', 'Digital Marketing', 50, 25, 3500, 500, 0),
('11', '2nd', 'Introduction to Information and Communication Technologies', 12, 11, 4000, 1000, 0),
('12', '2nd', 'Object Oriented Programming', 12, 12, 2000, 1000, 0),
('13', '2nd', 'Communication and Presentation Skills', 12, 12, 4000, 1000, 0),
('130', 'Advance', 'Cyber Security', 24, 12, 35000, 5000, 0),
('131', 'Advance', 'Mechine Learning', 30, 15, 50000, 5000, 0),
('14', '2nd', 'Digital Logic Design', 12, 12, 4000, 1000, 0),
('15', '2nd', 'Data Structures and Algorithms', 24, 24, 4000, 1000, 0),
('16', '2nd', 'Discrete Mathematics', 12, 12, 4000, 1000, 0),
('17', '3rd', 'Database Systems', 12, 12, 4000, 1000, 0),
('18', '3rd', 'Computer Organization and Assembly Language', 12, 11, 2000, 1000, 0),
('19', '3rd', 'Technical and Business Writing', 12, 11, 4000, 1000, 0),
('2', 'Beginner', 'Website Designing', 22, 21, 15000, 500, 0),
('20', '3rd', 'Operating Systems', 12, 12, 2000, 1000, 0),
('21', '3rd', 'Software Engineering', 12, 12, 4000, 1000, 0),
('210', 'Intermediate', 'Android Development', 20, 0, 20000, 1500, 0),
('22', '3rd', 'Computer Networks', 12, 12, 2000, 1000, 0),
('23', '3rd', 'Professional Practices in IT', 12, 12, 4000, 1000, 0),
('24', '3rd', 'Artificial Intelligence', 12, 12, 4000, 1000, 0),
('25', '4th', 'Computer Architecture', 12, 12, 4000, 1000, 0),
('26', '4th', 'Software Project Management', 12, 12, 2000, 1000, 0),
('27', '4th', 'Human-Computer Interaction', 12, 12, 4000, 1000, 0),
('3', '1st', 'Programming Fundamentals', 24, 23, 2000, 1000, 0),
('30', '4th', 'Compiler Construction', 12, 12, 4000, 1000, 0),
('302', 'Intermediate', 'Web Development', 30, 0, 15000, 1000, 0),
('303', 'Intermediate', 'Desktop Applications', 15, 0, 16000, 1000, 0),
('32', '4th', 'Distributed Computing Systems', 12, 12, 4000, 1000, 0),
('33', '5th', 'Design and Analysis of Algorithms', 12, 12, 4000, 1000, 0),
('34', '5th', 'Entrepreneurship', 12, 12, 2000, 1000, 0),
('35', '5th', 'Cybersecurity', 24, 24, 15000, 1000, 0),
('36', '5th', 'Internet of Things (IoT)', 12, 12, 2000, 1000, 0),
('37', '5th', 'Advanced Database Management Systems', 12, 12, 4000, 1000, 0),
('4', '1st', 'Calculus', 12, 12, 4000, 1000, 0),
('44', '6th', 'Final Year Project I', 12, 12, 14000, 1000, 0),
('5', '1st', 'Introduction to Computer Science', 12, 12, 4000, 1000, 0),
('51', '7th', 'Parallel and Distributed Computing', 12, 12, 4000, 1000, 0),
('55', '7th', 'Final Year Project II', 12, 12, 14000, 1000, 0),
('56', '7th', 'Blockchain Technology', 18, 18, 2000, 1000, 0),
('57', '8th', 'IOT', 10, 0, 5500, 100, 0),
('6', '1st', 'Basics of Computer Applications', 12, 12, 2000, 1000, 0),
('7', '1st', 'Communicative English', 20, 20, 4000, 1000, 0),
('8', '1st', 'Islamic Studies / Ethics', 26, 26, 4000, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `examtype`
--

CREATE TABLE `examtype` (
  `status` int(200) NOT NULL,
  `exam_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examtype`
--

INSERT INTO `examtype` (`status`, `exam_type`) VALUES
(1, 'Recourse'),
(2, 'Regular'),
(3, 'Retake');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `roll_no` int(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `trxid` varchar(200) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `monthi` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`roll_no`, `amount`, `trxid`, `transaction`, `monthi`) VALUES
(1, 200, 'ch_1Iin4KDfbWnbeNn8HZ4CFWXr', 'txn_1Iin4KDfbWnbeNn8iKqWxwSD', '2024-07-12'),
(99, 39200, 'ch_1IinW5DfbWnbeNn8a0uI0xWS', 'txn_1IinW5DfbWnbeNn8gvADNJwV', '2024-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `pendingcourse`
--

CREATE TABLE `pendingcourse` (
  `roll_no` int(200) NOT NULL,
  `course_id` varchar(200) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `exam_type` varchar(200) NOT NULL,
  `coursefee` int(200) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendingcourse`
--

INSERT INTO `pendingcourse` (`roll_no`, `course_id`, `semester`, `course_name`, `exam_type`, `coursefee`, `status`) VALUES
(99, '33', '5th', 'CSE301- Computational Methods for Engineering Problems (3)', 'Recourse', 0, 1),
(5747, '8', '1st', 'ENG101- General English (3)', 'Recourse', 0, 1),
(1, '3', '1st', 'EEE102- Electrical Circuits I Laboratory (1.5)', 'Recourse', 0, 1),
(99, '17', '3rd', 'CSE221- Data Structure (3)', 'Recourse', 0, 1),
(99, '51', '7th', 'EEE 313 Control Systems 3', 'Recourse', 0, 1),
(99, '17', '3rd', 'CSE221- Data Structure (3)', 'Recourse', 0, 1),
(99, '17', '3rd', 'CSE221- Data Structure (3)', 'Recourse', 0, 1),
(1, '3', '1st', 'EEE102- Electrical Circuits I Laboratory (1.5)', 'Regular', 0, 1),
(1, '18', '3rd', 'CSE222- Data Structure Laboratory (1.5)', '', 0, 1),
(1, '19', '3rd', 'CSE211- Object Oriented Programming (3)', '', 0, 1),
(330, '11', '2nd', 'Human Physiology', '', 0, 0),
(1, '2', '1st', 'Food Science', 'Retake', 0, 1),
(1, '11', '2nd', 'Human Physiology', 'Regular', 0, 1),
(1, '2', '1st', 'Food Science', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `status`) VALUES
('Bachelor of Computer Science 2024', 1),
('Information Technology 2024', 1),
('Artificial Intelligence', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentsignup`
--

CREATE TABLE `studentsignup` (
  `student_name` varchar(200) NOT NULL,
  `roll_no` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `guardian_name` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentsignup`
--

INSERT INTO `studentsignup` (`student_name`, `roll_no`, `email`, `department`, `father_name`, `mother_name`, `address`, `mobile_no`, `guardian_name`, `password`, `confirm_password`, `img`) VALUES
('Shuaib-ul-Shabir', 1, 'shuaib@gmail.com', 'Information Technology', 'Ahmad', 'xyz', 'Okara', 24, 'xyz', '123', '', '12.jpg'),
('M.Amir', 2, 'amir@gmail.com', 'Information Technology', 'abc', 'xyz', 'Okara', 346546, 'xyz', '123', '123', 'amir.jpg'),
('Alain Sohail', 7, 'alian@gmail.com', 'Information Technology', 'abc', 'xyz', 'Okara', 344, 'xyz', '123', '123', 'alian sohail.jpg'),
('Ali haider', 99, 'Alihaider@gmail.com', 'Information Technology', 'abc', 'abc', 'xyz', 53656, 'xyz', '123', '123', 'bill.jpg'),
('Umer Ch', 330, 'umer03129696292@gmail.com', 'Choose Department', '', 'xyz', 'Usman Block, Murshad Abad Chak No.92/6-R Sahiwal', 2147483647, 'abc', 'umer', 'umer', 'usama.jpg'),
('Yasir Afaq', 5747, 'Yasirafaq@gmail.com', 'IT', 'abc', 'xyz', 'xyz', 63457, 'xyz', '123', '123', '12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teachersignup`
--

CREATE TABLE `teachersignup` (
  `teacher_name` varchar(200) NOT NULL,
  `id_no` int(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` varchar(30) NOT NULL,
  `father_name` varchar(40) NOT NULL,
  `mother_name` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `nid_no` int(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachersignup`
--

INSERT INTO `teachersignup` (`teacher_name`, `id_no`, `email`, `department`, `father_name`, `mother_name`, `address`, `mobile_no`, `nid_no`, `password`, `confirm_password`, `img`) VALUES
('a', 2, 'a@gmail.com', 'cse', 'af', 'mf', 'ctg', 346546, 76557, '123', '123', '12.jpg'),
('Alia Saher', 12345, 'alia@gmail.com', 'CSE', 'abc', 'xyz', 'abc, 123, Punjab, Pakistan', 2147483647, 2147483647, 'alia', 'alia', 'f vector.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursetable`
--
ALTER TABLE `coursetable`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `examtype`
--
ALTER TABLE `examtype`
  ADD PRIMARY KEY (`exam_type`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `pendingcourse`
--
ALTER TABLE `pendingcourse`
  ADD KEY `roll_no` (`roll_no`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `studentsignup`
--
ALTER TABLE `studentsignup`
  ADD PRIMARY KEY (`roll_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendingcourse`
--
ALTER TABLE `pendingcourse`
  ADD CONSTRAINT `pendingcourse_ibfk_1` FOREIGN KEY (`roll_no`) REFERENCES `studentsignup` (`roll_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pendingcourse_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `coursetable` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
