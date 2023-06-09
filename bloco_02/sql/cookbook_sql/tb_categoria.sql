USE db_quitanda; 

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    descricao varchar(255) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");

SELECT * FROM tb_categoria;

-- Adicionando a nova coluna
ALTER TABLE tb_produtos ADD categoria_id bigint;

-- Adicionando a constraint
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Pitaya", 10, 15.00, 1);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Agrião", 15, 3.00, 2);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Cenoura", 18, 3.50, 3);

SELECT * FROM tb_produtos;

-- INNER JOIN
SELECT nome, quantidade, preco from tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- LEFT JOIN
SELECT nome, quantidade, preco FROM tb_produtos
LEFT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- RIGHT JOIN
SELECT descricao FROM tb_categoria
RIGHT JOIN tb_produtos ON tb_produtos.categoria_id = tb_categoria.id;