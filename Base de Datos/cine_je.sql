-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2019 a las 01:53:10
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine_je`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `pelicula_id`, `comentario`, `fecha`, `nombre`, `correo`) VALUES
(67, 1, 'Muy buena pelicula!!', '2019-08-01', 'Jose Eduardo', 'je99alvarez@gmail.com'),
(68, 8, 'muy buena pelicula', '2019-08-04', 'juan', 'juan@gmail.com'),
(69, 13, 'Muy buena!!!', '2019-08-05', 'pedro', 'pedro@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  `tipo_usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `nombre`, `correo`, `contrasena`, `tipo_usuario`) VALUES
(1, 'Jose Eduardo', 'je99alvarez@gmail.com', 'administrador', 'admin'),
(23, 'Jodir', 'JodirJB@gmail.com', '1234567890', 'user'),
(24, 'luis', 'luissoto@gmail.com', '123456', 'user'),
(25, 'luis', 'luis@gmail.com', '123456', 'user'),
(26, 'juan', 'juan@gmail.com', '123456', 'user'),
(27, 'pedro', 'pedro@gmail.com', '123456', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `trailer` text NOT NULL,
  `link_pelicula` text NOT NULL,
  `imagen` text NOT NULL,
  `imagen_bg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `genero`, `descripcion`, `fecha`, `trailer`, `link_pelicula`, `imagen`, `imagen_bg`) VALUES
(1, 'Interestelar', 'Drama | Misterio', 'Gracias a un descubrimiento, un grupo de cientÃ­ficos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allÃ­.', '2019-08-01', 'zSWdZVtXT7E', 'NqniWGlg5kU', 'pota interes.jpg', 'bg.jpg'),
(4, 'Lucy', 'AcciÃ³n', 'Lucy, una joven que ejerce de mula para unos narcotraficantes, adquiere poderes sobrenaturales tras romperse una de las bolsas de droga que transporta y absorber los estupefacientes.', '2019-08-02', 'G8BCA5hOTzQ', 'XQfmiSMJkrQ', 'lucy-170037491-large.jpg', '402769_16333_1.jpg'),
(6, 'Spider-Man: de regreso a casa', 'FantasÃ­a | ciencia ficciÃ³n', 'Peter Parker asume su nueva identidad como Spider-Man y regresa a vivir con su tÃ­a despuÃ©s de su aventura con los Vengadores. Al volver, mientras sigue bajo la tutela de Tony Stark, descubre que ha surgido un nuevo y despiadado enemigo que pretende destruir todo lo que ama: el Buitre.', '2019-08-02', '39udgGPyYMg', 'U0D3AOldjMU', 'image.jpg', 'sphe-2209664-Full-Image_GalleryBackground-en-US-1505400373815._SX1080_.jpg'),
(7, 'John Wick 3: Parabellum', 'Suspenso | Misterio', 'John Wick regresa de nuevo pero con una recompensa sobre su cabeza que persigue unos mercenarios. Tras asesinar a uno de los miembros de su gremio, Wick es expulsado y se convierte en el foco de atenciÃ³n de todos los sicarios de la organizaciÃ³n.', '2019-08-02', 'rZfOyBifJ1U', 'rZfOyBifJ1U', 'descarga.jpg', '1558435567_900309_1558435601_noticia_normal.jpg'),
(8, 'Hellboy', 'Supernatural | FantasÃ­a', 'Nimue, conocida como \"La Reina de la Sangre\", es antigua hechicera que vuelve a la vida decidida a vengarse de una traiciÃ³n del pasado. Dividido entre el mundo sobrenatural y humano, el legendario medio demonio Hellboy recibe la misiÃ³n de contener esa amenaza y salvar al mundo.', '2019-08-02', 'z5qpu_HdpTA', 'z5qpu_HdpTA', '220px-Hellboy_(2019)_theatrical_poster.png', '1557920337403.jpg'),
(9, 'Avengers: Endgame', ' FantasÃ­a | ciencia ficciÃ³n', 'Los Vengadores restantes deben encontrar una manera de recuperar a sus aliados para un enfrentamiento Ã©pico con Thanos, el malvado que diezmÃ³ el planeta y el universo.', '2019-08-02', 'UQ3bqYKnyhM', 'UQ3bqYKnyhM', 'AvengersEndgame.jpg', 'hipertextual-nuevo-trailer-avengers-endgame-agradece-fans-universo-marvel-2019351167.jpg'),
(10, 'Capitana Marvel', 'FantasÃ­a | Ciencia ficciÃ³n', 'Una guerrera extraterrestre de la civilizaciÃ³n Kree se encuentra atrapada en medio de una batalla. Con la ayuda de Nick Fury trata de descubrir los secretos de su pasado mientras aprovecha sus poderes para terminar la guerra.', '2019-08-02', 'MJIz2gf3Wa8', 'MJIz2gf3Wa8', 'Captain_Marvel_Poster_New.jpg', '440644_731566.jpg'),
(13, 'Iron Man 3', 'Ciencia ficciÃ³n | AcciÃ³n', 'El descarado y brillante Tony Stark, tras ver destruido todo su universo personal, debe encontrar y enfrentarse a un enemigo cuyo poder no conoce lÃ­mites. Este viaje pondrÃ¡ a prueba su entereza una y otra vez, y le obligarÃ¡ a confiar en su ingenio.', '2019-08-02', 'E3Tr_ihTx6k', 'E3Tr_ihTx6k', 'IR3.jpg', 'IR3Portada.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
