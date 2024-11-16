-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 19:24:02
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
-- Base de datos: `canicas`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `canicasa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `canicasa` (
`FolioA` varchar(5)
,`color` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `canicasab`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `canicasab` (
`FolioA` varchar(5)
,`color` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `canicasb`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `canicasb` (
`FolioB` varchar(5)
,`color` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canicas_a`
--

CREATE TABLE `canicas_a` (
  `FolioA` varchar(5) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Tamanio` varchar(20) NOT NULL,
  `Peso` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canicas_a`
--

INSERT INTO `canicas_a` (`FolioA`, `Color`, `Tamanio`, `Peso`) VALUES
('CA1', 'verde', 'chica', 9),
('CA10', 'verde', 'chica', 9),
('CA2', 'verde', 'chica', 8),
('CA3', 'Cafe', 'chica', 9),
('CA4', 'verde', 'chica', 9),
('CA5', 'verde', 'chica', 8),
('CA6', 'verde', 'chica', 9),
('CA7', 'verde', 'chica', 8),
('CA8', 'verde', 'chica', 9),
('CA9', 'verde', 'chica', 8);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `canicas_ab`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `canicas_ab` (
`FolioA` varchar(5)
,`color` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canicas_ayb`
--

CREATE TABLE `canicas_ayb` (
  `Folio` varchar(5) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `origen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canicas_ayb`
--

INSERT INTO `canicas_ayb` (`Folio`, `Color`, `origen`) VALUES
('CA1', 'verde', 'canicas_a'),
('CA10', 'verde', 'canicas_a'),
('CA2', 'verde', 'canicas_a'),
('CA3', 'cafe', 'canicas_a'),
('CA4', 'verde', 'canicas_a'),
('CA5', 'verde', 'canicas_a'),
('CA6', 'verde', 'canicas_a'),
('CA7', 'verde', 'canicas_a'),
('CA8', 'verde', 'canicas_a'),
('CA9', 'verde', 'canicas_a'),
('CB1', 'verde', 'canicas_b'),
('CB10', 'verde', 'canicas_b'),
('CB11', 'cafe', 'canicas_b'),
('CB12', 'verde', 'canicas_b'),
('CB13', 'verde', 'canicas_b'),
('CB14', 'verde', 'canicas_b'),
('CB15', 'cafe', 'canicas_b'),
('CB2', 'verde', 'canicas_b'),
('CB3', 'cafe', 'canicas_b'),
('CB4', 'cafe', 'canicas_b'),
('CB5', 'cafe', 'canicas_b'),
('CB6', 'verde', 'canicas_b'),
('CB7', 'cafe', 'canicas_b'),
('CB8', 'verde', 'canicas_b'),
('CB9', 'verde', 'canicas_b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canicas_b`
--

CREATE TABLE `canicas_b` (
  `FolioB` varchar(5) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Diametro` varchar(20) NOT NULL,
  `Peso` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canicas_b`
--

INSERT INTO `canicas_b` (`FolioB`, `Color`, `Diametro`, `Peso`) VALUES
('CB1', 'verde', '1.5cm', 10),
('CB10', 'verde', '1.5cm', 8),
('CB11', 'cafe', '1.5cm', 10),
('CB12', 'verde', '1.5cm', 10),
('CB13', 'verde', '1.5cm', 8),
('CB14', 'verde', '1.5cm', 10),
('CB15', 'cafe', '1.5cm', 10),
('CB2', 'verde', '1.5cm', 8),
('CB3', 'cafe', '1.5cm', 10),
('CB4', 'cafe', '1.5cm', 10),
('CB5', 'cafe', '1.5cm', 8),
('CB6', 'verde', '1.5cm', 10),
('CB7', 'cafe', '1.5cm', 10),
('CB8', 'verde', '1.5cm', 10),
('CB9', 'verde', '1.5cm', 10);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta1_a`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta1_a` (
`FolioA` varchar(5)
,`Color` varchar(20)
,`Tamanio` varchar(20)
,`Peso` int(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta1_b`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta1_b` (
`FolioB` varchar(5)
,`Color` varchar(20)
,`Diametro` varchar(20)
,`Peso` int(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta2` (
`FolioA` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta3` (
`Id_juego` int(5)
,`FolioA` varchar(5)
,`FolioB` varchar(5)
,`Jugador` varchar(20)
,`Total` int(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta4_a`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta4_a` (
`FolioA` varchar(5)
,`Color` varchar(20)
,`Tamanio` varchar(20)
,`Peso` int(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta4_b`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta4_b` (
`FolioB` varchar(5)
,`Color` varchar(20)
,`Diametro` varchar(20)
,`Peso` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego1_ab`
--

CREATE TABLE `juego1_ab` (
  `Id_juego` int(5) NOT NULL,
  `FolioA` varchar(5) NOT NULL,
  `FolioB` varchar(5) NOT NULL,
  `Jugador` varchar(20) NOT NULL,
  `Total` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego1_ab`
--

INSERT INTO `juego1_ab` (`Id_juego`, `FolioA`, `FolioB`, `Jugador`, `Total`) VALUES
(1, 'CA1', 'CB1', 'Sonia', 2),
(2, 'CA2', 'CB2', 'Nefta', 2),
(3, 'CA3', 'CB3', 'Sonia', 2),
(4, 'CA4', 'CB4', 'Nefta', 2),
(5, 'CA5', 'CB5', 'Sonia', 2),
(6, 'CA6', 'CB6', 'Nefta', 2),
(7, 'CA7', 'CB7', 'Sonia', 2),
(8, 'CA8', 'CB8', 'Nefta', 2),
(9, 'CA9', 'CB9', 'Sonia', 2),
(10, 'CA10', 'CB10', 'Nefta', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugada_num3`
--

CREATE TABLE `jugada_num3` (
  `Id_J3` varchar(5) NOT NULL,
  `Canica_1` varchar(20) NOT NULL,
  `Canica_2` varchar(20) NOT NULL,
  `Canica_3` varchar(20) NOT NULL,
  `Canica_4` varchar(20) NOT NULL,
  `Dueno_jugada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugada_num3`
--

INSERT INTO `jugada_num3` (`Id_J3`, `Canica_1`, `Canica_2`, `Canica_3`, `Canica_4`, `Dueno_jugada`) VALUES
('j3n1', 'CA1', 'CB5', 'CA7', 'CB2', 'Nefta'),
('j3n2', 'CA5', 'CB6', 'CA8', 'CB15', 'Nefta'),
('j3n3', 'CA10', 'CB3', 'CA1', 'CB1', 'Nefta'),
('j3n4', 'CA8', 'CB10', 'CA2', 'CB14', 'Nefta'),
('j3s1', 'CB2', 'CA3', 'CB7', 'CA6', 'Sonia'),
('j3s2', 'CB3', 'CA2', 'CB5', 'CA9', 'Sonia'),
('j3s3', 'CB3', 'CA3', 'CB7', 'CA4', 'Sonia'),
('j3s4', 'CB2', 'CA5', 'CB12', 'CA6', 'Sonia'),
('j3s5', 'CB15', 'CA10', 'CB13', 'CA5', 'Sonia'),
('j3s6', 'CB11', 'CA10', 'CB6', 'CA7', 'Sonia');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tiradas_sonia`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tiradas_sonia` (
`Id_juego` int(5)
,`FolioA` varchar(5)
,`FolioB` varchar(5)
,`Jugador` varchar(20)
,`Total` int(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_j3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_j3` (
`Canica_1` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `canicasa`
--
DROP TABLE IF EXISTS `canicasa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `canicasa`  AS   (select `canicas_a`.`FolioA` AS `FolioA`,`canicas_a`.`Color` AS `color` from `canicas_a`)  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `canicasab`
--
DROP TABLE IF EXISTS `canicasab`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `canicasab`  AS SELECT `canicasa`.`FolioA` AS `FolioA`, `canicasa`.`color` AS `color` FROM `canicasa`union select `canicasb`.`FolioB` AS `FolioB`,`canicasb`.`color` AS `color` from `canicasb`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `canicasb`
--
DROP TABLE IF EXISTS `canicasb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `canicasb`  AS   (select `canicas_b`.`FolioB` AS `FolioB`,`canicas_b`.`Color` AS `color` from `canicas_b`)  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `canicas_ab`
--
DROP TABLE IF EXISTS `canicas_ab`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `canicas_ab`  AS SELECT `canicasa`.`FolioA` AS `FolioA`, `canicasa`.`color` AS `color` FROM `canicasa`union select `canicasb`.`FolioB` AS `FolioB`,`canicasb`.`color` AS `color` from `canicasb`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta1_a`
--
DROP TABLE IF EXISTS `consulta1_a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta1_a`  AS   (select `canicas_a`.`FolioA` AS `FolioA`,`canicas_a`.`Color` AS `Color`,`canicas_a`.`Tamanio` AS `Tamanio`,`canicas_a`.`Peso` AS `Peso` from `canicas_a` where `canicas_a`.`Color` <> 'verde')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta1_b`
--
DROP TABLE IF EXISTS `consulta1_b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta1_b`  AS   (select `canicas_b`.`FolioB` AS `FolioB`,`canicas_b`.`Color` AS `Color`,`canicas_b`.`Diametro` AS `Diametro`,`canicas_b`.`Peso` AS `Peso` from `canicas_b` where `canicas_b`.`Color` <> 'verde')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta2`
--
DROP TABLE IF EXISTS `consulta2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta2`  AS   (select `juego1_ab`.`FolioA` AS `FolioA` from `juego1_ab`)  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta3`
--
DROP TABLE IF EXISTS `consulta3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta3`  AS   (select `juego1_ab`.`Id_juego` AS `Id_juego`,`juego1_ab`.`FolioA` AS `FolioA`,`juego1_ab`.`FolioB` AS `FolioB`,`juego1_ab`.`Jugador` AS `Jugador`,`juego1_ab`.`Total` AS `Total` from `juego1_ab` where `juego1_ab`.`Jugador` = 'Nefta')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta4_a`
--
DROP TABLE IF EXISTS `consulta4_a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta4_a`  AS   (select `canicas_a`.`FolioA` AS `FolioA`,`canicas_a`.`Color` AS `Color`,`canicas_a`.`Tamanio` AS `Tamanio`,`canicas_a`.`Peso` AS `Peso` from `canicas_a` where `canicas_a`.`Color` <> 'Cafe')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta4_b`
--
DROP TABLE IF EXISTS `consulta4_b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta4_b`  AS   (select `canicas_b`.`FolioB` AS `FolioB`,`canicas_b`.`Color` AS `Color`,`canicas_b`.`Diametro` AS `Diametro`,`canicas_b`.`Peso` AS `Peso` from `canicas_b` where `canicas_b`.`Color` <> 'Cafe')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `tiradas_sonia`
--
DROP TABLE IF EXISTS `tiradas_sonia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tiradas_sonia`  AS   (select `juego1_ab`.`Id_juego` AS `Id_juego`,`juego1_ab`.`FolioA` AS `FolioA`,`juego1_ab`.`FolioB` AS `FolioB`,`juego1_ab`.`Jugador` AS `Jugador`,`juego1_ab`.`Total` AS `Total` from `juego1_ab` where `juego1_ab`.`Jugador` = 'Sonia')  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_j3`
--
DROP TABLE IF EXISTS `vista_j3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_j3`  AS SELECT `jugada_num3`.`Canica_1` AS `Canica_1` FROM `jugada_num3`union select `jugada_num3`.`Canica_2` AS `Canica_2` from `jugada_num3` union select `jugada_num3`.`Canica_3` AS `Canica_3` from `jugada_num3` union select `jugada_num3`.`Canica_4` AS `Canica_4` from `jugada_num3`  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canicas_a`
--
ALTER TABLE `canicas_a`
  ADD PRIMARY KEY (`FolioA`);

--
-- Indices de la tabla `canicas_ayb`
--
ALTER TABLE `canicas_ayb`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `canicas_b`
--
ALTER TABLE `canicas_b`
  ADD PRIMARY KEY (`FolioB`);

--
-- Indices de la tabla `juego1_ab`
--
ALTER TABLE `juego1_ab`
  ADD PRIMARY KEY (`Id_juego`),
  ADD KEY `FolioA` (`FolioA`),
  ADD KEY `FolioB` (`FolioB`);

--
-- Indices de la tabla `jugada_num3`
--
ALTER TABLE `jugada_num3`
  ADD PRIMARY KEY (`Id_J3`),
  ADD KEY `Canica_1` (`Canica_1`),
  ADD KEY `Canica_2` (`Canica_2`),
  ADD KEY `Canica_3` (`Canica_3`),
  ADD KEY `Canica_4` (`Canica_4`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canicas_a`
--
ALTER TABLE `canicas_a`
  ADD CONSTRAINT `canicas_a_ibfk_1` FOREIGN KEY (`FolioA`) REFERENCES `canicas_ayb` (`Folio`);

--
-- Filtros para la tabla `canicas_b`
--
ALTER TABLE `canicas_b`
  ADD CONSTRAINT `canicas_b_ibfk_1` FOREIGN KEY (`FolioB`) REFERENCES `canicas_ayb` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego1_ab`
--
ALTER TABLE `juego1_ab`
  ADD CONSTRAINT `juego1_ab_ibfk_1` FOREIGN KEY (`FolioA`) REFERENCES `canicas_a` (`FolioA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `juego1_ab_ibfk_2` FOREIGN KEY (`FolioB`) REFERENCES `canicas_b` (`FolioB`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugada_num3`
--
ALTER TABLE `jugada_num3`
  ADD CONSTRAINT `jugada_num3_ibfk_1` FOREIGN KEY (`Canica_1`) REFERENCES `canicas_ayb` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jugada_num3_ibfk_2` FOREIGN KEY (`Canica_2`) REFERENCES `canicas_ayb` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jugada_num3_ibfk_3` FOREIGN KEY (`Canica_3`) REFERENCES `canicas_ayb` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jugada_num3_ibfk_4` FOREIGN KEY (`Canica_4`) REFERENCES `canicas_ayb` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
