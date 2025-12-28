// =============================================
// SISTEMA DE TROCAS - MODAL PLANILHA
// =============================================

/**
 * Exibe modal com instruções para atualizar a planilha oficial
 * quando uma troca mútua (não paga) for confirmada
 */
function exibirModalPlanilha(trocaInfo) {
    const {
        numeroAnunciante,
        numeroOfertante,
        nomeAnunciante,
        nomeOfertante,
        plantaoAnunciado,
        plantaoOferecido,
        dataPlantaoAnunciado,
        dataPlantaoOferecido
    } = trocaInfo;

    // Formatar texto para copiar (formato: 50T55)
    const textoCopia = `${numeroAnunciante}T${numeroOfertante}`;

    // Criar modal
    const modal = document.createElement('div');
    modal.id = 'modalPlanilha';
    modal.className = 'modal show';
    modal.innerHTML = `
        <div class="modal-content" style="max-width: 700px;">
            <div class="modal-header">
                <h3 class="modal-title">✅ Troca Confirmada - Atualizar Planilha Oficial</h3>
                <button class="modal-close" onclick="fecharModalPlanilha()">&times;</button>
            </div>
            <div class="modal-body">
                <div class="mensagem info show">
                    <strong>🎉 Troca realizada com sucesso!</strong><br>
                    <strong>${nomeAnunciante}</strong> (#${numeroAnunciante}) trocou com <strong>${nomeOfertante}</strong> (#${numeroOfertante})
                </div>

                <div style="margin: 24px 0; padding: 20px; background: #f8f8f8; border-radius: 8px; border: 2px solid #d0d0d0;">
                    <h4 style="margin-top: 0;">📋 Detalhes da Troca:</h4>
                    <p style="margin: 8px 0;">
                        <strong>${nomeAnunciante}</strong> (#${numeroAnunciante})<br>
                        Plantão: ${plantaoAnunciado} - ${formatarDataBrasileira(dataPlantaoAnunciado)}
                    </p>
                    <p style="margin: 8px 0; text-align: center; font-size: 20px;">⇅</p>
                    <p style="margin: 8px 0;">
                        <strong>${nomeOfertante}</strong> (#${numeroOfertante})<br>
                        Plantão: ${plantaoOferecido} - ${formatarDataBrasileira(dataPlantaoOferecido)}
                    </p>
                </div>

                <div class="mensagem warning show" style="margin: 20px 0;">
                    <strong>⚠️ IMPORTANTE: Atualizar Planilha Oficial</strong><br>
                    Para oficializar a troca, você precisa registrar na planilha do Google Sheets.
                </div>

                <h4>📝 Instruções:</h4>
                <ol style="line-height: 1.8; margin: 16px 0;">
                    <li>Clique no botão abaixo para abrir a planilha oficial</li>
                    <li>Localize a linha do seu plantão (data: ${formatarDataBrasileira(dataPlantaoAnunciado)})</li>
                    <li>Na coluna "Troca de Plantão", copie e cole o código abaixo:</li>
                </ol>

                <div style="background: #000; color: #fff; padding: 20px; border-radius: 8px; margin: 20px 0; text-align: center;">
                    <div style="font-size: 14px; margin-bottom: 8px; opacity: 0.8;">Código da troca:</div>
                    <div id="textoCopiar" style="font-size: 32px; font-weight: bold; letter-spacing: 2px; margin: 12px 0;">
                        ${textoCopia}
                    </div>
                    <button onclick="copiarTexto('${textoCopia}')" class="btn btn-primary" style="margin-top: 12px;">
                        📋 Copiar Código
                    </button>
                </div>

                <div style="background: #f0f8ff; padding: 16px; border-radius: 8px; border-left: 4px solid #000; margin: 20px 0;">
                    <strong>💬 Mensagem para o grupo (opcional):</strong>
                    <div id="mensagemGrupo" style="background: #fff; padding: 12px; margin-top: 8px; border-radius: 4px; border: 1px solid #d0d0d0; font-family: monospace; font-size: 13px;">
Boa tarde gente, pra editar a planilha dos plantões coloquem nesse formato: ${textoCopia} (número ${numeroAnunciante} trocou com o número ${numeroOfertante}) na coluna de troca de plantão. Obrigada ✨
                    </div>
                    <button onclick="copiarMensagemGrupo()" class="btn btn-secondary btn-sm" style="margin-top: 8px;">
                        📋 Copiar Mensagem
                    </button>
                </div>

                <div style="display: flex; gap: 12px; margin-top: 24px;">
                    <a href="https://docs.google.com/spreadsheets/d/1fMuF5wYc0pWnsx0nFVpLxUVKlHYJd3LmR2_ceTJy9mM/edit"
                       target="_blank"
                       class="btn btn-primary"
                       style="flex: 1; text-decoration: none; display: inline-block;">
                        📊 Abrir Planilha Oficial
                    </a>
                    <button onclick="marcarPlanilhaAtualizada('${trocaInfo.trocaId}')" class="btn btn-success" style="flex: 1;">
                        ✅ Já Atualizei a Planilha
                    </button>
                </div>

                <p style="margin-top: 20px; font-size: 13px; color: #666; text-align: center;">
                    <strong>Nota:</strong> Ambas as partes devem atualizar a planilha para garantir que a troca seja registrada corretamente.
                </p>
            </div>
        </div>
    `;

    document.body.appendChild(modal);

    // Registrar que modal foi exibido
    registrarExibicaoModal(trocaInfo.trocaId);
}

