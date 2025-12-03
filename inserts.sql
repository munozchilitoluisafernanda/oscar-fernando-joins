-- Inserción de relaciones Servicio-Equipo
INSERT INTO servicio_usa_equipo (id_servicio, id_equipo) VALUES
(3, 1), 
(2, 2),
(1, 3), 
(5, 3), 
(4, 6), 
(1, 5); 

-- Inserción de Equipos Médicos
INSERT INTO equipos_medicos (nombre_equipo, numero_inventario, fecha_adquisicion) VALUES
('Máquina de Rayos X Siemens', 'XR-1001', '2020-05-15'), 
('Ecógrafo Mindray', 'ECO-2002', '2021-09-01'),          
('Monitor Cardíaco Philips', 'MON-3003', '2022-01-20'),  
('Balanza Pediátrica', 'BAL-4004', '2023-03-10'),        
('Mesa de Examen', 'MEX-5005', '2024-01-05'),          
('Centrífuga de Laboratorio', 'CEN-6006', '2023-08-12'); 

-- insercion de datos en servicios medicos
INSERT INTO servicios_medicos (nombre_servicio, descripcion) VALUES
('Consulta General', 'Revisión y diagnóstico primario.'),     
('Ecografía', 'Estudio de imagen por ultrasonido.'),          
('Rayos X', 'Estudio de imagen con radiación ionizante.'),    
('Laboratorio Clínico', 'Toma de muestras y análisis.'),       
('Terapia Física', 'Rehabilitación y ejercicios.'),           
('Vacunación', 'Aplicación de biológicos.');     












INSERT INTO Especialidades (nombre_especialidad) VALUES
('Cardiología'),
('Dermatología'),
('Pediatría'),
('Neurología'),
('Ginecología'),
('Odontología'),
('Urología'),
('Oftalmología'),
('Traumatología'),
('Psiquiatría'),
('Medicina General'),
('Endocrinología'),
('Gastroenterología'),
('Rehabilitación'),
('Otorrinolaringología');

INSERT INTO Pacientes (n_identificacion, nombre1, nombre2, apellido1, apellido2, fecha_nacimiento, telefono_paciente, direccion_paciente) VALUES
('2001', 'Laura', 'Sofía', 'Pérez', 'Gómez', '1995-07-20', '3101234567', 'Calle 10 # 5-20'),
('2002', 'Ricardo', NULL, 'Márquez', 'Soto', '1980-03-15', '3101234568', 'Avenida 20 # 1-10'),
('2003', 'Valentina', 'Andrea', 'Rojas', 'Díaz', '2005-11-01', '3101234569', 'Carrera 7 # 15-B'),
('2004', 'Felipe', NULL, 'Herrera', 'Arias', '1975-01-25', '3101234570', 'Diagonal 30 # 8-A'),
('2005', 'Daniela', 'Carolina', 'Muñoz', 'Vega', '1999-09-10', '3101234571', 'Transversal 50 # 12-30'),
('2006', 'Javier', NULL, 'Ramos', 'León', '1988-04-18', '3101234572', 'Calle 90 # 1-D'),
('2007', 'Luisa', 'María', 'Quintero', 'Gil', '1992-06-05', '3101234573', 'Avenida Principal 45'),
('2008', 'Camilo', NULL, 'Giraldo', 'Paz', '1965-12-30', '3101234574', 'Carrera 15 # 60-C'),
('2009', 'Natalia', 'Isabel', 'Vargas', 'Soto', '2000-02-14', '3101234575', 'Transversal 70 # 2-F'),
('2010', 'Óscar', NULL, 'Mendoza', 'Cruz', '1970-10-10', '3101234576', 'Calle 50 # 3-B'),
('2011', 'Paula', 'Andrea', 'Torres', 'Pérez', '1993-05-22', '3101234577', 'Diagonal 90 # 10-A'),
('2012', 'Sebastián', NULL, 'Rueda', 'Castro', '1986-08-08', '3101234578', 'Carrera 8 # 5-10'),
('2013', 'Sofía', 'Fernanda', 'López', 'Mesa', '2001-04-17', '3101234579', 'Calle 120 # 30-C'),
('2014', 'Héctor', NULL, 'Chávez', 'Arias', '1979-02-28', '3101234580', 'Avenida Las Palmas 5'),
('2015', 'Mariana', 'Alejandra', 'Vidal', 'León', '1997-11-25', '3101234581', 'Barrio San Juan 15');

