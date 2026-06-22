/*
Procedure responsável por exibir todas as
informações de uma aula específica.

Retorna dados da aula, disciplina,
módulo e autor.
*/

DELIMITER $$

CREATE PROCEDURE sp_buscar_aula_completa(
    IN p_id_aula INT
)
BEGIN
    SELECT
        a.id_aula,
        a.titulo,
        a.conteudo,
        a.data_aula,
        d.nome AS disciplina,
        m.nome AS modulo,
        u.nome AS autor
    FROM aula a
    INNER JOIN disciplina d
        ON a.id_disciplina = d.id_disciplina
    INNER JOIN modulo m
        ON d.id_modulo = m.id_modulo
    INNER JOIN usuario u
        ON a.id_usuario = u.id_usuario
    WHERE a.id_aula = p_id_aula;
END $$

DELIMITER ;