-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2023 a las 00:33:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reddit_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `subscribers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`id`, `title`, `url`, `subscribers`) VALUES
(1, 'Home', '/r/Home/', 147384),
(2, 'AskReddit', '/r/AskReddit/', 42329843),
(3, 'mildlyinfuriating', '/r/mildlyinfuriating/', 6129241),
(4, 'facepalm', '/r/facepalm/', 7595916),
(5, 'place', '/r/place/', 7680674),
(6, 'NoStupidQuestions', '/r/NoStupidQuestions/', 3726260),
(7, 'AmItheAsshole', '/r/AmItheAsshole/', 9602480),
(8, 'Damnthatsinteresting', '/r/Damnthatsinteresting/', 11013333),
(9, 'worldnews', '/r/worldnews/', 32540639),
(10, 'AITAH', '/r/AITAH/', 363852),
(11, 'TwoHotTakes', '/r/TwoHotTakes/', 255387),
(12, 'WhitePeopleTwitter', '/r/WhitePeopleTwitter/', 3029273),
(13, 'Unexpected', '/r/Unexpected/', 10608317),
(14, 'antiwork', '/r/antiwork/', 2734527),
(15, 'gaming', '/r/gaming/', 37785656),
(16, 'diablo4', '/r/diablo4/', 892279),
(17, 'LivestreamFail', '/r/LivestreamFail/', 2223108),
(18, 'therewasanattempt', '/r/therewasanattempt/', 6778810),
(19, 'leagueoflegends', '/r/leagueoflegends/', 6576441),
(20, 'funny', '/r/funny/', 51428930),
(21, 'nba', '/r/nba/', 8048063),
(22, 'pics', '/r/pics/', 30106265),
(23, 'news', '/r/news/', 26536469),
(24, 'movies', '/r/movies/', 31357439),
(25, 'whatsthisbug', '/r/whatsthisbug/', 1008350),
(26, 'Home', '/r/Home/', 147384),
(27, 'AskReddit', '/r/AskReddit/', 42329851),
(28, 'mildlyinfuriating', '/r/mildlyinfuriating/', 6129243),
(29, 'facepalm', '/r/facepalm/', 7595914),
(30, 'place', '/r/place/', 7680674),
(31, 'NoStupidQuestions', '/r/NoStupidQuestions/', 3726260),
(32, 'AmItheAsshole', '/r/AmItheAsshole/', 9602488),
(33, 'Damnthatsinteresting', '/r/Damnthatsinteresting/', 11013344),
(34, 'worldnews', '/r/worldnews/', 32540641),
(35, 'AITAH', '/r/AITAH/', 363854),
(36, 'TwoHotTakes', '/r/TwoHotTakes/', 255387),
(37, 'WhitePeopleTwitter', '/r/WhitePeopleTwitter/', 3029273),
(38, 'Unexpected', '/r/Unexpected/', 10608318),
(39, 'antiwork', '/r/antiwork/', 2734527),
(40, 'gaming', '/r/gaming/', 37785660),
(41, 'diablo4', '/r/diablo4/', 892280),
(42, 'LivestreamFail', '/r/LivestreamFail/', 2223108),
(43, 'therewasanattempt', '/r/therewasanattempt/', 6778810),
(44, 'leagueoflegends', '/r/leagueoflegends/', 6576441),
(45, 'funny', '/r/funny/', 51428940),
(46, 'nba', '/r/nba/', 8048065),
(47, 'pics', '/r/pics/', 30106264),
(48, 'news', '/r/news/', 26536469),
(49, 'movies', '/r/movies/', 31357439),
(50, 'whatsthisbug', '/r/whatsthisbug/', 1008350);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
