-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 16:42:20
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `du3d`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fans`
--

CREATE TABLE `fans` (
  `id` int(12) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fans`
--

INSERT INTO `fans` (`id`, `name`, `description`, `price`, `category`) VALUES
(1, 'Fan1', 'DISPONIBLE', 1500, 'fan1.png'),
(2, 'Fan2', 'DISPONIBLE', 1500, 'fan2.png'),
(3, 'Fan3', 'DISPONIBLE', 1500, 'fan3.png'),
(4, 'Fan4', 'DISPONIBLE', 1500, 'fan4.png'),
(5, 'Fan5', 'DISPONIBLE', 1500, 'fan5.png'),
(6, 'Fan6', 'DISPONIBLE', 1500, 'fan6.png'),
(7, 'Fan7', 'DISPONIBLE', 1500, 'fan7.png'),
(8, 'Fan8', 'DISPONIBLE', 1500, 'fan8.png'),
(9, 'Fan9', 'DISPONIBLE', 1500, 'fan9.png'),
(10, 'Fan10', 'DISPONIBLE', 1500, 'fan10.png'),
(11, 'Fan11', 'DISPONIBLE', 1500, 'fan11.png'),
(12, 'Fan12', 'DISPONIBLE', 1500, 'fan12.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hogar`
--

CREATE TABLE `hogar` (
  `id` int(12) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hogar`
--

INSERT INTO `hogar` (`id`, `name`, `description`, `price`, `category`) VALUES
(1, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar1.png'),
(2, 'Lampara Eiffel', 'Lampara con estructura similar a la torre Eiffel. 25cm de al', 1500, 'hogar2.png'),
(3, 'Lampara moderna', 'Lampara moderna para living. 25cm de alto y 20cm de ancho', 1500, 'hogar3.png'),
(4, 'Lampara velador LED', 'Lampara LED moderna y especial para mesita de luz. 20cm de a', 1500, 'hogar4.png'),
(5, 'Portavela cuenco', 'Portavelas', 1500, 'hogar5.png'),
(6, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar6.png'),
(7, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar7.png'),
(8, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar8.png'),
(9, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar9.png'),
(10, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar10.png'),
(11, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar11.png'),
(12, 'Lampara escamas', 'Lampara con forma de escamas. 30cm de alto y 20cm de ancho', 1500, 'hogar12.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navidad`
--

CREATE TABLE `navidad` (
  `id` int(12) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `navidad`
--

INSERT INTO `navidad` (`id`, `name`, `description`, `price`, `category`) VALUES
(1, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav1.png'),
(2, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav2.png'),
(3, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav3.png'),
(4, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav4.png'),
(5, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav5.png'),
(6, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav6.png'),
(7, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav7.png'),
(8, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav8.png'),
(9, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav9.png'),
(10, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav10.png'),
(11, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav11.png'),
(12, 'Colgantes personalizados', 'DISPONIBLE', 100, 'nav12.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `category`, `price`, `description`, `stock`) VALUES
(7, 'nike zoom 21', 'running', 25000, 'Zapatillas diseñada para la practica de deporte diario', 10),
(8, 'nike air', 'casual', 20000, 'Zapatillas para usar todos los dias', 8),
(9, 'converse', 'casual', 10000, 'Zapatillas para todo el dia, todos los dias', 15),
(10, 'adidas galaxar run w', 'running', 11000, 'Zapatillas diseñada para la practica de deporte diario', 3),
(11, 'vans', 'casual', 10500, 'Zapatillas para todo el dia, todos los dias', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fans`
--
ALTER TABLE `fans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hogar`
--
ALTER TABLE `hogar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navidad`
--
ALTER TABLE `navidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fans`
--
ALTER TABLE `fans`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `hogar`
--
ALTER TABLE `hogar`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `navidad`
--
ALTER TABLE `navidad`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
