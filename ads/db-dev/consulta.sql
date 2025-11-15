-- Criação da Visão (VIEW) para retornar Contas a Receber (Situação = 1)
CREATE VIEW vw_contas_abertas AS
SELECT
    CR.ID AS ID_Conta,
    C.Nome AS Nome_Cliente,
    C.CPF AS CPF_Cliente,
    CR.DataVencimento,
    CR.Valor
FROM
    ContaReceber CR
JOIN
    Cliente C ON CR.Cliente_ID = C.ID
WHERE
    CR.Situação = '1';
