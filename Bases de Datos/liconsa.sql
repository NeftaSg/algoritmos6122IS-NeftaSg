-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2024 a las 23:35:49
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
-- Base de datos: `liconsa`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarUsuario` (IN `p_NombreUsuario` VARCHAR(255), IN `p_CorreoElectronico` VARCHAR(255), IN `p_Contrasena` VARCHAR(255))   BEGIN
    INSERT INTO Usuario (NombreUsuario, CorreoElectronico, Contrasena, TipoUsuario)
    VALUES (p_NombreUsuario, p_CorreoElectronico, p_Contrasena, 0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_asistencia` (IN `new_Id_tarjeta` INT)   BEGIN
    DECLARE current_month VARCHAR(10);

    
    SET current_month = MONTHNAME(NOW());

    
    SET @update_query = CONCAT('UPDATE asistencia SET ', current_month, '=', current_month, '+1 WHERE Id_tarjeta = ', new_Id_tarjeta);
    PREPARE stmt FROM @update_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistenacia`
--

CREATE TABLE `asistenacia` (
  `Id_Beneficiario` int(11) NOT NULL,
  `Asistencia` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario`
--

CREATE TABLE `beneficiario` (
  `id` int(11) NOT NULL,
  `Foto` varchar(50) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Curp` varchar(18) NOT NULL,
  `Edad` int(11) NOT NULL,
  `NumPersonasDependen` int(11) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Telefono` bigint(10) NOT NULL,
  `CorreoElectronico` varchar(60) NOT NULL,
  `Contrasena` varchar(15) NOT NULL,
  `Dias` int(2) NOT NULL,
  `TipoUsuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `beneficiario`
--

INSERT INTO `beneficiario` (`id`, `Foto`, `Nombre`, `Apellidos`, `Curp`, `Edad`, `NumPersonasDependen`, `Direccion`, `Telefono`, `CorreoElectronico`, `Contrasena`, `Dias`, `TipoUsuario`) VALUES
(7, '', 'ANTONIO', 'SOTO', 'qwertyuio', 76, 6, 'DFGHJKLÑ', 2345678, 'hola@gmail.com', '12345', 0, 1),
(8, 'img/65e2381b875a0.jpg', 'SDFGHJ', 'sdfghj', 'ssdfghj', 34, 3, 'sdfghjkl', 4567890, 'hola2@gmail.com', '12345', 0, 1),
(9, 'img/65f1e604365f8.jpg', 'DFGH', 'GHJ', 'ERFGHJKL', 5, 3, 'GFHJ', 123456789, 'SDFGHJK@GHJKL', '12345678', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `idTarjeta` int(11) DEFAULT NULL,
  `FechaCompra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependientes`
--

CREATE TABLE `dependientes` (
  `id` int(11) NOT NULL,
  `idBeneficiario` int(11) DEFAULT NULL,
  `NombreCompleto` varchar(255) NOT NULL,
  `Curp` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `idTarjeta` int(11) NOT NULL,
  `idBeneficiario` int(11) DEFAULT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `tarjeta`
--
DELIMITER $$
CREATE TRIGGER `after_insert_tarjeta` AFTER INSERT ON `tarjeta` FOR EACH ROW BEGIN
    INSERT INTO asistenacia (Id_tarjeta) VALUES (NEW.idTarjeta)
    ON DUPLICATE KEY UPDATE Id_tarjeta = NEW.idTarjeta;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(2) NOT NULL,
  `TipoUsuario` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `TipoUsuario`) VALUES
(1, 'Beneficiario'),
(2, 'Administrador'),
(3, 'Jefe de Turno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistenacia`
--
ALTER TABLE `asistenacia`
  ADD KEY `Id_tarjeta` (`Id_Beneficiario`);

--
-- Indices de la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TipoUsuario` (`TipoUsuario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idTarjeta` (`idTarjeta`);

--
-- Indices de la tabla `dependientes`
--
ALTER TABLE `dependientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idBeneficiario` (`idBeneficiario`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`idTarjeta`),
  ADD KEY `idBeneficiario` (`idBeneficiario`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dependientes`
--
ALTER TABLE `dependientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `idTarjeta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistenacia`
--
ALTER TABLE `asistenacia`
  ADD CONSTRAINT `asistenacia_ibfk_1` FOREIGN KEY (`Id_Beneficiario`) REFERENCES `beneficiario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD CONSTRAINT `beneficiario_ibfk_1` FOREIGN KEY (`TipoUsuario`) REFERENCES `tipousuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`idTarjeta`) REFERENCES `tarjeta` (`idTarjeta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `dependientes`
--
ALTER TABLE `dependientes`
  ADD CONSTRAINT `dependientes_ibfk_1` FOREIGN KEY (`idBeneficiario`) REFERENCES `beneficiario` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`idBeneficiario`) REFERENCES `beneficiario` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
