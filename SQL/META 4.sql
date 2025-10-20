/*
USE exemplos_cardiologia;
*/

-- Tabela pacientes :
/*
CREATE TABLE Pacientes ( -- CREATE TABLE cria uma tabela chamada 'Pacientes' 
ID_Paciente INTEGER NOT NULL, -- Uma coluna do tipo INTEGER que não permite valores nulos (NOT NULL) e será a chave primária da tabela.
Nome CHAR(50) NOT NULL,  -- Uma coluna do tipo CHAR(50) que não permite valores nulos e armazena o nome do paciente.
Numero_Processo VARCHAR (7), -- Uma coluna do tipo VARCHAR(7) que pode armazenar um número de processo relacionado ao paciente.
Data_de_Nascimento DATE, -- Uma coluna do tipo DATE que armazena a data de nascimento do paciente.
Genero CHAR(10), -- Uma coluna do tipo CHAR(10) que armazena informações sobre o gênero do paciente.
Morada CHAR(50), --  Uma coluna do tipo CHAR(50) que armazena informações sobre o endereço do paciente.
Contacto INT, --  Uma coluna do tipo INT que armazenará informações de contato do paciente.
PRIMARY KEY (ID_Paciente) -- Define a coluna 'ID_Paciente' como chave primária, garantindo unicidade e identificação única de cada registro.
);
*/

-- (Exemplos) Tabela de Pacientes :
/*
INSERT INTO Pacientes (ID_Paciente, Nome, Numero_Processo, Data_de_Nascimento, Genero, Morada, Contacto) -- INSERT INTO adiciona três novos registros à tabela 'Pacientes'.
VALUES 
(325063574, 'Paulo Azevedo Correia', '8325065', '1986-08-01', 'Masculino', 'Rua Vale Miguel,Coimbra', 963313414),
(140371909, 'Laura Rodrigues Martins', '3821936', '1976-06-12', 'Feminino', 'Rua Doutor Serrão Martins,Coimbra', 992313451),
(871123424, 'Miguel Araujo Gonçalves', '2533689', '1995-09-25', 'Masculino', 'Rua Doutor Luis Bettencourt,Coimbra', 991414444);
*/

-- Tabela Médicos:
/*
CREATE TABLE Medicos ( --  CREATE TABLE cria uma tabela chamada 'Medicos' 
ID_Medicos INTEGER NOT NULL, -- Uma coluna do tipo INTEGER que não permite valores nulos (NOT NULL) e será a chave primária da tabela.
Nome CHAR(20) NOT NULL, -- Uma coluna do tipo CHAR(20) que não permite valores nulos e armazena o nome do médico.
Especialidade CHAR (13), -- Uma coluna do tipo CHAR(13) que pode armazenar a especialidade do médico.
Contacto INT, --  Uma coluna do tipo INT que armazenará informações de contato do médico.
PRIMARY KEY (ID_Medicos) -- Define a coluna 'ID_Medicos' como chave primária, garantindo a singularidade e identificação única de cada registro.
);
*/

-- (Exemplos) Tabela de Médicos :
/*
INSERT INTO Medicos (ID_Medicos, Nome, Especialidade, Contacto) -- INSERT INTO adiciona três novos registros à tabela 'Medicos'. 
VALUES 
(490371263,'Dra.Isabel Fernandes','Consultas',969316279),
(934082657,'Dr.Fábio Barbosa','Urgências',932222630),
(764082615,'Dra.Julia Rodrigues','Internamentos',953141789);
*/

-- Tabela Enfermeiros:
/*
CREATE TABLE Enfermeiros ( -- CREATE TABLE cria uma tabela chamada 'Enfermeiros
ID_Enfermeiros INTEGER NOT NULL, --  Uma coluna do tipo INTEGER que não permite valores nulos (NOT NULL) e será a chave primária da tabela.
Nome CHAR(200) NOT NULL, -- Uma coluna do tipo CHAR(200) que não permite valores nulos e armazena o nome do enfermeiro.
Especialidade CHAR (13), -- Uma coluna do tipo CHAR(13) que pode armazenar a especialidade do enfermeiro.
Contacto INT, -- Uma coluna do tipo INT que armazenará informações de contato do enfermeiro.
PRIMARY KEY (ID_Enfermeiros) --  Define a coluna 'ID_Enfermeiros' como chave primária, garantindo unicidade e identificação única de cada registro.
);
*/

