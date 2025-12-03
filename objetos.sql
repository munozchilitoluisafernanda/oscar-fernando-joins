CREATE DATABASE IF NOT EXISTS ClInica_Vida_Sana;
USE ClInica_Vida_Sana;

CREATE TABLE IF NOT EXISTS pacientes (
id_paciente INT PRIMARY KEY AUTO_INCREMENT,
n_identificacion VARCHAR(20) NOT NULL UNIQUE,
nombre1 VARCHAR(50) NOT NULL,
nombre2 VARCHAR(50) NULL,
apellido1 VARCHAR(50) NOT NULL,
apellido2 VARCHAR(50) NULL,
fecha_nacimiento DATE NOT NULL,
telefono_paciente VARCHAR(15) NOT NULL,
direccion_paciente VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Especialidades (
id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
nombre_especialidad VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Medicos (
id_medico INT PRIMARY KEY AUTO_INCREMENT,
n_colegiado VARCHAR(20) NOT NULL UNIQUE,
nombre1 VARCHAR(50) NOT NULL,
nombre2 VARCHAR(50) NULL,
apellido1 VARCHAR(50) NOT NULL,
apellido2 VARCHAR(50) NULL,
telefono VARCHAR(15) NOT NULL,
id_especialidad INT NOT NULL,

CONSTRAINT fk_medico_especialidad FOREIGN KEY (id_especialidad) REFERENCES Especialidades(id_especialidad)
);

CREATE TABLE IF NOT EXISTS Citas (
id_cita INT PRIMARY KEY AUTO_INCREMENT,
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
fecha_hora DATETIME NOT NULL,
motivo VARCHAR(200) NOT NULL,
diagnostico VARCHAR(500) NULL,

CONSTRAINT fk_cita_paciente FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
	
CONSTRAINT fk_cita_medico FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

CREATE TABLE IF NOT EXISTS servicios_medicos (
id_servicio INT PRIMARY KEY AUTO_INCREMENT,
nombre_servicio VARCHAR(100) NOT NULL UNIQUE,
descripcion TEXT NULL
);

CREATE TABLE IF NOT EXISTS equipos_medicos (
id_equipo INT PRIMARY KEY AUTO_INCREMENT,
nombre_equipo VARCHAR(100) NOT NULL,
numero_inventario VARCHAR(50) NOT NULL UNIQUE,
fecha_adquisicion DATE NULL
);

CREATE TABLE IF NOT EXISTS servicio_usa_equipo (
id_servicio INT NOT NULL,
id_equipo INT NOT NULL,
id_sue INT PRIMARY KEY AUTO_INCREMENT,

CONSTRAINT fk_sue_servicio FOREIGN KEY (id_servicio) REFERENCES servicios_medicos(id_servicio),
CONSTRAINT fk_sue_equipo FOREIGN KEY (id_equipo) REFERENCES equipos_medicos(id_equipo)
);

-- Modifique la tabla citas para añadir la clave foranea 
ALTER TABLE Citas ADD COLUMN id_servicio INT NULL AFTER id_medico;

-- agregar la clave foranea a esa columna ahora si
ALTER TABLE Citas ADD CONSTRAINT fk_cita_servicio FOREIGN KEY (id_servicio) REFERENCES servicios_medicos(id_servicio);

-- Agregar la columna de estado de paciente (requerida para consulta 4.5)
ALTER TABLE Pacientes ADD COLUMN estado_paciente TINYINT NOT NULL DEFAULT 1 AFTER direccion_paciente;