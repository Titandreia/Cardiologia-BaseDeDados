/*
CREATE DATABASE IF NOT EXISTS cardiologia_23;
USE cardiologia_23;
*/
/*
CREATE TABLE Pacientes (
ID_Paciente INTEGER NOT NULL,
Nome CHAR(50) NOT NULL, 
Numero_Processo VARCHAR (7),
Data_de_Nascimento DATE,
Genero CHAR(10),
Morada CHAR(50),
Contacto INT,
PRIMARY KEY (ID_Paciente)
);
*/
/*
CREATE TABLE Medicos(
ID_Medicos Integer NOT NULL,
Nome CHAR (200) NOT NULL,
Especialidade CHAR(13),
Contacto INT,
PRIMARY KEY (ID_MEDICOS)
);
*/
/*
CREATE TABLE Enfermeiros (
ID_Enfermeiros INTEGER NOT NULL,
Nome CHAR (200) NOT NULL,
Contacto INT,
PRIMARY KEY (ID_Enfermeiros)
);
*/
/*
CREATE TABLE Registos_Medicos (
ID_Registos_Medicos INT AUTO_INCREMENT PRIMARY KEY,
Tipo_de_Sangue CHAR(5),
Historico_Medico TEXT,
Avaliacao_Clinica TEXT,
ID_Medico INTEGER,
ID_Enfermeiros INTEGER,
ID_Pacientes INTEGER,
FOREIGN KEY (ID_Medico) REFERENCES Medicos (ID_Medicos),
FOREIGN KEY (ID_Enfermeiros) REFERENCES Enfermeiros (ID_Enfermeiros),
FOREIGN KEY (ID_Pacientes) REFERENCES Pacientes (ID_Paciente)
);
*/
/*
CREATE TABLE Medicamentos (
Medicamentos_e_tratamentos_atuais TEXT,
ID_Pacientes INTEGER,
FOREIGN KEY (ID_Pacientes) REFERENCES Pacientes (ID_Paciente)
);
*/
/*
CREATE TABLE VISITAS (
    ID_Visitas INTEGER NOT NULL,
    Data_e_Hora DATETIME,
    Numero_do_Quarto VARCHAR(3),
    Estado_do_Paciente TEXT,
    ID_Paciente INT,
    PRIMARY KEY (ID_Visitas),
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente)
);
*/
/*
CREATE TABLE Usuarios (
ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
Tipo_Usuario ENUM('Medico', 'Enfermeiro'),
User_Name VARCHAR(50) NOT NULL,
Palavra_Passe VARCHAR(100) NOT NULL,
ID_Medicos INT,
ID_Enfermeiros INT,
FOREIGN KEY (ID_Medicos) REFERENCES Medicos(ID_Medicos),
FOREIGN KEY (ID_Enfermeiros) REFERENCES Enfermeiros (ID_Enfermeiros)
);
*/







    
    
    


