USE SYSDESKDATA;

CREATE TABLE USUARIO (
ID INT NOT NULL AUTO_INCREMENT,
NOME VARCHAR(30),
LOGIN VARCHAR(30),
SENHA VARCHAR(16),
TIPO_USER VARCHAR(3),
DEPARTAMENTO VARCHAR(30),
PRIMARY KEY (ID));

CREATE TABLE CHAMADO(
ID INT NOT NULL AUTO_INCREMENT,
DEPARTAMENTO VARCHAR (30),
LOCAL_CHAM VARCHAR(20),
NIVEL_CHAM VARCHAR(4),
ASSUNTO_CHAM VARCHAR(40),
PRIORIDADE_CHAM VARCHAR (5),
DESCR_CHAM VARCHAR(255),
ID_USER INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (ID_USER) REFERENCES USUARIO(ID));