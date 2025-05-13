CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(10),
    nota_final DECIMAL(4,2)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota_final) VALUES
('Ana Beatriz Santos', 15, '9A', 8.5),
('Lucas Ferreira', 16, '9B', 6.2),
('Mariana Lima', 14, '8A', 7.8),
('Rafael Souza', 17, '9C', 5.9),
('Isabela Martins', 15, '8B', 9.0),
('Caio Oliveira', 16, '9A', 4.5),
('João Pedro Costa', 14, '8C', 7.2),
('Larissa Monteiro', 15, '8A', 6.8);

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes
SET nota_final = 7.5
WHERE id = 7;
