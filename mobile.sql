-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 03. 09:53
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mobile`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_mobile`
--

CREATE TABLE `tbl_mobile` (
  `m_id` int(11) NOT NULL,
  `m_desc` varchar(100) DEFAULT 'mobile',
  `path` varchar(100) NOT NULL,
  `m_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `tbl_mobile`
--

INSERT INTO `tbl_mobile` (`m_id`, `m_desc`, `path`, `m_type`) VALUES
(1, 'Iphone X', 'pic/ipx.jpg', 1),
(2, 'Samsung', 'pic/s.jpg', 1),
(3, 'Oppo', 'pic/o.jpg', 1),
(4, 'Panasonic KX', 'pic/pkx.jpg', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_type`
--

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL,
  `t_desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `tbl_type`
--

INSERT INTO `tbl_type` (`t_id`, `t_desc`) VALUES
(1, 'smart'),
(2, 'simple');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `tbl_mobile`
--
ALTER TABLE `tbl_mobile`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `m_type` (`m_type`);

--
-- A tábla indexei `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`t_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `tbl_mobile`
--
ALTER TABLE `tbl_mobile`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `tbl_mobile`
--
ALTER TABLE `tbl_mobile`
  ADD CONSTRAINT `tbl_mobile_ibfk_1` FOREIGN KEY (`m_type`) REFERENCES `tbl_type` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
