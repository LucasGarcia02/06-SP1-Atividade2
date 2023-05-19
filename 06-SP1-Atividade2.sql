CREATE schema ComaBem;

USE ComaBem;

CREATE TABLE Unidades 
(
    uni_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_unidade VARCHAR(200) NOT NULL
);

CREATE TABLE Produtos
(
    pkey_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_produto VARCHAR(200) NOT NULL,
    valor_produto DOUBLE NOT NULL,
    quant_produto DOUBLE NOT NULL,
    uni_produto INT NOT NULL,
    CONSTRAINT fk_produto_unidade FOREIGN KEY (uni_produto) REFERENCES Unidades (uni_produto)
);