// =============================================
// FUNÇÕES UTILITÁRIAS
// =============================================

/**
 * Formata data para padrão brasileiro
 * @param {string|Date} data - Data a ser formatada
 * @returns {string} Data formatada (DD/MM/AAAA)
 */
function formatarData(data) {
    const d = typeof data === 'string' ? new Date(data) : data;
    return d.toLocaleDateString('pt-BR');
}

/**
 * Formata data e hora para padrão brasileiro
 * @param {string|Date} dataHora - Data/hora a ser formatada
 * @returns {string} Data/hora formatada (DD/MM/AAAA HH:MM)
 */
function formatarDataHora(dataHora) {
    const d = typeof dataHora === 'string' ? new Date(dataHora) : dataHora;
    return d.toLocaleDateString('pt-BR') + ' ' + d.toLocaleTimeString('pt-BR', { hour: '2-digit', minute: '2-digit' });
}

/**
 * Calcula diferença em dias entre duas datas
 * @param {string|Date} data1 - Primeira data
 * @param {string|Date} data2 - Segunda data
 * @returns {number} Diferença em dias
 */
function calcularDiferencaDias(data1, data2) {
    const d1 = typeof data1 === 'string' ? new Date(data1) : data1;
    const d2 = typeof data2 === 'string' ? new Date(data2) : data2;
    const diffTime = Math.abs(d2 - d1);
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    return diffDays;
}

/**
 * Valida se é uma chave PIX válida
 * @param {string} chave - Chave PIX a ser validada
 * @param {string} tipo - Tipo da chave (cpf, email, telefone, aleatoria)
 * @returns {boolean} True se válida
 */
function validarChavePIX(chave, tipo) {
    if (!chave) return false;

    switch (tipo) {
        case 'cpf':
            // Remove caracteres não numéricos
            const cpf = chave.replace(/\D/g, '');
            return cpf.length === 11;

        case 'email':
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(chave);

        case 'telefone':
            // Remove caracteres não numéricos
            const telefone = chave.replace(/\D/g, '');
            return telefone.length >= 10 && telefone.length <= 11;

        case 'aleatoria':
            // Chave aleatória tem formato específico
            return chave.length >= 32;

        default:
            return false;
    }
}

/**
 * Gera link do WhatsApp com mensagem pré-formatada
 * @param {string} numero - Número do WhatsApp (com DDD)
 * @param {string} mensagem - Mensagem a ser enviada
 * @returns {string} URL do WhatsApp
 */
function gerarLinkWhatsApp(numero, mensagem = '') {
    const numeroLimpo = numero.replace(/\D/g, '');
    const mensagemEncoded = encodeURIComponent(mensagem);
    return `https://wa.me/55${numeroLimpo}${mensagem ? '?text=' + mensagemEncoded : ''}`;
}

/**
 * Exibe notificação toast
 * @param {string} texto - Texto da notificação
 * @param {string} tipo - Tipo: success, error, warning, info
 */
function notificar(texto, tipo = 'info') {
    const mensagemDiv = document.getElementById('mensagem');
    if (!mensagemDiv) {
        console.warn('Elemento #mensagem não encontrado');
        return;
    }

    mensagemDiv.textContent = texto;
    mensagemDiv.className = `mensagem ${tipo} show`;

    setTimeout(() => {
        mensagemDiv.classList.remove('show');
    }, 5000);
}

/**
 * Exibe diálogo de confirmação
 * @param {string} mensagem - Mensagem de confirmação
 * @returns {boolean} True se confirmado
 */
function confirmarAcao(mensagem) {
    return confirm(mensagem);
}

/**
 * Valida regras de troca entre plantões
 * @param {Object} plantaoAnunciado - Dados do plantão anunciado
 * @param {Object} plantaoOferecido - Dados do plantão oferecido
 * @returns {Object} { valido: boolean, violacoes: string[], avisos: string[] }
 */
