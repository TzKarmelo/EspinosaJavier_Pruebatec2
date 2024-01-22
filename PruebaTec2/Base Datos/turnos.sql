-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-01-2024 a las 03:48:21
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudadano`
--

DROP TABLE IF EXISTS `ciudadano`;
CREATE TABLE IF NOT EXISTS `ciudadano` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ciudadano`
--

INSERT INTO `ciudadano` (`ID`, `APELLIDO`, `DNI`, `NOMBRE`) VALUES
(8, 'De Paula', '12345678B', 'Luisina'),
(5, 'Espinosa Alguacil', '36527361A', 'Javier'),
(6, 'Romero', '12345678A', 'Jose');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

DROP TABLE IF EXISTS `tramite`;
CREATE TABLE IF NOT EXISTS `tramite` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TRAMITE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TURNO` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`ID`, `TRAMITE`, `TURNO`) VALUES
(1, 'Empadronamiento', 1),
(2, 'Impuestos', 1),
(3, 'Obras', 1),
(4, 'Multas', 1),
(5, 'Registro', 1),
(6, 'Licencias', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ESTADO` tinyint(1) DEFAULT '0',
  `FECHA` date DEFAULT NULL,
  `NUMTURNO` int DEFAULT NULL,
  `TRAMITE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ciudadano_dni` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`ID`, `ESTADO`, `FECHA`, `NUMTURNO`, `TRAMITE`, `ciudadano_dni`) VALUES
(8, 1, '2024-01-25', 2, 'Obras', '456798123a'),
(7, 1, '2024-01-31', 1, 'Empadronamiento', '36527361A'),
(9, 0, '2024-01-31', 3, 'Empadronamiento', '36527361A'),
(10, 1, '2024-01-26', 4, 'Obras', '456798123a'),
(11, 0, '2024-01-24', 5, 'Multas', '12345678A'),
(12, 1, '2024-01-22', 6, 'Empadronamiento', '46455788Y'),
(13, 1, '2024-02-08', 7, 'Impuestos', '46455788Y');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