-- (Exemplos) Tabela de Enfermeiros:
/*
INSERT INTO Enfermeiros (ID_Enfermeiros,Nome,Especialidade,Contacto) -- INSERT INTO adiciona três novos registros à tabela 'Enfermeiros'. 
VALUES
(138509736,'Enf,Diana Amaral','Consultas',991144654),
(418365976,'Enf.Daniel Vieira','Internamentos',991233414),
(920531762,'Enf.Angela Correia','Urgencias',988333191);
*/

-- Tabela Registos Médicos:
/*
CREATE TABLE Registos_Medicos ( -- CREATE TABLE cria uma tabela chamada 'Registos_Medicos' com várias colunas e chaves estrangeiras. 
ID_Registos_Medicos INT AUTO_INCREMENT PRIMARY KEY, -- Uma coluna do tipo INT que será a chave primária da tabela, e é configurada como AUTO_INCREMENT para gerar valores automaticamente.
Tipo_de_Sangue CHAR(5), -- Uma coluna do tipo CHAR(5) para armazenar informações sobre o tipo sanguíneo.
Historico_Medico TEXT, -- Uma coluna do tipo TEXT para armazenar informações detalhadas sobre o histórico médico.
Avaliacao_Clinica TEXT, -- Uma coluna do tipo TEXT para armazenar avaliações clínicas relacionadas ao paciente.
ID_Medicos INT, -- Uma coluna do tipo INT que servirá como chave estrangeira, referenciando a coluna 'ID_Medicos' na tabela 'Medicos'.
ID_Enfermeiros INT, -- Uma coluna do tipo INT que servirá como chave estrangeira, referenciando a coluna 'ID_Enfermeiros' na tabela 'Enfermeiros'.
ID_Pacientes INT, -- Uma coluna do tipo INT que servirá como chave estrangeira, referenciando a coluna 'ID_Paciente' na tabela 'Pacientes'.
FOREIGN KEY (ID_Medicos) REFERENCES Medicos (ID_Medicos),
FOREIGN KEY (ID_Enfermeiros) REFERENCES Enfermeiros (ID_Enfermeiros),
FOREIGN KEY (ID_Pacientes) REFERENCES Pacientes (ID_Paciente)
-- AS FOREIGN KEY são configuradas para garantir integridade referencial com as tabelas relacionadas 'Medicos', 'Enfermeiros' e 'Pacientes'.
);
*/

-- (Exemplos) Tabela de Registos Médcos:
/*
INSERT INTO Registos_Medicos (ID_Pacientes, Tipo_de_Sangue, Historico_Medico, Avaliacao_Clinica, ID_Medicos, ID_Enfermeiros) -- INSERT INTO é utilizado para adicionar novos registros à tabela 'Registos_Medicos'.
VALUES
(325063574, 'A+', 'Consulta de rotina', 'Paciente em bom estado de saúde',490371263,138509736),
(140371909, 'B-', 'Internamento', 'Paciente deu entrada na urgência e teve de ser transferida para o internamento devido a dores no peito e bpm muito altos, o paciente tem Arritmias graves', 934082657,418365976),
(871123424, 'AB+', 'Urgências', 'Paciente entrou nas urgências com dores no peito após o resultado do ECG e níveis de troponina no sangue, o paciente encontra-se com uma angina instável, sendo apenas necessário obter tratamentos no local', 764082615, 920531762);
*/

