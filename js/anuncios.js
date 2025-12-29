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
    await carregarMeusAnuncios();
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
        // Filtro de tipo de anúncio
        if (tipoAnuncio && anuncio.tipo_anuncio !== tipoAnuncio) return false;

        // Filtros de plantão só funcionam para anúncios que TÊM plantão
        if (anuncio.plantao) {
            if (tipoPlantao && anuncio.plantao.tipo !== tipoPlantao) return false;
            if (modulo && anuncio.plantao.modulo !== modulo) return false;
        } else {
            // Se o filtro de plantão/módulo está ativo mas o anúncio não tem plantão, ocultar
            if (tipoPlantao || modulo) return false;
        }

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
        const usuario = anuncio.usuario;

        let tipoAnuncioTexto = '';
        let tipoAnuncioCor = '';

        if (anuncio.tipo_anuncio === 'troca') {
            tipoAnuncioTexto = '🔄 Troca';
            tipoAnuncioCor = '#0066cc';
        } else if (anuncio.tipo_anuncio === 'pago') {
            tipoAnuncioTexto = '💸 Pago para pegar';
            tipoAnuncioCor = '#dc3545';
        } else if (anuncio.tipo_anuncio === 'recebo') {
            tipoAnuncioTexto = '💰 Recebo para pegar';
            tipoAnuncioCor = '#28a745';
        } else {
            tipoAnuncioTexto = '🔄💰 Troca ou Pagamento';
            tipoAnuncioCor = '#cc6600';
        }

        // Se tem plantão (anunciante quer PASSAR o plantão)
        const valorTexto = anuncio.valor_minimo && anuncio.plantao ?
            `<div style="font-size: 14px; color: #dc3545; margin-top: 8px; font-weight: 600;">
                💸 Paga R$ ${anuncio.valor_minimo.toFixed(2)} para quem pegar
            </div>` :
        anuncio.valor_minimo && !anuncio.plantao ?
            `<div style="font-size: 14px; color: #28a745; margin-top: 8px; font-weight: 600;">
                💰 Recebe no mínimo R$ ${anuncio.valor_minimo.toFixed(2)} para pegar
            </div>` : '';

        // Se tem plantão (anúncio de plantão específico)
        if (anuncio.plantao) {
            const plantao = anuncio.plantao;
            const dataPlantao = new Date(plantao.data);
            const dataFormatada = dataPlantao.toLocaleDateString('pt-BR');

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
        } else {
            // Anúncio de disponibilidade (sem plantão específico)
            const contatoTexto = anuncio.contato ?
                `<div style="font-size: 14px; color: #666; margin-top: 8px;">📱 ${anuncio.contato}</div>` : '';

            const pixTexto = anuncio.chave_pix ?
                `<div style="font-size: 14px; color: #666; margin-top: 4px;">PIX: ${anuncio.chave_pix}</div>` : '';

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

                    <div style="background: #e8f5e9; padding: 12px; border-radius: 8px; margin: 12px 0; border-left: 4px solid #28a745;">
                        <div style="font-weight: bold; font-size: 16px; margin-bottom: 8px; color: #28a745;">
                            ✋ ${anuncio.titulo || 'Disponibilidade'}
                        </div>
                        <div style="font-size: 14px; white-space: pre-wrap;">
                            ${anuncio.descricao || ''}
                        </div>
                        ${valorTexto}
                        ${contatoTexto}
                        ${pixTexto}
                    </div>

                    <button onclick="abrirModalOferta('${anuncio.id}')" class="btn btn-primary" style="width: 100%; margin-top: 12px;">
                        Fazer Oferta
                    </button>
                </div>
            `;
        }
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
    } else if (tipo === 'aceita_valor') {
        secaoTroca.style.display = 'none';
        secaoPagamento.style.display = 'none';
        document.getElementById('plantaoOferecido').required = false;
        document.getElementById('valorOferta').required = false;
    } else if (tipo === 'contraproposta') {
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
        } else if (tipoOferta === 'aceita_valor') {
            // Aceita o valor do anúncio
            ofertaData.valor_oferecido = anuncioSelecionado.valor_minimo || 0;
            ofertaData.plantao_oferecido_id = null;
        } else if (tipoOferta === 'contraproposta') {
            const valor = parseFloat(document.getElementById('valorOferta').value);
            if (!valor || valor <= 0) {
                mostrarMensagem('Digite um valor válido', 'warning');
                return;
            }
            ofertaData.valor_oferecido = valor;
            ofertaData.plantao_oferecido_id = null;
        } else {
            ofertaData.plantao_oferecido_id = null;
            ofertaData.valor_oferecido = null;
        }

        // Inserir oferta
        const { error } = await supabase
            .from('ofertas')
            .insert([ofertaData]);

        if (error) throw error;

        // Criar notificação para o anunciante
        const tipoAnuncioTexto = anuncioSelecionado.plantao ?
            `plantão de ${anuncioSelecionado.plantao.tipo}` :
            'disponibilidade';

        const tipoOfertaTexto = tipoOferta === 'troca' ? 'troca' :
                                tipoOferta === 'aceita_valor' ? 'aceitou o valor' :
                                'contraproposta de valor';

        await supabase
            .from('notificacoes')
            .insert([{
                usuario_id: anuncioSelecionado.usuario_id,
                tipo: 'nova_oferta',
                titulo: 'Nova oferta recebida!',
                mensagem: `${usuarioAtual.nome || `Aluno #${usuarioAtual.numero_chamada}`} fez uma oferta de ${tipoOfertaTexto} no seu anúncio de ${tipoAnuncioTexto}`,
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
// ANUNCIAR PLANTÃO
// =============================================

async function abrirModalAnunciarPlantao() {
    document.getElementById('formAnunciarPlantao').reset();
    document.getElementById('camposPagamentoPlantao').style.display = 'none';

    // Carregar plantões do usuário
    try {
        const { data: plantoes, error } = await supabase
            .from('plantoes')
            .select('*')
            .eq('usuario_id', usuarioAtual.id)
            .gte('data', new Date().toISOString().split('T')[0])
            .order('data', { ascending: true });

        if (error) throw error;

        const select = document.getElementById('plantaoAnunciar');

        if (!plantoes || plantoes.length === 0) {
            select.innerHTML = '<option value="">Você não tem plantões futuros</option>';
        } else {
            select.innerHTML = '<option value="">Selecione um plantão...</option>' +
                plantoes.map(p => {
                    const data = new Date(p.data).toLocaleDateString('pt-BR');
                    return `<option value="${p.id}">${p.tipo} - ${data} - ${p.turno}</option>`;
                }).join('');
        }
    } catch (error) {
        console.error('Erro ao carregar plantões:', error);
    }

    document.getElementById('modalAnunciarPlantao').classList.add('show');
}

function fecharModalAnunciarPlantao() {
    document.getElementById('modalAnunciarPlantao').classList.remove('show');
}

function toggleCamposPagamentoPlantao() {
    const tipo = document.querySelector('input[name="tipoNegociacaoPlantao"]:checked').value;
    const camposPagamento = document.getElementById('camposPagamentoPlantao');

    if (tipo === 'pago' || tipo === 'ambos') {
        camposPagamento.style.display = 'block';
    } else {
        camposPagamento.style.display = 'none';
    }
}

async function publicarAnuncioPlantao(e) {
    e.preventDefault();

    const plantaoId = document.getElementById('plantaoAnunciar').value;
    const tipoNegociacao = document.querySelector('input[name="tipoNegociacaoPlantao"]:checked').value;
    const valor = document.getElementById('valorAnuncioPlantao').value;
    const pix = document.getElementById('pixAnuncioPlantao').value;
    const observacoes = document.getElementById('observacoesPlantao').value;

    if (!plantaoId) {
        mostrarMensagem('Selecione um plantão', 'warning');
        return;
    }

    try {
        const anuncioData = {
            usuario_id: usuarioAtual.id,
            plantao_id: plantaoId,
            tipo_publicacao: 'plantao',
            tipo_anuncio: tipoNegociacao,
            valor_minimo: valor ? parseFloat(valor) : null,
            chave_pix: pix || null,
            observacoes: observacoes || null,
            status: 'ativo'
        };

        const { error } = await supabase
            .from('anuncios')
            .insert([anuncioData]);

        if (error) throw error;

        mostrarMensagem('✅ Plantão anunciado com sucesso!', 'success');
        fecharModalAnunciarPlantao();
        await carregarAnuncios();
        await carregarMeusAnuncios();

    } catch (error) {
        console.error('Erro ao publicar anúncio:', error);
        mostrarMensagem('Erro ao publicar anúncio. Tente novamente.', 'error');
    }
}

// =============================================
// ANUNCIAR DISPONIBILIDADE
// =============================================

function abrirModalAnunciarDisponibilidade() {
    document.getElementById('formAnunciarDisponibilidade').reset();
    document.getElementById('camposPagamentoDisponibilidade').style.display = 'none';
    document.getElementById('modalAnunciarDisponibilidade').classList.add('show');
}

function fecharModalAnunciarDisponibilidade() {
    document.getElementById('modalAnunciarDisponibilidade').classList.remove('show');
}

function toggleCamposPagamentoDisponibilidade() {
    const tipo = document.querySelector('input[name="tipoNegociacaoDisponibilidade"]:checked').value;
    const camposPagamento = document.getElementById('camposPagamentoDisponibilidade');

    if (tipo === 'recebo' || tipo === 'ambos') {
        camposPagamento.style.display = 'block';
    } else {
        camposPagamento.style.display = 'none';
    }
}

async function publicarAnuncioDisponibilidade(e) {
    e.preventDefault();

    const titulo = document.getElementById('disponibilidadeTitulo').value;
    const descricao = document.getElementById('disponibilidadeDescricao').value;
    const tipoNegociacao = document.querySelector('input[name="tipoNegociacaoDisponibilidade"]:checked').value;
    const valor = document.getElementById('valorDisponibilidade').value;
    const pix = document.getElementById('pixDisponibilidade').value;
    const contato = document.getElementById('contatoDisponibilidade').value;

    try {
        const anuncioData = {
            usuario_id: usuarioAtual.id,
            tipo_publicacao: 'disponibilidade',
            titulo: titulo,
            descricao: descricao,
            tipo_anuncio: tipoNegociacao,
            valor_minimo: valor ? parseFloat(valor) : null,
            chave_pix: pix || null,
            contato: contato || null,
            status: 'ativo'
        };

        const { error } = await supabase
            .from('anuncios')
            .insert([anuncioData]);

        if (error) throw error;

        mostrarMensagem('✅ Disponibilidade anunciada com sucesso!', 'success');
        fecharModalAnunciarDisponibilidade();
        await carregarAnuncios();
        await carregarMeusAnuncios();

    } catch (error) {
        console.error('Erro ao publicar anúncio:', error);
        mostrarMensagem('Erro ao publicar anúncio. Tente novamente.', 'error');
    }
}

// =============================================
// CARREGAR MEUS ANÚNCIOS
// =============================================

async function carregarMeusAnuncios() {
    try {
        const { data: anuncios, error } = await supabase
            .from('anuncios')
            .select('*')
            .eq('usuario_id', usuarioAtual.id)
            .eq('status', 'ativo')
            .order('created_at', { ascending: false });

        if (error) throw error;

        // Carregar dados do plantão quando aplicável
        if (anuncios && anuncios.length > 0) {
            for (let anuncio of anuncios) {
                if (anuncio.plantao_id) {
                    const { data: plantao } = await supabase
                        .from('plantoes')
                        .select('*')
                        .eq('id', anuncio.plantao_id)
                        .single();
                    anuncio.plantao = plantao;
                }
            }
        }

        exibirMeusAnuncios(anuncios || []);

    } catch (error) {
        console.error('Erro ao carregar meus anúncios:', error);
        document.getElementById('meusAnuncios').innerHTML =
            '<div style="color: #666; font-style: italic;">Erro ao carregar seus anúncios</div>';
    }
}

function exibirMeusAnuncios(anuncios) {
    const container = document.getElementById('meusAnuncios');

    if (anuncios.length === 0) {
        container.innerHTML = '<div style="color: #666; font-style: italic;">Você ainda não tem anúncios ativos</div>';
        return;
    }

    container.innerHTML = anuncios.map(a => {
        const tipoTexto = a.tipo_anuncio === 'troca' ? '🔄 Troca' :
                          a.tipo_anuncio === 'pago' ? '💸 Pago para pegar' :
                          a.tipo_anuncio === 'recebo' ? '💰 Recebo para pegar' :
                          '🔄💰 Troca ou Pagamento';
        const tipoColor = a.tipo_anuncio === 'troca' ? '#0066cc' :
                          a.tipo_anuncio === 'pago' ? '#dc3545' :
                          a.tipo_anuncio === 'recebo' ? '#28a745' :
                          '#cc6600';

        // Se tem plantão (anunciante quer PASSAR o plantão)
        const valorTexto = a.valor_minimo && a.valor_minimo > 0 && a.plantao ?
            `<div style="margin-top: 8px; color: #dc3545; font-weight: 600;">💸 Paga R$ ${a.valor_minimo.toFixed(2)} para quem pegar</div>` :
        a.valor_minimo && a.valor_minimo > 0 && !a.plantao ?
            `<div style="margin-top: 8px; color: #28a745; font-weight: 600;">💰 Recebe no mínimo R$ ${a.valor_minimo.toFixed(2)} para pegar</div>` : '';

        const pixTexto = a.chave_pix ?
            `<div style="margin-top: 4px; font-size: 13px; color: #666;">PIX: ${a.chave_pix}</div>` : '';

        const contatoTexto = a.contato ?
            `<div style="margin-top: 4px; font-size: 13px; color: #666;">📱 ${a.contato}</div>` : '';

        const dataTexto = new Date(a.created_at).toLocaleDateString('pt-BR');

        // Se tem plantão (anúncio de plantão específico)
        if (a.plantao) {
            const plantao = a.plantao;
            const dataPlantao = new Date(plantao.data).toLocaleDateString('pt-BR');

            return `
                <div class="card" style="padding: 16px; margin-bottom: 12px;">
                    <div style="display: flex; justify-content: space-between; align-items: start; margin-bottom: 12px;">
                        <div style="flex: 1;">
                            <div style="font-weight: 600; font-size: 16px; margin-bottom: 4px;">📋 ${plantao.tipo}</div>
                            <div style="font-size: 12px; color: #999;">Publicado em ${dataTexto}</div>
                        </div>
                        <div style="background: ${tipoColor}; color: white; padding: 4px 12px; border-radius: 4px; font-size: 12px; font-weight: bold; white-space: nowrap; margin-left: 8px;">
                            ${tipoTexto}
                        </div>
                    </div>
                    <div style="background: #f8f8f8; padding: 12px; border-radius: 6px; margin-bottom: 8px;">
                        <div style="display: grid; gap: 6px; font-size: 14px;">
                            <div>📅 Data: ${dataPlantao}</div>
                            <div>⏰ Turno: ${plantao.turno}</div>
                            <div>📍 Local: ${plantao.local || 'N/A'}</div>
                            <div>📚 Módulo: ${plantao.modulo}</div>
                        </div>
                    </div>
                    ${a.observacoes ? `<div style="font-size: 14px; color: #666; margin-bottom: 8px; font-style: italic;">"${a.observacoes}"</div>` : ''}
                    ${valorTexto}
                    ${pixTexto}
                    <div style="margin-top: 12px;">
                        <button onclick="removerAnuncio('${a.id}')" class="btn btn-sm btn-danger">🗑️ Remover</button>
                    </div>
                </div>
            `;
        } else {
            // Anúncio de disponibilidade
            return `
                <div class="card" style="padding: 16px; margin-bottom: 12px;">
                    <div style="display: flex; justify-content: space-between; align-items: start; margin-bottom: 12px;">
                        <div style="flex: 1;">
                            <div style="font-weight: 600; font-size: 16px; margin-bottom: 4px;">✋ ${a.titulo || 'Disponibilidade'}</div>
                            <div style="font-size: 12px; color: #999;">Publicado em ${dataTexto}</div>
                        </div>
                        <div style="background: ${tipoColor}; color: white; padding: 4px 12px; border-radius: 4px; font-size: 12px; font-weight: bold; white-space: nowrap; margin-left: 8px;">
                            ${tipoTexto}
                        </div>
                    </div>
                    <div style="background: #f8f8f8; padding: 12px; border-radius: 6px; margin-bottom: 8px;">
                        <div style="font-size: 14px; white-space: pre-wrap;">${a.descricao || ''}</div>
                    </div>
                    ${valorTexto}
                    ${pixTexto}
                    ${contatoTexto}
                    <div style="margin-top: 12px;">
                        <button onclick="removerAnuncio('${a.id}')" class="btn btn-sm btn-danger">🗑️ Remover</button>
                    </div>
                </div>
            `;
        }
    }).join('');
}

async function removerAnuncio(id) {
    if (!confirm('Deseja realmente remover este anúncio?')) {
        return;
    }

    try {
        const { error } = await supabase
            .from('anuncios')
            .update({ status: 'cancelado' })
            .eq('id', id);

        if (error) throw error;

        mostrarMensagem('Anúncio removido com sucesso!', 'success');
        await carregarAnuncios();
        await carregarMeusAnuncios();

    } catch (error) {
        console.error('Erro ao remover anúncio:', error);
        mostrarMensagem('Erro ao remover anúncio', 'error');
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
    if (event.target.classList.contains('modal')) {
        if (event.target.id === 'modalOferta') {
            fecharModalOferta();
        } else if (event.target.id === 'modalAnunciarPlantao') {
            fecharModalAnunciarPlantao();
        } else if (event.target.id === 'modalAnunciarDisponibilidade') {
            fecharModalAnunciarDisponibilidade();
        }
    }
}
