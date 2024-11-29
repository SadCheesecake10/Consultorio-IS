-- Creación de la tabla cita_servicio
CREATE TABLE cita_servicio (
    id_cita_servicio_pk INTEGER NOT NULL PRIMARY KEY,
    id_cita_fk INTEGER NOT NULL,
    id_servicio_fk INTEGER NOT NULL,
    FOREIGN KEY (id_cita_fk) REFERENCES citas (id_cita_pk),
    FOREIGN KEY (id_servicio_fk) REFERENCES servicios (id_servicio_pk)
);

-- Creación de la tabla citas
CREATE TABLE citas (
    id_cita_pk INTEGER NOT NULL PRIMARY KEY,
    descripcion TEXT NOT NULL,
    fecha TEXT NOT NULL,
    duracion INTEGER NOT NULL,
    id_tipo_cita INTEGER NOT NULL,
    id_paciente_fk INTEGER NOT NULL,
    id_doctor_fk INTEGER NOT NULL,
    doctores_id_persona_fk INTEGER NOT NULL,
    pacientes_id_persona_fk INTEGER NOT NULL,
    FOREIGN KEY (id_tipo_cita) REFERENCES tipo_cita (id_tipo_cita)
);

-- Creación de la tabla contactos_emergencia
CREATE TABLE contactos_emergencia (
    id_contacto_em_pk INTEGER NOT NULL PRIMARY KEY,
    nombre TEXT NOT NULL,
    num_telefono TEXT NOT NULL,
    id_paciente_fk INTEGER NOT NULL,
    pacientes_id_persona_fk INTEGER NOT NULL
);

-- Creación de la tabla doctor_especialidad
CREATE TABLE doctor_especialidad (
    id_doc_esp_pk INTEGER NOT NULL PRIMARY KEY,
    id_doctor_fk INTEGER NOT NULL,
    id_especialidad_fk INTEGER NOT NULL,
    doctores_id_persona_fk INTEGER NOT NULL,
    FOREIGN KEY (id_doctor_fk) REFERENCES doctores (id_doctor_pk),
    FOREIGN KEY (id_especialidad_fk) REFERENCES especialidades (id_especialidad_pk)
);

-- Creación de la tabla doctores
CREATE TABLE doctores (
    id_doctor_pk INTEGER NOT NULL,
    id_persona_fk INTEGER NOT NULL,
    PRIMARY KEY (id_doctor_pk, id_persona_fk),
    FOREIGN KEY (id_persona_fk) REFERENCES personas (id_persona_pk)
);

-- Creación de la tabla especialidades
CREATE TABLE especialidades (
    id_especialidad_pk INTEGER NOT NULL PRIMARY KEY,
    especialidad TEXT NOT NULL
);

-- Creación de la tabla horarios_doctor
CREATE TABLE horarios_doctor (
    id_horario_pk INTEGER NOT NULL PRIMARY KEY,
    fecha_entrada TEXT NOT NULL,
    fecha_salida TEXT NOT NULL,
    id_doctor_fk INTEGER NOT NULL,
    doctores_id_persona_fk INTEGER NOT NULL,
    FOREIGN KEY (id_doctor_fk) REFERENCES doctores (id_doctor_pk)
);

-- Creación de la tabla pacientes
CREATE TABLE pacientes (
    id_paciente_pk INTEGER NOT NULL,
    id_persona_fk INTEGER NOT NULL,
    PRIMARY KEY (id_paciente_pk, id_persona_fk),
    FOREIGN KEY (id_persona_fk) REFERENCES personas (id_persona_pk)
);

-- Creación de la tabla personas
CREATE TABLE personas (
    id_persona_pk INTEGER NOT NULL PRIMARY KEY,
    nombre TEXT NOT NULL,
    rfc TEXT NOT NULL,
    num_telefonico TEXT,
    correo TEXT,
    num_ext INTEGER NOT NULL,
    num_int INTEGER,
    calle TEXT,
    colonia TEXT NOT NULL,
    estado TEXT NOT NULL,
    cp INTEGER NOT NULL
);

-- Creación de la tabla servicios
CREATE TABLE servicios (
    id_servicio_pk INTEGER NOT NULL PRIMARY KEY,
    concepto TEXT NOT NULL,
    costo INTEGER NOT NULL
);

-- Creación de la tabla tipo_cita
CREATE TABLE tipo_cita (
    id_tipo_cita INTEGER NOT NULL PRIMARY KEY,
    tipo_cita TEXT NOT NULL,
    costo INTEGER NOT NULL
);

-- Creación de la tabla users
CREATE TABLE users (
    id_usr_pk INTEGER NOT NULL PRIMARY KEY,
    contraseña TEXT NOT NULL,
    tipo_usuario TEXT DEFAULT 'P' CHECK (tipo_usuario IN ('P', 'D')),
    id_persona_fk INTEGER NOT NULL,
    FOREIGN KEY (id_persona_fk) REFERENCES personas (id_persona_pk)
);
