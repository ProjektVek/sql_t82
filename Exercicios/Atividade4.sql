CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
id_classe BIGINT NOT NULL,
poder_de_ataque BIGINT,
poder_de_defesa BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY( id_classe ) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome) VALUES 
('Guerreiro'),
('Mago'),
('Arqueiro'),
('Paladino'),
('Assassino');

INSERT INTO tb_personagens (nome, id_classe, poder_de_ataque, poder_de_defesa) VALUES
('Thorin', 1, 2500, 1800),       
('Eldrin', 2, 1900, 1200),       
('Lyanna', 3, 2100, 1700),       
('Sir Gareth', 4, 1800, 2200),   
('Nyx', 5, 2700, 1300),          
('Alaric', 1, 1500, 1600),       
('Mira', 2, 3000, 2500),         
('Darian', 3, 1100, 900);

SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_personagens.id_classe = tb_classes.id WHERE id_classe = 3;



