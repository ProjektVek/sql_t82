CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf INT NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario INT,
PRIMARY KEY(id, cpf)
);

INSERT INTO tb_funcionarios (nome, cpf, cargo, salario) VALUES
('Ana Paula Souza', 123456789, 'Analista de Sistemas', 1800),
('Carlos Henrique Lima', 987654321, 'Gerente de Projetos', 4000),
('Fernanda Oliveira', 456789123, 'Desenvolvedora Backend', 3200),
('Marcos Vinicius Dias', 321654987, 'Designer UX/UI', 2800),
('Juliana Castro', 789123456, 'Analista Financeira', 1700);


SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET cargo = 'Analista de Sistemas Junior' WHERE id = 1;