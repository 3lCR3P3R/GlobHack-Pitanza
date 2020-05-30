-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2020 a las 18:54:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pitanza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes_productos`
--

CREATE TABLE `restaurantes_productos` (
  `id_usuarios` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(4) NOT NULL,
  `nombre_producto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `restaurantes_productos`
--

INSERT INTO `restaurantes_productos` (`id_usuarios`, `id_producto`, `nombre_producto`, `descripcion`) VALUES
('Picantox', 1, 'pizza', 'deberia haber algo aca'),
('Picantox', 2, 'tamal', 'ingredientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `restaurante_nombre` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `correo`, `contraseña`, `nombre_apellido`, `rol`, `restaurante_nombre`) VALUES
('3lCR3P3r', 'mlflorez74@misena.edu.co', 'pruebaxdxd', 'Matthew F', 'usr', NULL),
('Picantox', 'otroejemplo@gmail.com', '123m456m', 'Elber jimenez', 'res', 'El valde de elber');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `restaurantes_productos`
--
ALTER TABLE `restaurantes_productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `restaurantes_productos`
--
ALTER TABLE `restaurantes_productos`
  MODIFY `id_producto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `restaurantes_productos`
--
ALTER TABLE `restaurantes_productos`
  ADD CONSTRAINT `restaurantes_productos_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
