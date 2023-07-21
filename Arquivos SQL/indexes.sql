-- Pergunta 1: Qual o departamento com maior número de pessoas?

CREATE INDEX idx_employee_Dno ON employee (Dno);


-- Pergunta 2: Quais são os departamentos por cidade?

CREATE INDEX idx_department_Dnumber ON department (Dnumber);
CREATE INDEX idx_employee_Dno_City ON employee (Dno, City);


-- Pergunta 3: Relação de empregados por departamento.

CREATE INDEX idx_department_Dnumber ON department (Dnumber);
CREATE INDEX idx_employee_Dno ON employee (Dno);

