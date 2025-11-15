-- create table Estado

CREATE TABLE Estado (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(50) NOT NULL,
UF CHAR(2) NOT NULL
);

-- create table Municipio

CREATE TABLE Municipio (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ESTADO_ID INT NOT NULL,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT NOT NULL,    
    
    CONSTRAINT fk_Municipio_Estado1_idx
        FOREIGN KEY (ESTADO_ID) 
        REFERENCES Estado (ID)
);

-- create table Cliente

CREATE TABLE Cliente (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,    
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,    
    
    CONSTRAINT fk_Cliente_Municipio1_idx
        FOREIGN KEY (Municipio_ID)
        REFERENCES Municipio (ID)
);

-- create table ContaReceber

CREATE TABLE ContaReceber (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_ID INT NOT NULL,
    FaturaVendaID INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18, 2) NOT NULL,
    
    Situação ENUM('1', '2', '3') NOT NULL 
        COMMENT '1=Conta registrada, 
                 2=Conta cancelada, 
                 3=Conta paga',
    
    CONSTRAINT fk_ContaReceber_Cliente_idx
        FOREIGN KEY (Cliente_ID)
        REFERENCES Cliente (ID)
);
