# 🎯 PRÓXIMOS PASSOS - Sistema de Troca de Plantões

## ✅ O QUE JÁ FOI CRIADO

### Arquivos Principais
- ✅ `supabase-setup.sql` - Script completo do banco de dados
- ✅ `index.html` - Tela de login funcional
- ✅ `css/style.css` - Design moderno fundo branco + letras pretas
- ✅ `js/auth.js` - Sistema de autenticação completo
- ✅ `js/config.example.js` - Exemplo de configuração
- ✅ `README.md` - Documentação do projeto
- ✅ `INSTRUÇÕES.md` - Guia passo a passo completo

### Funcionalidades Implementadas
- ✅ Sistema de login com número de chamada + série
- ✅ Primeiro acesso com confirmação de senha
- ✅ Senha visível para evitar erros
- ✅ Hash SHA-256 para senhas
- ✅ Banco de dados completo (10+ tabelas)
- ✅ Row Level Security configurado
- ✅ Triggers para notificações automáticas
- ✅ Índices para performance

## 🚧 O QUE PRECISA SER COMPLETADO

Devido à complexidade total do sistema, criei a estrutura base. Você precisa completar:

### 1. Arquivos HTML Faltantes

#### `dashboard.html`
Precisa ter:
- Header com nome do usuário e botão logout
- Navegação (Dashboard | Anúncios | Alunos | Meu Perfil)
- Seção "Meus Dados" (nome, WhatsApp, chave PIX, etc.)
- Cronograma com estágios e plantões
- Drag & drop para reorganizar
- Botões: Adicionar, Editar, Remover, Anunciar
- Notificações
- Modal de alerta sobre conferir dados (primeira vez)

#### `anuncios.html`
Precisa ter:
- Lista de anúncios ativos
- Filtros (tipo, especialidade, data)
- Cards de anúncios com informações
- Botão "Fazer Oferta"
- Modals para criar/ver ofertas
- Seção "Quero pegar plantões" para anunciar disponibilidade

#### `alunos.html`
Precisa ter:
- Grid com todos os alunos
- Busca por nome/número
- Filtro por série
- Click no aluno abre modal com dados dele
- Ver plantões do aluno
- Botão "Fazer Oferta" direto

#### `perfil.html` (opcional)
- Editar dados pessoais
- Configurar disponibilidade para pegar plantões
- Histórico de trocas
- Estatísticas

### 2. Arquivos JavaScript Faltantes

#### `js/dashboard.js`
```javascript
// Funções necessárias:
- carregarDadosUsuario()
- carregarEstagios()
- carregarPlantoes()
- adicionarEvento()
- editarEvento()
- removerEvento()
- anunciarPlantao()
- implementarDragAndDrop()
- filtrarEventosAntigos()
- exibirModalPrimeiroAcesso()
```

#### `js/anuncios.js`
```javascript
// Funções necessárias:
- carregarAnuncios()
- filtrarAnuncios()
- criarAnuncio()
- fazerOferta()
- verOfertas()
- aceitarOferta()
- rejeitarOferta()
- validarRegras()
- exibirModalRegras()
- confirmarPagamento()
```

#### `js/alunos.js`
```javascript
// Funções necessárias:
- carregarAlunos()
- buscarAluno()
- filtrarPorSerie()
- exibirPerfilAluno()
- verPlantoesAluno()
- fazerOfertaDireta()
```

#### `js/utils.js`
```javascript
// Funções utilitárias:
- formatarData()
- calcularDiferencaDias()
- validarChavePIX()
- gerarLinkWhatsApp()
- notificar()
- confirmarAcao()
- validarTroca() // Verifica regras
```

### 3. Funcionalidades Avançadas

