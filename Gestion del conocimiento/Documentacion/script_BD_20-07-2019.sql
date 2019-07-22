-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.16 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para gestion_conocimiento
DROP DATABASE IF EXISTS `gestion_conocimiento`;
CREATE DATABASE IF NOT EXISTS `gestion_conocimiento` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestion_conocimiento`;

-- Volcando estructura para tabla gestion_conocimiento.actividad
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_activi` int(11) NOT NULL,
  `nom_activi` varchar(255) DEFAULT NULL COMMENT 'nombre de los procedimientos= actividad ',
  `descrip_activi` varchar(45) DEFAULT NULL,
  `url_infograma` varchar(45) DEFAULT NULL,
  `url_ova` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_activi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.actividad: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` (`id_activi`, `nom_activi`, `descrip_activi`, `url_infograma`, `url_ova`) VALUES
	(1, 'Desarrollo Tecnológico  ', NULL, NULL, NULL),
	(2, 'Mantenimiento Preventivo equipo de computo', NULL, NULL, NULL),
	(3, 'Gestión de Solicitudes', NULL, NULL, NULL),
	(4, 'Gestión de requisitos de tecnología de la información ', NULL, NULL, NULL),
	(5, 'Gestión de problema de tecnología de la información ', NULL, NULL, NULL),
	(6, 'Gestión de incidentes de seguridad', NULL, NULL, NULL),
	(7, 'Gestión de Incidentes de tecnologías de la información', NULL, NULL, NULL),
	(8, 'Gestión de cambios de tecnologías de la información ', NULL, NULL, NULL),
	(9, 'Gestión de copias de seguridad ', NULL, NULL, NULL),
	(10, 'Publicaciones en la página web institucional ', NULL, NULL, NULL);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.area
DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL,
  `nom_area` varchar(45) DEFAULT NULL,
  `Departamento_id_departa` int(11) NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `fk_Area_Departamento1_idx` (`Departamento_id_departa`),
  CONSTRAINT `fk_Area_Departamento1` FOREIGN KEY (`Departamento_id_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.area: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` (`id_area`, `nom_area`, `Departamento_id_departa`) VALUES
	(1, 'Area de Aplicacion', 1),
	(2, 'Area de Hardware y Comunicacion', 1),
	(3, 'Area de Investigacion y Desarrollo', 1);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.competencia
DROP TABLE IF EXISTS `competencia`;
CREATE TABLE IF NOT EXISTS `competencia` (
  `id_compe` int(11) NOT NULL,
  `nom_compe` varchar(45) DEFAULT NULL,
  `descrip_compe` varchar(45) DEFAULT NULL,
  `nivel_aceptacion` double DEFAULT NULL,
  PRIMARY KEY (`id_compe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.competencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
