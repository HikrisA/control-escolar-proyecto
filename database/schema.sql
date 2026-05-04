CREATE DATABASE IF NOT EXISTS control_escolar;
USE control_escolar;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL, --255 carácteres para la función hash
    rol ENUM('Docente', 'Administrador') NOT NULL
);

CREATE TABLE carreras (
    id_carrera INT AUTO_INCREMENT PRIMARY KEY,
    nombre_carrera VARCHAR(150) NOT NULL,
    nivel ENUM('Licenciatura', 'Ingeniería', 'Especialidad', 'Maestría', 'Doctorado', 'Diplomado') NOT NULL,
    area ENUM('Físico Matemáticas', 'Médicas Biólogicas', 'Ciencias de humanidades', 'Arte y Filosofía') NOT NULL
);

CREATE TABLE alumnos (
    id_alumno INT PRIMARY KEY,
    nombre_alumno VARCHAR(100) NOT NULL,
    generacion INT NOT NULL,
    id_carrera INT NOT NULL,
    FOREIGN KEY (id_carrera) REFERENCES carreras(id_carrera),
);

CREATE TABLE materias (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nombre_materia VARCHAR(100) NOT NULL,
    id_carrera INT NOT NULL,
    creditos INT NOT NULL,
    obligatoria BOOLEAN NOT NULL,
    semestre INT NOT NULL,
    FOREIGN KEY (id_carrera) REFERENCES carreras(id_carrera)
);

CREATE TABLE calificaciones (
    id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT NOT NULL,
    id_materia INT NOT NULL,
    calificacion INT CHECK (calificacion BETWEEN 0 AND 10),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno) ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia) ON DELETE CASCADE
);