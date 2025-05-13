CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 1000, "2025-06-12", 12.49);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Maça", 1500, "2025-06-12", 10.00),
("Cenoura", 2000, "2025-07-15", 10.00),
("Alface", 3500, "2025-06-19", 4.00);

SELECT nome, preco FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

UPDATE tb_produtos SET preco = 12.49 WHERE id = 1;

SELECT * FROM tb_produtos WHERE id = 3;
 
SELECT * FROM tb_produtos WHERE preco > 5.00;
 
SELECT * FROM tb_produtos WHERE id != 3;
 
SELECT * FROM tb_produtos WHERE nome = "Banana";
 
SELECT * FROM tb_produtos WHERE id = 3 OR nome = "Maçã";
 
SELECT * FROM tb_produtos WHERE id = 2 AND nome = "Maçã";
 
UPDATE tb_produtos SET preco = 12.49 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 4;

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255);