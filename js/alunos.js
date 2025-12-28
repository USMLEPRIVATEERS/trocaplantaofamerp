// =============================================
// GALERIA DE ALUNOS
// =============================================

let usuarioAtual = null;
let todosAlunos = [];
let alunoSelecionado = null;
let plantaoSelecionadoOferta = null;

document.addEventListener('DOMContentLoaded', async function() {
    // Verificar autenticação
    usuarioAtual = verificarAutenticacao();
    if (!usuarioAtual) return;

    // Carregar nome do usuário
    document.getElementById('nomeUsuario').textContent =
        usuarioAtual.nome || `Aluno #${usuarioAtual.numero_chamada}`;

    // Carregar alunos
    await carregarAlunos();
});

// =============================================
// CARREGAR ALUNOS
// =============================================

async function carregarAlunos() {
    try {
        const { data: alunos, error } = await supabase
            .from('usuarios')
            .select('*')
            .neq('id', usuarioAtual.id)
            .order('numero_chamada', { ascending: true });

        if (error) throw error;

        todosAlunos = alunos || [];
        aplicarFiltros();

    } catch (error) {
        console.error('Erro ao carregar alunos:', error);
        mostrarMensagem('Erro ao carregar alunos', 'error');
    }
}

function aplicarFiltros() {
    const busca = document.getElementById('busca').value.toLowerCase();
    const serie = document.getElementById('filtroSerie').value;

    let alunosFiltrados = todosAlunos.filter(aluno => {
        // Filtro de busca
        if (busca) {
            const nome = (aluno.nome || '').toLowerCase();
            const numero = aluno.numero_chamada.toString();
            if (!nome.includes(busca) && !numero.includes(busca)) {
                return false;
            }
        }

        // Filtro de série
        if (serie && aluno.serie !== serie) {
            return false;
        }

        return true;
    });

    exibirAlunos(alunosFiltrados);
}

function limparFiltros() {
    document.getElementById('busca').value = '';
    document.getElementById('filtroSerie').value = '';
    aplicarFiltros();
}

