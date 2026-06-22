/*
Tabela responsável por armazenar o histórico
de alterações realizadas nas aulas.

Utilizada pela trigger de auditoria para
registrar mudanças de título.
*/
CREATE TABLE log_aula (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_aula INT,
    acao VARCHAR(50),
    titulo_antigo VARCHAR(150),
    titulo_novo VARCHAR(150),
    data_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);