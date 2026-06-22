/*
Atualiza o vínculo de uma imagem cadastrada
na aula incorreta, transferindo-a para a aula correta.
*/
UPDATE imagem_aula
SET id_aula = 36
WHERE id_aula = 35
AND caminho_imagem LIKE '%0104img3%';