-- Pergunta 1: Qual o departamento com maior número de pessoas?

SELECT Dno, COUNT(*) AS Num_Pessoas
FROM employee
GROUP BY Dno
ORDER BY Num_Pessoas DESC
LIMIT 1;

-- Pergunta 2: Quais são os departamentos por cidade?

SELECT Dname, City
FROM department
INNER JOIN employee ON department.Dnumber = employee.Dno
GROUP BY Dname, City;

-- Pergunta 3: Relação de empregados por departamento.

SELECT Dname, COUNT(*) AS Num_Empregados
FROM department
INNER JOIN employee ON department.Dnumber = employee.Dno
GROUP BY Dname;
