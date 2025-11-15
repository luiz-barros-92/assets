-- Criar banco de dados Empresa
CREATE DATABASE empresa;


-- Selecionando banco de dados
USE empresa;


-- Criando tabela funcionarios
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE
);


-- Inserção de dados na tabela funcionarios
INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('James Bond', 'Marketing', 8300.00, '2025-01-20');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Ellen Ripley', 'TI', 5800.00, '2024-11-10');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Tony Stark', 'Recursos Humanos', 5500.00, '2025-03-05');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Bruce Wayne', 'Financeiro', 7100.00, '2024-10-01');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Clarice Starling', 'Vendas', 3850.00, '2025-02-14');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Marty McFly', 'TI', 9200.50, '2024-12-19');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Sarah Connor', 'Marketing', 4600.00, '2025-04-07');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Indiana Jones', 'Recursos Humanos', 5890.00, '2024-11-25');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Leia Organa', 'Vendas', 7700.00, '2025-05-18');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('John Wick', 'Financeiro', 4550.00, '2024-09-03');


-- Selecionar todos os dados da tabela funcionarios
SELECT * FROM funcionarios;


-- Selecionar todos os dados do setor de TI
SELECT * FROM funcionarios WHERE departamento = 'TI';


-- Selecionar nome como caixa alta como 'Nome do Funcionário' e departamento como 'Área de Atuação'
SELECT
    UPPER(nome) AS "Nome do Funcionário",
    departamento AS "Área de Atuação"
FROM
    funcionarios;


-- Consulta de departamento e salário, renomeando-as, somando o total dos salários por departamento agrupando e ordenando por salário de forma decrescente
SELECT
    departamento AS "Área de Atuação",
    SUM(salario) AS "Total de Salários"
FROM
    funcionarios
GROUP BY
    departamento
ORDER BY
    2 DESC;


-- Buscar funcionários que iniciam com a letra 'A'
SELECT
    nome AS "Nome do Funcionário",
    departamento,
    salario
FROM
    funcionarios
WHERE
    nome LIKE 'A%';

