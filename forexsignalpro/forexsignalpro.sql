-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 12:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forexsignalpro`
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
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `img_avatar`, `img_arr`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(9, 'Japan is dangerously close to deflationary territory', 'japan-is-dangerously-close-to-deflationary-territory', 'news-event/japan-is-dangerously-close-to-deflationary-territory.html', 'japan-is-dangerously-close-to-deflationary-territory.jpg', NULL, 'Core consumer price growth hit 0% during February in Japan once the effects of a higher sales tax are taken out.', 'japan is dangerously close to deflationary territory', '<p>Core consumer price growth hit 0% during February in Japan once the effects of a higher sales tax are taken out. Headline consumer prices rose 2.2% y/y as expected but the core CPI rose 2.0% y/y, missing an expected 2.1% increase and slower than a 2.2% gain January (the BoJ estimates that a higher consumption tax adds around 2.0% to core inflation).</p>\r\n\r\n<p>Falling oil prices and lacklustre domestic demand are the main reasons for disinflation in Japan. Now, disinflation is at risk of becoming deflation, where consumer prices actually begin falling year-on-year. This is in stark contrast to the BoJ’s original aim of reaching 2.0% inflation by April this year; a target which was proposed in April 2013 and backed by a massive asset buying program at the BoJ aimed at ending entrenched deflation in Japan.</p>\r\n\r\n<p>However, the BoJ isn’t expected to pump in further stimulus just yet. The bank thinks, at least for the moment, that the recent bout of disinflation can be blamed on falling oil prices and it doesn’t respond to temporary threats to its inflation outlook. While it’s is true that falling oil prices is weighing heavily on inflation, even non-tradables inflation is soft. This is largely why we expect the BoJ to pump more stimulus into the economy later in the year, but not until after spring wage negotiations.</p>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n', 1, 1425093180, 'en', 1, ',8,'),
(8, 'Introduced ForexSignalPro.Net', 'introduced-forexsignalpro-net', '', 'introduced-forexsignalpro-net.png', '', '', '', '<p>Is a Global Registered Education Provider of Project Management Institute (Global PMI R.E.P).</p>\r\n\r\n<p>Our online courses have proven their worldwide acceptance and reputation by being the choice of project management professionals in 168 countries.</p>\r\n\r\n<p style="text-align: center;"><img alt="Introduced ForexSignalPro.Net" src="/all/forexsignalpro/public/images/articles/introduced-forexsignalpro-net.png" style="width: 587px; height: 257px;" /></p>\r\n', 1, 1425092940, 'en', 1, ',1,'),
(10, 'GBPUSD: Breaking the Ascending Triangle', 'gbpusd-breaking-the-ascending-triangle', 'news-event/gbpusd-breaking-the-ascending-triangle.html', 'gbpusd-breaking-the-ascending-triangle.jpg', NULL, 'The second half of North American trade was notably more somber this afternoon as the world became aware of the events leading up to the Germanwings plane crash earlier this week.', 'gbpusd breaking the ascending triangle', '<p>The second half of North American trade was notably more somber this afternoon as the world became aware of the events leading up to the Germanwings plane crash earlier this week.&nbsp; While financially important events, like speeches by central bankers, were happening, they all seemed to fade in to the background as more important societal elements were the main topic of discussion.&nbsp; Amidst all this contemplation of human depravity, US equity markets maintained their early momentum and steadily rose throughout the day, commodities were mixed, and the USD tried to remember what it was like to be the most dominant currency on the planet.</p>\r\n\r\n<p>One currency against which the USD fared well was the GBP.&nbsp; The UK actually had some pretty decent economic figures released this morning before the US open.&nbsp; UK Retail Sales rose 0.7% which beat consensus, and the previous figure was revised upward as well, plus CBI Realized Sales also rose more than anticipated.&nbsp; However, once US data came out, which was also generally better than consensus, the GBP/USD began a move lower that erased nearly 200 pips of progress since last week.&nbsp; The move lower also broke below a rising trend line that helped form an ascending triangle prime for a breakout to the topside; however, considering the pattern couldn’t be maintained, the case for a move lower may be more compelling as the USD could go back to being King Dollar.</p>\r\n\r\n<p>While we can’t completely rule out the potential for this pair to flip the script and break the 1.50 level as we head in to the weekend, it is looking evermore unlikely.&nbsp; Outside of the immediate post-Federal Reserve move, this pair hasn’t been able to advance beyond that imaginary Maginot Line, and it may now have help keeping this pair capped with the previous rising trend line support turned resistance.&nbsp;</p>\r\n', 1, 1425093240, 'en', 1, ',8,'),
(11, 'Has the EUR/USD’s downtrend resumed?', 'has-the-eur-usds-downtrend-resumed', 'news-event/has-the-eur-usds-downtrend-resumed.html', 'has-the-eur-usds-downtrend-resumed.jpg', NULL, 'You may have seen a couple of tweets from us on the EUR/USD currency pair, highlighting the false breakout above the 1.1040 handle earlier today.', 'forex million vàng giao dịch trong kênh tăng,forex million vang giao dich trong kenh tang', '<p>You may have seen a couple of tweets from us on the EUR/USD currency pair, highlighting the false breakout above the 1.1040 handle earlier today. As this could turn out to be a significant reversal in the trend, we thought we should send out a quick note with a chart to put some more colour behind this potentially bearish setup. My colleague Neal Gilbert has already covered the fundamental drivers of the USD in his USD/CAD piece which you can find&nbsp;here, so won’t repeat them. But one thing I would like to mention is that the divergence of monetary policies between the US and euro zone central bank means that we are fundamentally bearish on the EUR/USD. Will today mark the resumption of the EUR/USD’s downward trend?&nbsp; &nbsp;</p>\r\n\r\n<p>As can be seen on the chart, below, the EUR/USD rallied to a high of 1.1050 earlier today. As a result, it probably took out some stop loss orders from the weaker hands above Wednesday’s post-FOMC high of 1.1040. As the bulls lacked conviction to increase their bets at that extreme, the EUR/USD could not hold its own there. Sensing blood, the bears returned en masse which caused price to drop viciously. So far it has dropped almost 150 pips to a low of just over 1.0900.</p>\r\n\r\n<p>But there could be more losses should this 1.0900 support level also breaks down. If seen, it may give rise to further follow-up technical selling towards the next logical support at 1.0825 which is the 38.2% Fibonacci retracement level of the recent upswing. But the sell-off could potentially extend far beyond that level.</p>\r\n\r\n<p>However if the buyers hold their ground at these levels and eventually cause the EUR/USD to push back towards 1.1040 and beyond, then the next key resistance area to watch would be around 1.1110/25. This is where the broken support level meets the 61.8% Fibonacci retracement of the last leg down, so it is a significant area of resistance. But as things stand, the EUR/USD looks more likely to extend its declines than to stage a rally from here.</p>\r\n', 1, 1425093300, 'en', 1, ',8,'),
(12, 'The Fed is raising the bar for a June hike', 'the-fed-is-raising-the-bar-for-a-june-hike', 'news-event/the-fed-is-raising-the-bar-for-a-june-hike.html', 'the-fed-is-raising-the-bar-for-a-june-hike.jpg', NULL, 'The Fed is raising the bar for a June hike. The Fed is raising the bar for a June hike.', 'the fed is raising the bar for a june hike,the fed is raising the bar for a june hike', '<p>The Fed is raising the bar for a June hike. The Fed is raising the bar for a June hike.The Fed has eliminated patient from their forward guidance. However, to counterbalance this more hawkish stance, the Fed has raised the bar for a June hike notably by lowering the longer-run normal unemployment rate. As a result, the Fed funds forecasts for 2015 have been sharply reduced. However, these downward revisions could also be partly caused by the risks implied by a potentially too sharp USD appreciation. A too strong currency is also worrying the Bank of England, given its negative impact on inflation. As a result, do not expect any early rates hike in UK.</p>\r\n', 1, 1425093780, 'en', 1, ',8,'),
(13, 'High-yield EM reverse gains, EUR advances reticently', 'high-yield-em-reverse-gains-eur-advances-reticently', 'news-event/high-yield-em-reverse-gains-eur-advances-reticently.html', 'high-yield-em-reverse-gains-eur-advances-reticently.jpg', NULL, 'Nothing much has happened in the FX markets overnight. In Tokyo, USD/JPY and JPY crosses were sluggish.', 'high yield em reverse gains eur advances reticently,high yield em reverse gains eur advances reticently', '<p>Nothing much has happened in the FX markets overnight. In Tokyo, USD/JPY and JPY crosses were sluggish. The fiscal year end demand in yen, combined to softer US yields continue weighing on the JPY-complex. As targeted, the US/DJPY steps in the Ichimoku daily cloud (118.20/75). As the negative momentum gains traction, we expect the downside limited at 117.93/118.20 area before the CPI data due tomorrow. Option barriers trail below 119.50/120.00. The softening in inflationary pressures and the 11th straight month contraction in household spending is now expected to push the inflation to negative territories, according to the BoJ. Soft CPI could revive the BoJ-doves, even though the monetary expansion alone has led to no viable outcome over the past two years of Abenomics. EUR/JPY trades comfortably above the conversion line (129.36), subject to EUR-risk.</p>\r\n\r\n<p>The German consumer confidence has improved in April according to GfK. EUR/USD stagnates just below the 1.1000/43 (psychological level / Mar 18th post-FOMC reaction high). Even if Greece and the EU have not come to a bailout agreement, the markets currently price out the possibility of “Graccident”. Traders should stand ready for a relief rally after weeks of uncertainty on the Greek deal; such bullish boost should have the potential to temporary push the EUR/USD higher. Break above 1.1043 (last week high) will shift the next resistances to 1.1280 (Fib 76.4% on Feb-Mar sell-off), then 1.1534 (Feb 3rd high). In the mid-run however, the divergence between the ECB and the Fed keeps the bias on the downside, with the parity being still the key target.</p>\r\n', 1, 1425093900, 'en', 1, ',8,');

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
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `lang`, `status`) VALUES
(1, 'Slogan', 'slogan', 'Thời trang cho mọi người', 'vi', 1),
(2, 'History forex', 'limit_0', '6', 'en', 1),
(5, 'Số tin / trang', 'limit_1', '10', 'vi', 1),
(6, 'Số SP / trang', 'limit_2', '10', 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '10', 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 'vi', 1),
(9, 'Copyright', 'copyright', 'Copyright © 2014', 'vi', 1),
(10, 'Email', 'email', 'hieunhan112@gmail.com', 'vi', 1),
(11, 'Điện thoại', 'tel', '0988 388 003', 'vi', 1),
(12, 'Hotline', 'hotline', '0988 388 003', 'vi', 1),
(13, 'Yahoo', 'yahoo', 'hieu_nhan1', 'vi', 1),
(14, 'Skype', 'skype', 'hieu_nhan1', 'vi', 1),
(15, 'Địa chỉ', 'address', '123 CMT 8, phường 10, quận 10, Tp.HCM', 'vi', 1),
(16, 'News number / page', 'limit_1', '10', 'en', 1),
(17, 'Trend', 'limit_2', '6', 'en', 1),
(18, 'Real time Orders', 'limit_3', '6', 'en', 1),
(19, 'Support and resistance', 'limit_4', '6', 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2014', 'en', 1),
(21, 'Email', 'email', 'hieunhan112@gmail.com', 'en', 1),
(22, 'Telephone', 'tel', '0988 388 003', 'en', 1),
(23, 'Hotline', 'hotline', '0988 388 003', 'en', 1),
(24, 'Yahoo', 'yahoo', 'hieu_nhan1', 'en', 1),
(25, 'Skype', 'skype', 'hieu_nhan1', 'en', 1),
(26, 'Address', 'address', '123 CMT 8', 'en', 1),
(27, 'Tên trang website', 'sitename', 'ForexSignalPro', 'vi', 1),
(28, 'Site name', 'sitename', 'ForexSignalPro', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_currency`
--

