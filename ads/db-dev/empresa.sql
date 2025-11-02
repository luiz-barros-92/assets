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


-- select all employees from technology department
SELECT * FROM funcionarios WHERE departamento = 'Tecnologia';


-- auxiliary seed
-- Seed Auxiliar com 10 Novos Funcionários

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Felipe Mendes', 'Tecnologia', 8500.00, '2023-01-20');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Gabriela Rocha', 'Financeiro', 5200.00, '2024-06-10');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Henrique Lima', 'Vendas', 4500.00, '2023-10-05');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Ingrid Souza', 'Marketing', 6100.00, '2024-03-01');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('João Victor', 'Recursos Humanos', 3900.00, '2023-08-14');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Lívia Ferreira', 'Tecnologia', 9200.50, '2024-02-19');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Marcelo Nunes', 'Vendas', 4100.00, '2022-12-07');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Nicole Pires', 'Financeiro', 5800.75, '2024-05-25');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Otávio Gomes', 'Marketing', 5500.00, '2023-04-18');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Patrícia Reis', 'Recursos Humanos', 3750.00, '2024-07-03');






