create database projeto_hyppo;

use projeto_hyppo;

CREATE TABLE Professor (
Funcionario_Id VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(100),
Email VARCHAR(80),
Senha VARCHAR(12),
Leciona VARCHAR(20)
);

CREATE TABLE Extracurricular (
Atv_Id VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(20),
Horario datetime,
Docente VARCHAR(20)
);

CREATE TABLE Grade_curricular (
Horario datetime,
Grade_Id VARCHAR(10) PRIMARY KEY,
Materia VARCHAR(10),
Data CHAR(8)
);

CREATE TABLE Registra (
Port_escola VARCHAR(10),
Port_aluno VARCHAR(10),
Atv_Id VARCHAR(10),
Grade_Id VARCHAR(10),
Boletim_Id VARCHAR(10),
Monitoria_Id VARCHAR(10),
PRIMARY KEY(Port_escola,Port_aluno,Atv_Id,Grade_Id,Boletim_Id,Monitoria_Id)
);

CREATE TABLE Cadastra (
Port_escola VARCHAR(10),
Port_aluno VARCHAR(10),
Funcionario_Id int,
PRIMARY KEY(Port_escola,Port_aluno,Funcionario_Id)
);

CREATE TABLE Psicologo (
Idade NUMERIC(3),
Email VARCHAR(80),
Senha VARCHAR(12),
Nome VARCHAR(100),
CRP VARCHAR(12),
Funcionario_Id int PRIMARY KEY auto_increment
);

CREATE TABLE Aluno (
Matrícula int PRIMARY KEY auto_increment,
Nome VARCHAR(100),
Idade NUMERIC(3),
Turma_serie VARCHAR(10)
);

CREATE TABLE Escola (
Escola_Id int PRIMARY KEY auto_increment,
Nome VARCHAR(100),
Endereco VARCHAR(70),
Telefone CHAR(12),
Email VARCHAR(100)
);

CREATE TABLE Usam (
Escola_Id VARCHAR(10),
Matrícula VARCHAR(20),
Port_escola VARCHAR(10),
Port_aluno VARCHAR(10),
PRIMARY KEY(Escola_Id,Matrícula,Port_escola,Port_aluno)
);

CREATE TABLE Site_Portal_Escola_Portal_Aluno (
Port_escola VARCHAR(10),
Data_cadastro datetime,
Port_aluno VARCHAR(10),
CPF NUMERIC(10),
PRIMARY KEY(Port_escola,Port_aluno)
);

CREATE TABLE Boletim (
Boletim_Id int PRIMARY KEY auto_increment,
Nome_aluno VARCHAR(100),
Matricula VARCHAR(20),
Data  datetime,
Materias VARCHAR(20)
);

CREATE TABLE Monitorias (
Horario datetime,
Materia VARCHAR(20),
Monitoria_Id int PRIMARY KEY auto_increment,
Monitor_nome varchar(80) 
);

CREATE TABLE Monitor (
Funcionario_Id  int PRIMARY KEY auto_increment,
Idade NUMERIC(3),
Email VARCHAR(80),
Leciona VARCHAR(20),
Nome VARCHAR(100),
Senha VARCHAR(12)
);

CREATE TABLE Coordenador (
Funcionario_Id  int PRIMARY KEY auto_increment,
Nome VARCHAR(100),
Email VARCHAR(80),
Senha VARCHAR(12)
);

CREATE TABLE Aluno_port (
Nome VARCHAR(20),
Sobrenome VARCHAR(20),
Endereco VARCHAR(80),
CPF NUMERIC(11) PRIMARY KEY,
Nome_usuario VARCHAR(25),
Senha VARCHAR(12),
CEP NUMERIC(8),
Estado VARCHAR(50)
);

ALTER TABLE Site_Portal_Escola_Portal_Aluno ADD FOREIGN KEY(CPF) REFERENCES Aluno_port (CPF);