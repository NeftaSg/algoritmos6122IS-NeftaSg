-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2023 a las 21:30:42
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zapateria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `botas`
--

CREATE TABLE `botas` (
  `modelo` varchar(5) NOT NULL,
  `descripcion` text NOT NULL,
  `tacon` varchar(5) NOT NULL,
  `forro` varchar(20) NOT NULL,
  `costo` float NOT NULL,
  `precio_mas25` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `botas`
--

INSERT INTO `botas` (`modelo`, `descripcion`, `tacon`, `forro`, `costo`, `precio_mas25`) VALUES
('bot01', 'Bota de cuero negro', 'Alto', 'Cuero', 50, 62.5),
('bot02', 'Bota de gamuza marron', 'Medio', 'Gamuza', 40, 50),
('bot03', 'Bota de invierno impermeable', 'Bajo', 'Piel sintetica', 60, 75),
('bot04', 'Bota estilo vaquero', 'Medio', 'Textil', 45, 56.25),
('bot05', 'Bota elegante para mujer', 'Alto', 'Seda', 55, 68.75),
('bot06', 'Bota  resistente', 'Alto', 'Nylon', 70, 87.5),
('bot07', 'Bota de trabajo con puntera de acero', 'Bajo', 'Cuero', 65, 81.25),
('bot08', 'Bota de moda para hombre', 'Medio', 'Algodon', 48, 60),
('bot09', 'Bota para senderismo', 'Alto', 'Gore-Tex', 75, 93.75),
('bot10', 'Bota casual para uso diario', 'Bajo', 'Lona', 35, 43.75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `folio` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `articulo` varchar(20) NOT NULL,
  `talla` float NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sandalia`
--

CREATE TABLE `sandalia` (
  `modelo` varchar(5) NOT NULL,
  `descripcion` text NOT NULL,
  `composicion` varchar(20) NOT NULL,
  `costo` float NOT NULL,
  `precio_mas10` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sandalia`
--

INSERT INTO `sandalia` (`modelo`, `descripcion`, `composicion`, `costo`, `precio_mas10`) VALUES
('San01', 'Sandalia de playa cómoda', 'Goma', 30, 33),
('San02', 'Calzado casual para verano', 'Cuero sintético', 25, 27.5),
('San03', 'Sandalia elegante para eventos informales', 'Seda', 40, 44),
('San04', 'Calzado ligero y transpirable', 'Malla', 35, 38.5),
('San05', 'Sandalia deportiva para caminatas', 'Nylon', 45, 49.5),
('San06', 'Sandalia de plataforma para ocasiones especiales', 'Cuero', 50, 55),
('San07', 'Calzado de verano con detalles de flores', 'Textil', 28, 30.8),
('San08', 'Sandalia moderna con diseño geométrico', 'Poliuretano', 38, 41.8),
('San09', 'Sandalia cómoda para uso diario', 'Caucho', 32, 35.2),
('San10', 'Sandalia de cuña para eventos casuales', 'Cork', 42, 46.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tennis`
--

CREATE TABLE `tennis` (
  `modelo` varchar(5) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `costo` float NOT NULL,
  `precio_mas30` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tennis`
--

INSERT INTO `tennis` (`modelo`, `descripcion`, `color`, `costo`, `precio_mas30`) VALUES
('Ten01', 'Zapatilla deportiva para correr', 'Azul', 60, 78),
('Ten02', 'Calzado para entrenamiento en gimnasio', 'Negro', 45, 58.5),
('Ten03', 'Zapatilla de tenis profesional', 'Blanco', 75, 97.5),
('Ten04', 'Calzado casual para uso diario', 'Gris', 50, 65),
('Ten05', 'Zapatilla para actividades al aire libre', 'Verde', 65, 84.5),
('Ten06', 'Tenis para entrenamiento de alta intensidad', 'Rojo', 70, 91),
('Ten07', 'Zapatilla de baloncesto', 'Negro/Rojo', 80, 104),
('Ten08', 'Calzado ligero para running', 'Azul/Naranja', 55, 71.5),
('Ten09', 'Zapatilla de skate', 'Gris/Azul', 65, 84.5),
('Ten10', 'Tenis de moda para uso casual', 'Blanco/Rosa', 40, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatillas`
--

CREATE TABLE `zapatillas` (
  `modelo` varchar(5) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `composicion` varchar(20) NOT NULL,
  `tacon` varchar(5) NOT NULL,
  `costo` float NOT NULL,
  `precio _mas15` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zapatillas`
--

INSERT INTO `zapatillas` (`modelo`, `descripcion`, `color`, `composicion`, `tacon`, `costo`, `precio _mas15`) VALUES
('Zap01', 'Zapatillas deportivas para correr', 'Negro/Blanco', 'Malla', 'Plano', 60, 69),
('Zap02', 'Calzado casual y cómodo', 'Gris', 'Cuero sintético', 'Plano', 45, 51.75),
('Zap03', 'Zapatillas de moda con detalles brillantes', 'Rosa', 'Textil', 'Plano', 75, 86.25),
('Zap04', 'Calzado deportivo para entrenamiento en gimnasio', 'Azul', 'Malla', 'Plano', 50, 57.5),
('Zap05', 'Zapatillas para actividades al aire libre', 'Verde/Negro', 'Nylon', 'Plano', 65, 74.75),
('Zap06', 'Zapatillas de plataforma para un look moderno', 'Blanco', 'Cuero', 'Plata', 70, 80.5),
('Zap07', 'Calzado urbano con detalles en cuero', 'Marrón', 'Cuero sintético', 'Plano', 48, 55.2),
('Zap08', 'Zapatillas con diseño floral para primavera', 'Azul/Rosa', 'Textil', 'Plano', 58, 66.7),
('Zap09', 'Zapatillas cómodas para uso diario', 'Negro', 'Poliuretano', 'Plano', 42, 48.3),
('Zap10', 'Zapatillas elegantes con detalles en encaje', 'Blanco', 'Textil', 'Plano', 55, 63.25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `botas`
--
ALTER TABLE `botas`
  ADD PRIMARY KEY (`modelo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `sandalia`
--
ALTER TABLE `sandalia`
  ADD PRIMARY KEY (`modelo`);

--
-- Indices de la tabla `tennis`
--
ALTER TABLE `tennis`
  ADD PRIMARY KEY (`modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
