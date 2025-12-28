# Instruções para Resolver Problemas de Login

## Problema: "Tracking Prevention blocked access to storage"

Se você está vendo este erro no console do navegador, é porque o seu navegador está bloqueando o acesso ao CDN do Supabase por questões de privacidade.

### Solução Rápida

**Para Safari:**
1. Abra as Preferências do Safari
2. Vá em "Privacidade"
3. Desmarque "Prevenir rastreamento entre sites" OU
4. Adicione o site à lista de exceções

**Para Firefox:**
1. Clique no ícone de escudo na barra de endereços
2. Clique em "Desativar proteção para este site"

**Para Edge:**
1. Vá em Configurações > Privacidade, pesquisa e serviços
2. Desative "Prevenção de rastreamento" OU
3. Adicione o site às exceções

**Para Chrome:**
1. O Chrome geralmente não bloqueia isso
2. Se estiver usando alguma extensão de privacidade, desative-a temporariamente

### Alternativa: Use outro navegador

Se não quiser alterar as configurações de privacidade, use:
- Google Chrome (sem extensões de bloqueio)
- Microsoft Edge (sem bloqueios ativos)

### Verificar se funcionou

1. Recarregue a página (F5 ou Cmd+R)
2. Abra o Console do navegador (F12)
3. Você deve ver "Supabase inicializado com sucesso"
4. Não deve haver erros em vermelho

## Outros Problemas Comuns

### "Identifier 'supabase' has already been declared"

Este erro acontece por **cache do navegador**. Siga estes passos:

**Solução DEFINITIVA - Limpar Cache:**

1. **Chrome/Edge:**
   - Pressione `Ctrl+Shift+Delete` (Windows) ou `Cmd+Shift+Delete` (Mac)
   - Selecione "Imagens e arquivos em cache"
   - Clique em "Limpar dados"
   - Recarregue a página com `Ctrl+F5` (Windows) ou `Cmd+Shift+R` (Mac)

2. **Firefox:**
   - Pressione `Ctrl+Shift+Delete` (Windows) ou `Cmd+Shift+Delete` (Mac)
   - Selecione "Cache"
   - Clique em "Limpar agora"
   - Recarregue com `Ctrl+F5` (Windows) ou `Cmd+Shift+R` (Mac)

3. **Safari:**
   - Menu Safari > Preferências > Avançado
   - Marque "Mostrar menu Desenvolver"
   - Menu Desenvolver > Limpar Caches
   - Recarregue com `Cmd+Shift+R`

**Atalho Rápido:**
- Pressione `Ctrl+F5` (Windows) ou `Cmd+Shift+R` (Mac) para recarregar sem cache

### "supabase.from is not a function"
- Isso geralmente é resolvido com a correção do Tracking Prevention acima
- Certifique-se de que sua conexão com a internet está estável
- Limpe o cache do navegador (veja instruções acima)

### Primeiro Login não funciona
- Preencha todos os campos: Série, Número da Chamada e Senha
- No primeiro acesso, você precisará confirmar a senha
- A senha fica visível para evitar erros de digitação

## Resumo Rápido

Se o login não funcionar:
1. ✅ Desative a Prevenção de Rastreamento do navegador
2. ✅ Limpe o cache (`Ctrl+Shift+Delete`)
3. ✅ Recarregue a página sem cache (`Ctrl+F5`)
4. ✅ Verifique no Console se aparece "✅ Supabase inicializado com sucesso"

Ainda com problemas? Use **Google Chrome** sem extensões de bloqueio.
