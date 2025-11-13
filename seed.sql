CREATE DATABASE cantina_escolar;
\c cantina_escolar

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    id_estoque INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    id_funcionario INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_total DECIMAL(10, 2) NOT NULL
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) DEFAULT 'comum',
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

INSERT

INTO produtos (id_estoque, nome, preco) VALUES
(1, 'Café com leite', 10.00),
(2, 'Café com leite e manteiga', 12.00),
(3, 'Café com leite, manteiga e café de coco', 15.00),
(4, 'Café com leite, manteiga e café de coco com manteiga', 18.00),
(5, 'Café com leite, manteiga e café de coco com manteiga e leite', 20.00),
(6, 'Café com leite, manteiga e café de coco com manteiga e leite e manteiga', 22.00),
(7, 'Café com leite, manteiga e café de coco com manteiga e leite e manteiga e café', 25.00),
(8, 'Café com leite, manteiga e café de coco com manteiga e leite e manteiga e café e açúcar', 30.00),

INTO estoque (id_produto, quantidade) VALUES
(1, 10),
(2, 5),
(3, 10),
(4, 10),
(5, 10),

INTO vendas (id_funcionario, id_produto, quantidade, preco_total) VALUES
(1, 1, 2, 20.00),
(1, 2, 1, 12.00),
(1, 3, 1, 15.00),
(1, 4, 1, 18.00),

INTO funcionarios (nome, tipo, email, senha) VALUES
('Admin', 'administrador', 'admin@email.com', '123456'),
('João', 'comum', 'joao@email.com', '123456'),
('Maria', 'comum', 'maria@email.com', '123456'),