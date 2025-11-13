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

-- create Cliente
CREATE TABLE Cliente (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndMunicipio CHAR(20) NOT NULL,
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,    
    
    CONSTRAINT fk_Cliente_Municipio1_idx
        FOREIGN KEY (Municipio_ID)
        REFERENCES Municipio (ID)
);
