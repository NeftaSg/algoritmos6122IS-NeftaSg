-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2023 a las 23:18:30
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
-- Base de datos: `mi_super`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajade_clientes`
--

CREATE TABLE `bajade_clientes` (
  `Num_cliente` int(5) NOT NULL,
  `RFC` varchar(15) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `C_P` int(10) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Fecha_baja` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Num_clinete` int(5) NOT NULL,
  `RFC` varchar(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `C_P` int(5) NOT NULL,
  `Telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listade_precios`
--

CREATE TABLE `listade_precios` (
  `Id_producto` varchar(5) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_producto` varchar(5) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Prestacion` varchar(20) NOT NULL,
  `Contenido` varchar(20) NOT NULL,
  `Costo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `RFC` varchar(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Marcaquesurte` varchar(20) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Contacto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bajade_clientes`
--
ALTER TABLE `bajade_clientes`
  ADD KEY `Num_cliente` (`Num_cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Num_clinete`),
  ADD KEY `RFC` (`RFC`);

--
-- Indices de la tabla `listade_precios`
--
ALTER TABLE `listade_precios`
  ADD KEY `Id_producto` (`Id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`RFC`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bajade_clientes`
--
ALTER TABLE `bajade_clientes`
  ADD CONSTRAINT `bajade_clientes_ibfk_1` FOREIGN KEY (`Num_cliente`) REFERENCES `cliente` (`Num_clinete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`RFC`) REFERENCES `proveedor` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `listade_precios`
--
ALTER TABLE `listade_precios`
  ADD CONSTRAINT `listade_precios_ibfk_1` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
