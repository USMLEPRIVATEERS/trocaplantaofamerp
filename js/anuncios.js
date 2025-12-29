// =============================================
// ANÚNCIOS E OFERTAS
// =============================================

let usuarioAtual = null;
let anuncioSelecionado = null;
let todosAnuncios = [];

document.addEventListener('DOMContentLoaded', async function() {
    // Verificar autenticação
    usuarioAtual = verificarAutenticacao();
    if (!usuarioAtual) return;

    // Carregar nome do usuário
    document.getElementById('nomeUsuario').textContent =
        usuarioAtual.nome || `Aluno #${usuarioAtual.numero_chamada}`;

    // Carregar dados
    await carregarAnuncios();
    await carregarDisponibilidades();
});

// =============================================
// CARREGAR ANÚNCIOS
// =============================================

async function carregarAnuncios() {
    try {
        // Primeiro, tentar carregar anúncios básicos sem relacionamentos
        const { data: anuncios, error } = await supabase
            .from('anuncios')
            .select('*')
            .eq('status', 'ativo')
            .neq('usuario_id', usuarioAtual.id)
            .order('created_at', { ascending: false });

        if (error) {
            console.error('Erro detalhado ao carregar anúncios:', error);
            console.error('Mensagem:', error.message);
            console.error('Código:', error.code);
            throw error;
        }

        console.log('Anúncios carregados (básicos):', anuncios);

        // Carregar dados relacionados separadamente
        if (anuncios && anuncios.length > 0) {
            for (let anuncio of anuncios) {
                // Carregar usuário
                if (anuncio.usuario_id) {
                    const { data: usuario } = await supabase
                        .from('usuarios')
                        .select('numero_chamada, nome, serie')
                        .eq('id', anuncio.usuario_id)
                        .single();
                    anuncio.usuario = usuario;
                }

                // Carregar plantão
                if (anuncio.plantao_id) {
                    const { data: plantao } = await supabase
                        .from('plantoes')
                        .select('id, tipo, data, turno, modulo, local')
                        .eq('id', anuncio.plantao_id)
                        .single();
                    anuncio.plantao = plantao;
                }
            }
        }

        todosAnuncios = anuncios || [];
        aplicarFiltros();

    } catch (error) {
        console.error('Erro ao carregar anúncios:', error);
        mostrarMensagem('Erro ao carregar anúncios', 'error');
    }
}

function aplicarFiltros() {
    const tipoAnuncio = document.getElementById('filtroTipoAnuncio').value;
    const tipoPlantao = document.getElementById('filtroTipoPlantao').value;
    const modulo = document.getElementById('filtroModulo').value;

    let anunciosFiltrados = todosAnuncios.filter(anuncio => {
        if (tipoAnuncio && anuncio.tipo_anuncio !== tipoAnuncio) return false;
        if (tipoPlantao && anuncio.plantao.tipo !== tipoPlantao) return false;
        if (modulo && anuncio.plantao.modulo !== modulo) return false;
        return true;
    });

    exibirAnuncios(anunciosFiltrados);
}

function limparFiltros() {
    document.getElementById('filtroTipoAnuncio').value = '';
    document.getElementById('filtroTipoPlantao').value = '';
    document.getElementById('filtroModulo').value = '';
    aplicarFiltros();
}

