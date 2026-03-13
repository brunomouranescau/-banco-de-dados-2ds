CREATE TABLE Itens_Estoque (
    ID_Item INT PRIMARY KEY,
    Nome_Item VARCHAR(100) NOT NULL,
    Valor_Por_Kg DECIMAL(10, 2) NOT NULL,
    Observacoes TEXT
);

SELECT * FROM Itens_Estoque;