INSERT INTO `competencia` (`id_compe`, `nom_compe`, `descrip_compe`, `nivel_aceptacion`) VALUES
	(11, 'C#', NULL, 3.5),
	(12, 'Ext.Net', NULL, 3.6),
	(13, 'Oracle', NULL, 3.5),
	(14, 'Mongo DB', NULL, 3.5),
	(15, 'Mantenimiento de Computo', NULL, 2),
	(16, 'Manejo de redes', NULL, 4.5),
	(17, 'Manejo de Scrum', NULL, 4),
	(18, 'Atención al cliente', NULL, 4.2);
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.conocimiento_para_funcion
DROP TABLE IF EXISTS `conocimiento_para_funcion`;
CREATE TABLE IF NOT EXISTS `conocimiento_para_funcion` (
  `id_comp_func` int(11) NOT NULL,
  `fk_funcion` int(11) DEFAULT NULL,
  `fk_competencias` int(11) DEFAULT NULL,
  `nivel_aceptacion` double DEFAULT NULL,
  PRIMARY KEY (`id_comp_func`),
  KEY `FK_conocimiento_para_funcion_funciones` (`fk_funcion`),
  KEY `FK_conocimiento_para_funcion_competencia` (`fk_competencias`),
  CONSTRAINT `FK_conocimiento_para_funcion_competencia` FOREIGN KEY (`fk_competencias`) REFERENCES `competencia` (`id_compe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_conocimiento_para_funcion_funciones` FOREIGN KEY (`fk_funcion`) REFERENCES `funciones` (`id_funcion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='esta tabla debe tener el concomiento que debe tener para ';

-- Volcando datos para la tabla gestion_conocimiento.conocimiento_para_funcion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conocimiento_para_funcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `conocimiento_para_funcion` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departa` int(11) NOT NULL,
  `nom_departa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_departa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.departamento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`id_departa`, `nom_departa`) VALUES
	(1, 'Deprtamento de Tecnologia de la Informacion');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.departamento_has_actividad
DROP TABLE IF EXISTS `departamento_has_actividad`;
CREATE TABLE IF NOT EXISTS `departamento_has_actividad` (
  `Departamento_id_departa` int(11) NOT NULL,
  `actividad_id_activi` int(11) NOT NULL,
  PRIMARY KEY (`Departamento_id_departa`,`actividad_id_activi`),
  KEY `fk_Departamento_has_actividad_actividad1_idx` (`actividad_id_activi`),
  KEY `fk_Departamento_has_actividad_Departamento1_idx` (`Departamento_id_departa`),
  CONSTRAINT `fk_Departamento_has_actividad_Departamento1` FOREIGN KEY (`Departamento_id_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Departamento_has_actividad_actividad1` FOREIGN KEY (`actividad_id_activi`) REFERENCES `actividad` (`id_activi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.departamento_has_actividad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento_has_actividad` DISABLE KEYS */;
INSERT INTO `departamento_has_actividad` (`Departamento_id_departa`, `actividad_id_activi`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10);
/*!40000 ALTER TABLE `departamento_has_actividad` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.departamento_has_indicadores
DROP TABLE IF EXISTS `departamento_has_indicadores`;
CREATE TABLE IF NOT EXISTS `departamento_has_indicadores` (
  `Departamento_id_departa` int(11) NOT NULL,
  `Indicadores_id_indica` int(11) NOT NULL,
  `fecha_inicial` varchar(45) DEFAULT NULL,
  `fecha_final` varchar(45) DEFAULT NULL,
  `actual_estado` varchar(45) DEFAULT NULL,
  `final_estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Departamento_id_departa`,`Indicadores_id_indica`),
  KEY `fk_Departamento_has_Indicadores_Indicadores1_idx` (`Indicadores_id_indica`),
  KEY `fk_Departamento_has_Indicadores_Departamento1_idx` (`Departamento_id_departa`),
  CONSTRAINT `fk_Departamento_has_Indicadores_Departamento1` FOREIGN KEY (`Departamento_id_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Departamento_has_Indicadores_Indicadores1` FOREIGN KEY (`Indicadores_id_indica`) REFERENCES `indicadores` (`id_indica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.departamento_has_indicadores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento_has_indicadores` DISABLE KEYS */;
INSERT INTO `departamento_has_indicadores` (`Departamento_id_departa`, `Indicadores_id_indica`, `fecha_inicial`, `fecha_final`, `actual_estado`, `final_estado`) VALUES
	(1, 1, NULL, NULL, NULL, NULL),
	(1, 12, NULL, NULL, NULL, NULL),
	(1, 13, NULL, NULL, NULL, NULL),
	(1, 14, NULL, NULL, NULL, NULL),
	(1, 15, NULL, NULL, NULL, NULL),
	(1, 16, NULL, NULL, NULL, NULL),
	(1, 17, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `departamento_has_indicadores` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.documentos
DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `id_docum` int(11) NOT NULL,
  `codigo_docum` varchar(45) DEFAULT NULL,
  `nom_docum` varchar(45) DEFAULT NULL,
  `actividad_id_activi` int(11) NOT NULL,
  `tipo_documento_id_tipo_docu` int(11) NOT NULL,
  `fecha_edicion` date DEFAULT NULL,
  PRIMARY KEY (`id_docum`),
  KEY `fk_documentos_actividad1_idx` (`actividad_id_activi`),
  KEY `fk_documentos_tipo_documento1_idx` (`tipo_documento_id_tipo_docu`),
  CONSTRAINT `fk_documentos_actividad1` FOREIGN KEY (`actividad_id_activi`) REFERENCES `actividad` (`id_activi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_documentos_tipo_documento1` FOREIGN KEY (`tipo_documento_id_tipo_docu`) REFERENCES `tipo_documento` (`id_tipo_docu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.documentos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.funciones
DROP TABLE IF EXISTS `funciones`;
CREATE TABLE IF NOT EXISTS `funciones` (
  `id_funcion` int(11) NOT NULL,
  `nom_funcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_funcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.funciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.indicadores
DROP TABLE IF EXISTS `indicadores`;
CREATE TABLE IF NOT EXISTS `indicadores` (
  `id_indica` int(11) NOT NULL,
  `nom_indica` varchar(145) DEFAULT NULL,
  `meta_indica` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id_indica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.indicadores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `indicadores` DISABLE KEYS */;
INSERT INTO `indicadores` (`id_indica`, `nom_indica`, `meta_indica`) VALUES
	(1, 'Plan operativo anual', '	Eficacia en la implementación del POA'),
	(12, 'Facilidad en la comunicación con el departamento	', 'Efectividad del Servicio'),
	(13, 'Atención por parte del Mesa de Servicios', '	Efectividad del Servicio'),
	(14, 'Tiempo de espera hasta ser atendido', '	Efectividad del Servicio'),
	(15, 'Tiempo transcurrido en la atención del caso	', 'Efectividad del Servicio'),
	(16, 'Competencias del personal que lo atendió 	', 'Efectividad del Servicio'),
	(17, 'Calidad de la atención	', 'Efectividad del Servicio');
/*!40000 ALTER TABLE `indicadores` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(45) DEFAULT NULL,
  `url_menu` varchar(45) DEFAULT NULL,
  `icono_menu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.pag_amarilla
DROP TABLE IF EXISTS `pag_amarilla`;
CREATE TABLE IF NOT EXISTS `pag_amarilla` (
  `id_pag_amarilla` int(11) NOT NULL,
  `nom_pag` varchar(45) DEFAULT NULL,
  `descrip_pag` varchar(45) DEFAULT NULL,
  `url_ova_pag` varchar(45) DEFAULT NULL,
  `ico_pag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pag_amarilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.pag_amarilla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pag_amarilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `pag_amarilla` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.perfil
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nom_perfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.perfil: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` (`id_perfil`, `nom_perfil`) VALUES
	(1, 'Profesional especializado'),
	(2, 'Profesional universitario'),
	(3, 'Técnico administrativo '),
	(4, 'Pasante de Judicatura '),
	(5, 'Auxiliar de Oficina');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.perfil_has_area
DROP TABLE IF EXISTS `perfil_has_area`;
CREATE TABLE IF NOT EXISTS `perfil_has_area` (
  `Perfil_id_perfil` int(11) NOT NULL,
  `Area_id_area` int(11) NOT NULL,
  `nivel_perfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Perfil_id_perfil`,`Area_id_area`),
  KEY `fk_Perfil_has_Area_Area1_idx` (`Area_id_area`),
  KEY `fk_Perfil_has_Area_Perfil1_idx` (`Perfil_id_perfil`),
  CONSTRAINT `fk_Perfil_has_Area_Area1` FOREIGN KEY (`Area_id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Perfil_has_Area_Perfil1` FOREIGN KEY (`Perfil_id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.perfil_has_area: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil_has_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_has_area` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.perfil_has_funciones
DROP TABLE IF EXISTS `perfil_has_funciones`;
CREATE TABLE IF NOT EXISTS `perfil_has_funciones` (
  `Perfil_id_perfil` int(11) NOT NULL,
  `Funciones_id_funcion` int(11) NOT NULL,
  PRIMARY KEY (`Perfil_id_perfil`,`Funciones_id_funcion`),
  KEY `fk_Perfil_has_Funciones_Funciones1_idx` (`Funciones_id_funcion`),
  KEY `fk_Perfil_has_Funciones_Perfil1_idx` (`Perfil_id_perfil`),
  CONSTRAINT `fk_Perfil_has_Funciones_Funciones1` FOREIGN KEY (`Funciones_id_funcion`) REFERENCES `funciones` (`id_funcion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Perfil_has_Funciones_Perfil1` FOREIGN KEY (`Perfil_id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.perfil_has_funciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil_has_funciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_has_funciones` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.perfil_has_menu
DROP TABLE IF EXISTS `perfil_has_menu`;
CREATE TABLE IF NOT EXISTS `perfil_has_menu` (
  `Perfil_id_perfil` int(11) NOT NULL,
  `menu_id_menu` int(11) NOT NULL,
  `date_menu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Perfil_id_perfil`,`menu_id_menu`),
  KEY `fk_Perfil_has_menu_menu1_idx` (`menu_id_menu`),
  KEY `fk_Perfil_has_menu_Perfil1_idx` (`Perfil_id_perfil`),
  CONSTRAINT `fk_Perfil_has_menu_Perfil1` FOREIGN KEY (`Perfil_id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Perfil_has_menu_menu1` FOREIGN KEY (`menu_id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.perfil_has_menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil_has_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_has_menu` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.persona
DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id_perso` int(11) NOT NULL,
  `nom_perso` varchar(45) DEFAULT NULL,
  `cc_perso` varchar(50) DEFAULT NULL,
  `fecha_naci` date DEFAULT NULL,
  PRIMARY KEY (`id_perso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.persona: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id_perso`, `nom_perso`, `cc_perso`, `fecha_naci`) VALUES
	(1, 'Daliana Carolina Rojas Torres', '00000000011', NULL),
	(2, '	Diego Fernando Jojoa Salas', '00000000011', NULL),
	(11, '	Paola Andrea Rodriguez Betancourt ', '00000000011', NULL),
	(12, '	Angie Zuleta Cardona', '00000000011', NULL),
	(13, '	Cristian Camilo Belalcazar dorado', '00000000011', NULL),
	(14, '	Los Dti', '11', NULL),
	(15, '	Michelle Alejandra Penna Tibaquirá', '00000000011', NULL),
	(16, '	Cesar Gabriel rojas chavarro', '00000000011', NULL),
	(17, '	Wilmer Castrillón', '00000000011', NULL),
	(18, '	Nicol Endo Ruiz', '00000000011', '2019-07-20'),
	(19, '	Manuel ', '00000000011', NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.persona_has_competencia
DROP TABLE IF EXISTS `persona_has_competencia`;
CREATE TABLE IF NOT EXISTS `persona_has_competencia` (
  `Persona_id_perso` int(11) NOT NULL,
  `competencia_id_compe` int(11) NOT NULL,
  `fecha_compe` date DEFAULT NULL,
  `nota_compete` double DEFAULT NULL,
  `verficacion` tinyblob,
  PRIMARY KEY (`Persona_id_perso`,`competencia_id_compe`),
  KEY `fk_Persona_has_competencia_competencia1_idx` (`competencia_id_compe`),
  KEY `fk_Persona_has_competencia_Persona_idx` (`Persona_id_perso`),
  CONSTRAINT `fk_Persona_has_competencia_Persona` FOREIGN KEY (`Persona_id_perso`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Persona_has_competencia_competencia1` FOREIGN KEY (`competencia_id_compe`) REFERENCES `competencia` (`id_compe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.persona_has_competencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `persona_has_competencia` DISABLE KEYS */;
INSERT INTO `persona_has_competencia` (`Persona_id_perso`, `competencia_id_compe`, `fecha_compe`, `nota_compete`, `verficacion`) VALUES
	(1, 11, '2019-07-20', 3.7, NULL);
/*!40000 ALTER TABLE `persona_has_competencia` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.tipo_documento
DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `id_tipo_docu` int(11) NOT NULL,
  `nom_tipo_docu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_docu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.tipo_documento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` (`id_tipo_docu`, `nom_tipo_docu`) VALUES
	(1, 'PROCEDIMIENTO'),
	(2, 'INSTRUCTIVO'),
	(3, 'CARACTERIZACION'),
	(4, 'CONTROL DE REGISTROS');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;

-- Volcando estructura para tabla gestion_conocimiento.user_udla
DROP TABLE IF EXISTS `user_udla`;
CREATE TABLE IF NOT EXISTS `user_udla` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(45) DEFAULT NULL,
  `contra_user` varchar(50) DEFAULT NULL,
  `Persona_id_perso` int(11) NOT NULL,
  `Perfil_id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`Persona_id_perso`),
  KEY `fk_user_Persona1_idx` (`Persona_id_perso`),
  KEY `fk_user_Perfil1_idx` (`Perfil_id_perfil`),
  CONSTRAINT `fk_user_Perfil1` FOREIGN KEY (`Perfil_id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_Persona1` FOREIGN KEY (`Persona_id_perso`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla gestion_conocimiento.user_udla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_udla` DISABLE KEYS */;
INSERT INTO `user_udla` (`id_user`, `email_user`, `contra_user`, `Persona_id_perso`, `Perfil_id_perfil`) VALUES
	(1, 'user1@udla.edu.co', '123', 1, 5),
	(2, '	user2@udla.edu.co', '123', 2, 2),
	(11, 'user11@udla.edu.co', '123', 11, 3),
	(12, 'user12@udla.edu.co', '123', 12, 2),
	(13, 'user13@udla.edu.co', '123', 13, 1),
	(14, 'admin@udla.edu.co', 'admin', 14, 5),
	(15, 'user15@udla.edu.co', '123', 15, 2),
	(16, 'user16@udla.edu.co', '123', 16, 5),
	(17, 'user17@udla.edu.co', '123', 17, 2),
	(18, 'user18@udla.edu.co', '123', 18, 2),
	(19, 'user19@udla.edu.co', '123', 19, 3);
/*!40000 ALTER TABLE `user_udla` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
