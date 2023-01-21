-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Jan 2023 um 11:31
-- Server-Version: 10.4.24-MariaDB
-- PHP-Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mk`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `daten`
--

CREATE TABLE `daten` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `datumv` date NOT NULL,
  `datumb` date NOT NULL,
  `anzahlper` varchar(255) NOT NULL,
  `bemerkung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `daten`
--

INSERT INTO `daten` (`id`, `name`, `datumv`, `datumb`, `anzahlper`, `bemerkung`) VALUES
(17, 'Gi', '0434-03-12', '0435-04-23', 'Alle', 'Alle'),
(25, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(26, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(27, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(28, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(29, 'Timon', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(30, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(31, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(32, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(33, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(34, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 45', 'Nur ein Test'),
(35, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(36, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(37, 'Ti', '0434-03-12', '0067-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(38, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(39, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(40, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(41, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(42, 'Ti', '0434-03-12', '0000-00-00', 'Fam: 4 Freunde: 2', 'Nur Test'),
(43, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(44, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(45, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 567 Freunde: 2', 'Nur Test'),
(46, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(47, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(48, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(49, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(50, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(51, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(52, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(53, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(54, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(55, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(56, 'Ti', '0434-03-12', '0534-03-12', 'Fam: 4 Freunde: 2', 'Nur Test'),
(57, 'Ti', '0234-04-23', '0435-04-23', 'Fam: 3 Freunde: 4', 'Test'),
(58, 'Test', '2022-10-15', '2022-10-28', 'Fam: 2 Ferunde: 4', 'Test acuh');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `name`, `pas`) VALUES
(1, 'Gi', '123'),
(2, 'Test', '123'),
(3, 'Ti', '123');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `daten`
--
ALTER TABLE `daten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anzahlper` (`anzahlper`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `pas` (`pas`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `daten`
--
ALTER TABLE `daten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