-- Tabela Visitas:
/*
CREATE TABLE VISITAS ( -- CREATE TABLE é utilizado para criar uma nova tabela chamada 'Visitas'.
ID_Visitas INTEGER NOT NULL, -- Uma coluna do tipo INTEGER que será a chave primária da tabela 'VISITAS'.
Data_e_Hora DATETIME, -- Uma coluna do tipo DATETIME que armazenará a data e hora da visita.
Numero_do_Quarto VARCHAR(3), -- Uma coluna do tipo VARCHAR(3) que armazenará o número do quarto associado à visita.
Estado_do_Paciente TEXT, -- Uma coluna do tipo TEXT que armazenará informações sobre o estado do paciente durante a visita.
ID_Paciente INT, -- Uma coluna do tipo INT que servirá como chave estrangeira, referenciando a coluna 'ID_Paciente' na tabela 'Pacientes'.
PRIMARY KEY(ID_Visitas), -- Define a coluna 'ID_Visitas' como chave primária, garantindo unicidade e identificação única de cada registro.
FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente) -- Estabelece uma relação de chave estrangeira entre 'ID_Paciente' na tabela 'VISITAS' e 'ID_Paciente' na tabela 'Pacientes', garantindo que cada ID de paciente em 'VISITAS' esteja associado a um ID existente na tabela 'Pacientes'.
); 
*/

-- (Exemplos) Tabela de Visitas:
/*
INSERT INTO VISITAS (ID_Visitas, ID_Paciente, Data_e_Hora, Numero_do_Quarto, Estado_do_Paciente) -- INSERT INTO é utilizado para adicionar novos registros à tabela 'VISITAS'. 
VALUES
(117263512, 325063574, '2023-05-10 14:30:00', '101', 'Estável, pode receber visitas'),
(219273251, 140371909, '2023-05-12 10:15:00', '202', 'Estado grave, não pode receber visitas'),
(391726532,871123424, '2023-05-14 16:45:00', '103', 'Melhorar, apenas pode receber visitas de amigos próximos');
*/

-- Tabela Medicamentos:
/*
CREATE TABLE Medicamentos ( -- CREATE TABLE é utilizado para criar uma nova tabela chamada 'Medicamentos'.
Medicamentos_e_Tratamentos_Atuais TEXT,
ID_Paciente INT,
PRIMARY KEY (ID_Paciente), -- Define a coluna 'ID_Paciente' como chave primária, garantindo unicidade e identificação única de cada registro.
FOREIGN KEY (ID_Paciente) REFERENCES Pacientes (ID_Paciente) -- Estabelece uma relação de chave estrangeira entre 'ID_Paciente' na tabela 'Medicamentos' e 'ID_Paciente' na tabela 'Pacientes', garantindo que cada ID de paciente em 'Medicamentos' esteja associado a um ID existente na tabela 'Pacientes'.
);
*/

-- (Exemplos) Tabela de Medicamentos:
/*
INSERT INTO Medicamentos (Medicamentos_e_Tratamentos_Atuais, ID_Paciente) -- INSERT INTO é utilizado para adicionar novos registros à tabela 'Medicamentos'.
VALUES
(NULL,325063574),
('Propafenona,Soro,Brufen', 140371909),
('Nitroglicerina,repouso,Soro',871123424);
*/

-- Subconsulta 1:
/*
SELECT Nome
FROM Pacientes
WHERE ID_Paciente IN (SELECT ID_Paciente FROM Medicamentos); -- Retorna os IDs de pacientes que têm registros na tabela 'Medicamentos'. Ele lista os IDs dos pacientes associados a medicamentos ou tratamentos.
-- O principal select utiliza a cláusula IN para filtrar os pacientes cujos IDs estão presentes na lista resultante do subselect. O resultado final é uma lista de nomes dos pacientes que têm registros associados na tabela 'Medicamentos'.
*/

-- Subconsulta 2:
/*
SELECT AVG(Num_Visitas) AS Media_Visitas_Por_Paciente -- Na parte externa da consulta, a função AVG é utilizada para calcular a média do número de visitas por paciente, utilizando a tabela resultante do subselect ('TabelaVisitasPorPaciente'). O resultado final é a média do número de visitas para todos os pacientes na tabela 'VISITAS'.
FROM (
    SELECT ID_Paciente, COUNT(*) AS Num_Visitas -- Este subselect conta o número de visitas para cada paciente na tabela 'VISITAS' e agrupa os resultados pelo ID do paciente. A tabela resultante é renomeada como 'TabelaVisitasPorPaciente'.
    FROM VISITAS
    GROUP BY ID_Paciente
) AS TabelaVisitasPorPaciente
*/

