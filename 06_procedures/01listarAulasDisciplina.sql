/*
Procedure responsável por listar todas as aulas
de uma disciplina específica.

Recebe o ID da disciplina como parâmetro e
retorna as aulas ordenadas da mais recente
para a mais antiga.
*/
DELIMITER $$

CREATE PROCEDURE sp_listar_aulas_por_disciplina(
    IN p_id_disciplina INT
)
BEGIN
    SELECT
        a.id_aula,
        a.titulo,
        a.data_aula,
        d.nome AS disciplina
    FROM aula a
    INNER JOIN disciplina d
        ON a.id_disciplina = d.id_disciplina
    WHERE a.id_disciplina = p_id_disciplina
    ORDER BY a.data_aula DESC;
END $$

DELIMITER ;