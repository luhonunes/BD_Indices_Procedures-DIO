-- Criação do BD de exemplo:

CREATE DATABASE universidade;

USE universidade;

CREATE TABLE alunos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Curso VARCHAR(50)
);

CREATE TABLE professores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Disciplina VARCHAR(50)
);

-- A seguir, estão as procedures para manipulação de dados:

DELIMITER //

CREATE PROCEDURE ManipularDadosUniversidade(
    IN acao INT,
    IN aluno_id INT,
    IN aluno_nome VARCHAR(50),
    IN aluno_idade INT,
    IN aluno_curso VARCHAR(50)
)
BEGIN
    CASE acao
        WHEN 1 THEN -- Select
            SELECT * FROM alunos;
        WHEN 2 THEN -- Insert
            INSERT INTO alunos (Nome, Idade, Curso)
            VALUES (aluno_nome, aluno_idade, aluno_curso);
        WHEN 3 THEN -- Update
            UPDATE alunos
            SET Nome = aluno_nome, Idade = aluno_idade, Curso = aluno_curso
            WHERE ID = aluno_id;
        WHEN 4 THEN -- Delete
            DELETE FROM alunos
            WHERE ID = aluno_id;
        ELSE
            SELECT 'Ação inválida';
    END CASE;
END //

DELIMITER ;

