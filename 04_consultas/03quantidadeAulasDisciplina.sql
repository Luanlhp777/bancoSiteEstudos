/*
Consulta responsável por contar a quantidade
de aulas cadastradas em cada disciplina.
*/
SELECT
    d.nome,
    COUNT(a.id_aula) AS total_aulas
FROM disciplina d
LEFT JOIN aula a
    ON d.id_disciplina = a.id_disciplina
GROUP BY d.nome;