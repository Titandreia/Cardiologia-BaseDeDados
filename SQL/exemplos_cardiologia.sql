USE exemplos_cardiologia;
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
INSERT INTO Pacientes (ID_Paciente, Nome, Numero_Processo, Data_de_Nascimento, Genero, Morada, Contacto)
VALUES 
(325063574, 'Paulo Azevedo Correia', '8325065', '1986-08-01', 'Masculino', 'Rua Vale Miguel,Coimbra', 963313414),
(140371909, 'Laura Rodrigues Martins', '3821936', '1976-06-12', 'Feminino', 'Rua Doutor Serrão Martins,Coimbra', 992313451),
(871123424, 'Miguel Araujo Gonçalves', '2533689', '1995-09-25', 'Masculino', 'Rua Doutor Luis Bettencourt,Coimbra', 991414444);
*/
/*
CREATE TABLE Medicos (
ID_Medicos INTEGER NOT NULL,
Nome CHAR(20) NOT NULL,
Especialidade CHAR (13),
Contacto INT,
PRIMARY KEY (ID_Medicos)
);
*/
/*
INSERT INTO Medicos (ID_Medicos, Nome, Especialidade, Contacto)
VALUES 
(490371263,'Dra.Isabel Fernandes','Consultas',969316279),
(934082657,'Dr.Fábio Barbosa','Urgências',932222630),
(764082615,'Dra.Julia Rodrigues','Internamentos',953141789);
*/
/*
CREATE TABLE Enfermeiros (
ID_Enfermeiros INTEGER NOT NULL,
Nome CHAR(200) NOT NULL,
Especialidade CHAR (13),
Contacto INT,
PRIMARY KEY (ID_Enfermeiros)
);
*/
/*
INSERT INTO Enfermeiros (ID_Enfermeiros,Nome,Especialidade,Contacto)
VALUES
(138509736,'Enf,Diana Amaral','Consultas',991144654),
(418365976,'Enf.Daniel Vieira','Internamentos',991233414),
(920531762,'Enf.Angela Correia','Urgencias',988333191);
*/
/*
CREATE TABLE Registos_Medicos (
ID_Registos_Medicos INT AUTO_INCREMENT PRIMARY KEY,
Tipo_de_Sangue CHAR(5),
Historico_Medico TEXT,
Avaliacao_Clinica TEXT,
ID_Medicos INT,
ID_Enfermeiros INT,
ID_Pacientes INT,
FOREIGN KEY (ID_Medicos) REFERENCES Medicos (ID_Medicos),
FOREIGN KEY (ID_Enfermeiros) REFERENCES Enfermeiros (ID_Enfermeiros),
FOREIGN KEY (ID_Pacientes) REFERENCES Pacientes (ID_Paciente)
);
*/
/*
INSERT INTO Registos_Medicos (ID_Pacientes, Tipo_de_Sangue, Historico_Medico, Avaliacao_Clinica, ID_Medicos, ID_Enfermeiros)
VALUES
(325063574, 'A+', 'Consulta de rotina', 'Paciente em bom estado de saúde',490371263,138509736),
(140371909, 'B-', 'Internamento', 'Paciente deu entrada na urgência e teve de ser transferida para o internamento devido a dores no peito e bpm muito altos, o paciente tem Arritmias graves', 934082657,418365976),
(871123424, 'AB+', 'Urgências', 'Paciente entrou nas urgências com dores no peito após o resultado do ECG e níveis de troponina no sangue, o paciente encontra-se com uma angina instável, sendo apenas necessário obter tratamentos no local', 764082615, 920531762);
*/
/*
CREATE TABLE VISITAS (
ID_Visitas INTEGER NOT NULL,
Data_e_Hora DATETIME,
Numero_do_Quarto VARCHAR(3),
Estado_do_Paciente TEXT,
ID_Paciente INT,
PRIMARY KEY(ID_Visitas),
FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente)s
);
*/
/*
INSERT INTO VISITAS (ID_Visitas, ID_Paciente, Data_e_Hora, Numero_do_Quarto, Estado_do_Paciente)
VALUES
(117263512, 325063574, '2023-05-10 14:30:00', '101', 'Estável, pode receber visitas'),
(219273251, 140371909, '2023-05-12 10:15:00', '202', 'Estado grave, não pode receber visitas'),
(391726532,871123424, '2023-05-14 16:45:00', '103', 'Melhorar, apenas pode receber visitas de amigos próximos');
*/
/*
CREATE TABLE Medicamentos (
Medicamentos_e_Tratamentos_Atuais TEXT,
ID_Paciente INT,
PRIMARY KEY (ID_Paciente),
FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente)
);
*/
/*
INSERT INTO Medicamentos (Medicamentos_e_Tratamentos_Atuais, ID_Paciente)
VALUES
(NULL,325063574),
('Propafenona,Soro,Brufen', 140371909),
('Nitroglicerina,repouso,Soro',871123424);
*/
/*
SELECT * FROM Pacientes;
SELECT * FROM Medicos;
SELECT * FROM Enfermeiros;
SELECT * FROM Registos Medicos;
SELECT * FROM Visitas;
SELECT * FROM Medicamentos;
*/
/*
CREATE TABLE Registos_Desnormalizados (
ID_Registos_Medicos INT AUTO_INCREMENT PRIMARY KEY,
Tipo_de_Sangue CHAR(5),
Historico_Medico TEXT,
Avaliacao_Clinica TEXT,
ID_Medico INTEGER,
Nome_Medico CHAR(200),
Especialidade_Medico CHAR(13), 
ID_Enfermeiros INT,
Nome_Enfermeiros CHAR (200),
Especialidade_Enfermeiros CHAR(13),
ID_Paciente INT,
FOREIGN KEY (ID_Medico) REFERENCES Medicos (ID_Medicos),
FOREIGN KEY (ID_Enfermeiros) REFERENCES Enfermeiros (ID_Enfermeiros),
FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente)   
);
*/

















