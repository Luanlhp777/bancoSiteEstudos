/*
Consulta responsável por exibir todas as aulas
cadastradas no sistema utilizando a View
vw_aulas_completas.

Os resultados são ordenados da aula mais recente
para a mais antiga.
*/
SELECT *
FROM vw_aulas_completas
ORDER BY data_aula DESC;