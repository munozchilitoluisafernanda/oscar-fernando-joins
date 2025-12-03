-- Consultas

SELECT * FROM citas
WHERE id_medico = 3 AND id_servicio = 2;

SELECT * FROM pacientes
WHERE nombre1 = 'Ana';

SELECT id_cita, fecha_hora, motivo FROM Citas 
WHERE fecha_hora BETWEEN '2025-05-01 00:00:00' AND '2025-06-25 23:59:59';

SELECT M.nombre1, M.apellido1, E.nombre_especialidad
FROM Medicos M
JOIN Especialidades E ON M.id_especialidad = E.id_especialidad
WHERE E.nombre_especialidad IN ('Cardiología', 'Neurología', 'Pediatría');


SELECT
    n_identificacion AS Identificacion,
    nombre1,
    TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) AS Edad
FROM Pacientes
WHERE estado_actual = 0;

-- 5.00

SELECT
citas.id_paciente,
pacientes.nombre1,
medicos.nombre1,
servicios_medicos.nombre_servicio
FROM citas
JOIN pacientes ON citas.id_paciente = pacientes.id_paciente
JOIN medicos ON citas.id_medico = medicos.id_medico
JOIN servicios_medicos ON citas.id_servicio = servicios_medicos.id_servicio;

SELECT 
medicos.nombre1,
especialidades.nombre_especialidad
FROM medicos
JOIN especialidades ON medicos.id_especialidad = especialidades.id_especialidad;

SELECT 
equipos_medicos.nombre_equipo,
equipos_medicos.numero_inventario,
servicios_medicos.nombre_servicio

FROM servicio_usa_equipo
JOIN equipos_medicos ON servicio_usa_equipo.id_equipo = equipos_medicos.id_equipo
JOIN servicios_medicos ON servicio_usa_equipo.id_servicio = servicios_medicos.id_servicio;

SELECT
    Pacientes.n_identificacion AS Identificacion,
    Pacientes.nombre1,
    Pacientes.apellido1,
    Citas.fecha_hora,
    Citas.motivo
FROM Pacientes
LEFT JOIN Citas ON Pacientes.id_paciente = Citas.id_paciente 
-- especificamos el left join para garantizar que todos los pacientes se muestren incluso si no hay coincidencias
-- a diferencia del inner join 
ORDER BY Pacientes.apellido1, Citas.fecha_hora;

SELECT
    servicios_medicos.nombre_servicio,
    equipos_medicos.nombre_equipo
FROM servicios_medicos 
LEFT JOIN servicio_usa_equipo ON servicios_medicos.id_servicio = servicio_usa_equipo.id_servicio
LEFT JOIN equipos_medicos ON servicio_usa_equipo.id_equipo = equipos_medicos.id_equipo
ORDER BY servicios_medicos.nombre_servicio;




SELECT
    Medicos.nombre1,
    Medicos.apellido1,
    Citas.fecha_hora,
    Citas.motivo
FROM Medicos 
LEFT JOIN Citas ON Medicos.id_medico = Citas.id_medico;


SELECT
    Citas.id_cita,
    Citas.fecha_hora,
    Citas.motivo,
    Citas.diagnostico,
    Pacientes.nombre1,
    Pacientes.apellido1
FROM Citas 
LEFT JOIN Pacientes ON Citas.id_paciente = Pacientes.id_paciente
ORDER BY Citas.fecha_hora;





















