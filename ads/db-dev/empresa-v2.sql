-- auxiliary db seed
INSERT INTO funcionarios (nome, departamento, salario, data_admissao) VALUES
('Luisa Martins', 'Marketing', 4100.00, '2023-08-15'),
('Pedro Henrique', 'Tecnologia', 7500.25, '2022-03-20'),
('Fabiola Rocha', 'Financeiro', 5800.00, '2024-01-10'),
('Ricardo Almeida', 'Vendas', 3950.00, '2023-11-01'),
('Gabriela Nunes', 'Recursos Humanos', 4550.75, '2022-07-25'),
('Vitor Santos', 'Tecnologia', 6120.50, '2024-05-15'),
('Mariana Lima', 'Marketing', 4700.00, '2023-04-18'),
('Julio César', 'Financeiro', 7000.00, '2022-09-05'),
('Sofia Oliveira', 'Vendas', 4380.25, '2024-02-28'),
('Elias Ferreira', 'Tecnologia', 5350.00, '2023-10-10');


-- 10% rise
UPDATE funcionarios
SET salario = salario * 1.10
WHERE id = 19;