-- Expressão de tabela comum para obter a média de idade dos pacientes:
/*
WITH Idades AS ( -- WITH é usada para definir um Common Table Expression (CTE) chamado 'Idades'. Este CTE calcula a idade de cada paciente a partir de sua data de nascimento usando a função YEAR e subtraindo o ano de nascimento do ano atual.
   SELECT ID_Paciente, YEAR(CURRENT_DATE) - YEAR(Data_de_Nascimento) AS Idade -- A parte interna do CTE realiza o cálculo da idade para cada paciente na tabela 'Pacientes'.
   FROM Pacientes
)
SELECT AVG(Idade) AS Media_Idade -- A parte externa da consulta calcula a média das idades dos pacientes usando a função AVG. Isso proporciona uma visão geral da média de idades na tabela 'Pacientes'.
FROM Idades;
*/

-- Expressão de tabela comum para listar os pacientes e a quantidade de registos médicos associados:
/*
WITH ContagemRegistos AS ( -- A cláusula WITH é usada para definir um Common Table Expression (CTE). Este CTE conta o número de registros médicos para cada paciente na tabela 'Registos_Medicos', agrupando os resultados por ID do paciente.
   SELECT ID_Pacientes, COUNT(*) AS Num_Registos --  parte interna do CTE realiza uma contagem de registros médicos para cada paciente, agrupando os resultados pelo ID do paciente.
   FROM Registos_Medicos --  parte interna do CTE realiza uma contagem de registros médicos para cada paciente, agrupando os resultados pelo ID do paciente.
   GROUP BY ID_Pacientes  --  parte interna do CTE realiza uma contagem de registros médicos para cada paciente, agrupando os resultados pelo ID do paciente.
)
SELECT P.Nome, CR.Num_Registos 
FROM Pacientes P 
LEFT JOIN ContagemRegistos CR ON P.ID_Paciente = CR.ID_Pacientes; --  A parte externa da consulta seleciona o nome de cada paciente da tabela 'Pacientes' e o número de registros médicos associados a cada paciente. Utiliza-se um LEFT JOIN com o CTE para incluir todos os pacientes, mesmo aqueles sem registros médicos correspondentes, preenchendo com NULL onde não há correspondência.
*/

-- Expressão de tabela comum para encontrar a especialidade mais comum entre os médicos:
/*
WITH EspecialidadesContagem AS ( -- A cláusula WITH é usada para definir um Common Table Expression (CTE), 'EspecialidadesContagem'. O CTE conta o número de médicos para cada especialidade na tabela 'Medicos', agrupa os resultados por especialidade, ordena em ordem decrescente com base na contagem e limita a um resultado (a especialidade com a maior contagem).
   SELECT Especialidade, COUNT(*) AS Num_Medicos --  A parte interna do CTE realiza uma contagem de médicos para cada especialidade na tabela 'Medicos', agrupando os resultados pela coluna 'Especialidade'.
   FROM Medicos
   GROUP BY Especialidade
   ORDER BY Num_Medicos DESC -- Os resultados são ordenados em ordem decrescente com base na contagem de médicos (Num_Medicos).
   LIMIT 1 -- A cláusula LIMIT 1 é utilizada para limitar o resultado a apenas uma linha, ou seja, a especialidade com a maior contagem de médicos.
)
SELECT Especialidade -- A parte externa da consulta seleciona a especialidade resultante do CTE, que é a especialidade com o maior número de médicos na tabela 'Medicos'.
FROM EspecialidadesContagem;
*/

-- Junção para obter informações sobre as visitas de cada paciente:
/*
SELECT V.ID_Visitas, P.Nome, V.Data_e_Hora, V.Numero_do_Quarto, V.Estado_do_Paciente
FROM VISITAS V
JOIN Pacientes P ON V.ID_Paciente = P.ID_Paciente; --  Combina os dados da tabela 'VISITAS' com as informações dos pacientes usando o ID_Paciente como chave de ligação.
*/

-- Junção para mostrar os detalhes dos registos médicos com os nomes dos médicos e enfermeiros:
/*
SELECT RM.ID_Registos_Medicos, P.Nome AS Nome_Paciente, M.Nome AS Nome_Medico, E.Nome AS Nome_Enfermeiro
FROM Registos_Medicos RM
-- JOIN usado para combinar informações de diferentes tabelas.
JOIN Pacientes P ON RM.ID_Pacientes = P.ID_Paciente -- Combina os registros médicos com as informações dos pacientes usando o ID do paciente.
JOIN Medicos M ON RM.ID_Medicos = M.ID_Medicos -- Combina os registros médicos com as informações dos médicos usando o ID do médico.
JOIN Enfermeiros E ON RM.ID_Enfermeiros = E.ID_Enfermeiros; -- Combina os registros médicos com as informações dos enfermeiros usando o ID do enfermeiro.
*/

