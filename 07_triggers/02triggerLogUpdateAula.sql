/*
Trigger responsável por registrar alterações
no título das aulas.

Sempre que o título de uma aula for alterado,
a mudança será armazenada na tabela log_aula.
*/
DELIMITER $$

CREATE TRIGGER trg_log_update_aula
AFTER UPDATE ON aula
FOR EACH ROW
BEGIN
    IF OLD.titulo <> NEW.titulo THEN
        INSERT INTO log_aula (
            id_aula,
            acao,
            titulo_antigo,
            titulo_novo
        )
        VALUES (
            OLD.id_aula,
            'ATUALIZACAO_TITULO',
            OLD.titulo,
            NEW.titulo
        );
    END IF;
END $$

DELIMITER ;