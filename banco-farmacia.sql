CREATE TABLE FARMACIA (
    CNPJ_Farmacia VARCHAR(18) PRIMARY KEY,
    tel_farmacia VARCHAR(15),
    nome_farmacia VARCHAR(100),
    end_farmacia VARCHAR(255)
);

CREATE TABLE PRODUTO (
    cod_produto INT PRIMARY KEY,
    qtd_produto INT,
    valor_produto DECIMAL(10,2),
    fk_FARMACIA_CNPJ_Farmacia VARCHAR(18),
    CONSTRAINT FK_vende FOREIGN KEY (fk_FARMACIA_CNPJ_Farmacia)
        REFERENCES FARMACIA (CNPJ_Farmacia)
);

CREATE TABLE FARMACEUTICO (
    RG_farmaceutico VARCHAR(20) PRIMARY KEY,
    nome_farmaceutico VARCHAR(100),
    fk_FARMACIA_CNPJ_Farmacia VARCHAR(18),
    CONSTRAINT FK_trabalha FOREIGN KEY (fk_FARMACIA_CNPJ_Farmacia)
        REFERENCES FARMACIA (CNPJ_Farmacia)
);
