-- Procedimiento para insertar datos en tb_administradores
DELIMITER //
CREATE PROCEDURE InsertarAdministrador(
    IN nombre VARCHAR(128),
    IN apellido VARCHAR(128),
    IN email VARCHAR(128),
    IN clave VARCHAR(255)
)
BEGIN
    INSERT INTO tb_administradores (nombre_administrador, apellido_administrador, email_administrador, clave_administrador) 
    VALUES (nombre, apellido, email, clave);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_cargos
DELIMITER //
CREATE PROCEDURE InsertarCargo(
    IN cargo_nombre VARCHAR(32)
)
BEGIN
    INSERT INTO tb_cargos (cargo) 
    VALUES (cargo_nombre);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_usuarios
DELIMITER //
CREATE PROCEDURE InsertarUsuario(
    IN nombre VARCHAR(128),
    IN apellido VARCHAR(128),
    IN email VARCHAR(128),
    IN clave VARCHAR(255),
    IN cargo_id INT
)
BEGIN
    INSERT INTO tb_usuarios (nombre_usuario, apellido_usuario, email_usuario, clave_usuario, id_cargo) 
    VALUES (nombre, apellido, email, clave, cargo_id);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_tipos_procesos
DELIMITER //
CREATE PROCEDURE InsertarTipoProceso(
    IN tipo_proceso_nombre VARCHAR(16),
    IN clasificacion_proceso_id INT,
    IN lapso_proceso ENUM('dias','horas','ambas')
)
BEGIN
    INSERT INTO tb_tipos_procesos (tipo_proceso, id_clasificacion_proceso, lapso_proceso) 
    VALUES (tipo_proceso_nombre, clasificacion_proceso_id, lapso_proceso);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_procesos
DELIMITER //
CREATE PROCEDURE InsertarProceso(
    IN usuario_id INT,
    IN tipo_proceso_id INT,
    IN fecha_inicio DATETIME,
    IN fecha_final DATETIME,
    IN estado_proceso_id INT,
    IN documento_proceso VARCHAR(25),
    IN descripcion_proceso VARCHAR(255),
    IN fecha_envio DATE
)
BEGIN
    INSERT INTO tb_procesos (id_usuario, id_tipo_proceso, fecha_inicio, fecha_final, id_estado_proceso, documento_proceso, descripcion_proceso, fecha_envio) 
    VALUES (usuario_id, tipo_proceso_id, fecha_inicio, fecha_final, estado_proceso_id, documento_proceso, descripcion_proceso, fecha_envio);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_notificaciones
DELIMITER //
CREATE PROCEDURE InsertarNotificacion(
    IN usuario_id INT,
    IN administrador_id INT,
    IN proceso_id INT,
    IN descripcion_notificacion VARCHAR(255),
    IN fecha_envio DATE
)
BEGIN
    INSERT INTO tb_notificaciones (id_usuario, id_administrador, id_proceso, descripcion_notificacion, fecha_envio) 
    VALUES (usuario_id, administrador_id, proceso_id, descripcion_notificacion, fecha_envio);
END //
DELIMITER ;

-- Procedimiento para insertar datos en tb_permisos_automaticos
DELIMITER //
CREATE PROCEDURE InsertarPermisoAutomatico(
    IN permiso_id INT,
    IN usuario_id INT,
    IN hora_envio TIME,
    IN estado BOOLEAN
)
BEGIN
    INSERT INTO tb_permisos_automaticos (id_permiso, id_usuario, hora_envio, estado) 
    VALUES (permiso_id, usuario_id, hora_envio, estado);
END //
DELIMITER ;
