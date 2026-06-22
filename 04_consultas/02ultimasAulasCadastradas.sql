/*
Consulta responsável por exibir todas as aulas
cadastradas, ordenando da mais recente para a mais antiga.
*/
SELECT
    titulo,
    data_aula
FROM aula
ORDER BY data_aula DESC;