# Projeto de Otimização de Rotinas e Processos Empresariais

## 1. Visão Geral

Este projeto demonstra a aplicação de **SQL** para modelagem, geração e análise de dados, e **JavaScript** para visualização web, com o objetivo de identificar ineficiências e otimizar rotinas e processos dentro de um ambiente empresarial simulado. Utilizando dados sintéticos de atividades e durações de tarefas armazenados em um banco de dados relacional, o projeto extrai insights acionáveis que podem guiar a tomada de decisões para melhoria contínua da produtividade e redução de gargalos.

## 2. Contexto para Vagas de Assistente de Dados

Para um candidato a **Assistente de Dados**, este projeto destaca as seguintes habilidades e competências:

*   **Modelagem de Banco de Dados:** Criação de um esquema de banco de dados relacional (PostgreSQL/MySQL) para estruturar informações sobre processos, tarefas e recursos.
*   **Manipulação e Geração de Dados com SQL:** Utilização de comandos SQL para inserir dados sintéticos, simulando a ingestão de dados de sistemas reais.
*   **Análise de Dados com SQL:** Desenvolvimento de consultas SQL complexas para extrair insights, identificar padrões de duração, localizar potenciais gargalos e avaliar o desempenho de recursos.
*   **Visualização de Dados Web (JavaScript):** Criação de um dashboard interativo em HTML, CSS e JavaScript (utilizando Chart.js) para apresentar os resultados das análises SQL de forma clara e dinâmica.
*   **Geração de Insights:** Capacidade de traduzir dados em recomendações práticas para otimização de processos.
*   **Proficiência em Ferramentas:** Demonstração de uso de SQL (PostgreSQL/MySQL) e JavaScript (HTML/CSS/Chart.js) para manipulação, análise e apresentação de dados.

## 3. Estrutura do Projeto

```
process_optimization_project/
├── data/
│   ├── schema_and_data.sql      # Script SQL para criação do esquema do BD
│   └── insert_data.sql          # Script SQL com INSERTs de dados sintéticos
├── analysis.sql                 # Script SQL com consultas de análise
├── index.html                   # Página principal do dashboard web
├── style.css                    # Estilos CSS para o dashboard
├── script.js                    # Lógica JavaScript para gráficos (Chart.js)
└── README.md                    # Este arquivo
```

## 4. Metodologia

### 4.1. Modelagem e Geração de Dados

O arquivo `schema_and_data.sql` define a estrutura do banco de dados com tabelas para `Processos`, `Tarefas`, `Recursos` e `Execucoes_Tarefas`. O script `insert_data.sql` contém comandos SQL gerados automaticamente para popular essas tabelas com dados sintéticos, simulando um cenário real de registro de atividades empresariais.

### 4.2. Análise de Dados com SQL

O script `analysis.sql` contém uma série de consultas SQL projetadas para extrair insights do banco de dados. Essas consultas abordam:

*   **Duração Média das Tarefas por Processo:** Para comparar a eficiência geral de cada processo.
*   **Quantidade de Tarefas por Processo:** Para entender a distribuição do volume de trabalho.
*   **Top 10 Tarefas com Maior Duração Média:** Para identificar potenciais gargalos.
*   **Duração Média de Tarefas por Recurso:** Para avaliar a eficiência individual ou carga de trabalho.
*   **Duração Média de Tarefas por Recurso e Processo:** Para detalhar o desempenho em contextos específicos.
*   **Tarefas com Maior Variação de Duração:** Para apontar inconsistências nos processos.

### 4.3. Visualização Web com JavaScript

Os resultados das análises SQL são apresentados em um dashboard web interativo. O arquivo `index.html` estrutura a página, `style.css` define a aparência e `script.js` utiliza a biblioteca Chart.js para renderizar gráficos dinâmicos. Em um ambiente real, o JavaScript faria requisições a um backend que executaria as queries SQL e retornaria os dados para visualização. Neste projeto, os dados são simulados diretamente no `script.js` para demonstrar a capacidade de visualização.

## 5. Como Executar o Projeto

Para replicar e explorar este projeto, siga os passos abaixo:

1.  **Clone o repositório:**
    ```bash
    git clone <URL_DO_REPOSITORIO>
    cd process_optimization_project
    ```
2.  **Configurar o Banco de Dados (PostgreSQL ou MySQL):**
    *   Certifique-se de ter um servidor PostgreSQL ou MySQL instalado e rodando.
    *   Crie um novo banco de dados (ex: `process_db`).
    *   Execute o script `data/schema_and_data.sql` para criar as tabelas.
    *   Execute o script `data/insert_data.sql` para popular as tabelas com dados sintéticos.
    
    Exemplo para PostgreSQL via `psql`:
    ```bash
    psql -U seu_usuario -d process_db -f data/schema_and_data.sql
    psql -U seu_usuario -d process_db -f data/insert_data.sql
    ```
    (Adapte para MySQL usando `mysql -u seu_usuario -p process_db < data/schema_and_data.sql`)

3.  **Executar as Análises SQL:**
    *   Abra seu cliente SQL preferido (pgAdmin, MySQL Workbench, DBeaver, etc.) ou use a linha de comando.
    *   Conecte-se ao banco de dados `process_db`.
    *   Execute as consultas presentes no arquivo `analysis.sql` para obter os resultados da análise.

4.  **Visualizar o Dashboard Web:**
    *   Abra o arquivo `index.html` diretamente no seu navegador web.
    *   Os gráficos serão carregados com os dados simulados (que representam os resultados que você obteria das queries SQL).

## 6. Tecnologias Utilizadas

*   **SQL:** Para modelagem de banco de dados e análise de dados (compatível com PostgreSQL e MySQL).
*   **HTML:** Estrutura da página web.
*   **CSS:** Estilização do dashboard.
*   **JavaScript:** Lógica de visualização e interatividade.
*   **Chart.js:** Biblioteca JavaScript para criação de gráficos.

## 7. Próximos Passos e Melhorias Futuras

*   **Conexão Real com Banco de Dados:** Implementar um backend simples (ex: Node.js com Express) para que o dashboard JavaScript possa fazer requisições reais ao banco de dados e exibir dados atualizados.
*   **Filtros e Interatividade:** Adicionar filtros no dashboard (por processo, recurso, período) para uma análise mais dinâmica.
*   **Dashboards Mais Complexos:** Explorar outras bibliotecas JavaScript (D3.js, Plotly.js) para visualizações mais avançadas.
*   **Otimização de Queries:** Melhorar o desempenho das consultas SQL para grandes volumes de dados.
*   **Integração com Ferramentas de BI:** Exportar os resultados das queries SQL para ferramentas como Power BI ou Tableau para criar relatórios executivos.
