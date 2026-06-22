/*
Remove uma imagem específica vinculada a uma aula.

Utilizado quando uma imagem é cadastrada
incorretamente na aula.
*/
DELETE FROM imagem_aula
WHERE id_aula = 20
AND caminho_imagem = 'images/imgWeb/calculoPesoJS.png';