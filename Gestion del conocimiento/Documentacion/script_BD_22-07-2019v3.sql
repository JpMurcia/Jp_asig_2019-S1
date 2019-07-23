-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gestion_conocimiento
DROP DATABASE IF EXISTS `gestion_conocimiento`;
CREATE DATABASE IF NOT EXISTS `gestion_conocimiento` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestion_conocimiento`;

-- Dumping structure for table gestion_conocimiento.actividad
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `id_activi` int(11) NOT NULL,
  `nom_activi` varchar(255) DEFAULT NULL COMMENT 'nombre de los procedimientos= actividad ',
  `descrip_activi` varchar(45) DEFAULT NULL,
  `url_infograma` varchar(45) DEFAULT NULL,
  `url_ova` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_activi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Angelica26634139';

-- Dumping data for table gestion_conocimiento.actividad: ~10 rows (approximately)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
REPLACE INTO `actividad` (`id_activi`, `nom_activi`, `descrip_activi`, `url_infograma`, `url_ova`) VALUES
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

-- Dumping structure for table gestion_conocimiento.area_
DROP TABLE IF EXISTS `area_`;
CREATE TABLE IF NOT EXISTS `area_` (
  `id_area` int(11) NOT NULL,
  `nom_area` varchar(45) DEFAULT NULL,
  `Departamento_id_departa` int(11) NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `fk_Area_Departamento1_idx` (`Departamento_id_departa`),
  CONSTRAINT `fk_Area_Departamento1` FOREIGN KEY (`Departamento_id_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.area_: ~3 rows (approximately)
/*!40000 ALTER TABLE `area_` DISABLE KEYS */;
REPLACE INTO `area_` (`id_area`, `nom_area`, `Departamento_id_departa`) VALUES
	(1, 'Area de Aplicacion', 1),
	(2, 'Area de Hardware y Comunicacion', 1),
	(3, 'Area de Investigacion y Desarrollo', 1);
/*!40000 ALTER TABLE `area_` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.competencia
DROP TABLE IF EXISTS `competencia`;
CREATE TABLE IF NOT EXISTS `competencia` (
  `id_compe` int(11) NOT NULL,
  `nom_compe` varchar(45) DEFAULT NULL,
  `descrip_compe` varchar(45) DEFAULT NULL,
  `nivel_aceptacion` double DEFAULT NULL,
  PRIMARY KEY (`id_compe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.competencia: ~8 rows (approximately)
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
REPLACE INTO `competencia` (`id_compe`, `nom_compe`, `descrip_compe`, `nivel_aceptacion`) VALUES
	(11, 'C#', NULL, 3.5),
	(12, 'Ext.Net', NULL, 3.6),
	(13, 'Oracle', NULL, 3.5),
	(14, 'Mongo DB', NULL, 3.5),
	(15, 'Mantenimiento de Computo', NULL, 2),
	(16, 'Manejo de redes', NULL, 4.5),
	(17, 'Manejo de Scrum', NULL, 4),
	(18, 'Atención al cliente', NULL, 4.2);
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.conocimiento_para_funcion
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

-- Dumping data for table gestion_conocimiento.conocimiento_para_funcion: ~0 rows (approximately)
/*!40000 ALTER TABLE `conocimiento_para_funcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `conocimiento_para_funcion` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departa` int(11) NOT NULL,
  `nom_departa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_departa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.departamento: ~1 rows (approximately)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
REPLACE INTO `departamento` (`id_departa`, `nom_departa`) VALUES
	(1, 'Deprtamento de Tecnologia de la Informacion');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.departamento_has_actividad
DROP TABLE IF EXISTS `departamento_has_actividad`;
CREATE TABLE IF NOT EXISTS `departamento_has_actividad` (
  `fk_departa` int(11) NOT NULL,
  `fk_activi` int(11) NOT NULL,
  PRIMARY KEY (`fk_departa`,`fk_activi`),
  KEY `fk_Departamento_has_actividad_actividad1_idx` (`fk_activi`),
  KEY `fk_Departamento_has_actividad_Departamento1_idx` (`fk_departa`),
  CONSTRAINT `fk_Departamento_has_actividad_Departamento1` FOREIGN KEY (`fk_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Departamento_has_actividad_actividad1` FOREIGN KEY (`fk_activi`) REFERENCES `actividad` (`id_activi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.departamento_has_actividad: ~10 rows (approximately)
/*!40000 ALTER TABLE `departamento_has_actividad` DISABLE KEYS */;
REPLACE INTO `departamento_has_actividad` (`fk_departa`, `fk_activi`) VALUES
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