-- Junção para encontrar os pacientes e os respetivos medicamentos:
/*
SELECT P.Nome, M.Medicamentos_e_Tratamentos_Atuais
FROM Pacientes P
LEFT JOIN Medicamentos M ON P.ID_Paciente = M.ID_Paciente; -- LEFT JOIN é usada para incluir todos os registros da tabela à esquerda (Pacientes) e os registros correspondentes da tabela à direita (Medicamentos)
*/

-- Criação de uma vista para listar informações sobre as visitas: 
/*
CREATE VIEW Vista_Visitas AS
SELECT V.ID_Paciente,V.ID_Visitas,V.Data_e_Hora, V.Numero_do_Quarto, V.Estado_do_Paciente
FROM VISITAS V
JOIN Pacientes P ON V.ID_Paciente = P.ID_Paciente; -- JOIN é utilizada para combinar dados de duas ou mais tabelas com base numa condição de junção.
*/
-- Seleção de dados da vista criada:
/*
SELECT * FROM  Vista_Visitas; 
*/

-- Criar uma vista chamada 'InfoPacienteMedico' que contém informações sobre pacientes, médicos e seus registos médicos.
/*
CREATE VIEW InfoPacienteMedico AS -- Declaração que inicia a criação de uma visualização chamada InfoPacienteMedico.
SELECT -- A parte principal da declaração CREATE VIEW. Aqui, é possivel selecionar colunas específicas de diferentes tabelas para compor a vista.
    P.ID_Paciente,
    P.Nome AS Nome_Paciente,
    P.Data_de_Nascimento,
    P.Genero,
    R.Tipo_de_Sangue,
    R.Historico_Medico,
    R.Avaliacao_Clinica,
    M.Nome AS Nome_Medico,
    M.Contacto AS Contacto_Medico
FROM -- Indica de quais tabelas se está a selecionar os dados.
    Pacientes P
    JOIN Registos_Medicos R ON P.ID_Paciente = R.ID_Pacientes
    JOIN Medicos M ON R.ID_Medicos = M.ID_Medicos;
    -- Define as condições de junção entre as tabelas.
*/

/*
-- Selecionar dados da vista 'InfoPacienteMedico'.
SELECT * FROM InfoPacienteMedico;
*/

-- União para mostrar todos os médicos e enfermeiros com as suas especialidades:
/*
SELECT ID_Medicos AS ID_Profissional, Nome, Especialidade FROM Medicos -- Seleciona os médicos da tabela 'Medicos' renomeia a coluna 'ID_Medicos' para 'ID_Profissional' e retorna as colunas 'ID_Profissional', 'Nome' e 'Especialidade'.
UNION -- Operador UNION para combinar os resultados
SELECT ID_Enfermeiros, Nome, Especialidade FROM Enfermeiros; -- Seleciona os enfermeiros da tabela 'Enfermeiros' e retorna as colunas 'ID_Enfermeiros', 'Nome' e 'Especialidade'.
*/

-- União de Pacientes e Médicos:
/*
SELECT ID_Paciente AS ID, Nome, Contacto -- Seleciona os pacientes da tabela 'Pacientes',reenomeia a coluna 'ID_Paciente' para 'ID' e retorna as colunas 'ID', 'Nome' e 'Contacto'.
FROM Pacientes 
UNION -- Operador UNION para combinar os resultados
SELECT ID_Medicos AS ID, Nome, Contacto -- Seleciona os médicos da tabela 'Medicos',renomeia a coluna 'ID_Medicos' para 'ID',retorna as colunas 'ID', 'Nome' e 'Contacto'.
FROM Medicos; 
*/

