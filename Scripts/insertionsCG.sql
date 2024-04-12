USE db_crystalgate;

-- Insertar registros en tb_administradores
INSERT INTO tb_administradores (nombre_administrador, apellido_administrador, email_administrador, clave_administrador) 
VALUES 
('Admin1', 'Apellido1', 'admin1@example.com', 'clave123'),
('Admin2', 'Apellido2', 'admin2@example.com', 'clave456'),
('Admin3', 'Apellido3', 'admin3@example.com', 'clave789'),
('Admin4', 'Apellido4', 'admin4@example.com', 'clave987'),
('Admin5', 'Apellido5', 'admin5@example.com', 'clave654'),
('Admin6', 'Apellido6', 'admin6@example.com', 'clave321'),
('Admin7', 'Apellido7', 'admin7@example.com', 'clave135'),
('Admin8', 'Apellido8', 'admin8@example.com', 'clave246'),
('Admin9', 'Apellido9', 'admin9@example.com', 'clave579'),
('Admin10', 'Apellido10', 'admin10@example.com', 'clave098');

-- Insertar registros en tb_cargos
INSERT INTO tb_cargos (cargo) 
VALUES 
('Cargo1'),
('Cargo2'),
('Cargo3'),
('Cargo4'),
('Cargo5'),
('Cargo6'),
('Cargo7'),
('Cargo8'),
('Cargo9'),
('Cargo10');

-- Insertar registros en tb_usuarios
INSERT INTO tb_usuarios (nombre_usuario, apellido_usuario, email_usuario, clave_usuario, id_cargo) 
VALUES 
('Usuario1', 'Apellido1', 'usuario1@example.com', 'clave123', 1),
('Usuario2', 'Apellido2', 'usuario2@example.com', 'clave456', 2),
('Usuario3', 'Apellido3', 'usuario3@example.com', 'clave789', 3),
('Usuario4', 'Apellido4', 'usuario4@example.com', 'clave987', 4),
('Usuario5', 'Apellido5', 'usuario5@example.com', 'clave654', 5),
('Usuario6', 'Apellido6', 'usuario6@example.com', 'clave321', 6),
('Usuario7', 'Apellido7', 'usuario7@example.com', 'clave135', 7),
('Usuario8', 'Apellido8', 'usuario8@example.com', 'clave246', 8),
('Usuario9', 'Apellido9', 'usuario9@example.com', 'clave579', 9),
('Usuario10', 'Apellido10', 'usuario10@example.com', 'clave098', 10);

-- Insertar registros en tb_tipos_procesos
INSERT INTO tb_tipos_procesos (tipo_proceso, id_clasificacion_proceso, lapso_proceso) 
VALUES 
('Tipo1', 1, 'dias'),
('Tipo2', 2, 'horas'),
('Tipo3', 3, 'ambas'),
('Tipo4', 1, 'dias'),
('Tipo5', 2, 'horas'),
('Tipo6', 3, 'ambas'),
('Tipo7', 1, 'dias'),
('Tipo8', 2, 'horas'),
('Tipo9', 3, 'ambas'),
('Tipo10', 1, 'dias');

-- Insertar registros en tb_procesos
INSERT INTO tb_procesos (id_usuario, id_tipo_proceso, fecha_inicio, fecha_final, id_estado_proceso, documento_proceso, descripcion_proceso, fecha_envio) 
VALUES 
(1, 1, '2024-04-01 08:00:00', '2024-04-05 17:00:00', 1, 'doc1', 'Descripción proceso 1', '2024-04-01'),
(2, 2, '2024-04-02 08:00:00', '2024-04-06 17:00:00', 2, 'doc2', 'Descripción proceso 2', '2024-04-02'),
(3, 3, '2024-04-03 08:00:00', '2024-04-07 17:00:00', 3, 'doc3', 'Descripción proceso 3', '2024-04-03'),
(4, 4, '2024-04-04 08:00:00', '2024-04-08 17:00:00', 4, 'doc4', 'Descripción proceso 4', '2024-04-04'),
(5, 5, '2024-04-05 08:00:00', '2024-04-09 17:00:00', 1, 'doc5', 'Descripción proceso 5', '2024-04-05'),
(6, 6, '2024-04-06 08:00:00', '2024-04-10 17:00:00', 2, 'doc6', 'Descripción proceso 6', '2024-04-06'),
(7, 7, '2024-04-07 08:00:00', '2024-04-11 17:00:00', 3, 'doc7', 'Descripción proceso 7', '2024-04-07'),
(8, 8, '2024-04-08 08:00:00', '2024-04-12 17:00:00', 4, 'doc8', 'Descripción proceso 8', '2024-04-08'),
(9, 9, '2024-04-09 08:00:00', '2024-04-13 17:00:00', 1, 'doc9', 'Descripción proceso 9', '2024-04-09'),
(10, 10, '2024-04-10 08:00:00', '2024-04-14 17:00:00', 2, 'doc10', 'Descripción proceso 10', '2024-04-10');

-- Insertar registros en tb_notificaciones
INSERT INTO tb_notificaciones (id_usuario, id_administrador, id_proceso, descripcion_notificacion, fecha_envio) 
VALUES 
(1, 1, 1, 'Notificación 1', '2024-04-01'),
(2, 2, 2, 'Notificación 2', '2024-04-02'),
(3, 3, 3, 'Notificación 3', '2024-04-03'),
(4, 4, 4, 'Notificación 4', '2024-04-04'),
(5, 5, 5, 'Notificación 5', '2024-04-05'),
(6, 6, 6, 'Notificación 6', '2024-04-06'),
(7, 7, 7, 'Notificación 7', '2024-04-07'),
(8, 8, 8, 'Notificación 8', '2024-04-08'),
(9, 9, 9, 'Notificación 9', '2024-04-09'),
(10, 10, 10, 'Notificación 10', '2024-04-10');

-- Insertar registros en tb_permisos_automaticos
INSERT INTO tb_permisos_automaticos (id_permiso, id_usuario, hora_envio, estado) 
VALUES 
(1, 1, '08:00:00', 1),
(2, 2, '08:00:00', 0),
(3, 3, '08:00:00', 1),
(4, 4, '08:00:00', 0),
(5, 5, '08:00:00', 1),
(6, 6, '08:00:00', 0),
(7, 7, '08:00:00', 1),
(8, 8, '08:00:00', 0),
(9, 9, '08:00:00', 1),
(10, 10, '08:00:00', 0);
