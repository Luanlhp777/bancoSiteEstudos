# Banco de Dados - Meu Site de Estudos

## Sobre

Este diretório contém toda a estrutura SQL utilizada no projeto **Meu Site de Estudos**.

O objetivo do banco é armazenar módulos, disciplinas, aulas e imagens, substituindo gradualmente os dados estáticos armazenados em arquivos JavaScript.

---

## Modelagem

Relacionamentos do sistema:

```text
USUARIO 1 ─── N AULA

MODULO 1 ─── N DISCIPLINA

DISCIPLINA 1 ─── N AULA

AULA 1 ─── N IMAGEM_AULA
```

---

## Estrutura de Pastas

```text
banco/
├── 01_estrutura/
│   ├── 01_create_database.sql
│   └── 02_create_tables.sql
│
├── 02_inserts/
│   ├── 01_insert_usuario.sql
│   ├── 02_insert_modulo.sql
│   ├── 03_insert_disciplina.sql
│   ├── 04_insert_aula.sql
│   └── 05_insert_imagem_aula.sql
│
├── 03_views/
│   └── 01_view_aulas_completas.sql
│
├── 04_consultas/
│   ├── 01_todas_aulas_cadastradas.sql
│   ├── 02_ultimas_aulas_cadastradas.sql
│   ├── 03_quantidade_aulas_disciplina.sql
│   ├── 04_quantidade_imagens_aula.sql
│   ├── 05_consulta_imagens_aula.sql
│   └── 06_consulta_relacionamento.sql
│
├── 05_manutencao/
│   ├── 01_delete_imagem_aula.sql
│   └── 02_alteracao_imagem_id.sql
│
└── README.md
```

---

## Descrição das Pastas

### 01_estrutura

Scripts responsáveis pela criação do banco de dados e das tabelas.

### 02_inserts

Scripts utilizados para inserção dos dados iniciais do sistema.

### 03_views

Views criadas para simplificar consultas e relatórios.

### 04_consultas

Consultas utilizadas para validação dos dados e geração de informações.

### 05_manutencao

Scripts utilizados para correção, atualização e remoção de registros.

---

## Tecnologias Utilizadas

- MySQL
- SQL
- Modelagem Relacional
- MySQL Workbench

---

## Funcionalidades Implementadas

- Criação do banco de dados
- Criação das tabelas
- Relacionamentos entre entidades
- Inserção de dados
- Views
- Consultas com JOIN
- Atualização de registros
- Exclusão de registros
- Organização dos scripts por categoria

---

## Projeto Relacionado

O banco de dados foi desenvolvido para o projeto **Meu Site de Estudos**, utilizado para registrar aulas, disciplinas, módulos e materiais produzidos durante o curso de Desenvolvimento de Sistemas.

---

## Autor

**Luan Araujo**

Desenvolvimento de Sistemas - ETEC Albert Einstein

2026