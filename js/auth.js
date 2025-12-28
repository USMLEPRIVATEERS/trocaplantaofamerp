// =============================================
// AUTENTICAÇÃO E LOGIN
// =============================================

document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('loginForm');
    const serieInput = document.getElementById('serie');
    const numeroChamadaInput = document.getElementById('numeroChamada');
    const senhaInput = document.getElementById('senha');
    const confirmarSenhaDiv = document.getElementById('confirmarSenhaDiv');
    const confirmarSenhaInput = document.getElementById('confirmarSenha');
    const mensagemDiv = document.getElementById('mensagem');

    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        await fazerLogin();
    });

    async function fazerLogin() {
        const serie = serieInput.value;
        const numeroChamada = parseInt(numeroChamadaInput.value);
        const senha = senhaInput.value;

        if (!serie || !numeroChamada || !senha) {
            mostrarMensagem('Preencha todos os campos', 'error');
            return;
        }

        try {
            // Verificar se usuário existe
            const { data: usuario, error } = await supabase
                .from('usuarios')
                .select('*')
                .eq('numero_chamada', numeroChamada)
                .eq('serie', serie)
                .single();

            if (error && error.code !== 'PGRST116') {
                throw error;
            }

            if (!usuario) {
                // Primeiro acesso - criar novo usuário
                await criarNovoUsuario(serie, numeroChamada, senha);
            } else if (usuario.primeiro_acesso) {
                // Primeiro acesso - pedir confirmação de senha
                await confirmarPrimeiroAcesso(usuario, senha);
            } else {
                // Login normal
                await validarSenha(usuario, senha);
            }
        } catch (error) {
            console.error('Erro no login:', error);
            mostrarMensagem('Erro ao fazer login. Tente novamente.', 'error');
        }
    }

    async function criarNovoUsuario(serie, numeroChamada, senha) {
        // Mostrar campo de confirmação
        confirmarSenhaDiv.style.display = 'block';
        confirmarSenhaInput.required = true;

        const confirmarSenha = confirmarSenhaInput.value;

        if (!confirmarSenha) {
            mostrarMensagem('Por favor, confirme sua senha', 'warning');
            return;
        }

        if (senha !== confirmarSenha) {
            mostrarMensagem('As senhas não conferem', 'error');
            confirmarSenhaInput.value = '';
            return;
        }

        // Hash da senha (usando SHA-256 simples - em produção use algo mais forte)
        const senhaHash = await hashSenha(senha);

        // Criar usuário
        const { data, error } = await supabase
            .from('usuarios')
            .insert([{
                numero_chamada: numeroChamada,
                serie: serie,
                senha_hash: senhaHash,
                primeiro_acesso: false
            }])
            .select()
            .single();

        if (error) {
            throw error;
        }

        // Salvar na sessão
        salvarSessao(data);
        mostrarMensagem('Conta criada com sucesso! Redirecionando...', 'success');

        setTimeout(() => {
            window.location.href = 'dashboard.html';
        }, 1500);
    }

    async function confirmarPrimeiroAcesso(usuario, senha) {
        // Mostrar campo de confirmação
        confirmarSenhaDiv.style.display = 'block';
        confirmarSenhaInput.required = true;

        const confirmarSenha = confirmarSenhaInput.value;

        if (!confirmarSenha) {
            mostrarMensagem('Por favor, confirme sua senha', 'warning');
            return;
        }

        if (senha !== confirmarSenha) {
            mostrarMensagem('As senhas não conferem', 'error');
            confirmarSenhaInput.value = '';
            return;
        }

        // Hash da senha
        const senhaHash = await hashSenha(senha);

        // Atualizar usuário
        const { error } = await supabase
            .from('usuarios')
            .update({
                senha_hash: senhaHash,
                primeiro_acesso: false
            })
            .eq('id', usuario.id);

        if (error) {
            throw error;
        }

        // Salvar na sessão
        salvarSessao(usuario);
        mostrarMensagem('Senha confirmada! Redirecionando...', 'success');

        setTimeout(() => {
            window.location.href = 'dashboard.html';
        }, 1500);
    }

    async function validarSenha(usuario, senha) {
        const senhaHash = await hashSenha(senha);

        if (senhaHash !== usuario.senha_hash) {
            mostrarMensagem('Senha incorreta', 'error');
            return;
        }

        // Salvar na sessão
        salvarSessao(usuario);
        mostrarMensagem('Login realizado! Redirecionando...', 'success');

        setTimeout(() => {
            window.location.href = 'dashboard.html';
        }, 1500);
    }

    function salvarSessao(usuario) {
        sessionStorage.setItem('usuario', JSON.stringify(usuario));
        sessionStorage.setItem('usuarioId', usuario.id);
    }

    function mostrarMensagem(texto, tipo) {
        mensagemDiv.textContent = texto;
        mensagemDiv.className = `mensagem ${tipo} show`;

        setTimeout(() => {
            mensagemDiv.classList.remove('show');
        }, 5000);
    }

    async function hashSenha(senha) {
        // Converter string para Uint8Array
        const encoder = new TextEncoder();
        const data = encoder.encode(senha);

        // Calcular hash SHA-256
        const hashBuffer = await crypto.subtle.digest('SHA-256', data);

        // Converter para hex string
        const hashArray = Array.from(new Uint8Array(hashBuffer));
        const hashHex = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');

        return hashHex;
    }
});

// Função para verificar autenticação em outras páginas
function verificarAutenticacao() {
    const usuario = sessionStorage.getItem('usuario');

    if (!usuario) {
        window.location.href = 'index.html';
        return null;
    }

    return JSON.parse(usuario);
}

// Função para fazer logout
function logout() {
    sessionStorage.clear();
    window.location.href = 'index.html';
}