function exibirAnuncios(anuncios) {
    const container = document.getElementById('listaAnuncios');
    const contador = document.getElementById('contadorAnuncios');

    contador.textContent = `${anuncios.length} anúncio${anuncios.length !== 1 ? 's' : ''}`;

    if (anuncios.length === 0) {
        container.innerHTML = `
            <div style="grid-column: 1/-1; text-align: center; padding: 40px; color: #666;">
                Nenhum anúncio encontrado
            </div>
        `;
        return;
    }

    container.innerHTML = anuncios.map(anuncio => {
        const plantao = anuncio.plantao;
        const usuario = anuncio.usuario;
        const dataPlantao = new Date(plantao.data);
        const dataFormatada = dataPlantao.toLocaleDateString('pt-BR');

        let tipoAnuncioTexto = '';
        let tipoAnuncioCor = '';

        if (anuncio.tipo_anuncio === 'troca') {
            tipoAnuncioTexto = '🔄 Troca';
            tipoAnuncioCor = '#0066cc';
        } else if (anuncio.tipo_anuncio === 'pagamento') {
            tipoAnuncioTexto = '💰 Venda';
            tipoAnuncioCor = '#009900';
        } else {
            tipoAnuncioTexto = '🔄💰 Troca ou Venda';
            tipoAnuncioCor = '#cc6600';
        }

        const valorTexto = anuncio.valor_minimo ?
            `<div style="font-size: 14px; color: #009900; margin-top: 8px;">
                💵 A partir de R$ ${anuncio.valor_minimo.toFixed(2)}
            </div>` : '';

        return `
            <div class="card" style="padding: 20px;">
                <div style="display: flex; justify-content: space-between; align-items: start; margin-bottom: 12px;">
                    <div>
                        <div style="font-weight: bold; font-size: 16px;">
                            ${usuario.nome || `Aluno #${usuario.numero_chamada}`}
                        </div>
                        <div style="font-size: 14px; color: #666;">
                            #${usuario.numero_chamada} · ${usuario.serie}ª série
                        </div>
                    </div>
                    <div style="background: ${tipoAnuncioCor}; color: white; padding: 4px 12px; border-radius: 4px; font-size: 12px; font-weight: bold;">
                        ${tipoAnuncioTexto}
                    </div>
                </div>

                <div style="background: #f8f8f8; padding: 16px; border-radius: 8px; margin: 12px 0;">
                    <div style="font-weight: bold; font-size: 18px; margin-bottom: 8px;">
                        ${plantao.tipo}
                    </div>
                    <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 8px; font-size: 14px;">
                        <div>📅 ${dataFormatada}</div>
                        <div>⏰ ${plantao.turno}</div>
                        <div>📍 ${plantao.local || 'N/A'}</div>
                        <div>📚 ${plantao.modulo}</div>
                    </div>
                    ${valorTexto}
                </div>

                ${anuncio.observacoes ? `
                    <div style="font-size: 14px; color: #666; margin: 12px 0; font-style: italic;">
                        "${anuncio.observacoes}"
                    </div>
                ` : ''}

                <button onclick="abrirModalOferta('${anuncio.id}')" class="btn btn-primary" style="width: 100%; margin-top: 12px;">
                    Fazer Oferta
                </button>
            </div>
        `;
    }).join('');
}

// =============================================
// FAZER OFERTA
// =============================================

async function abrirModalOferta(anuncioId) {
    anuncioSelecionado = todosAnuncios.find(a => a.id === anuncioId);
    if (!anuncioSelecionado) return;

    // Exibir info do anúncio
    const plantao = anuncioSelecionado.plantao;
    const usuario = anuncioSelecionado.usuario;
    const dataPlantao = new Date(plantao.data).toLocaleDateString('pt-BR');

    document.getElementById('infoAnuncio').innerHTML = `
        <div style="font-weight: bold; margin-bottom: 8px;">
            Plantão anunciado por ${usuario.nome || `Aluno #${usuario.numero_chamada}`}
        </div>
        <div style="font-size: 14px;">
            <strong>${plantao.tipo}</strong> · ${dataPlantao} · ${plantao.turno}
        </div>
    `;

    // Resetar formulário
    document.getElementById('formOferta').reset();
    document.getElementById('secaoTroca').style.display = 'none';
    document.getElementById('secaoPagamento').style.display = 'none';

    // Carregar plantões do usuário para troca
    await carregarPlantoesProprios();

    // Exibir modal
    document.getElementById('modalOferta').style.display = 'flex';
}

function fecharModalOferta() {
    document.getElementById('modalOferta').style.display = 'none';
    anuncioSelecionado = null;
}

function alterarTipoOferta() {
    const tipo = document.getElementById('tipoOferta').value;
    const secaoTroca = document.getElementById('secaoTroca');
    const secaoPagamento = document.getElementById('secaoPagamento');

    if (tipo === 'troca') {
        secaoTroca.style.display = 'block';
        secaoPagamento.style.display = 'none';
        document.getElementById('plantaoOferecido').required = true;
        document.getElementById('valorOferta').required = false;
    } else if (tipo === 'pagamento') {
        secaoTroca.style.display = 'none';
        secaoPagamento.style.display = 'block';
        document.getElementById('plantaoOferecido').required = false;
        document.getElementById('valorOferta').required = true;
    } else {
        secaoTroca.style.display = 'none';
        secaoPagamento.style.display = 'none';
    }
}

async function carregarPlantoesProprios() {
    try {
        const { data: plantoes, error } = await supabase
            .from('plantoes')
            .select('*')
            .eq('usuario_id', usuarioAtual.id)
            .gte('data', new Date().toISOString().split('T')[0])
            .order('data', { ascending: true });

        if (error) throw error;

        const select = document.getElementById('plantaoOferecido');

        if (!plantoes || plantoes.length === 0) {
            select.innerHTML = '<option value="">Você não tem plantões cadastrados</option>';
            return;
        }

        select.innerHTML = '<option value="">Selecione um plantão...</option>' +
            plantoes.map(p => {
                const data = new Date(p.data).toLocaleDateString('pt-BR');
                return `<option value="${p.id}">${p.tipo} - ${data} - ${p.turno}</option>`;
            }).join('');

    } catch (error) {
        console.error('Erro ao carregar plantões:', error);
    }
}

async function enviarOferta(e) {
    e.preventDefault();

    const tipoOferta = document.getElementById('tipoOferta').value;
    const mensagem = document.getElementById('mensagemOferta').value;

    if (!tipoOferta) {
        mostrarMensagem('Selecione o tipo de oferta', 'warning');
        return;
    }

    try {
        const ofertaData = {
            anuncio_id: anuncioSelecionado.id,
            usuario_id: usuarioAtual.id,
            tipo_oferta: tipoOferta,
            mensagem: mensagem || null,
            status: 'pendente'
        };

        if (tipoOferta === 'troca') {
            const plantaoId = document.getElementById('plantaoOferecido').value;
            if (!plantaoId) {
                mostrarMensagem('Selecione um plantão para trocar', 'warning');
                return;
            }
            ofertaData.plantao_oferecido_id = plantaoId;
            ofertaData.valor_oferecido = null;
        } else {
            const valor = parseFloat(document.getElementById('valorOferta').value);
            if (!valor || valor <= 0) {
                mostrarMensagem('Digite um valor válido', 'warning');
                return;
            }
            ofertaData.valor_oferecido = valor;
            ofertaData.plantao_oferecido_id = null;
        }

        // Inserir oferta
        const { error } = await supabase
            .from('ofertas')
            .insert([ofertaData]);

        if (error) throw error;

        // Criar notificação para o anunciante
        await supabase
            .from('notificacoes')
            .insert([{
                usuario_id: anuncioSelecionado.usuario_id,
                tipo: 'nova_oferta',
                titulo: 'Nova oferta recebida!',
                mensagem: `${usuarioAtual.nome || `Aluno #${usuarioAtual.numero_chamada}`} fez uma oferta no seu anúncio de ${anuncioSelecionado.plantao.tipo}`,
                link: '/dashboard.html'
            }]);

        mostrarMensagem('Oferta enviada com sucesso!', 'success');
        fecharModalOferta();

    } catch (error) {
        console.error('Erro ao enviar oferta:', error);
        mostrarMensagem('Erro ao enviar oferta. Tente novamente.', 'error');
    }
}

// =============================================
// DISPONIBILIDADE
// =============================================

async function carregarDisponibilidades() {
    try {
        // Tentar carregar disponibilidades básicas
        const { data: disponibilidades, error } = await supabase
            .from('periodos_disponibilidade')
            .select('*')
            .eq('usuario_id', usuarioAtual.id)
            .eq('ativo', true);

        if (error) {
            console.error('Erro ao carregar disponibilidades:', error);
            console.error('Mensagem:', error.message);
            console.error('Código:', error.code);
            // Se a tabela não existir, apenas exibir vazio
            if (error.code === 'PGRST204' || error.code === '42P01') {
                exibirDisponibilidades([]);
                return;
            }
            throw error;
        }

        // Carregar especialidades separadamente se houver disponibilidades
        if (disponibilidades && disponibilidades.length > 0) {
            for (let disp of disponibilidades) {
                const { data: especialidades } = await supabase
                    .from('especialidades_aceitas')
                    .select('*')
                    .eq('disponibilidade_id', disp.id);
                disp.especialidades = especialidades || [];
            }
        }

        exibirDisponibilidades(disponibilidades || []);

    } catch (error) {
        console.error('Erro ao carregar disponibilidades:', error);
        // Exibir vazio em caso de erro
        exibirDisponibilidades([]);
    }
}

function exibirDisponibilidades(disponibilidades) {
    const container = document.getElementById('minhasDisponibilidades');

    if (disponibilidades.length === 0) {
        container.innerHTML = '<div style="color: #666; font-style: italic;">Você ainda não anunciou disponibilidade</div>';
        return;
    }

    container.innerHTML = disponibilidades.map(d => {
        const especialidadesTexto = d.especialidades && d.especialidades.length > 0 ?
            d.especialidades.map(e => e.especialidade).join(', ') :
            'Todas';

        return `
            <div class="card" style="padding: 16px; margin-bottom: 12px;">
                <div style="display: flex; justify-content: space-between; align-items: start;">
                    <div>
                        <div style="font-weight: bold;">Período ${d.periodo}</div>
                        <div style="font-size: 14px; color: #666; margin-top: 4px;">
                            Especialidades: ${especialidadesTexto}
                        </div>
                        ${d.aceita_pagamento ? '<div style="font-size: 14px; color: #009900; margin-top: 4px;">💰 Aceita pagamento</div>' : ''}
                        ${d.observacoes ? `<div style="font-size: 14px; color: #666; margin-top: 8px; font-style: italic;">"${d.observacoes}"</div>` : ''}
                    </div>
                    <button onclick="removerDisponibilidade('${d.id}')" class="btn btn-sm" style="background: #cc0000; color: white;">
                        Remover
                    </button>
                </div>
            </div>
        `;
    }).join('');
}

function abrirModalDisponibilidade() {
    document.getElementById('formDisponibilidade').reset();
    document.getElementById('modalDisponibilidade').style.display = 'flex';
}

function fecharModalDisponibilidade() {
    document.getElementById('modalDisponibilidade').style.display = 'none';
}

async function salvarDisponibilidade(e) {
    e.preventDefault();

    const periodo = document.getElementById('periodoDisponivel').value;
    const aceitaPagamento = document.getElementById('aceitaPagamento').value === 'true';
    const observacoes = document.getElementById('observacoes').value;

    const especialidadesSelecionadas = Array.from(
        document.querySelectorAll('input[name="especialidade"]:checked')
    ).map(cb => cb.value);

    if (especialidadesSelecionadas.length === 0) {
        mostrarMensagem('Selecione pelo menos uma especialidade', 'warning');
        return;
    }

    try {
        // Inserir disponibilidade
        const { data: disponibilidade, error: errorDisp } = await supabase
            .from('periodos_disponibilidade')
            .insert([{
                usuario_id: usuarioAtual.id,
                periodo: parseInt(periodo),
                aceita_pagamento: aceitaPagamento,
                observacoes: observacoes || null,
                ativo: true
            }])
            .select()
            .single();

        if (errorDisp) throw errorDisp;

        // Inserir especialidades aceitas
        const especialidadesData = especialidadesSelecionadas.map(esp => ({
            disponibilidade_id: disponibilidade.id,
            especialidade: esp
        }));

        const { error: errorEsp } = await supabase
            .from('especialidades_aceitas')
            .insert(especialidadesData);

        if (errorEsp) throw errorEsp;

        mostrarMensagem('Disponibilidade anunciada com sucesso!', 'success');
        fecharModalDisponibilidade();
        await carregarDisponibilidades();

    } catch (error) {
        console.error('Erro ao salvar disponibilidade:', error);
        mostrarMensagem('Erro ao salvar disponibilidade', 'error');
    }
}

async function removerDisponibilidade(id) {
    if (!confirm('Deseja realmente remover este anúncio de disponibilidade?')) {
        return;
    }

    try {
        const { error } = await supabase
            .from('periodos_disponibilidade')
            .update({ ativo: false })
            .eq('id', id);

        if (error) throw error;

        mostrarMensagem('Disponibilidade removida', 'success');
        await carregarDisponibilidades();

    } catch (error) {
        console.error('Erro ao remover disponibilidade:', error);
        mostrarMensagem('Erro ao remover disponibilidade', 'error');
    }
}

// =============================================
// UTILIDADES
// =============================================

function mostrarMensagem(texto, tipo) {
    const mensagemDiv = document.getElementById('mensagem');
    mensagemDiv.textContent = texto;
    mensagemDiv.className = `mensagem ${tipo} show`;

    setTimeout(() => {
        mensagemDiv.classList.remove('show');
    }, 5000);
}

// Fechar modais ao clicar fora
window.onclick = function(event) {
    const modalOferta = document.getElementById('modalOferta');
    const modalDisponibilidade = document.getElementById('modalDisponibilidade');

    if (event.target === modalOferta) {
        fecharModalOferta();
    }
    if (event.target === modalDisponibilidade) {
        fecharModalDisponibilidade();
    }
}
