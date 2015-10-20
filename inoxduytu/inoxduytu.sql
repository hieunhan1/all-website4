-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2015 at 01:16 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inoxduytu`
--

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE IF NOT EXISTS `timezone` (
`id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `timezone` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `name`, `timezone`, `order`) VALUES
(1, 'Africa/Abidjan', '+00:00', 0),
(2, 'Africa/Accra', '+00:00', 0),
(3, 'Africa/Addis_Ababa', '+03:00', 0),
(4, 'Africa/Algiers', '+01:00', 0),
(5, 'Africa/Asmara', '+03:00', 0),
(6, 'Africa/Bamako', '+00:00', 0),
(7, 'Africa/Bangui', '+01:00', 0),
(8, 'Africa/Banjul', '+00:00', 0),
(9, 'Africa/Bissau', '+00:00', 0),
(10, 'Africa/Blantyre', '+02:00', 0),
(11, 'Africa/Brazzaville', '+01:00', 0),
(12, 'Africa/Bujumbura', '+02:00', 0),
(13, 'Africa/Cairo', '+03:00', 0),
(14, 'Africa/Casablanca', '+01:00', 0),
(15, 'Africa/Ceuta', '+02:00', 0),
(16, 'Africa/Conakry', '+00:00', 0),
(17, 'Africa/Dakar', '+00:00', 0),
(18, 'Africa/Dar_es_Salaam', '+03:00', 0),
(19, 'Africa/Djibouti', '+03:00', 0),
(20, 'Africa/Douala', '+01:00', 0),
(21, 'Africa/El_Aaiun', '+01:00', 0),
(22, 'Africa/Freetown', '+00:00', 0),
(23, 'Africa/Gaborone', '+02:00', 0),
(24, 'Africa/Harare', '+02:00', 0),
(25, 'Africa/Johannesburg', '+02:00', 0),
(26, 'Africa/Juba', '+03:00', 0),
(27, 'Africa/Kampala', '+03:00', 0),
(28, 'Africa/Khartoum', '+03:00', 0),
(29, 'Africa/Kigali', '+02:00', 0),
(30, 'Africa/Kinshasa', '+01:00', 0),
(31, 'Africa/Lagos', '+01:00', 0),
(32, 'Africa/Libreville', '+01:00', 0),
(33, 'Africa/Lome', '+00:00', 0),
(34, 'Africa/Luanda', '+01:00', 0),
(35, 'Africa/Lubumbashi', '+02:00', 0),
(36, 'Africa/Lusaka', '+02:00', 0),
(37, 'Africa/Malabo', '+01:00', 0),
(38, 'Africa/Maputo', '+02:00', 0),
(39, 'Africa/Maseru', '+02:00', 0),
(40, 'Africa/Mbabane', '+02:00', 0),
(41, 'Africa/Mogadishu', '+03:00', 0),
(42, 'Africa/Monrovia', '+00:00', 0),
(43, 'Africa/Nairobi', '+03:00', 0),
(44, 'Africa/Ndjamena', '+01:00', 0),
(45, 'Africa/Niamey', '+01:00', 0),
(46, 'Africa/Nouakchott', '+00:00', 0),
(47, 'Africa/Ouagadougou', '+00:00', 0),
(48, 'Africa/Porto-Novo', '+01:00', 0),
(49, 'Africa/Sao_Tome', '+00:00', 0),
(50, 'Africa/Tripoli', '+02:00', 0),
(51, 'Africa/Tunis', '+01:00', 0),
(52, 'Africa/Windhoek', '+01:00', 0),
(53, 'America/Adak', '-09:00', 0),
(54, 'America/Anchorage', '-08:00', 0),
(55, 'America/Anguilla', '-04:00', 0),
(56, 'America/Antigua', '-04:00', 0),
(57, 'America/Araguaina', '-03:00', 0),
(58, 'America/Argentina/Buenos_Aires', '-03:00', 0),
(59, 'America/Argentina/Catamarca', '-03:00', 0),
(60, 'America/Argentina/Cordoba', '-03:00', 0),
(61, 'America/Argentina/Jujuy', '-03:00', 0),
(62, 'America/Argentina/La_Rioja', '-03:00', 0),
(63, 'America/Argentina/Mendoza', '-03:00', 0),
(64, 'America/Argentina/Rio_Gallegos', '-03:00', 0),
(65, 'America/Argentina/Salta', '-03:00', 0),
(66, 'America/Argentina/San_Juan', '-03:00', 0),
(67, 'America/Argentina/San_Luis', '-03:00', 0),
(68, 'America/Argentina/Tucuman', '-03:00', 0),
(69, 'America/Argentina/Ushuaia', '-03:00', 0),
(70, 'America/Aruba', '-04:00', 0),
(71, 'America/Asuncion', '-04:00', 0),
(72, 'America/Atikokan', '-05:00', 0),
(73, 'America/Bahia', '-03:00', 0),
(74, 'America/Bahia_Banderas', '-05:00', 0),
(75, 'America/Barbados', '-04:00', 0),
(76, 'America/Belem', '-03:00', 0),
(77, 'America/Belize', '-06:00', 0),
(78, 'America/Blanc-Sablon', '-04:00', 0),
(79, 'America/Boa_Vista', '-04:00', 0),
(80, 'America/Bogota', '-05:00', 0),
(81, 'America/Boise', '-06:00', 0),
(82, 'America/Cambridge_Bay', '-06:00', 0),
(83, 'America/Campo_Grande', '-04:00', 0),
(84, 'America/Cancun', '-05:00', 0),
(85, 'America/Caracas', '-04:30', 0),
(86, 'America/Cayenne', '-03:00', 0),
(87, 'America/Cayman', '-05:00', 0),
(88, 'America/Chicago', '-05:00', 0),
(89, 'America/Chihuahua', '-06:00', 0),
(90, 'America/Costa_Rica', '-06:00', 0),
(91, 'America/Creston', '-07:00', 0),
(92, 'America/Cuiaba', '-04:00', 0),
(93, 'America/Curacao', '-04:00', 0),
(94, 'America/Danmarkshavn', '+00:00', 0),
(95, 'America/Dawson', '-07:00', 0),
(96, 'America/Dawson_Creek', '-07:00', 0),
(97, 'America/Denver', '-06:00', 0),
(98, 'America/Detroit', '-04:00', 0),
(99, 'America/Dominica', '-04:00', 0),
(100, 'America/Edmonton', '-06:00', 0),
(101, 'America/Eirunepe', '-05:00', 0),
(102, 'America/El_Salvador', '-06:00', 0),
(103, 'America/Fortaleza', '-03:00', 0),
(104, 'America/Glace_Bay', '-03:00', 0),
(105, 'America/Godthab', '-02:00', 0),
(106, 'America/Goose_Bay', '-03:00', 0),
(107, 'America/Grand_Turk', '-04:00', 0),
(108, 'America/Grenada', '-04:00', 0),
(109, 'America/Guadeloupe', '-04:00', 0),
(110, 'America/Guatemala', '-06:00', 0),
(111, 'America/Guayaquil', '-05:00', 0),
(112, 'America/Guyana', '-04:00', 0),
(113, 'America/Halifax', '-03:00', 0),
(114, 'America/Havana', '-04:00', 0),
(115, 'America/Hermosillo', '-07:00', 0),
(116, 'America/Indiana/Indianapolis', '-04:00', 0),
(117, 'America/Indiana/Knox', '-05:00', 0),
(118, 'America/Indiana/Marengo', '-04:00', 0),
(119, 'America/Indiana/Petersburg', '-04:00', 0),
(120, 'America/Indiana/Tell_City', '-05:00', 0),
(121, 'America/Indiana/Vevay', '-04:00', 0),
(122, 'America/Indiana/Vincennes', '-04:00', 0),
(123, 'America/Indiana/Winamac', '-04:00', 0),
(124, 'America/Inuvik', '-06:00', 0),
(125, 'America/Iqaluit', '-04:00', 0),
(126, 'America/Jamaica', '-05:00', 0),
(127, 'America/Juneau', '-08:00', 0),
(128, 'America/Kentucky/Louisville', '-04:00', 0),
(129, 'America/Kentucky/Monticello', '-04:00', 0),
(130, 'America/Kralendijk', '-04:00', 0),
(131, 'America/La_Paz', '-04:00', 0),
(132, 'America/Lima', '-05:00', 0),
(133, 'America/Los_Angeles', '-07:00', 0),
(134, 'America/Lower_Princes', '-04:00', 0),
(135, 'America/Maceio', '-03:00', 0),
(136, 'America/Managua', '-06:00', 0),
(137, 'America/Manaus', '-04:00', 0),
(138, 'America/Marigot', '-04:00', 0),
(139, 'America/Martinique', '-04:00', 0),
(140, 'America/Matamoros', '-05:00', 0),
(141, 'America/Mazatlan', '-06:00', 0),
(142, 'America/Menominee', '-05:00', 0),
(143, 'America/Merida', '-05:00', 0),
(144, 'America/Metlakatla', '-08:00', 0),
(145, 'America/Mexico_City', '-05:00', 0),
(146, 'America/Miquelon', '-02:00', 0),
(147, 'America/Moncton', '-03:00', 0),
(148, 'America/Monterrey', '-05:00', 0),
(149, 'America/Montevideo', '-03:00', 0),
(150, 'America/Montserrat', '-04:00', 0),
(151, 'America/Nassau', '-04:00', 0),
(152, 'America/New_York', '-04:00', 3),
(153, 'America/Nipigon', '-04:00', 0),
(154, 'America/Nome', '-08:00', 0),
(155, 'America/Noronha', '-02:00', 0),
(156, 'America/North_Dakota/Beulah', '-05:00', 0),
(157, 'America/North_Dakota/Center', '-05:00', 0),
(158, 'America/North_Dakota/New_Salem', '-05:00', 0),
(159, 'America/Ojinaga', '-06:00', 0),
(160, 'America/Panama', '-05:00', 0),
(161, 'America/Pangnirtung', '-04:00', 0),
(162, 'America/Paramaribo', '-03:00', 0),
(163, 'America/Phoenix', '-07:00', 0),
(164, 'America/Port-au-Prince', '-04:00', 0),
(165, 'America/Port_of_Spain', '-04:00', 0),
(166, 'America/Porto_Velho', '-04:00', 0),
(167, 'America/Puerto_Rico', '-04:00', 0),
(168, 'America/Rainy_River', '-05:00', 0),
(169, 'America/Rankin_Inlet', '-05:00', 0),
(170, 'America/Recife', '-03:00', 0),
(171, 'America/Regina', '-06:00', 0),
(172, 'America/Resolute', '-05:00', 0),
(173, 'America/Rio_Branco', '-05:00', 0),
(174, 'America/Santa_Isabel', '-07:00', 0),
(175, 'America/Santarem', '-03:00', 0),
(176, 'America/Santiago', '-04:00', 0),
(177, 'America/Santo_Domingo', '-04:00', 0),
(178, 'America/Sao_Paulo', '-03:00', 0),
(179, 'America/Scoresbysund', '+00:00', 0),
(180, 'America/Sitka', '-08:00', 0),
(181, 'America/St_Barthelemy', '-04:00', 0),
(182, 'America/St_Johns', '-02:30', 0),
(183, 'America/St_Kitts', '-04:00', 0),
(184, 'America/St_Lucia', '-04:00', 0),
(185, 'America/St_Thomas', '-04:00', 0),
(186, 'America/St_Vincent', '-04:00', 0),
(187, 'America/Swift_Current', '-06:00', 0),
(188, 'America/Tegucigalpa', '-06:00', 0),
(189, 'America/Thule', '-03:00', 0),
(190, 'America/Thunder_Bay', '-04:00', 0),
(191, 'America/Tijuana', '-07:00', 0),
(192, 'America/Toronto', '-04:00', 0),
(193, 'America/Tortola', '-04:00', 0),
(194, 'America/Vancouver', '-07:00', 0),
(195, 'America/Whitehorse', '-07:00', 0),
(196, 'America/Winnipeg', '-05:00', 0),
(197, 'America/Yakutat', '-08:00', 0),
(198, 'America/Yellowknife', '-06:00', 0),
(199, 'Antarctica/Casey', '+08:00', 0),
(200, 'Antarctica/Davis', '+07:00', 0),
(201, 'Antarctica/DumontDUrville', '+10:00', 0),
(202, 'Antarctica/Macquarie', '+11:00', 0),
(203, 'Antarctica/Mawson', '+05:00', 0),
(204, 'Antarctica/McMurdo', '+12:00', 0),
(205, 'Antarctica/Palmer', '-04:00', 0),
(206, 'Antarctica/Rothera', '-03:00', 0),
(207, 'Antarctica/Syowa', '+03:00', 0),
(208, 'Antarctica/Troll', '+02:00', 0),
(209, 'Antarctica/Vostok', '+06:00', 0),
(210, 'Arctic/Longyearbyen', '+02:00', 0),
(211, 'Asia/Aden', '+03:00', 0),
(212, 'Asia/Almaty', '+06:00', 0),
(213, 'Asia/Amman', '+03:00', 0),
(214, 'Asia/Anadyr', '+12:00', 0),
(215, 'Asia/Aqtau', '+05:00', 0),
(216, 'Asia/Aqtobe', '+05:00', 0),
(217, 'Asia/Ashgabat', '+05:00', 0),
(218, 'Asia/Baghdad', '+03:00', 0),
(219, 'Asia/Bahrain', '+03:00', 0),
(220, 'Asia/Baku', '+05:00', 0),
(221, 'Asia/Bangkok', '+07:00', 0),
(222, 'Asia/Beirut', '+03:00', 0),
(223, 'Asia/Bishkek', '+06:00', 0),
(224, 'Asia/Brunei', '+08:00', 0),
(225, 'Asia/Chita', '+08:00', 0),
(226, 'Asia/Choibalsan', '+08:00', 0),
(227, 'Asia/Colombo', '+05:30', 0),
(228, 'Asia/Damascus', '+03:00', 0),
(229, 'Asia/Dhaka', '+06:00', 0),
(230, 'Asia/Dili', '+09:00', 0),
(231, 'Asia/Dubai', '+04:00', 0),
(232, 'Asia/Dushanbe', '+05:00', 0),
(233, 'Asia/Gaza', '+03:00', 0),
(234, 'Asia/Hebron', '+03:00', 0),
(235, 'Asia/Ho_Chi_Minh', '+07:00', 0),
(236, 'Asia/Hong_Kong', '+08:00', 0),
(237, 'Asia/Hovd', '+07:00', 0),
(238, 'Asia/Irkutsk', '+08:00', 0),
(239, 'Asia/Jakarta', '+07:00', 0),
(240, 'Asia/Jayapura', '+09:00', 0),
(241, 'Asia/Jerusalem', '+03:00', 0),
(242, 'Asia/Kabul', '+04:30', 0),
(243, 'Asia/Kamchatka', '+12:00', 0),
(244, 'Asia/Karachi', '+05:00', 0),
(245, 'Asia/Kathmandu', '+05:45', 0),
(246, 'Asia/Khandyga', '+09:00', 0),
(247, 'Asia/Kolkata', '+05:30', 0),
(248, 'Asia/Krasnoyarsk', '+07:00', 0),
(249, 'Asia/Kuala_Lumpur', '+08:00', 0),
(250, 'Asia/Kuching', '+08:00', 0),
(251, 'Asia/Kuwait', '+03:00', 0),
(252, 'Asia/Macau', '+08:00', 0),
(253, 'Asia/Magadan', '+10:00', 0),
(254, 'Asia/Makassar', '+08:00', 0),
(255, 'Asia/Manila', '+08:00', 0),
(256, 'Asia/Muscat', '+04:00', 0),
(257, 'Asia/Nicosia', '+03:00', 0),
(258, 'Asia/Novokuznetsk', '+07:00', 0),
(259, 'Asia/Novosibirsk', '+06:00', 0),
(260, 'Asia/Omsk', '+06:00', 0),
(261, 'Asia/Oral', '+05:00', 0),
(262, 'Asia/Phnom_Penh', '+07:00', 0),
(263, 'Asia/Pontianak', '+07:00', 0),
(264, 'Asia/Pyongyang', '+09:00', 0),
(265, 'Asia/Qatar', '+03:00', 0),
(266, 'Asia/Qyzylorda', '+06:00', 0),
(267, 'Asia/Rangoon', '+06:30', 0),
(268, 'Asia/Riyadh', '+03:00', 0),
(269, 'Asia/Sakhalin', '+10:00', 0),
(270, 'Asia/Samarkand', '+05:00', 0),
(271, 'Asia/Seoul', '+09:00', 0),
(272, 'Asia/Shanghai', '+08:00', 0),
(273, 'Asia/Singapore', '+08:00', 0),
(274, 'Asia/Srednekolymsk', '+11:00', 0),
(275, 'Asia/Taipei', '+08:00', 0),
(276, 'Asia/Tashkent', '+05:00', 0),
(277, 'Asia/Tbilisi', '+04:00', 0),
(278, 'Asia/Tehran', '+04:30', 0),
(279, 'Asia/Thimphu', '+06:00', 0),
(280, 'Asia/Tokyo', '+09:00', 1),
(281, 'Asia/Ulaanbaatar', '+08:00', 0),
(282, 'Asia/Urumqi', '+06:00', 0),
(283, 'Asia/Ust-Nera', '+10:00', 0),
(284, 'Asia/Vientiane', '+07:00', 0),
(285, 'Asia/Vladivostok', '+10:00', 0),
(286, 'Asia/Yakutsk', '+09:00', 0),
(287, 'Asia/Yekaterinburg', '+05:00', 0),
(288, 'Asia/Yerevan', '+04:00', 0),
(289, 'Atlantic/Azores', '+00:00', 0),
(290, 'Atlantic/Bermuda', '-03:00', 0),
(291, 'Atlantic/Canary', '+01:00', 0),
(292, 'Atlantic/Cape_Verde', '-01:00', 0),
(293, 'Atlantic/Faroe', '+01:00', 0),
(294, 'Atlantic/Madeira', '+01:00', 0),
(295, 'Atlantic/Reykjavik', '+00:00', 0),
(296, 'Atlantic/South_Georgia', '-02:00', 0),
(297, 'Atlantic/St_Helena', '+00:00', 0),
(298, 'Atlantic/Stanley', '-03:00', 0),
(299, 'Australia/Adelaide', '+09:30', 0),
(300, 'Australia/Brisbane', '+10:00', 0),
(301, 'Australia/Broken_Hill', '+09:30', 0),
(302, 'Australia/Currie', '+10:00', 0),
(303, 'Australia/Darwin', '+09:30', 0),
(304, 'Australia/Eucla', '+08:45', 0),
(305, 'Australia/Hobart', '+10:00', 0),
(306, 'Australia/Lindeman', '+10:00', 0),
(307, 'Australia/Lord_Howe', '+10:30', 0),
(308, 'Australia/Melbourne', '+10:00', 0),
(309, 'Australia/Perth', '+08:00', 0),
(310, 'Australia/Sydney', '+10:00', 2),
(311, 'Europe/Amsterdam', '+02:00', 0),
(312, 'Europe/Andorra', '+02:00', 0),
(313, 'Europe/Athens', '+03:00', 0),
(314, 'Europe/Belgrade', '+02:00', 0),
(315, 'Europe/Berlin', '+02:00', 5),
(316, 'Europe/Bratislava', '+02:00', 0),
(317, 'Europe/Brussels', '+02:00', 0),
(318, 'Europe/Bucharest', '+03:00', 0),
(319, 'Europe/Budapest', '+02:00', 0),
(320, 'Europe/Busingen', '+02:00', 0),
(321, 'Europe/Chisinau', '+03:00', 0),
(322, 'Europe/Copenhagen', '+02:00', 0),
(323, 'Europe/Dublin', '+01:00', 0),
(324, 'Europe/Gibraltar', '+02:00', 0),
(325, 'Europe/Guernsey', '+01:00', 0),
(326, 'Europe/Helsinki', '+03:00', 0),
(327, 'Europe/Isle_of_Man', '+01:00', 0),
(328, 'Europe/Istanbul', '+03:00', 0),
(329, 'Europe/Jersey', '+01:00', 0),
(330, 'Europe/Kaliningrad', '+02:00', 0),
(331, 'Europe/Kiev', '+03:00', 0),
(332, 'Europe/Lisbon', '+01:00', 0),
(333, 'Europe/Ljubljana', '+02:00', 0),
(334, 'Europe/London', '+01:00', 4),
(335, 'Europe/Luxembourg', '+02:00', 0),
(336, 'Europe/Madrid', '+02:00', 0),
(337, 'Europe/Malta', '+02:00', 0),
(338, 'Europe/Mariehamn', '+03:00', 0),
(339, 'Europe/Minsk', '+03:00', 0),
(340, 'Europe/Monaco', '+02:00', 0),
(341, 'Europe/Moscow', '+03:00', 0),
(342, 'Europe/Oslo', '+02:00', 0),
(343, 'Europe/Paris', '+02:00', 0),
(344, 'Europe/Podgorica', '+02:00', 0),
(345, 'Europe/Prague', '+02:00', 0),
(346, 'Europe/Riga', '+03:00', 0),
(347, 'Europe/Rome', '+02:00', 0),
(348, 'Europe/Samara', '+04:00', 0),
(349, 'Europe/San_Marino', '+02:00', 0),
(350, 'Europe/Sarajevo', '+02:00', 0),
(351, 'Europe/Simferopol', '+03:00', 0),
(352, 'Europe/Skopje', '+02:00', 0),
(353, 'Europe/Sofia', '+03:00', 0),
(354, 'Europe/Stockholm', '+02:00', 0),
(355, 'Europe/Tallinn', '+03:00', 0),
(356, 'Europe/Tirane', '+02:00', 0),
(357, 'Europe/Uzhgorod', '+03:00', 0),
(358, 'Europe/Vaduz', '+02:00', 0),
(359, 'Europe/Vatican', '+02:00', 0),
(360, 'Europe/Vienna', '+02:00', 0),
(361, 'Europe/Vilnius', '+03:00', 0),
(362, 'Europe/Volgograd', '+03:00', 0),
(363, 'Europe/Warsaw', '+02:00', 0),
(364, 'Europe/Zagreb', '+02:00', 0),
(365, 'Europe/Zaporozhye', '+03:00', 0),
(366, 'Europe/Zurich', '+02:00', 0),
(367, 'Indian/Antananarivo', '+03:00', 0),
(368, 'Indian/Chagos', '+06:00', 0),
(369, 'Indian/Christmas', '+07:00', 0),
(370, 'Indian/Cocos', '+06:30', 0),
(371, 'Indian/Comoro', '+03:00', 0),
(372, 'Indian/Kerguelen', '+05:00', 0),
(373, 'Indian/Mahe', '+04:00', 0),
(374, 'Indian/Maldives', '+05:00', 0),
(375, 'Indian/Mauritius', '+04:00', 0),
(376, 'Indian/Mayotte', '+03:00', 0),
(377, 'Indian/Reunion', '+04:00', 0),
(378, 'Pacific/Apia', '+13:00', 0),
(379, 'Pacific/Auckland', '+12:00', 0),
(380, 'Pacific/Bougainville', '+11:00', 0),
(381, 'Pacific/Chatham', '+12:45', 0),
(382, 'Pacific/Chuuk', '+10:00', 0),
(383, 'Pacific/Easter', '-06:00', 0),
(384, 'Pacific/Efate', '+11:00', 0),
(385, 'Pacific/Enderbury', '+13:00', 0),
(386, 'Pacific/Fakaofo', '+13:00', 0),
(387, 'Pacific/Fiji', '+12:00', 0),
(388, 'Pacific/Funafuti', '+12:00', 0),
(389, 'Pacific/Galapagos', '-06:00', 0),
(390, 'Pacific/Gambier', '-09:00', 0),
(391, 'Pacific/Guadalcanal', '+11:00', 0),
(392, 'Pacific/Guam', '+10:00', 0),
(393, 'Pacific/Honolulu', '-10:00', 0),
(394, 'Pacific/Johnston', '-10:00', 0),
(395, 'Pacific/Kiritimati', '+14:00', 0),
(396, 'Pacific/Kosrae', '+11:00', 0),
(397, 'Pacific/Kwajalein', '+12:00', 0),
(398, 'Pacific/Majuro', '+12:00', 0),
(399, 'Pacific/Marquesas', '-09:30', 0),
(400, 'Pacific/Midway', '-11:00', 0),
(401, 'Pacific/Nauru', '+12:00', 0),
(402, 'Pacific/Niue', '-11:00', 0),
(403, 'Pacific/Norfolk', '+11:30', 0),
(404, 'Pacific/Noumea', '+11:00', 0),
(405, 'Pacific/Pago_Pago', '-11:00', 0),
(406, 'Pacific/Palau', '+09:00', 0),
(407, 'Pacific/Pitcairn', '-08:00', 0),
(408, 'Pacific/Pohnpei', '+11:00', 0),
(409, 'Pacific/Port_Moresby', '+10:00', 0),
(410, 'Pacific/Rarotonga', '-10:00', 0),
(411, 'Pacific/Saipan', '+10:00', 0),
(412, 'Pacific/Tahiti', '-10:00', 0),
(413, 'Pacific/Tarawa', '+12:00', 0),
(414, 'Pacific/Tongatapu', '+13:00', 0),
(415, 'Pacific/Wake', '+12:00', 0),
(416, 'Pacific/Wallis', '+12:00', 0),
(417, 'UTC', '+00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `web_analytics`
--

CREATE TABLE IF NOT EXISTS `web_analytics` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `table` varchar(30) NOT NULL,
  `value` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `other` tinyint(1) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_analytics`
--

INSERT INTO `web_analytics` (`id`, `name`, `table`, `value`, `datetime`, `other`, `lang`, `status`) VALUES
(8, 'Tháng 8 năm 2015', 'web_users', 0, 1438362000, 0, 'en', 1),
(9, 'Tháng 8 năm 2015', 'web_payment', 0, 1438362000, 0, 'en', 1),
(10, 'Tháng 8 năm 2015', 'web_payment', 1, 1438362000, 0, 'en', 1),
(11, 'Tháng 8 năm 2015', 'web_payment', 2, 1438362000, 0, 'en', 1),
(6, 'Thống kê user đang hoạt động', 'web_users', 1, 1420045200, 1, 'en', 1),
(7, 'Thống kê user hết hạn', 'web_users', 3, 1420045200, 1, 'en', 1),
(12, 'Tháng 8 năm 2015', 'web_payment', 3, 1438362000, 0, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `img`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(9, 'Về chúng tôi - Inox Duy Tú', 've-chung-toi-inox-duy-tu', 'gioi-thieu/ve-chung-toi-inox-duy-tu.html', 'gioi-thieu.jpg', 'Inox Duy Tú là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản', 'về chúng tôi việt úc thái dương,ve chung toi viet uc thai duong', '<p><strong>Inox Duy Tú</strong> là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản với kim ngạch xuất khẩu rau, quả hàng năm chiếm tỷ trọng lớn trong tổng kim ngạch xuất khẩu rau, quả của Việt Nam.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/inoxduytu/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/all/inoxduytu/public/images/articles/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 359px; height: 282px;" /></p>\r\n\r\n<p>Là một công ty kinh doanh đa ngành trong phạm vi toàn quốc và thế giới, ngay từ khi mới thành lập công ty đã đặc biệt quan tâm xây dựng chất lượng sản phẩm, nên đã đầu tư nhiều dây chuyền thiết bị hiện đại, công nghệ tiên tiến được nhập khẩu từ Châu Âu.</p>\r\n', 0, 1433931000, 'vi', 1, ',2,'),
(10, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'dich-vu-lam-thu-tuc-xuat-nhap-khau', 'tin-tuc-su-kien/dich-vu-lam-thu-tuc-xuat-nhap-khau.html', 'gioi-thieu.jpg', 'Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm', 'dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau', '<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n', 0, 1433926020, 'vi', 1, ',6,'),
(11, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc', 'tin-tuc-su-kien/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg', 'Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...', 'các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn', '<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n', 0, 1433928060, 'vi', 1, ',6,'),
(12, 'Các dịch vụ gia tăng', 'cac-dich-vu-gia-tang', 'tin-tuc-su-kien/cac-dich-vu-gia-tang.html', 'cac-dich-vu-gia-tang.jpg', 'Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...', 'các dịch vụ gia tăng,cac dich vu gia tang,CPN', '<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n', 0, 1433928720, 'vi', 1, ',6,'),
(13, 'Dịch vụ chuyển phát nhanh Quốc tế', 'dich-vu-chuyen-phat-nhanh-quoc-te', 'tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg', 'Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ', 'dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te', '<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n', 0, 1433929500, 'vi', 1, ',6,');

-- --------------------------------------------------------

--
-- Table structure for table `web_article_cm`
--

CREATE TABLE IF NOT EXISTS `web_article_cm` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE IF NOT EXISTS `web_config` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `name_var` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `order`, `lang`, `status`) VALUES
(5, 'Số tin / trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Số SP / trang', 'limit_2', '20', 11, 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '18', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 13, 'vi', 1),
(9, 'Copyright', 'copyright', 'Copyright © 2015 by INOXDUYTU.COM', 6, 'vi', 1),
(10, 'Email', 'email', 'info@inoxduytu.com', 5, 'vi', 1),
(11, 'Điện thoại', 'tel', '+84 723 639012', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '0988 388 003', 7, 'vi', 1),
(13, 'Slogan', 'slogan', 'Duy Tú chuyên cung cấp đồ dùng Inox', 8, 'vi', 1),
(14, 'Fax', 'fax', '+84 723 639012', 4, 'vi', 1),
(15, 'Địa chỉ', 'address', '65 đường số 12, P.Bình Hưng Hòa A, Q.Bình Tân, Tp.HCM', 2, 'vi', 1),
(16, 'News number / page', 'limit_1', '8', 10, 'en', 1),
(17, 'Trend', 'limit_2', '8', 11, 'en', 1),
(18, 'Real time Orders', 'limit_3', '8', 12, 'en', 1),
(19, 'Support and resistance', 'limit_4', '8', 13, 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2015 by FOREXSIGNALPRO.NET', 6, 'en', 1),
(21, 'Email', 'email', 'support@forexsignalpro.net', 5, 'en', 1),
(22, 'Telephone', 'tel', '+84 988 388 003', 3, 'en', 1),
(23, 'Hotline', 'hotline', '+84 988 388 003', 7, 'en', 1),
(24, 'History forex', 'limit_0', '6', 8, 'en', 1),
(25, 'Fax', 'fax', '+84 723 639012', 4, 'en', 0),
(26, 'Address', 'address', '123 CMT 8', 2, 'en', 1),
(27, 'Tên trang website', 'sitename', 'Sản xuất Inox Duy Tú', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'ForexSignalPro', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_currency`
--

CREATE TABLE IF NOT EXISTS `web_currency` (
`id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `average` float NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_currency`
--

INSERT INTO `web_currency` (`id`, `name`, `average`, `order`, `lang`, `status`) VALUES
(1, 'EURUSD', 1.2, 1, 'en', 1),
(2, 'GBPUSD', 1.1, 2, 'en', 1),
(3, 'USDCHF', 1.3, 3, 'en', 0),
(4, 'USDJPY', 1.4, 4, 'en', 1),
(5, 'AUDUSD', 1.5, 5, 'en', 1),
(6, 'EURJPY', 1.6, 6, 'en', 0),
(7, 'USDCAD', 1.7, 7, 'en', 0),
(8, 'GBPJPY', 1.8, 8, 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_forex`
--

CREATE TABLE IF NOT EXISTS `web_forex` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `exactly` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_forex`
--

INSERT INTO `web_forex` (`id`, `name`, `description`, `exactly`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Consultations 10/3 days', '<p>Increased by 90 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1427361000, 'en', 1, ',15,'),
(2, 'Consultations 12/3 days', '<p>Increased by 50 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426151280, 'en', 1, ',15,'),
(3, 'Consultations 14/3 days', '<p>Increased by 150 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426324020, 'en', 1, ',15,'),
(4, 'Consultations 18/3 days', '<p>Increased by 160 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426669500, 'en', 1, ',15,'),
(5, 'Consultations 20/3 days', '<p>Increased by 120 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426842240, 'en', 1, ',15,'),
(7, 'Consultations 22/3 days', '<p>Increased by 100 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1427014980, 'en', 1, ',15,');

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE IF NOT EXISTS `web_language` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `code`, `order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_listcity`
--

CREATE TABLE IF NOT EXISTS `web_listcity` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `order` int(2) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listcity`
--

INSERT INTO `web_listcity` (`id`, `name`, `deliverycosts`, `order`, `lang`, `status`) VALUES
(3, 'Hồ Chí Minh', 5000, 1, 'vi', 1),
(2, 'Hà Nội', 30000, 1, 'vi', 1),
(10, 'Yên Bái', 0, 0, 'vi', 1),
(11, 'Vĩnh Phúc', 0, 0, 'vi', 1),
(12, 'Vĩnh Long', 0, 0, 'vi', 1),
(13, 'Tuyên Quang', 0, 0, 'vi', 1),
(14, 'Trà Vinh', 0, 0, 'vi', 1),
(15, 'Tiền Giang', 0, 0, 'vi', 1),
(16, 'Thừa Thiên Huế', 0, 0, 'vi', 1),
(17, 'Thanh Hóa', 0, 0, 'vi', 1),
(18, 'Thái Nguyên', 0, 0, 'vi', 1),
(19, 'Thái Bình', 0, 0, 'vi', 1),
(21, 'Tây Ninh', 0, 0, 'vi', 1),
(22, 'Sơn La', 0, 0, 'vi', 1),
(23, 'Sóc Trăng', 0, 0, 'vi', 1),
(24, 'Quảng Trị', 0, 0, 'vi', 1),
(25, 'Quảng Ninh', 0, 0, 'vi', 1),
(26, 'Quảng Ngãi', 0, 0, 'vi', 1),
(27, 'Quảng Nam', 0, 0, 'vi', 1),
(28, 'Quảng Bình', 0, 0, 'vi', 1),
(29, 'Phú Yên', 0, 0, 'vi', 1),
(30, 'Phú Thọ', 0, 0, 'vi', 1),
(31, 'Ninh Thuận', 0, 0, 'vi', 1),
(32, 'Ninh Bình', 0, 0, 'vi', 1),
(33, 'Nghệ An', 0, 0, 'vi', 1),
(34, 'Nam Định', 0, 0, 'vi', 1),
(35, 'Long An', 0, 0, 'vi', 1),
(36, 'Lào Cai', 0, 0, 'vi', 1),
(37, 'Lạng Sơn', 0, 0, 'vi', 1),
(38, 'Lâm Đồng', 0, 0, 'vi', 1),
(39, 'Lai Châu', 0, 0, 'vi', 1),
(40, 'Kon Tum', 0, 0, 'vi', 1),
(41, 'Kiên Giang', 0, 0, 'vi', 1),
(42, 'Khánh Hòa', 0, 0, 'vi', 1),
(43, 'Hưng Yên', 0, 0, 'vi', 1),
(44, 'Hòa Bình', 0, 0, 'vi', 1),
(45, 'Hậu Giang', 0, 0, 'vi', 1),
(46, 'Hải Dương', 0, 0, 'vi', 1),
(47, 'Hà Tĩnh', 0, 0, 'vi', 1),
(49, 'Hà Nam ', 0, 0, 'vi', 1),
(50, 'Hà Giang', 0, 0, 'vi', 1),
(51, 'Gia Lai', 0, 0, 'vi', 1),
(52, 'Đồng Tháp', 0, 0, 'vi', 1),
(53, 'Đồng Nai', 0, 0, 'vi', 1),
(54, 'Điện Biên', 0, 0, 'vi', 1),
(55, 'Đắk Nông', 0, 0, 'vi', 1),
(56, 'Đắk Lắk', 0, 0, 'vi', 1),
(57, 'Cao Bằng', 0, 0, 'vi', 1),
(58, 'Cà Mau', 0, 0, 'vi', 1),
(59, 'Bình Thuận', 0, 0, 'vi', 1),
(60, 'Bình Phước', 0, 0, 'vi', 1),
(61, 'Bình Dương', 0, 0, 'vi', 1),
(62, 'Bình Định', 0, 0, 'vi', 1),
(63, 'Bến Tre', 0, 0, 'vi', 1),
(64, 'Bắc Ninh', 0, 0, 'vi', 1),
(65, 'Bạc Liêu', 0, 0, 'vi', 1),
(66, 'Bắc Kạn', 0, 0, 'vi', 1),
(67, 'Bắc Giang', 0, 0, 'vi', 1),
(68, 'Bà Rịa - Vũng Tàu', 0, 0, 'vi', 1),
(69, 'An Giang', 0, 0, 'vi', 1),
(70, 'Hải Phòng', 0, 0, 'vi', 1),
(71, 'Đà Nẵng', 0, 0, 'vi', 1),
(72, 'Cần Thơ', 30000, 0, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listdistricts`
--

CREATE TABLE IF NOT EXISTS `web_listdistricts` (
`id` int(3) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL,
  `order` int(3) DEFAULT '0',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web_listdistricts`
--

INSERT INTO `web_listdistricts` (`id`, `name`, `deliverycosts`, `city_id`, `order`, `lang`, `status`) VALUES
(127, 'Quận 1', 0, 3, 1, 'vi', 1),
(128, 'Quận 2', 0, 3, 2, 'vi', 1),
(129, 'Quận 3', 0, 3, 3, 'vi', 1),
(130, 'Quận 4', 0, 3, 4, 'vi', 1),
(131, 'Quận 5', 0, 3, 5, 'vi', 1),
(132, 'Quận 6', 0, 3, 6, 'vi', 1),
(133, 'Quận 7', 0, 3, 7, 'vi', 1),
(134, 'Quận 8', 0, 3, 8, 'vi', 1),
(135, 'Quận 9', 0, 3, 9, 'vi', 1),
(136, 'Quận 10', 0, 3, 10, 'vi', 1),
(137, 'Quận 11', 0, 3, 11, 'vi', 1),
(138, 'Quận 12', 0, 3, 12, 'vi', 1),
(139, 'Quận Phú Nhuận', 0, 3, 13, 'vi', 1),
(140, 'Quận Bình Thạnh', 0, 3, 14, 'vi', 1),
(141, 'Quận Tân Bình', 0, 3, 15, 'vi', 1),
(142, 'Quận Tân Phú', 0, 3, 16, 'vi', 1),
(143, 'Quận Gò Vấp', 0, 3, 17, 'vi', 1),
(144, 'Quận Thủ Đức', 0, 3, 18, 'vi', 1),
(145, 'Quận Bình Tân', 0, 3, 19, 'vi', 1),
(146, 'Huyện Bình Chánh', 10000, 3, 20, 'vi', 1),
(147, 'Huyện Củ Chi', 0, 3, 21, 'vi', 1),
(149, 'Huyện Nhà Bè', 0, 3, 22, 'vi', 1),
(150, 'Huyện Cần Giờ', 0, 3, 23, 'vi', 1),
(856, 'Huyện Hóc Môn', 5000, 3, 24, 'vi', 1),
(113, 'Từ Liêm', 10000, 2, 1, 'vi', 1),
(114, 'Thanh Trì', 0, 2, 2, 'vi', 1),
(115, 'Sóc Sơn', 0, 2, 3, 'vi', 1),
(116, 'Gia Lâm', 0, 2, 4, 'vi', 1),
(117, 'Đông Anh', 0, 2, 5, 'vi', 1),
(118, 'Long Biên', 0, 2, 6, 'vi', 1),
(119, 'Hoàng Mai', 0, 2, 7, 'vi', 1),
(120, 'Cầu Giấy', 0, 2, 8, 'vi', 1),
(121, 'Tây Hồ', 0, 2, 9, 'vi', 1),
(122, 'Thanh Xuân', 0, 2, 10, 'vi', 1),
(123, 'Hai Bà Trưng', 0, 2, 11, 'vi', 1),
(124, 'Đống Đa', 0, 2, 12, 'vi', 1),
(125, 'Ba Đình', 0, 2, 13, 'vi', 1),
(126, 'Hoàn Kiếm', 0, 2, 14, 'vi', 1),
(450, 'Mê Linh', 0, 2, 15, 'vi', 1),
(840, 'Vân Điền', 0, 2, 16, 'vi', 1),
(857, 'Ba Vì', 0, 2, 17, 'vi', 1),
(858, 'Chương Mỹ', 0, 2, 18, 'vi', 1),
(859, 'Đan Phượng', 0, 2, 19, 'vi', 1),
(860, 'Hà Đông', 0, 2, 20, 'vi', 1),
(861, 'Hoài Đức', 0, 2, 21, 'vi', 1),
(862, 'Mỹ Đức', 0, 2, 22, 'vi', 1),
(863, 'Phú Xuyên', 0, 2, 23, 'vi', 1),
(864, 'Phúc Thọ', 0, 2, 24, 'vi', 1),
(865, 'Quốc Oai', 0, 2, 25, 'vi', 1),
(866, 'Sơn Tây', 0, 2, 26, 'vi', 1),
(867, 'Thạch Thất', 0, 2, 27, 'vi', 1),
(868, 'Thanh Oai', 0, 2, 28, 'vi', 1),
(869, 'Thường Tín', 0, 2, 29, 'vi', 1),
(871, 'Ứng Hòa', 0, 2, 30, 'vi', 1),
(626, 'Lục Yên', 0, 10, 1, 'vi', 1),
(627, 'Mù Căng Chải', 0, 10, 2, 'vi', 1),
(628, 'Trạm Tấu', 0, 10, 3, 'vi', 1),
(629, 'Trấn Yên', 0, 10, 4, 'vi', 1),
(630, 'Văn Chấn', 0, 10, 5, 'vi', 1),
(631, 'Văn Yên', 0, 10, 6, 'vi', 1),
(632, 'Yên Bái', 0, 10, 7, 'vi', 1),
(633, 'Yên Bình', 0, 10, 8, 'vi', 1),
(448, 'Bình Xuyên', 0, 11, 1, 'vi', 1),
(449, 'Lập Thạch', 0, 11, 2, 'vi', 1),
(451, 'Tam Dương', 0, 11, 3, 'vi', 1),
(452, 'Vĩnh Tường', 0, 11, 4, 'vi', 1),
(453, 'Vĩnh Yên', 0, 11, 5, 'vi', 1),
(454, 'Yên Lạc', 0, 11, 6, 'vi', 1),
(850, 'Phúc Yên', 0, 11, 7, 'vi', 1),
(853, 'Tam Đảo', 0, 11, 8, 'vi', 1),
(812, 'Bình Minh', 0, 12, 1, 'vi', 1),
(813, 'Long Hồ', 0, 12, 2, 'vi', 1),
(814, 'Mang Thít', 0, 12, 3, 'vi', 1),
(815, 'Tam Bình', 0, 12, 4, 'vi', 1),
(816, 'Trà Ôn', 0, 12, 5, 'vi', 1),
(817, 'Vĩnh Long', 0, 12, 6, 'vi', 1),
(818, 'Vũng Liêm', 0, 12, 7, 'vi', 1),
(620, 'Chiêm Hóa', 0, 13, 1, 'vi', 1),
(621, 'Hàm Yên', 0, 13, 2, 'vi', 1),
(622, 'Na Hang', 0, 13, 3, 'vi', 1),
(623, 'Sơn Dương', 0, 13, 4, 'vi', 1),
(624, 'Tuyên Quang', 0, 13, 5, 'vi', 1),
(625, 'Yên Sơn', 0, 13, 6, 'vi', 1),
(440, 'Càng Long', 0, 14, 1, 'vi', 1),
(441, 'Cầu Kè', 0, 14, 2, 'vi', 1),
(442, 'Cầu Ngang', 0, 14, 3, 'vi', 1),
(443, 'Châu Thành', 0, 14, 4, 'vi', 1),
(444, 'Duyên Hải', 0, 14, 5, 'vi', 1),
(445, 'Tiểu Cần', 0, 14, 6, 'vi', 1),
(446, 'Trà Cú', 0, 14, 7, 'vi', 1),
(447, 'Trà Vinh', 0, 14, 8, 'vi', 1),
(803, 'Cái Bè', 0, 15, 1, 'vi', 1),
(804, 'Cai Lậy', 0, 15, 2, 'vi', 1),
(805, 'Châu Thành', 0, 15, 3, 'vi', 1),
(806, 'Chợ Gạo', 0, 15, 4, 'vi', 1),
(807, 'Gò Công', 0, 15, 5, 'vi', 1),
(808, 'Gò Công Đông', 0, 15, 6, 'vi', 1),
(809, 'Gò Công Tây', 0, 15, 7, 'vi', 1),
(810, 'Mỹ Tho', 0, 15, 8, 'vi', 1),
(811, 'Tân Phước', 0, 15, 9, 'vi', 1),
(423, 'A Lưới', 0, 16, 1, 'vi', 1),
(424, 'Huế', 0, 16, 2, 'vi', 1),
(425, 'Hương Thủy', 0, 16, 3, 'vi', 1),
(426, 'Hương Trà', 0, 16, 4, 'vi', 1),
(427, 'Nam Đông', 0, 16, 5, 'vi', 1),
(428, 'Phong Điền', 0, 16, 6, 'vi', 1),
(429, 'Phú Lộc', 0, 16, 7, 'vi', 1),
(430, 'Phú Vang', 0, 16, 8, 'vi', 1),
(431, 'Quảng Điền', 0, 16, 9, 'vi', 1),
(776, 'Bá Thước', 0, 17, 1, 'vi', 1),
(777, 'Bỉm Sơn', 0, 17, 2, 'vi', 1),
(778, 'Cẩm Thủy', 0, 17, 3, 'vi', 1),
(779, 'Đông Sơn', 0, 17, 4, 'vi', 1),
(780, 'Hà Trung', 0, 17, 5, 'vi', 1),
(781, 'Hậu Lộc', 0, 17, 6, 'vi', 1),
(782, 'Hoằng Hóa', 0, 17, 7, 'vi', 1),
(783, 'Lang Chánh', 0, 17, 8, 'vi', 1),
(784, 'Mường Lát', 0, 17, 9, 'vi', 1),
(785, 'Nga Sơn', 0, 17, 10, 'vi', 1),
(786, 'Ngọc Lặc', 0, 17, 11, 'vi', 1),
(787, 'Như Thanh', 0, 17, 12, 'vi', 1),
(788, 'Như Xuân', 0, 17, 13, 'vi', 1),
(789, 'Nông Cống', 0, 17, 14, 'vi', 1),
(790, 'Quan Hóa', 0, 17, 15, 'vi', 1),
(791, 'Quan Sơn', 0, 17, 16, 'vi', 1),
(792, 'Quảng Xương', 0, 17, 17, 'vi', 1),
(793, 'Sầm Sơn', 0, 17, 18, 'vi', 1),
(794, 'Thạch Thành', 0, 17, 19, 'vi', 1),
(795, 'Thanh Hóa', 0, 17, 20, 'vi', 1),
(796, 'Thọ Xuân', 0, 17, 21, 'vi', 1),
(797, 'Thường Xuân', 0, 17, 22, 'vi', 1),
(798, 'Tĩnh Gia', 0, 17, 23, 'vi', 1),
(799, 'Thiệu Hóa', 0, 17, 24, 'vi', 1),
(800, 'Triệu Sơn', 0, 17, 25, 'vi', 1),
(801, 'Vĩnh Lộc', 0, 17, 26, 'vi', 1),
(802, 'Yên Định', 0, 17, 27, 'vi', 1),
(611, 'Đại Từ', 0, 18, 1, 'vi', 1),
(612, 'Định Hóa', 0, 18, 2, 'vi', 1),
(613, 'Đồng Hỷ', 0, 18, 3, 'vi', 1),
(614, 'Phổ Yên', 0, 18, 4, 'vi', 1),
(615, 'Phú Bình', 0, 18, 5, 'vi', 1),
(616, 'Phú Lương', 0, 18, 6, 'vi', 1),
(617, 'Sông Công', 0, 18, 7, 'vi', 1),
(618, 'Thái Nguyên', 0, 18, 8, 'vi', 1),
(619, 'Võ Nhai', 0, 18, 9, 'vi', 1),
(432, 'Đông Hưng', 0, 19, 1, 'vi', 1),
(433, 'Hưng Hà', 0, 19, 2, 'vi', 1),
(434, 'Kiến Xương', 0, 19, 3, 'vi', 1),
(435, 'Quỳnh Phụ', 0, 19, 4, 'vi', 1),
(436, 'Thái Bình', 0, 19, 5, 'vi', 1),
(437, 'Thái Thụy', 0, 19, 6, 'vi', 1),
(438, 'Tiền Hải', 0, 19, 7, 'vi', 1),
(439, 'Vũ Thư', 0, 19, 8, 'vi', 1),
(602, 'Bến Cầu', 0, 21, 1, 'vi', 1),
(603, 'Châu Thành', 0, 21, 2, 'vi', 1),
(604, 'Dương Minh Châu', 0, 21, 3, 'vi', 1),
(605, 'Gò Dầu', 0, 21, 4, 'vi', 1),
(606, 'Hòa Thành', 0, 21, 5, 'vi', 1),
(607, 'Tân Biên', 0, 21, 6, 'vi', 1),
(608, 'Tân Châu', 0, 21, 7, 'vi', 1),
(609, 'Tây Ninh', 0, 21, 8, 'vi', 1),
(610, 'Trảng Bàng', 0, 21, 9, 'vi', 1),
(766, 'Bắc Yên', 0, 22, 1, 'vi', 1),
(767, 'Mai Sơn', 0, 22, 2, 'vi', 1),
(768, 'Mộc Châu', 0, 22, 3, 'vi', 1),
(769, 'Muờng La', 0, 22, 4, 'vi', 1),
(770, 'Phù Yên', 0, 22, 5, 'vi', 1),
(771, 'Quỳnh Nhai', 0, 22, 6, 'vi', 1),
(772, 'Sơn La', 0, 22, 7, 'vi', 1),
(773, 'Sông Mã', 0, 22, 8, 'vi', 1),
(774, 'Thuận Châu', 0, 22, 9, 'vi', 1),
(775, 'Yên Châu', 0, 22, 10, 'vi', 1),
(874, 'Sốp Cộp', 0, 22, 11, 'vi', 1),
(595, 'Kế Sách', 0, 23, 1, 'vi', 1),
(596, 'Long Phú', 0, 23, 2, 'vi', 1),
(597, 'Mỹ Tú', 0, 23, 3, 'vi', 1),
(598, 'Mỹ Xuyên', 0, 23, 4, 'vi', 1),
(599, 'Sóc Trăng', 0, 23, 5, 'vi', 1),
(600, 'Thanh Trị', 0, 23, 6, 'vi', 1),
(601, 'Vĩnh Châu', 0, 23, 7, 'vi', 1),
(414, 'Cam Lộ', 0, 24, 1, 'vi', 1),
(415, 'Đa Krông', 0, 24, 2, 'vi', 1),
(416, 'Đông Hà', 0, 24, 3, 'vi', 1),
(417, 'Gio Linh', 0, 24, 4, 'vi', 1),
(418, 'Hải Lăng', 0, 24, 5, 'vi', 1),
(419, 'Hướng Hóa', 0, 24, 6, 'vi', 1),
(420, 'Quảng Trị', 0, 24, 7, 'vi', 1),
(421, 'Triệu Phong', 0, 24, 8, 'vi', 1),
(422, 'Vĩnh Linh', 0, 24, 9, 'vi', 1),
(753, 'Ba Chế', 0, 25, 1, 'vi', 1),
(754, 'Bình Liêu', 0, 25, 2, 'vi', 1),
(755, 'Cẩm Phả', 0, 25, 3, 'vi', 1),
(756, 'Cô Tô', 0, 25, 4, 'vi', 1),
(757, 'Đông Triều', 0, 25, 5, 'vi', 1),
(758, 'Hạ Long', 0, 25, 6, 'vi', 1),
(759, 'Hoành Bồ', 0, 25, 7, 'vi', 1),
(760, 'Móng Cái', 0, 25, 8, 'vi', 1),
(761, 'Quảng Hà', 0, 25, 9, 'vi', 1),
(762, 'Tiên Yên', 0, 25, 10, 'vi', 1),
(763, 'Uông Bí', 0, 25, 11, 'vi', 1),
(764, 'Vân Đồn', 0, 25, 12, 'vi', 1),
(765, 'Yên Hưng', 0, 25, 13, 'vi', 1),
(582, 'Ba Tơ', 0, 26, 1, 'vi', 1),
(583, 'Bình Sơn', 0, 26, 2, 'vi', 1),
(584, 'Đức Phổ', 0, 26, 3, 'vi', 1),
(585, 'Lý Sơn', 0, 26, 4, 'vi', 1),
(586, 'Minh Long', 0, 26, 5, 'vi', 1),
(587, 'Mộ Đức', 0, 26, 6, 'vi', 1),
(588, 'Nghĩa Hành', 0, 26, 7, 'vi', 1),
(589, 'Quãng Ngãi', 0, 26, 8, 'vi', 1),
(590, 'Sơn Hà', 0, 26, 9, 'vi', 1),
(591, 'Sơn Tây', 0, 26, 10, 'vi', 1),
(592, 'Sơn Tịnh', 0, 26, 11, 'vi', 1),
(593, 'Trà Bồng', 0, 26, 12, 'vi', 1),
(594, 'Tư Nghĩa', 0, 26, 13, 'vi', 1),
(400, 'Đại Lộc', 0, 27, 1, 'vi', 1),
(401, 'Điện Bàn', 0, 27, 2, 'vi', 1),
(402, 'Duy Xuyên', 0, 27, 3, 'vi', 1),
(403, 'Hiên', 0, 27, 4, 'vi', 1),
(404, 'Hiệp Đức', 0, 27, 5, 'vi', 1),
(405, 'Hội An', 0, 27, 6, 'vi', 1),
(406, 'Nam Giang', 0, 27, 7, 'vi', 1),
(407, 'Núi Thành', 0, 27, 8, 'vi', 1),
(408, 'Phước Sơn', 0, 27, 9, 'vi', 1),
(409, 'Quế Sơn', 0, 27, 10, 'vi', 1),
(410, 'Tam Kỳ', 0, 27, 11, 'vi', 1),
(411, 'Thăng Bình', 0, 27, 12, 'vi', 1),
(412, 'Tiên Phước', 0, 27, 13, 'vi', 1),
(413, 'Trà My', 0, 27, 14, 'vi', 1),
(747, 'Bố Trạch', 0, 28, 1, 'vi', 1),
(748, 'Đồng Hới', 0, 28, 2, 'vi', 1),
(749, 'Lệ Thủy', 0, 28, 3, 'vi', 1),
(750, 'Quảng Ninh', 0, 28, 4, 'vi', 1),
(751, 'Quảng Trạch', 0, 28, 5, 'vi', 1),
(752, 'Tuyên Hóa', 0, 28, 6, 'vi', 1),
(880, 'Minh Hóa', 0, 28, 7, 'vi', 1),
(576, 'Đồng Xuân', 0, 29, 1, 'vi', 1),
(577, 'Sơn Hòa', 0, 29, 2, 'vi', 1),
(578, 'Sông Cầu', 0, 29, 3, 'vi', 1),
(579, 'Sông Hinh', 0, 29, 4, 'vi', 1),
(580, 'Tuy An', 0, 29, 5, 'vi', 1),
(581, 'Tuy Hòa', 0, 29, 6, 'vi', 1),
(877, 'Đông Hòa', 0, 29, 7, 'vi', 1),
(878, 'Tây Hòa', 0, 29, 8, 'vi', 1),
(879, 'Phú Hòa', 0, 29, 9, 'vi', 1),
(388, 'Đoan Hùng', 0, 30, 1, 'vi', 1),
(389, 'Hạ Hòa', 0, 30, 2, 'vi', 1),
(390, 'Lâm Thao', 0, 30, 3, 'vi', 1),
(391, 'Phù Ninh', 0, 30, 4, 'vi', 1),
(392, 'Phú Thọ', 0, 30, 5, 'vi', 1),
(393, 'Sông Thao', 0, 30, 6, 'vi', 1),
(394, 'Tam Nông', 0, 30, 7, 'vi', 1),
(395, 'Thanh Ba', 0, 30, 8, 'vi', 1),
(396, 'Thanh Sơn', 0, 30, 9, 'vi', 1),
(397, 'Thanh Thủy', 0, 30, 10, 'vi', 1),
(398, 'Việt Trì', 0, 30, 11, 'vi', 1),
(399, 'Yên Lập', 0, 30, 12, 'vi', 1),
(875, 'Cẩm Khê', 0, 30, 13, 'vi', 1),
(876, 'Tân Sơn', 0, 30, 14, 'vi', 1),
(743, 'Ninh Hải', 0, 31, 1, 'vi', 1),
(744, 'Ninh Phước', 0, 31, 2, 'vi', 1),
(745, 'Ninh Sơn', 0, 31, 3, 'vi', 1),
(746, 'Phan Rang - Tháp Chàm', 0, 31, 4, 'vi', 1),
(568, 'Hoa Lư', 0, 32, 1, 'vi', 1),
(569, 'Kim Sơn', 0, 32, 2, 'vi', 1),
(571, 'Nho Quan', 0, 32, 3, 'vi', 1),
(572, 'Ninh Bình', 0, 32, 4, 'vi', 1),
(573, 'Tam Điệp', 0, 32, 5, 'vi', 1),
(574, 'Yên Khánh', 0, 32, 6, 'vi', 1),
(575, 'Yên Mô', 0, 32, 7, 'vi', 1),
(872, 'Gia Viễn', 0, 32, 8, 'vi', 1),
(369, 'Anh Sơn', 0, 33, 1, 'vi', 1),
(370, 'Con Cuông', 0, 33, 2, 'vi', 1),
(371, 'Cửa Lò', 0, 33, 3, 'vi', 1),
(372, 'Diễn Châu', 0, 33, 4, 'vi', 1),
(373, 'Đô Lương', 0, 33, 5, 'vi', 1),
(374, 'Hưng Nguyên', 0, 33, 6, 'vi', 1),
(375, 'Kỳ Sơn', 0, 33, 7, 'vi', 1),
(376, 'Nam Đàn', 0, 33, 8, 'vi', 1),
(377, 'Nghi Lộc', 0, 33, 9, 'vi', 1),
(378, 'Nghĩa Đàn', 0, 33, 10, 'vi', 1),
(379, 'Quế Phong', 0, 33, 11, 'vi', 1),
(380, 'Quỳ Châu', 0, 33, 12, 'vi', 1),
(381, 'Quỳ Hợp', 0, 33, 13, 'vi', 1),
(382, 'Quỳnh Lưu', 0, 33, 14, 'vi', 1),
(383, 'Tân Kỳ', 0, 33, 15, 'vi', 1),
(384, 'Thanh Chương', 0, 33, 16, 'vi', 1),
(385, 'Tương Dương', 0, 33, 17, 'vi', 1),
(386, 'Vinh', 0, 33, 18, 'vi', 1),
(387, 'Yên Thành', 0, 33, 19, 'vi', 1),
(883, 'Thái Hòa', 0, 33, 20, 'vi', 1),
(358, 'Giao Thủy', 0, 34, 1, 'vi', 1),
(360, 'Hải Hậu', 0, 34, 2, 'vi', 1),
(361, 'Mỹ Lộc', 0, 34, 3, 'vi', 1),
(362, 'Nam Định', 0, 34, 4, 'vi', 1),
(363, 'Nam Trực', 0, 34, 5, 'vi', 1),
(364, 'Nghĩa Hưng', 0, 34, 6, 'vi', 1),
(365, 'Trực Ninh', 0, 34, 7, 'vi', 1),
(366, 'Vụ Bản', 0, 34, 8, 'vi', 1),
(367, 'Xuân Trường', 0, 34, 9, 'vi', 1),
(368, 'Ý Yên', 0, 34, 10, 'vi', 1),
(341, 'Bến Lức', 0, 35, 1, 'vi', 1),
(344, 'Cần Đước', 0, 35, 2, 'vi', 1),
(345, 'Cần Giuộc', 0, 35, 3, 'vi', 1),
(346, 'Châu Thành', 0, 35, 4, 'vi', 1),
(347, 'Đức Hòa', 0, 35, 5, 'vi', 1),
(348, 'Đức Huệ', 0, 35, 6, 'vi', 1),
(349, 'Mộc Hóa', 0, 35, 7, 'vi', 1),
(350, 'Tân An', 0, 35, 8, 'vi', 1),
(351, 'Tân Hưng', 0, 35, 9, 'vi', 1),
(352, 'Tân Thạnh', 0, 35, 10, 'vi', 1),
(354, 'Tân Trụ', 0, 35, 11, 'vi', 1),
(355, 'Thạnh Hóa', 0, 35, 12, 'vi', 1),
(356, 'Thủ Thừa', 0, 35, 13, 'vi', 1),
(357, 'Vĩnh Hưng', 0, 35, 14, 'vi', 1),
(849, 'Liên Hưng', 0, 35, 15, 'vi', 1),
(306, 'Bắc Hà', 0, 36, 1, 'vi', 1),
(307, 'Bảo Thắng', 0, 36, 2, 'vi', 1),
(308, 'Bảo Yên', 0, 36, 3, 'vi', 1),
(309, 'Bát Xát', 0, 36, 4, 'vi', 1),
(310, 'Cam Đường', 0, 36, 5, 'vi', 1),
(311, 'Lào Cai', 0, 36, 6, 'vi', 1),
(312, 'Mường Khương', 0, 36, 7, 'vi', 1),
(313, 'Sa Pa', 0, 36, 8, 'vi', 1),
(314, 'Than Uyên', 0, 36, 9, 'vi', 1),
(315, 'Văn Bàn', 0, 36, 10, 'vi', 1),
(316, 'Xi Ma Cai', 0, 36, 11, 'vi', 1),
(328, 'Bắc Sơn', 0, 37, 1, 'vi', 1),
(329, 'Bình Gia', 0, 37, 2, 'vi', 1),
(330, 'Cao Lăng', 0, 37, 3, 'vi', 1),
(331, 'Cao Lộc', 0, 37, 4, 'vi', 1),
(332, 'Đình Lập', 0, 37, 5, 'vi', 1),
(333, 'Hữu Lũng', 0, 37, 6, 'vi', 1),
(334, 'Lạng Sơn', 0, 37, 7, 'vi', 1),
(336, 'Lộc Bình', 0, 37, 8, 'vi', 1),
(337, 'Tràng Định', 0, 37, 9, 'vi', 1),
(342, 'Văn Lãng', 0, 37, 10, 'vi', 1),
(343, 'Văn Quang', 0, 37, 11, 'vi', 1),
(317, 'Bảo Lâm', 0, 38, 1, 'vi', 1),
(318, 'Bảo Lộc', 0, 38, 2, 'vi', 1),
(319, 'Cát Tiên', 0, 38, 3, 'vi', 1),
(320, 'Đà Lạt', 0, 38, 4, 'vi', 1),
(321, 'Đạ Tẻh', 0, 38, 5, 'vi', 1),
(322, 'Đạ Huoai', 0, 38, 6, 'vi', 1),
(323, 'Di Linh', 0, 38, 7, 'vi', 1),
(324, 'Đơn Dương', 0, 38, 8, 'vi', 1),
(325, 'Đức Trọng', 0, 38, 9, 'vi', 1),
(326, 'Lạc Dương', 0, 38, 10, 'vi', 1),
(327, 'Lâm Hà', 0, 38, 11, 'vi', 1),
(296, 'Điện Biên', 0, 39, 1, 'vi', 1),
(297, 'Điện Biên Đông', 0, 39, 2, 'vi', 1),
(298, 'Điện Biên Phủ', 0, 39, 3, 'vi', 1),
(299, 'Lai Châu', 0, 39, 4, 'vi', 1),
(300, 'Mường Lay', 0, 39, 5, 'vi', 1),
(301, 'Mường Tè', 0, 39, 6, 'vi', 1),
(302, 'Phong Thổ', 0, 39, 7, 'vi', 1),
(303, 'Sìn Hồ', 0, 39, 8, 'vi', 1),
(304, 'Tủa Chùa', 0, 39, 9, 'vi', 1),
(305, 'Tuần Giáo', 0, 39, 10, 'vi', 1),
(290, 'Đắk Glei', 0, 40, 1, 'vi', 1),
(291, 'Đắk Tô', 0, 40, 2, 'vi', 1),
(292, 'Kon Plông', 0, 40, 3, 'vi', 1),
(293, 'Kon Tum', 0, 40, 4, 'vi', 1),
(294, 'Ngọc Hồi', 0, 40, 5, 'vi', 1),
(295, 'Sa Thầy', 0, 40, 6, 'vi', 1),
(715, 'Đắk Glei', 0, 40, 7, 'vi', 1),
(716, 'Đắk Hà', 0, 40, 8, 'vi', 1),
(717, 'Đắk Tô', 0, 40, 9, 'vi', 1),
(718, 'Kon Plông', 0, 40, 10, 'vi', 1),
(719, 'Kon Tum', 0, 40, 11, 'vi', 1),
(720, 'Ngọc Hồi', 0, 40, 12, 'vi', 1),
(721, 'Sa Thầy', 0, 40, 13, 'vi', 1),
(277, 'An Biên', 0, 41, 1, 'vi', 1),
(278, 'An Minh', 0, 41, 2, 'vi', 1),
(279, 'Châu Thành', 0, 41, 3, 'vi', 1),
(280, 'Gò Quao', 0, 41, 4, 'vi', 1),
(281, 'Gồng Giềng', 0, 41, 5, 'vi', 1),
(282, 'Hà Tiên', 0, 41, 6, 'vi', 1),
(283, 'Hòn Đất', 0, 41, 7, 'vi', 1),
(284, 'Kiên Hải', 0, 41, 8, 'vi', 1),
(285, 'Phú Quốc', 0, 41, 9, 'vi', 1),
(286, 'Rạch Giá', 0, 41, 10, 'vi', 1),
(287, 'Tân Hiệp', 0, 41, 11, 'vi', 1),
(288, 'Vĩnh Thuận', 0, 41, 12, 'vi', 1),
(269, 'Nha Trang', 0, 42, 1, 'vi', 1),
(270, 'Khánh Vĩnh', 0, 42, 2, 'vi', 1),
(271, 'Diên Khánh', 0, 42, 3, 'vi', 1),
(272, 'Ninh Hòa', 0, 42, 4, 'vi', 1),
(273, 'Khánh Sơn', 0, 42, 5, 'vi', 1),
(274, 'Cam Ranh', 0, 42, 6, 'vi', 1),
(275, 'Trường Sa', 0, 42, 7, 'vi', 1),
(276, 'Vạn Ninh', 0, 42, 8, 'vi', 1),
(262, 'Ân Thi', 0, 43, 1, 'vi', 1),
(263, 'Hưng Yên', 0, 43, 2, 'vi', 1),
(264, 'Khoái Châu', 0, 43, 3, 'vi', 1),
(265, 'Tiên Lữ', 0, 43, 4, 'vi', 1),
(266, 'Văn Giang', 0, 43, 5, 'vi', 1),
(267, 'Văn Lâm', 0, 43, 6, 'vi', 1),
(268, 'Yên Mỹ', 0, 43, 7, 'vi', 1),
(705, 'Ân Thi', 0, 43, 8, 'vi', 1),
(706, 'Hưng Yên', 0, 43, 9, 'vi', 1),
(707, 'Khoái Châu', 0, 43, 10, 'vi', 1),
(708, 'Kim Động', 0, 43, 11, 'vi', 1),
(709, 'Mỹ Hào', 0, 43, 12, 'vi', 1),
(710, 'Phù Cừ', 0, 43, 13, 'vi', 1),
(224, 'Đà Bắc', 0, 44, 1, 'vi', 1),
(225, 'Hòa Bình', 0, 44, 2, 'vi', 1),
(226, 'Kim Bôi', 0, 44, 3, 'vi', 1),
(227, 'Kỳ Sơn', 0, 44, 4, 'vi', 1),
(228, 'Lạc Sơn', 0, 44, 5, 'vi', 1),
(229, 'Lạc Thủy', 0, 44, 6, 'vi', 1),
(230, 'Lương Sơn', 0, 44, 7, 'vi', 1),
(231, 'Mai Châu', 0, 44, 8, 'vi', 1),
(232, 'Tân Lạc', 0, 44, 9, 'vi', 1),
(233, 'Yên Thủy', 0, 44, 10, 'vi', 1),
(873, 'Cao Phong', 0, 44, 11, 'vi', 1),
(682, 'Châu Thành', 0, 45, 1, 'vi', 1),
(683, 'Long Mỹ', 0, 45, 2, 'vi', 1),
(685, 'Phụng Hiệp', 0, 45, 3, 'vi', 1),
(687, 'Vị Thanh', 0, 45, 4, 'vi', 1),
(688, 'Vị Thủy', 0, 45, 5, 'vi', 1),
(890, 'Châu Thành A', 0, 45, 6, 'vi', 1),
(891, 'Ngã Bảy', 0, 45, 7, 'vi', 1),
(234, 'Bình Giang', 0, 46, 1, 'vi', 1),
(235, 'Cẩm Giàng', 0, 46, 2, 'vi', 1),
(236, 'Chí Linh', 0, 46, 3, 'vi', 1),
(238, 'Gia Lộc', 0, 46, 4, 'vi', 1),
(239, 'Hải Dương', 0, 46, 5, 'vi', 1),
(241, 'Kim Thành', 0, 46, 6, 'vi', 1),
(242, 'Nam Sách', 0, 46, 7, 'vi', 1),
(243, 'Ninh Giang', 0, 46, 8, 'vi', 1),
(244, 'Kinh Môn', 0, 46, 9, 'vi', 1),
(245, 'Ninh Giang', 0, 46, 10, 'vi', 1),
(246, 'Thanh Hà', 0, 46, 11, 'vi', 1),
(247, 'Thanh Miện', 0, 46, 12, 'vi', 1),
(248, 'Từ Kỳ', 0, 46, 13, 'vi', 1),
(214, 'Cẩm Xuyên', 0, 47, 1, 'vi', 1),
(215, 'Can Lộc', 0, 47, 2, 'vi', 1),
(216, 'Đức Thọ', 0, 47, 3, 'vi', 1),
(217, 'Hà Tĩnh', 0, 47, 4, 'vi', 1),
(218, 'Hồng Lĩnh', 0, 47, 5, 'vi', 1),
(219, 'Hương Khê', 0, 47, 6, 'vi', 1),
(220, 'Hương Sơn', 0, 47, 7, 'vi', 1),
(221, 'Kỳ Anh', 0, 47, 8, 'vi', 1),
(222, 'Nghi Xuân', 0, 47, 9, 'vi', 1),
(223, 'Thạch Hà', 0, 47, 10, 'vi', 1),
(881, 'Vũ Quang', 0, 47, 11, 'vi', 1),
(882, 'Lộc Hà', 0, 47, 12, 'vi', 1),
(689, 'Bình Lục', 0, 49, 1, 'vi', 1),
(690, 'Duy Tiên', 0, 49, 2, 'vi', 1),
(691, 'Kim Bảng', 0, 49, 3, 'vi', 1),
(692, 'Lý Nhân', 0, 49, 4, 'vi', 1),
(693, 'Phủ Lý', 0, 49, 5, 'vi', 1),
(694, 'Thanh Liêm', 0, 49, 6, 'vi', 1),
(498, 'Bắc Mê', 0, 50, 1, 'vi', 1),
(499, 'Bắc Quang', 0, 50, 2, 'vi', 1),
(500, 'Đồng Văn', 0, 50, 3, 'vi', 1),
(501, 'Hà Giang', 0, 50, 4, 'vi', 1),
(502, 'Hoàng Su Phì', 0, 50, 5, 'vi', 1),
(503, 'Mèo Vạt', 0, 50, 6, 'vi', 1),
(504, 'Quản Bạ', 0, 50, 7, 'vi', 1),
(505, 'Vị Xuyên', 0, 50, 8, 'vi', 1),
(506, 'Xín Mần', 0, 50, 9, 'vi', 1),
(507, 'Yên Minh', 0, 50, 10, 'vi', 1),
(187, 'An Khê', 0, 51, 1, 'vi', 1),
(188, 'Ayun Pa ', 0, 51, 2, 'vi', 1),
(189, 'Chư Păh', 0, 51, 3, 'vi', 1),
(190, 'Chư Prông  ', 0, 51, 4, 'vi', 1),
(191, 'Chư Sê ', 0, 51, 5, 'vi', 1),
(192, 'Đức Cơ  ', 0, 51, 6, 'vi', 1),
(193, 'KBang  ', 0, 51, 7, 'vi', 1),
(194, 'Krông Chro', 0, 51, 8, 'vi', 1),
(195, 'Krông Pa ', 0, 51, 9, 'vi', 1),
(196, 'La Grai  ', 0, 51, 10, 'vi', 1),
(197, 'Mang Yang ', 0, 51, 11, 'vi', 1),
(198, 'Pleiku', 0, 51, 12, 'vi', 1),
(826, 'Cao Lãnh', 0, 52, 1, 'vi', 1),
(827, 'Châu Thành', 0, 52, 2, 'vi', 1),
(828, 'Hồng Ngự', 0, 52, 3, 'vi', 1),
(829, 'Lai Vung', 0, 52, 4, 'vi', 1),
(830, 'Lấp Vò', 0, 52, 5, 'vi', 1),
(831, 'Tam Nông', 0, 52, 6, 'vi', 1),
(832, 'Tân Hồng', 0, 52, 7, 'vi', 1),
(833, 'Thanh Bình', 0, 52, 8, 'vi', 1),
(834, 'Tháp Mười', 0, 52, 9, 'vi', 1),
(835, 'Xa Đéc', 0, 52, 10, 'vi', 1),
(634, 'Biên Hòa', 0, 53, 1, 'vi', 1),
(635, 'Định Quán', 0, 53, 2, 'vi', 1),
(636, 'Long Khánh', 0, 53, 3, 'vi', 1),
(637, 'Long Thành', 0, 53, 4, 'vi', 1),
(638, 'Nhơn Trạch', 0, 53, 5, 'vi', 1),
(639, 'Tân Phú', 0, 53, 6, 'vi', 1),
(640, 'Thống Nhất', 0, 53, 7, 'vi', 1),
(641, 'Vĩnh Cừu', 0, 53, 8, 'vi', 1),
(642, 'Xuân Lộc', 0, 53, 9, 'vi', 1),
(838, 'Trảng Bom', 0, 53, 10, 'vi', 1),
(455, 'Buôn Đôn', 0, 56, 1, 'vi', 1),
(456, 'Buôn Ma Thuột', 0, 56, 2, 'vi', 1),
(457, 'Cư Jút', 0, 56, 3, 'vi', 1),
(458, 'Cư M''gar', 0, 56, 4, 'vi', 1),
(459, 'Đắk Mil', 0, 56, 5, 'vi', 1),
(460, 'Đắk Nông', 0, 56, 6, 'vi', 1),
(461, 'Đắk R''lấp', 0, 56, 7, 'vi', 1),
(462, 'Ea H''leo', 0, 56, 8, 'vi', 1),
(463, 'Ea Kra', 0, 56, 9, 'vi', 1),
(464, 'Ea Súp', 0, 56, 10, 'vi', 1),
(465, 'Krông A Na', 0, 56, 11, 'vi', 1),
(466, 'Krông Bông', 0, 56, 12, 'vi', 1),
(467, 'Krông Búk', 0, 56, 13, 'vi', 1),
(468, 'Krông Năng', 0, 56, 14, 'vi', 1),
(469, 'Krông Nô', 0, 56, 15, 'vi', 1),
(470, 'Krông Pắc', 0, 56, 16, 'vi', 1),
(471, 'Lắk', 0, 56, 17, 'vi', 1),
(472, 'M''Đrắt', 0, 56, 18, 'vi', 1),
(176, 'Bảo Lạc', 0, 57, 1, 'vi', 1),
(177, 'Cao Bắng', 0, 57, 2, 'vi', 1),
(178, 'Hạ Lang', 0, 57, 3, 'vi', 1),
(179, 'Hà Quảng', 0, 57, 4, 'vi', 1),
(180, 'Hòa An', 0, 57, 5, 'vi', 1),
(181, 'Nguyên Bình', 0, 57, 6, 'vi', 1),
(182, 'Quảng Hòa', 0, 57, 7, 'vi', 1),
(183, 'Thạch An', 0, 57, 8, 'vi', 1),
(184, 'Thông Nông', 0, 57, 9, 'vi', 1),
(185, 'Trà Lĩnh', 0, 57, 10, 'vi', 1),
(186, 'Trùng Khánh', 0, 57, 11, 'vi', 1),
(491, 'Cà Mau', 0, 58, 1, 'vi', 1),
(492, 'Cái Nước', 0, 58, 2, 'vi', 1),
(493, 'Đầm Dơi', 0, 58, 3, 'vi', 1),
(494, 'Ngọc Hiển', 0, 58, 4, 'vi', 1),
(495, 'Thới Bình', 0, 58, 5, 'vi', 1),
(496, 'Trần Văn Thời', 0, 58, 6, 'vi', 1),
(497, 'U Minh', 0, 58, 7, 'vi', 1),
(887, 'Năm Căn', 0, 58, 8, 'vi', 1),
(888, 'Phú Tân', 0, 58, 9, 'vi', 1),
(654, 'Bắc Bình', 0, 59, 1, 'vi', 1),
(655, 'Đức Linh', 0, 59, 2, 'vi', 1),
(656, 'Hàm Tân', 0, 59, 3, 'vi', 1),
(657, 'Hàm Thuận Bắc', 0, 59, 4, 'vi', 1),
(658, 'Hàm Thuận Nam', 0, 59, 5, 'vi', 1),
(659, 'Phan Thiết', 0, 59, 6, 'vi', 1),
(660, 'Phú Quí', 0, 59, 7, 'vi', 1),
(661, 'Tánh Linh', 0, 59, 8, 'vi', 1),
(662, 'Tuy Phong', 0, 59, 9, 'vi', 1),
(897, 'La Gi', 0, 59, 10, 'vi', 1),
(836, 'Bình Long', 0, 60, 1, 'vi', 1),
(839, 'Phước Long', 0, 60, 2, 'vi', 1),
(851, 'Bù Ðăng', 0, 60, 3, 'vi', 1),
(852, 'Chơn Thành', 0, 60, 4, 'vi', 1),
(473, 'Bến Cát', 0, 61, 1, 'vi', 1),
(474, 'Dầu Tiếng', 0, 61, 2, 'vi', 1),
(475, 'Dĩ An', 0, 61, 3, 'vi', 1),
(476, 'Tân Uyên', 0, 61, 4, 'vi', 1),
(477, 'Thủ Dầu Một', 0, 61, 5, 'vi', 1),
(478, 'Thuận An', 0, 61, 6, 'vi', 1),
(841, 'Lái Thiêu', 0, 61, 7, 'vi', 1),
(896, 'Phú Giáo', 0, 61, 8, 'vi', 1),
(158, 'An Lão', 0, 62, 1, 'vi', 1),
(159, 'An Nhơn', 0, 62, 2, 'vi', 1),
(160, 'Hoài Ân', 0, 62, 3, 'vi', 1),
(161, 'Hoài Nhơn', 0, 62, 4, 'vi', 1),
(162, 'Phù Cát', 0, 62, 5, 'vi', 1),
(163, 'Phù Mỹ', 0, 62, 6, 'vi', 1),
(164, 'Qui Nhơn', 0, 62, 7, 'vi', 1),
(165, 'Tây Sơn', 0, 62, 8, 'vi', 1),
(166, 'Tuy Phước', 0, 62, 9, 'vi', 1),
(167, 'Vân Canh', 0, 62, 10, 'vi', 1),
(168, 'Vĩnh Thạnh', 0, 62, 11, 'vi', 1),
(673, 'Ba Tri', 0, 63, 1, 'vi', 1),
(674, 'Bến Tre', 0, 63, 2, 'vi', 1),
(675, 'Bình Đại', 0, 63, 3, 'vi', 1),
(676, 'Châu Thành', 0, 63, 4, 'vi', 1),
(677, 'Chợ Lách', 0, 63, 5, 'vi', 1),
(678, 'Giồng Trôm', 0, 63, 6, 'vi', 1),
(679, 'Mỏ Cày', 0, 63, 7, 'vi', 1),
(680, 'Thạnh Phú', 0, 63, 8, 'vi', 1),
(483, 'Bắc Ninh', 0, 64, 1, 'vi', 1),
(484, 'Gia Bình', 0, 64, 2, 'vi', 1),
(485, 'Lương Tài', 0, 64, 3, 'vi', 1),
(486, 'Quế Võ', 0, 64, 4, 'vi', 1),
(487, 'Thuận Thành', 0, 64, 5, 'vi', 1),
(488, 'Tiên Du', 0, 64, 6, 'vi', 1),
(489, 'Từ Sơn', 0, 64, 7, 'vi', 1),
(490, 'Yên Phong', 0, 64, 8, 'vi', 1),
(479, 'Bạc Liêu', 0, 65, 1, 'vi', 1),
(480, 'Giá Rai', 0, 65, 2, 'vi', 1),
(481, 'Hồng Dân', 0, 65, 3, 'vi', 1),
(482, 'Vĩnh Lợi', 0, 65, 4, 'vi', 1),
(884, 'Phước Long', 0, 65, 5, 'vi', 1),
(885, 'Đông Hải', 0, 65, 6, 'vi', 1),
(886, 'Hòa Bình', 0, 65, 7, 'vi', 1),
(169, 'Ba Bể', 0, 66, 1, 'vi', 1),
(170, 'Bắc Kạn', 0, 66, 2, 'vi', 1),
(171, 'Bạch Thông ', 0, 66, 3, 'vi', 1),
(172, 'Chợ Đồn', 0, 66, 4, 'vi', 1),
(173, 'Chợ Mới', 0, 66, 5, 'vi', 1),
(174, 'Na Rì', 0, 66, 6, 'vi', 1),
(175, 'Ngân Sơn', 0, 66, 7, 'vi', 1),
(663, 'Bắc Giang', 0, 67, 1, 'vi', 1),
(664, 'Hiệp Hòa', 0, 67, 2, 'vi', 1),
(665, 'Lạng Giang', 0, 67, 3, 'vi', 1),
(666, 'Lục Nam', 0, 67, 4, 'vi', 1),
(667, 'Lục Ngạn', 0, 67, 5, 'vi', 1),
(668, 'Sơn Động', 0, 67, 6, 'vi', 1),
(669, 'Tân Yên', 0, 67, 7, 'vi', 1),
(670, 'Việt Yên', 0, 67, 8, 'vi', 1),
(671, 'Yên Dũng', 0, 67, 9, 'vi', 1),
(672, 'Yên Thế', 0, 67, 10, 'vi', 1),
(151, 'Bà Rịa', 0, 68, 1, 'vi', 1),
(152, 'Châu Đất', 0, 68, 2, 'vi', 1),
(153, 'Côn Đảo', 0, 68, 3, 'vi', 1),
(154, 'Long Đất', 0, 68, 4, 'vi', 1),
(155, 'Tân Thành', 0, 68, 5, 'vi', 1),
(156, 'Vũng Tàu', 0, 68, 6, 'vi', 1),
(157, 'Xuyên Mộc', 0, 68, 7, 'vi', 1),
(898, 'Long Điền', 0, 68, 8, 'vi', 1),
(899, 'Đất Đỏ', 0, 68, 9, 'vi', 1),
(643, 'An Phú', 0, 69, 1, 'vi', 1),
(644, 'Châu Đốc', 0, 69, 2, 'vi', 1),
(645, 'Châu Phú', 0, 69, 3, 'vi', 1),
(646, 'Châu Thành', 0, 69, 4, 'vi', 1),
(647, 'Chợ Mới', 0, 69, 5, 'vi', 1),
(648, 'Long Xuyên', 0, 69, 6, 'vi', 1),
(649, 'Phú Tân', 0, 69, 7, 'vi', 1),
(650, 'Tân Châu', 0, 69, 8, 'vi', 1),
(651, 'Thoại Sơn', 0, 69, 9, 'vi', 1),
(652, 'Tịnh Biên', 0, 69, 10, 'vi', 1),
(653, 'Tri Tôn', 0, 69, 11, 'vi', 1),
(249, 'An Hải', 0, 70, 1, 'vi', 1),
(250, 'An Lão', 0, 70, 2, 'vi', 1),
(251, 'Bạch Long Vỹ', 0, 70, 3, 'vi', 1),
(253, 'Đồ Sơn', 0, 70, 4, 'vi', 1),
(254, 'Hồng Bàng', 0, 70, 5, 'vi', 1),
(255, 'Kiến An', 0, 70, 6, 'vi', 1),
(256, 'Kiến Thụy', 0, 70, 7, 'vi', 1),
(257, 'Lê Chân', 0, 70, 8, 'vi', 1),
(258, 'Ngô Quyền', 0, 70, 9, 'vi', 1),
(259, 'Thủy Nguyên', 0, 70, 10, 'vi', 1),
(260, 'Tiên Lãng', 0, 70, 11, 'vi', 1),
(261, 'Vĩnh Bảo', 0, 70, 12, 'vi', 1),
(854, 'Cát Bà', 0, 70, 13, 'vi', 1),
(900, 'Dương Kinh', 0, 70, 14, 'vi', 1),
(819, 'Đảo Hòang Sa', 0, 71, 1, 'vi', 1),
(820, 'Hải Châu', 0, 71, 2, 'vi', 1),
(821, 'Hòa Vang', 0, 71, 3, 'vi', 1),
(822, 'Liên Chiểu', 0, 71, 4, 'vi', 1),
(823, 'Ngũ Hành Sơn', 0, 71, 5, 'vi', 1),
(824, 'Sơn Trà', 0, 71, 6, 'vi', 1),
(825, 'Thanh Khê', 0, 71, 7, 'vi', 1),
(844, 'Cẩm Lệ', 0, 71, 8, 'vi', 1),
(681, 'Cần Thơ', 0, 72, 1, 'vi', 1),
(684, 'Ô Môn', 0, 72, 2, 'vi', 1),
(686, 'Thốt Nốt', 0, 72, 3, 'vi', 1),
(837, 'Ninh Kiều', 0, 72, 4, 'vi', 1),
(848, 'Cái Răng', 0, 72, 5, 'vi', 1),
(855, 'Bình Thủy', 0, 72, 6, 'vi', 1),
(892, 'Phong Điền', 0, 72, 7, 'vi', 1),
(893, 'Cờ Đỏ', 0, 72, 8, 'vi', 1),
(894, 'Thới Lai', 0, 72, 9, 'vi', 1),
(895, 'Vĩnh Thạnh', 0, 72, 10, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listsendmail`
--

CREATE TABLE IF NOT EXISTS `web_listsendmail` (
`id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listsendmail`
--

INSERT INTO `web_listsendmail` (`id`, `name`, `email`, `lang`, `status`) VALUES
(1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1),
(2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1),
(3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1),
(4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_logs`
--

CREATE TABLE IF NOT EXISTS `web_logs` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `action` varchar(30) NOT NULL,
  `table` varchar(30) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` text,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_restore` bigint(10) DEFAULT NULL,
  `user_restore` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'Bắp cải', 'delete', 'web_photo', 1437560599, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`datetime`,`menu_id`fields%%%values1%%%Bắp cải%%%1.jpg%%%1%%%vi%%%1%%%0%%%,7,', 'vi', 1, 1437560610, 'admin'),
(2, 'tran nhan', 'update', 'web_contact', 1437560677, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values16%%%tran nhan%%%hieunhan@yahoo.com%%%0988388003%%%123 cmt 8%%%154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An%%%1437358287%%%::1%%%vi%%%1', 'vi', 0, NULL, NULL),
(3, 'tran nhan', 'delete', 'web_contact', 1437560680, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values16%%%tran nhan%%%hieunhan@yahoo.com%%%0988388003%%%123 cmt 8%%%<p>154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An 154 Ấp 2 Thạnh Hòa, Bến Lức, Long An</p>\r\n%%%1437358287%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(4, 'Tran Nhan', 'delete', 'web_contact', 1437560849, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values17%%%Tran Nhan%%%hieunhan11@yahoo.com%%%0988388003%%%123 cmt 8%%%111111 11111111112 2222222 444444444%%%1437560707%%%::1%%%vi%%%1', 'vi', 0, NULL, NULL),
(5, 'Việt Nam', 'status', 'web_language', 1438141113, 'admin', '1', 'en', 0, NULL, NULL),
(6, 'Việt Nam', 'status', 'web_language', 1438141148, 'admin', '0', 'en', 0, NULL, NULL),
(7, 'Việt Nam', 'status', 'web_language', 1438141157, 'admin', '1', 'en', 0, NULL, NULL),
(8, 'Site name', 'update', 'web_config', 1438141166, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values28%%%Site name%%%sitename%%%VIET UC THAI DUONG%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(9, 'Address', 'update', 'web_config', 1438141174, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values26%%%Address%%%address%%%154 Ap 2 Thanh Hoa, Ben Luc, Long An%%%2%%%en%%%1', 'en', 0, NULL, NULL),
(10, 'Telephone', 'update', 'web_config', 1438141195, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values22%%%Telephone%%%tel%%%+84 723 639012%%%3%%%en%%%1', 'en', 0, NULL, NULL),
(11, 'Fax', 'status', 'web_config', 1438141200, 'admin', '1', 'en', 0, NULL, NULL),
(12, 'Email', 'update', 'web_config', 1438141212, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values21%%%Email%%%email%%%info@vietucthaiduong.com%%%5%%%en%%%1', 'en', 0, NULL, NULL),
(13, 'Copyright', 'update', 'web_config', 1438141241, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values20%%%Copyright%%%copyright%%%Copyright © 2015 by VIETUCTHAIDUONG.COM%%%6%%%en%%%1', 'en', 0, NULL, NULL),
(14, 'Hotline', 'update', 'web_config', 1438141251, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values23%%%Hotline%%%hotline%%%0988 388 003%%%7%%%en%%%1', 'en', 0, NULL, NULL),
(15, 'Slogan', 'status', 'web_config', 1438141257, 'admin', '1', 'en', 0, NULL, NULL),
(16, 'News number / page', 'update', 'web_config', 1438141279, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values16%%%News number / page%%%limit_1%%%5%%%10%%%en%%%1', 'en', 0, NULL, NULL),
(17, 'Product number / page', 'update', 'web_config', 1438141301, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values17%%%Product number / page%%%limit_2%%%12%%%11%%%en%%%1', 'en', 0, NULL, NULL),
(18, 'Photos number / page', 'update', 'web_config', 1438141321, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values18%%%Photos number / page%%%limit_3%%%18%%%12%%%en%%%1', 'en', 0, NULL, NULL),
(19, 'Videos number / page', 'update', 'web_config', 1438141332, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values19%%%Videos number / page%%%limit_4%%%10%%%13%%%en%%%1', 'en', 0, NULL, NULL),
(20, 'Slogan', 'update', 'web_config', 1438141366, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values24%%%Slogan%%%slogan%%%CHUYÊN XUẤT NHẬP KHẨU NÔNG SẢN CHẤT LƯỢNG CAO%%%8%%%en%%%0', 'en', 0, NULL, NULL),
(21, 'History forex', 'update', 'web_config', 1438141372, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values24%%%History forex%%%limit_0%%%8%%%8%%%en%%%1', 'en', 0, NULL, NULL),
(22, 'Home', 'create', 'web_menu', 1438141433, 'admin', '', 'en', 0, NULL, NULL),
(23, 'Contact US', 'create', 'web_menu', 1438141471, 'admin', '', 'en', 0, NULL, NULL),
(24, 'product', 'status', 'web_menu_type', 1438141553, 'admin', '1', 'en', 0, NULL, NULL),
(25, 'photo', 'status', 'web_menu_type', 1438141556, 'admin', '1', 'en', 0, NULL, NULL),
(26, 'item_1', 'update', 'web_menu_type', 1438141610, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values7%%%item_1%%%Item 1%%%%%%%%%%%%vi%%%7%%%1%%%0', 'en', 0, NULL, NULL),
(27, 'item_2', 'update', 'web_menu_type', 1438141638, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values8%%%item_2%%%Item 2%%%%%%%%%%%%vi%%%8%%%1%%%0', 'en', 0, NULL, NULL),
(28, 'item_3', 'update', 'web_menu_type', 1438141667, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values9%%%item_3%%%Item 3%%%%%%%%%%%%vi%%%9%%%1%%%0', 'en', 0, NULL, NULL),
(29, 'Login', 'create', 'web_menu', 1438141737, 'admin', '', 'en', 0, NULL, NULL),
(30, 'User', 'create', 'web_menu', 1438141808, 'admin', '', 'en', 0, NULL, NULL),
(31, 'Payment', 'create', 'web_menu', 1438141832, 'admin', '', 'en', 0, NULL, NULL),
(32, 'Sign Up', 'create', 'web_menu', 1438141878, 'admin', '', 'en', 0, NULL, NULL),
(33, 'FEATURES', 'create', 'web_menu', 1438141911, 'admin', '', 'en', 0, NULL, NULL),
(34, 'Forex Buy & Sell signals sent in real-time to email and computer.', 'create', 'web_menu', 1438141941, 'admin', '', 'en', 0, NULL, NULL),
(35, 'Signals include Entry, Stop Loss, and Take Profit targets', 'create', 'web_menu', 1438141957, 'admin', '', 'en', 0, NULL, NULL),
(36, 'Real-Time Trade Signal updates.', 'create', 'web_menu', 1438141972, 'admin', '', 'en', 0, NULL, NULL),
(37, 'Number of Signals', 'create', 'web_menu', 1438141985, 'admin', '', 'en', 0, NULL, NULL),
(38, 'Sản phẩm', 'status', 'web_menu_admin', 1438143027, 'admin', '1', 'en', 0, NULL, NULL),
(39, 'Thư viện ảnh', 'status', 'web_menu_admin', 1438143028, 'admin', '1', 'en', 0, NULL, NULL),
(40, 'Thư viện video', 'status', 'web_menu_admin', 1438143029, 'admin', '1', 'en', 0, NULL, NULL),
(41, 'Slider & banner', 'status', 'web_menu_admin', 1438143030, 'admin', '1', 'en', 0, NULL, NULL),
(42, 'Thông tin, bài viết', 'update', 'web_menu_admin', 1438143057, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values4%%%Thông tin, bài viết%%%web_article%%%icon-info.jpg%%%4%%%0%%%%%%1', 'en', 0, NULL, NULL),
(43, 'Cấu hình website', 'update', 'web_menu_admin', 1438143068, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values2%%%Cấu hình website%%%web_config%%%icon-cau-hinh.jpg%%%2%%%1%%%%%%1', 'en', 0, NULL, NULL),
(44, 'Cấu hình website', 'update', 'web_menu_admin', 1438143083, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values2%%%Cấu hình website%%%web_config%%%icon-cau-hinh.jpg%%%2%%%0%%%0%%%1', 'en', 0, NULL, NULL),
(45, 'Slider & banner', 'update', 'web_menu_admin', 1438143090, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values8%%%Slider & banner%%%web_slider_banner%%%icon-slider-banner.jpg%%%8%%%1%%%%%%0', 'en', 0, NULL, NULL),
(46, 'Thông tin, bài viết', 'update', 'web_menu_admin', 1438143094, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values4%%%Thông tin, bài viết%%%web_article%%%icon-info.jpg%%%4%%%1%%%0%%%1', 'en', 0, NULL, NULL),
(47, 'Time zone', 'create', 'web_menu_admin', 1438143184, 'admin', '', 'en', 0, NULL, NULL),
(48, 'Gói đăng ký', 'create', 'web_menu_admin', 1438143215, 'admin', '', 'en', 0, NULL, NULL),
(49, 'Forex History', 'create', 'web_menu_admin', 1438143236, 'admin', '', 'en', 0, NULL, NULL),
(50, 'Cặp tiền tệ', 'create', 'web_menu_admin', 1438143257, 'admin', '', 'en', 0, NULL, NULL),
(51, 'Trend', 'create', 'web_menu_admin', 1438143275, 'admin', '', 'en', 0, NULL, NULL),
(52, 'Support and Resistance', 'create', 'web_menu_admin', 1438143297, 'admin', '', 'en', 0, NULL, NULL),
(53, 'Real time Orders', 'create', 'web_menu_admin', 1438143319, 'admin', '', 'en', 0, NULL, NULL),
(54, 'Admin', 'update', 'web_users', 1438143351, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan1121@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,3,4,5,6,7,8,13,14,20,15,16,17,18,21,22,23,%%%,1,2,3,4,5,6,7,8,13,14,20,15,16,17,18,21,22,23,%%%%%%0%%%vi%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(55, 'Cấu hình website', 'update', 'web_menu_admin', 1438143415, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values2%%%Cấu hình website%%%web_config%%%icon-cau-hinh.jpg%%%2%%%1%%%0%%%1', 'en', 0, NULL, NULL),
(56, 'Slider home', 'update', 'web_slider_banner', 1438153359, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Slider home%%%slider.jpg%%%javascript:;%%%%%%1%%%en%%%1%%%1%%%,10,', 'en', 0, NULL, NULL),
(57, 'Slider home', 'update', 'web_slider_banner', 1438153452, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Slider home%%%slider.jpg%%%javascript:;%%%%%%1%%%en%%%1%%%1%%%,1,', 'en', 0, NULL, NULL),
(58, 'Slider home', 'update', 'web_slider_banner', 1438153505, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Slider home%%%slider-home.jpg%%%javascript:;%%%%%%1%%%en%%%1%%%1%%%,1,', 'en', 0, NULL, NULL),
(59, 'Slider home', 'update', 'web_slider_banner', 1438153539, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Slider home%%%slider-forex.png%%%javascript:;%%%%%%1%%%en%%%1%%%1%%%,1,', 'en', 0, NULL, NULL),
(60, 'Tokyo (Japan)', 'update', 'web_timezone', 1438154369, 'admin', '`id`,`name`,`timezone`,`opens`,`closes`,`order`,`other`,`lang`,`status`fields%%%values5%%%Tokyo (Japan)%%%Asia/Tokyo%%%23%%%7%%%5%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(61, 'Sydney (Austrailia)', 'update', 'web_timezone', 1438154371, 'admin', '`id`,`name`,`timezone`,`opens`,`closes`,`order`,`other`,`lang`,`status`fields%%%values4%%%Sydney (Austrailia)%%%Australia/Sydney%%%22%%%6%%%4%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(62, '10 Day Trial Membership - Try Us Today!', 'create', 'web_users_package', 1438155684, 'admin', '', 'en', 0, NULL, NULL),
(63, 'Forex Signal Service - 1 month', 'create', 'web_users_package', 1438155719, 'admin', '', 'en', 0, NULL, NULL),
(64, 'Forex Signal Service - 3 months', 'create', 'web_users_package', 1438155749, 'admin', '', 'en', 0, NULL, NULL),
(65, 'Forex Signal Service - 12 months', 'create', 'web_users_package', 1438155784, 'admin', '', 'en', 0, NULL, NULL),
(66, 'Forex Signal Service - 12 months', 'update', 'web_users_package', 1438155792, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%Forex Signal Service - 12 months%%%1100%%%0%%%360%%%4%%%VFS88BUMZBX6W%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(67, 'Forex Signal Service - 3 months', 'update', 'web_users_package', 1438155801, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values3%%%Forex Signal Service - 3 months%%%400%%%0%%%30%%%3%%%HD7KJMYNYUUH2%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(68, 'Forex Signal Service - 12 months', 'update', 'web_users_package', 1438155808, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%Forex Signal Service - 12 months%%%1100%%%0%%%365%%%4%%%VFS88BUMZBX6W%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(69, 'Forex Signal Service - 1 month', 'update', 'web_users_package', 1438155826, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values2%%%Forex Signal Service - 1 month%%%150%%%0%%%30%%%2%%%EABGRY8956Y3C%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(70, 'Forex Signal Service - 3 months', 'update', 'web_users_package', 1438155830, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values3%%%Forex Signal Service - 3 months%%%400%%%0%%%90%%%3%%%HD7KJMYNYUUH2%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(71, 'Forex Signal Service - 12 months', 'update', 'web_users_package', 1438155834, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%Forex Signal Service - 12 months%%%1100%%%0%%%360%%%4%%%VFS88BUMZBX6W%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(72, '10 Day Trial Membership - Try Us Today!', 'update', 'web_users_package', 1438155839, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values1%%%10 Day Trial Membership - Try Us Today!%%%60%%%0%%%10%%%1%%%ND5LDUAAQMSTC%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(73, 'EURUSD', 'update', 'web_currency', 1438156100, 'admin', '`id`,`name`,`average`,`order`,`lang`,`status`fields%%%values1%%%EURUSD%%%1.2%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(74, 'GBP/USD', 'update', 'web_support_resistance', 1438157324, 'admin', '`id`,`name`,`pivot`,`support_s1`,`support_s2`,`support_s3`,`resistance_r1`,`resistance_r2`,`resistance_r3`,`datetime`,`lang`,`status`,`currency_id`fields%%%values2%%%GBP/USD%%%113%%%1.1%%%1.2%%%1.3%%%2.2%%%2.4%%%2.6%%%1428717960%%%en%%%1%%%2', 'en', 0, NULL, NULL),
(75, 'EUR/USD', 'update', 'web_support_resistance', 1438157327, 'admin', '`id`,`name`,`pivot`,`support_s1`,`support_s2`,`support_s3`,`resistance_r1`,`resistance_r2`,`resistance_r3`,`datetime`,`lang`,`status`,`currency_id`fields%%%values1%%%EUR/USD%%%112%%%1%%%1.1%%%1.2%%%2.2%%%2.4%%%2.5%%%1428565680%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(76, 'Anh / Mỹ', 'update', 'web_real_time', 1438158145, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values1%%%Anh / Mỹ%%%1%%%1.0134%%%1.0124%%%1.0104%%%1%%%1428566640%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(77, 'Anh / Mỹ', 'update', 'web_real_time', 1438158149, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values1%%%Anh / Mỹ%%%1%%%1.0134%%%1.0124%%%1.0104%%%0%%%1428566640%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(78, 'Anh / Mỹ', 'update', 'web_real_time', 1438158153, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values1%%%Anh / Mỹ%%%1%%%1.0134%%%1.0124%%%1.0104%%%3%%%1428566640%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(79, 'Anh / Mỹ', 'update', 'web_real_time', 1438158157, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values1%%%Anh / Mỹ%%%1%%%1.0134%%%1.0124%%%1.0104%%%2%%%1428566640%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(80, 'Forex History', 'status', 'web_menu_admin', 1438158211, 'admin', '1', 'en', 0, NULL, NULL),
(81, '10 Day Trial Membership - Try Us Today!', 'update', 'web_users_package', 1438162021, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values1%%%10 Day Trial Membership - Try Us Today!%%%60%%%0%%%10%%%4%%%ND5LDUAAQMSTC%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(82, 'register', 'update', 'web_menu_type', 1438164660, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values7%%%register%%%Đăng ký%%%%%%%%%%%%en%%%7%%%1%%%1', 'en', 0, NULL, NULL),
(83, 'signup', 'update', 'web_menu_type', 1438164724, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values7%%%signup%%%Đăng ký%%%%%%%%%%%%en%%%7%%%1%%%1', 'en', 0, NULL, NULL),
(84, 'Sign Up', 'update', 'web_menu', 1438164792, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Sign Up%%%sign-up%%%sign-up/%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signup%%%0%%%6%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(85, 'Signup', 'update', 'web_menu', 1438165605, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Signup%%%signup%%%signup/%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signup%%%0%%%6%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(86, 'signup', 'update', 'web_menu_type', 1438231704, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values7%%%signup%%%Đăng ký%%%web_users%%%%%%%%%en%%%7%%%1%%%1', 'en', 0, NULL, NULL),
(87, 'Forex Signal Service - 1 month', 'update', 'web_users_package', 1438243346, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values2%%%Forex Signal Service - 1 month%%%150%%%0%%%30%%%1%%%EABGRY8956Y3C%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(88, 'Forex Signal Service - 1 month', 'update', 'web_users_package', 1438243357, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values2%%%Forex Signal Service - 1 month%%%150%%%10%%%30%%%1%%%EABGRY8956Y3C%%%0%%%%%%en%%%1', 'en', 0, NULL, NULL),
(89, 'login', 'update', 'web_menu_type', 1438243691, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values8%%%login%%%Đăng nhập%%%%%%%%%%%%en%%%8%%%1%%%1', 'en', 0, NULL, NULL),
(90, 'User', 'update', 'web_menu', 1438244178, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%User%%%user%%%user/%%%%%%User%%%User%%%User%%%0%%%4%%%0%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(91, 'Login', 'status', 'web_menu', 1438244184, 'admin', '1', 'en', 0, NULL, NULL),
(92, 'Forex Login', 'update', 'web_menu', 1438244206, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%Forex Login%%%user%%%user/%%%%%%Forex Login%%%Forex Login%%%User%%%0%%%4%%%0%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(93, 'Hiếu Nhân', 'update', 'web_users', 1438245540, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values34%%%Hiếu Nhân%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%609872400%%%1%%%%%%%%%trannhan%%%e10adc3949ba59abbe56e057f20f883e%%%,1,2,3,4,6,7,8,18,21,23,%%%,1,2,3,4,6,7,8,18,21,23,%%%%%%1430293180%%%vi%%%1425093180%%%1%%%3', 'en', 0, NULL, NULL),
(94, 'Hiếu Nhân', 'update', 'web_users', 1438245561, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values34%%%Hiếu Nhân%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%609872400%%%1%%%%%%%%%trannhan%%%e10adc3949ba59abbe56e057f20f883e%%%,1,2,3,4,6,7,8,18,21,23,%%%,1,2,3,4,6,7,8,18,21,23,%%%%%%1430293180%%%en%%%1425093180%%%1%%%1', 'en', 0, NULL, NULL),
(95, 'Donec tempor libero', 'update', 'web_article', 1438252873, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values8%%%Donec tempor libero%%%donec-tempor-libero%%%news/donec-tempor-libero.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim.%%%donec tempor libero,donec tempor libero%%%<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n%%%0%%%1433308320%%%en%%%1%%%,29,', 'en', 0, NULL, NULL),
(96, 'BUY', 'update', 'web_real_time', 1438253760, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%0%%%3%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(97, 'April 09, 2015', 'update', 'web_real_time', 1438253993, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values3%%%April 09, 2015%%%1%%%1.0134%%%1.0134%%%1.01%%%3%%%1428570660%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(98, 'April 09, 2015', 'update', 'web_real_time', 1438254012, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values3%%%April 09, 2015%%%1%%%1.0134%%%1.0134%%%1.01%%%1%%%1428570660%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(99, 'BUY', 'update', 'web_real_time', 1438254382, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%1.5554%%%3%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(100, 'BUY', 'update', 'web_real_time', 1438254397, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%1.5554%%%1%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(101, 'April 09, 2015', 'update', 'web_real_time', 1438254817, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values3%%%April 09, 2015%%%1%%%1.0134%%%1.0134%%%1.01%%%3%%%1428570660%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(102, 'GBP/USD', 'update', 'web_real_time', 1438254830, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values2%%%GBP/USD%%%0%%%1.0114%%%1.0124%%%1.0104%%%2%%%1428570120%%%en%%%1%%%2', 'en', 0, NULL, NULL),
(103, 'BUY', 'update', 'web_real_time', 1438254836, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%1.5554%%%3%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(104, 'BUY', 'update', 'web_real_time', 1438254869, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%1.5554%%%1%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(105, 'BUY', 'update', 'web_real_time', 1438254877, 'admin', '`id`,`name`,`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%BUY%%%1%%%1.5614%%%1.5578%%%1.5554%%%3%%%1438132440%%%en%%%1%%%1', 'en', 0, NULL, NULL),
(106, 'USD/CHF', 'update', 'web_trend', 1438254982, 'admin', '`id`,`name`,`today`,`week`,`month`,`datetime`,`lang`,`status`,`currency_id`fields%%%values3%%%USD/CHF%%%2%%%2%%%2%%%1428917580%%%en%%%1%%%3', 'en', 0, NULL, NULL),
(107, 'USD/JPY', 'update', 'web_trend', 1438254990, 'admin', '`id`,`name`,`today`,`week`,`month`,`datetime`,`lang`,`status`,`currency_id`fields%%%values4%%%USD/JPY%%%2%%%2%%%2%%%1428831240%%%en%%%1%%%4', 'en', 0, NULL, NULL),
(108, 'EUR/USD', 'status', 'web_support_resistance', 1438255000, 'admin', '1', 'en', 0, NULL, NULL),
(109, 'EUR/USD', 'status', 'web_support_resistance', 1438255005, 'admin', '0', 'en', 0, NULL, NULL),
(110, 'BUY', 'status', 'web_real_time', 1438255013, 'admin', '1', 'en', 0, NULL, NULL),
(111, 'BUY', 'status', 'web_real_time', 1438255016, 'admin', '0', 'en', 0, NULL, NULL),
(112, 'Payment', 'create', 'web_menu_admin', 1438308275, 'admin', '', 'en', 0, NULL, NULL),
(113, 'Admin', 'update', 'web_users', 1438308297, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan1121@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,3,4,8,24,25,26,27,28,29,30,13,14,20,15,16,17,18,21,22,23,%%%,1,2,3,4,8,24,25,26,27,28,29,30,13,14,20,15,16,17,18,21,22,23,%%%%%%0%%%en%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(114, 'Payment', 'update', 'web_menu_admin', 1438308316, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values31%%%Payment%%%web_payment%%%icon-item.jpg%%%37%%%0%%%0%%%1', 'en', 0, NULL, NULL),
(115, 'Real time Orders', 'update', 'web_menu_admin', 1438308320, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values30%%%Real time Orders%%%web_real_time%%%icon-item.jpg%%%36%%%1%%%0%%%1', 'en', 0, NULL, NULL),
(116, 'Tran Hieu Nhan', 'delete', 'web_payment', 1438309767, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values5%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%4%%%14.161.35.47%%%U7071279%%%60%%%USD%%%1429265592%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 60<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1429265592<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Hieu Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 4<br />[ip_address] => 14.161.35.47<br />%%%1429265633%%%en%%%0', 'en', 0, NULL, NULL),
(117, 'Tran Hieu Nhan', 'delete', 'web_payment', 1438309767, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values6%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%4%%%14.161.35.47%%%U7071279%%%60%%%USD%%%1429266136%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 60<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1429266136<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Hieu Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 4<br />[ip_address] => 14.161.35.47<br />%%%1429266153%%%en%%%0', 'en', 0, NULL, NULL),
(118, 'Tran Hieu Nhan', 'delete', 'web_payment', 1438309768, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values7%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%4%%%14.161.35.47%%%U7071279%%%60%%%USD%%%1429266136%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 60<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1429266136<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Hieu Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 4<br />[ip_address] => 14.161.35.47<br />%%%1429266209%%%en%%%0', 'en', 0, NULL, NULL),
(119, 'Tran Hieu Nhan', 'delete', 'web_payment', 1438309774, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values8%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%4%%%115.78.224.115%%%U7071279%%%60%%%USD%%%1429268625%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 60<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1429268625<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Hieu Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 4<br />[ip_address] => 115.78.224.115<br />%%%1429268644%%%en%%%0', 'en', 0, NULL, NULL),
(120, 'Tran Hieu Nhan', 'delete', 'web_payment', 1438309775, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values9%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%4%%%115.78.224.115%%%U7071279%%%60%%%USD%%%1429270163%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 60<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1429270163<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Hieu Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 4<br />[ip_address] => 115.78.224.115<br />%%%1429270175%%%en%%%0', 'en', 0, NULL, NULL),
(121, 'Tran Nhan', 'delete', 'web_payment', 1438309775, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values10%%%Tran Nhan%%%hieunhan112@gmail.com%%%1%%%14.161.35.47%%%U7071279%%%150%%%USD%%%1434622698%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 150<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1434622698<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Nhan<br />[email] => hieunhan112@gmail.com<br />[package_id] => 1<br />[ip_address] => 14.161.35.47<br />%%%1434622710%%%en%%%0', 'en', 0, NULL, NULL),
(122, '', 'delete', 'web_payment', 1438334978, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values14%%%%%%%%%0%%%%%%%%%0%%%%%%0%%%0%%%%%%%%%1438313201%%%en%%%0', 'en', 0, NULL, NULL),
(123, '', 'delete', 'web_payment', 1438334978, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values13%%%%%%%%%0%%%%%%%%%0%%%%%%0%%%0%%%%%%%%%1438313151%%%en%%%0', 'en', 0, NULL, NULL),
(124, '', 'delete', 'web_payment', 1438334979, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values12%%%%%%%%%0%%%%%%%%%0%%%%%%0%%%0%%%%%%%%%1438313098%%%en%%%0', 'en', 0, NULL, NULL),
(125, 'Tran Nhan', 'delete', 'web_payment', 1438334980, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values11%%%Tran Nhan%%%hieu_nhan1@yahoo.com%%%2%%%115.78.128.150%%%U7071279%%%400%%%USD%%%1437387285%%%0%%%%%%[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 400<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_ID] => 1437387285<br />[SUGGESTED_MEMO] => <br />[PAYMENT_BATCH_NUM] => 0<br />[name] => Tran Nhan<br />[email] => hieu_nhan1@yahoo.com<br />[package_id] => 2<br />[ip_address] => 115.78.128.150<br />%%%1437387360%%%en%%%0', 'en', 0, NULL, NULL),
(126, 'Nhan', 'delete', 'web_payment', 1438335194, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values15%%%Nhan%%%hieu_nhan1@yahoo.com%%%1438315119%%%113.187.16.234%%%U7071279%%%400%%%USD%%%3%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 3<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 1438315119<br />%%%1438334985%%%en%%%1', 'en', 0, NULL, NULL),
(127, 'Nhan', 'delete', 'web_payment', 1438335251, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values16%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335037%%%en%%%1', 'en', 0, NULL, NULL),
(128, 'Nhan', 'delete', 'web_payment', 1438335381, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values17%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335253%%%en%%%1', 'en', 0, NULL, NULL),
(129, 'Nhan', 'delete', 'web_payment', 1438335382, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values18%%%Nhan%%%hieu_nhan1@yahoo.com%%%1438315119%%%113.187.16.234%%%U7071279%%%400%%%USD%%%3%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 3<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 1438315119<br />%%%1438335334%%%en%%%1', 'en', 0, NULL, NULL),
(130, 'Nhan', 'delete', 'web_payment', 1438335837, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values22%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335794%%%en%%%0', 'en', 0, NULL, NULL),
(131, 'Nhan', 'delete', 'web_payment', 1438335958, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values23%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335893%%%en%%%0', 'en', 0, NULL, NULL),
(132, 'Nhan', 'delete', 'web_payment', 1438335987, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values24%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335960%%%en%%%0', 'en', 0, NULL, NULL),
(133, 'Nhan', 'delete', 'web_payment', 1438336018, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values25%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335991%%%en%%%0', 'en', 0, NULL, NULL),
(134, 'Nhan', 'delete', 'web_payment', 1438336058, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values26%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336021%%%en%%%0', 'en', 0, NULL, NULL),
(135, 'Nhan', 'delete', 'web_payment', 1438336058, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values21%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315129%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315129<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335632%%%en%%%1', 'en', 0, NULL, NULL),
(136, 'Nhan', 'delete', 'web_payment', 1438336059, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values20%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315120%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315120<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335589%%%en%%%1', 'en', 0, NULL, NULL),
(137, 'Nhan', 'delete', 'web_payment', 1438336232, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values27%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315120%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315120<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336151%%%en%%%0', 'en', 0, NULL, NULL),
(138, 'Nhan', 'status', 'web_payment', 1438336598, 'admin', '1', 'en', 0, NULL, NULL),
(139, 'Nhan', 'status', 'web_payment', 1438336611, 'admin', '0', 'en', 0, NULL, NULL),
(140, 'Nhan', 'status', 'web_payment', 1438336629, 'admin', '1', 'en', 0, NULL, NULL),
(141, 'Nhan', 'status', 'web_payment', 1438336651, 'admin', '0', 'en', 0, NULL, NULL),
(142, 'Nhan', 'status', 'web_payment', 1438336662, 'admin', '1', 'en', 0, NULL, NULL),
(143, 'Nhan', 'update', 'web_payment', 1438573337, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values28%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315130%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315130<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336240%%%en%%%0', 'en', 0, NULL, NULL),
(144, 'Nhan', 'update', 'web_payment', 1438573479, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values28%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315130%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315130<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336200%%%en%%%2', 'en', 0, NULL, NULL),
(145, 'Nhan', 'update', 'web_payment', 1438573503, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values28%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315130%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315130<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336200%%%en%%%3', 'en', 0, NULL, NULL),
(146, 'Nhan', 'delete', 'web_payment', 1438576398, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values28%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315130%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315130<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438336200%%%en%%%2', 'en', 0, NULL, NULL),
(147, 'Nhan', 'delete', 'web_payment', 1438576400, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values19%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438335394%%%en%%%1', 'en', 0, NULL, NULL),
(148, 'Nhan', 'delete', 'web_payment', 1438576554, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values29%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438576475%%%en%%%1', 'en', 0, NULL, NULL),
(149, 'Trần Hiếu Nhân', 'update', 'web_users', 1438576632, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values34%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%609872400%%%1%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,6,7,8,18,21,23,%%%,1,2,3,4,6,7,8,18,21,23,%%%%%%1440997920%%%en%%%1425093180%%%1%%%1', 'en', 0, NULL, NULL),
(150, 'Trần Hiếu Nhân', 'update', 'web_users', 1438576678, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values34%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieu_nhan1@yahoo.com%%%609872400%%%1%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,6,7,8,18,21,23,%%%,1,2,3,4,6,7,8,18,21,23,%%%%%%1440997920%%%en%%%1425093180%%%1%%%1', 'en', 0, NULL, NULL),
(151, 'Nhan1', 'update', 'web_payment', 1438576942, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values30%%%Nhan1%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438576569%%%en%%%1', 'en', 0, NULL, NULL),
(152, 'Nhan1', 'delete', 'web_payment', 1438586128, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values30%%%Nhan1%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438576560%%%en%%%2', 'en', 0, NULL, NULL),
(153, 'Nhan1', 'delete', 'web_users', 1438586166, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values35%%%Nhan1%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1446448499%%%vi%%%1438586099%%%1%%%1', 'en', 0, NULL, NULL),
(154, 'Nhan', 'update', 'web_users', 1438586597, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values36%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1524295103%%%vi%%%1438586303%%%1%%%1', 'en', 0, NULL, NULL),
(155, 'Nhan', 'update', 'web_users', 1438586680, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values36%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%2018%%%en%%%1438586280%%%1%%%1', 'en', 0, NULL, NULL),
(156, 'Nhan', 'update', 'web_users', 1438586699, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values36%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1524295080%%%en%%%1438586280%%%1%%%1', 'en', 0, NULL, NULL),
(157, 'Nhan', 'update', 'web_payment', 1438586812, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586303%%%en%%%1', 'en', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(158, 'Nhan', 'update', 'web_payment', 1438586815, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586280%%%en%%%3', 'en', 0, NULL, NULL),
(159, 'Nhan', 'update', 'web_payment', 1438586819, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586280%%%en%%%2', 'en', 0, NULL, NULL),
(160, 'Nhan', 'update', 'web_payment', 1438586823, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586280%%%en%%%0', 'en', 0, NULL, NULL),
(161, 'Nhan', 'update', 'web_payment', 1438586828, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586280%%%en%%%1', 'en', 0, NULL, NULL),
(162, 'Nhan', 'delete', 'web_payment', 1438586833, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values31%%%Nhan%%%hieu_nhan1@yahoo.com%%%3%%%113.187.16.234%%%U7071279%%%400%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 400<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 3<br />%%%1438586280%%%en%%%2', 'en', 0, NULL, NULL),
(163, 'Nhan', 'delete', 'web_users', 1438587068, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values36%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1446535080%%%en%%%1438586280%%%1%%%1', 'en', 0, NULL, NULL),
(164, 'Nhan', 'delete', 'web_users', 1438587318, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values37%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1443944083%%%vi%%%1438587283%%%1%%%1', 'en', 0, NULL, NULL),
(165, 'Nhan', 'update', 'web_users', 1438587714, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1443944236%%%vi%%%1438587436%%%1%%%1', 'en', 0, NULL, NULL),
(166, 'Nhan', 'update', 'web_users', 1438587740, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1446622620%%%en%%%1438587420%%%1%%%1', 'en', 0, NULL, NULL),
(167, 'Nhan', 'delete', 'web_payment', 1438587882, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values34%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438587806%%%en%%%2', 'en', 0, NULL, NULL),
(168, 'Nhan', 'delete', 'web_payment', 1438587887, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values33%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%113.187.16.234%%%U7071279%%%150%%%USD%%%1438315120%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315120<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438587476%%%en%%%1', 'en', 0, NULL, NULL),
(169, 'Nhan', 'delete', 'web_payment', 1438587888, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values32%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%113.187.16.234%%%U7071279%%%150%%%USD%%%1438315119%%%0%%%%%%[ip_address] =&gt; 113.187.16.234<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315119<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438587086%%%en%%%1', 'en', 0, NULL, NULL),
(170, 'Nhan', 'delete', 'web_payment', 1438588121, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values36%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315139%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315139<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438587966%%%en%%%1', 'en', 0, NULL, NULL),
(171, 'Nhan', 'delete', 'web_payment', 1438588123, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values35%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315129%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315129<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438587893%%%en%%%1', 'en', 0, NULL, NULL),
(172, 'Nhan', 'update', 'web_users', 1438588152, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1443944220%%%en%%%1438587420%%%1%%%1', 'en', 0, NULL, NULL),
(173, 'Nhan', 'update', 'web_users', 1438588205, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441265820%%%en%%%1438587420%%%1%%%1', 'en', 0, NULL, NULL),
(174, 'Nhan', 'update', 'web_payment', 1438588256, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values37%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588164%%%en%%%1', 'en', 0, NULL, NULL),
(175, 'Nhan', 'update', 'web_payment', 1438588263, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values37%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588140%%%en%%%0', 'en', 0, NULL, NULL),
(176, 'Nhan', 'update', 'web_payment', 1438588266, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values37%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588140%%%en%%%3', 'en', 0, NULL, NULL),
(177, 'Nhan', 'update', 'web_users', 1438588497, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441265820%%%en%%%1438587420%%%1%%%1', 'en', 0, NULL, NULL),
(178, 'Nhan', 'update', 'web_users', 1438588527, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441265820%%%en%%%1441265820%%%1%%%1', 'en', 0, NULL, NULL),
(179, 'Nhan', 'delete', 'web_payment', 1438588544, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values37%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588140%%%en%%%1', 'en', 0, NULL, NULL),
(180, 'Nhan', 'delete', 'web_payment', 1438588768, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values38%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588555%%%en%%%3', 'en', 0, NULL, NULL),
(181, 'Nhan', 'update', 'web_users', 1438588777, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values38%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441265820%%%en%%%1438587420%%%1%%%1', 'en', 0, NULL, NULL),
(182, 'Nhan', 'delete', 'web_payment', 1438589007, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values39%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438588795%%%en%%%3', 'en', 0, NULL, NULL),
(183, 'Nhan', 'delete', 'web_payment', 1438589104, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values40%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438589021%%%en%%%3', 'en', 0, NULL, NULL),
(184, 'Trần Hiếu Nhân', 'update', 'web_users', 1438591553, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values34%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%609872400%%%1%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,6,7,8,18,21,23,%%%,1,2,3,4,6,7,8,18,21,23,%%%%%%1440997920%%%en%%%1425093180%%%1%%%1', 'en', 0, NULL, NULL),
(185, 'Gói đăng ký', 'update', 'web_menu_admin', 1438592906, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values25%%%Gói đăng ký%%%web_users_package%%%icon-item.jpg%%%31%%%0%%%0%%%1', 'en', 0, NULL, NULL),
(186, 'Payment', 'update', 'web_menu_admin', 1438592917, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values31%%%Payment%%%web_payment%%%icon-item.jpg%%%37%%%1%%%0%%%1', 'en', 0, NULL, NULL),
(187, 'Item 19', 'update', 'web_menu_admin', 1438592941, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values19%%%Item 19%%%%%%%%%19%%%0%%%%%%0', 'en', 0, NULL, NULL),
(188, 'Admin', 'update', 'web_users', 1438592953, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan1121@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,3,4,8,24,25,27,28,29,30,31,13,14,20,15,16,17,18,21,22,23,%%%,1,2,3,4,8,24,25,27,28,29,30,31,13,14,20,15,16,17,18,21,22,23,%%%%%%0%%%en%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(189, 'Real time Orders', 'update', 'web_menu_admin', 1438592967, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values30%%%Real time Orders%%%web_real_time%%%icon-item.jpg%%%36%%%0%%%0%%%1', 'en', 0, NULL, NULL),
(190, 'Thống kê', 'update', 'web_menu_admin', 1438593036, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values19%%%Thống kê%%%web_thongke%%%icon-item.jpg%%%39%%%1%%%0%%%1', 'en', 0, NULL, NULL),
(191, 'Tháng 8 năm 2015', 'create', 'web_analytics', 1438594956, 'admin', '', 'en', 0, NULL, NULL),
(192, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595019, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_payment%%%0%%%1438594860%%%en%%%1', 'en', 0, NULL, NULL),
(193, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595380, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_payment%%%0%%%1438534800%%%en%%%1', 'en', 0, NULL, NULL),
(194, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595394, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438534800%%%en%%%1', 'en', 0, NULL, NULL),
(195, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595427, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(196, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595466, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(197, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595470, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%1%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(198, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595473, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%3%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(199, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595490, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%2%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(200, 'Tháng 8 năm 2015', 'update', 'web_analytics', 1438595500, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%3%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(201, 'Tháng 8 năm 2015', 'create', 'web_analytics', 1438595579, 'admin', '', 'en', 0, NULL, NULL),
(202, 'Tháng 8 năm 2015', 'create', 'web_analytics', 1438595583, 'admin', '', 'en', 0, NULL, NULL),
(203, 'Tháng 8 năm 2015', 'create', 'web_analytics', 1438595585, 'admin', '', 'en', 0, NULL, NULL),
(204, 'Tháng 8 năm 2015', 'create', 'web_analytics', 1438595588, 'admin', '', 'en', 0, NULL, NULL),
(205, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438597350, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(206, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438597564, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values2%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(207, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438597588, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values3%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(208, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438597707, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values4%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(209, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438597870, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`lang`,`status`fields%%%values6%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%en%%%1', 'en', 0, NULL, NULL),
(210, 'Admin', 'update', 'web_users', 1438599991, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%%%%%%%admin@gmail.com%%%0%%%%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%%%%%%%%%%0%%%vi%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(211, 'Nhan', 'delete', 'web_payment', 1438600359, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values41%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438589111%%%en%%%1', 'en', 0, NULL, NULL),
(212, 'Nhan', 'update', 'web_payment', 1438680871, 'admin', '`id`,`name`,`email`,`package_id`,`ip_address`,`PAYEE_ACCOUNT`,`PAYMENT_AMOUNT`,`PAYMENT_UNITS`,`PAYMENT_ID`,`TIMESTAMPGMT`,`PAYER_ACCOUNT`,`token`,`datetime`,`lang`,`status`fields%%%values42%%%Nhan%%%hieu_nhan1@yahoo.com%%%2%%%::1%%%U7071279%%%150%%%USD%%%1438315219%%%0%%%%%%[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />%%%1438600386%%%en%%%1', 'en', 0, NULL, NULL),
(213, 'Home', 'update', 'web_menu', 1438744161, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Home%%%home%%%http://localhost/all/forexsignalpro_v2%%%%%%Forex Signal Pro%%%Des Forex Signal Pro%%%Forex Signal Pro%%%0%%%1%%%0%%%en%%%1%%%1%%%,2,3,', 'en', 0, NULL, NULL),
(214, 'Nhan', 'update', 'web_users', 1438746697, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Nhan%%%%%%%%%hieu_nhan1@yahoo.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441278786%%%vi%%%1441040399%%%1%%%1', 'en', 0, NULL, NULL),
(215, 'Thống kê user đang hoạt động', 'create', 'web_analytics', 1438850882, 'admin', '', 'en', 0, NULL, NULL),
(216, 'Thống kê user hết hạn', 'create', 'web_analytics', 1438850898, 'admin', '', 'en', 0, NULL, NULL),
(217, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438850908, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values5%%%Tháng 8 năm 2015%%%web_payment%%%3%%%1438362000%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(218, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438850909, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values4%%%Tháng 8 năm 2015%%%web_payment%%%2%%%1438362000%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(219, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438850910, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values3%%%Tháng 8 năm 2015%%%web_payment%%%1%%%1438362000%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(220, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438850911, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values2%%%Tháng 8 năm 2015%%%web_payment%%%0%%%1438362000%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(221, 'Tháng 8 năm 2015', 'delete', 'web_analytics', 1438850911, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values1%%%Tháng 8 năm 2015%%%web_users%%%0%%%1438362000%%%0%%%en%%%1', 'en', 0, NULL, NULL),
(222, 'Thống kê user hết hạn', 'update', 'web_analytics', 1438850950, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values7%%%Thống kê user hết hạn%%%web_users%%%1%%%1438850880%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(223, 'Thống kê user đang hoạt động', 'update', 'web_analytics', 1438850961, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`order`,`lang`,`status`fields%%%values6%%%Thống kê user đang hoạt động%%%web_users%%%1%%%1438850760%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(224, 'Thống kê user hết hạn', 'update', 'web_analytics', 1438851291, 'admin', '`id`,`name`,`table`,`value`,`datetime`,`other`,`lang`,`status`fields%%%values7%%%Thống kê user hết hạn%%%web_users%%%1%%%1420045200%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(225, 'User Forex', 'update', 'web_users', 1438851819, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%User Forex%%%%%%%%%userforex@gmail.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441278780%%%en%%%1441040399%%%1%%%1', 'en', 0, NULL, NULL),
(226, 'User Forex', 'update', 'web_users', 1438851853, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%User Forex%%%%%%%%%userforex@gmail.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441040340%%%en%%%1441040399%%%1%%%1', 'en', 0, NULL, NULL),
(227, 'User Forex', 'update', 'web_users', 1438851875, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%User Forex%%%%%%%%%userforex@gmail.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1438793940%%%en%%%1441040399%%%1%%%1', 'en', 0, NULL, NULL),
(228, 'Việt Nam', 'status', 'web_language', 1441249518, 'admin', '0', 'en', 0, NULL, NULL),
(229, 'Trang chủ', 'create', 'web_menu', 1441249556, 'admin', '', 'vi', 0, NULL, NULL),
(230, 'Giới thiệu', 'create', 'web_menu', 1441249595, 'admin', '', 'vi', 0, NULL, NULL),
(231, 'Bottom', 'status', 'web_menu_position', 1441249608, 'admin', '1', 'vi', 0, NULL, NULL),
(232, 'product', 'status', 'web_menu_type', 1441249619, 'admin', '0', 'vi', 0, NULL, NULL),
(233, 'signup', 'status', 'web_menu_type', 1441249628, 'admin', '1', 'vi', 0, NULL, NULL),
(234, 'user', 'status', 'web_menu_type', 1441249630, 'admin', '1', 'vi', 0, NULL, NULL),
(235, 'payment', 'status', 'web_menu_type', 1441249632, 'admin', '1', 'vi', 0, NULL, NULL),
(236, 'Sản phẩm', 'create', 'web_menu', 1441249655, 'admin', '', 'vi', 0, NULL, NULL),
(237, 'Dịch vụ', 'create', 'web_menu', 1441249674, 'admin', '', 'vi', 0, NULL, NULL),
(238, 'Tư vấn khách hàng', 'create', 'web_menu', 1441249700, 'admin', '', 'vi', 0, NULL, NULL),
(239, 'Tin tức - Sự kiện', 'create', 'web_menu', 1441249719, 'admin', '', 'vi', 0, NULL, NULL),
(240, 'Liên hệ', 'create', 'web_menu', 1441249736, 'admin', '', 'vi', 0, NULL, NULL),
(241, 'Cấu hình website', 'update', 'web_menu_admin', 1441249765, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values2%%%Cấu hình website%%%web_config%%%icon-cau-hinh.jpg%%%2%%%0%%%0%%%1', 'vi', 0, NULL, NULL),
(242, 'Sản phẩm', 'status', 'web_menu_admin', 1441249773, 'admin', '0', 'vi', 0, NULL, NULL),
(243, 'Time zone', 'status', 'web_menu_admin', 1441249788, 'admin', '1', 'vi', 0, NULL, NULL),
(244, 'Cặp tiền tệ', 'status', 'web_menu_admin', 1441249792, 'admin', '1', 'vi', 0, NULL, NULL),
(245, 'Trend', 'status', 'web_menu_admin', 1441249792, 'admin', '1', 'vi', 0, NULL, NULL),
(246, 'Support and Resistance', 'status', 'web_menu_admin', 1441249793, 'admin', '1', 'vi', 0, NULL, NULL),
(247, 'Real time Orders', 'status', 'web_menu_admin', 1441249795, 'admin', '1', 'vi', 0, NULL, NULL),
(248, 'Gói đăng ký', 'status', 'web_menu_admin', 1441249795, 'admin', '1', 'vi', 0, NULL, NULL),
(249, 'Payment', 'status', 'web_menu_admin', 1441249797, 'admin', '1', 'vi', 0, NULL, NULL),
(250, 'Thống kê', 'status', 'web_menu_admin', 1441249801, 'admin', '1', 'vi', 0, NULL, NULL),
(251, 'Admin', 'update', 'web_users', 1441249838, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988388003%%%admin@gmail.com%%%0%%%%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,3,4,8,24,27,28,29,30,25,31,19,13,14,20,15,16,17,18,21,22,23,%%%,1,2,3,4,8,24,27,28,29,30,25,31,19,13,14,20,15,16,17,18,21,22,23,%%%%%%0%%%en%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(252, 'User Forex', 'update', 'web_users', 1441249905, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%User Forex%%%%%%%%%userforex@gmail.com%%%0%%%%%%%%%%%%%%%867e1a36d190000d2f266d80889683fc%%%%%%%%%%%%1441040340%%%en%%%1441040399%%%1%%%1', 'vi', 0, NULL, NULL),
(253, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249928, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%1441040340%%%vi%%%1441040399%%%1%%%3', 'vi', 0, NULL, NULL),
(254, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249935, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%1441040340%%%vi%%%1441040399%%%1%%%0', 'vi', 0, NULL, NULL),
(255, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249943, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%0%%%vi%%%1441040399%%%1%%%0', 'vi', 0, NULL, NULL),
(256, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249958, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%1441249920%%%vi%%%1441040399%%%1%%%3', 'vi', 0, NULL, NULL),
(257, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249964, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%1441249920%%%vi%%%1441040399%%%1%%%1', 'vi', 0, NULL, NULL),
(258, 'Trần Hiếu Nhân', 'update', 'web_users', 1441249979, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`date_expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values26%%%Trần Hiếu Nhân%%%123 CMT 8%%%0988388003%%%hieunhan112@gmail.com%%%0%%%%%%%%%%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,3,4,5,8,18,21,%%%,1,2,3,4,5,8,18,21,%%%%%%0%%%vi%%%1441040399%%%1%%%1', 'vi', 0, NULL, NULL),
(259, 'English', 'status', 'web_language', 1441250010, 'admin', '1', 'vi', 0, NULL, NULL),
(260, 'Tên trang website', 'update', 'web_config', 1441267141, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%CÔNG TY CỔ PHẦN VIỆT ÚC THÁI DƯƠNG%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(261, 'Địa chỉ', 'update', 'web_config', 1441267161, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values15%%%Địa chỉ%%%address%%%154 Ấp 2 Thạnh Hòa, Bến Lức, Long An%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(262, 'Địa chỉ', 'update', 'web_config', 1441267168, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values15%%%Địa chỉ%%%address%%%65 đường số 12, P.Bình Hưng Hòa A, Q.Bình Tân%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(263, 'Copyright', 'update', 'web_config', 1441267185, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values9%%%Copyright%%%copyright%%%Copyright © 2015 by VIETUCTHAIDUONG.COM%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(264, 'Slogan', 'update', 'web_config', 1441267218, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values13%%%Slogan%%%slogan%%%CHUYÊN XUẤT NHẬP KHẨU NÔNG SẢN CHẤT LƯỢNG CAO%%%8%%%vi%%%1', 'vi', 0, NULL, NULL),
(265, 'Dịch vụ', 'update', 'web_menu', 1441268194, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%Dịch vụ%%%dich-vu%%%dich-vu/%%%%%%Dịch vụ%%%Dịch vụ%%%dịch vụ,dich vu%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(266, 'Sản phẩm', 'update', 'web_menu', 1441268199, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values3%%%Sản phẩm%%%san-pham%%%san-pham/%%%%%%Sản phẩm%%%Sản phẩm%%%sản phẩm,san pham%%%0%%%3%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(267, 'Tư vấn khách hàng', 'update', 'web_menu', 1441268253, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Tư vấn khách hàng%%%tu-van-khach-hang%%%tu-van-khach-hang/%%%%%%Tư vấn khách hàng%%%Tư vấn khách hàng%%%tư vấn khách hàng,tu van khach hang%%%0%%%5%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(268, 'Tư vấn khách hàng', 'update', 'web_menu', 1441268265, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Tư vấn khách hàng%%%tu-van-khach-hang%%%tu-van-khach-hang/%%%%%%Tư vấn khách hàng%%%Tư vấn khách hàng%%%tư vấn khách hàng,tu van khach hang%%%3%%%5%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(269, 'Sản phẩm', 'update', 'web_menu', 1441268270, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values3%%%Sản phẩm%%%san-pham%%%san-pham/%%%%%%Sản phẩm%%%Sản phẩm%%%sản phẩm,san pham%%%2%%%3%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(270, 'Dịch vụ', 'update', 'web_menu', 1441268278, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%Dịch vụ%%%dich-vu%%%dich-vu/%%%%%%Dịch vụ%%%Dịch vụ%%%dịch vụ,dich vu%%%2%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(271, 'Trang chủ', 'update', 'web_menu', 1441268403, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/inox/%%%%%%Trang chủ%%%Trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,', 'vi', 0, NULL, NULL),
(272, 'Slider trang chủ', 'update', 'web_slider_banner', 1441268895, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Slider trang chủ%%%slider.jpg%%%javascript:;%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. %%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(273, 'Sản phẩm nguyên bộ', 'create', 'web_menu', 1441271247, 'admin', '', 'vi', 0, NULL, NULL),
(274, 'Bàn Inox', 'create', 'web_menu', 1441271264, 'admin', '', 'vi', 0, NULL, NULL),
(275, 'Ghế Inox', 'create', 'web_menu', 1441271278, 'admin', '', 'vi', 0, NULL, NULL),
(276, 'Sản phẩm Inox khác', 'create', 'web_menu', 1441271312, 'admin', '', 'vi', 0, NULL, NULL),
(277, 'Sản phẩm nguyên bộ', 'update', 'web_menu', 1441271330, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Sản phẩm nguyên bộ%%%san-pham-nguyen-bo%%%san-pham-nguyen-bo/%%%%%%Sản phẩm nguyên bộ%%%Sản phẩm nguyên bộ%%%sản phẩm nguyên bộ,san pham nguyen bo%%%3%%%1%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(278, 'Bộ bàn ghế Inox màu nâu', 'create', 'web_product', 1441276162, 'admin', '', 'vi', 0, NULL, NULL),
(279, 'Bộ bàn ghế Inox màu cam', 'create', 'web_product', 1441276190, 'admin', '', 'vi', 0, NULL, NULL),
(280, 'Bộ bàn ghế Inox màu hồng', 'create', 'web_product', 1441276216, 'admin', '', 'vi', 0, NULL, NULL),
(281, 'Bộ bàn ghế Inox màu Xám', 'create', 'web_product', 1441276235, 'admin', '', 'vi', 0, NULL, NULL),
(282, 'Bộ bàn ghế Inox màu Xanh', 'create', 'web_product', 1441276248, 'admin', '', 'vi', 0, NULL, NULL),
(283, 'Email', 'update', 'web_config', 1441276680, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values10%%%Email%%%email%%%info@vietucthaiduong.com%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(284, 'Về chúng tôi - Việt Úc Thái Dương', 'update', 'web_article', 1441276776, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Về chúng tôi - Việt Úc Thái Dương%%%ve-chung-toi-viet-uc-thai-duong%%%gioi-thieu/ve-chung-toi-viet-uc-thai-duong.html%%%gioi-thieu.jpg%%%Công ty CP Việt Úc Thái Dương là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản%%%về chúng tôi việt úc thái dương,ve chung toi viet uc thai duong%%%<p><strong>Công ty CP Việt Úc Thái Dương</strong> là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản với kim ngạch xuất khẩu rau, quả hàng năm chiếm tỷ trọng lớn trong tổng kim ngạch xuất khẩu rau, quả của Việt Nam.</p>\r\n\r\n<p>Là một công ty kinh doanh đa ngành trong phạm vi toàn quốc và thế giới, ngay từ khi mới thành lập công ty đã đặc biệt quan tâm xây dựng chất lượng sản phẩm, nên đã đầu tư nhiều dây chuyền thiết bị hiện đại, công nghệ tiên tiến được nhập khẩu từ Châu Âu.</p>\r\n%%%0%%%1433931000%%%vi%%%1%%%,1,2,', 'vi', 0, NULL, NULL),
(285, 'Về chúng tôi - Inox Duy Tú', 'update', 'web_article', 1441276805, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Về chúng tôi - Inox Duy Tú%%%ve-chung-toi-inox-duy-tu%%%gioi-thieu/ve-chung-toi-inox-duy-tu.html%%%gioi-thieu.jpg%%%Inox Duy Tú là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản%%%về chúng tôi việt úc thái dương,ve chung toi viet uc thai duong%%%<p><strong>Inox Duy Tú</strong> là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản với kim ngạch xuất khẩu rau, quả hàng năm chiếm tỷ trọng lớn trong tổng kim ngạch xuất khẩu rau, quả của Việt Nam.</p>\r\n\r\n<p>Là một công ty kinh doanh đa ngành trong phạm vi toàn quốc và thế giới, ngay từ khi mới thành lập công ty đã đặc biệt quan tâm xây dựng chất lượng sản phẩm, nên đã đầu tư nhiều dây chuyền thiết bị hiện đại, công nghệ tiên tiến được nhập khẩu từ Châu Âu.</p>\r\n%%%0%%%1433931000%%%vi%%%1%%%,2,', 'vi', 0, NULL, NULL),
(286, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'update', 'web_article', 1441277328, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values10%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%dich-vu-lam-thu-tuc-xuat-nhap-khau%%%tin-tuc-su-kien/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%gioi-thieu.jpg%%%Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm%%%dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau%%%<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n%%%0%%%1433926020%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(287, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1441277336, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values11%%%Các loại hình dịch vụ chuyển phát nhanh trong nước%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc%%%tin-tuc-su-kien/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...%%%các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn%%%<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n%%%0%%%1433928060%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(288, 'Các dịch vụ gia tăng', 'update', 'web_article', 1441277345, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%tin-tuc-su-kien/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(289, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1441277352, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(290, 'Sản phẩm Inox nguyên bộ', 'update', 'web_menu', 1441362362, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Sản phẩm Inox nguyên bộ%%%san-pham-inox-nguyen-bo%%%san-pham-inox-nguyen-bo/%%%%%%Sản phẩm Inox nguyên bộ%%%Sản phẩm Inox nguyên bộ%%%sản phẩm inox nguyên bộ,san pham inox nguyen bo%%%3%%%1%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(291, 'Sản phẩm Inox nguyên bộ', 'update', 'web_menu', 1441363808, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Sản phẩm Inox nguyên bộ%%%san-pham-inox-nguyen-bo%%%san-pham-inox-nguyen-bo/%%%%%%Sản phẩm Inox nguyên bộ%%%Sản phẩm Inox nguyên bộ%%%sản phẩm inox nguyên bộ,san pham inox nguyen bo%%%3%%%1%%%1%%%vi%%%1%%%3%%%,2,5,', 'vi', 0, NULL, NULL),
(292, 'Bàn Inox', 'update', 'web_menu', 1441363812, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values9%%%Bàn Inox%%%ban-inox%%%ban-inox/%%%%%%Bàn Inox%%%Bàn Inox%%%bàn inox,ban inox%%%3%%%2%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(293, 'Ghế Inox', 'update', 'web_menu', 1441363816, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values10%%%Ghế Inox%%%ghe-inox%%%ghe-inox/%%%%%%Ghế Inox%%%Ghế Inox%%%ghế inox,ghe inox%%%3%%%3%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(294, 'Sản phẩm Inox khác', 'update', 'web_menu', 1441363821, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values11%%%Sản phẩm Inox khác%%%san-pham-inox-khac%%%san-pham-inox-khac/%%%%%%Sản phẩm Inox khác%%%Sản phẩm Inox khác%%%sản phẩm inox khác,san pham inox khac%%%3%%%4%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(295, 'Sản phẩm Inox khác', 'update', 'web_menu', 1441363907, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values11%%%Sản phẩm Inox khác%%%san-pham-inox-khac%%%san-pham-inox-khac/%%%%%%Sản phẩm Inox khác%%%Sản phẩm Inox khác%%%sản phẩm inox khác,san pham inox khac%%%3%%%4%%%1%%%vi%%%1%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(296, 'Ghế Inox', 'update', 'web_menu', 1441363913, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values10%%%Ghế Inox%%%ghe-inox%%%ghe-inox/%%%%%%Ghế Inox%%%Ghế Inox%%%ghế inox,ghe inox%%%3%%%3%%%1%%%vi%%%1%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(297, 'Ghế Inox', 'update', 'web_menu', 1441363935, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values10%%%Ghế Inox%%%ghe-inox%%%ghe-inox/%%%%%%Ghế Inox%%%Ghế Inox%%%ghế inox,ghe inox%%%8%%%3%%%1%%%vi%%%1%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(298, 'Sản phẩm Inox khác', 'update', 'web_menu', 1441363940, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values11%%%Sản phẩm Inox khác%%%san-pham-inox-khac%%%san-pham-inox-khac/%%%%%%Sản phẩm Inox khác%%%Sản phẩm Inox khác%%%sản phẩm inox khác,san pham inox khac%%%8%%%4%%%1%%%vi%%%1%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(299, 'Số SP / trang', 'update', 'web_config', 1441363973, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%12%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(300, 'Số SP / trang', 'update', 'web_config', 1441363989, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%2%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(301, 'Bộ bàn ghế Inox màu nâu', 'update', 'web_product', 1441365201, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Bộ bàn ghế Inox màu nâu%%%bo-ban-ghe-inox-mau-nau%%%BBG01%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-nau.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2400000%%%3000000%%%<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n\r\n<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n%%%0%%%1441274940%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(302, 'Bộ bàn ghế Inox màu cam', 'update', 'web_product', 1441365237, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Bộ bàn ghế Inox màu cam%%%bo-ban-ghe-inox-mau-cam%%%BBG02%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-cam.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2000000%%%0%%%<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n\r\n<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n%%%0%%%1441276140%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(303, 'Bộ bàn ghế Inox màu hồng', 'update', 'web_product', 1441365251, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Bộ bàn ghế Inox màu hồng%%%bo-ban-ghe-inox-mau-hong%%%BBG02%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-hong.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2000000%%%2400000%%%<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n\r\n<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n%%%0%%%1441276140%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(304, 'Bộ bàn ghế Inox màu Xám', 'update', 'web_product', 1441365264, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Bộ bàn ghế Inox màu Xám%%%bo-ban-ghe-inox-mau-xam%%%BBG02%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xam.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%0%%%0%%%<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n\r\n<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n%%%0%%%1441276200%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(305, 'Bộ bàn ghế Inox màu Xanh', 'update', 'web_product', 1441365278, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Bộ bàn ghế Inox màu Xanh%%%bo-ban-ghe-inox-mau-xanh%%%BBG02%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xanh.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%0%%%0%%%<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n\r\n<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n%%%0%%%1441276200%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(306, 'Bộ bàn ghế Inox màu nâu', 'update', 'web_product', 1441365369, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Bộ bàn ghế Inox màu nâu%%%bo-ban-ghe-inox-mau-nau%%%BBG01%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-nau.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2400000%%%3000000%%%<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n%%%0%%%1441274940%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(307, 'Bộ bàn ghế Inox màu cam', 'update', 'web_product', 1441365373, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Bộ bàn ghế Inox màu cam%%%bo-ban-ghe-inox-mau-cam%%%BBG02%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-cam.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2000000%%%0%%%<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n%%%0%%%1441276140%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(308, 'Bộ bàn ghế Inox màu hồng', 'update', 'web_product', 1441365377, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Bộ bàn ghế Inox màu hồng%%%bo-ban-ghe-inox-mau-hong%%%BBG03%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-hong.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%2000000%%%2400000%%%<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n%%%0%%%1441276140%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(309, 'Bộ bàn ghế Inox màu Xám', 'update', 'web_product', 1441365380, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Bộ bàn ghế Inox màu Xám%%%bo-ban-ghe-inox-mau-xam%%%BBG04%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xam.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%0%%%0%%%<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n%%%0%%%1441276200%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL),
(310, 'Bộ bàn ghế Inox màu Xanh', 'update', 'web_product', 1441365384, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Bộ bàn ghế Inox màu Xanh%%%bo-ban-ghe-inox-mau-xanh%%%BBG05%%%san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xanh.html%%%san-pham-1.jpg%%%Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện%%%bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau%%%0%%%0%%%<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n%%%<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n%%%0%%%1441276200%%%vi%%%1%%%,3,8,', 'vi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `tags` varchar(150) DEFAULT NULL,
  `parent` int(3) NOT NULL DEFAULT '0',
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `type_id` int(1) NOT NULL,
  `position_id` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all/inoxduytu/', '', 'Trang chủ', 'Trang chủ', 'trang chủ,trang chu', 0, 1, 0, 'vi', 1, 1, ',2,'),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'giới thiệu,gioi thieu', 0, 2, 0, 'vi', 1, 2, ',2,'),
(3, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'sản phẩm,san pham', 0, 3, 0, 'vi', 1, 3, ',2,'),
(4, 'Dịch vụ', 'dich-vu', 'dich-vu/', '', 'Dịch vụ', 'Dịch vụ', 'dịch vụ,dich vu', 0, 4, 0, 'vi', 1, 2, ',2,'),
(5, 'Tư vấn khách hàng', 'tu-van-khach-hang', 'tu-van-khach-hang/', '', 'Tư vấn khách hàng', 'Tư vấn khách hàng', 'tư vấn khách hàng,tu van khach hang', 0, 5, 0, 'vi', 1, 2, ',2,'),
(6, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'tin tức sự kiện,tin tuc su kien', 0, 6, 0, 'vi', 1, 2, ',2,'),
(7, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 7, 0, 'vi', 1, 13, ',2,'),
(8, 'Sản phẩm Inox nguyên bộ', 'san-pham-inox-nguyen-bo', 'san-pham-inox-nguyen-bo/', '', 'Sản phẩm Inox nguyên bộ', 'Sản phẩm Inox nguyên bộ', 'sản phẩm inox nguyên bộ,san pham inox nguyen bo', 3, 1, 1, 'vi', 1, 3, ',2,4,5,'),
(9, 'Bàn Inox', 'ban-inox', 'ban-inox/', '', 'Bàn Inox', 'Bàn Inox', 'bàn inox,ban inox', 3, 2, 1, 'vi', 1, 3, ',2,4,'),
(10, 'Ghế Inox', 'ghe-inox', 'ghe-inox/', '', 'Ghế Inox', 'Ghế Inox', 'ghế inox,ghe inox', 3, 3, 1, 'vi', 1, 3, ',2,4,'),
(11, 'Sản phẩm Inox khác', 'san-pham-inox-khac', 'san-pham-inox-khac/', '', 'Sản phẩm Inox khác', 'Sản phẩm Inox khác', 'sản phẩm inox khác,san pham inox khac', 3, 4, 1, 'vi', 1, 3, ',2,4,');

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_admin`
--

CREATE TABLE IF NOT EXISTS `web_menu_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 0, NULL, 1),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, '0', 1),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 0, NULL, 1),
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 0, '0', 1),
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 0, NULL, 1),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 0),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 0),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, '0', 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 20, 0, NULL, 0),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 21, 0, NULL, 0),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-order.jpg', 22, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 0),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 23, 1, NULL, 0),
(13, 'Menu admin', 'web_menu_admin', 'icon-item.jpg', 50, 0, NULL, 1),
(14, 'Danh sách ngôn ngữ', 'web_language', 'icon-item.jpg', 51, 0, NULL, 1),
(15, 'Vị trí menu', 'web_menu_position', 'icon-item.jpg', 53, 0, NULL, 1),
(16, 'Vị trí slider banner', 'web_slider_banner_position', 'icon-item.jpg', 54, 0, NULL, 1),
(17, 'Group user', 'web_users_group', 'icon-item.jpg', 55, 1, NULL, 1),
(18, 'Add tags keyword', 'web_tags', 'icon-item.jpg', 89, 0, '0', 1),
(19, 'Thống kê', 'web_analytics', 'icon-item.jpg', 39, 1, '0', 0),
(20, 'Loại danh mục', 'web_menu_type', 'icon-item.jpg', 52, 0, NULL, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 90, 0, '1', 1),
(22, 'Event logs', 'web_logs', 'icon-logs.jpg', 91, 0, '', 1),
(23, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 0, NULL, 1),
(24, 'Time zone', 'web_timezone', 'icon-item.jpg', 30, 0, '0', 0),
(25, 'Gói đăng ký', 'web_users_package', 'icon-item.jpg', 37, 0, '0', 0),
(26, 'Forex History', 'web_forex', 'icon-item.jpg', 32, 0, '0', 0),
(27, 'Cặp tiền tệ', 'web_currency', 'icon-item.jpg', 33, 0, '0', 0),
(28, 'Trend', 'web_trend', 'icon-item.jpg', 34, 0, '0', 0),
(29, 'Support and Resistance', 'web_support_resistance', 'icon-item.jpg', 35, 0, '0', 0),
(30, 'Real time Orders', 'web_real_time', 'icon-item.jpg', 36, 1, '0', 0),
(31, 'Payment', 'web_payment', 'icon-item.jpg', 38, 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_position`
--

CREATE TABLE IF NOT EXISTS `web_menu_position` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_position`
--

INSERT INTO `web_menu_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Top', 1, 0),
(2, 'Main', 2, 1),
(3, 'Bottom', 3, 0),
(4, 'Left', 4, 1),
(5, 'Right', 5, 1),
(6, 'Social', 6, 1),
(7, 'Other 1', 7, 0),
(8, 'Other 2', 8, 0),
(9, 'Không', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_type`
--

CREATE TABLE IF NOT EXISTS `web_menu_type` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `table_data` varchar(30) DEFAULT NULL,
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `order` int(2) NOT NULL,
  `other` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `table_data`, `url_img`, `url_img_thumb`, `lang`, `order`, `other`, `status`) VALUES
(1, 'home', 'Trang chủ', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 1, 1, 1),
(2, 'article', 'Thông tin bài viết', 'web_article', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1, 1),
(3, 'product', 'Sản phẩm', 'web_product', 'public/images/products/', 'public/_thumbs/Images/products/', 'vi', 3, 1, 1),
(4, 'service', 'Dịch vụ', '', 'public/images/services/', 'public/_thumbs/Images/services/', 'vi', 4, 1, 0),
(5, 'photo', 'Hình ảnh', 'web_photo', 'public/images/photos/', 'public/_thumbs/Images/photos/', 'vi', 5, 1, 0),
(6, 'video', 'Video', 'web_video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 1, 0),
(7, 'signup', 'Đăng ký', 'web_users_package', '', '', 'en', 7, 1, 0),
(8, 'user', 'Đăng nhập', '', '', '', 'en', 8, 1, 0),
(9, 'payment', 'Thanh toán', '', '', '', 'en', 9, 1, 0),
(10, 'item_4', 'Item 4', NULL, '', '', 'vi', 10, 1, 0),
(11, 'menu', 'Danh mục menu', 'web_menu', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 11, 0, 1),
(12, 'slider_banner', 'Slider - Banner', 'web_slider_banner', 'public/images/slider-banner/', 'public/_thumbs/Images/slider-banner/', 'vi', 12, 0, 1),
(13, 'Contact', 'Liên hệ', 'web_contact', 'upload/images/catalog', 'upload/_thumbs/Images/catalog/', 'en', 13, 1, 1),
(14, 'no', 'Không', '', '', '', 'vi', 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_payment`
--

CREATE TABLE IF NOT EXISTS `web_payment` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `package_id` int(3) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `PAYEE_ACCOUNT` varchar(10) NOT NULL,
  `PAYMENT_AMOUNT` float NOT NULL,
  `PAYMENT_UNITS` varchar(5) NOT NULL,
  `PAYMENT_ID` bigint(10) NOT NULL,
  `TIMESTAMPGMT` bigint(10) NOT NULL,
  `PAYER_ACCOUNT` varchar(10) NOT NULL,
  `token` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_payment`
--

INSERT INTO `web_payment` (`id`, `name`, `email`, `package_id`, `ip_address`, `PAYEE_ACCOUNT`, `PAYMENT_AMOUNT`, `PAYMENT_UNITS`, `PAYMENT_ID`, `TIMESTAMPGMT`, `PAYER_ACCOUNT`, `token`, `datetime`, `lang`, `status`) VALUES
(42, 'Nhan', 'hieu_nhan1@yahoo.com', 2, '::1', 'U7071279', 150, 'USD', 1438315219, 0, '', '[ip_address] =&gt; ::1<br />[PAYEE_ACCOUNT] =&gt; U7071279<br />[PAYMENT_AMOUNT] =&gt; 150<br />[PAYMENT_UNITS] =&gt; USD<br />[PAYMENT_ID] =&gt; 1438315219<br />[name] =&gt; Nhan<br />[email] =&gt; hieu_nhan1@yahoo.com<br />[package_id] =&gt; 2<br />', 1438600380, 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `img`, `order`, `lang`, `status`, `datetime`, `menu_id`) VALUES
(1, 'Bắp cải', '1.jpg', 1, 'vi', 1, 0, ',7,'),
(3, 'Rau bó xôi', '2.jpg', 2, 'vi', 1, 0, ',7,'),
(4, 'Bạc hà', '3.gif', 3, 'vi', 1, 0, ',7,'),
(5, 'Img 1', '1.jpg', 1, 'en', 1, 0, ',28,'),
(6, 'Img 2', '2.jpg', 2, 'en', 1, 0, ',28,'),
(7, 'Dưa leo', '4.jpg', 4, 'vi', 1, 0, ',7,'),
(8, 'Sầu riêng', '5.jpg', 5, 'vi', 1, 0, ',7,'),
(9, 'Nho Mỹ', '6.jpg', 6, 'vi', 1, 0, ',5,');

-- --------------------------------------------------------

--
-- Table structure for table `web_product`
--

CREATE TABLE IF NOT EXISTS `web_product` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `code` varchar(20) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `price` int(7) NOT NULL,
  `price_cost` int(7) DEFAULT NULL,
  `content` text NOT NULL,
  `more` varchar(500) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `img`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Bộ bàn ghế Inox màu nâu', 'bo-ban-ghe-inox-mau-nau', 'BBG01', 'san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-nau.html', 'san-pham-1.jpg', 'Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện', 'bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau', 2400000, 3000000, '<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n', '<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n', 0, 1441274940, 'vi', 1, ',3,8,9,10,'),
(2, 'Bộ bàn ghế Inox màu cam', 'bo-ban-ghe-inox-mau-cam', 'BBG02', 'san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-cam.html', 'san-pham-1.jpg', 'Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện', 'bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau', 2000000, 0, '<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n', '<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n', 0, 1441276140, 'vi', 1, ',3,8,9,10,'),
(3, 'Bộ bàn ghế Inox màu hồng', 'bo-ban-ghe-inox-mau-hong', 'BBG03', 'san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-hong.html', 'san-pham-1.jpg', 'Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện', 'bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau', 2000000, 2400000, '<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n', '<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n', 0, 1441276140, 'vi', 1, ',3,8,9,10,'),
(4, 'Bộ bàn ghế Inox màu Xám', 'bo-ban-ghe-inox-mau-xam', 'BBG04', 'san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xam.html', 'san-pham-1.jpg', 'Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện', 'bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau', 0, 0, '<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n', '<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n', 0, 1441276200, 'vi', 1, ',3,8,9,10,'),
(5, 'Bộ bàn ghế Inox màu Xanh', 'bo-ban-ghe-inox-mau-xanh', 'BBG05', 'san-pham-inox-nguyen-bo/bo-ban-ghe-inox-mau-xanh.html', 'san-pham-1.jpg', 'Bộ bàn ghế Inox màu nâu chất liệu 100% Inox SUS 201, 304, Sắt sơn tĩnh điện', 'bộ bàn ghế inox màu nâu,bo ban ghe inox mau nau', 0, 0, '<p>Tình trạng: Mới 100%</p>\r\n\r\n<p>Xuất xứ&nbsp;: Việt Nam</p>\r\n\r\n<p>Bảo hành&nbsp;: 01 năm</p>\r\n\r\n<p>Vận chuyển&nbsp;: Liên hệ</p>\r\n\r\n<p><span style="line-height: 1.6em;">*** Thông số kỹ thuật chỉ mang tính chất tham khảo. Khách hàng vui lòng liên hệ để biết thông tin chi tiết và đặt hàng theo yêu cầu.</span></p>\r\n', '<p>Kích thước: Ghế cao 45cm, Bàn cao 75 Cm ( Làm theo yêu cầu KH )</p>\r\n\r\n<p>Ống: Ø16, Ø19, Ø22</p>\r\n\r\n<p>Dày: 0.6mm ( 0.5mm, 08mm, 1.0mm)</p>\r\n\r\n<p>Chất liệu: 100% Inox SUS 201, 304 | Sắt sơn tĩnh điện</p>\r\n\r\n<p>Tên thông thường: Bộ bàn ghế Cafe</p>\r\n', 0, 1441276200, 'vi', 1, ',3,8,9,10,');

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order`
--

CREATE TABLE IF NOT EXISTS `web_product_order` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_current` int(9) NOT NULL,
  `total_number` int(4) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `other` varchar(250) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `city_id` int(3) NOT NULL,
  `districts_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `address`, `total_current`, `total_number`, `deliverycosts`, `discounts`, `total`, `datetime`, `other`, `lang`, `status`, `city_id`, `districts_id`) VALUES
(5, 'Nhan', 'hieunhan@yahoo.com', '0988 388 003', '12 CMT 8', 700000, 3, 5000, 0, 705000, 1409024803, '333', 'vi', 0, 3, 136),
(4, 'Nhan', 'hieunhan@yahoo.com', '0988 388 003', '12 CMT 8', 200000, 1, 5000, 0, 205000, 1409024551, '111', 'vi', 0, 3, 136);

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order_detail`
--

CREATE TABLE IF NOT EXISTS `web_product_order_detail` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product_order_detail`
--

INSERT INTO `web_product_order_detail` (`id`, `name`, `number`, `price`, `discounts`, `total`, `lang`, `status`, `product_id`, `order_id`) VALUES
(37, 'Mùng chống muỗi tam giác ba dây trắng', 2, 250000, 0, 500000, 'vi', 1, 2, 1409024803),
(36, 'Mùng chống muỗi hình nón', 1, 200000, 0, 200000, 'vi', 1, 1, 1409024803),
(35, 'Mùng chống muỗi hình nón', 1, 200000, 0, 200000, 'vi', 1, 1, 1409024551);

-- --------------------------------------------------------

--
-- Table structure for table `web_real_time`
--

CREATE TABLE IF NOT EXISTS `web_real_time` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `oders` tinyint(1) NOT NULL,
  `entry_point` varchar(10) NOT NULL,
  `take_profit` varchar(10) NOT NULL,
  `stop_loss` varchar(10) NOT NULL,
  `status_real_time` tinyint(1) NOT NULL,
  `sendmail` tinyint(1) NOT NULL DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_real_time`
--

INSERT INTO `web_real_time` (`id`, `name`, `oders`, `entry_point`, `take_profit`, `stop_loss`, `status_real_time`, `sendmail`, `datetime`, `lang`, `status`, `currency_id`) VALUES
(1, 'Anh / Mỹ', 1, '1.0134', '1.0124', '1.0104', 1, 1, 1428566640, 'en', 1, 1),
(2, 'GBP/USD', 0, '1.0114', '1.0124', '1.0104', 3, 1, 1428570120, 'en', 1, 2),
(3, 'April 09, 2015', 1, '1.0134', '1.0134', '1.01', 1, 1, 1428570660, 'en', 1, 1),
(4, 'BUY', 1, '1.5614', '1.5578', '1.5554', 2, 1, 1438132440, 'en', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_sale`
--

CREATE TABLE IF NOT EXISTS `web_sale` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_sale`
--

INSERT INTO `web_sale` (`id`, `name`, `phone`, `email`, `order`, `lang`, `status`, `menu_id`) VALUES
(1, 'Bùi Thanh Sơn', '0938 989 422', 'thanhson@ttpexpress.com', 1, 'vi', 1, ',9,37,'),
(2, 'Nguyễn Thu Trang', '0974 885 885', 'thutrang@ttpexpress.com', 2, 'vi', 1, ',9,37,'),
(3, 'Lê Phúc Hiếu', '0909 768 800', 'phuchieu@ttpexpress.com', 3, 'vi', 1, ',9,37,'),
(4, 'Nguyễn Thi Thùy Linh', '0909 299 003', 'thuylinh@ttpexpress.com', 4, 'vi', 1, ',9,38,'),
(5, 'Nguyễn Hữu Lợi', '0902 443 116', 'huuloi@ttpexpress.com', 5, 'vi', 1, ',9,39,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `img`, `url`, `info`, `order`, `lang`, `status`, `position_id`, `menu_id`) VALUES
(1, 'Slider trang chủ', 'slider.jpg', 'javascript:;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. ', 1, 'vi', 1, 1, ',1,'),
(9, 'Slider home', 'slider-forex.png', 'javascript:;', NULL, 1, 'en', 1, 1, ',1,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner_position`
--

INSERT INTO `web_slider_banner_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Slider width 1000px', 1, 1),
(2, 'Event width:980x250 px', 2, 1),
(3, 'Đối tác 200x120 px', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_support_resistance`
--

CREATE TABLE IF NOT EXISTS `web_support_resistance` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pivot` varchar(10) NOT NULL,
  `support_s1` float NOT NULL,
  `support_s2` float NOT NULL,
  `support_s3` float NOT NULL,
  `resistance_r1` float NOT NULL,
  `resistance_r2` float NOT NULL,
  `resistance_r3` float NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_support_resistance`
--

INSERT INTO `web_support_resistance` (`id`, `name`, `pivot`, `support_s1`, `support_s2`, `support_s3`, `resistance_r1`, `resistance_r2`, `resistance_r3`, `datetime`, `lang`, `status`, `currency_id`) VALUES
(1, 'EUR/USD', '112', 1, 1.1, 1.2, 2.2, 2.4, 2.5, 1428565680, 'en', 1, 1),
(2, 'GBP/USD', '113', 1.1, 1.2, 1.3, 2.2, 2.4, 2.6, 1428717960, 'en', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `web_tags`
--

CREATE TABLE IF NOT EXISTS `web_tags` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_timezone`
--

CREATE TABLE IF NOT EXISTS `web_timezone` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `opens` int(2) NOT NULL,
  `closes` int(2) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `other` tinyint(1) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_timezone`
--

INSERT INTO `web_timezone` (`id`, `name`, `timezone`, `opens`, `closes`, `order`, `other`, `lang`, `status`) VALUES
(1, 'Frankfurt (Germany)', 'Europe/Berlin', 6, 14, 1, 1, 'en', 1),
(2, 'London (Great Britain)', 'Europe/London', 7, 15, 2, 1, 'en', 1),
(3, 'New York (United States)', 'America/New_York', 12, 20, 3, 1, 'en', 1),
(4, 'Sydney (Austrailia)', 'Australia/Sydney', 22, 6, 4, 0, 'en', 1),
(5, 'Tokyo (Japan)', 'Asia/Tokyo', 23, 7, 5, 0, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_trend`
--

CREATE TABLE IF NOT EXISTS `web_trend` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `today` tinyint(1) NOT NULL,
  `week` tinyint(1) NOT NULL,
  `month` tinyint(1) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_trend`
--

INSERT INTO `web_trend` (`id`, `name`, `today`, `week`, `month`, `datetime`, `lang`, `status`, `currency_id`) VALUES
(1, 'EUR/USD', 0, 1, 1, 1429064940, 'en', 1, 1),
(2, 'GBP/USD', 1, 1, 1, 1428979080, 'en', 1, 2),
(3, 'USD/CHF', 1, 1, 0, 1428917580, 'en', 1, 5),
(4, 'USD/JPY', 0, 0, 0, 1428831240, 'en', 1, 4),
(5, 'AUD/USD', 2, 2, 2, 1428744840, 'en', 1, 5),
(6, 'EUR/JPY', 2, 2, 2, 1428658440, 'en', 1, 6),
(7, 'USD/CAD', 2, 2, 2, 1428572040, 'en', 1, 7),
(8, 'GBP/JPY', 2, 2, 2, 1428485700, 'en', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `web_users`
--

CREATE TABLE IF NOT EXISTS `web_users` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` bigint(10) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `rule_view` varchar(100) NOT NULL,
  `rule_action` varchar(100) NOT NULL,
  `random_key` char(10) DEFAULT NULL,
  `date_expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `date_expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988388003', 'admin@gmail.com', 0, NULL, '', '', 'admin', 'fc7fc678608590b123692867f176fe63', ',1,2,3,4,5,8,13,14,20,15,16,17,18,21,22,23,', ',1,2,3,4,5,8,13,14,20,15,16,17,18,21,22,23,', NULL, 0, 'vi', 0, 1, 3),
(26, 'Trần Hiếu Nhân', '123 CMT 8', '0988388003', 'hieunhan112@gmail.com', 0, NULL, '', '', 'trannhan', '867e1a36d190000d2f266d80889683fc', ',1,2,3,4,5,8,18,21,', ',1,2,3,4,5,8,18,21,', NULL, 0, 'vi', 1441040399, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`, `order`, `status`) VALUES
(1, 'Khách hàng', 1, 1),
(2, 'Thành viên', 2, 1),
(3, 'Quản trị website', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_lock_ip`
--

CREATE TABLE IF NOT EXISTS `web_users_lock_ip` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `login_number` int(2) NOT NULL,
  `disable_date` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(3, '::1', 2, 0, 1441361421);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_login`
--

CREATE TABLE IF NOT EXISTS `web_users_login` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_package`
--

CREATE TABLE IF NOT EXISTS `web_users_package` (
`id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` int(2) NOT NULL,
  `songay` int(3) NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `payment_paypal` varchar(250) NOT NULL,
  `parent` int(2) NOT NULL,
  `menu_id` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_package`
--

INSERT INTO `web_users_package` (`id`, `name`, `price`, `discount`, `songay`, `order`, `payment_paypal`, `parent`, `menu_id`, `lang`, `status`) VALUES
(1, '10 Day Trial Membership - Try Us Today!', 60, 0, 10, 0, 'ND5LDUAAQMSTC', 0, '', 'en', 1),
(2, 'Forex Signal Service - 1 month', 150, 0, 30, 1, 'EABGRY8956Y3C', 0, '', 'en', 1),
(3, 'Forex Signal Service - 3 months', 400, 0, 90, 2, 'HD7KJMYNYUUH2', 0, '', 'en', 1),
(4, 'Forex Signal Service - 12 months', 1100, 0, 360, 3, 'VFS88BUMZBX6W', 0, '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_reset`
--

CREATE TABLE IF NOT EXISTS `web_users_reset` (
`id` int(9) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `key` char(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_reset`
--

INSERT INTO `web_users_reset` (`id`, `name`, `email`, `ip_address`, `key`, `datetime`, `status`) VALUES
(1, 'userforex@gmail.com', 'userforex@gmail.com', '::1', '2HBbESsZ9L', 1438928821, 1),
(2, 'userforex@gmail.com', 'userforex@gmail.com', '::1', 'gbuNeWZpuP', 1438931208, 1),
(3, 'userforex@gmail.com', 'userforex@gmail.com', '::1', 'jTvvnIFwmN', 1438931348, 1),
(4, 'userforex@gmail.com', 'userforex@gmail.com', '::1', 'q1u0JDuF4r', 1438931429, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_video`
--

CREATE TABLE IF NOT EXISTS `web_video` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `url` varchar(250) NOT NULL,
  `img` varchar(25) NOT NULL,
  `url_code` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_video`
--

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `type`, `url`, `img`, `url_code`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 0, 'quan-nam/video-trang-chu.html', '', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '', 0, 1432108200, 'vi', 1, ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_analytics`
--
ALTER TABLE `web_analytics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article`
--
ALTER TABLE `web_article`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article_cm`
--
ALTER TABLE `web_article_cm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_config`
--
ALTER TABLE `web_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact`
--
ALTER TABLE `web_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_currency`
--
ALTER TABLE `web_currency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_forex`
--
ALTER TABLE `web_forex`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listcity`
--
ALTER TABLE `web_listcity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_logs`
--
ALTER TABLE `web_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu`
--
ALTER TABLE `web_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_admin`
--
ALTER TABLE `web_menu_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_position`
--
ALTER TABLE `web_menu_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_type`
--
ALTER TABLE `web_menu_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `web_payment`
--
ALTER TABLE `web_payment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_photo`
--
ALTER TABLE `web_photo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product`
--
ALTER TABLE `web_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product_order`
--
ALTER TABLE `web_product_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product_order_detail`
--
ALTER TABLE `web_product_order_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_real_time`
--
ALTER TABLE `web_real_time`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_sale`
--
ALTER TABLE `web_sale`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_slider_banner_position`
--
ALTER TABLE `web_slider_banner_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_support_resistance`
--
ALTER TABLE `web_support_resistance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tags`
--
ALTER TABLE `web_tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_timezone`
--
ALTER TABLE `web_timezone`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_trend`
--
ALTER TABLE `web_trend`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users`
--
ALTER TABLE `web_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `web_users_group`
--
ALTER TABLE `web_users_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_login`
--
ALTER TABLE `web_users_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_package`
--
ALTER TABLE `web_users_package`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_reset`
--
ALTER TABLE `web_users_reset`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_video`
--
ALTER TABLE `web_video`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=418;
--
-- AUTO_INCREMENT for table `web_analytics`
--
ALTER TABLE `web_analytics`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `web_article_cm`
--
ALTER TABLE `web_article_cm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `web_currency`
--
ALTER TABLE `web_currency`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `web_forex`
--
ALTER TABLE `web_forex`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_logs`
--
ALTER TABLE `web_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `web_menu_admin`
--
ALTER TABLE `web_menu_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `web_menu_position`
--
ALTER TABLE `web_menu_position`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `web_menu_type`
--
ALTER TABLE `web_menu_type`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `web_payment`
--
ALTER TABLE `web_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `web_product`
--
ALTER TABLE `web_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_product_order`
--
ALTER TABLE `web_product_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_product_order_detail`
--
ALTER TABLE `web_product_order_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `web_real_time`
--
ALTER TABLE `web_real_time`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_sale`
--
ALTER TABLE `web_sale`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `web_slider_banner_position`
--
ALTER TABLE `web_slider_banner_position`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_support_resistance`
--
ALTER TABLE `web_support_resistance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_tags`
--
ALTER TABLE `web_tags`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_timezone`
--
ALTER TABLE `web_timezone`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_trend`
--
ALTER TABLE `web_trend`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_login`
--
ALTER TABLE `web_users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users_package`
--
ALTER TABLE `web_users_package`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_users_reset`
--
ALTER TABLE `web_users_reset`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_video`
--
ALTER TABLE `web_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