-- Função para Obter a Idade de um Paciente:
/*
DELIMITER //
CREATE FUNCTION Obter_Idade(id_pacientes INT ) -- Declaração que inicia a criação de uma função chamada Obter_Idade. A função aceita um parâmetro, id_pacientes, que é o ID do paciente para o qual desejamos calcular a idade.
RETURNS INT DETERMINISTIC -- ndica que a função retorna um valor inteiro (INT) e é determinística. Funções determinísticas retornam o mesmo resultado para os mesmos argumentos de entrada, o que significa que o resultado não depende do estado do banco de dados e é previsível.
BEGIN -- Início do bloco de código da função.
DECLARE idade INT; --  Declaração de uma variável local chamada idade do tipo inteiro (INT). Esta variável será usada para armazenar o cálculo da idade.
   SELECT YEAR(CURRENT_DATE()) - YEAR(Data_de_Nascimento) INTO idade -- Esta consulta calcula a diferença em anos entre o ano atual (YEAR(CURRENT_DATE())) e o ano de nascimento do paciente (YEAR(Data_de_Nascimento)). O resultado é atribuído à variável idade.
   FROM Pacientes --  Especifica a tabela da qual estamos selecionando os dados, neste caso, a tabela Pacientes.
   WHERE ID_Paciente = id_pacientes; -- Restringe a seleção aos registros da tabela Pacientes onde o ID do paciente corresponde ao valor passado como parâmetro (id_pacientes).
   RETURN idade; -- Retorna o valor da variável idade como resultado da função.
END // -- Fim do bloco de código da função. O '//' é usado como um delimitador personalizado que foi definido anteriormente.
DELIMITER ; -- : Restaura o delimitador padrão para ponto e vírgula (;). Isso é feito para evitar problemas com outras consultas fora da definição da função.
*/
-- Chamada da função
/*
SELECT Nome, Obter_Idade(ID_Paciente) AS Idade
FROM Pacientes
WHERE ID_Paciente = 871123424;
*/