function validarTroca(plantaoAnunciado, plantaoOferecido) {
    const violacoes = [];
    const avisos = [];

    // Verificar se mesmo módulo
    if (plantaoAnunciado.modulo !== plantaoOferecido.modulo) {
        violacoes.push(`Módulos diferentes: ${plantaoAnunciado.modulo} ≠ ${plantaoOferecido.modulo}`);
    }

    // Verificar se mesmo tipo
    if (plantaoAnunciado.tipo !== plantaoOferecido.tipo) {
        avisos.push(`Tipos diferentes: ${plantaoAnunciado.tipo} ≠ ${plantaoOferecido.tipo}`);
    }

    // Verificar se mesmo turno
    if (plantaoAnunciado.turno !== plantaoOferecido.turno) {
        avisos.push(`Turnos diferentes: ${plantaoAnunciado.turno} ≠ ${plantaoOferecido.turno}`);
    }

    // Verificar Centro Obstétrico
    if (plantaoAnunciado.tipo === 'Centro Obstétrico' || plantaoOferecido.tipo === 'Centro Obstétrico') {
        const dataAnunciado = new Date(plantaoAnunciado.data);
        const dataOferecido = new Date(plantaoOferecido.data);

        const diaSemanaAnunciado = dataAnunciado.getDay();
        const diaSemanaOferecido = dataOferecido.getDay();

        // 5 = sexta, 6 = sábado, 0 = domingo
        const fimDeSemana = [5, 6, 0];

        if (plantaoAnunciado.tipo === 'Centro Obstétrico' && !fimDeSemana.includes(diaSemanaAnunciado)) {
            avisos.push('Centro Obstétrico deve ser sex/sáb/dom');
        }

        if (plantaoOferecido.tipo === 'Centro Obstétrico' && !fimDeSemana.includes(diaSemanaOferecido)) {
            avisos.push('Centro Obstétrico deve ser sex/sáb/dom');
        }
    }

    // Verificar data limite (dia 22 do mês)
    const hoje = new Date();
    const diaAtual = hoje.getDate();
    const dataPlantao = new Date(plantaoAnunciado.data);
    const mesPlantao = dataPlantao.getMonth();
    const mesAtual = hoje.getMonth();

    if (mesPlantao === mesAtual && diaAtual > 22) {
        avisos.push('Trocas devem ser feitas até o dia 22 de cada mês');
    }

    return {
        valido: violacoes.length === 0,
        violacoes: violacoes,
        avisos: avisos
    };
}

/**
 * Exibe modal de validação de troca
 * @param {Object} validacao - Resultado da validação
 * @param {Function} onConfirmar - Callback ao confirmar
 * @param {Function} onCancelar - Callback ao cancelar
 */
