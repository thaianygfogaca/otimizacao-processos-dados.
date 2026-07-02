
document.addEventListener('DOMContentLoaded', function() {

    // Dados simulados que seriam obtidos de consultas SQL
    // Em um ambiente real, você faria requisições AJAX para um backend
    // que executaria as queries SQL e retornaria esses dados.
    const simulatedData = {
        processDuration: {
            labels: ['Desenvolvimento de Produto', 'Onboarding de Cliente', 'Suporte ao Cliente', 'Processamento de Pedido'],
            data: [240, 180, 120, 90] // Duração média em minutos
        },
        taskDistribution: {
            labels: ['Suporte ao Cliente', 'Processamento de Pedido', 'Onboarding de Cliente', 'Desenvolvimento de Produto'],
            data: [550, 500, 480, 470] // Quantidade de tarefas
        },
        bottlenecks: {
            labels: ['Configuração de Sistema', 'Brainstorming', 'Verificação de Crédito', 'Diagnóstico Inicial', 'Implementação', 'Embalagem', 'Coleta de Documentos', 'Recebimento do Pedido', 'Resolução de Problema', 'Envio'],
            data: [280, 260, 250, 245, 230, 220, 210, 200, 190, 185] // Duração média em minutos
        },
        resourcePerformance: {
            labels: ['Analista A', 'Analista B', 'Especialista X', 'Analista C', 'Especialista Y'],
            data: [150, 160, 170, 180, 190] // Duração média em minutos
        }
    };

    // Gráfico: Duração Média das Tarefas por Processo
    new Chart(document.getElementById('chartProcessDuration'), {
        type: 'bar',
        data: {
            labels: simulatedData.processDuration.labels,
            datasets: [{
                label: 'Duração Média (Minutos)',
                data: simulatedData.processDuration.data,
                backgroundColor: 'rgba(75, 192, 192, 0.6)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Gráfico: Quantidade de Tarefas por Processo
    new Chart(document.getElementById('chartTaskDistribution'), {
        type: 'pie',
        data: {
            labels: simulatedData.taskDistribution.labels,
            datasets: [{
                label: 'Quantidade de Tarefas',
                data: simulatedData.taskDistribution.data,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.6)',
                    'rgba(54, 162, 235, 0.6)',
                    'rgba(255, 206, 86, 0.6)',
                    'rgba(75, 192, 192, 0.6)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
        }
    });

    // Gráfico: Top 10 Tarefas com Maior Duração Média (Gargalos)
    new Chart(document.getElementById('chartBottlenecks'), {
        type: 'horizontalBar',
        data: {
            labels: simulatedData.bottlenecks.labels,
            datasets: [{
                label: 'Duração Média (Minutos)',
                data: simulatedData.bottlenecks.data,
                backgroundColor: 'rgba(153, 102, 255, 0.6)',
                borderColor: 'rgba(153, 102, 255, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    beginAtZero: true
                }
            }
        }
    });

    // Gráfico: Duração Média de Tarefas por Recurso
    new Chart(document.getElementById('chartResourcePerformance'), {
        type: 'bar',
        data: {
            labels: simulatedData.resourcePerformance.labels,
            datasets: [{
                label: 'Duração Média (Minutos)',
                data: simulatedData.resourcePerformance.data,
                backgroundColor: 'rgba(255, 159, 64, 0.6)',
                borderColor: 'rgba(255, 159, 64, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});
