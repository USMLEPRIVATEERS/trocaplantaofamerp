# 📋 INSTRUÇÕES DE USO - Sistema de Troca de Plantões FAMERP

## 🚀 PASSO 1: Configurar o Supabase

### 1.1. Criar Conta e Projeto
1. Acesse [Supabase.com](https://supabase.com)
2. Clique em "Start your project"
3. Crie uma conta (pode usar Google/GitHub)
4. Clique em "New Project"
5. Preencha:
   - Nome do projeto: `troca-plantao-famerp`
   - Senha do banco: (escolha uma senha forte)
   - Região: South America (São Paulo)
6. Aguarde ~2 minutos para o projeto ser criado

### 1.2. Executar o SQL
1. No menu lateral, clique em "SQL Editor"
2. Clique em "New Query"
3. Abra o arquivo `supabase-setup.sql`
4. Copie TODO o conteúdo e cole no editor SQL
5. Clique em "Run" (ou pressione Ctrl+Enter)
6. Aguarde a execução (deve ver "Success. No rows returned")

### 1.3. Pegar as Credenciais
1. No menu lateral, clique em "Project Settings" (ícone de engrenagem)
2. Clique em "API"
3. Copie:
   - **URL**: algo como `https://xxxxxxxxxxxxx.supabase.co`
   - **anon public**: chave longa começando com `eyJ...`

## 🔧 PASSO 2: Configurar o Aplicativo

### 2.1. Configurar Credenciais
1. Na pasta do projeto, vá em `js/`
2. Renomeie `config.example.js` para `config.js`
3. Abra `config.js` em um editor de texto
4. Substitua:
   ```javascript
   const SUPABASE_URL = 'https://SEU_PROJETO.supabase.co';
   const SUPABASE_ANON_KEY = 'SUA_CHAVE_ANONIMA_AQUI';
   ```

   Por:
   ```javascript
   const SUPABASE_URL = 'https://xxxxxxxxxxxxx.supabase.co'; // Cole sua URL aqui
   const SUPABASE_ANON_KEY = 'eyJ...'; // Cole sua chave aqui
   ```

### 2.2. Testar Localmente
1. Abra `index.html` em um navegador moderno (Chrome, Firefox, Edge)
2. Se aparecer a tela de login, está funcionando!

## 📤 PASSO 3: Hospedar no GitHub Pages

### 3.1. Criar Repositório
1. Acesse [GitHub.com](https://github.com)
2. Clique em "New repository" (botão verde)
3. Nome: `troca-plantao-famerp`
4. Marque "Public"
5. Clique em "Create repository"

### 3.2. Fazer Upload dos Arquivos
**Opção 1 - Pela Interface Web:**
1. Na página do repositório, clique em "uploading an existing file"
2. Arraste TODOS os arquivos do projeto
3. **IMPORTANTE**: NÃO faça upload do arquivo `config.js` com suas credenciais!
4. Escreva uma mensagem: "Initial commit"
5. Clique em "Commit changes"

**Opção 2 - Por Git (se souber usar):**
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/troca-plantao-famerp.git
git push -u origin main
```

### 3.3. Ativar GitHub Pages
1. No repositório, clique em "Settings"
2. No menu lateral, clique em "Pages"
3. Em "Source", selecione "Deploy from a branch"
4. Em "Branch", selecione "main"
5. Clique em "Save"
6. Aguarde 1-2 minutos
7. Seu site estará em: `https://SEU_USUARIO.github.io/troca-plantao-famerp/`

### 3.4. Adicionar config.js DEPOIS
1. Acesse o site hospedado
2. Use as ferramentas de desenvolvedor (F12)
3. Vá na aba "Console"
4. Cole manualmente o código do config.js ou use uma variável de ambiente

**MELHOR OPÇÃO**: Use Netlify ou Vercel que permitem variáveis de ambiente:
- [Netlify.com](https://netlify.com) - Grátis, mais fácil
- [Vercel.com](https://vercel.com) - Grátis, mais profissional

## 👥 PASSO 4: Popular Dados dos Alunos da 5ª Série

Você tem duas opções:

### Opção A - Manual (Simples)
1. Cada aluno faz login pela primeira vez
2. Sistema cria conta automaticamente
3. Aluno preenche dados no dashboard

### Opção B - Importação em Massa (Avançado)
1. Acesse o Supabase
2. Vá em "Table Editor"
3. Selecione a tabela `usuarios`
4. Clique em "Insert" > "Insert row"
5. Ou use o SQL Editor para fazer INSERT em massa

**SCRIPT DE IMPORTAÇÃO EXEMPLO:**
Arquivo `import-alunos-5serie.sql` está disponível (executar no Supabase SQL Editor).

## 📱 PASSO 5: Usando o Sistema

### 5.1. Primeiro Acesso
1. Abra o site
2. Selecione sua série (5ª ou 6ª)
3. Digite seu número de chamada
4. Digite uma senha
5. Confirme a senha
6. Clique em "Entrar"

### 5.2. Dashboard
- **Meu Perfil**: Preencha nome, WhatsApp, etc.
- **Estágios**: Adicione/edite seus estágios
- **Plantões**: Adicione/edite seus plantões
- **Arrastar e Soltar**: Reorganize eventos
- **Anunciar**: Botão em cada evento para anunciar

### 5.3. Anunciar Plantão
1. Clique em "Anunciar" no plantão desejado
2. Escolha o tipo:
   - **Troca**: Quer trocar por outro plantão
   - **Venda**: Quer receber dinheiro
   - **Ambos**: Aceita qualquer opção
3. Se venda, defina o valor
4. Clique em "Publicar Anúncio"

### 5.4. Fazer uma Oferta
1. Vá em "Anúncios"
2. Encontre o plantão que quer pegar
3. Clique em "Fazer Oferta"
4. Escolha:
   - Oferecer um dos seus plantões (troca)
   - Oferecer pagamento
5. Aguarde o anunciante aceitar/rejeitar

### 5.5. Aceitar uma Oferta
1. Dashboard > Notificações
2. Veja as ofertas recebidas
3. Clique em "Ver Oferta"
4. Aceite ou rejeite
5. Se aceitar, outras ofertas são rejeitadas automaticamente

### 5.6. Confirmar Pagamento
1. Se for venda, informe:
   - Chave PIX (digite duas vezes)
   - WhatsApp
2. Comprador vê link WhatsApp
3. Comprador envia comprovante
4. Vendedor confirma recebimento
5. Troca é efetivada

### 5.7. Ver Outros Alunos
1. Vá em "Alunos"
2. Veja galeria com todos
3. Clique em um aluno
4. Veja plantões dele
5. Faça oferta diretamente

## ⚠️ REGRAS IMPORTANTES

### Validações Automáticas
O sistema avisa se a troca viola regras, mas PERMITE continuar se você concordar:

- ✅ Cirurgia: trocar dentro do módulo de Cirurgia
- ✅ Clínica: trocar dentro do módulo de Clínica
- ✅ Pediatria: trocar dentro do módulo PED
- ✅ GO: trocar dentro do módulo GO
- ✅ UPA: trocar dentro do módulo de Especialidades
- ⚠️ Centro Obstétrico: só sex/sáb/dom (aviso especial)
- ⚠️ Manter número de plantões por área
- ⚠️ Trocas até dia 22 de cada mês (só aviso)

### O Que o Sistema Registra
- Quem fez trocas contra regras
- Quem aceitou trocas monetárias
- Todos concordaram explicitamente (modal de confirmação)

## 🔒 SEGURANÇA

- ✅ Senhas hasheadas (SHA-256)
- ✅ Row Level Security habilitado
- ✅ API Key pública (sem risco)
- ✅ Dados isolados por usuário
- ✅ Chave PIX digitada 2x sem copiar/colar

## 🆘 PROBLEMAS COMUNS

### "Supabase is not defined"
- Certifique-se que o arquivo `config.js` existe
- Verifique se as credenciais estão corretas
- Tente limpar o cache do navegador (Ctrl+Shift+Del)

### "CORS Error"
- Se testando localmente, use: `python -m http.server 8000`
- Ou abra com Live Server no VS Code
- Ou use o site hospedado no GitHub Pages

### "Não consigo fazer login"
- Verifique se executou o SQL no Supabase
- Confira se as tabelas foram criadas (Table Editor)
- Tente criar novo usuário

### Dados dos alunos não aparecem
- Importe manualmente ou
- Cada aluno faz cadastro individual

## 📞 SUPORTE

Para dúvidas ou problemas:
1. Verifique este guia primeiro
2. Consulte o README.md
3. Veja os comentários no código-fonte
4. Entre em contato com o administrador do sistema

## ✅ CHECKLIST DE IMPLANTAÇÃO

- [ ] Conta Supabase criada
- [ ] SQL executado sem erros
- [ ] Credenciais copiadas
- [ ] config.js configurado
- [ ] Testado localmente (index.html abre)
- [ ] Repositório GitHub criado
- [ ] Arquivos enviados (SEM config.js)
- [ ] GitHub Pages ativado
- [ ] Site acessível online
- [ ] Primeiro login testado
- [ ] Dados dos alunos importados ou aguardando cadastro individual

## 🎉 PRONTO!

Agora é só divulgar o link para os colegas e começar a usar!

Link do sistema: `https://SEU_USUARIO.github.io/troca-plantao-famerp/`

---

**Desenvolvido para FAMERP - 2025**
**Todos os dados são de propriedade exclusiva dos usuários**
