-- SEED NA TABELA 'Estado'
INSERT INTO Estado (Nome, UF) VALUES
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');


-- SEED NA TABELA 'Municipio'
-- IDs gerados automaticamente em Estado: 1=SP, 2=SC, 3=RJ
INSERT INTO Municipio (ESTADO_ID, Nome, CodIBGE) VALUES
(1, 'São Paulo', 3550308),
(1, 'Campinas', 3509502),
(2, 'Florianópolis', 4205407),
(3, 'Rio de Janeiro', 3304557);


-- SEED NA TABELA 'Cliente'
-- IDs gerados automaticamente em Municipio 1=São Paulo, 2=Campinas, 3=Florianópolis, 4=Rio de Janeiro
INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndCEP, Municipio_ID) VALUES
('Ana Maria da Silva', '12345678901', '11987654321', 'Rua das Flores', '100', '01000000', 1),
('Mateus Carvalho Junior', '98765432109', '48991234567', 'Avenida Central', '25B', '88010000', 3),
('Alberto Eduardo Lima', '11122233344', '21988776655', 'Estrada do Forte', '3000', '20011000', 4); 


-- SEED NA TABELA 'ContaReceber'
-- IDs gerados automaticamente em Cliente: 1=Ana, 2=Mateus, 3=Alberto
INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situação) VALUES
(1, 101, '2025-10-01', '2025-10-15', 550.00, '3'),
(2, 102, '2025-11-14', '2025-12-14', 1230.50, '1'),
(3, 103, '2025-09-05', '2025-09-20', 80.99, '2'),
(1, 104, '2025-11-01', '2025-11-30', 2500.00, '1');
