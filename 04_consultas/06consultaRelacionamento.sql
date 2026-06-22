/*
Consulta responsável por exibir informações completas
das aulas, incluindo disciplina, módulo e autor.

Objetivo:
Demonstrar os relacionamentos entre as tabelas
aula, disciplina, modulo e usuario utilizando JOIN.
*/
SELECT
    aula.id_aula,
    aula.titulo,
    aula.data_aula,
    disciplina.nome AS disciplina,
    modulo.nome AS modulo,
    usuario.nome AS autor
FROM aula
INNER JOIN disciplina
    ON aula.id_disciplina = disciplina.id_disciplina
INNER JOIN modulo
    ON disciplina.id_modulo = modulo.id_modulo
INNER JOIN usuario
    ON aula.id_usuario = usuario.id_usuario;