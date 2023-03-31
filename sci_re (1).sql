-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 02:29 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sci_course`
--

-- --------------------------------------------------------

--
-- Table structure for table `sci_re`
--

CREATE TABLE `sci_re` (
  `re_id` int(11) NOT NULL,
  `re_email` varchar(255) NOT NULL,
  `re_prefix` varchar(100) NOT NULL,
  `re_name` varchar(255) NOT NULL,
  `re_phonenumber` char(10) DEFAULT NULL,
  `re_IDnumber` char(13) DEFAULT NULL,
  `re_educational` varchar(255) NOT NULL,
  `re_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sci_re`
--

INSERT INTO `sci_re` (`re_id`, `re_email`, `re_prefix`, `re_name`, `re_phonenumber`, `re_IDnumber`, `re_educational`, `re_img`) VALUES
(2, '644259007@webmail.npru.ac.th', 'นางสาว', 'ณาตหชา มุมแดง', '0656375524', '1718800032186', 'มัธยมปลาย', '0'),
(3, '644259007@webmail.npru.ac.th', 'นางสาว', 'ณาตหชา มุมแดง', '0656375524', '1718800032186', 'ปริญญาโท', '0'),
(4, '644259007@webmail.npru.ac.th', 'นางสาว', 'ณาตหชา มุมแดง', '0656375524', '1718800032186', 'ปริญญาตรี', 'https://images.droidsans.com/wp-content/uploads/2018/07/how-to-chech-kbank-slip-cover2.png'),
(5, '644259007@webmail.npru.ac.th', 'นาง', 'ณาตหชา มุมแดง', '0656375524', '1718800032186', 'ปริญญาเอก', 'https://images.droidsans.com/wp-content/uploads/2018/07/how-to-chech-kbank-slip-cover2.png'),
(6, 'aummumdaeng@gmail.com', 'นางสาว', 'ณาตหชา มุมแดง', '0656375524', '1718800032186', 'มัธยมปลาย', 'https://images.droidsans.com/wp-content/uploads/2018/07/how-to-chech-kbank-slip-cover2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sci_re`
--
ALTER TABLE `sci_re`
  ADD PRIMARY KEY (`re_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sci_re`
--
ALTER TABLE `sci_re`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
