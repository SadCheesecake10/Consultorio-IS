-- Insertar datos en la tabla citas
INSERT INTO citas (
    id_cita_pk,
    descripcion,
    fecha,
    duracion,
    id_tipo_cita,
    id_paciente_fk,
    id_doctor_fk,
    doctores_id_persona_fk,
    pacientes_id_persona_fk
)
VALUES
    (1, 'Consulta general', '2024-11-01', 30, 1, 1, 1, 1, 1),
    (2, 'Ultrasonido', '2024-11-02', 15, 2, 2, 2, 2, 2),
    (3, 'Consulta Geriatrica', '2024-11-03', 20, 3, 3, 3, 3, 3),
    (4, 'Consulta Odontologica', '2024-11-04', 40, 1, 4, 4, 4, 4),
    (5, 'Laboratorios', '2024-11-05', 60, 4, 5, 5, 5, 5);

-- Insertar datos en la tabla contactos_emergencia
INSERT INTO contactos_emergencia (
    id_contacto_em_pk,
    nombre,
    num_telefono,
    id_paciente_fk,
    pacientes_id_persona_fk
)
VALUES
    (1, 'Juan Pérez', '5551234567', 1, 1),
    (2, 'María López', '5559876543', 2, 2),
    (3, 'Carlos Sánchez', '5553456789', 3, 3),
    (4, 'Ana Ramírez', '5557654321', 4, 4),
    (5, 'Lucía Fernández', '5556781234', 5, 5);

-- Insertar datos en la tabla doctor_especialidad
INSERT INTO doctor_especialidad (
    id_doc_esp_pk,
    id_doctor_fk,
    id_especialidad_fk,
    doctores_id_persona_fk
)
VALUES
    (1, 1, 1, 1),
    (2, 2, 2, 2),
    (3, 3, 3, 3),
    (4, 4, 4, 4),
    (5, 5, 5, 5);

-- Insertar datos en la tabla doctores
INSERT INTO doctores (
    id_doctor_pk,
    id_persona_fk
)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Insertar datos en la tabla especialidades
INSERT INTO especialidades (
    id_especialidad_pk,
    especialidad
)
VALUES
    (1, 'Medico General'),
    (2, 'Ultrasonografia'),
    (3, 'Geriatria'),
    (4, 'Odontologia'),
    (5, 'Análisis Clinicos');

-- Insertar datos en la tabla horarios_doctor
INSERT INTO horarios_doctor (
    id_horario_pk,
    fecha_entrada,
    fecha_salida,
    id_doctor_fk,
    doctores_id_persona_fk
)
VALUES
    (1, '2024-12-01 08:00:00', '2024-12-01 14:00:00', 1, 1),
    (2, '2024-12-02 09:00:00', '2024-12-02 15:00:00', 2, 2),
    (3, '2024-12-03 10:00:00', '2024-12-03 16:00:00', 3, 3),
    (4, '2024-12-04 08:30:00', '2024-12-04 14:30:00', 4, 4),
    (5, '2024-12-05 07:00:00', '2024-12-05 13:00:00', 5, 5);

-- Insertar datos en la tabla pacientes
INSERT INTO pacientes (
    id_paciente_pk,
    id_persona_fk
)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Insertar datos en la tabla personas
INSERT INTO personas (
    id_persona_pk,
    nombre,
    rfc,
    num_telefonico,
    correo,
    num_ext,
    num_int,
    calle,
    colonia,
    estado,
    cp
)
VALUES
    (1, 'Ricardo Leal Cabrera', 'LECR890101ABC', '5551234567', 'ricardo.leal@example.com', 101, NULL, 'Av. Reforma', 'Centro', 'Ciudad de México', 12345),
    (2, 'Roberto Rojas Campos', 'ROCR920202DEF', '5559876543', 'roberto.rojas@example.com', 202, 15, 'Calle Ficticia', 'Del Valle', 'Ciudad de México', 67890),
    (3, 'Leonardo Rodriguez Villicana', 'ROLV750303GHI', '5553456789', NULL, 303, NULL, 'Calle Libertad', 'Guadalupe', 'Nuevo León', 54321),
    (4, 'Ana Ramírez', 'ANAR860404JKL', '5557654321', 'ana.ramirez@example.com', 404, 22, 'Paseo de las Palmas', 'Polanco', 'Ciudad de México', 98765),
    (5, 'Brian Emmanuel Hernández Zuniga', 'HEBE950505MNO', NULL, 'brian_hernandez@example.com', 505, NULL, 'Calle Hidalgo', 'Centro', 'Jalisco', 11111);

-- Insertar datos en la tabla servicios
INSERT INTO servicios (
    id_servicio_pk,
    concepto,
    costo
)
VALUES
    (1, 'Consulta general', 500),
    (2, 'Ultrasonido general', 800),
    (3, 'Consulta geriatrica', 1200),
    (4, 'Consulta odontologica', 1500),
    (5, 'Laboratorios de rutina', 1000);

-- Insertar datos en la tabla tipo_cita
INSERT INTO tipo_cita (
    id_tipo_cita,
    tipo_cita,
    costo
)
VALUES
    (1, 'Consulta general primera vez', 500),
    (2, 'Consulta general subsecuente', 300),
    (3, 'Consulta geriatrica primera vez', 800),
    (4, 'Consulta geriatrica subsecuente', 600);

-- Insertar datos en la tabla users
INSERT INTO users (
    id_usr_pk,
    contraseña,
    tipo_usuario,
    id_persona_fk
)
VALUES
    (1, 'password', 'D', 1),
    (2, 'password', 'D', 2),
    (3, 'password', 'P', 3),
    (4, 'password', 'P', 4),
    (5, 'password', 'P', 5);

-- Insertar datos en la tabla usuarios
