CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
id_categoria BIGINT NOT NULL,
preco DECIMAL(5,2),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome) VALUES 
('Tradicional'),
('Especial'),
('Doce'),
('Vegetariana'),
('Premium');

INSERT INTO tb_pizzas (nome, id_categoria, preco) VALUES
('Margherita', 1, 35.90),          
('Calabresa', 1, 38.50),           
('Frango com Catupiry', 2, 45.00), 
('Chocolate com Morango', 3, 42.90), 
('Brócolis com Alho', 4, 39.00),   
('Quatro Queijos', 2, 46.50),      
('Nutella com Banana', 3, 43.90),  
('Mussarela Premium', 5, 55.00);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id WHERE id_categoria = 1;