/**
 * Copia o código da troca para a área de transferência
 */
function copiarTexto(texto) {
    navigator.clipboard.writeText(texto).then(() => {
        // Feedback visual
        const btn = event.target;
        const textoOriginal = btn.innerHTML;
        btn.innerHTML = '✅ Copiado!';
        btn.style.background = '#28a745';

        setTimeout(() => {
            btn.innerHTML = textoOriginal;
            btn.style.background = '';
        }, 2000);
    }).catch(err => {
        console.error('Erro ao copiar:', err);
        alert('Erro ao copiar. Selecione e copie manualmente: ' + texto);
    });
}

/**
 * Copia a mensagem formatada para o grupo
 */
function copiarMensagemGrupo() {
    const mensagem = document.getElementById('mensagemGrupo').textContent;
    navigator.clipboard.writeText(mensagem).then(() => {
        const btn = event.target;
        const textoOriginal = btn.innerHTML;
        btn.innerHTML = '✅ Mensagem Copiada!';
        btn.style.background = '#28a745';
        btn.style.color = '#fff';

        setTimeout(() => {
            btn.innerHTML = textoOriginal;
            btn.style.background = '';
            btn.style.color = '';
        }, 2000);
    }).catch(err => {
        console.error('Erro ao copiar:', err);
        alert('Erro ao copiar mensagem');
    });
}

/**
 * Fecha o modal da planilha
 */
function fecharModalPlanilha() {
    const modal = document.getElementById('modalPlanilha');
    if (modal) {
        modal.remove();
    }
}

/**
 * Marca que o usuário atualizou a planilha
 */
async function marcarPlanilhaAtualizada(trocaId) {
    try {
        const usuario = JSON.parse(sessionStorage.getItem('usuario'));

        // Atualizar no banco que a planilha foi marcada como atualizada
        const { error } = await supabase
            .from('trocas_confirmadas')
            .update({
                planilha_atualizada: true,
                data_atualizacao_planilha: new Date().toISOString()
            })
            .eq('id', trocaId);

        if (error) throw error;

        // Mostrar mensagem de sucesso
        alert('✅ Ótimo! Obrigado por atualizar a planilha.\n\nA troca já está oficialmente registrada.');

        fecharModalPlanilha();

        // Recarregar página ou atualizar lista
        if (typeof carregarEventos === 'function') {
            await carregarEventos();
        }

    } catch (error) {
        console.error('Erro ao marcar planilha:', error);
        alert('Erro ao confirmar atualização. Mas não se preocupe, a troca já foi registrada no sistema.');
    }
}

/**
 * Registra que o modal foi exibido
 */
async function registrarExibicaoModal(trocaId) {
    try {
        await supabase
            .from('trocas_confirmadas')
            .update({
                modal_planilha_exibido: true,
                data_exibicao_modal: new Date().toISOString()
            })
            .eq('id', trocaId);
    } catch (error) {
        console.error('Erro ao registrar exibição do modal:', error);
    }
}

/**
 * Formata data para padrão brasileiro
 */
function formatarDataBrasileira(data) {
    if (!data) return '';
    const d = new Date(data);
    return d.toLocaleDateString('pt-BR', {
        day: '2-digit',
        month: '2-digit',
        year: 'numeric'
    });
}

/**
 * Verifica se a troca é mútua (não é pagamento)
 * e exibe o modal se necessário
 */
function verificarExibirModalPlanilha(troca) {
    // Só exibir modal se for troca mútua (não pagamento)
    if (troca.tipo_troca === 'troca' && troca.plantao_oferecido_id) {
        exibirModalPlanilha({
            trocaId: troca.id,
            numeroAnunciante: troca.numero_anunciante,
            numeroOfertante: troca.numero_ofertante,
            nomeAnunciante: troca.nome_anunciante,
            nomeOfertante: troca.nome_ofertante,
            plantaoAnunciado: troca.plantao_anunciado_nome,
            plantaoOferecido: troca.plantao_oferecido_nome,
            dataPlantaoAnunciado: troca.data_plantao_anunciado,
            dataPlantaoOferecido: troca.data_plantao_oferecido
        });
    }
}

// Fechar modal ao clicar fora (ESC também)
document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
        fecharModalPlanilha();
    }
});

window.onclick = function(event) {
    if (event.target.id === 'modalPlanilha') {
        // Não fechar automaticamente - usuário precisa confirmar
        // fecharModalPlanilha();
    }
}
