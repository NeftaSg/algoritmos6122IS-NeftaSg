-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2023 a las 08:08:51
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
-- Base de datos: `zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` varchar(5) NOT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `nombre_cientifico` varchar(25) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  `alimentacion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id_animal`, `especie`, `nombre_cientifico`, `familia`, `alimentacion`) VALUES
('A001', 'León', 'Panthera leo', 'Felidae', 'Carnívora'),
('A002', 'Tigre', 'Panthera tigris', 'Felidae', 'Carnívora'),
('A0026', 'Axolote', 'Ambystoma mexicanum', 'Ambystomatidae', 'Carnívora'),
('A0027', 'Salamandra tigre', 'Ambystoma tigrinum', 'Ambystomatidae', 'Carnívora'),
('A0028', 'Boa constrictor', 'Boa constrictor', 'Boidae', 'Carnívora'),
('A0029', 'Anaconda verde', 'Eunectes murinus', 'Boidae', 'Carnívora'),
('A003', 'Elefante africano', 'Loxodonta africana', 'Elephantidae', 'Herbívora'),
('A0030', 'Morsa', 'Odobenus rosmarus', 'Odobenidae', 'Piscívora'),
('A0031', 'Foca monje del Medit', 'Monachus monachus', 'Phocidae', 'Piscívora'),
('A0032', 'Okapi', 'Okapia johnstoni', 'Giraffidae', 'Herbívora'),
('A0033', 'Lémur de cola anilla', 'Lemur catta', 'Lemuridae', 'Frugívora'),
('A0034', 'Tapir', 'Tapirus terrestris', 'Tapiridae', 'Herbívora'),
('A0035', 'Carpintero real', 'Campephilus imperialis', 'Picidae', 'Insectívora'),
('A0036', 'Narval', 'Monodon monoceros', 'Monodontidae', 'Piscívora'),
('A0037', 'Perezoso de tres ded', 'Bradypus variegatus', 'Bradypodidae', 'Herbívora'),
('A0038', 'Oso hormiguero gigan', 'Myrmecophaga tridactyla', 'Myrmecophagidae', 'Insectívora'),
('A0039', 'Mofeta', 'Mephitis mephitis', 'Mephitidae', 'Omnívora'),
('A004', 'Elefante asiático', 'Elephas maximus', 'Elephantidae', 'Herbívora'),
('A0040', 'Coati', 'Nasua nasua', 'Procyonidae', 'Omnívora'),
('A0041', 'Mapache', 'Procyon lotor', 'Procyonidae', 'Omnívora'),
('A0042', 'Tejón', 'Meles meles', 'Mustelidae', 'Omnívora'),
('A0043', 'Huron', 'Mustela putorius furo', 'Mustelidae', 'Carnívora'),
('A0044', 'Lince ibérico', 'Lynx pardinus', 'Felidae', 'Carnívora'),
('A0045', 'Nutria', 'Lutra lutra', 'Mustelidae', 'Piscívora'),
('A0046', 'Guacamayo azul y ama', 'Ara ararauna', 'Psittacidae', 'Frugívora'),
('A0047', 'Flamenco', 'Phoenicopterus roseus', 'Phoenicopteridae', 'Omnívora'),
('A0048', 'Cóndor andino', 'Vultur gryphus', 'Cathartidae', 'Carnívora'),
('A0049', 'Albatros', 'Diomedea exulans', 'Diomedeidae', 'Piscívoro'),
('A005', 'Gorila occidental', 'Gorilla gorilla', 'Hominidae', 'Herbívora'),
('A0050', 'Kiwi', 'Apteryx australis', 'Apterygidae', 'Omnívora'),
('A006', 'Rinoceronte blanco', 'Ceratotherium simum', 'Rhinocerotidae', 'Herbívora'),
('A007', 'Jirafa', 'Giraffa camelopardalis', 'Giraffidae', 'Herbívora'),
('A008', 'Cocodrilo del Nilo', 'Crocodylus niloticus', 'Crocodylidae', 'Carnívora'),
('A009', 'Tiburón blanco', 'Carcharodon carcharias', 'Lamnidae', 'Carnívora'),
('A010', 'Orangután de Borneo', 'Pongo pygmaeus', 'Hominidae', 'Frugívora'),
('A011', 'Lobo gris', 'Canis lupus', 'Canidae', 'Carnívora'),
('A012', 'Tucán toco', 'Ramphastos toco', 'Ramphastidae', 'Frugívora'),
('A013', 'Pingüino emperador', 'Aptenodytes forsteri', 'Spheniscidae', 'Piscívora'),
('A014', 'Águila real', 'Aquila chrysaetos', 'Accipitridae', 'Carnívora'),
('A015', 'Iguana verde', 'Iguana iguana', 'Iguanidae', 'Herbívora'),
('A016', 'Araña tarántula mexi', 'Brachypelma smithi', 'Theraphosidae', 'Insectívora'),
('A017', 'Pitón reticulada', 'Malayopython reticulatus', 'Pythonidae', 'Carnívora'),
('A018', 'Canguro rojo', 'Macropus rufus', 'Macropodidae', 'Herbívora'),
('A019', 'Oso polar', 'Ursus maritimus', 'Ursidae', 'Carnívora'),
('A020', 'Camaleón común', 'Chamaeleo chamaeleon', 'Chamaeleonidae', 'Insectívora'),
('A021', 'Delfín nariz de bote', 'Tursiops truncatus', 'Delphinidae', 'Piscívora'),
('A022', 'Chimpancé común', 'Pan troglodytes', 'Hominidae', 'Omnívora'),
('A023', 'Puma', 'Puma concolor', 'Felidae', 'Carnívora'),
('A024', 'Jaguar', 'Panthera onca', 'Felidae', 'Carnívora'),
('A025', 'Tortuga Galápagos', 'Chelonoidis nigra', 'Testudinidae', 'Herbívora'),
('A026', 'Axolote', 'Ambystoma mexicanum', 'Ambystomatidae', 'Carnívora'),
('A027', 'Salamandra tigre', 'Ambystoma tigrinum', 'Ambystomatidae', 'Carnívora'),
('A028', 'Boa constrictor', 'Boa constrictor', 'Boidae', 'Carnívora'),
('A029', 'Anaconda verde', 'Eunectes murinus', 'Boidae', 'Carnívora'),
('A030', 'Morsa', 'Odobenus rosmarus', 'Odobenidae', 'Piscívora'),
('A031', 'Foca monje del Medit', 'Monachus monachus', 'Phocidae', 'Piscívora'),
('A032', 'Okapi', 'Okapia johnstoni', 'Giraffidae', 'Herbívora'),
('A033', 'Lémur de cola anilla', 'Lemur catta', 'Lemuridae', 'Frugívora'),
('A034', 'Tapir', 'Tapirus terrestris', 'Tapiridae', 'Herbívora'),
('A035', 'Carpintero real', 'Campephilus imperialis', 'Picidae', 'Insectívora'),
('A036', 'Narval', 'Monodon monoceros', 'Monodontidae', 'Piscívora'),
('A037', 'Perezoso de tres ded', 'Bradypus variegatus', 'Bradypodidae', 'Herbívora'),
('A038', 'Oso hormiguero gigan', 'Myrmecophaga tridactyla', 'Myrmecophagidae', 'Insectívora'),
('A039', 'Mofeta', 'Mephitis mephitis', 'Mephitidae', 'Omnívora'),
('A040', 'Coati', 'Nasua nasua', 'Procyonidae', 'Omnívora'),
('A041', 'Mapache', 'Procyon lotor', 'Procyonidae', 'Omnívora'),
('A042', 'Tejón', 'Meles meles', 'Mustelidae', 'Omnívora'),
('A043', 'Huron', 'Mustela putorius furo', 'Mustelidae', 'Carnívora'),
('A044', 'Lince ibérico', 'Lynx pardinus', 'Felidae', 'Carnívora'),
('A045', 'Nutria', 'Lutra lutra', 'Mustelidae', 'Piscívora'),
('A046', 'Guacamayo azul y ama', 'Ara ararauna', 'Psittacidae', 'Frugívora'),
('A047', 'Flamenco', 'Phoenicopterus roseus', 'Phoenicopteridae', 'Omnívora'),
('A048', 'Cóndor andino', 'Vultur gryphus', 'Cathartidae', 'Carnívora'),
('A049', 'Albatros', 'Diomedea exulans', 'Diomedeidae', 'Piscívoro'),
('A050', 'Kiwi', 'Apteryx australis', 'Apterygidae', 'Omnívora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `clave` varchar(5) NOT NULL,
  `id_ejemplar` varchar(5) NOT NULL,
  `nombre_area` varchar(20) DEFAULT NULL,
  `dimension` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`clave`, `id_ejemplar`, `nombre_area`, `dimension`) VALUES
