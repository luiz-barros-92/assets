-- ## usuario_junior ##
-- Cria o usuário e define a senha '1234'.
CREATE USER 'usuario_junior'@'%' IDENTIFIED BY '1234';
-- Concede privilégios de SELECT, INSERT, UPDATE, DELETE no banco de dados 'empresa'.
GRANT SELECT, INSERT, UPDATE, DELETE ON empresa.* TO 'usuario_junior'@'%';
-- Recarrega as permissões.
FLUSH PRIVILEGES;



-- ## usuario_senior ##
-- Cria o usuário e define a senha '12345'.
CREATE USER 'usuario_senior'@'%' IDENTIFIED BY '12345';
-- Concede TODOS os privilégios no banco de dados 'empresa'.
GRANT ALL PRIVILEGES ON empresa.* TO 'usuario_senior'@'%';
-- Recarrega as permissões.
FLUSH PRIVILEGES;



-- Ativa o Event Scheduler
SET GLOBAL event_scheduler = ON;


-- Automação de tarefa: reajuste anual de 3% do salário dos funcionários
CREATE EVENT reajuste_anual
ON SCHEDULE EVERY 1 YEAR
STARTS CURRENT_TIMESTAMP
ON COMPLETION PRESERVE
DO
  UPDATE funcionarios
  SET salario = salario * 1.03;


-- Criar tabela 'log_transacoes' para registro das transações efetuadas
CREATE TABLE log_transacoes (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    funcionario_id INT,
    
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
        ON DELETE SET NULL 
        ON UPDATE CASCADE
);



-- ## Realizando transações ##
START TRANSACTION;
UPDATE funcionarios
SET departamento = 'TI' -- Novo departamento
WHERE id = 3;           -- ID do funcionário
-- Registra a mudança no log de transações.
INSERT INTO log_transacoes (data_hora, descricao, funcionario_id)
VALUES (NOW(), 'Transferido o funcionário id 3 (Tony Stark) de Recursos Humanos para TI.', 3);
-- Confirma a transação. Se alguma ação acima falhar, a transação será revertida.
COMMIT;



-- REVOKE todas as permissoes de UPDATE a nivel de banco de dados
REVOKE UPDATE ON empresa.* FROM 'usuario_junior'@'%';


-- GRANT UPDATE tabela 'funcionarios'
GRANT UPDATE (nome, departamento, salario, email)
ON funcionarios
TO 'usuario_junior'@'%';


--- REVOKE UPDATE apenas da coluna 'salario' (para corrigir o 'engano' inicial de permissão a todas as colunas)
REVOKE UPDATE (salario)
ON funcionarios
FROM 'usuario_junior'@'%';
FLUSH PRIVILEGES;


-- Garante o privilégio de alterar os salários na tabela 'funcionarios' ao 'usuario_senior'
GRANT UPDATE (salario) ON funcionarios TO 'usuario_senior'@'%';
