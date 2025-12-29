-- =============================================
-- MIGRATION: Update anuncios table schema
-- =============================================
-- Execute este script no SQL Editor do Supabase
-- para adicionar suporte a anúncios de disponibilidade
-- =============================================

-- 1. Tornar plantao_id opcional (para anúncios de disponibilidade)
ALTER TABLE anuncios
ALTER COLUMN plantao_id DROP NOT NULL;

-- 2. Atualizar CHECK constraint de tipo_anuncio para incluir 'pago' e 'recebo'
ALTER TABLE anuncios
DROP CONSTRAINT IF EXISTS anuncios_tipo_anuncio_check;

ALTER TABLE anuncios
ADD CONSTRAINT anuncios_tipo_anuncio_check
CHECK (tipo_anuncio IN ('troca', 'pago', 'recebo', 'ambos'));

-- 3. Adicionar coluna titulo (para anúncios de disponibilidade)
ALTER TABLE anuncios
ADD COLUMN IF NOT EXISTS titulo VARCHAR(255);

-- 4. Adicionar coluna chave_pix (para receber pagamentos)
ALTER TABLE anuncios
ADD COLUMN IF NOT EXISTS chave_pix TEXT;

-- 5. Adicionar coluna contato (para contato direto)
ALTER TABLE anuncios
ADD COLUMN IF NOT EXISTS contato VARCHAR(100);

-- 6. Renomear valor_monetario para valor_minimo (para consistência com o código)
ALTER TABLE anuncios
RENAME COLUMN valor_monetario TO valor_minimo;

-- 7. Adicionar coluna modulo e local (se não existirem)
ALTER TABLE plantoes
ADD COLUMN IF NOT EXISTS modulo VARCHAR(100);

ALTER TABLE plantoes
ADD COLUMN IF NOT EXISTS local VARCHAR(255);

-- =============================================
-- FIM DA MIGRATION
-- =============================================
-- Após executar este script, o sistema de anúncios
-- estará funcionando corretamente!
-- =============================================
