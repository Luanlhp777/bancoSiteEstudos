/*
Consulta responsável por contar a quantidade
de imagens cadastradas em cada aula.
*/
SELECT
    a.id_aula,
    a.titulo,
    COUNT(i.id_imagem) AS total_imagens
FROM aula a
LEFT JOIN imagem_aula i
    ON a.id_aula = i.id_aula
GROUP BY a.id_aula, a.titulo;