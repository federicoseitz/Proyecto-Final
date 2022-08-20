-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-08-2022 a las 19:25:32
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cervecería`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Allanamientos a nueve empresas', '\r\nPor presunta subfacturación de exportaciones ', NULL, 'Personal de la Policía Federal Argentina (PFA), junto con Prefectura Naval, Aduana y la Administración Federal de Ingresos Públicos (AFIP), realizaron ayer nueve allanamientos simultáneos en Bahía Blanca y la Ciudad de Buenos Aires por presunta subfacturación no declarada en el marco de exportaciones, informaron fuentes de la investigación. Estas pesquisas se dan en un marco en el cual el Gobierno decidió combatir presuntas operaciones irregulares en las cuales está vinculado el aprovechamiento empresario para conseguir divisas.'),
(3, 'Dólar blue hoy: a cuánto cerró el miércoles 10 de agosto', 'Dólar blue hoy: a cuánto cerró el miércoles 10 de agosto', NULL, 'El dólar blue cerró su cotización a $285,00 para la compra y $295,00 para la venta, mientras que la oficial $134,77 y $140,77, respectivamente, lo que llevó la brecha entre el oficial y el dólar blue a 111.47%.\r\n\r\nEn comparación con de la anterior jornada hábil, donde el blue cotizaba a $285,00 para la compra y $295,00 para la venta.'),
(5, 'La bronca social hizo reaccionar a la Corte', 'Convalidó un amparo contra las quemas que había presentado una ONG', NULL, 'En el pico más álgido del malestar social y político en la región Rosario por los incendios intencionales en el delta del Paraná, la Corte Suprema de Justicia de la Nación reaccionó ayer con una resolución acerca de un amparo presentado hace dos años por una organización civil. La decisión ratifica el mandato para las provincias de Santa Fe, Entre Ríos y Buenos Aires, y para los municipios de Rosario y Victoria, que dentro de los próximos 15 días se constituyan en un comité de emergencia ambiental, y los emplaza rendir información de lo actuado cada treinta días.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