-- Dumping structure for table gestion_conocimiento.departamento_has_indicadores
DROP TABLE IF EXISTS `departamento_has_indicadores`;
CREATE TABLE IF NOT EXISTS `departamento_has_indicadores` (
  `fk_departa` int(11) NOT NULL,
  `fk_indica` int(11) NOT NULL,
  `fecha_inicial` varchar(45) DEFAULT NULL,
  `fecha_final` varchar(45) DEFAULT NULL,
  `actual_estado` varchar(45) DEFAULT NULL,
  `final_estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fk_departa`,`fk_indica`),
  KEY `fk_Departamento_has_Indicadores_Indicadores1_idx` (`fk_indica`),
  KEY `fk_Departamento_has_Indicadores_Departamento1_idx` (`fk_departa`),
  CONSTRAINT `fk_Departamento_has_Indicadores_Departamento1` FOREIGN KEY (`fk_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Departamento_has_Indicadores_Indicadores1` FOREIGN KEY (`fk_indica`) REFERENCES `indicadores` (`id_indica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.departamento_has_indicadores: ~7 rows (approximately)
/*!40000 ALTER TABLE `departamento_has_indicadores` DISABLE KEYS */;
REPLACE INTO `departamento_has_indicadores` (`fk_departa`, `fk_indica`, `fecha_inicial`, `fecha_final`, `actual_estado`, `final_estado`) VALUES
	(1, 1, NULL, NULL, NULL, NULL),
	(1, 12, NULL, NULL, NULL, NULL),
	(1, 13, NULL, NULL, NULL, NULL),
	(1, 14, NULL, NULL, NULL, NULL),
	(1, 15, NULL, NULL, NULL, NULL),
	(1, 16, NULL, NULL, NULL, NULL),
	(1, 17, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `departamento_has_indicadores` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.documentos
DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `id_docum` int(11) NOT NULL,
  `codigo_docum` varchar(45) DEFAULT NULL,
  `nom_docum` varchar(45) DEFAULT NULL,
  `fk_actividad` int(11) NOT NULL,
  `fk_tipo_docu` int(11) NOT NULL,
  `fecha_edicion` date DEFAULT NULL,
  PRIMARY KEY (`id_docum`),
  KEY `fk_documentos_actividad1_idx` (`fk_actividad`),
  KEY `fk_documentos_tipo_documento1_idx` (`fk_tipo_docu`),
  CONSTRAINT `fk_documentos_actividad1` FOREIGN KEY (`fk_actividad`) REFERENCES `actividad` (`id_activi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_documentos_tipo_documento1` FOREIGN KEY (`fk_tipo_docu`) REFERENCES `tipo_documento` (`id_tipo_docu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.documentos: ~0 rows (approximately)
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.funciones
DROP TABLE IF EXISTS `funciones`;
CREATE TABLE IF NOT EXISTS `funciones` (
  `id_funcion` int(11) NOT NULL,
  `nom_funcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_funcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.funciones: ~1 rows (approximately)
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
REPLACE INTO `funciones` (`id_funcion`, `nom_funcion`) VALUES
	(1, NULL);
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.indicadores
DROP TABLE IF EXISTS `indicadores`;
CREATE TABLE IF NOT EXISTS `indicadores` (
  `id_indica` int(11) NOT NULL,
  `nom_indica` varchar(145) DEFAULT NULL,
  `meta_indica` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id_indica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.indicadores: ~7 rows (approximately)
/*!40000 ALTER TABLE `indicadores` DISABLE KEYS */;
REPLACE INTO `indicadores` (`id_indica`, `nom_indica`, `meta_indica`) VALUES
	(1, 'Plan operativo anual', '	Eficacia en la implementación del POA'),
	(12, 'Facilidad en la comunicación con el departamento	', 'Efectividad del Servicio'),
	(13, 'Atención por parte del Mesa de Servicios', '	Efectividad del Servicio'),
	(14, 'Tiempo de espera hasta ser atendido', '	Efectividad del Servicio'),
	(15, 'Tiempo transcurrido en la atención del caso	', 'Efectividad del Servicio'),
	(16, 'Competencias del personal que lo atendió 	', 'Efectividad del Servicio'),
	(17, 'Calidad de la atención	', 'Efectividad del Servicio');
/*!40000 ALTER TABLE `indicadores` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(45) DEFAULT NULL,
  `url_menu` varchar(45) DEFAULT NULL,
  `icono_menu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.menu: ~1 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id_menu`, `nom_menu`, `url_menu`, `icono_menu`) VALUES
	(1, 'Lista de miembros', 'permisos.aspx', 'assignment_ind');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.pag_amarilla
DROP TABLE IF EXISTS `pag_amarilla`;
CREATE TABLE IF NOT EXISTS `pag_amarilla` (
  `id_pag_amarilla` int(11) NOT NULL,
  `nom_pag` varchar(45) DEFAULT NULL,
  `descrip_pag` varchar(45) DEFAULT NULL,
  `url_ova_pag` varchar(45) DEFAULT NULL,
  `ico_pag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pag_amarilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.pag_amarilla: ~0 rows (approximately)
/*!40000 ALTER TABLE `pag_amarilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `pag_amarilla` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.perfil
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nom_perfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.perfil: ~5 rows (approximately)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
REPLACE INTO `perfil` (`id_perfil`, `nom_perfil`) VALUES
	(1, 'Profesional especializado'),
	(2, 'Profesional universitario'),
	(3, 'Técnico administrativo '),
	(4, 'Pasante de Judicatura '),
	(5, 'Auxiliar de Oficina');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.perfil_has_funciones
DROP TABLE IF EXISTS `perfil_has_funciones`;
CREATE TABLE IF NOT EXISTS `perfil_has_funciones` (
  `fk_perfil` int(11) NOT NULL,
  `fk_funcion` int(11) NOT NULL,
  PRIMARY KEY (`fk_perfil`,`fk_funcion`),
  KEY `fk_Perfil_has_Funciones_Funciones1_idx` (`fk_funcion`),
  KEY `fk_Perfil_has_Funciones_Perfil1_idx` (`fk_perfil`),
  CONSTRAINT `fk_Perfil_has_Funciones_Funciones1` FOREIGN KEY (`fk_funcion`) REFERENCES `funciones` (`id_funcion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Perfil_has_Funciones_Perfil1` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.perfil_has_funciones: ~0 rows (approximately)
/*!40000 ALTER TABLE `perfil_has_funciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_has_funciones` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.perfil_has_menu
DROP TABLE IF EXISTS `perfil_has_menu`;
CREATE TABLE IF NOT EXISTS `perfil_has_menu` (
  `fk_perfil` int(11) NOT NULL,
  `fk_menu` int(11) NOT NULL,
  `date_menu` date DEFAULT NULL,
  PRIMARY KEY (`fk_perfil`,`fk_menu`),
  KEY `fk_Perfil_has_menu_menu1_idx` (`fk_menu`),
  KEY `fk_Perfil_has_menu_Perfil1_idx` (`fk_perfil`),
  CONSTRAINT `fk_Perfil_has_menu_Perfil1` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Perfil_has_menu_menu1` FOREIGN KEY (`fk_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.perfil_has_menu: ~1 rows (approximately)
/*!40000 ALTER TABLE `perfil_has_menu` DISABLE KEYS */;
REPLACE INTO `perfil_has_menu` (`fk_perfil`, `fk_menu`, `date_menu`) VALUES
	(1, 1, '2019-07-22');
/*!40000 ALTER TABLE `perfil_has_menu` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.persona
DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id_perso` int(11) NOT NULL,
  `nom_perso` varchar(45) DEFAULT NULL,
  `cc_perso` varchar(50) DEFAULT NULL,
  `fecha_naci` date DEFAULT NULL,
  PRIMARY KEY (`id_perso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.persona: ~11 rows (approximately)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
REPLACE INTO `persona` (`id_perso`, `nom_perso`, `cc_perso`, `fecha_naci`) VALUES
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

-- Dumping structure for table gestion_conocimiento.persona_has_competencia
DROP TABLE IF EXISTS `persona_has_competencia`;
CREATE TABLE IF NOT EXISTS `persona_has_competencia` (
  `fk_pers` int(11) NOT NULL,
  `fk_comp` int(11) NOT NULL,
  `fecha_compe` date DEFAULT NULL,
  `nota_compete` double DEFAULT NULL,
  `verficacion` tinyblob,
  PRIMARY KEY (`fk_pers`,`fk_comp`),
  KEY `fk_Persona_has_competencia_competencia1_idx` (`fk_comp`),
  KEY `fk_Persona_has_competencia_Persona_idx` (`fk_pers`),
  CONSTRAINT `fk_Persona_has_competencia_Persona` FOREIGN KEY (`fk_pers`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Persona_has_competencia_competencia1` FOREIGN KEY (`fk_comp`) REFERENCES `competencia` (`id_compe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.persona_has_competencia: ~1 rows (approximately)
/*!40000 ALTER TABLE `persona_has_competencia` DISABLE KEYS */;
REPLACE INTO `persona_has_competencia` (`fk_pers`, `fk_comp`, `fecha_compe`, `nota_compete`, `verficacion`) VALUES
	(1, 11, '2019-07-20', 3.7, NULL);
/*!40000 ALTER TABLE `persona_has_competencia` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.tipo_documento
DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `id_tipo_docu` int(11) NOT NULL,
  `nom_tipo_docu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_docu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.tipo_documento: ~4 rows (approximately)
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
REPLACE INTO `tipo_documento` (`id_tipo_docu`, `nom_tipo_docu`) VALUES
	(1, 'PROCEDIMIENTO'),
	(2, 'INSTRUCTIVO'),
	(3, 'CARACTERIZACION'),
	(4, 'CONTROL DE REGISTROS');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.user_udla
DROP TABLE IF EXISTS `user_udla`;
CREATE TABLE IF NOT EXISTS `user_udla` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(45) DEFAULT NULL,
  `contra_user` varchar(50) DEFAULT NULL,
  `fk_person` int(11) NOT NULL,
  `fk_perfil` int(11) NOT NULL,
  `fk_area` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`fk_person`),
  KEY `fk_user_Persona1_idx` (`fk_person`),
  KEY `fk_user_Perfil1_idx` (`fk_perfil`),
  KEY `FK_user_udla_area_` (`fk_area`),
  CONSTRAINT `FK_user_udla_area_` FOREIGN KEY (`fk_area`) REFERENCES `area_` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_Perfil1` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_Persona1` FOREIGN KEY (`fk_person`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.user_udla: ~11 rows (approximately)
/*!40000 ALTER TABLE `user_udla` DISABLE KEYS */;
REPLACE INTO `user_udla` (`id_user`, `email_user`, `contra_user`, `fk_person`, `fk_perfil`, `fk_area`) VALUES
	(1, 'user1@udla.edu.co', '123', 1, 5, 3),
	(2, '	user2@udla.edu.co', '123', 2, 2, 2),
	(11, 'user11@udla.edu.co', '123', 11, 3, 2),
	(12, 'user12@udla.edu.co', '123', 12, 2, 2),
	(13, 'admin2@udla.edu.co', 'admin2', 13, 1, 3),
	(14, 'admin@udla.edu.co', 'admin', 14, 1, 1),
	(15, 'user15@udla.edu.co', '123', 15, 2, 3),
	(16, 'user16@udla.edu.co', '123', 16, 5, 2),
	(17, 'user17@udla.edu.co', '123', 17, 2, 2),
	(18, 'user18@udla.edu.co', '123', 18, 2, 3),
	(19, 'user19@udla.edu.co', '123', 19, 3, 3);
/*!40000 ALTER TABLE `user_udla` ENABLE KEYS */;

-- Dumping structure for procedure gestion_conocimiento.consul_menu
DROP PROCEDURE IF EXISTS `consul_menu`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_menu`(
	IN `fk_perfil` INT

)
BEGIN

select menu.nom_menu, menu.url_menu, menu.icono_menu from menu 
inner join perfil_has_menu perf_m on perf_m.fk_menu = menu.id_menu
inner join perfil on perfil.id_perfil = perf_m.fk_perfil
where perfil.id_perfil=fk_perfil;

END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_miembro_area
DROP PROCEDURE IF EXISTS `consul_miembro_area`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_miembro_area`(
	IN `id_area` INT




)
BEGIN

select persona.nom_perso, persona.cc_perso, persona.id_perso, perfil.nom_perfil from persona
	inner join user_udla on user_udla.fk_person=persona.id_perso

	inner join perfil on perfil.id_perfil= user_udla.fk_perfil
	inner join area_ on area_.id_area = user_udla.fk_area
	where area_.id_area= id_area;
	

END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_miembro_area2
DROP PROCEDURE IF EXISTS `consul_miembro_area2`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_miembro_area2`(
	IN `id_area1` INT
)
BEGIN

select persona.nom_perso, persona.cc_perso, persona.id_perso, perfil.nom_perfil from area_ a
		inner join perfil_has_area on  a.id_area = perfil_has_area.fk_area
	inner join perfil on perfil.id_perfil=perfil_has_area.fk_perfil
	inner join user_udla on user_udla.fk_person=perfil.id_perfil
	inner join persona on persona.id_perso=user_udla.fk_person

	

	where a.id_area=id_area1;


END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_user
DROP PROCEDURE IF EXISTS `consul_user`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_user`(
	IN `email` VARCHAR(150),
	IN `contra` VARCHAR(150)







)
BEGIN

if ( (select COUNT(*) from user_udla u
 where email= u.email_user and u.contra_user=contra) =0 )  then
	select "no wey" as mensaje;
else 
 	select "siii wey si existe :D" as mensaje,
	 (select perfil.id_perfil from perfil inner join user_udla u on u.fk_perfil=perfil.id_perfil		
	  WHERE email= u.email_user and u.contra_user=contra) as idtipo ,
	  	  
	   (select  a.id_area from user_udla as u 
	 
	 	inner join area_ a on a.id_area=u.fk_area
	  WHERE email= u.email_user and u.contra_user=contra limit 1) as area_1;

 	
	  
 	end if;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
