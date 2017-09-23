-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2016 at 08:19 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auser` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `marquee1` text NOT NULL,
  `uvname` varchar(99) NOT NULL,
  `uvintro` text NOT NULL,
  `footerinfo` varchar(50) NOT NULL,
  `abouthead` varchar(50) NOT NULL,
  `aboutinfo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `auser`, `apass`, `marquee1`, `uvname`, `uvintro`, `footerinfo`, `abouthead`, `aboutinfo`) VALUES
(1, 'admin', 'caf1a3dfb505ffed0d024130f58c5cfa', 'METROPOLITAN UNIVERSITY', 'Metropolitan University, Sylhet', 'Metropolitan University was established in 2003 by an eminent social worker, Dr. Toufique Rahman Chowdhury with the approval of the Ministry of Education under the Private University Act, 1992 (amended in 1998). This is a social commitment of Metropolitan University mainly to our nation for promoting better education to meet the changing needs of the globe in the 21st century. The University will serve the citizens of the home country and also of other countries through its instructions, research and outreach programmes and prepare them to meet the challenges of the global economy successfully.', 'Tawfiquzzaman Opu(2017-2018)', 'About Us', 'Vision: A true education, a true nation and fostering the development mainly of our country.</font><br> <h3><b>Our values</b></h3> <font size="+1">We are dedicated to preparing students for meaningful employment. We provide a quality education and learning environment. We embody integrity in everything we do. We believe in partnership with employers, students, graduates and our communities. We have pride in our students and are passionate about their success. We respect diversity and believe all people should have the opportunity to get an education and find meaningful employment. We believe in continuous improvement and exploring new ideas.</font><br> <h3><b>Who we are</b></h3> <font size="+1">Mission: Metropolitan University is working hard to make properly educated, technologically efficient, highly productive class citizens to attain glorious careers, enjoy enriched lives and make direct contribution to all people mainly of the country. We believe that our mission includes providing a world class student centred learning environment where the students would learn how to learn.MU equipped with professionally sound faculty members is dedicated to students’ overall success. An environment has been provided to the faculty members where they can develop their further teaching skills and contribute to the innovation and discovery of new knowledge by developing and using their research skills.'),
(2, 'sanjeev', '98d34c1758b15b5a359b69c2b08c5767', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `mob` bigint(50) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `gender`, `mob`, `address`) VALUES
(26, 'mahbub', '3b3b8360f70b78bb4f6239078e636626', 'mahbub@gmail.com', 'm', 8801759034666, ''),
(28, 'siddique', 'caf1a3dfb505ffed0d024130f58c5cfa', 'siddique@gmail.com', 'm', 8801743262318, ''),
(30, 'shovo', '098f6bcd4621d373cade4e832627b4f6', 'shovo@gmail.com', 'm', 8801744879817, ''),
(31, 'evan', '8ad8757baa8564dc136c1e07507f4a98', 'evan@gmail.com', 'm', 8801710933069, ''),
(32, 'fahima', '202cb962ac59075b964b07152d234b70', 'fahima@gmail.com', 'f', 8801953305119, ''),
(33, 'prim', '202cb962ac59075b964b07152d234b70', 'prim@gmail.com', 'm', 8801714252870, ''),
(34, 'aishy', '63dd3e154ca6d948fc380fa576343ba6', 'aishy@gmail.com', 'f', 8801712745377, ''),
(35, 'samirul', '98d34c1758b15b5a359b69c2b08c5767', 'samirul@gmail.com', 'm', 9015501897, '141 sunamganj\r\sadar'),
(36, 'abir', 'd76f3d05cc9ac98f1f9160274a39fe33', 'abir@gmail.com', 'm', 9015501899, 'sylhet');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
