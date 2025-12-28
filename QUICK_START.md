# 🚀 QUICK START - Guia Rápido de 5 Minutos

## 📌 O QUE VOCÊ PRECISA

1. Conta no [Supabase](https://supabase.com) (grátis)
2. Navegador moderno (Chrome, Firefox, Edge)
3. Editor de texto (VS Code recomendado)

---

## ⚡ PASSO A PASSO RÁPIDO

### 1️⃣ Configurar Supabase (5 minutos)

1. Acesse [supabase.com](https://supabase.com)
2. Crie conta (pode usar Google)
3. Clique em **"New Project"**
4. Preencha:
   - **Name:** `troca-plantao-famerp`
   - **Password:** (escolha uma senha forte)
   - **Region:** `South America (São Paulo)`
5. Aguarde ~2 min para criar

### 2️⃣ Executar SQL (2 minutos)

1. No menu lateral, clique em **"SQL Editor"**
2. Clique em **"New Query"**
3. Abra o arquivo **`supabase-setup.sql`**
4. **Copie TODO** o conteúdo
5. **Cole** no SQL Editor
6. Clique em **"Run"** (Ctrl+Enter)
7. Aguarde aparecer: ✅ **"Success. No rows returned"**

8. Repita para **`supabase-update-planilha.sql`**

### 3️⃣ Copiar Credenciais (1 minuto)

1. No menu lateral, clique em **⚙️ "Project Settings"**
2. Clique em **"API"**
3. Copie:
   - **URL:** `https://xxxxxxxxxxxxx.supabase.co`
   - **anon public:** `eyJ...` (chave longa)

### 4️⃣ Configurar App (1 minuto)

1. Na pasta `js/`, renomeie:
   - `config.example.js` → `config.js`

2. Abra `config.js` e cole suas credenciais:

```javascript
const SUPABASE_URL = 'https://xxxxxxxxxxxxx.supabase.co'; // ← Cole aqui
const SUPABASE_ANON_KEY = 'eyJ...'; // ← Cole aqui
```

3. Salve o arquivo

### 5️⃣ Testar Localmente (1 minuto)

**Opção A - VS Code (Recomendado)**
1. Instale extensão "Live Server"
2. Clique direito em `index.html`
3. Selecione "Open with Live Server"

**Opção B - Python**
```bash
python -m http.server 8000
```
Depois abra: http://localhost:8000

**Opção C - Node.js**
```bash
npx http-server
```

### 6️⃣ Fazer Primeiro Login (30 segundos)

1. Abra o site
2. Selecione **"5ª Série"**
3. Digite número: **1**
4. Digite senha: **teste123**
5. Confirme senha: **teste123**
6. Clique em **"Entrar"**

✅ **Pronto!** Você está no dashboard!

---

## 🎯 TESTE RÁPIDO

Faça um teste completo em 5 minutos:

### ✅ Teste 1: Adicionar Plantão
1. No dashboard, clique **"+ Adicionar Evento"**
2. Tipo: **Plantão**
3. Preencha os dados
4. Salve

### ✅ Teste 2: Anunciar
1. Clique em **"Anunciar"** no plantão
2. Tipo: **Troca**
3. Publique

### ✅ Teste 3: Ver Anúncios
1. Vá em **"Anúncios"**
2. Veja seu anúncio listado

### ✅ Teste 4: Segundo Usuário
1. Abra em **aba anônima** (Ctrl+Shift+N)
2. Faça login com número **2**
3. Vá em **"Anúncios"**
4. Clique **"Fazer Oferta"**
5. Escolha **"Troca"** ou **"Pagamento"**
6. Envie

### ✅ Teste 5: Aceitar Oferta (EM DESENVOLVIMENTO)
> **Nota:** Esta funcionalidade precisa ser implementada no dashboard.
> Veja instruções em `STATUS_PROJETO.md`

---

## 🌐 HOSPEDAR ONLINE (10 minutos)

### Opção A - Netlify (Mais Fácil)

1. Acesse [netlify.com](https://netlify.com)
2. Faça login com GitHub
3. Clique **"Add new site"** → **"Deploy manually"**
4. **Arraste a pasta inteira** do projeto
5. Aguarde deploy
6. Vá em **"Site settings"** → **"Environment variables"**
7. Adicione:
   - `SUPABASE_URL` = sua URL
   - `SUPABASE_ANON_KEY` = sua chave
8. Pronto! URL: `https://seu-site.netlify.app`

### Opção B - Vercel (Profissional)

1. Acesse [vercel.com](https://vercel.com)
2. Faça login com GitHub
3. Clique **"Add New..."** → **"Project"**
4. Importe seu repositório
5. Configure **Environment Variables**
6. Deploy automático!

### Opção C - GitHub Pages (Grátis, mas sem variáveis)

1. Crie repositório no GitHub
2. Faça upload dos arquivos
3. Vá em **"Settings"** → **"Pages"**
4. Source: **"Deploy from a branch"**
5. Branch: **"main"**
6. Salve
7. URL: `https://seu-usuario.github.io/troca-plantao-famerp/`

⚠️ **IMPORTANTE:** No GitHub Pages, você precisa committar o `config.js` (não recomendado) ou usar outra solução.

---

## ❓ PROBLEMAS COMUNS

### "Supabase is not defined"
- ✅ Verifique se `config.js` existe
- ✅ Verifique se as credenciais estão corretas
- ✅ Abra Console (F12) para ver erro

### "CORS Error"
- ✅ Use Live Server ou servidor local
- ✅ NÃO abra arquivo HTML diretamente (file://)

### Login não funciona
- ✅ Verifique se executou os SQLs
- ✅ Verifique credenciais no config.js
- ✅ Veja Console (F12) para erros

### Página em branco
- ✅ Abra Console (F12)
- ✅ Veja se há erros JavaScript
- ✅ Verifique se todos os arquivos estão na pasta

---

## 📁 ESTRUTURA DE ARQUIVOS

```
TROCA PLANTAO FAMERP/
│
├── index.html                          ← Login
├── dashboard.html                      ← Dashboard
├── anuncios.html                       ← Anúncios
├── alunos.html                         ← Galeria
│
├── css/
│   └── style.css                       ← Estilos
│
├── js/
│   ├── config.js                       ← ⚠️ SUAS CREDENCIAIS
│   ├── auth.js                         ← Autenticação
│   ├── anuncios.js                     ← Lógica de anúncios
│   ├── alunos.js                       ← Galeria de alunos
│   ├── trocas.js                       ← Modal da planilha
│   └── utils.js                        ← Funções úteis
│
├── supabase-setup.sql                  ← SQL principal
├── supabase-update-planilha.sql        ← SQL planilha
│
└── Documentação/
    ├── README.md                       ← Documentação técnica
    ├── INSTRUÇÕES.md                   ← Guia completo
    ├── PRÓXIMOS_PASSOS.md              ← Roadmap
    ├── INTEGRAÇÃO_PLANILHA.md          ← Guia planilha
    ├── STATUS_PROJETO.md               ← Status atual
    └── QUICK_START.md                  ← Este arquivo
```

---

## 🎓 PRÓXIMOS PASSOS

Depois de testar:

1. ✅ Implemente aceitação de ofertas (veja `STATUS_PROJETO.md`)
2. ✅ Teste modal da planilha
3. ✅ Importe dados dos alunos (opcional)
4. ✅ Customize mensagens e textos
5. ✅ Hospede online
6. ✅ Divulgue para os alunos!

---

## 💡 DICA DE OURO

Para testar trocas mútuas e o modal da planilha:

1. Crie **2 usuários** (números 1 e 2)
2. Cada um adiciona um plantão
3. Usuário 1 **anuncia** plantão (tipo: troca)
4. Usuário 2 faz **oferta** (oferecendo seu plantão)
5. Usuário 1 **aceita** oferta
6. ✨ **Modal da planilha** aparece!

---

## 📞 SUPORTE

Se tiver problemas:

1. 📖 Consulte `INSTRUÇÕES.md` (guia completo)
2. 📊 Veja `STATUS_PROJETO.md` (status e troubleshooting)
3. 🔍 Abra Console do navegador (F12)
4. 💬 Veja mensagens de erro

---

**🎉 Boa sorte com o projeto!**

**Tempo total de setup:** ~15 minutos
**Dificuldade:** ⭐⭐☆☆☆ (Fácil)

---

**Última atualização:** 28/12/2025