INSERT INTO `web_currency` (`id`, `name`, `average`, `order`, `lang`, `status`) VALUES
(1, 'EURUSD', 1.2, 1, 'en', 1),
(2, 'GBPUSD', 1.1, 2, 'en', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_forex`
--

INSERT INTO `web_forex` (`id`, `name`, `description`, `exactly`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Consultations 10/3 days', 'Increased by 10 points when buying pair USD exchange rate - VND', 1, 1424941800, 'en', 1, ',15,'),
(2, 'Consultations 12/3 days', 'Increased by 5 points when buying pair USD exchange rate - VND', 1, 1426151280, 'en', 1, ',15,'),
(3, 'Consultations 14/3 days', 'Increased by 15 points when buying pair USD exchange rate - VND', 1, 1426324020, 'en', 1, ',15,'),
(4, 'Consultations 18/3 days', 'Increased by 16 points when buying pair USD exchange rate - VND', 1, 1426669500, 'en', 1, ',15,'),
(5, 'Consultations 20/3 days', '<p>Increased by 12 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426842240, 'en', 1, ',15,'),
(7, 'Consultations 22/3 days', '<p>Increased by 8 points when buying pair USD exchange rate - VND</p>\r\n', 0, 1427014980, 'en', 1, ',15,');

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
(1, 'Việt Nam', 'vi', 1, 0),
(2, 'English', 'en', 2, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img_avatar` varchar(150) DEFAULT NULL,
  `img_arr` varchar(250) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `img_avatar`, `img_arr`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(2, 'About US', 'about-us', 'about-us/', '', '', 'About US', 'Des About US', 'about us,about us', 0, 2, 0, 'en', 1, 2, ',2,3,'),
(3, 'Other Included Features', '', '', '', '', 'Other Included Features', '', '', 5, 4, 0, 'en', 1, 14, ',9,'),
(4, 'We are here to help', '', '', '', '', 'We are here to help', '', '', 5, 5, 0, 'en', 1, 14, ',9,'),
(5, 'Sign Up', 'signup', 'signup/', '', '', 'Forex Signal Service - Pricing and Subscription Plans', 'Forex Signal Service - Pricing and Subscription Plans', 'forex signup,forex signup', 0, 10, 0, 'en', 1, 7, ',9,'),
(6, 'Automated Trading', 'automated-trading', 'automated-trading/', '', '', 'Automated Trading', 'Automated Trading', 'automated trading,automated trading', 0, 4, 0, 'en', 1, 2, ',2,3,'),
(7, 'Forex Signals', 'forex-signals', 'forex-signals/', '', '', 'Forex Signals', 'Forex Signals', 'forex signals,forex signals', 0, 3, 0, 'en', 1, 2, ',2,3,'),
(8, 'News - Event', 'news-event', 'news-event/', '', '', 'News - Event', 'News - Event', 'news event,news event', 0, 5, 1, 'en', 1, 2, ',2,3,'),
(22, 'Signals include Entry, Stop Loss, and Take Profit targets.', '', '', '', '', 'Signals include Entry, Stop Loss, and Take Profit targets.', '', '', 16, 2, 0, 'en', 1, 14, ',9,'),
(9, 'Contact US', 'contact-us', 'contact-us/', '', '', 'Contact US', 'Contact US', 'contact us,contact us', 0, 6, 0, 'en', 1, 13, ',2,3,'),
(13, 'Forex Signal Trade Copier', '', '', '', '', 'Forex Signal Trade Copier', '', '', 5, 2, 0, 'en', 1, 14, ',9,'),
(14, 'Login', 'login', 'login/', '', '', 'Forex Login', 'Forex Login', 'Forex Login', 0, 7, 0, 'en', 1, 8, ',9,'),
(21, 'Forex Buy & Sell signals sent in real-time to your mobile phone, email and computer.', '', '', '', '', 'Forex Buy & Sell signals sent in real-time to your mobile phone, email and computer.', '', '', 16, 1, 0, 'en', 1, 14, ',9,'),
(15, 'History counseling ForexSignalPro.Net', 'history-forexsignalpro-net', 'history-forexsignalpro-net/', '', '', 'History ForexSignalPro.Net', 'History ForexSignalPro.Net', 'history forexsignalpro net,history forexsignalpro net', 1, 0, 1, 'en', 1, 14, ',9,'),
(16, 'Forex Signals & Alerts', '', '', '', '', 'Forex Signals & Alerts', '', '', 5, 1, 0, 'en', 1, 14, ',9,'),
(17, 'Forex Signal Platform and Forex Charting', '', '', '', '', 'Forex Signal Platform and Forex Charting', '', '', 5, 3, 0, 'en', 1, 14, ',9,'),
(18, 'Payment', 'payment', 'payment/', '', '', 'Payment', 'Payment', 'payment,payment', 0, 9, 0, 'en', 1, 9, ',9,'),
(19, 'Facebook', 'facebook', 'javascript:;', 'icon-facebook.gif', NULL, 'Facebook', 'Facebook', 'Facebook', 0, 101, 0, 'en', 0, 14, ',6,'),
(1, 'Home', 'home', 'http://localhost/all/forexsignalpro', '', '', 'Forex Signal Pro', 'Des Forex Signal Pro', 'Forex Signal Pro', 0, 1, 0, 'en', 1, 1, ',2,3,'),
(20, 'Youtube', 'youtube', 'javascript:;', 'icon-youtube.gif', NULL, 'Youtube', 'Youtube', 'Youtube', 0, 102, 0, 'en', 0, 14, ',6,'),
(23, 'Real-Time Trade Signal updates.', '', '', '', '', 'Real-Time Trade Signal updates.', '', '', 16, 3, 0, 'en', 1, 14, ',9,'),
(24, 'Forex Signals auto executed and copied directly to your MT4 account.', '', '', '', '', 'Forex Signals auto executed and copied directly to your MT4 account.', '', '', 13, 1, 0, 'en', 1, 14, ',9,'),
(25, 'Cloud based Forex Signal Platform', '', '', '', '', 'Cloud based Forex Signal Platform', '', '', 17, 1, 0, 'en', 1, 14, ',9,'),
(26, 'Enhanced Forex Charting ($295 value)', '', '', '', '', 'Enhanced Forex Charting ($295 value)', '', '', 17, 2, 0, 'en', 1, 14, ',9,'),
(27, 'SMS / Email Alert Control Panel', '', '', '', '', 'SMS / Email Alert Control Panel', '', '', 3, 1, 0, 'en', 1, 14, ',9,'),
(28, 'Market Trend Meters', '', '', '', '', 'Market Trend Meters', '', '', 3, 2, 0, 'en', 1, 14, ',9,'),
(29, 'Announcement Tracker', '', '', '', '', 'Announcement Tracker', '', '', 3, 3, 0, 'en', 1, 14, ',9,'),
(30, 'Live Streaming Forex News', '', '', '', '', 'Live Streaming Forex News', '', '', 3, 4, 0, 'en', 1, 14, ',9,'),
(31, 'Forex Economic Calender', '', '', '', '', 'Forex Economic Calender', '', '', 3, 5, 0, 'en', 1, 14, ',9,'),
(32, 'Free Telephone/Email Support', '', '', '', '', 'Free Telephone/Email Support', '', '', 4, 1, 0, 'en', 1, 14, ',9,'),
(33, '8 Exit Strategies to Enhance Your Forex Trading*', '', '', '', '', '8 Exit Strategies to Enhance Your Forex Trading*', '', '', 4, 2, 0, 'en', 1, 14, ',9,'),
(34, 'Real-Time Live & Interactive Forex Trading Room. ($129 value)', '', '', '', '', 'Real-Time Live & Interactive Forex Trading Room. ($129 value)', '', '', 4, 3, 0, 'en', 1, 14, ',9,'),
(35, 'New! One hour per month discussion with a senior ForexSignalPro.com trader. ($150 value)', '', '', '', '', 'New! One hour per month discussion with a senior ForexSignalPro.com trader. ($150 value)', '', '', 4, 4, 0, 'en', 1, 14, ',9,'),
(36, 'User', 'user', 'user/', '', NULL, 'User', 'User', 'User', 0, 8, 0, 'en', 1, 8, ',9,');

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_admin`
--

CREATE TABLE IF NOT EXISTS `web_menu_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_img` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `url_img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 0, NULL, 1),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, NULL, 1),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 0, NULL, 1),
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 0, NULL, 1),
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 0, NULL, 0),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 1),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 1),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, NULL, 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 9, 0, NULL, 0),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 10, 0, NULL, 0),
(11, 'Time zone', 'web_timezone', 'icon-order.jpg', 11, 0, NULL, 1),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 12, 1, NULL, 0),
(13, 'Gói đăng ký', 'web_users_package', 'icon-product.jpg', 13, 0, NULL, 1),
(14, 'Forex History', 'web_forex', 'icon-tuyen-dung-thong-tin.jpg', 14, 0, NULL, 1),
(15, 'Cặp tiền tệ', 'web_currency', 'icon-tra-cuu-hoc-phi.jpg', 15, 0, NULL, 1),
(16, 'Trend', 'web_trend', 'icon-item.jpg', 16, 0, NULL, 1),
(17, 'Support and Resistance', 'web_support_resistance', 'icon-cau-hinh.jpg', 17, 0, NULL, 1),
(18, 'Item 18', '', 'icon-item.jpg', 18, 0, NULL, 0),
(19, 'Real time Orders', 'web_real_time', 'icon-info.jpg', 19, 1, NULL, 1),
(20, 'Loại danh mục', 'web_menu_type', 'icon-item.jpg', 2, 0, NULL, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 21, 0, '<span id="web_contact" class="ajax_thongtin"></span>', 1),
(22, 'Event logs', 'web_logs', 'icon-logs.jpg', 22, 0, '', 1),
(23, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 0, NULL, 1);

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
(3, 'Bottom', 3, 1),
(4, 'Left', 4, 1),
(5, 'Right', 5, 0),
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
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `table_data`, `url_img`, `url_img_thumb`, `lang`, `order`, `type`, `status`) VALUES
(1, 'site', 'Trang chủ', '', '', '', 'en', 1, 1, 1),
(2, 'article', 'Thông tin bài viết', 'web_article', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1, 1),
(3, 'product', 'Sản phẩm', 'web_product', 'public/images/products/', 'public/_thumbs/Images/products/', 'vi', 3, 1, 0),
(4, 'service', 'Dịch vụ', NULL, 'public/images/services/', 'public/_thumbs/Images/services/', 'vi', 4, 1, 0),
(5, 'photo', 'Hình ảnh', 'web_photo', 'public/images/photos/', 'public/_thumbs/Images/photos/', 'vi', 5, 1, 0),
(6, 'video', 'Video', 'web_video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 1, 0),
(7, 'signup', 'Đăng ký', 'web_users', '', '', 'en', 7, 1, 1),
(8, 'user', 'Đăng nhập', 'web_users', '', '', 'en', 8, 1, 1),
(9, 'payment', 'Thanh toán', '', '', '', 'en', 9, 1, 1),
(10, 'item_4', 'Item 4', NULL, '', '', 'vi', 10, 1, 0),
(11, 'catalog', 'Danh mục menu', 'web_menu', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 11, 0, 1),
(12, 'slider_banner', 'Slider - Banner', 'web_slider_banner', 'public/images/slider-banner/', 'public/_thumbs/Images/slider-banner/', 'vi', 12, 0, 1),
(13, 'contact', 'Liên hệ', NULL, '', '', 'vi', 13, 1, 1),
(14, 'no', 'Không', NULL, '', '', 'vi', 14, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_payment`
--

INSERT INTO `web_payment` (`id`, `name`, `email`, `package_id`, `ip_address`, `PAYEE_ACCOUNT`, `PAYMENT_AMOUNT`, `PAYMENT_UNITS`, `PAYMENT_ID`, `TIMESTAMPGMT`, `PAYER_ACCOUNT`, `token`, `datetime`, `lang`, `status`) VALUES
(1, 'LE TAN HAO', 'tanhao.lee@gmail.com', 0, '', 'U7071279', 0.1, 'USD', 30489, 1427688697, 'U8147911', '[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 0.1<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_BATCH_NUM] => 85228803<br />[PAYMENT_ID] => 30489<br />[SUGGESTED_MEMO] => <br />[V2_HASH] => error_empty_phrase<br />[TIMESTAMPGMT] => 1427688697<br />[PAYER_ACCOUNT] => U8147911<br />[name] => LE TAN HAO<br />[email] => tanhao.lee@gmail.com<br />', 0, '', 1),
(2, '', '', 0, '', '', 0, '', 0, 0, '', '', 0, '', 1),
(3, '', '', 0, '', '', 0, '', 0, 0, '', '', 0, '', 1),
(4, 'LE TAN HAO', 'tanhao.lee@gmail.com', 0, '', 'U7071279', 0.1, 'USD', 30489, 1427688697, 'U8147911', '[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 0.1<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_BATCH_NUM] => 85228803<br />[PAYMENT_ID] => 30489<br />[SUGGESTED_MEMO] => <br />[V2_HASH] => error_empty_phrase<br />[TIMESTAMPGMT] => 1427688697<br />[PAYER_ACCOUNT] => U8147911<br />[name] => LE TAN HAO<br />[email] => tanhao.lee@gmail.com<br />', 0, '', 1),
(5, 'LE TAN HAO', 'tanhao.lee@gmail.com', 0, '', 'U7071279', 0.1, 'USD', 30489, 1427688697, 'U8147911', '[PAYEE_ACCOUNT] => U7071279<br />[PAYMENT_AMOUNT] => 0.1<br />[PAYMENT_UNITS] => USD<br />[PAYMENT_BATCH_NUM] => 85228803<br />[PAYMENT_ID] => 30489<br />[SUGGESTED_MEMO] => <br />[V2_HASH] => error_empty_phrase<br />[TIMESTAMPGMT] => 1427688697<br />[PAYER_ACCOUNT] => U8147911<br />[name] => LE TAN HAO<br />[email] => tanhao.lee@gmail.com<br />', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img_avatar` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `img_avatar`, `order`, `lang`, `status`, `menu_id`) VALUES
(1, 'Hoạt động', '', 1, 'vi', 1, ',');

-- --------------------------------------------------------

--
-- Table structure for table `web_product`
--

CREATE TABLE IF NOT EXISTS `web_product` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `code` varchar(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `img_avatar`, `img_arr`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Mùng chống muỗi hình nón', 'mung-chong-muoi-hinh-non', 'MMHT-01', 'thoi-trang-nam/mung-chong-muoi-hinh-non.html', 'mung-chong-muoi.jpg', '', 'Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi hình nón,mung chong muoi hinh non', 200000, 250000, '<p>M&ugrave;ng l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng. M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n', '', 1, 1408460940, 'vi', 1, ',6,13,'),
(2, 'Mùng chống muỗi tam giác ba dây trắng', 'mung-chong-muoi-tam-giac-ba-day-trang', 'MMTG-01', 'thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html', 'mung-chong-muoi-tam-giac-', '', 'Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang', 250000, 0, '<h2>M&ugrave;ng chống muỗi tam gi&aacute;c ba d&acirc;y trắng&nbsp;l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng.</h2>\r\n\r\n<p>M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n', '<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n', 1, 1408460940, 'vi', 1, ',6,13,');

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
  `entry_point` float NOT NULL,
  `take_profit` float NOT NULL,
  `stop_loss` float NOT NULL,
  `status_real_time` tinyint(1) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_real_time`
--

INSERT INTO `web_real_time` (`id`, `name`, `oders`, `entry_point`, `take_profit`, `stop_loss`, `status_real_time`, `datetime`, `lang`, `status`, `currency_id`) VALUES
(1, 'Anh / Mỹ', 1, 1.0134, 1.0124, 1.0104, 1, 1428566640, 'en', 1, 1),
(2, 'GBP/USD', 0, 1.0114, 1.0124, 1.0104, 2, 1428570120, 'en', 1, 2),
(3, 'April 09, 2015', 1, 1.0134, 1.0134, 1.01, 0, 1428570660, 'en', 1, 1),
(4, 'April 20, 2015', 1, 1.0134, 1.0124, 1.0104, 3, 1429515300, 'en', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `img_avatar`, `img_arr`, `url`, `order`, `lang`, `status`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'slider-forex.png', 'forexcareer1427280903.png,', 'javascript:;', 1, 'en', 1, 1, ',1,2,'),
(2, 'Giới thiệu', '', '', 'javascript:;', 2, 'en', 0, 1, ',2,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner_position`
--

INSERT INTO `web_slider_banner_position` (`id`, `name`, `status`) VALUES
(1, 'Slider 960x280 px', 1),
(2, 'Right width:265px', 1),
(3, 'Đối tác 200x120 px', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_trend`
--

INSERT INTO `web_trend` (`id`, `name`, `today`, `week`, `month`, `datetime`, `lang`, `status`, `currency_id`) VALUES
(1, 'EUR/USD', 1, 1, 0, 1428719340, 'en', 1, 1),
(2, 'GBP/USD', 0, 1, 1, 1428719880, 'en', 1, 2);

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
  `url_img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `rule_view` varchar(100) NOT NULL,
  `rule_action` varchar(100) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `url_img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'hieunhan1121@gmail.com', 0, 1, '', '', 'admin', 'fc7fc678608590b123692867f176fe63', ',1,2,20,3,4,6,7,8,11,13,14,15,16,17,19,21,22,23,', ',1,2,20,3,4,6,7,8,11,13,14,15,16,17,19,21,22,23,', NULL, 0, 'en', 0, 1, 3),
(34, 'Hiếu Nhân', '123 CMT 8', '0988 388 003', 'hieunhan112@gmail.com', 609872400, 1, '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, 1430293180, 'en', 1425093180, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`) VALUES
(1, 'Khách hàng'),
(2, 'Thành viên'),
(3, 'Quản trị website');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(20, '::1', 2, 0, 1429526604);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_package`
--

INSERT INTO `web_users_package` (`id`, `name`, `price`, `discount`, `songay`, `order`, `payment_paypal`, `parent`, `menu_id`, `lang`, `status`) VALUES
(1, 'STANDARD', 169, 0, 0, 1, '', 0, ',21,22,23,25,28,29,30,32,33,', 'en', 1),
(2, 'PRO', 199, 0, 0, 2, '', 0, ',21,22,23,24,25,27,28,29,30,32,33,34,', 'en', 1),
(3, 'ULTIMATE', 295, 0, 0, 3, '', 0, ',21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,', 'en', 1),
(4, '10 Day Trial Monthly renewal in 10 days at $169 price.', 60, 0, 10, 1, 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ND5LDUAAQMSTC', 1, '', 'en', 1),
(5, 'Monthly Standard Subscription', 169, 0, 30, 2, '', 1, '', 'en', 1),
(6, '3 Month Standard Subscription', 507, 22, 90, 3, '', 1, '', 'en', 1),
(7, '6 Month Standard Subscription  ', 1014, 32, 180, 4, '', 1, '', 'en', 1),
(8, '10 Day Trial Monthly renewal in 10 days at $199 price.', 70, 0, 10, 1, '', 2, '', 'en', 1),
(9, 'Monthly Pro Subscription', 199, 0, 30, 2, '', 2, '', 'en', 1),
(10, '3 Month Pro Subscription', 597, 15, 90, 3, '', 2, '', 'en', 1),
(11, '6 Month Pro Subscription', 1194, 25, 180, 4, '', 2, '', 'en', 1),
(12, '10 Day Trial   Monthly renewal in 10 days at $295 price.', 100, 0, 10, 1, '', 3, '', 'en', 1),
(13, 'Monthly Ultimate Subscription', 295, 0, 30, 2, '', 3, '', 'en', 1),
(14, '3 Month Ultimate Subscription', 885, 15, 90, 3, '', 3, '', 'en', 1),
(15, '6 Month Ultimate Subscription', 1770, 26, 180, 3, '', 3, '', 'en', 1),
(16, 'Test payment $1', 1, 0, 1, 5, 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=V5C427XP9GK8C', 1, '', 'en', 1);

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
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
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

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `type`, `url`, `img_avatar`, `img_arr`, `url_code`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 1, 'quan-nam/video-trang-chu.html', 'Chrysanthemum.jpg', '', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '<p>Video trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủ</p>\r\n', 1, 1408497780, 'vi', 1, ',4,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
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
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_currency`
--
ALTER TABLE `web_currency`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_forex`
--
ALTER TABLE `web_forex`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `web_menu_admin`
--
ALTER TABLE `web_menu_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `web_product`
--
ALTER TABLE `web_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `web_timezone`
--
ALTER TABLE `web_timezone`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_trend`
--
ALTER TABLE `web_trend`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_users_login`
--
ALTER TABLE `web_users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users_package`
--
ALTER TABLE `web_users_package`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `web_video`
--
ALTER TABLE `web_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
