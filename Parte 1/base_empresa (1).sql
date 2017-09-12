-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2017 a las 00:29:07
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `descripcion_cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idcargo`, `descripcion_cargo`) VALUES
(1, 'Supervisor'),
(2, 'Mercadeo'),
(3, 'Contaduria'),
(4, 'Recursos'),
(5, 'Coordinador'),
(6, 'Despachador'),
(7, 'Jefe'),
(8, 'Recepcionista'),
(9, 'Secretaria'),
(10, 'Operario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `descripcion_categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `descripcion_categoria`) VALUES
(1, 'Hardware'),
(2, 'Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `idclasificacion` int(11) NOT NULL,
  `descripcion_clasificacion` varchar(45) NOT NULL,
  `subcategoria_idsubcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`idclasificacion`, `descripcion_clasificacion`, `subcategoria_idsubcategoria`) VALUES
(1, 'Incompleto', 1),
(2, 'Falta De Actualizacion', 2),
(3, 'Licencia ', 3),
(4, 'Cable Quemado', 4),
(5, 'Claves', 5),
(6, 'Manchas En La Pantalla', 6),
(7, 'Cierre De Programa', 7),
(8, 'No Permite Realizar Formulas', 8),
(9, 'Entradas de USB ', 9),
(10, 'Sistema Lento', 10),
(11, 'Rota', 11),
(12, 'Quemada', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_ticket`
--

CREATE TABLE `estado_ticket` (
  `idestado_ticket` int(11) NOT NULL,
  `descripcion_estado_ticket` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idperfil` int(11) NOT NULL,
  `descripcion_perfil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idperfil`, `descripcion_perfil`) VALUES
(1, 'Super Administrador'),
(2, 'Administrador '),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `idsexo` int(11) NOT NULL,
  `descripcion_sexo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`idsexo`, `descripcion_sexo`) VALUES
(1, 'Femenino'),
(2, 'Masculino'),
(3, 'Indeterminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `idsubcategoria` int(11) NOT NULL,
  `descripcion_subcategoria` varchar(45) NOT NULL,
  `categoria_idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`idsubcategoria`, `descripcion_subcategoria`, `categoria_idcategoria`) VALUES
(1, 'Teclado', 1),
(2, 'SIGO', 2),
(3, 'Heliza', 2),
(4, 'Mouse', 1),
(5, 'Autocar', 2),
(6, 'Monitor', 1),
(7, 'Factory', 2),
(8, 'Excel', 2),
(9, 'CPU', 1),
(10, 'Disco Duro', 1),
(11, 'RAM', 1),
(12, 'Tarjeta Grafica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL,
  `asunto_ticket` varchar(45) NOT NULL,
  `descripcion_ticket` varchar(45) NOT NULL,
  `ficha_ticket` datetime NOT NULL,
  `categoria_idcategoria` int(11) NOT NULL,
  `tiempo_atencion_idtiempo_atencion` int(11) NOT NULL,
  `tipo_equipo_idtipo_equipo` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `estado_ticket_idestado_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_atencion`
--

CREATE TABLE `tiempo_atencion` (
  `idtiempo_atencion` int(11) NOT NULL,
  `descripcion_tiempo_atencion` varchar(45) NOT NULL,
  `tiempoatencion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tiempo_atencion`
--

INSERT INTO `tiempo_atencion` (`idtiempo_atencion`, `descripcion_tiempo_atencion`, `tiempoatencion`) VALUES
(1, 'BAJO', '2017-06-05 08:22:38'),
(2, 'MEDIO', '2017-06-05 12:43:57'),
(3, 'ALTO', '2017-06-06 21:44:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `idtipo_documento` int(11) NOT NULL,
  `descripcion_tipo_documento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`idtipo_documento`, `descripcion_tipo_documento`) VALUES
(1, 'Cedula De Ciudadania'),
(2, 'Cedula De Extranjeria'),
(3, 'Contrasena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_equipo`
--

CREATE TABLE `tipo_equipo` (
  `idtipo_equipo` int(11) NOT NULL,
  `descripcion_tipo_equipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_equipo`
--

INSERT INTO `tipo_equipo` (`idtipo_equipo`, `descripcion_tipo_equipo`) VALUES
(1, 'Computador De Mesa'),
(2, 'Portatil'),
(3, 'Impresora'),
(4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `idtipo_usuario` int(11) NOT NULL,
  `descripcion_tipo_usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`idtipo_usuario`, `descripcion_tipo_usuario`) VALUES
(1, 'Tecnico'),
(2, 'Ingeniero'),
(3, 'USUARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `documento_usuario` varchar(20) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `apellido_usuario` varchar(100) NOT NULL,
  `correo_usuario` varchar(100) NOT NULL,
  `contraseña_usuario` varchar(30) NOT NULL,
  `telefono_usuario` varchar(20) NOT NULL,
  `cargo_idcargo` int(11) NOT NULL,
  `tipo_usuario_idtipo_usuario` int(11) NOT NULL,
  `perfil_idperfil` int(11) NOT NULL,
  `sexo_idsexo` int(11) NOT NULL,
  `tipo_documento_idtipo_documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `documento_usuario`, `nombre_usuario`, `apellido_usuario`, `correo_usuario`, `contraseña_usuario`, `telefono_usuario`, `cargo_idcargo`, `tipo_usuario_idtipo_usuario`, `perfil_idperfil`, `sexo_idsexo`, `tipo_documento_idtipo_documento`) VALUES
(1, '10100112366', 'Camila ', 'Torres', 'Camitorres@gmail.com', '123021', '5230125', 10, 3, 3, 1, 1),
(2, '20122555448', 'Dayanne', 'Agudelo', 'Dayanne123@gmail.com', '523457', '4120002', 9, 1, 3, 1, 2),
(3, '78520121654', 'Fabian', 'Lesmes', 'Lesmesfabi@hotmail.com', '852177', '9630254', 8, 1, 3, 2, 3),
(4, '03322857484', 'Nicolas', 'Rivera', 'Nicorive@hotmail.com', '125488', '4520015', 7, 2, 2, 2, 1),
(5, '44200125577', 'Heidy', 'Gonzalez', 'Heidy555@gmail.com', '552377', '4512358', 6, 3, 3, 1, 2),
(6, '77452211254', 'Laura ', 'Garcia', 'Lauragar@gmail.com', '220112', '9965477', 5, 2, 1, 1, 3),
(7, '88541254874', 'Ana', 'Parra', 'AnaP@Hotmail.com', '552457', '7785441', 4, 1, 3, 3, 2),
(8, '55464588777', 'David', 'Arenas', 'Davidare@hotmail.com', '852210', '3021545', 3, 1, 3, 2, 1),
(9, '58669986986', 'Andres', 'Orozco', 'Andresoro@gmail.com', '787778', '4410244', 2, 3, 3, 2, 3),
(13, '54154748787', 'Alejandro', 'Velazquez', 'Alejo44@gmail.com', '666554', '7754445', 1, 2, 1, 2, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idclasificacion`),
  ADD KEY `fk_clasificacion_subcategoria1_idx` (`subcategoria_idsubcategoria`);

--
-- Indices de la tabla `estado_ticket`
--
ALTER TABLE `estado_ticket`
  ADD PRIMARY KEY (`idestado_ticket`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idperfil`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`idsexo`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`idsubcategoria`),
  ADD KEY `fk_subcategoria_categoria_idx` (`categoria_idcategoria`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idticket`),
  ADD KEY `fk_ticket_categoria1_idx` (`categoria_idcategoria`),
  ADD KEY `fk_ticket_tiempo_atencion1_idx` (`tiempo_atencion_idtiempo_atencion`),
  ADD KEY `fk_ticket_tipo_equipo1_idx` (`tipo_equipo_idtipo_equipo`),
  ADD KEY `fk_ticket_usuario1_idx` (`usuario_idusuario`),
  ADD KEY `fk_ticket_estado_ticket1_idx` (`estado_ticket_idestado_ticket`);

--
-- Indices de la tabla `tiempo_atencion`
--
ALTER TABLE `tiempo_atencion`
  ADD PRIMARY KEY (`idtiempo_atencion`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`idtipo_documento`);

--
-- Indices de la tabla `tipo_equipo`
--
ALTER TABLE `tipo_equipo`
  ADD PRIMARY KEY (`idtipo_equipo`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`idtipo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_usuario_cargo1_idx` (`cargo_idcargo`),
  ADD KEY `fk_usuario_tipo_usuario1_idx` (`tipo_usuario_idtipo_usuario`),
  ADD KEY `fk_usuario_perfil1_idx` (`perfil_idperfil`),
  ADD KEY `fk_usuario_sexo1_idx` (`sexo_idsexo`),
  ADD KEY `fk_usuario_tipo_documento1_idx` (`tipo_documento_idtipo_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `idclasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `estado_ticket`
--
ALTER TABLE `estado_ticket`
  MODIFY `idestado_ticket` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `idsexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `idsubcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idticket` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiempo_atencion`
--
ALTER TABLE `tiempo_atencion`
  MODIFY `idtiempo_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `idtipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_equipo`
--
ALTER TABLE `tipo_equipo`
  MODIFY `idtipo_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `idtipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD CONSTRAINT `fk_clasificacion_subcategoria1` FOREIGN KEY (`subcategoria_idsubcategoria`) REFERENCES `subcategoria` (`idsubcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `fk_subcategoria_categoria` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_categoria1` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ticket_estado_ticket1` FOREIGN KEY (`estado_ticket_idestado_ticket`) REFERENCES `estado_ticket` (`idestado_ticket`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ticket_tiempo_atencion1` FOREIGN KEY (`tiempo_atencion_idtiempo_atencion`) REFERENCES `tiempo_atencion` (`idtiempo_atencion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ticket_tipo_equipo1` FOREIGN KEY (`tipo_equipo_idtipo_equipo`) REFERENCES `tipo_equipo` (`idtipo_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ticket_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_cargo1` FOREIGN KEY (`cargo_idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_perfil1` FOREIGN KEY (`perfil_idperfil`) REFERENCES `perfil` (`idperfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_sexo1` FOREIGN KEY (`sexo_idsexo`) REFERENCES `sexo` (`idsexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_tipo_documento1` FOREIGN KEY (`tipo_documento_idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_tipo_usuario1` FOREIGN KEY (`tipo_usuario_idtipo_usuario`) REFERENCES `tipo_usuario` (`idtipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
