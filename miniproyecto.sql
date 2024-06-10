-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2024 a las 16:27:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miniproyecto`
--

CREATE TABLE `miniproyecto` (
  `id` int(11) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechadecreacion` date DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `miniproyecto`
--

INSERT INTO `miniproyecto` (`id`, `nombres`, `apellidos`, `direccion`, `email`, `gender`, `dni`, `edad`, `fechadecreacion`, `telefono`) VALUES
(1, 'Bryn', 'Littley', '9106 Montana Avenue', 'blittley0@ox.ac.uk', 'Male', '50', 1, '0000-00-00', '834 960 3788'),
(2, 'Stewart', 'Tippler', '8 Texas Lane', 'stippler1@skyrock.com', 'Male', '7', 2, '0000-00-00', '427 155 2820'),
(3, 'Pietrek', 'McParland', '274 Forest Circle', 'pmcparland2@columbia.edu', 'Male', '2', 3, '0000-00-00', '157 813 3983'),
(4, 'Jordanna', 'Van Ross', '91773 Esch Way', 'jvanross3@slate.com', 'Bigender', '0', 4, '0000-00-00', '828 343 9270'),
(5, 'Jethro', 'Caroline', '2444 Calypso Avenue', 'jcaroline4@vkontakte.ru', 'Male', '07478', 5, '0000-00-00', '289 698 0257'),
(6, 'Mair', 'Titchard', '4537 Anthes Trail', 'mtitchard5@dagondesign.com', 'Bigender', '288', 6, '0000-00-00', '620 185 2836'),
(7, 'Bethina', 'Oldland', '873 Waubesa Way', 'boldland6@hhs.gov', 'Female', '3', 7, '0000-00-00', '601 340 7905'),
(8, 'Hadlee', 'Barribal', '27 Chive Lane', 'hbarribal7@nyu.edu', 'Male', '739', 8, '0000-00-00', '147 646 6172'),
(9, 'Dudley', 'Annatt', '783 Schlimgen Court', 'dannatt8@blog.com', 'Non-binary', '8817', 9, '0000-00-00', '442 775 5825'),
(10, 'Corri', 'O\'Nion', '4 Sauthoff Park', 'conion9@jiathis.com', 'Female', '3903', 10, '0000-00-00', '453 834 2648'),
(11, 'Gaultiero', 'Shutle', '6 Blaine Hill', 'gshutlea@arizona.edu', 'Male', '2', 11, '0000-00-00', '115 205 1672'),
(12, 'Raphaela', 'Kobel', '50 Erie Parkway', 'rkobelb@java.com', 'Female', '75', 12, '0000-00-00', '352 458 6599'),
(13, 'Guido', 'McClaurie', '49145 Macpherson Point', 'gmcclauriec@gmpg.org', 'Male', '5405', 13, '0000-00-00', '813 572 2209'),
(14, 'Derrick', 'Dakhno', '22429 Forest Point', 'ddakhnod@sciencedirect.com', 'Male', '92831', 14, '0000-00-00', '691 127 7206'),
(15, 'Corbie', 'Brayson', '6149 Susan Court', 'cbraysone@histats.com', 'Male', '6', 15, '0000-00-00', '589 637 8474'),
(16, 'Justus', 'Skirven', '3 Loftsgordon Alley', 'jskirvenf@webeden.co.uk', 'Male', '91083', 16, '0000-00-00', '882 945 2053'),
(17, 'Cordey', 'Serrels', '068 Melody Hill', 'cserrelsg@yahoo.com', 'Female', '0', 17, '0000-00-00', '466 768 3815'),
(18, 'Witty', 'Eadmead', '63276 Troy Lane', 'weadmeadh@columbia.edu', 'Male', '7', 18, '0000-00-00', '660 830 9195'),
(19, 'Inessa', 'Gavan', '2 Towne Junction', 'igavani@intel.com', 'Female', '1859', 19, '0000-00-00', '295 805 5769'),
(20, 'Bennett', 'Hosburn', '008 Charing Cross Drive', 'bhosburnj@rambler.ru', 'Bigender', '0', 20, '0000-00-00', '124 294 3752'),
(21, 'Webb', 'Aldous', '9391 Ridgeview Hill', 'waldousk@angelfire.com', 'Polygender', '53055', 21, '0000-00-00', '719 790 6026'),
(22, 'Devondra', 'McKeighen', '72220 Tennessee Alley', 'dmckeighenl@weather.com', 'Polygender', '07', 22, '0000-00-00', '574 892 1470'),
(23, 'Sallyanne', 'De Souza', '7 2nd Junction', 'sdesouzam@google.ru', 'Female', '9383', 23, '0000-00-00', '993 295 9512'),
(24, 'Guthrey', 'Ridout', '279 Del Sol Park', 'gridoutn@cornell.edu', 'Male', '831', 24, '0000-00-00', '949 517 8119'),
(25, 'Mildrid', 'Jorin', '27572 Burrows Alley', 'mjorino@goo.gl', 'Female', '12', 25, '0000-00-00', '625 665 1012'),
(26, 'Binny', 'Strete', '92 Jana Way', 'bstretep@shop-pro.jp', 'Female', '4', 26, '0000-00-00', '514 749 2623'),
(27, 'Annie', 'Cumberledge', '9 Grasskamp Circle', 'acumberledgeq@reference.com', 'Female', '640', 27, '0000-00-00', '602 580 2322'),
(28, 'Isidro', 'Withringten', '66687 Havey Hill', 'iwithringtenr@multiply.com', 'Male', '282', 28, '0000-00-00', '843 155 6997'),
(29, 'Wittie', 'Giraux', '1 Waubesa Lane', 'wgirauxs@reuters.com', 'Male', '023', 29, '0000-00-00', '225 821 5149'),
(30, 'Brittni', 'Hinsche', '104 Dayton Center', 'bhinschet@blogspot.com', 'Genderqueer', '90', 30, '0000-00-00', '904 286 3095');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
