-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2018 a las 04:21:41
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestionlaboratorios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesorado`
--

CREATE TABLE `asesorado` (
  `idAlumno` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asesorado`
--

INSERT INTO `asesorado` (`idAlumno`, `idEmpleado`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL,
  `fechaIngreso` varchar(20) NOT NULL,
  `numInventarioAmarillo` varchar(30) NOT NULL,
  `numInventarioOld` varchar(30) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `peso` varchar(30) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `observaciones` varchar(1000) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `idEmpleado_resguardo_e` int(11) NOT NULL,
  `idLugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idEquipo`, `fechaIngreso`, `numInventarioAmarillo`, `numInventarioOld`, `tipo`, `marca`, `peso`, `descripcion`, `observaciones`, `estatus`, `idEmpleado_resguardo_e`, `idLugar`) VALUES
(1, '12 de enero de 2018', '7653JSUELBJF78E', '925859739274', 'computadora', 'HP', '10 KG', 'negra', 'no hay', 'funciona', 3, 1),
(2, '2 de enero de 2018', '29H64N8SIJDBJD6', '638945399936', 'computadora', 'MAC', '9 KG', 'gris', 'no hay', 'funciona', 6, 1),
(3, '25 de febrero de 201', '3H68EN65OJDUF7', '628400675482', 'computadora', 'SONY', '11 KG', 'negra', 'no hay', 'funciona', 1, 2),
(4, '12 de enero de 2018', '9DN5DJ48JN447W', '726382654949', 'computadora', 'HP', '8 KG', 'blanca con gris', 'no hay', 'funciona', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestiona`
--

CREATE TABLE `gestiona` (
  `idEmpleado` int(11) NOT NULL,
  `idLugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gestiona`
--

INSERT INTO `gestiona` (`idEmpleado`, `idLugar`) VALUES
(1, 6),
(2, 1),
(2, 5),
(3, 2),
(4, 1),
(5, 3),
(6, 3),
(7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `lunes` varchar(20) DEFAULT NULL,
  `martes` varchar(20) DEFAULT NULL,
  `miercoles` varchar(20) DEFAULT NULL,
  `jueves` varchar(20) DEFAULT NULL,
  `viernes` varchar(20) DEFAULT NULL,
  `idAlumno` int(11) NOT NULL,
  `idEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`idHorario`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`, `idAlumno`, `idEquipo`) VALUES
(1, '8-9', '', '', '', '12-13', 2, 1),
(2, '', '', '10-11', '', '', 3, 2),
(3, '', '16-17', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoalumno`
--

CREATE TABLE `infoalumno` (
  `idAlumno` int(11) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `nombreAlumno` varchar(50) NOT NULL,
  `apePate` varchar(20) NOT NULL,
  `apeMate` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `proyecto` varchar(100) NOT NULL,
  `fechaInicio` varchar(20) NOT NULL,
  `fechaTermino` varchar(20) NOT NULL,
  `tipoProyecto` varchar(20) NOT NULL,
  `idHorario` int(11) NOT NULL,
  `idEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `infoalumno`
--

INSERT INTO `infoalumno` (`idAlumno`, `matricula`, `nombreAlumno`, `apePate`, `apeMate`, `correo`, `contraseña`, `foto`, `nivel`, `proyecto`, `fechaInicio`, `fechaTermino`, `tipoProyecto`, `idHorario`, `idEquipo`) VALUES
(1, '2134738214', 'Jose Manuel', 'Juarez', 'Rojas', 'manuelrg@gmail.com', 'jomanu', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'Licenciatura', 'Artesanias Electronicas', '7 de mayo de 2018', '20 de julio de 2018', 'Proyecto Terminal 1', 3, 1),
(2, '2113011208', 'Kennia', 'Medina', 'Rios', 'kenniamedinarios@gmail.com', 'kennim', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'Licenciatura', 'SPA_UAMI', '7 de mayo de 2018', '20 de julio de 2018', 'Proyecto de investig', 1, 1),
(3, '208343399', 'Blanca Esthela', 'Rodriguez', 'Perez', 'rodriguezblanca30@gmail.com', 'blance', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'Licenciatura', 'SPA_UAMI', '7 de mayo de 2018', '20 de julio de 2018', 'Proyecto de investig', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoempleado`
--

CREATE TABLE `infoempleado` (
  `idEmpleado` int(11) NOT NULL,
  `numeroEconomico` varchar(50) NOT NULL,
  `nombreEmpleado` varchar(50) NOT NULL,
  `apePate` varchar(20) NOT NULL,
  `apeMate` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `categoria` varchar(60) NOT NULL,
  `tipoContratacion` varchar(20) NOT NULL,
  `oficina` varchar(20) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `roles` varchar(100) NOT NULL,
  `nivelAcademico` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `infoAdicional` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `infoempleado`
--

INSERT INTO `infoempleado` (`idEmpleado`, `numeroEconomico`, `nombreEmpleado`, `apePate`, `apeMate`, `correo`, `contraseña`, `categoria`, `tipoContratacion`, `oficina`, `foto`, `telefono`, `roles`, `nivelAcademico`, `edad`, `infoAdicional`) VALUES
(1, '45376', 'Rafael', 'Aguilar', 'Gonzalez', 'rafa@gmail.com', 'rafa', 'Profesor visitante', 'Temporal', 'T-305', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '55 5804 4636', 'Profesor', 'Doctorado', 35, 'Ninguna'),
(2, '92783', 'Reyna Carolina', 'Medina', 'Ramirez', 'cmed@xanum.uam.mx', 'caro', 'Profesor asociado de tiempo completo', 'Indeterminada', 'T-309', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 580 44600 e', 'Profesora, Jefe de Area, Encargada de Laboratorio', 'Doctorado', 35, 'Ninguna'),
(3, '54920', 'Enrique', 'Rodriguez', 'De La Colina', 'erod@xanum.uam.mx', 'kike', 'Profesor asociado de tiempo completo', 'Indeterminada', 'T-303', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 5804 4600 e', 'Profesor, Encargado de Laboratorio', 'Doctorado', 50, 'Profesor asociado de tiempo completo'),
(4, '28485', 'Ricardo', 'Marcelín', 'Jiménez', 'calu@xanum.uam.mx', 'richard', 'Profesor titular de tiempo completo', 'Indeterminada', 'T-163', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 5804 4600 e', 'Profesor, Encargado de Laboratorio', 'Doctorado', 50, 'Profesor títular con tiempo completo'),
(5, '17468', 'Victor Manuel', 'Ramos', 'Ramos', 'vicman@xanum.uam.mx', 'vic', 'Profesor titular de tiempo completo', 'Indeterminada', 'T-303 bis', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 5804 4600 e', 'Profesor, Encargado de Laboratorio', 'Doctorado', 50, 'Profesor títular de tiempo completo'),
(6, '63836', 'Mauricio', 'López', 'Villaseñor', 'ixoic@xanum.uam.mx', 'mau', 'Profesor', 'Indeterminada', 'T-308', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 5804 4600 e', 'Profesor, Encargado de Laboratorio', 'Ingeniero', 50, 'Maestría por la UNAM'),
(7, '38485', 'Michael', 'Pascoe', 'Chalke', 'mpascoe@xanum.uam.mx', 'myk', 'Profesor asociado de tiempo completo', 'Indeterminada', 'T-301', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', '+52 (55) 5804 4636 e', 'Profesor, Encargado de Laboratorio', 'Doctorado', 50, 'Profesor asociado de tiempo completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `idLugar` int(11) NOT NULL,
  `nombreLugar` varchar(50) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `fotoInterior` varchar(256) NOT NULL,
  `fotoExterior` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`idLugar`, `nombreLugar`, `tipo`, `ubicacion`, `descripcion`, `fotoInterior`, `fotoExterior`) VALUES
(1, 'ARTE', 'Laboratorio', 'T-326', 'Laboratorio de Análisis de Rendimiento de Teleservicios', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a1.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg'),
(2, 'LIEC', 'Laboratorio', 'T-327', 'Laboratorio de Electrónica, Instrumentación y Control', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg'),
(3, 'PROSECOM', 'Laboratorio', 'T.328', 'Laboratorio de Procesamiento de Señales en las Comunicaciones', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg'),
(4, 'TAMDI', 'Laboratorio', 'T-330', 'Laboratorio de Técnicas de Aplicaciones Multimedia Distribuidas', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg'),
(5, 'Cubiculo', 'Oficina', 'T-309', 'Oficina asignada a profesora', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg'),
(6, 'Cubiculo', 'Oficina', 'T-305', 'Oficina asignada a profesor', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg', 'C:\\Users\\SONYB\\Desktop\\SPA-UAMI\\imagenes\\imagen_laboratorios\\laboratorio_ARTE\\a.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobiliario`
--

CREATE TABLE `mobiliario` (
  `idMobiliario` int(11) NOT NULL,
  `numInventarioAmarillo` varchar(20) NOT NULL,
  `numInventarioOld` varchar(30) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `peso` varchar(30) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `fechaCompra` varchar(45) NOT NULL,
  `idEmpleado_resguardo_m` int(11) NOT NULL,
  `idLugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mobiliario`
--

INSERT INTO `mobiliario` (`idMobiliario`, `numInventarioAmarillo`, `numInventarioOld`, `tipo`, `peso`, `descripcion`, `fechaCompra`, `idEmpleado_resguardo_m`, `idLugar`) VALUES
(1, '21JGDY6386DGHUY', '218477856373', 'mesa', '50 KG', 'cuadrada en color blanco de 1.5 m x 1 m', '7 de marzo de 2018', 2, 1),
(2, '7DH3JJHD7FNNRF8', '677356394663', 'silla', '10 KG', 'asiento y respaldo en color negra con estruct', '7 de marzo de 2018', 1, 1),
(3, '2877FNFYYHIFYC5I', '863894666383', 'estante', '30 KG', 'estructura de metal en color gris de 3m x 80c', '7 de marzo de 2018', 4, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesorado`
--
ALTER TABLE `asesorado`
  ADD PRIMARY KEY (`idAlumno`,`idEmpleado`),
  ADD KEY `idAlumno` (`idAlumno`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idEquipo`),
  ADD KEY `idLabo` (`idLugar`),
  ADD KEY `equipo_ibfk_2_idx` (`idEmpleado_resguardo_e`);

--
-- Indices de la tabla `gestiona`
--
ALTER TABLE `gestiona`
  ADD PRIMARY KEY (`idEmpleado`,`idLugar`),
  ADD KEY `gestiona_ibfk_2_idx` (`idLugar`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`),
  ADD UNIQUE KEY `horario_ibfk_2_idx` (`idAlumno`),
  ADD KEY `horario_ibfk_1_idx` (`idEquipo`);

--
-- Indices de la tabla `infoalumno`
--
ALTER TABLE `infoalumno`
  ADD PRIMARY KEY (`idAlumno`),
  ADD KEY `idEquipo` (`idEquipo`),
  ADD KEY `infoalumno_ibfk_2_idx` (`idHorario`);

--
-- Indices de la tabla `infoempleado`
--
ALTER TABLE `infoempleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`idLugar`);

--
-- Indices de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD PRIMARY KEY (`idMobiliario`),
  ADD KEY `mobiliario_ibfk_1_idx` (`idLugar`),
  ADD KEY `mobiliario_ibfk_2_idx` (`idEmpleado_resguardo_m`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `infoalumno`
--
ALTER TABLE `infoalumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `infoempleado`
--
ALTER TABLE `infoempleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `idLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  MODIFY `idMobiliario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesorado`
--
ALTER TABLE `asesorado`
  ADD CONSTRAINT `asesorado_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `infoalumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asesorado_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `infoempleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`idLugar`) REFERENCES `lugar` (`idLugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipo_ibfk_2` FOREIGN KEY (`idEmpleado_resguardo_e`) REFERENCES `infoempleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gestiona`
--
ALTER TABLE `gestiona`
  ADD CONSTRAINT `gestiona_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `infoempleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gestiona_ibfk_2` FOREIGN KEY (`idLugar`) REFERENCES `lugar` (`idLugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`idAlumno`) REFERENCES `infoalumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `infoalumno`
--
ALTER TABLE `infoalumno`
  ADD CONSTRAINT `infoalumno_ibfk_1` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infoalumno_ibfk_2` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD CONSTRAINT `mobiliario_ibfk_1` FOREIGN KEY (`idLugar`) REFERENCES `lugar` (`idLugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mobiliario_ibfk_2` FOREIGN KEY (`idEmpleado_resguardo_m`) REFERENCES `infoempleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
