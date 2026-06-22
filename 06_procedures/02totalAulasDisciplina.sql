/*
Procedure responsável por exibir a quantidade
de aulas cadastradas em cada disciplina.

Utiliza COUNT() para gerar um resumo das aulas
registradas no sistema.
*/
DELIMITER $$

CREATE PROCEDURE sp_total_aulas_por_disciplina()
BEGIN
    SELECT
        d.nome AS disciplina,
        COUNT(a.id_aula) AS total_aulas
    FROM disciplina d
    LEFT JOIN aula a
        ON d.id_disciplina = a.id_disciplina
    GROUP BY d.nome
    ORDER BY total_aulas DESC;
END $$

DELIMITER ;