function exibirModalValidacao(validacao, onConfirmar, onCancelar) {
    // Criar modal
    const modal = document.createElement('div');
    modal.className = 'modal';
    modal.style.display = 'flex';

    let conteudo = '';

    if (validacao.violacoes.length > 0) {
        conteudo = `
            <div class="modal-content" style="max-width: 600px;">
                <div class="modal-header" style="background: #cc0000; color: white;">
                    <h3>⚠️ Atenção: Troca Contra as Regras</h3>
                </div>
                <div class="modal-body">
                    <p style="margin-bottom: 16px;">
                        Esta troca viola as seguintes regras:
                    </p>
                    <ul style="color: #cc0000; margin-bottom: 20px;">
                        ${validacao.violacoes.map(v => `<li>${v}</li>`).join('')}
                    </ul>
                    ${validacao.avisos.length > 0 ? `
                        <p style="margin-bottom: 8px;">Avisos adicionais:</p>
                        <ul style="color: #cc6600; margin-bottom: 20px;">
                            ${validacao.avisos.map(a => `<li>${a}</li>`).join('')}
                        </ul>
                    ` : ''}
                    <p style="font-weight: bold; background: #fff3cd; padding: 12px; border-radius: 4px;">
                        ⚠️ Esta troca será registrada como "contra as regras".
                        Você tem certeza que deseja continuar?
                    </p>
                </div>
                <div class="modal-footer">
                    <button class="btn" onclick="this.closest('.modal').remove(); ${onCancelar ? onCancelar.toString() + '()' : ''}">
                        Cancelar
                    </button>
                    <button class="btn btn-primary" style="background: #cc0000;"
                            onclick="this.closest('.modal').remove(); ${onConfirmar ? onConfirmar.toString() + '()' : ''}">
                        Continuar Mesmo Assim
                    </button>
                </div>
            </div>
        `;
    } else if (validacao.avisos.length > 0) {
        conteudo = `
            <div class="modal-content" style="max-width: 600px;">
                <div class="modal-header" style="background: #cc6600; color: white;">
                    <h3>⚠️ Avisos sobre a Troca</h3>
                </div>
                <div class="modal-body">
                    <p style="margin-bottom: 16px;">
                        Atenção para os seguintes pontos:
                    </p>
                    <ul style="color: #cc6600; margin-bottom: 20px;">
                        ${validacao.avisos.map(a => `<li>${a}</li>`).join('')}
                    </ul>
                    <p>Deseja continuar?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" onclick="this.closest('.modal').remove(); ${onCancelar ? onCancelar.toString() + '()' : ''}">
                        Cancelar
                    </button>
                    <button class="btn btn-primary"
                            onclick="this.closest('.modal').remove(); ${onConfirmar ? onConfirmar.toString() + '()' : ''}">
                        Confirmar Troca
                    </button>
                </div>
            </div>
        `;
    } else {
        // Troca válida, confirmar direto
        if (onConfirmar) onConfirmar();
        return;
    }

    modal.innerHTML = conteudo;
    document.body.appendChild(modal);
}

/**
 * Copia texto para a área de transferência
 * @param {string} texto - Texto a ser copiado
 * @returns {Promise<boolean>} True se copiado com sucesso
 */
async function copiarParaAreaTransferencia(texto) {
    try {
        await navigator.clipboard.writeText(texto);
        notificar('Copiado para a área de transferência!', 'success');
        return true;
    } catch (error) {
        console.error('Erro ao copiar:', error);
        notificar('Erro ao copiar texto', 'error');
        return false;
    }
}

/**
 * Formata valor monetário
 * @param {number} valor - Valor a ser formatado
 * @returns {string} Valor formatado (R$ X,XX)
 */
function formatarMoeda(valor) {
    return new Intl.NumberFormat('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    }).format(valor);
}

/**
 * Debounce - Atrasa execução de função
 * @param {Function} func - Função a ser executada
 * @param {number} wait - Tempo de espera em ms
 * @returns {Function} Função com debounce
 */
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

/**
 * Verifica se data está no passado
 * @param {string|Date} data - Data a verificar
 * @returns {boolean} True se no passado
 */
function estaNoPassado(data) {
    const d = typeof data === 'string' ? new Date(data) : data;
    const hoje = new Date();
    hoje.setHours(0, 0, 0, 0);
    return d < hoje;
}

/**
 * Verifica se data é hoje
 * @param {string|Date} data - Data a verificar
 * @returns {boolean} True se é hoje
 */
function eHoje(data) {
    const d = typeof data === 'string' ? new Date(data) : data;
    const hoje = new Date();
    return d.toDateString() === hoje.toDateString();
}

/**
 * Obtém nome do dia da semana
 * @param {string|Date} data - Data
 * @returns {string} Nome do dia (Segunda, Terça, etc)
 */
function obterDiaSemana(data) {
    const d = typeof data === 'string' ? new Date(data) : data;
    const dias = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];
    return dias[d.getDay()];
}

/**
 * Sanitiza entrada HTML para prevenir XSS
 * @param {string} texto - Texto a ser sanitizado
 * @returns {string} Texto sanitizado
 */
function sanitizarHTML(texto) {
    const div = document.createElement('div');
    div.textContent = texto;
    return div.innerHTML;
}