('BSTE', 'E005', 'bosque templano', '56m2'),
('DES', 'E001', 'desierto', '23m2'),
('FRAN', 'E005', 'franjacostera', '45m2'),
('PAS', 'E002', 'pastizales', '50m2'),
('TUN', 'E003', 'tundra', '70m2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo`
--

CREATE TABLE `complejo` (
  `id_complejo` varchar(5) NOT NULL,
  `nombre_complejo` varchar(40) DEFAULT NULL,
  `estado_complejo` varchar(25) DEFAULT NULL,
  `año_de_fundacion` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `complejo`
--

INSERT INTO `complejo` (`id_complejo`, `nombre_complejo`, `estado_complejo`, `año_de_fundacion`) VALUES
('AFSA', 'africam safari', 'puebla', 1972),
('ALTP', 'altiplano', 'san luis potosi', 2000),
('BEJU', 'benito juarez', 'veracruz', 1942),
('CHA', 'chapultepec', 'cdmx', 1923),
('CHI', 'chihuahua', 'chihuahua', 1993),
('COR', 'cordoba', 'veracruz', 1983),
('CUL', 'culiacan', 'sinaloa', 1987),
('GUA', 'zoologico de guadalajara', 'jalisco', 1988),
('GUYM', 'guaymas', 'sonora', 1982),
('JURQ', 'juriquilla', 'queretaro', 1992),
('LEO', 'zoologico de leon', 'guanajuato', 1979),
('LPAS', 'la pastora', 'nuevo leon', 1963),
('MADQ', 'miguel angel de quevedo', 'cdmx', 1980),
('MEX', 'mexicali', 'baja california', 1977),
('MOR', 'morelia', 'michoacan', 1980),
('PDCA', 'playa del carmen', 'quintana roo', 2017),
('PLVT', 'parque la venta', 'tabasco', 1956),
('RAT', 'reino animal teotihuacan', 'mexico', 2005),
('SDA', 'san juan de aragon', 'cdmx', 1994),
('TGU', 'tuxtla gutierrez', 'chiapas', 1942),
('TIJ', 'tijuana', 'baja california', 1970),
('TLA', 'tlaxcala', 'tlaxcala', 1980),
('TZM', 'tizimin', 'yucatan', 1985),
('YU', 'tumka', 'tabasco', 1987),
('ZA', 'zacango', 'mexico', 1981);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_animal`
--

CREATE TABLE `complejo_animal` (
  `id_comani` varchar(5) NOT NULL,
  `id_animal` varchar(5) DEFAULT NULL,
  `id_complejo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `complejo_animal`
--

INSERT INTO `complejo_animal` (`id_comani`, `id_animal`, `id_complejo`) VALUES
('CAN01', 'A0037', 'SDA'),
('CAN02', 'A0028', 'CHA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_area`
--

CREATE TABLE `complejo_area` (
  `id_compa` varchar(5) NOT NULL,
  `id_complejo` varchar(5) DEFAULT NULL,
  `clave` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `complejo_area`
--

INSERT INTO `complejo_area` (`id_compa`, `id_complejo`, `clave`) VALUES
('CAR01', 'CHA', 'TUN'),
('CAR02', 'SDA', 'PAS'),
('CAR03', 'MOR', 'DES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `id_ejemplar` varchar(5) NOT NULL,
  `id_animal` varchar(5) NOT NULL,
  `nombre_ejemplar` varchar(20) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejemplar`
--

INSERT INTO `ejemplar` (`id_ejemplar`, `id_animal`, `nombre_ejemplar`, `edad`, `peso`, `genero`) VALUES
('E001', 'A001', 'Nina', 5, 45.6, 'Hembra'),
('E002', 'A0050', 'Julian', 4, 12, 'Macho'),
('E003', 'A0030', 'Gin', 8, 34.6, 'Macho'),
('E004', 'A001', 'Olaf', 10, 50, 'Femenino'),
('E005', 'A003', 'Lil', 2, 20.6, 'femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `id_ejemplar` (`id_ejemplar`);

--
-- Indices de la tabla `complejo`
--
ALTER TABLE `complejo`
  ADD PRIMARY KEY (`id_complejo`);

--
-- Indices de la tabla `complejo_animal`
--
ALTER TABLE `complejo_animal`
  ADD PRIMARY KEY (`id_comani`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_complejo` (`id_complejo`);

--
-- Indices de la tabla `complejo_area`
--
ALTER TABLE `complejo_area`
  ADD PRIMARY KEY (`id_compa`),
  ADD KEY `id_complejo` (`id_complejo`),
  ADD KEY `clave` (`clave`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD PRIMARY KEY (`id_ejemplar`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`id_ejemplar`) REFERENCES `ejemplar` (`id_ejemplar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `complejo_animal`
--
ALTER TABLE `complejo_animal`
  ADD CONSTRAINT `complejo_animal_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complejo_animal_ibfk_2` FOREIGN KEY (`id_complejo`) REFERENCES `complejo` (`id_complejo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `complejo_area`
--
ALTER TABLE `complejo_area`
  ADD CONSTRAINT `complejo_area_ibfk_1` FOREIGN KEY (`id_complejo`) REFERENCES `complejo` (`id_complejo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complejo_area_ibfk_2` FOREIGN KEY (`clave`) REFERENCES `area` (`clave`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