#### Drag & Drop
Usar biblioteca: [Sortable.js](https://sortablejs.github.io/Sortable/)
```html
<script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
```

#### Notificações em Tempo Real
Usar Supabase Realtime:
```javascript
const channel = supabase
    .channel('schema-db-changes')
    .on('postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'notificacoes' },
        (payload) => {
            // Exibir notificação
            mostrarNotificacao(payload.new);
        }
    )
    .subscribe();
```

#### Validação de Regras
Criar função que compara:
- Módulo do plantão anunciado
- Módulo do plantão oferecido
- Data vs. módulo atual do usuário
- Especialidade
- Tipo de plantão

```javascript
function validarRegrasDeTraça(plantaoAnunciado, plantaoOferecido) {
    const violacoes = [];

    // Verificar módulo
    if (plantaoAnunciado.modulo !== plantaoOferecido.modulo) {
        violacoes.push('Plantões de módulos diferentes');
    }

    // Verificar especialidade
    // Verificar data vs. módulo
    // etc.

    return {
        valido: violacoes.length === 0,
        violacoes: violacoes
    };
}
```

### 4. Importação dos Dados dos Alunos

Você forneceu dados de 76 alunos da 5ª série. Precisa criar:

#### `import-alunos-5serie.sql`
Script que insere todos os alunos com:
- numero_chamada (1-76)
- serie: '5'
- nome
- Estágios (tabela estagios)
- Plantões (tabela plantoes)

**IMPORTANTE**: Senha inicial pode ser:
- Número da chamada
- Ou "famerp2026"
- Ou deixar NULL e forçar primeiro acesso

#### Exemplo de INSERT:
```sql
-- Aline Sonagere Neves (#1)
INSERT INTO usuarios (numero_chamada, serie, nome, primeiro_acesso)
VALUES (1, '5', 'Aline Sonagere Neves', true);

-- Pegar ID do usuário
WITH usuario AS (
    SELECT id FROM usuarios
    WHERE numero_chamada = 1 AND serie = '5'
)
-- Inserir estágios
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo)
SELECT
    usuario.id,
    'Reumato',
    'Clínica',
    '2026-01-05',
    '2026-01-09',
    1,
    'CLÍNICA'
FROM usuario;

-- Repetir para cada estágio e plantão
```

### 5. Testes

Criar checklist de testes:
- [ ] Login com usuário inexistente (cria novo)
- [ ] Login com usuário existente (valida senha)
- [ ] Primeiro acesso pede confirmação
- [ ] Dashboard carrega dados
- [ ] Adicionar estágio funciona
- [ ] Adicionar plantão funciona
- [ ] Drag & drop reordena eventos
- [ ] Anunciar plantão cria anúncio
- [ ] Fazer oferta em anúncio
- [ ] Notificação chega para anunciante
- [ ] Aceitar oferta rejeita outras
- [ ] Troca contra regras exibe modal
- [ ] Pagamento via PIX funciona
- [ ] Link WhatsApp funciona
- [ ] Galeria de alunos exibe todos
- [ ] Busca e filtros funcionam

### 6. Melhorias Futuras

Após sistema básico funcionar:
- [ ] Sistema de notificações push
- [ ] Exportar calendário (iCal)
- [ ] Estatísticas (quem mais troca, etc.)
- [ ] Chat integrado
- [ ] Histórico completo de trocas
- [ ] Avaliações/Reputação
- [ ] Modo escuro (opcional)
- [ ] PWA (Progressive Web App)
- [ ] Notificações por email
- [ ] Integração com Google Calendar

## 📝 TEMPLATE DE CÓDIGO

### Dashboard.html (Estrutura Base)
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Troca Plantão FAMERP</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="header">
        <div class="header-content">
            <h1 class="header-title">Troca Plantão FAMERP</h1>
            <div class="header-user">
                <span id="nomeUsuario"></span>
                <button onclick="logout()" class="btn btn-sm">Sair</button>
            </div>
        </div>
    </div>

    <div class="container">
        <nav class="nav">
            <a href="dashboard.html" class="nav-link active">Dashboard</a>
            <a href="anuncios.html" class="nav-link">Anúncios</a>
            <a href="alunos.html" class="nav-link">Alunos</a>
        </nav>

        <!-- Alerta Primeira Vez -->
        <div id="alertaPrimeiraVez" class="card" style="display: none;">
            <div class="mensagem warning show">
                ⚠️ <strong>IMPORTANTE:</strong> Os dados foram importados por IA.
                Confira seus estágios e plantões e corrija eventuais erros!
            </div>
        </div>

        <!-- Meus Dados -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Meus Dados</h2>
            </div>
            <form id="formDados">
                <!-- Campos do formulário -->
            </form>
        </div>

        <!-- Cronograma -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Meu Cronograma</h2>
                <button class="btn btn-primary">+ Adicionar</button>
            </div>
            <div id="timeline" class="timeline">
                <!-- Items dinâmicos -->
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
    <script src="js/config.js"></script>
    <script src="js/auth.js"></script>
    <script src="js/dashboard.js"></script>
</body>
</html>
```

## 🎯 PRIORIDADES

1. **URGENTE**: Configurar Supabase e testar login
2. **IMPORTANTE**: Criar dashboard.html com funções básicas
3. **IMPORTANTE**: Criar anuncios.html
4. **NORMAL**: Criar alunos.html
5. **NORMAL**: Implementar drag & drop
6. **BAIXA**: Importar dados dos 76 alunos
7. **BAIXA**: Melhorias e refinamentos

## 💡 DICAS

- Use Ctrl+Shift+I para abrir DevTools e debugar
- Console.log é seu amigo para testar
- Teste cada função individualmente
- Comece simples, depois adicione complexidade
- Use ChatGPT/Claude para ajudar com código específico
- Consulte documentação do Supabase

## 📚 RECURSOS ÚTEIS

- [Documentação Supabase](https://supabase.com/docs)
- [Supabase JavaScript Client](https://supabase.com/docs/reference/javascript)
- [Sortable.js](https://github.com/SortableJS/Sortable)
- [MDN Web Docs](https://developer.mozilla.org/)

---

**Você tem a base sólida, agora é implementar as telas e conectar tudo!**

Boa sorte! 🚀
