-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para migo_db_vue
CREATE DATABASE IF NOT EXISTS `migo_db_vue` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `migo_db_vue`;

-- Volcando estructura para tabla migo_db_vue.colonias
CREATE TABLE IF NOT EXISTS `colonias` (
  `id_colonia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_colonia`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.colonias: ~79 rows (aproximadamente)
INSERT INTO `colonias` (`id_colonia`, `nombre`) VALUES
	(1, 'Aviación'),
	(2, 'Balamtun'),
	(3, 'Bali'),
	(4, 'Bellavista'),
	(5, 'Bosque de Cristo Rey'),
	(6, 'Bosque Real'),
	(7, 'Brisas'),
	(8, 'Calica'),
	(9, 'Campestre'),
	(10, 'Cataluña'),
	(11, 'Corales'),
	(12, 'Cruz de Servicios'),
	(13, 'Dunas'),
	(14, 'Ejidal'),
	(15, 'El Bambú'),
	(16, 'El Cantil'),
	(17, 'El Cielo'),
	(18, 'El Pedregal'),
	(19, 'El Petén'),
	(20, 'El Tigrillo'),
	(21, 'Forjadores'),
	(22, 'Fundadores'),
	(23, 'Galaxia del Carmen I'),
	(24, 'Galaxia del Carmen II'),
	(25, 'Gonzalo Guerrero'),
	(26, 'INFONAVIT Colosio'),
	(27, 'INFONAVIT Gaviotas'),
	(28, 'In House'),
	(29, 'La Ceiba'),
	(30, 'La Guadalupana'),
	(31, 'La Joya'),
	(32, 'La Joya Xamanha'),
	(33, 'Las Flores'),
	(34, 'Las Palmas'),
	(35, 'La Toscana'),
	(36, 'Lolkaatun'),
	(37, 'Loltun'),
	(38, 'Los Arrecifes'),
	(39, 'Los Olivos'),
	(40, 'Luis Donaldo Colosio'),
	(41, 'Miramar'),
	(42, 'Misión del Carmen'),
	(43, 'Misión Las Flores'),
	(44, 'Misión Villamar I'),
	(45, 'Misión Villamar II'),
	(46, 'Mundo Habitat'),
	(47, 'Nicte-ha'),
	(48, 'Nueva Creación'),
	(49, 'Nuevo Centro Urbano'),
	(50, 'Paraíso del Carmen'),
	(51, 'Parque Residencial'),
	(52, 'Playa Azul'),
	(53, 'Playa Car Fase I'),
	(54, 'Playa Car Fase II'),
	(55, 'Playa del Carmen'),
	(56, 'Playa del Carmen Centro'),
	(57, 'Playa Magna'),
	(58, 'Playa Oasis'),
	(59, 'Playa Sol'),
	(60, 'Privanza del Mar'),
	(61, 'Punta Estrella'),
	(62, 'Quintas del Carmen'),
	(63, 'Real Ibiza'),
	(64, 'Residencial Bambú'),
	(65, 'Residencial La Escondida'),
	(66, 'Residencial Real del Sol'),
	(67, 'Sacpacal'),
	(68, 'Santa Fe del Carmen'),
	(69, 'Selvamar'),
	(70, 'Supermanzana 52'),
	(71, 'Tohoku'),
	(72, 'Vela Mar'),
	(73, 'Villas del Carmen'),
	(74, 'Villas del Sol "Plus"'),
	(75, 'Villas Maya'),
	(76, 'Villas Riviera'),
	(77, 'Xamanha'),
	(78, 'Zazil Ha'),
	(79, 'Zona Industrial');

-- Volcando estructura para tabla migo_db_vue.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentario` int NOT NULL AUTO_INCREMENT,
  `id_publi` int NOT NULL,
  `id_usuario` int NOT NULL,
  `comentario` text,
  `fecha` timestamp NULL DEFAULT (now()),
  PRIMARY KEY (`id_comentario`),
  KEY `id_publi` (`id_publi`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_publi`) REFERENCES `publicaciones` (`id_publi`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.comentarios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.dias_semana
CREATE TABLE IF NOT EXISTS `dias_semana` (
  `id_dia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.dias_semana: ~7 rows (aproximadamente)
INSERT INTO `dias_semana` (`id_dia`, `nombre`) VALUES
	(1, 'Lunes'),
	(2, 'Martes'),
	(3, 'Miércoles'),
	(4, 'Jueves'),
	(5, 'Viernes'),
	(6, 'Sábado'),
	(7, 'Domingo');

-- Volcando estructura para tabla migo_db_vue.especies
CREATE TABLE IF NOT EXISTS `especies` (
  `id_especie` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.especies: ~4 rows (aproximadamente)
INSERT INTO `especies` (`id_especie`, `nombre`) VALUES
	(1, 'Perro'),
	(2, 'Gato'),
	(3, 'Ave'),
	(4, 'Otro');

-- Volcando estructura para tabla migo_db_vue.estados_publi
CREATE TABLE IF NOT EXISTS `estados_publi` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL COMMENT 'Activo | Cerrado | Pendiente | Rechazado',
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.estados_publi: ~4 rows (aproximadamente)
INSERT INTO `estados_publi` (`id_estado`, `nombre`) VALUES
	(1, 'Activo'),
	(2, 'Cerrado'),
	(3, 'Pendiente'),
	(4, 'Rechazado');

-- Volcando estructura para función migo_db_vue.fn_calificacion_promedio_vet
DELIMITER //
CREATE FUNCTION `fn_calificacion_promedio_vet`(p_id_vet INT) RETURNS decimal(3,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE v_promedio DECIMAL(3,2);
  SELECT AVG(calificacion) INTO v_promedio
  FROM resenas
  WHERE id_vet = p_id_vet;
  RETURN v_promedio;
END//
DELIMITER ;

-- Volcando estructura para función migo_db_vue.fn_dias_pendiente_verificacion
DELIMITER //
CREATE FUNCTION `fn_dias_pendiente_verificacion`(p_id_vet INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE v_dias INT;
  SELECT
    CASE
      WHEN estado_verificacion = 'pendiente'
        THEN DATEDIFF(NOW(), documento_verificacion_subido_en)
      ELSE NULL
    END INTO v_dias
  FROM veterinarias
  WHERE id_vet = p_id_vet;
  RETURN v_dias;
END//
DELIMITER ;

-- Volcando estructura para función migo_db_vue.fn_es_administrador
DELIMITER //
CREATE FUNCTION `fn_es_administrador`(p_id_usuario INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE v_es_admin TINYINT(1);
  SELECT COUNT(*) INTO v_es_admin
  FROM usuarios
  WHERE id_usuario = p_id_usuario AND rol = 'administrador';
  RETURN v_es_admin;
END//
DELIMITER ;

-- Volcando estructura para tabla migo_db_vue.fotos_publi
CREATE TABLE IF NOT EXISTS `fotos_publi` (
  `id_foto` int NOT NULL AUTO_INCREMENT,
  `id_publi` int NOT NULL,
  `ruta_imagen` varchar(255) NOT NULL,
  `fecha_carga` datetime DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_publi` (`id_publi`),
  CONSTRAINT `fotos_publi_ibfk_1` FOREIGN KEY (`id_publi`) REFERENCES `publicaciones` (`id_publi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.fotos_publi: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.horarios_vet
CREATE TABLE IF NOT EXISTS `horarios_vet` (
  `id_horario` int NOT NULL AUTO_INCREMENT,
  `id_vet` int NOT NULL,
  `id_dia` int NOT NULL,
  `hora_apertura` time DEFAULT NULL,
  `hora_cierre` time DEFAULT NULL,
  `cerrado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_horario`),
  UNIQUE KEY `horarios_vet_index_0` (`id_vet`,`id_dia`),
  KEY `id_dia` (`id_dia`),
  CONSTRAINT `horarios_vet_ibfk_1` FOREIGN KEY (`id_vet`) REFERENCES `veterinarias` (`id_vet`),
  CONSTRAINT `horarios_vet_ibfk_2` FOREIGN KEY (`id_dia`) REFERENCES `dias_semana` (`id_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.horarios_vet: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.log_eliminaciones_publicaciones
CREATE TABLE IF NOT EXISTS `log_eliminaciones_publicaciones` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_publi_original` int NOT NULL,
  `id_usuario` int NOT NULL,
  `nombre_pet` varchar(100) DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `fecha_publi` datetime DEFAULT NULL,
  `fecha_eliminacion` datetime DEFAULT (now()),
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.log_eliminaciones_publicaciones: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.log_verificaciones_veterinarias
CREATE TABLE IF NOT EXISTS `log_verificaciones_veterinarias` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_vet` int NOT NULL,
  `estado_anterior` varchar(20) DEFAULT NULL,
  `estado_nuevo` varchar(20) DEFAULT NULL,
  `motivo_rechazo` text,
  `fecha_cambio` datetime DEFAULT (now()),
  PRIMARY KEY (`id_log`),
  KEY `id_vet` (`id_vet`),
  CONSTRAINT `log_verificaciones_veterinarias_ibfk_1` FOREIGN KEY (`id_vet`) REFERENCES `veterinarias` (`id_vet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.log_verificaciones_veterinarias: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.publicaciones
CREATE TABLE IF NOT EXISTS `publicaciones` (
  `id_publi` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_colonia` int NOT NULL,
  `id_especie` int NOT NULL,
  `id_tipo` int NOT NULL,
  `id_estado` int NOT NULL,
  `nombre_pet` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_publi` datetime NOT NULL,
  `id_admin_revisor` int DEFAULT NULL,
  `fecha_revision` datetime DEFAULT NULL,
  PRIMARY KEY (`id_publi`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_colonia` (`id_colonia`),
  KEY `id_especie` (`id_especie`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_estado` (`id_estado`),
  KEY `fk_publicaciones_admin_revisor` (`id_admin_revisor`),
  CONSTRAINT `fk_publicaciones_admin_revisor` FOREIGN KEY (`id_admin_revisor`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`),
  CONSTRAINT `publicaciones_ibfk_3` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id_especie`),
  CONSTRAINT `publicaciones_ibfk_4` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_publi` (`id_tipo`),
  CONSTRAINT `publicaciones_ibfk_5` FOREIGN KEY (`id_estado`) REFERENCES `estados_publi` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.publicaciones: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.resenas
CREATE TABLE IF NOT EXISTS `resenas` (
  `id_resena` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_vet` int NOT NULL,
  `calificacion` tinyint NOT NULL COMMENT '1 a 5',
  `comentario` text,
  `fecha_resena` datetime NOT NULL,
  PRIMARY KEY (`id_resena`),
  UNIQUE KEY `resenas_index_1` (`id_usuario`,`id_vet`),
  KEY `id_vet` (`id_vet`),
  CONSTRAINT `resenas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `resenas_ibfk_2` FOREIGN KEY (`id_vet`) REFERENCES `veterinarias` (`id_vet`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.resenas: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.servicios
CREATE TABLE IF NOT EXISTS `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.servicios: ~2 rows (aproximadamente)
INSERT INTO `servicios` (`id_servicio`, `nombre`) VALUES
	(1, 'Estetica animal'),
	(2, 'Consulta general');

-- Volcando estructura para procedimiento migo_db_vue.sp_actualizar_estado_verificacion
DELIMITER //
CREATE PROCEDURE `sp_actualizar_estado_verificacion`(
  IN p_id_vet INT,
  IN p_estado VARCHAR(20),
  IN p_motivo TEXT,
  IN p_id_admin INT
)
BEGIN
  DECLARE v_mensaje_rechazo TEXT;

  IF fn_es_administrador(p_id_admin) = 0 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'El usuario indicado no tiene permisos de administrador.';
  END IF;

  IF p_estado NOT IN ('pendiente', 'aprobada', 'rechazada', 'sin_solicitud') THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Estado de verificación inválido.';
  END IF;

  SET v_mensaje_rechazo = IF(
    p_estado = 'rechazada',
    IFNULL(p_motivo, 'Tu solicitud fue rechazada. Sube de nuevo tu cédula o contacta a los administradores.'),
    NULL
  );

  UPDATE veterinarias
  SET estado_verificacion = p_estado,
      documento_verificacion_rechazo = v_mensaje_rechazo,
      documento_verificacion_resuelto_en = CASE
        WHEN p_estado IN ('aprobada', 'rechazada') THEN NOW()
        ELSE documento_verificacion_resuelto_en
      END
  WHERE id_vet = p_id_vet;

END//
DELIMITER ;

-- Volcando estructura para procedimiento migo_db_vue.sp_eliminar_publicacion_completa
DELIMITER //
CREATE PROCEDURE `sp_eliminar_publicacion_completa`(IN p_id_publi INT)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  DELETE FROM fotos_publi WHERE id_publi = p_id_publi;
  DELETE FROM comentarios WHERE id_publi = p_id_publi;
  DELETE FROM publicaciones WHERE id_publi = p_id_publi;

  COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento migo_db_vue.sp_eliminar_usuario_completo
DELIMITER //
CREATE PROCEDURE `sp_eliminar_usuario_completo`(IN p_id_usuario INT)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  IF NOT EXISTS (SELECT 1 FROM usuarios WHERE id_usuario = p_id_usuario) THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Usuario no encontrado';
  END IF;

  START TRANSACTION;

  DELETE FROM fotos_publi
    WHERE id_publi IN (SELECT id_publi FROM publicaciones WHERE id_usuario = p_id_usuario);
  DELETE FROM comentarios WHERE id_usuario = p_id_usuario;
  DELETE FROM comentarios
    WHERE id_publi IN (SELECT id_publi FROM publicaciones WHERE id_usuario = p_id_usuario);
  DELETE FROM resenas WHERE id_usuario = p_id_usuario;
  DELETE FROM publicaciones WHERE id_usuario = p_id_usuario;
  DELETE FROM resenas
    WHERE id_vet IN (SELECT id_vet FROM veterinarias WHERE id_usuario = p_id_usuario);
  DELETE FROM horarios_vet
    WHERE id_vet IN (SELECT id_vet FROM veterinarias WHERE id_usuario = p_id_usuario);
  DELETE FROM vet_servicios
    WHERE id_vet IN (SELECT id_vet FROM veterinarias WHERE id_usuario = p_id_usuario);
  DELETE FROM veterinarias WHERE id_usuario = p_id_usuario;
  DELETE FROM usuarios WHERE id_usuario = p_id_usuario;

  COMMIT;
END//
DELIMITER ;

-- Volcando estructura para tabla migo_db_vue.tipos_publi
CREATE TABLE IF NOT EXISTS `tipos_publi` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.tipos_publi: ~2 rows (aproximadamente)
INSERT INTO `tipos_publi` (`id_tipo`, `nombre`) VALUES
	(1, 'Se busca'),
	(2, 'Adopción');

-- Volcando estructura para tabla migo_db_vue.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `id_colonia` int DEFAULT NULL,
  `rol` varchar(20) NOT NULL COMMENT 'usuario | veterinario | administrador',
  `fecha_registro` datetime DEFAULT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT '0',
  `token_verificacion` varchar(255) DEFAULT NULL,
  `token_expira` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `id_colonia` (`id_colonia`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`),
  CONSTRAINT `chk_usuarios_rol` CHECK ((`rol` in (_utf8mb4'usuario',_utf8mb4'veterinario',_utf8mb4'administrador')))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.usuarios: ~0 rows (aproximadamente)
INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `correo`, `contrasena`, `telefono`, `direccion`, `id_colonia`, `rol`, `fecha_registro`, `verificado`, `token_verificacion`, `token_expira`) VALUES
	(3, 'Bruno', 'Benitez', 'bruno19benitez@gmail.com', '12345', NULL, NULL, NULL, 'administrador', '2026-07-02 21:29:28', 1, NULL, NULL),
	(17, 'jefte', 'c', 'jeftecastillo15@gmail.com', '123', '777 777 7777', 'mcis', 14, 'usuario', NULL, 0, 'ecb0b26fa8abec1c1398bb3fee62138353774c0907864de2460126e7cfdc8052', '2026-07-20 21:23:51');

-- Volcando estructura para tabla migo_db_vue.veterinarias
CREATE TABLE IF NOT EXISTS `veterinarias` (
  `id_vet` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `nombre_establecimiento` varchar(150) NOT NULL,
  `descripcion` text,
  `imagen_logo` varchar(255) DEFAULT NULL,
  `sitio_web` varchar(255) DEFAULT NULL,
  `correo_negocio` varchar(255) DEFAULT NULL,
  `telefono_local` varchar(20) DEFAULT NULL,
  `id_colonia` int DEFAULT NULL,
  `latitud` decimal(10,7) DEFAULT NULL,
  `longitud` decimal(10,7) DEFAULT NULL,
  `estado_verificacion` varchar(20) NOT NULL DEFAULT 'sin_solicitud',
  `documento_verificacion_blob` longblob,
  `documento_verificacion_nombre` varchar(255) DEFAULT NULL,
  `documento_verificacion_tipo` varchar(100) DEFAULT NULL,
  `documento_verificacion_tamano` int DEFAULT NULL,
  `documento_verificacion_rechazo` text,
  `documento_verificacion_subido_en` datetime DEFAULT NULL,
  `documento_verificacion_resuelto_en` datetime DEFAULT NULL,
  PRIMARY KEY (`id_vet`),
  UNIQUE KEY `id_usuario` (`id_usuario`),
  KEY `id_colonia` (`id_colonia`),
  CONSTRAINT `veterinarias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `veterinarias_ibfk_2` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.veterinarias: ~0 rows (aproximadamente)

-- Volcando estructura para tabla migo_db_vue.vet_servicios
CREATE TABLE IF NOT EXISTS `vet_servicios` (
  `id_vet` int NOT NULL,
  `id_servicio` int NOT NULL,
  PRIMARY KEY (`id_vet`,`id_servicio`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `vet_servicios_ibfk_1` FOREIGN KEY (`id_vet`) REFERENCES `veterinarias` (`id_vet`),
  CONSTRAINT `vet_servicios_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla migo_db_vue.vet_servicios: ~0 rows (aproximadamente)

-- Volcando estructura para disparador migo_db_vue.trg_publicaciones_estado_inicial
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_publicaciones_estado_inicial` BEFORE INSERT ON `publicaciones` FOR EACH ROW BEGIN
  DECLARE v_id_estado_pendiente INT;
  SELECT id_estado INTO v_id_estado_pendiente
  FROM estados_publi WHERE nombre = 'Pendiente';
  SET NEW.id_estado = v_id_estado_pendiente;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador migo_db_vue.trg_publicaciones_log_eliminacion
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_publicaciones_log_eliminacion` BEFORE DELETE ON `publicaciones` FOR EACH ROW BEGIN
  INSERT INTO log_eliminaciones_publicaciones
    (id_publi_original, id_usuario, nombre_pet, id_estado, fecha_publi, fecha_eliminacion)
  VALUES
    (OLD.id_publi, OLD.id_usuario, OLD.nombre_pet, OLD.id_estado, OLD.fecha_publi, NOW());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador migo_db_vue.trg_veterinarias_log_verificacion
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_veterinarias_log_verificacion` AFTER UPDATE ON `veterinarias` FOR EACH ROW BEGIN
  IF NEW.estado_verificacion <> OLD.estado_verificacion THEN
    INSERT INTO log_verificaciones_veterinarias
      (id_vet, estado_anterior, estado_nuevo, motivo_rechazo, fecha_cambio)
    VALUES
      (NEW.id_vet, OLD.estado_verificacion, NEW.estado_verificacion, NEW.documento_verificacion_rechazo, NOW());
  END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;