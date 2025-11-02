-- create database
CREATE DATABASE empresa;


-- select database
USE empresa;


-- create table
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE
);


-- database seed
INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Ana Silva', 'Financeiro', 5000.00, '2018-03-15');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Bruno Costa', 'Vendas', 4200.50, '2020-07-22');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Carla Pereira', 'Tecnologia', 7800.00, '2019-11-01');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('David Santos', 'Recursos Humanos', 3500.75, '2021-01-10');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Elisa Oliveira', 'Marketing', 4850.00, '2022-05-30');


-- verify all data seed in funcionarios
SELECT * FROM funcionarios;






