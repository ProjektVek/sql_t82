CREATE DATABASE db_loja_virtual;

USE db_loja_virtual;

CREATE TABLE tb_games (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    plataforma VARCHAR(100),
    preco DECIMAL(10,2) NOT NULL,
    classificacao_etaria VARCHAR(10),
    PRIMARY KEY(id)
    );

INSERT INTO tb_games (nome, plataforma, preco, classificacao_etaria) VALUES
('The Last of Us Part II', 'PlayStation 4', 299.90, '18+'),
('God of War: Ragnarok', 'PlayStation 5', 549.90, '18+'),
('Halo Infinite', 'Xbox Series X', 319.90, '16+'),
('Elden Ring', 'PlayStation 5', 599.99, '16+'),
('Zelda: Breath of the Wild', 'Nintendo Switch', 459.00, '10+'),
('Call of Duty: Modern Warfare II', 'Xbox Series X', 629.90, '18+'),
('Super Mario Odyssey', 'Nintendo Switch', 399.00, 'L'),
('Red Dead Redemption 2', 'PlayStation 4', 289.00, '18+');

SELECT * FROM tb_games WHERE preco > 500;

SELECT * FROM tb_games WHERE preco < 500;

UPDATE tb_games SET preco = 579.99 WHERE id = 4;
