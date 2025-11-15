-- Seed auxiliar de dados
INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Taylor Doose', 'TI', 7100.00, '2025-01-20');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Jules Ostin', 'Recursos Humanos', 5100.00, '2024-12-15');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Alan Turing', 'TI', 8500.00, '2024-11-10');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Sherlock Holmes', 'TI', 6800.00, '2025-03-01');

INSERT INTO funcionarios (nome, departamento, salario, data_admissao)
VALUES ('Miranda Priestly', 'Recursos Humanos', 6200.00, '2025-02-18');


-- Aumento de 10%
UPDATE funcionarios
SET salario = salario * 1.10
WHERE id = 12;


-- Exclusão de funcionários de TI que salário seja >= 7000
DELETE FROM funcionarios
WHERE
    departamento = 'TI'
    AND salario >= 7000.00;


-- Adicionar nova coluna a funcionarios
ALTER TABLE funcionarios
ADD COLUMN email VARCHAR(255);

-- Seed da nova coluna
UPDATE `empresa`.`funcionarios` SET `email` = 'james@gmail.com' WHERE (`id` = '1');
UPDATE `empresa`.`funcionarios` SET `email` = 'ellen@gmail.com' WHERE (`id` = '2');
UPDATE `empresa`.`funcionarios` SET `email` = 'tony@gmail.com' WHERE (`id` = '3');
UPDATE `empresa`.`funcionarios` SET `email` = 'miranda@gmail.com' WHERE (`id` = '15');
UPDATE `empresa`.`funcionarios` SET `email` = 'sherlock@gmail.com' WHERE (`id` = '14');
UPDATE `empresa`.`funcionarios` SET `email` = 'jules@gmail.com' WHERE (`id` = '12');
UPDATE `empresa`.`funcionarios` SET `email` = 'john@gmail.com' WHERE (`id` = '10');
UPDATE `empresa`.`funcionarios` SET `email` = 'leia@gmail.com' WHERE (`id` = '9');
UPDATE `empresa`.`funcionarios` SET `email` = 'indiana@gmail.com' WHERE (`id` = '8');
UPDATE `empresa`.`funcionarios` SET `email` = 'sarah@gmail.com' WHERE (`id` = '7');
UPDATE `empresa`.`funcionarios` SET `email` = 'clarice@gmail.com' WHERE (`id` = '5');
UPDATE `empresa`.`funcionarios` SET `email` = 'bruce@gmail.com' WHERE (`id` = '4');


-- Alterar tipo da coluna 'salario' para FLOAT
ALTER TABLE funcionarios
MODIFY COLUMN salario FLOAT;

-- Remover a coluna 'data_admissao'
ALTER TABLE funcionarios
DROP COLUMN data_admissao;

-- email recebe UNIQUE constraint
ALTER TABLE funcionarios
ADD CONSTRAINT uq_email UNIQUE (email);

