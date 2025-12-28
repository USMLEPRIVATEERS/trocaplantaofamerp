# PROMPT PARA GERAR SQL DE IMPORTAÇÃO

Cole este prompt em outra IA (ChatGPT, Claude, etc.) junto com o arquivo `5a_Serie_Medica_2026_Estagios_Plantoes.txt`:

---

Preciso que você analise o arquivo anexado e gere um script SQL completo para importar TODOS os dados no banco de dados PostgreSQL (Supabase).

## ESTRUTURA DO BANCO DE DADOS

```sql
-- Tabela usuarios
CREATE TABLE usuarios (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    numero_chamada INTEGER NOT NULL,
    serie VARCHAR(10) NOT NULL,
    nome VARCHAR(255),
    primeiro_acesso BOOLEAN DEFAULT true,
    UNIQUE(numero_chamada, serie)
);

-- Tabela estagios
CREATE TABLE estagios (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    usuario_id UUID REFERENCES usuarios(id),
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    local VARCHAR(255) NOT NULL,
    modulo VARCHAR(100)
);

-- Tabela plantoes
CREATE TABLE plantoes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    usuario_id UUID REFERENCES usuarios(id),
    data DATE NOT NULL,
    tipo VARCHAR(100) NOT NULL,  -- 'Cirurgia' ou 'Clínica'
    turno VARCHAR(50) NOT NULL    -- 'Diurno' ou 'Noturno'
);
```

## INSTRUÇÕES

1. **Processar o arquivo anexado** que contém 76 alunos da 5ª série médica

2. **Gerar SQL com 3 PARTES:**

### PARTE 1: INSERIR ALUNOS
```sql
INSERT INTO usuarios (numero_chamada, serie, primeiro_acesso) VALUES
(1, '5', true),
(2, '5', true),
-- ... até 76
(76, '5', true)
ON CONFLICT (numero_chamada, serie) DO NOTHING;

-- Depois, atualizar os nomes:
UPDATE usuarios SET nome = 'Aline Sonagere Neves' WHERE numero_chamada = 1 AND serie = '5';
UPDATE usuarios SET nome = 'Andreza Vieira Ramos' WHERE numero_chamada = 2 AND serie = '5';
-- ... etc
```

### PARTE 2: INSERIR ESTÁGIOS

Para cada aluno que tem estágios, inserir usando o padrão:

```sql
-- Estagios do aluno #1 - Aline Sonagere Neves
INSERT INTO estagios (usuario_id, data_inicio, data_fim, local, modulo)
SELECT u.id, data_inicio::date, data_fim::date, local, modulo
FROM usuarios u, (
  VALUES
    ('2026-01-05', '2026-01-09', 'Reumato', 'CLÍNICA'),
    ('2026-01-19', '2026-01-23', 'Pneumo', 'CLÍNICA'),
    -- ... todos os estágios do aluno
) AS v(data_inicio, data_fim, local, modulo)
WHERE u.numero_chamada = 1 AND u.serie = '5';
```

**IMPORTANTE:**
- Converter datas do formato "5/1 a 9/1" para:
  - data_inicio: '2026-01-05'
  - data_fim: '2026-01-09'
- Capturar o módulo (CLÍNICA, CIRURGIA, ESPECIALIDADES, PED E GO)
- Ignorar alunos com "Nenhum estágio registrado"

### PARTE 3: INSERIR PLANTÕES

Para cada aluno que tem plantões, inserir usando o padrão:

```sql
-- Plantoes do aluno #1 - Aline Sonagere Neves
INSERT INTO plantoes (usuario_id, data, tipo, turno)
SELECT u.id, data::date, tipo, turno
FROM usuarios u, (
  VALUES
    ('2026-04-19', 'Cirurgia', 'Noturno'),
    ('2026-04-28', 'Cirurgia', 'Noturno'),
    -- ... todos os plantões do aluno
) AS v(data, tipo, turno)
WHERE u.numero_chamada = 1 AND u.serie = '5';
```

**IMPORTANTE:**
- Converter datas do formato "19/04/2026" para '2026-04-19'
- Tipo = 'Cirurgia' se está em "PA Cirurgia:", senão 'Clínica'
- Turno = 'Diurno' ou 'Noturno' conforme indicado

## FORMATO FINAL DO SQL

```sql
-- =============================================
-- IMPORTAÇÃO COMPLETA - 5ª SÉRIE MÉDICA 2026
-- =============================================

SET session_replication_role = 'replica';

-- PARTE 1: INSERIR ALUNOS
-- (código aqui)

-- PARTE 2: INSERIR ESTÁGIOS
-- (código aqui)

-- PARTE 3: INSERIR PLANTÕES
-- (código aqui)

SET session_replication_role = 'origin';

-- Verificação
SELECT 'Alunos' as tipo, COUNT(*) as total FROM usuarios WHERE serie = '5'
UNION ALL
SELECT 'Estagios' as tipo, COUNT(*) FROM estagios e JOIN usuarios u ON e.usuario_id = u.id WHERE u.serie = '5'
UNION ALL
SELECT 'Plantoes' as tipo, COUNT(*) FROM plantoes p JOIN usuarios u ON p.usuario_id = u.id WHERE u.serie = '5';
```

## OBSERVAÇÕES IMPORTANTES

1. O arquivo TXT tem encoding issues - adapte conforme necessário
2. Alguns alunos não têm estágios registrados - pular esses
3. Todos os alunos têm plantões
4. Use escape de aspas simples nos nomes (ex: "O'Neil" → "O''Neil")
5. Garantir que as datas estão no formato YYYY-MM-DD

## RESULTADO ESPERADO

- 76 alunos inseridos
- ~800-1000 estágios inseridos (depende de quantos alunos têm dados)
- ~400-500 plantões inseridos
- SQL completo, pronto para executar no Supabase

Por favor, gere o SQL completo agora.
