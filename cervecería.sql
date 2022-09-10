-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-09-2022 a las 17:40:43
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Manzana', 'Por presunta subfacturación de exportaciones ', 'bddwewmjxgfhi8zfnyzv', 'Personal de la Policía Federal Argentina (PFA), junto con Prefectura Naval, Aduana y la Administración Federal de Ingresos Públicos (AFIP), realizaron ayer nueve allanamientos simultáneos en Bahía Blanca y la Ciudad de Buenos Aires por presunta subfacturación no declarada en el marco de exportaciones, informaron fuentes de la investigación. Estas pesquisas se dan en un marco en el cual el Gobierno decidió combatir presuntas operaciones irregulares en las cuales está vinculado el aprovechamiento empresario para conseguir divisas.'),
(5, 'La bronca social hizo reaccionar a la Corte', 'Convalidó un amparo contra las quemas que había presentado una ONG', 'gnwlqse0w72qprcacg6p', 'En el pico más álgido del malestar social y político en la región Rosario por los incendios intencionales en el delta del Paraná, la Corte Suprema de Justicia de la Nación reaccionó ayer con una resolución acerca de un amparo presentado hace dos años por una organización civil. La decisión ratifica el mandato para las provincias de Santa Fe, Entre Ríos y Buenos Aires, y para los municipios de Rosario y Victoria, que dentro de los próximos 15 días se constituyan en un comité de emergencia ambiental, y los emplaza rendir información de lo actuado cada treinta días.'),
(20, 'Qué whisky es protagonista de la temporada de esquí en San Martín de los Andes', 'Invierno récord en la Patagonia', 'adixhftwqhhzoh8os70x', 'El whisky Monkey Shoulder tiene una personalidad única que se expresa y se potencia en los encuentros con amigos.En esta oportunidad, este whisky joven, ideal para disfrutar en coctelería, es el protagonista indiscutido de los mejores After ski de la temporada de invierno 2022.Para aquellos que lo hayan podido probar, pocas cosas son tan placenteras en la vida como esquiar. Este deporte que tiene a la nieve como protagonista, posee una gran popularidad y Argentina tiene algunos de los centros de esquí más grandes de América Latina. Fundamentalmente en la zona de la Cordillera de los Andes y de la Patagonia, donde la cantidad de nieve es abundante, se yerguen los más famosos centros turísticos para ávidos esquiadores y valientes principiantes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Federico', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Gustavo', '674f3c2c1a8a6f90461e8a66fb5550ba');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
