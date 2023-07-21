-- Criação do BD de exemplo:

CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50),
    Endereco VARCHAR(100)
);

CREATE TABLE produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT
);


-- A seguir, estão as procedures para manipulação de dados:

DELIMITER //

CREATE PROCEDURE ManipularDadosEcommerce(
    IN acao INT,
    IN produto_id INT,
    IN produto_nome VARCHAR(50),
    IN produto_preco DECIMAL(10, 2),
    IN produto_estoque INT
)
BEGIN
    CASE acao
        WHEN 1 THEN -- Select
            SELECT * FROM produtos;
        WHEN 2 THEN -- Insert
            INSERT INTO produtos (Nome, Preco, Estoque)
            VALUES (produto_nome, produto_preco, produto_estoque);
        WHEN 3 THEN -- Update
            UPDATE produtos
            SET Nome = produto_nome, Preco = produto_preco, Estoque = produto_estoque
            WHERE ID = produto_id;
        WHEN 4 THEN -- Delete
            DELETE FROM produtos
            WHERE ID = produto_id;
        ELSE
            SELECT 'Ação inválida';
    END CASE;
END //

DELIMITER ;
