-- =============================================
-- ATUALIZAÇÃO: Adicionar campos para controle da planilha
-- Execute este SQL no Supabase DEPOIS do setup inicial
-- =============================================

-- Adicionar campos na tabela trocas_confirmadas
ALTER TABLE trocas_confirmadas
ADD COLUMN IF NOT EXISTS modal_planilha_exibido BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS data_exibicao_modal TIMESTAMP WITH TIME ZONE,
ADD COLUMN IF NOT EXISTS planilha_atualizada BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS data_atualizacao_planilha TIMESTAMP WITH TIME ZONE;

-- Adicionar índices para performance
CREATE INDEX IF NOT EXISTS idx_trocas_planilha_atualizada
ON trocas_confirmadas(planilha_atualizada);

CREATE INDEX IF NOT EXISTS idx_trocas_modal_exibido
ON trocas_confirmadas(modal_planilha_exibido);

-- Comentários para documentação
COMMENT ON COLUMN trocas_confirmadas.modal_planilha_exibido IS 'Indica se o modal de atualização da planilha foi exibido';
COMMENT ON COLUMN trocas_confirmadas.data_exibicao_modal IS 'Data/hora em que o modal foi exibido';
COMMENT ON COLUMN trocas_confirmadas.planilha_atualizada IS 'Indica se o usuário confirmou que atualizou a planilha oficial';
COMMENT ON COLUMN trocas_confirmadas.data_atualizacao_planilha IS 'Data/hora em que o usuário confirmou a atualização';

-- View para facilitar consulta de trocas pendentes de atualização na planilha
CREATE OR REPLACE VIEW trocas_pendentes_planilha AS
SELECT
    tc.id,
    tc.created_at as data_troca,
    ua.numero_chamada as numero_anunciante,
    ua.nome as nome_anunciante,
    uo.numero_chamada as numero_ofertante,
    uo.nome as nome_ofertante,
    pa.tipo as plantao_anunciado,
    pa.data as data_plantao_anunciado,
    po.tipo as plantao_oferecido,
    po.data as data_plantao_oferecido,
    tc.modal_planilha_exibido,
    tc.planilha_atualizada,
    tc.tipo_troca
FROM trocas_confirmadas tc
JOIN usuarios ua ON tc.usuario_anunciante_id = ua.id
JOIN usuarios uo ON tc.usuario_ofertante_id = uo.id
JOIN plantoes pa ON tc.plantao_anunciado_id = pa.id
LEFT JOIN plantoes po ON tc.plantao_oferecido_id = po.id
WHERE
    tc.tipo_troca = 'troca' -- Apenas trocas mútuas (não pagamentos)
    AND (tc.planilha_atualizada = false OR tc.planilha_atualizada IS NULL)
ORDER BY tc.created_at DESC;

-- Comentário na view
COMMENT ON VIEW trocas_pendentes_planilha IS 'Lista de trocas mútuas que ainda não foram marcadas como atualizadas na planilha oficial';