-- Função para Calcular Diferença de Idade entre Pacientes:
/*
DELIMITER //
CREATE FUNCTION CalcularDiferencaIdadeEntrePacientes(paciente_id1 INT, paciente_id2 INT) --  Declaração que inicia a criação de uma função chamada CalcularDiferencaIdadeEntrePacientes. A função aceita dois parâmetros, paciente_id1 e paciente_id2, que são os IDs dos dois pacientes para os quais desejamos calcular a diferença de idade.
RETURNS INT DETERMINISTIC -- Indica que a função retorna um valor inteiro (INT) e é determinística. Funções determinísticas retornam o mesmo resultado para os mesmos argumentos de entrada, o que significa que o resultado não depende do estado do banco de dados e é previsível.
BEGIN
DECLARE idade1 INT; --  Declaração de uma variável local chamada idade1 do tipo inteiro (INT). Esta variável será usada para armazenar o cálculo da idade do primeiro paciente.
DECLARE idade2 INT; -- Declaração de uma variável local chamada idade2 do tipo inteiro (INT). Esta variável será usada para armazenar o cálculo da idade do segundo paciente.
SELECT YEAR(NOW()) - YEAR(Data_de_Nascimento)
INTO idade1
FROM Pacientes
WHERE ID_Paciente = paciente_id1; --  Esta consulta calcula a idade do primeiro paciente (idade1) com base na data de nascimento desse paciente. A função NOW() retorna a data e hora atuais.
SELECT YEAR(NOW()) - YEAR(Data_de_Nascimento)
INTO idade2
FROM Pacientes
WHERE ID_Paciente = paciente_id2; --  Semelhante à consulta anterior, esta calcula a idade do segundo paciente (idade2) com base na data de nascimento desse paciente
RETURN ABS(idade1 - idade2); -- Retorna a diferença absoluta entre as idades dos dois pacientes. A função ABS é usada para garantir que a diferença seja um valor não negativo.
END // --  Fim do bloco de código da função. O // é usado como um delimitador personalizado que foi definido anteriormente.
DELIMITER ; -- Restaura o delimitador padrão para ponto e vírgula (;). Isso é feito para evitar problemas com outras consultas fora da definição da função.
*/
-- Chamada da função 
/*
SET @paciente_id1 = 140371909;
SET @paciente_id2 = 871123424;
SET @diferenca_idade = CalcularDiferencaIdadeEntrePacientes(@paciente_id1, @paciente_id2); -- Chamar a função e armazenar o resultado numa variável
SELECT @diferenca_idade AS DiferencaDeIdade; -- Resultado
*/
-- Função que permite a partir de uma urgencia com o ID do paciente obter os nomes e respetivos contactos do médico e enfermeiro responsavel ( nao se aplica a consultas)
/*
DELIMITER // -- Define o delimitador temporário como '//' em vez de ';'. Isso é necessário ao criar funções ou procedimentos armazenados no MySQL para permitir o uso de ponto e vírgula (;) dentro do corpo da função.
CREATE FUNCTION InformacoesUrgencia(paciente_id INT) -- Declaração que inicia a criação de uma função chamada InformacoesUrgencia. A função aceita um parâmetro, paciente_id, que é o ID do paciente para o qual desejamos obter informações sobre a urgência.
RETURNS VARCHAR(400) deterministic --Indica que a função retorna um valor de cadeia de caracteres (VARCHAR(400)) e é determinística. Funções determinísticas retornam o mesmo resultado para os mesmos argumentos de entrada, o que significa que o resultado não depende do estado do banco de dados e é previsível.
BEGIN
DECLARE info VARCHAR(400); -- Declaração de uma variável local chamada info do tipo cadeia de caracteres (VARCHAR(400)). Esta variável será usada para acumular as informações sobre a urgência.
SET info = ''; -- Inicializa a variável info com uma string vazia.
SELECT
CONCAT('Médico Responsável: ', M.Nome, ', Contato: ', M.Contacto, '\n') 
INTO
info
--  Esta consulta obtém informações sobre o médico responsável pela urgência e as concatena à variável info. As informações incluem o nome do médico e o contato.
FROM
Registos_Medicos RM
LEFT JOIN
Medicos M ON RM.ID_Medicos = M.ID_Medicos
--  Indica de quais tabelas estamos a selecionar os dados. Neste caso, a tabela Registos_Medicos e a tabela Medicos são unidas através de uma junção à esquerda (LEFT JOIN) usando a coluna ID_Medicos.
WHERE
RM.ID_Pacientes = paciente_id
 AND RM.Avaliacao_Clinica LIKE '%Urgência%'
LIMIT 1; --  Restringe a seleção aos registros da tabela Registos_Medicos onde o ID do paciente corresponde ao valor passado como parâmetro (paciente_id) e onde a avaliação clínica contém a palavra 'Urgência'. O LIMIT 1 garante que apenas um registro seja selecionado.
-- Obtém as informações do médico responsável
SELECT
CONCAT(info, 'Enfermeiro Responsável: ', E.Nome, ', Contato: ', E.Contacto, '\n') 
INTO
info
-- Semelhante à consulta anterior, esta obtém informações sobre o enfermeiro responsável pela urgência e as concatena à variável info. As informações incluem o nome do enfermeiro e o contato.
FROM
Registos_Medicos RM
LEFT JOIN
Enfermeiros E ON RM.ID_Enfermeiros = E.ID_Enfermeiros 
-- Outra junção à esquerda (LEFT JOIN), desta vez unindo a tabela Registos_Medicos com a tabela Enfermeiros usando a coluna ID_Enfermeiros.
WHERE
RM.ID_Pacientes = paciente_id
AND RM.Avaliacao_Clinica LIKE '%Urgência%'
LIMIT 1; -- Restringe a seleção aos registros da tabela Registos_Medicos onde o ID do paciente corresponde ao valor passado como parâmetro (paciente_id) e onde a avaliação clínica contém a palavra 'Urgência'. O LIMIT 1 garante que apenas um registro seja selecionado.
-- Obtém as informações do enfermeiro responsável
RETURN info; -- Retorna as informações acumuladas sobre a urgência.
END // -- Fim do bloco de código da função. O // é usado como um delimitador personalizado que foi definido anteriormente.
DELIMITER ; -- Restaura o delimitador padrão para ponto e vírgula (;). Isso é feito para evitar problemas com outras consultas fora da definição da função.
*/
-- Chamada da função
/*
SET @paciente_id := 140371909; 
SELECT InformacoesUrgencia(@paciente_id) AS Informacoes;
*/