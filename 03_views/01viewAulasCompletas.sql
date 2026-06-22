/*
View responsável por reunir informações das aulas,
disciplinas, módulos e autores em uma única consulta.

Objetivo:
Facilitar consultas e relatórios sem a necessidade
de escrever vários JOINs repetidamente.
*/

CREATE VIEW vw_aulas_completas AS
SELECT
    a.id_aula,
    a.titulo,
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
    ON a.id_usuario = u.id_usuario;