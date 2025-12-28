# Sistema de Troca de Plantões - FAMERP

Sistema web para gerenciar trocas de plantões entre alunos da 5ª e 6ª série médica da FAMERP.

## 🎯 Funcionalidades

- ✅ Login com número de chamada e série
- ✅ Dashboard pessoal com estágios e plantões
- ✅ Sistema de anúncios de plantões (troca ou venda)
- ✅ Ofertas e contraofertas
- ✅ Galeria de alunos
- ✅ Drag and drop para reorganizar eventos
- ✅ Notificações em tempo real
- ✅ Validação de regras de troca
- ✅ Sistema de pagamento via PIX

## 🚀 Configuração

### 1. Configurar Supabase

1. Crie uma conta no [Supabase](https://supabase.com)
2. Crie um novo projeto
3. No SQL Editor, execute o arquivo `supabase-setup.sql`
4. Copie a URL e a chave anônima do projeto

### 2. Configurar o App

1. Renomeie `js/config.example.js` para `js/config.js`
2. Adicione suas credenciais do Supabase:

```javascript
const SUPABASE_URL = 'SUA_URL_AQUI';
const SUPABASE_ANON_KEY = 'SUA_CHAVE_AQUI';
```

### 3. Hospedar no GitHub Pages

1. Faça commit de todos os arquivos (exceto `config.js` com credenciais)
2. Vá em Settings > Pages
3. Selecione a branch main e salve
4. Seu site estará disponível em `https://seu-usuario.github.io/nome-repo`

## 📁 Estrutura de Arquivos

```
troca-plantao-famerp/
├── index.html              # Tela de login
├── dashboard.html          # Dashboard principal
├── anuncios.html          # Página de anúncios
├── alunos.html            # Galeria de alunos
├── css/
│   └── style.css          # Estilos (fundo branco, letras pretas)
├── js/
│   ├── config.js          # Configurações do Supabase
│   ├── auth.js            # Autenticação
│   ├── dashboard.js       # Lógica do dashboard
│   ├── anuncios.js        # Sistema de anúncios
│   └── alunos.js          # Galeria de alunos
├── supabase-setup.sql     # SQL para configurar o banco
└── README.md              # Este arquivo
```

## 📊 Banco de Dados

O sistema usa as seguintes tabelas principais:

- `usuarios` - Dados dos alunos
- `estagios` - Estágios de cada aluno
- `plantoes` - Plantões de cada aluno
- `anuncios` - Anúncios de plantões disponíveis
- `ofertas` - Ofertas feitas em anúncios
- `trocas_confirmadas` - Trocas efetivadas
- `notificacoes` - Notificações para usuários

## 🎨 Design

- Fundo branco (#ffffff)
- Texto preto (#000000)
- Acentos em tons de cinza para hierarquia visual
- Interface moderna e minimalista
- Responsivo para mobile e desktop

## 📝 Regras de Troca

O sistema valida as seguintes regras (avisos, não impedem trocas):

- Plantões de Cirurgia: trocas dentro do módulo de Cirurgia (12 semanas)
- Plantões de Clínica: trocas dentro do módulo de Clínica (12 semanas)
- Plantões de Emergência Pediátrica: trocas dentro do módulo PED (6 semanas)
- Plantões do Centro Obstétrico: trocas dentro do módulo GO (6 semanas)
- Plantões da UPA: trocas dentro do módulo de Especialidades (12 semanas)
- Manter número de plantões por área
- Trocas monetárias requerem concordância explícita

## ⚠️ Importante

- Os dados dos alunos da 5ª série foram importados automaticamente via IA
- **TODOS os alunos devem conferir seus dados na primeira vez que entrarem**
- Corrigir eventuais erros nos estágios e plantões
- Alunos da 6ª série precisam cadastrar seus dados manualmente

## 🔒 Segurança

- Senhas são hasheadas no banco de dados
- Row Level Security (RLS) habilitado
- API Key do Supabase nunca deve ser commitada
- Use variáveis de ambiente ou arquivo de configuração local

## 💰 Sistema de Pagamento

- Pagamentos via PIX
- Chave PIX digitada duas vezes (sem copiar/colar)
- Link WhatsApp para enviar comprovante
- Confirmação bilateral da troca

## 📱 Contato

Para sugestões ou problemas, entre em contato com o desenvolvedor do sistema.

## 📄 Licença

Este projeto é de uso exclusivo da FAMERP.
