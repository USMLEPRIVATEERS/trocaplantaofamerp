# 📥 COMO IMPORTAR OS ALUNOS DA 5ª SÉRIE

## ✅ O QUE FOI CRIADO

Foi criado o arquivo **`import-alunos-5serie.sql`** que importa automaticamente todos os 76 alunos da 5ª série para o banco de dados.

---

## 🚀 PASSO A PASSO DA IMPORTAÇÃO

### 1. Acesse o Supabase

1. Abra [supabase.com](https://supabase.com)
2. Faça login no seu projeto
3. Vá em **"SQL Editor"** no menu lateral

### 2. Execute o Script de Importação

1. Clique em **"New Query"**
2. Abra o arquivo **`import-alunos-5serie.sql`**
3. **Copie TODO** o conteúdo do arquivo
4. **Cole** no SQL Editor do Supabase
5. Clique em **"Run"** (ou Ctrl+Enter)
6. Aguarde a execução (deve demorar alguns segundos)

### 3. Verificar Importação

Você verá mensagens como:

```
✅ Importação concluída com sucesso!
📊 76 alunos da 5ª série foram importados
🔐 Todos os alunos precisarão definir senha no primeiro login
```

---

## 🔍 O QUE FOI IMPORTADO

### Dados Importados Automaticamente

✅ **Número de chamada** (1 a 76)
✅ **Série** (5ª série)
✅ **Nome completo** de cada aluno
✅ **Flag de primeiro acesso** (precisarão criar senha)

### Dados NÃO Importados (Cada Aluno Deve Adicionar)

❌ **Estágios** - Cada aluno adiciona manualmente
❌ **Plantões** - Cada aluno adiciona manualmente
❌ **WhatsApp** - Cada aluno preenche
❌ **Chave PIX** - Cada aluno preenche
❌ **Disponibilidade** - Cada aluno configura

---

## 👤 PRIMEIRO ACESSO DO ALUNO

### Como o Aluno Faz o Primeiro Login

1. **Acessar o Sistema**
   - Abrir o site: `https://seu-site.netlify.app` (ou GitHub Pages)

2. **Fazer Login**
   - Selecionar: **5ª Série**
   - Digite seu **número de chamada** (1 a 76)
   - Digite uma **senha** (será criada)
   - **Confirmar a senha** (digitar novamente)
   - Clicar em **"Entrar"**

3. **No Dashboard (Primeira Vez)**
   - ⚠️ Verá um **alerta importante**:
     > "Os dados foram importados por IA. Confira seus estágios e plantões e corrija eventuais erros!"

4. **Preencher Dados Pessoais**
   - Nome completo (já estará preenchido)
   - **WhatsApp** (importante para trocas)
   - **Chave PIX** (importante para vendas)
   - Marcar se está disponível para pegar plantões
   - Salvar

5. **Adicionar Estágios**
   - Clicar em **"+ Adicionar Evento"**
   - Tipo: **Estágio**
   - Preencher nome, local, datas, módulo
   - Salvar
   - Repetir para todos os estágios

6. **Adicionar Plantões**
   - Clicar em **"+ Adicionar Evento"**
   - Tipo: **Plantão**
   - Preencher tipo, data, turno, módulo
   - Salvar
   - Repetir para todos os plantões

---

## 📋 EXEMPLO DE DADOS DO ALUNO #1 (Aline Sonagere Neves)

### Informações Básicas
- **Nome:** Aline Sonagere Neves
- **Número:** 1
- **Série:** 5ª

### Estágios que ela deve adicionar:

**1º PERÍODO (05/01-27/03) - Módulo CLÍNICA:**
- Reumato: 5/1 a 9/1
- Pneumo: 19/1 a 23/1
- Uro: 2/2 a 6/2
- Hemato: 9/2 a 13/2
- Gastro: 16/2 a 20/2
- Nefro: 2/3 a 6/3
- UBS Vila Toninho: 16/3 a 20/3

**2º PERÍODO (30/03-26/06) - Módulo CIRURGIA:**
- Fígado: 6/4 a 10/4
- Torácica: 13/4 a 17/4
- Otorrino: 20/4 a 24/4
- Ortopedia: 27/4 a 1/5
- Gastro Cirurgia: 4/5 a 8/5
- HOSPITAL MUNICIPAL: 18/5 a 22/5
- Coloprocto: 1/6 a 5/6
- ONCO Eumildo: 15/6 a 19/6
- ONCO Dib: 22/6 a 26/6

**3º PERÍODO (07/07-26/09) - Módulo ESPECIALIDADES:**
- Vascular: 27/7 a 31/7
- Anestesio: 3/8 a 7/8
- CIP: 10/8 a 14/8
- Saúde Coletiva - UBS: 17/8 a 21/8
- Saúde Coletiva - UBS: 31/8 a 4/9
- UPA TANGARÁ / SAMU: 14/9 a 18/9

**4º PERÍODO (29/09-19/12) - Módulo PED E GO:**
- Unid. I: 28/9 a 2/10
- Unid. IV: 12/10 a 16/10
- Centro Obstétrico: 26/10 a 30/10
- Enf. Ped. Ensino: 9/11 a 13/11
- Aloj. Conjunto: 23/11 a 27/11
- Amb. Ped.: 7/12 a 11/12

### Plantões que ela deve adicionar:

**PA Cirurgia:**
- 19/04/2026 - Noturno
- 28/04/2026 - Noturno
- 07/05/2026 - Noturno
- 16/05/2026 - Noturno
- 30/05/2026 - Diurno
- 04/06/2026 - Diurno
- 19/06/2026 - Noturno

**PA Clínica:**
- 12/01/2026 - Noturno
- 04/02/2026 - Noturno
- 15/02/2026 - Noturno
- 21/02/2026 - Noturno
- 16/03/2026 - Noturno

---

## ⚠️ IMPORTANTE

### Por Que Não Importamos os Estágios e Plantões Automaticamente?

1. **Validação Individual**: Cada aluno precisa conferir se as datas estão corretas
2. **Responsabilidade**: O aluno é responsável por seus próprios dados
3. **Flexibilidade**: Alguns alunos podem ter mudanças ou correções
4. **Precisão**: Evita erros em massa se houver algum dado incorreto

### Cada Aluno É Responsável Por:

✅ Verificar se seu nome está correto
✅ Adicionar seus estágios com datas corretas
✅ Adicionar seus plantões com datas corretas
✅ Preencher WhatsApp e PIX para facilitar trocas
✅ Manter seus dados atualizados

---

## 🔒 SEGURANÇA

- **Senhas**: Cada aluno cria sua própria senha no primeiro acesso
- **Dados Privados**: WhatsApp e PIX são privados (só aparecem em trocas confirmadas)
- **Primeiro Acesso**: Flag `primeiro_acesso = true` garante que precisam criar senha
- **Hash SHA-256**: Senhas são armazenadas com hash (não em texto puro)

---

## 📊 VERIFICAR IMPORTAÇÃO NO SUPABASE

### Ver Todos os Alunos Importados

```sql
SELECT numero_chamada, nome, serie, primeiro_acesso
FROM usuarios
WHERE serie = '5'
ORDER BY numero_chamada;
```

### Ver Quantos Foram Importados

```sql
SELECT COUNT(*) as total_alunos
FROM usuarios
WHERE serie = '5';
```

Deve retornar: **76 alunos**

### Ver Alunos Que Já Fizeram Login

```sql
SELECT numero_chamada, nome
FROM usuarios
WHERE serie = '5' AND primeiro_acesso = false
ORDER BY numero_chamada;
```

### Ver Alunos Que Ainda Não Fizeram Login

```sql
SELECT numero_chamada, nome
FROM usuarios
WHERE serie = '5' AND primeiro_acesso = true
ORDER BY numero_chamada;
```

---

## 🎯 PRÓXIMOS PASSOS

### Após Importar os Alunos

1. ✅ **Divulgar o Link** do sistema para todos os alunos
2. ✅ **Instruir** cada aluno a fazer o primeiro login
3. ✅ **Lembrar** de preencher WhatsApp e PIX
4. ✅ **Orientar** a adicionar todos os estágios e plantões
5. ✅ **Testar** o sistema fazendo uma troca de teste

### Mensagem Para Enviar aos Alunos

```
📢 SISTEMA DE TROCA DE PLANTÕES - FAMERP

Link: https://seu-site.netlify.app

🔐 PRIMEIRO ACESSO:
1. Selecione "5ª Série"
2. Digite seu número de chamada (1 a 76)
3. Crie uma senha
4. Confirme a senha

✅ DEPOIS:
1. Preencha WhatsApp e Chave PIX
2. Adicione TODOS seus estágios
3. Adicione TODOS seus plantões
4. Comece a anunciar/trocar!

⚠️ IMPORTANTE: Confira se seus dados estão corretos!
```

---

## 💡 DICAS

### Para os Alunos

- ✅ **Senha Forte**: Use uma senha fácil de lembrar mas difícil de adivinhar
- ✅ **WhatsApp Completo**: Digite com DDD (ex: 17999887766)
- ✅ **PIX Correto**: Digite duas vezes para evitar erros
- ✅ **Conferir Datas**: Verifique se os estágios/plantões estão nos dias certos
- ✅ **Anunciar Cedo**: Quanto antes anunciar, mais chances de trocar

### Para o Administrador

- ✅ **Backup**: Faça backup regular do banco Supabase
- ✅ **Monitorar**: Acompanhe quantos alunos fizeram login
- ✅ **Suporte**: Esteja disponível para dúvidas iniciais
- ✅ **Testar**: Crie um usuário de teste antes de liberar

---

## ❓ FAQ

### "Posso importar os estágios/plantões também?"

Tecnicamente sim, mas NÃO recomendamos porque:
- Cada aluno precisa conferir se as datas estão corretas
- Pode haver erros na digitação dos dados originais
- O aluno precisa se familiarizar com o sistema
- É melhor que cada um seja responsável por seus dados

### "E se um aluno esquecer a senha?"

Por enquanto, você precisará:
1. Ir no Supabase
2. Table Editor → usuarios
3. Encontrar o aluno
4. Alterar `primeiro_acesso` para `true`
5. Aluno fará login novamente e criará nova senha

### "Posso adicionar alunos manualmente depois?"

Sim! Basta:
1. Ir no Supabase → Table Editor → usuarios
2. Insert Row
3. Preencher: numero_chamada, serie, nome, primeiro_acesso=true
4. Save

---

**✅ Pronto! Sistema configurado e alunos importados!**

**🎉 Agora é só divulgar o link e começar a usar!**
