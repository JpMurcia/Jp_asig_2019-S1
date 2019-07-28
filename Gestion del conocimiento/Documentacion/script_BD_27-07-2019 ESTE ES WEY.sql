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
  `mesa_area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_area`),
  KEY `fk_Area_Departamento1_idx` (`Departamento_id_departa`),
  CONSTRAINT `fk_Area_Departamento1` FOREIGN KEY (`Departamento_id_departa`) REFERENCES `departamento` (`id_departa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.area_: ~4 rows (approximately)
/*!40000 ALTER TABLE `area_` DISABLE KEYS */;
REPLACE INTO `area_` (`id_area`, `nom_area`, `Departamento_id_departa`, `mesa_area`) VALUES
	(1, 'Area de Aplicacion', 1, ''),
	(2, 'Area de Hardware y Comunicacion', 1, 'Hardware'),
	(3, 'Area de Investigacion y Desarrollo', 1, 'Desarrollo'),
	(4, 'Area de Hardware y Comunicacion', 1, 'Software');
/*!40000 ALTER TABLE `area_` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.area_has_categoria
DROP TABLE IF EXISTS `area_has_categoria`;
CREATE TABLE IF NOT EXISTS `area_has_categoria` (
  `fk_area` int(11) NOT NULL,
  `fk_categoria` int(11) NOT NULL,
  PRIMARY KEY (`fk_area`,`fk_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.area_has_categoria: ~0 rows (approximately)
/*!40000 ALTER TABLE `area_has_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_has_categoria` ENABLE KEYS */;

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
	(11, 'C#', 'dffdsdfsd', 3.5),
	(12, 'Ext.Net', NULL, 3.6),
	(13, 'Oracle', 'manejo ', 3.5),
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

-- Dumping data for table gestion_conocimiento.conocimiento_para_funcion: ~3 rows (approximately)
/*!40000 ALTER TABLE `conocimiento_para_funcion` DISABLE KEYS */;
REPLACE INTO `conocimiento_para_funcion` (`id_comp_func`, `fk_funcion`, `fk_competencias`, `nivel_aceptacion`) VALUES
	(1, 1, 15, 3.5),
	(2, 2, 11, 4),
	(3, 2, 16, 3.5);
/*!40000 ALTER TABLE `conocimiento_para_funcion` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departa` int(11) NOT NULL,
  `nom_departa` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_departa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.departamento: ~25 rows (approximately)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
REPLACE INTO `departamento` (`id_departa`, `nom_departa`) VALUES
	(1, 'Deprtamento de Tecnologia de la Informacion'),
	(2, 'Oficina Asesora Juridica'),
	(3, 'Division de Servicios Adtivos.'),
	(4, 'Division Financiera'),
	(5, 'Contabilidad'),
	(6, 'Conv Int/vo 031/2016 - GOB. CAQUETA - Articulacion Educativa'),
	(7, 'Division Biblioteca e Informacion Cientifica'),
	(8, 'Coordinacion ICETEX'),
	(9, 'Decanatura Ciencias Contables, Econom. Adtvas.'),
	(10, 'Decanatura de Derecho'),
	(11, 'Oficina de Archivo Central e Historico'),
	(12, 'Oficina de Control Interno'),
	(13, 'Prog. Educ. Enfasis Ciencias Sociales - Florencia'),
	(14, 'Prog. Ingenieria Agroecologica Florencia'),
	(15, 'Prog. Licenciatura en Lenguas Extranjeras con enf. Ingles'),
	(16, 'Prog. Licenciatura en Literatura y Lengua Castellana - Flcia'),
	(17, 'Programa Administracion Empresas Campus Florencia'),
	(18, 'Programa Contaduria Publica Florencia'),
	(19, 'Programa de Biologia Florencia'),
	(20, 'Programa de Derecho Florencia'),
	(21, 'Programa de Matematicas y Fisica - Florencia'),
	(22, 'Registro y Control Academico'),
	(23, 'Seccion Almacen'),
	(24, 'Secretaria General'),
	(30, 'Oficina Asesora de Planeacion');
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
  `Descrop_funcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_funcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.funciones: ~2 rows (approximately)
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
REPLACE INTO `funciones` (`id_funcion`, `nom_funcion`, `Descrop_funcion`) VALUES
	(1, 'Desarrollo Tecnológico  ', NULL),
	(2, 'Mantenimiento ', 'dsdfdfdfsdffdsadaaad');
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

-- Dumping data for table gestion_conocimiento.menu: ~4 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id_menu`, `nom_menu`, `url_menu`, `icono_menu`) VALUES
	(1, 'Lista de miembros', 'permisos.aspx', 'assignment_ind'),
	(2, 'Competencias', 'conocimiento.aspx', 'extension'),
	(3, 'Documentos', 'Documento.aspx', 'insert_drive_file'),
	(4, 'Buscador', 'Buscador.aspx', 'search');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.mesa_categoria
DROP TABLE IF EXISTS `mesa_categoria`;
CREATE TABLE IF NOT EXISTS `mesa_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nom_categoria` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.mesa_categoria: ~13 rows (approximately)
/*!40000 ALTER TABLE `mesa_categoria` DISABLE KEYS */;
REPLACE INTO `mesa_categoria` (`id_categoria`, `nom_categoria`) VALUES
	(1, 'ACADEMICO'),
	(2, 'CONTRATACION'),
	(3, 'DESARROLLO'),
	(4, 'LIQUIDACION'),
	(5, 'NO ASIGNADO'),
	(6, 'NOMINA'),
	(7, 'ROLES'),
	(8, 'SIIF'),
	(9, 'COMPARTIR'),
	(10, 'INSTALACION'),
	(11, 'EQUIPO DE COMPUTO'),
	(12, 'IMPRESORA'),
	(13, 'SWITCH');
/*!40000 ALTER TABLE `mesa_categoria` ENABLE KEYS */;

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

-- Dumping data for table gestion_conocimiento.perfil_has_menu: ~4 rows (approximately)
/*!40000 ALTER TABLE `perfil_has_menu` DISABLE KEYS */;
REPLACE INTO `perfil_has_menu` (`fk_perfil`, `fk_menu`, `date_menu`) VALUES
	(1, 1, '2019-07-22'),
	(1, 2, '2019-07-22'),
	(1, 3, '2019-07-26'),
	(1, 4, NULL);
/*!40000 ALTER TABLE `perfil_has_menu` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.persona
DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id_perso` int(11) NOT NULL,
  `nom_perso` varchar(150) DEFAULT NULL,
  `cc_perso` varchar(50) DEFAULT NULL,
  `fecha_naci` date DEFAULT NULL,
  `url_foto` varchar(250) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_perso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.persona: ~22 rows (approximately)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
REPLACE INTO `persona` (`id_perso`, `nom_perso`, `cc_perso`, `fecha_naci`, `url_foto`, `telefono`) VALUES
	(1, 'Daliana Carolina Rojas Torres', '1', '2019-07-24', '../imagenes/imagen_perfil/anyela.jpg', NULL),
	(2, '	Diego Fernando Jojoa Salas', '2', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(11, '	Paola Andrea Rodriguez Betancourt ', '3', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(12, '	Angie Zuleta Cardona', '5', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(13, '	Cristian Camilo Belalcazar dorado', '4', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(14, '	Los Dti', '11', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(15, '	Michelle Alejandra Penna Tibaquirá', '45', '2019-07-24', '../imagenes/imagen_perfil/anyela.jpg', NULL),
	(16, '	Cesar Gabriel rojas chavarro', '123', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(17, '	Wilmer Castrillón', '145', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(18, '	Nicol Endo Ruiz', '534', '2019-07-20', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(19, '	Manuel ', '3457', '2019-07-24', '../imagenes/imagen_perfil/kamilo.jpg', NULL),
	(221, 'JUAN CARLOS PARRA AMAYA', '83226172', NULL, NULL, NULL),
	(222, 'RUBY AGUDELO IMBACHI', '	1117493198', NULL, NULL, NULL),
	(223, 'MARIA ELENA CHAGUALA', '	40764440', NULL, NULL, NULL),
	(224, 'JOSE GUSTAVO RONCANCIO RODRIGUEZ', '	230357', NULL, NULL, NULL),
	(225, 'WILDER ORLANDO MENESES GOMEZ	', '80763827', NULL, NULL, NULL),
	(226, 'NIDIA MOLINA	', '40783412', NULL, NULL, NULL),
	(227, 'DANIEL CAMILO VALENCIA HERNANDEZ	', '80093011', NULL, NULL, NULL),
	(228, 'PAOLA ROCÍO RAMÍREZ ARTUNDUAGA', '	1117515231', NULL, NULL, NULL),
	(229, 'PAULA ANDREA CHICA MURCIA	', '1117530255', NULL, NULL, NULL),
	(230, 'NINI JOHANNA LÓPEZ LOZANO', '	40614288', NULL, NULL, NULL),
	(231, 'LEIDY JULIETH DÍAZ AVILA', '	1117517756', NULL, NULL, NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.persona_has_competencia
DROP TABLE IF EXISTS `persona_has_competencia`;
CREATE TABLE IF NOT EXISTS `persona_has_competencia` (
  `fk_pers` int(11) NOT NULL,
  `fk_comp` int(11) NOT NULL,
  `fecha_compe` date DEFAULT NULL,
  `nota_compete` double DEFAULT NULL,
  `verficacion` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fk_pers`,`fk_comp`),
  KEY `fk_Persona_has_competencia_competencia1_idx` (`fk_comp`),
  KEY `fk_Persona_has_competencia_Persona_idx` (`fk_pers`),
  CONSTRAINT `fk_Persona_has_competencia_Persona` FOREIGN KEY (`fk_pers`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Persona_has_competencia_competencia1` FOREIGN KEY (`fk_comp`) REFERENCES `competencia` (`id_compe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.persona_has_competencia: ~6 rows (approximately)
/*!40000 ALTER TABLE `persona_has_competencia` DISABLE KEYS */;
REPLACE INTO `persona_has_competencia` (`fk_pers`, `fk_comp`, `fecha_compe`, `nota_compete`, `verficacion`) VALUES
	(1, 11, '2019-07-20', 5, 1),
	(1, 12, '2019-07-24', 1, 0),
	(1, 18, '2019-07-24', 5, 1),
	(2, 17, '2019-07-24', 1, 1),
	(16, 14, '2019-07-24', 1.3, 1),
	(17, 14, '2019-07-24', 3.5, 1);
/*!40000 ALTER TABLE `persona_has_competencia` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.prioridad
DROP TABLE IF EXISTS `prioridad`;
CREATE TABLE IF NOT EXISTS `prioridad` (
  `id_prioridad` int(11) NOT NULL DEFAULT '0',
  `nom_prioridad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.prioridad: ~3 rows (approximately)
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
REPLACE INTO `prioridad` (`id_prioridad`, `nom_prioridad`) VALUES
	(1, 'Baja'),
	(2, 'Normal'),
	(3, 'Alta');
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.solicitud_mesa
DROP TABLE IF EXISTS `solicitud_mesa`;
CREATE TABLE IF NOT EXISTS `solicitud_mesa` (
  `id_solicitud` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `tipo_prioridad` int(11) DEFAULT NULL,
  `fk_area` int(11) DEFAULT NULL,
  `fk_categoria_mesa` int(11) DEFAULT NULL,
  `fk_trabajo_mesa` int(11) NOT NULL,
  `fk_tipo_mesa` int(11) DEFAULT NULL,
  `fk_lugar_mesa` int(11) DEFAULT NULL,
  `fk_solicitante_user` int(11) DEFAULT NULL,
  `fk_tipo_servicion` int(11) DEFAULT NULL,
  `descrip_solicit` varchar(2000) DEFAULT NULL,
  `fecha_inicion` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `fk_dependecia` int(11) DEFAULT NULL,
  `fk_responsable_user` int(11) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `FK_solicitud_mesa_prioridad` (`tipo_prioridad`),
  KEY `FK_solicitud_mesa_area_` (`fk_area`),
  KEY `FK_solicitud_mesa_mesa_categoria` (`fk_categoria_mesa`),
  KEY `FK_solicitud_mesa_trabajo_solicitud_mesa` (`fk_trabajo_mesa`),
  KEY `FK_solicitud_mesa_departamento` (`fk_lugar_mesa`),
  KEY `FK_solicitud_mesa_user_udla` (`fk_solicitante_user`),
  KEY `FK_solicitud_mesa_tipo_servicion_mesa` (`fk_tipo_servicion`),
  KEY `FK_solicitud_mesa_departamento_2` (`fk_dependecia`),
  KEY `FK_solicitud_mesa_user_udla_2` (`fk_responsable_user`),
  KEY `FK_solicitud_mesa_tipo_solicitud_mesa` (`fk_tipo_mesa`),
  CONSTRAINT `FK_solicitud_mesa_area_` FOREIGN KEY (`fk_area`) REFERENCES `area_` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_solicitud_mesa_departamento` FOREIGN KEY (`fk_lugar_mesa`) REFERENCES `departamento` (`id_departa`),
  CONSTRAINT `FK_solicitud_mesa_departamento_2` FOREIGN KEY (`fk_dependecia`) REFERENCES `departamento` (`id_departa`),
  CONSTRAINT `FK_solicitud_mesa_mesa_categoria` FOREIGN KEY (`fk_categoria_mesa`) REFERENCES `mesa_categoria` (`id_categoria`),
  CONSTRAINT `FK_solicitud_mesa_prioridad` FOREIGN KEY (`tipo_prioridad`) REFERENCES `prioridad` (`id_prioridad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_solicitud_mesa_tipo_servicion_mesa` FOREIGN KEY (`fk_tipo_servicion`) REFERENCES `tipo_servicion_mesa` (`id_tipo_servicion`),
  CONSTRAINT `FK_solicitud_mesa_tipo_solicitud_mesa` FOREIGN KEY (`fk_tipo_mesa`) REFERENCES `tipo_solicitud_mesa` (`id_tipo_mesa`),
  CONSTRAINT `FK_solicitud_mesa_trabajo_solicitud_mesa` FOREIGN KEY (`fk_trabajo_mesa`) REFERENCES `trabajo_solicitud_mesa` (`id_trabajo_soli`),
  CONSTRAINT `FK_solicitud_mesa_user_udla` FOREIGN KEY (`fk_solicitante_user`) REFERENCES `user_udla` (`id_user`),
  CONSTRAINT `FK_solicitud_mesa_user_udla_2` FOREIGN KEY (`fk_responsable_user`) REFERENCES `user_udla` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.solicitud_mesa: ~5 rows (approximately)
/*!40000 ALTER TABLE `solicitud_mesa` DISABLE KEYS */;
REPLACE INTO `solicitud_mesa` (`id_solicitud`, `estado`, `tipo_prioridad`, `fk_area`, `fk_categoria_mesa`, `fk_trabajo_mesa`, `fk_tipo_mesa`, `fk_lugar_mesa`, `fk_solicitante_user`, `fk_tipo_servicion`, `descrip_solicit`, `fecha_inicion`, `fecha_final`, `fk_dependecia`, `fk_responsable_user`, `calificacion`) VALUES
	(10308, 1, 2, 3, 6, 9, 7, 3, 331, 7, 'AMABLEMENTE LE SOLICITO, REALIZAR EL MÓDULO PARA DESCUENTOS EN NÓMINA POR DIFERENTES CONCEPTOS. GRACIAS POR SU COLABORACIÓN.', '2019-07-27', NULL, 3, 1, NULL),
	(10452, 1, 2, 3, 4, 10, 7, 19, 332, 7, 'AMABLEMENTE SOLICITO VERIFICAR DESDE QUE USUARIO FUE GENERADA UNA LIQUIDACIÓN PARA EL PERIODO 2019 - I CON CC. 1121197827. GRACIAS POR SU COLABORACIÓN', '2019-07-27', NULL, 19, 2, NULL),
	(10472, 1, 2, 3, 5, 9, 5, 5, 333, 7, 'BUENOS DÍAS, ESTOY INTENTANDO DILIGENCIAR UN PERMISO, PERO AL MOMENTO DE SELECCIONAR EL DÍA PARA DILIGENCIAR LOS DATOS DEL PERMISO NO APARECE NADA DE INFORMACIÓN, SOLICITO SE SOLUCIONE LO MAS PRONTO POSIBLE, HOY DEBÍA DILIGENCIAR PERMISO POR TODO EL DÍA PERO NO HE PODIDO.', '2019-05-30', NULL, 5, 13, NULL),
	(10547, 1, 2, 3, 3, 7, 3, 10, 334, 7, 'AMABLEMENTE SOLICITO EL DESARROLLO DEL MÓDULO DE CONSULTORIO JURÍDICO VIRTUAL. AGRADEZCO SU COLABORACIÓN', '2019-07-27', NULL, 10, 14, NULL),
	(10553, 1, 1, 3, 3, 7, 3, 30, 335, 7, 'AMABLEMENTE SOLICITO UN CAMBIO EN EL MÓDULO DE EVALUACIÓN DE DESEMPEÑO (REALIZO ENVIÓ DEL DOCUMENTO COMO SE REQUIERE AL INGENIERO PASTRANA) DENTRO DE ESTE DOCUMENTO SE ENCUENTRAN LAS PREGUNTAS DE LA EVALUACIÓN DE DESEMPEÑO, EL OBJETIVO ES ADICIONAR UN SEXTO BLOQUE DE PREGUNTAS ACTUALMENTE HAY 5 Y QUEREMOS ADICIONAR 4 PREGUNTAS MAS DEL TEMA 6. SEGURIDAD Y SALUD EN EL TRABAJO PARA QUE LA EVALUACIÓN DE DESEMPEÑO SEA EVALUADA CON UNA CALIFICACIÓN MÁXIMA DE 120 PUNTOS, EN EL ARCHIVO ENVIADO AL INGENIERO PASTRANA ESTÁN REDACTADAS LAS PREGUNTAS A ADICIONAR. AGRADEZCO SU COLABORACIÓN', '2019-07-27', NULL, 30, 15, NULL),
	(10618, 1, 1, 3, 1, 7, 7, 24, 336, 7, 'AMABLEMENTE SOLICITO INCLUIR EL ENFOQUE POBLACIONAL E IDENTIDAD DE GENERO EN EL PROCESO DE INSCRIPCIÓN A UN PROGRAMA (PREGRADO Y POSGRADO DE LA UNIVERSIDAD DE LA AMAZONIA). AGRADEZCO SU COLABORACIÓN', '2019-07-27', NULL, 24, 16, NULL),
	(10619, 1, 1, 3, 3, 7, 7, 24, 337, 7, 'AMABLEMENTE SOLICITO EL DESARROLLO DE UN MÓDULO PARA LA GESTIÓN DE LOS PROCESOS DE VENTANILLA ÚNICA DE LA UNIVERSIDAD DE LA AMAZONIA. AGRADEZCO SU COLABORACIÓN', '2019-07-27', NULL, 24, 16, NULL),
	(10675, 1, 2, 3, 10, 8, 7, 6, 338, 7, 'AMABLEMENTE SOLICITO EL FAVOR DE ASIGNAR ROL DOCENTE CONVENIO 031 A: MAYRA ALEJANDRA CÓRDOBA BELTRÁN C.C. 1.117.521.180.AGRADEZCO SU COLABORACIÓN', '2019-07-27', NULL, 6, 12, NULL);
/*!40000 ALTER TABLE `solicitud_mesa` ENABLE KEYS */;

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

-- Dumping structure for table gestion_conocimiento.tipo_servicion_mesa
DROP TABLE IF EXISTS `tipo_servicion_mesa`;
CREATE TABLE IF NOT EXISTS `tipo_servicion_mesa` (
  `id_tipo_servicion` int(11) NOT NULL,
  `nom_servicion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_servicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.tipo_servicion_mesa: ~2 rows (approximately)
/*!40000 ALTER TABLE `tipo_servicion_mesa` DISABLE KEYS */;
REPLACE INTO `tipo_servicion_mesa` (`id_tipo_servicion`, `nom_servicion`) VALUES
	(7, 'Area de sistemas');
/*!40000 ALTER TABLE `tipo_servicion_mesa` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.tipo_solicitud_mesa
DROP TABLE IF EXISTS `tipo_solicitud_mesa`;
CREATE TABLE IF NOT EXISTS `tipo_solicitud_mesa` (
  `id_tipo_mesa` int(11) NOT NULL,
  `nom_tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='DESARROLLO TECNOLOGICO\r\nGESTION DE CAMBIOS\r\nINCIDENTE\r\nMANTENIMIENTO\r\nSOLICITUD DE SERVICIO\r\n';

-- Dumping data for table gestion_conocimiento.tipo_solicitud_mesa: ~6 rows (approximately)
/*!40000 ALTER TABLE `tipo_solicitud_mesa` DISABLE KEYS */;
REPLACE INTO `tipo_solicitud_mesa` (`id_tipo_mesa`, `nom_tipo`) VALUES
	(2, 'Oficina Asesora de Planeacion'),
	(3, 'DESARROLLO TECNOLOGICO'),
	(4, 'GESTION DE CAMBIOS'),
	(5, 'INCIDENTE'),
	(6, 'MANTENIMIENTO'),
	(7, 'SOLICITUD DE SERVICIO');
/*!40000 ALTER TABLE `tipo_solicitud_mesa` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.trabajo_solicitud_mesa
DROP TABLE IF EXISTS `trabajo_solicitud_mesa`;
CREATE TABLE IF NOT EXISTS `trabajo_solicitud_mesa` (
  `id_trabajo_soli` int(11) NOT NULL,
  `nom_trabajo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_trabajo_soli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.trabajo_solicitud_mesa: ~13 rows (approximately)
/*!40000 ALTER TABLE `trabajo_solicitud_mesa` DISABLE KEYS */;
REPLACE INTO `trabajo_solicitud_mesa` (`id_trabajo_soli`, `nom_trabajo`) VALUES
	(1, 'ACADEMICO'),
	(2, 'ASIGNACION'),
	(3, 'CARPETA'),
	(4, 'CONVEPTO'),
	(5, 'TECNICO'),
	(6, 'CONFIGURACION'),
	(7, 'DESARROLLO'),
	(8, 'INTALACION DE IMPRESORA'),
	(9, 'NO ASIGNADO'),
	(10, 'REPORTE'),
	(11, 'REVISION'),
	(12, 'SOPORTE'),
	(13, 'USUARIOS');
/*!40000 ALTER TABLE `trabajo_solicitud_mesa` ENABLE KEYS */;

-- Dumping structure for table gestion_conocimiento.user_udla
DROP TABLE IF EXISTS `user_udla`;
CREATE TABLE IF NOT EXISTS `user_udla` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(45) DEFAULT NULL,
  `contra_user` varchar(50) DEFAULT NULL,
  `fk_person` int(11) NOT NULL,
  `fk_perfil` int(11) DEFAULT NULL,
  `fk_area` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`fk_person`),
  KEY `fk_user_Persona1_idx` (`fk_person`),
  KEY `fk_user_Perfil1_idx` (`fk_perfil`),
  KEY `FK_user_udla_area_` (`fk_area`),
  CONSTRAINT `FK_user_udla_area_` FOREIGN KEY (`fk_area`) REFERENCES `area_` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_Perfil1` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_Persona1` FOREIGN KEY (`fk_person`) REFERENCES `persona` (`id_perso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gestion_conocimiento.user_udla: ~22 rows (approximately)
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
	(19, 'user19@udla.edu.co', '123', 19, 3, 3),
	(331, NULL, NULL, 221, NULL, NULL),
	(332, NULL, NULL, 222, NULL, NULL),
	(333, NULL, NULL, 223, NULL, NULL),
	(334, NULL, NULL, 224, NULL, NULL),
	(335, NULL, NULL, 225, NULL, NULL),
	(336, NULL, NULL, 226, NULL, NULL),
	(337, NULL, NULL, 227, NULL, NULL),
	(338, NULL, NULL, 228, NULL, NULL),
	(339, NULL, NULL, 229, NULL, NULL),
	(340, NULL, NULL, 230, NULL, NULL),
	(341, NULL, NULL, 231, NULL, NULL);
/*!40000 ALTER TABLE `user_udla` ENABLE KEYS */;

-- Dumping structure for procedure gestion_conocimiento.consul_actividad
DROP PROCEDURE IF EXISTS `consul_actividad`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_actividad`(
	IN `nada` INT
)
BEGIN

select * from actividad;

END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_compet_miembro
DROP PROCEDURE IF EXISTS `consul_compet_miembro`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_compet_miembro`(
	IN `id_user` INT





)
BEGIN
SELECT c.id_compe, c.nom_compe, p.nota_compete,if(p.verficacion = 1, 'true' , 'false')  as estado , c.descrip_compe from persona
inner JOIN persona_has_competencia p on p.fk_pers = persona.id_perso
inner join competencia c on c.id_compe = p.fk_comp
where persona.id_perso =  id_user;
END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_dato_miembro
DROP PROCEDURE IF EXISTS `consul_dato_miembro`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_dato_miembro`(
	IN `id_user` INT


)
BEGIN

select persona.nom_perso, persona.url_foto,persona.cc_perso,persona.fecha_naci,perfil.nom_perfil, area_.nom_area,user_udla.email_user from persona
inner join user_udla on user_udla.fk_person = persona.id_perso
inner join perfil on perfil.id_perfil = user_udla.fk_perfil
inner join area_ on area_.id_area = user_udla.fk_area
where id_user= persona.id_perso;

END//
DELIMITER ;

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

select persona.nom_perso, user_udla.email_user, persona.id_perso, perfil.nom_perfil from persona
	inner join user_udla on user_udla.fk_person=persona.id_perso

	inner join perfil on perfil.id_perfil= user_udla.fk_perfil
	inner join area_ on area_.id_area = user_udla.fk_area
	where area_.id_area= id_area;
	

END//
DELIMITER ;

-- Dumping structure for procedure gestion_conocimiento.consul_tipo_docu
DROP PROCEDURE IF EXISTS `consul_tipo_docu`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consul_tipo_docu`(
	IN `nada` INT
)
BEGIN
select * from tipo_documento;
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

-- Dumping structure for procedure gestion_conocimiento.update_compet_miembro
DROP PROCEDURE IF EXISTS `update_compet_miembro`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_compet_miembro`(
	IN `id_user` INT,
	IN `id_compe` INT,
	IN `nota_actua` INT,
	IN `estado` VARCHAR(50)
)
BEGIN


update persona_has_competencia as p
set p.verficacion =( if(estado = 'true', 1, 0)), p.nota_compete = nota_actua
where p.fk_pers = id_user and p.fk_comp=id_compe;


END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
