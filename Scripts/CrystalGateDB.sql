DROP DATABASE if EXISTS db_cristalgate;
CREATE DATABASE db_cristalgate;

USE db_cristalgate;

CREATE TABLE tb_administradores(
	id_administrador INT PRIMARY KEY AUTO_INCREMENT,
	nombre_administrador VARCHAR(128),
	apellido_administrador VARCHAR(128),
	email_administrador VARCHAR(128),
	clave_administrador VARCHAR(255),
	
	CONSTRAINT u_administrador_email UNIQUE(email_administrador)
);

CREATE TABLE tb_cargos(
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
	cargo VARCHAR(32)
);

CREATE TABLE tb_usuarios(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	nombre_usuario VARCHAR(128),
	apellido_usuario VARCHAR(128),
	email_usuario VARCHAR(128),
	clave_usuario VARCHAR(255),
	id_cargo INT NOT NULL,
	
	CONSTRAINT u_usuario_email UNIQUE(email_usuario),
	CONSTRAINT fk_usuario_cargo FOREIGN KEY (id_cargo) REFERENCES tb_cargos(id_cargo)
);

CREATE TABLE tb_estados_procesos(
	id_estado_proceso INT PRIMARY KEY AUTO_INCREMENT,
	estado_proceso VARCHAR(16)
);

INSERT INTO tb_estados_procesos(estado_proceso) VALUES('enviado'),('visto'),('aceptado'),('denegado');

CREATE TABLE tb_clasificaciones_procesos(
	id_clasificacion_proceso INT PRIMARY KEY AUTO_INCREMENT,
	clasificacion_proceso VARCHAR(16)
);

INSERT INTO tb_clasificaciones_procesos(clasificacion_proceso) VALUES('Incapacidades'),('Permisos'),('Vacaciones');

CREATE TABLE tb_tipos_procesos(
	id_tipo_proceso INT PRIMARY KEY AUTO_INCREMENT,
	tipo_proceso VARCHAR(16),
	id_clasificacion_proceso INT NOT NULL,
	lapso_proceso ENUM('dias','horas','ambas'),
	
	CONSTRAINT fk_tipo_clasificacion_proceso FOREIGN KEY (id_clasificacion_proceso) REFERENCES tb_clasificaciones_procesos(id_clasificacion_proceso)
);

CREATE TABLE tb_procesos(
	id_proceso INT PRIMARY KEY AUTO_INCREMENT,
	id_usuario INT NOT NULL,
	id_tipo_proceso INT NOT NULL,
	fecha_inicio DATETIME,
	fecha_final DATETIME,
	id_estado_proceso INT NOT NULL,
	documento_proceso VARCHAR(25),
	descripcion_proceso VARCHAR(255),
	fecha_envio DATE,
	
	CONSTRAINT fk_proceso_usuario FOREIGN KEY (id_usuario) REFERENCES tb_usuarios(id_usuario),
	CONSTRAINT fk_proceso_tipo FOREIGN KEY (id_tipo_proceso) REFERENCES tb_tipos_procesos(id_tipo_proceso),
	CONSTRAINT fk_proceso_estado FOREIGN KEY (id_estado_proceso) REFERENCES tb_estados_procesos(id_estado_proceso)
);

CREATE TABLE tb_notificaciones(
	id_notificacion INT PRIMARY KEY AUTO_INCREMENT,
	id_usuario INT NOT NULL,
	id_administrador INT NOT NULL,
	id_proceso INT NOT NULL,
	descripcion_notificacion VARCHAR(255),
	fecha_envio DATE,
	
	CONSTRAINT fk_notificacion_usuario FOREIGN KEY (id_usuario) REFERENCES tb_usuarios(id_usuario),
	CONSTRAINT fk_notificacion_administrador FOREIGN KEY (id_administrador) REFERENCES tb_administradores(id_administrador),
	CONSTRAINT fk_notificacion_proceso FOREIGN KEY (id_proceso) REFERENCES tb_procesos(id_proceso)
);	

CREATE TABLE tb_permisos_automaticos(
	id_permiso_automatico INT PRIMARY KEY AUTO_INCREMENT,
	id_permiso INT NOT NULL,
	id_usuario INT NOT NULL,
	hora_envio TIME,
	estado BOOLEAN,
	
	CONSTRAINT fk_automatico_permiso FOREIGN KEY (id_permiso) REFERENCES tb_procesos(id_proceso),
	CONSTRAINT fk_automatico_usuario  FOREIGN KEY (id_usuario) REFERENCES tb_usuarios(id_usuario)
);


