# Personalizando o Banco de Dados com Índices e Procedures

Este projeto foi elaborado como requisito para o curso Formação SQL Database Specialist oferecido pela plataforma Digital Innovation One (DIO). 

## Projeto de Criação de Índices em Banco de Dados

Este projeto tem como objetivo criar índices para consultas em um cenário fictício chamado "company". Serão criados índices com base nas queries SQL utilizadas para recuperação de informações, levando em consideração os dados mais acessados e mais relevantes no contexto.

### **Requisitos**
Para executar o projeto, você precisa ter instalado os seguintes componentes:

- Banco de Dados MySQL: Certifique-se de ter o MySQL instalado e em execução na sua máquina.

- Cliente MySQL: Utilize um cliente MySQL, como o MySQL Workbench ou o HeidiSQL, para executar os comandos SQL.

### **Descrição do Projeto**
O projeto consiste em criar índices para as tabelas do banco de dados "company", com base nas seguintes queries SQL:

1. Qual o departamento com maior número de pessoas?

    Para responder a essa pergunta, será criado um índice na coluna numero_pessoas da tabela departamentos, que representa o número de pessoas em cada departamento. Esse índice ajudará a acelerar a consulta para encontrar o departamento com maior número de pessoas.

2. Quais são os departamentos por cidade?

    Para responder a essa pergunta, será criado um índice na coluna cidade da tabela departamentos. Esse índice permitirá uma busca mais rápida pelos departamentos de uma cidade específica.

3. Relação de empregados por departamento

    Para responder a essa pergunta, será criado um índice na coluna departamento_id da tabela empregados. Esse índice facilitará a busca e a associação dos empregados aos seus respectivos departamentos.

### **Arquivos Gerados**
O projeto contém os seguintes arquivos:

**queries.sql**: Este arquivo contém as queries SQL para responder as perguntas do projeto.

**indexes.sql**: Este arquivo contém os comandos SQL para criação dos índices nas tabelas do banco de dados "company".

### **Utilização**
Importe o arquivo queries.sql no seu cliente MySQL e execute as queries para obter as respostas para as perguntas do projeto.

Importe o arquivo indexes.sql no seu cliente MySQL e execute os comandos SQL para criar os índices nas tabelas do banco de dados "company".


### **Observações**
Este projeto foi desenvolvido com o objetivo de demonstrar a criação de índices em um banco de dados MySQL para otimizar consultas e melhorar a performance do sistema. Os índices foram criados com base nas necessidades das queries utilizadas no cenário "company". Sinta-se à vontade para utilizá-lo como referência ou base para outros projetos.

## Projeto de Manipulação de Dados com Procedures
Este projeto consiste na criação de um conjunto de procedures para manipulação de dados em dois bancos de dados distintos: "universidade" e "e-commerce". As procedures foram desenvolvidas de forma a serem compatíveis com ambos os bancos de dados.

### **Requisitos**
Para executar as procedures e utilizar o projeto, você precisa ter instalado os seguintes componentes:

- Banco de Dados MySQL: Certifique-se de ter o MySQL instalado e em execução na sua máquina.

- Cliente MySQL: Utilize um cliente MySQL, como o MySQL Workbench ou o HeidiSQL, para executar os comandos SQL e as procedures.

### **Banco de Dados "universidade"**
#### Estrutura do Banco de Dados
O banco de dados "universidade" possui uma única tabela chamada "alunos", com as seguintes colunas:

* ID (INT): ID do aluno (chave primária).
* Nome (VARCHAR): Nome do aluno.
* Idade (INT): Idade do aluno.
* Curso (VARCHAR): Curso que o aluno está cursando.
#### Procedures Criadas
1. **ManipularDadosUniversidade**: Esta procedure aceita quatro ações diferentes através do parâmetro **'acao'**. As ações são:

    1. (Select): Realiza uma consulta para obter todos os alunos cadastrados na tabela "alunos".
    2. (Insert): Insere um novo aluno na tabela "alunos" com os parâmetros informados (aluno_nome, aluno_idade e aluno_curso).
    3. (Update): Atualiza as informações de um aluno existente na tabela "alunos" com os parâmetros informados (aluno_id, aluno_nome, aluno_idade e aluno_curso).
    4. (Delete): Remove um aluno da tabela "alunos" com base no aluno_id.
### **Banco de Dados "e-commerce"**
#### Estrutura do Banco de Dados
O banco de dados "e-commerce" possui uma única tabela chamada "produtos", com as seguintes colunas:

* ID (INT): ID do produto (chave primária).
* Nome (VARCHAR): Nome do produto.
* Preco (DECIMAL): Preço do produto.
* Estoque (INT): Quantidade em estoque do produto.
#### Procedures Criadas
1. **ManipularDadosEcommerce**: Esta procedure aceita quatro ações diferentes através do parâmetro **'acao'**. As ações são:

    1. (Select): Realiza uma consulta para obter todos os produtos cadastrados na tabela "produtos".
    2. (Insert): Insere um novo produto na tabela "produtos" com os parâmetros informados (produto_nome, produto_preco e produto_estoque).
    3. (Update): Atualiza as informações de um produto existente na tabela "produtos" com os parâmetros informados (produto_id, produto_nome, produto_preco e produto_estoque).
    4. (Delete): Remove um produto da tabela "produtos" com base no produto_id.

### **Arquivos Gerados**
O projeto consiste em dois arquivos:

**universidade_procedures.sql**: Este arquivo contém a criação da procedure ManipularDadosUniversidade para o banco de dados "universidade".

**ecommerce_procedures.sql**: Este arquivo contém a criação da procedure ManipularDadosEcommerce para o banco de dados "e-commerce".

### **Utilização**
Para utilizar as procedures, siga os passos abaixo:

Importe o arquivo universidade_procedures.sql no banco de dados "universidade" e o arquivo ecommerce_procedures.sql no banco de dados "e-commerce".

Utilize um cliente MySQL para executar as procedures. Passe os parâmetros adequados para cada ação conforme descrito na seção "Procedures Criadas".

### **Observações**
Certifique-se de que as tabelas e colunas dos bancos de dados "universidade" e "e-commerce" correspondam às definições utilizadas nas procedures.

Este projeto foi desenvolvido com o objetivo de demonstrar a criação e utilização de procedures para manipulação de dados em diferentes bancos de dados MySQL. Sinta-se à vontade para utilizá-lo como referência ou base para outros projetos.