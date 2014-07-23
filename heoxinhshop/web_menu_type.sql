-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2014 at 11:48 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `heoxinhshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_type`
--

CREATE TABLE IF NOT EXISTS `web_menu_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(2) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `order`, `status`) VALUES
(1, 'Trang chủ', 1, 1),
(2, 'Thông tin bài viết', 2, 1),
(3, 'Sản phẩm', 3, 1),
(4, 'Dịch vụ', 4, 1),
(5, 'Hình ảnh', 5, 1),
(6, 'Video', 6, 1),
(7, 'Đặt hàng', 7, 1),
(8, 'Thanh toán', 8, 1),
(9, 'Item 9', 9, 0),
(10, 'Item 10', 10, 0),
(11, 'Item 11', 11, 0),
(12, 'Đăng ký', 12, 0),
(13, 'Liên hệ', 13, 1),
(14, 'Không', 14, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
