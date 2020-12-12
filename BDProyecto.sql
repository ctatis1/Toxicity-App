-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2020 a las 01:35:11
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `NOMBRECONTROL` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NOMBREUSUARIO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `TIPORESIDUO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NOMBRETRATAMIENTO` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCIONCONTROL` varchar(600) COLLATE utf8mb4_spanish_ci NOT NULL,
  `FECHACONTROLINICIAL` date NOT NULL,
  `FECHACONTROLFINAL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`NOMBRECONTROL`, `NOMBREUSUARIO`, `TIPORESIDUO`, `NOMBRETRATAMIENTO`, `DESCRIPCIONCONTROL`, `FECHACONTROLINICIAL`, `FECHACONTROLFINAL`) VALUES
('controla', 'Anuel', 'Explosivos', 'Disposición Final', 'asdasd', '2001-02-01', '2001-02-01'),
('KEII', 'Anuel', 'Corrosivos', 'Disposición Final', 'Ella ya no piensa en él (En él)\r\nÉl la convirtió en alguien que ella no e\'\r\nNo le basta dar amor y ser fiel (Ser fiel)\r\nHoy se va modo Romeo, ella quiere beber\r\nY no (Y no), ya no confía en nadie y no (No)\r\nHoy se bebe y pa\' la calle y woo (Woo)\r\nEl DJ que le ponga el dembow (Dembow), uah-uah', '2020-12-17', '2020-12-17'),
('PO ENCIMA', 'Ostin', 'Tóxicos', 'Transporte', '(`NOMBRECONTROL`, `NOMBREUSUARIO`, `TIPORESIDUO`, `NOMBRETRATAMIENTO`, `DESCRIPCIONCONTROL`, `FECHACONTROLINICIAL`, `FECHACONTROLFINAL`)', '2001-01-01', '2001-01-17'),
('SIGUES CON ÉL ', 'Ostin', 'Explosivos', 'Almacenamiento temporal', '¿Por qué sigues con él?\r\nSi borracha me confesaste que él no te lo hace bien\r\nTú le calientas la comida, pero él no te sabe comer (okay)\r\nSi pruebas, no vas a volver (no), no-oh-oh-oh, yeah-eh', '2001-01-01', '2001-01-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residuo`
--

CREATE TABLE `residuo` (
  `TIPORESIDUO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCIONRESIDUO` varchar(1000) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `residuo`
--

INSERT INTO `residuo` (`TIPORESIDUO`, `DESCRIPCIONRESIDUO`) VALUES
('Corrosivos', 'Son residuos que desgastan y erosionan las superficies con las que tienen contacto bajo determinadas condiciones desfavorables. Tienden a ser altamente peligrosos si son liberados en cualquier espacio. Reaccionan por contacto con otros residuos o contaminantes tóxicos. Ejemplos de residuos corrosivos son las sustancias ácidas (ácido clorhídrico, ácido sulfúrico) o muy alcalinas.'),
('Explosivos', 'Son muy volátiles si no se gestionan por profesionales que sigan medidas de seguridad indicadas para estos casos. Generalmente su almacenamiento excesivo o descuidado es altamente peligroso. La acción explosiva que generan es causada al entrar en contacto con una fuente de calor o por reacciones químicas ocasionadas por choques, fricciones o altas temperaturas. Ejemplos de este tipo de residuo son la pólvora, los peróxidos y los cloratos.'),
('Inflamables', 'En condiciones de temperaturas adversas y expuestos a fuentes de calor causan rápidamente un incendio. Los cambios químicos, la fricción o la humedad son causas muy habituales que provocan que ardan con facilidad. No controlar la gestión de estos residuos sensibles a altas temperaturas representa un riesgo para los entornos vulnerables. Ejemplos de residuos inflamables: el fósforo, los aldehídos y los hidrocarburos.'),
('Reactivos', 'Por su inestabilidad pueden llegar a ser explosivos en distintas situaciones. Esto sucede debido a la acción de temperaturas y fuerzas variables. Si entran en contacto con el agua pueden liberar gases, vapores y humos tóxicos al medio ambiente. Residuos que contengan amonio, magnesio o cloruro de acetileno están entre los principales ejemplos de los residuos reactivos.'),
('Tóxicos', 'Pueden ser orgánicos e inorgánicos. Por el alto contenido de sustancias tóxicas que tienen provocan efectos nocivos en la salud humana y en el medio ambiente. La alta capacidad destructora que poseen los vuelve una amenaza, incluso, para espacios distantes al origen de la emisión. Suelen añadirse como ingredientes a varios productos populares como los combustibles, pinturas, baterías, equipos electrónicos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `IDTRANSPORTE` int(11) NOT NULL,
  `NOMBREUSUARIO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `NOMBRECONTROL` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DIRECCIONORIGEN` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DIRECCIONDESTINO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCIONTRANSPORTE` varchar(400) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`IDTRANSPORTE`, `NOMBREUSUARIO`, `NOMBRECONTROL`, `DIRECCIONORIGEN`, `DIRECCIONDESTINO`, `DESCRIPCIONTRANSPORTE`) VALUES
(1, 'Anuel', 'KEII', 'PUERTO RICO', 'MIAMI', ''),
(3, 'Anuel', 'KEII', 'Cra 45 #53-47', 'Cra 153 #19-04', 'nain'),
(4, 'Ostin', 'SIGUES CON ÉL ', 'Cra 145 #53-47', 'Cra 53 #19-04', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `NOMBRETRATAMIENTO` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCIONTRATAMIENTO` varchar(1000) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`NOMBRETRATAMIENTO`, `DESCRIPCIONTRATAMIENTO`) VALUES
('Almacenamiento temporal', 'Una vez que los recipientes se llenen, deberán llevarse al Almacén Temporal de Residuos Peligrosos, lugar asignado para mantener los recipientes con los residuos peligrosos generados en las instalaciones, antes de ser enviados a disposición final.\r\n\r\nEl Almacén Temporal de Residuos Peligrosos debe estar separado de las áreas de producción y almacenamiento de materias primas. Debe contar con muros de contención, fosas de retención, pasillos amplios, dispositivos para extinción de incendios, señalamiento, ventilación e iluminación apropiada.'),
('Disposición Final', 'La disposición final de residuos peligrosos se hace a través de empresas autorizadas, tanto para su transportación fuera de la planta así como para su reciclaje, incineración o cualquier otro método utilizado para su manejo final. La documentación que acredite a las empresas para el manejo de residuos deberá solicitarse antes de la contratación'),
('Identificación', 'Todos los recipientes que contengan residuos peligrosos deben contar una etiqueta de identificación cuya información varía según la legislación de cada lugar, debe incluir el nombre del residuo y el tipo al que pertenece.'),
('Transporte', 'Se debe contar con vehículos autorizados para el transporte de este tipo de residuos. El conductor debe estar capacitado y contar con todas las pólizas y seguros en caso de accidentes. Se debe llevar una bitácora sobre la inspección de material.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `NOMBREUSUARIO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `CONTRASENAUSUARIO` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `FECHANACIMIENTOUSUARIO` date NOT NULL,
  `CORREO` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`NOMBREUSUARIO`, `CONTRASENAUSUARIO`, `FECHANACIMIENTOUSUARIO`, `CORREO`) VALUES
('Anuel', '1234', '2001-01-01', 'anuel@hotmail.com'),
('Ostin', '12345', '2001-01-01', 'lamarrash@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`NOMBRECONTROL`),
  ADD UNIQUE KEY `CONTROL_PK` (`NOMBRECONTROL`),
  ADD KEY `FK_CONTROL_RESIDUO_C_RESIDUO` (`TIPORESIDUO`),
  ADD KEY `FK_CONTROL_TRATAMIEN_TRATAMIE` (`NOMBRETRATAMIENTO`),
  ADD KEY `FK_CONTROL_USUARIO_C_USUARIO` (`NOMBREUSUARIO`);

--
-- Indices de la tabla `residuo`
--
ALTER TABLE `residuo`
  ADD PRIMARY KEY (`TIPORESIDUO`),
  ADD UNIQUE KEY `RESIDUO_PK` (`TIPORESIDUO`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`IDTRANSPORTE`),
  ADD UNIQUE KEY `TRANSPORTE_PK` (`IDTRANSPORTE`),
  ADD KEY `CONTROL_TRANSPORTE_FK` (`NOMBRECONTROL`),
  ADD KEY `USUARIO_TRANSPORTE_FK` (`NOMBREUSUARIO`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`NOMBRETRATAMIENTO`),
  ADD UNIQUE KEY `PROCESO_PK` (`NOMBRETRATAMIENTO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`NOMBREUSUARIO`),
  ADD UNIQUE KEY `USUARIO_PK` (`NOMBREUSUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
  MODIFY `IDTRANSPORTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `FK_CONTROL_RESIDUO_C_RESIDUO` FOREIGN KEY (`TIPORESIDUO`) REFERENCES `residuo` (`TIPORESIDUO`),
  ADD CONSTRAINT `FK_CONTROL_TRATAMIEN_TRATAMIE` FOREIGN KEY (`NOMBRETRATAMIENTO`) REFERENCES `tratamiento` (`NOMBRETRATAMIENTO`),
  ADD CONSTRAINT `FK_CONTROL_USUARIO_C_USUARIO` FOREIGN KEY (`NOMBREUSUARIO`) REFERENCES `usuario` (`NOMBREUSUARIO`);

--
-- Filtros para la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `FK_TRANSPOR_CONTROL_T_CONTROL` FOREIGN KEY (`NOMBRECONTROL`) REFERENCES `control` (`NOMBRECONTROL`),
  ADD CONSTRAINT `FK_TRANSPOR_USUARIO_T_USUARIO` FOREIGN KEY (`NOMBREUSUARIO`) REFERENCES `usuario` (`NOMBREUSUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
