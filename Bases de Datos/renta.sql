-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-06-2024 a las 00:17:55
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renta`
--

DROP TABLE IF EXISTS `renta`;
CREATE TABLE IF NOT EXISTS `renta` (
  `id_renta` int NOT NULL AUTO_INCREMENT,
  `Usuario` int NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL,
  `lotesRentados` text NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_renta`),
  KEY `Usuario` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `renta`
--

INSERT INTO `renta` (`id_renta`, `Usuario`, `fechaInicio`, `fechaFinal`, `lotesRentados`, `estado`) VALUES
(1, 2, '2024-06-20', '2024-06-20', '47,55,59,63', 'Vencido');

--
-- Disparadores `renta`
--
DROP TRIGGER IF EXISTS `after_insert_renta`;
DELIMITER $$
CREATE TRIGGER `after_insert_renta` AFTER INSERT ON `renta` FOR EACH ROW BEGIN
    DECLARE lotes VARCHAR(255);
    DECLARE current_lote VARCHAR(10);
    DECLARE pos INT;
    SET lotes = NEW.lotesRentados;
    
    -- Loop through each Id_lote in lotesRentados
    WHILE LENGTH(lotes) > 0 DO
        -- Find position of next comma
        SET pos = INSTR(lotes, ',');
        
        -- If there is a comma, extract the substring up to the comma
        IF pos > 0 THEN
            SET current_lote = LEFT(lotes, pos - 1);
            SET lotes = SUBSTRING(lotes, pos + 1);
        ELSE
            -- If no comma is found, this is the last Id_lote
            SET current_lote = lotes;
            SET lotes = '';
        END IF;
        
        -- Update the Id_status of the current Id_lote to '2R'
        UPDATE lote
        SET Id_status = '2R'
        WHERE Id_lote = current_lote;
    END WHILE;
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `after_update_renta`;
DELIMITER $$
CREATE TRIGGER `after_update_renta` AFTER UPDATE ON `renta` FOR EACH ROW BEGIN
    DECLARE lotes VARCHAR(255);
    DECLARE current_lote VARCHAR(10);
    DECLARE pos INT;
    
    -- Check if the estado has changed to 'Vencido'
    IF NEW.estado = 'Vencido' THEN
        SET lotes = NEW.lotesRentados;
        
        -- Loop through each Id_lote in lotesRentados
        WHILE LENGTH(lotes) > 0 DO
            -- Find position of next comma
            SET pos = INSTR(lotes, ',');
            
            -- If there is a comma, extract the substring up to the comma
            IF pos > 0 THEN
                SET current_lote = LEFT(lotes, pos - 1);
                SET lotes = SUBSTRING(lotes, pos + 1);
            ELSE
                -- If no comma is found, this is the last Id_lote
                SET current_lote = lotes;
                SET lotes = '';
            END IF;
            
            -- Update the Id_status of the current Id_lote to '1D'
            UPDATE lote
            SET Id_status = '1D'
            WHERE Id_lote = current_lote;
        END WHILE;
    END IF;
END
$$
DELIMITER ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `renta`
--
ALTER TABLE `renta`
  ADD CONSTRAINT `renta_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuario` (`Id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
