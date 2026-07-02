
-- Criação das tabelas

CREATE TABLE IF NOT EXISTS Processos (
    id_processo SERIAL PRIMARY KEY,
    nome_processo VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Tarefas (
    id_tarefa SERIAL PRIMARY KEY,
    nome_tarefa VARCHAR(255) NOT NULL,
    id_processo INTEGER NOT NULL,
    FOREIGN KEY (id_processo) REFERENCES Processos(id_processo)
);

CREATE TABLE IF NOT EXISTS Recursos (
    id_recurso SERIAL PRIMARY KEY,
    nome_recurso VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Execucoes_Tarefas (
    id_execucao SERIAL PRIMARY KEY,
    id_tarefa INTEGER NOT NULL,
    id_recurso INTEGER NOT NULL,
    data_inicio TIMESTAMP NOT NULL,
    data_fim TIMESTAMP NOT NULL,
    duracao_minutos INTEGER NOT NULL,
    FOREIGN KEY (id_tarefa) REFERENCES Tarefas(id_tarefa),
    FOREIGN KEY (id_recurso) REFERENCES Recursos(id_recurso)
);

-- Inserção de dados sintéticos (exemplo, o script Python irá gerar mais)

-- Processos
INSERT INTO Processos (nome_processo) VALUES
    ('Onboarding de Cliente'),
    ('Processamento de Pedido'),
    ('Suporte ao Cliente'),
    ('Desenvolvimento de Produto')
ON CONFLICT (nome_processo) DO NOTHING;

-- Recursos
INSERT INTO Recursos (nome_recurso) VALUES
    ('Analista A'),
    ('Analista B'),
    ('Analista C'),
    ('Especialista X'),
    ('Especialista Y')
ON CONFLICT (nome_recurso) DO NOTHING;

-- Tarefas (associadas aos processos)
-- Estas inserções serão mais complexas e serão geradas pelo script Python para garantir a associação correta.
-- O script Python também gerará as execuções de tarefas.