INSERT INTO Medicos (n_colegiado, nombre1, nombre2, apellido1, apellido2, telefono, id_especialidad) VALUES
('MC1001', 'Dr. Juan', NULL, 'Restrepo', 'Silva', '3209876501', 1), -- 
('MC1002', 'Dra. Ana', 'María', 'Martínez', 'Ríos', '3209876502', 2), -- 
('MC1003', 'Dr. Pedro', NULL, 'Gómez', 'Vargas', '3209876503', 3), -- 
('MC1004', 'Dra. Sofía', NULL, 'Díaz', 'López', '3209876504', 4), -- 
('MC1005', 'Dr. Luis', 'Fernando', 'Pérez', 'Gil', '3209876505', 5), -- 
('MC1006', 'Dra. Elena', NULL, 'Castro', 'Rojas', '3209876506', 6),  
('MC1007', 'Dr. Miguel', 'Ángel', 'Vásquez', 'Cruz', '3209876507', 7),
('MC1008', 'Dra. Paula', NULL, 'Sánchez', 'Mora', '3209876508', 8),
('MC1009', 'Dr. Carlos', NULL, 'Zúñiga', 'Paz', '3209876509', 9), 
('MC1010', 'Dra. Jessica', 'Andrea', 'Torres', 'León', '3209876510', 10), 
('MC1011', 'Dr. Andrés', NULL, 'Gutiérrez', 'Mendoza', '3209876511', 11), 
('MC1012', 'Dra. Claudia', 'Patricia', 'Quintero', 'Soto', '3209876512', 12), 
('MC1013', 'Dr. Guillermo', NULL, 'Ochoa', 'Vidal', '3209876513', 13), 
('MC1014', 'Dra. Mónica', NULL, 'Chávez', 'Rueda', '3209876514', 14), 
('MC1015', 'Dr. Fabián', 'Ricardo', 'Lara', 'Bravo', '3209876515', 15); 

INSERT INTO Citas (id_paciente, id_medico, fecha_hora, motivo, diagnostico) VALUES
(1, 1, '2025-11-15 10:00:00', 'Chequeo de rutina', 'Paciente sano, sin novedad.'),
(2, 2, '2025-11-15 11:30:00', 'Revisión lunar en espalda', 'Nevus común. Cita de seguimiento en 6 meses.'),
(3, 3, '2025-11-16 09:00:00', 'Vacunación y control de peso', 'Vacuna aplicada correctamente.'),
(4, 4, '2025-11-16 14:00:00', 'Dolores de cabeza recurrentes', 'Migraña común. Se recetan analgésicos.'),
(5, 5, '2025-11-17 16:30:00', 'Examen ginecológico anual', 'Resultados normales.'),
(6, 6, '2025-11-18 08:30:00', 'Limpieza dental y revisión', 'Caries menor detectada, agendar empaste.'),
(7, 7, '2025-11-18 12:00:00', 'Consulta por dolor lumbar', 'Lumbalgia aguda. Terapia física y reposo.'),
(8, 8, '2025-11-19 15:00:00', 'Revisión de vista y cambio de lentes', 'Astigmatismo. Lentes recetados.'),
(9, 9, '2025-11-20 10:30:00', 'Seguimiento de fractura de tobillo', 'Proceso de curación favorable.'),
(10, 10, '2025-11-21 11:00:00', 'Consulta de terapia conductual', 'Progreso estable.'),
(11, 11, '2025-11-22 13:00:00', 'Gripa y malestar general', 'Resfriado común. Reposo y líquidos.'),
(12, 12, '2025-11-25 14:30:00', 'Control de glucosa en sangre', 'Niveles estables con medicación.'),
(13, 13, '2025-11-26 10:00:00', 'Acidez estomacal y reflujo', 'Gastritis leve. Dieta suave y antiácidos.'),
(14, 14, '2025-11-27 11:00:00', 'Inicio de terapia física post-cirugía', 'Primera sesión completada.'),
(15, 15, '2025-11-28 09:30:00', 'Dolor de oído y garganta', 'Otitis. Antibióticos recetados.');