function exibirAlunos(alunos) {
    const container = document.getElementById('galeriaAlunos');
    const contador = document.getElementById('contadorAlunos');

    contador.textContent = `${alunos.length} aluno${alunos.length !== 1 ? 's' : ''}`;

    if (alunos.length === 0) {
        container.innerHTML = `
            <div style="grid-column: 1/-1; text-align: center; padding: 40px; color: #666;">
                Nenhum aluno encontrado
            </div>
        `;
        return;
    }

    container.innerHTML = alunos.map(aluno => {
        const disponivel = aluno.aceita_plantoes ? '✅' : '';

        return `
            <div class="card" style="padding: 20px; cursor: pointer; transition: all 0.2s;"
                 onclick="abrirPerfilAluno('${aluno.id}')"
                 onmouseenter="this.style.transform='translateY(-4px)'; this.style.boxShadow='0 4px 8px rgba(0,0,0,0.1)'"
                 onmouseleave="this.style.transform='translateY(0)'; this.style.boxShadow='none'">

                <div style="text-align: center;">
                    <div style="width: 80px; height: 80px; border-radius: 50%; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); margin: 0 auto 16px; display: flex; align-items: center; justify-content: center; color: white; font-size: 32px; font-weight: bold;">
                        ${aluno.numero_chamada}
                    </div>

                    <div style="font-weight: bold; font-size: 16px; margin-bottom: 4px;">
                        ${aluno.nome || `Aluno #${aluno.numero_chamada}`}
                    </div>

                    <div style="font-size: 14px; color: #666;">
                        ${aluno.serie}ª série ${disponivel}
                    </div>

                    ${aluno.whatsapp ? `
                        <div style="font-size: 12px; color: #666; margin-top: 8px;">
                            📱 ${aluno.whatsapp}
                        </div>
                    ` : ''}
                </div>
            </div>
        `;
    }).join('');
}

// =============================================
// PERFIL DO ALUNO
// =============================================

async function abrirPerfilAluno(alunoId) {
    try {
        // Buscar dados do aluno
        const { data: aluno, error: errorAluno } = await supabase
            .from('usuarios')
            .select('*')
            .eq('id', alunoId)
            .single();

        if (errorAluno) throw errorAluno;

        alunoSelecionado = aluno;

        // Atualizar header
        document.getElementById('nomeAluno').textContent =
            aluno.nome || `Aluno #${aluno.numero_chamada}`;

        // Informações básicas
        document.getElementById('infoAluno').innerHTML = `
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 16px;">
                <div>
                    <div style="font-size: 14px; color: #666;">Número de Chamada</div>
                    <div style="font-weight: bold; font-size: 18px;">#${aluno.numero_chamada}</div>
                </div>
                <div>
                    <div style="font-size: 14px; color: #666;">Série</div>
                    <div style="font-weight: bold; font-size: 18px;">${aluno.serie}ª série</div>
                </div>
                ${aluno.whatsapp ? `
                    <div>
                        <div style="font-size: 14px; color: #666;">WhatsApp</div>
                        <div style="font-weight: bold; font-size: 18px;">
                            <a href="https://wa.me/55${aluno.whatsapp.replace(/\D/g, '')}" target="_blank" style="color: #25D366;">
                                📱 ${aluno.whatsapp}
                            </a>
                        </div>
                    </div>
                ` : ''}
                ${aluno.aceita_plantoes ? `
                    <div>
                        <div style="font-size: 14px; color: #666;">Status</div>
                        <div style="font-weight: bold; font-size: 18px; color: #009900;">
                            ✅ Aceita plantões
                        </div>
                    </div>
                ` : ''}
            </div>
        `;

        // Carregar plantões
        await carregarPlantoesAluno(alunoId);

        // Carregar estágios
        await carregarEstagiosAluno(alunoId);

        // Carregar disponibilidade
        await carregarDisponibilidadeAluno(alunoId);

        // Exibir modal
        document.getElementById('modalPerfil').style.display = 'flex';
        mudarTab('plantoes');

    } catch (error) {
        console.error('Erro ao carregar perfil:', error);
        mostrarMensagem('Erro ao carregar perfil do aluno', 'error');
    }
}

function fecharModalPerfil() {
    document.getElementById('modalPerfil').style.display = 'none';
    alunoSelecionado = null;
}

function mudarTab(tabName) {
    // Remover active de todos
    document.querySelectorAll('.tab-button').forEach(btn => {
        btn.classList.remove('active');
    });
    document.querySelectorAll('.tab-content').forEach(content => {
        content.classList.remove('active');
    });

    // Adicionar active ao selecionado
    document.querySelector(`[data-tab="${tabName}"]`).classList.add('active');
    document.getElementById(`tab${tabName.charAt(0).toUpperCase() + tabName.slice(1)}`).classList.add('active');
}

async function carregarPlantoesAluno(alunoId) {
    try {
        const { data: plantoes, error } = await supabase
            .from('plantoes')
            .select('*')
            .eq('usuario_id', alunoId)
            .gte('data', new Date().toISOString().split('T')[0])
            .order('data', { ascending: true });

        if (error) throw error;

        const container = document.getElementById('plantoesAluno');

        if (!plantoes || plantoes.length === 0) {
            container.innerHTML = '<div style="color: #666; font-style: italic;">Nenhum plantão futuro cadastrado</div>';
            return;
        }

        container.innerHTML = plantoes.map(p => {
            const data = new Date(p.data).toLocaleDateString('pt-BR');

            return `
                <div class="card" style="padding: 16px; margin-bottom: 12px;">
                    <div style="display: flex; justify-content: space-between; align-items: start;">
                        <div style="flex: 1;">
                            <div style="font-weight: bold; font-size: 16px;">${p.tipo}</div>
                            <div style="font-size: 14px; color: #666; margin-top: 4px;">
                                📅 ${data} · ⏰ ${p.turno} · 📚 ${p.modulo}
                            </div>
                            ${p.local ? `<div style="font-size: 14px; color: #666;">📍 ${p.local}</div>` : ''}
                        </div>
                        <button onclick="abrirOfertaDireta('${p.id}')" class="btn btn-sm btn-primary">
                            Fazer Oferta
                        </button>
                    </div>
                </div>
            `;
        }).join('');

    } catch (error) {
        console.error('Erro ao carregar plantões:', error);
    }
}

async function carregarEstagiosAluno(alunoId) {
    try {
        const { data: estagios, error } = await supabase
            .from('estagios')
            .select('*')
            .eq('usuario_id', alunoId)
            .order('data_inicio', { ascending: true });

        if (error) throw error;

        const container = document.getElementById('estagiosAluno');

        if (!estagios || estagios.length === 0) {
            container.innerHTML = '<div style="color: #666; font-style: italic;">Nenhum estágio cadastrado</div>';
            return;
        }

        container.innerHTML = estagios.map(e => {
            const dataInicio = new Date(e.data_inicio).toLocaleDateString('pt-BR');
            const dataFim = new Date(e.data_fim).toLocaleDateString('pt-BR');

            return `
                <div class="card" style="padding: 16px; margin-bottom: 12px;">
                    <div style="font-weight: bold; font-size: 16px;">${e.nome}</div>
                    <div style="font-size: 14px; color: #666; margin-top: 4px;">
                        📅 ${dataInicio} até ${dataFim}
                    </div>
                    <div style="font-size: 14px; color: #666;">
                        📍 ${e.local} · 📚 ${e.modulo} · Período ${e.periodo}
                    </div>
                </div>
            `;
        }).join('');

    } catch (error) {
        console.error('Erro ao carregar estágios:', error);
    }
}

async function carregarDisponibilidadeAluno(alunoId) {
    try {
        const { data: disponibilidades, error } = await supabase
            .from('periodos_disponibilidade')
            .select('*, especialidades:especialidades_aceitas(*)')
            .eq('usuario_id', alunoId)
            .eq('ativo', true);

        if (error) throw error;

        const container = document.getElementById('disponibilidadeAluno');

        if (!disponibilidades || disponibilidades.length === 0) {
            container.innerHTML = '<div style="color: #666; font-style: italic;">Este aluno não está disponível para pegar plantões no momento</div>';
            return;
        }

        container.innerHTML = disponibilidades.map(d => {
            const especialidadesTexto = d.especialidades && d.especialidades.length > 0 ?
                d.especialidades.map(e => e.especialidade).join(', ') :
                'Todas';

            return `
                <div class="card" style="padding: 16px; margin-bottom: 12px;">
                    <div style="font-weight: bold; font-size: 16px;">Período ${d.periodo}</div>
                    <div style="font-size: 14px; color: #666; margin-top: 4px;">
                        Especialidades: ${especialidadesTexto}
                    </div>
                    ${d.aceita_pagamento ? '<div style="font-size: 14px; color: #009900; margin-top: 4px;">💰 Aceita pagamento</div>' : ''}
                    ${d.observacoes ? `<div style="font-size: 14px; color: #666; margin-top: 8px; font-style: italic;">"${d.observacoes}"</div>` : ''}
                </div>
            `;
        }).join('');

    } catch (error) {
        console.error('Erro ao carregar disponibilidade:', error);
    }
}

// =============================================
// OFERTA DIRETA
// =============================================

async function abrirOfertaDireta(plantaoId) {
    try {
        // Buscar dados do plantão
        const { data: plantao, error } = await supabase
            .from('plantoes')
            .select('*')
            .eq('id', plantaoId)
            .single();

        if (error) throw error;

        plantaoSelecionadoOferta = plantao;

        // Exibir info do plantão
        const dataPlantao = new Date(plantao.data).toLocaleDateString('pt-BR');

        document.getElementById('infoPlantaoSelecionado').innerHTML = `
            <div style="font-weight: bold; margin-bottom: 8px;">
                Plantão de ${alunoSelecionado.nome || `Aluno #${alunoSelecionado.numero_chamada}`}
            </div>
            <div style="font-size: 14px;">
                <strong>${plantao.tipo}</strong> · ${dataPlantao} · ${plantao.turno}
            </div>
        `;

        // Resetar formulário
        document.getElementById('formOfertaDireta').reset();
        document.getElementById('secaoTrocaDireta').style.display = 'none';
        document.getElementById('secaoPagamentoDireto').style.display = 'none';

        // Carregar plantões próprios
        await carregarPlantoesProprios();

        // Exibir modal
        document.getElementById('modalOfertaDireta').style.display = 'flex';

    } catch (error) {
        console.error('Erro ao abrir oferta direta:', error);
        mostrarMensagem('Erro ao carregar dados do plantão', 'error');
    }
}

function fecharModalOfertaDireta() {
    document.getElementById('modalOfertaDireta').style.display = 'none';
    plantaoSelecionadoOferta = null;
}

function alterarTipoOfertaDireta() {
    const tipo = document.getElementById('tipoOfertaDireta').value;
    const secaoTroca = document.getElementById('secaoTrocaDireta');
    const secaoPagamento = document.getElementById('secaoPagamentoDireto');

    if (tipo === 'troca') {
        secaoTroca.style.display = 'block';
        secaoPagamento.style.display = 'none';
        document.getElementById('plantaoOferecidoDireto').required = true;
        document.getElementById('valorOfertaDireta').required = false;
    } else if (tipo === 'pagamento') {
        secaoTroca.style.display = 'none';
        secaoPagamento.style.display = 'block';
        document.getElementById('plantaoOferecidoDireto').required = false;
        document.getElementById('valorOfertaDireta').required = true;
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

        const select = document.getElementById('plantaoOferecidoDireto');

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

async function enviarOfertaDireta(e) {
    e.preventDefault();

    const tipoOferta = document.getElementById('tipoOfertaDireta').value;
    const mensagem = document.getElementById('mensagemOfertaDireta').value;

    if (!tipoOferta) {
        mostrarMensagem('Selecione o tipo de oferta', 'warning');
        return;
    }

    try {
        // Primeiro, criar ou buscar anúncio para este plantão
        let { data: anuncio, error: errorBusca } = await supabase
            .from('anuncios')
            .select('*')
            .eq('plantao_id', plantaoSelecionadoOferta.id)
            .eq('status', 'ativo')
            .single();

        // Se não existe anúncio, criar um anúncio direto
        if (errorBusca || !anuncio) {
            const { data: novoAnuncio, error: errorCriar } = await supabase
                .from('anuncios')
                .insert([{
                    usuario_id: alunoSelecionado.id,
                    plantao_id: plantaoSelecionadoOferta.id,
                    tipo_anuncio: 'ambos',
                    status: 'ativo',
                    observacoes: 'Anúncio criado automaticamente por oferta direta'
                }])
                .select()
                .single();

            if (errorCriar) throw errorCriar;
            anuncio = novoAnuncio;
        }

        // Criar oferta
        const ofertaData = {
            anuncio_id: anuncio.id,
            usuario_id: usuarioAtual.id,
            tipo_oferta: tipoOferta,
            mensagem: mensagem || null,
            status: 'pendente'
        };

        if (tipoOferta === 'troca') {
            const plantaoId = document.getElementById('plantaoOferecidoDireto').value;
            if (!plantaoId) {
                mostrarMensagem('Selecione um plantão para trocar', 'warning');
                return;
            }
            ofertaData.plantao_oferecido_id = plantaoId;
            ofertaData.valor_oferecido = null;
        } else {
            const valor = parseFloat(document.getElementById('valorOfertaDireta').value);
            if (!valor || valor <= 0) {
                mostrarMensagem('Digite um valor válido', 'warning');
                return;
            }
            ofertaData.valor_oferecido = valor;
            ofertaData.plantao_oferecido_id = null;
        }

        const { error: errorOferta } = await supabase
            .from('ofertas')
            .insert([ofertaData]);

        if (errorOferta) throw errorOferta;

        // Criar notificação
        await supabase
            .from('notificacoes')
            .insert([{
                usuario_id: alunoSelecionado.id,
                tipo: 'oferta_direta',
                titulo: 'Oferta direta recebida!',
                mensagem: `${usuarioAtual.nome || `Aluno #${usuarioAtual.numero_chamada}`} fez uma oferta direta no seu plantão de ${plantaoSelecionadoOferta.tipo}`,
                link: '/dashboard.html'
            }]);

        mostrarMensagem('Oferta enviada com sucesso!', 'success');
        fecharModalOfertaDireta();

    } catch (error) {
        console.error('Erro ao enviar oferta:', error);
        mostrarMensagem('Erro ao enviar oferta. Tente novamente.', 'error');
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
    const modalPerfil = document.getElementById('modalPerfil');
    const modalOfertaDireta = document.getElementById('modalOfertaDireta');

    if (event.target === modalPerfil) {
        fecharModalPerfil();
    }
    if (event.target === modalOfertaDireta) {
        fecharModalOfertaDireta();
    }
}
