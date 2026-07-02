
-- Análise de Eficiência e Gargalos

-- 1. Duração Média das Tarefas por Processo
-- Identifica a média de tempo gasto em tarefas dentro de cada processo.
SELECT
    P.nome_processo,
    AVG(ET.duracao_minutos) AS media_duracao_minutos
FROM Execucoes_Tarefas ET
JOIN Tarefas T ON ET.id_tarefa = T.id_tarefa
JOIN Processos P ON T.id_processo = P.id_processo
GROUP BY P.nome_processo
ORDER BY media_duracao_minutos DESC;

-- 2. Quantidade de Tarefas por Processo
-- Mostra a distribuição do volume de trabalho entre os processos.
SELECT
    P.nome_processo,
    COUNT(ET.id_execucao) AS total_execucoes_tarefas
FROM Execucoes_Tarefas ET
JOIN Tarefas T ON ET.id_tarefa = T.id_tarefa
JOIN Processos P ON T.id_processo = P.id_processo
GROUP BY P.nome_processo
ORDER BY total_execucoes_tarefas DESC;

-- 3. Top 10 Tarefas com Maior Duração Média (Potenciais Gargalos)
-- Aponta as tarefas que mais consomem tempo, independentemente do processo.
SELECT
    T.nome_tarefa,
    AVG(ET.duracao_minutos) AS media_duracao_minutos
FROM Execucoes_Tarefas ET
JOIN Tarefas T ON ET.id_tarefa = T.id_tarefa
GROUP BY T.nome_tarefa
ORDER BY media_duracao_minutos DESC
LIMIT 10;

-- 4. Duração Média de Tarefas por Recurso
-- Avalia a eficiência ou carga de trabalho de cada recurso.
SELECT
    R.nome_recurso,
    AVG(ET.duracao_minutos) AS media_duracao_minutos
FROM Execucoes_Tarefas ET
JOIN Recursos R ON ET.id_recurso = R.id_recurso
GROUP BY R.nome_recurso
ORDER BY media_duracao_minutos DESC;

-- 5. Duração Média de Tarefas por Recurso e Processo
-- Detalha o desempenho do recurso dentro de processos específicos.
SELECT
    P.nome_processo,
    R.nome_recurso,
    AVG(ET.duracao_minutos) AS media_duracao_minutos
FROM Execucoes_Tarefas ET
JOIN Tarefas T ON ET.id_tarefa = T.id_tarefa
JOIN Processos P ON T.id_processo = P.id_processo
JOIN Recursos R ON ET.id_recurso = R.id_recurso
GROUP BY P.nome_processo, R.nome_recurso
ORDER BY P.nome_processo, media_duracao_minutos DESC;

-- 6. Tarefas com Maior Variação de Duração (Indica inconsistência)
-- Ajuda a identificar tarefas que não têm um tempo de execução padronizado.
SELECT
    T.nome_tarefa,
    AVG(ET.duracao_minutos) AS media_duracao_minutos,
    STDDEV(ET.duracao_minutos) AS desvio_padrao_duracao
FROM Execucoes_Tarefas ET
JOIN Tarefas T ON ET.id_tarefa = T.id_tarefa
GROUP BY T.nome_tarefa
HAVING COUNT(ET.id_execucao) > 1 -- Garante que há mais de uma execução para calcular o desvio padrão
ORDER BY desvio_padrao_duracao DESC
LIMIT 10;
