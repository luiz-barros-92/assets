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



