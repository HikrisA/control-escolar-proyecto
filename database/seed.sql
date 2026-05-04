INSERT INTO usuarios (email, contrasena, rol) VALUES 
('lavin@pcpuma.acatlan.unam.mx', 'admin123', 'Administrador'),
('christian@pcpuma.acatlan.unam.mx', 'mate2023', 'Administrador'),
('buenrostro@pcpuma.acatlan.unam.mx', 'bd123', 'Docente'),
('virginiaharo@pcpuma.actlan.unam.mx', 'profe123', 'Docente');

INSERT INTO carreras (nombre_carrera, nivel, area) VALUES 
('Ingeniería en Computación', 'Ingeniería', 'Físico Matemáticas'),
('Licenciatura en Diseño Gráfico', 'Licenciatura', 'Arte y Filosofía'),
('Licenciatura en Matemáticas Aplicadas y Computación', 'Licenciatura', 'Físico Matemáticas'),
('Licenciatura en Derecho', 'Licenciatura', 'Ciencias de humanidades'),
('Licenciatura en Biología', 'Licenciatura', 'Médicas Biológicas');

INSERT INTO alumnos (id_alumno, nombre_alumno, generacion, id_carrera) VALUES 
(2024110001, 'Miguel Angel Soto García', 2024, 4)
(2023110001, 'Juan Alejandro Sánchez Pérez', 2023, 1);

INSERT INTO materias (nombre_materia, id_carrera, creditos, obligatoria, semestre) VALUES 
('Cálculo Integral', 1, 8, TRUE, 2),
('Desarrollo Web', 1, 10, TRUE, 6),
('Historia del Arte', 2, 6, FALSE, 1),
('Derecho Romano', 4, 10, TRUE, 2);

INSERT INTO calificaciones (id_alumno, id_materia, calificacion) VALUES 
(2023110001, 1, 8),
(2023110001, 2, 10);