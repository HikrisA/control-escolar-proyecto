INSERT INTO usuarios (email, contrasena, rol) VALUES 
('lavin@pcpuma.actlan.unam.mx', 'admin123', 'Administrador'),
('virginiaharo@pcpuma.actlan.unam.mx', 'profe123', 'Docente'),
('423321209@pcpuma.acatlan.unam.mx', 'alumno123', 'Alumno');

INSERT INTO carreras (nombre_carrera, nivel, area) VALUES 
('Ingeniería en Computación', 'Ingeniería', 'Físico Matemáticas'),
('Licenciatura en Diseño Gráfico', 'Licenciatura', 'Arte y Filosofía'),
('Licenciatura en Matemáticas Aplicadas y Computación', 'Licenciatura', 'Físico Matemáticas'),
('Licenciatura en Derecho', 'Licenciatura', 'Ciencias de humanidades'),
('Licenciatura en Biología', 'Licenciatura', 'Médicas Biológicas');

INSERT INTO alumnos (id_usuario, nombre_alumno, generacion, id_carrera) VALUES 
(3, 'Juan Alejandro Sánchez Pérez', 2023, 1);

INSERT INTO materias (nombre_materia, id_carrera, creditos, obligatoria, semestre) VALUES 
('Cálculo Integral', 1, 8, TRUE, 2),
('Desarrollo Web', 1, 10, TRUE, 6),
('Historia del Arte', 2, 6, FALSE, 1);

INSERT INTO calificaciones (id_usuario, id_materia, calificacion) VALUES 
(3, 1, 8),
(3, 2, 10);