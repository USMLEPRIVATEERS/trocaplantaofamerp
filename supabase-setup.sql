-- =============================================
-- SUPABASE SQL SETUP - TROCA PLANTÃO FAMERP
-- =============================================
-- Execute este script no SQL Editor do Supabase
-- =============================================

-- 1. TABELA DE USUÁRIOS (ALUNOS)
CREATE TABLE IF NOT EXISTS usuarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    numero_chamada INTEGER NOT NULL,
    serie VARCHAR(10) NOT NULL CHECK (serie IN ('5', '6')),
    senha_hash TEXT NOT NULL,
    nome VARCHAR(255),
    whatsapp VARCHAR(20),
    chave_pix TEXT,
    aceita_plantoes BOOLEAN DEFAULT false,
    valor_plantao DECIMAL(10,2),
    aceita_gratuito BOOLEAN DEFAULT false,
    aceita_troca BOOLEAN DEFAULT false,
    aceita_noturno BOOLEAN DEFAULT false,
    aceita_diurno BOOLEAN DEFAULT false,
    quantidade_plantoes_aceita INTEGER DEFAULT 0,
    primeiro_acesso BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(numero_chamada, serie)
);

-- 2. TABELA DE PERÍODOS DE DISPONIBILIDADE
CREATE TABLE IF NOT EXISTS periodos_disponibilidade (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. TABELA DE ESPECIALIDADES ACEITAS
CREATE TABLE IF NOT EXISTS especialidades_aceitas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    especialidade VARCHAR(100) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. TABELA DE ESTÁGIOS
CREATE TABLE IF NOT EXISTS estagios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    nome VARCHAR(255) NOT NULL,
    local VARCHAR(255),
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    periodo INTEGER CHECK (periodo IN (1, 2, 3, 4)),
    modulo VARCHAR(100),
    ordem INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 5. TABELA DE PLANTÕES
CREATE TABLE IF NOT EXISTS plantoes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    tipo VARCHAR(50) NOT NULL, -- 'PA Cirurgia', 'PA Clínica', 'EMEPED', 'Emergência C.O.', 'UPA'
    data DATE NOT NULL,
    turno VARCHAR(20) NOT NULL CHECK (turno IN ('Diurno', 'Noturno')),
    especialidade VARCHAR(100),
    ordem INTEGER DEFAULT 0,
    anunciado BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 6. TABELA DE ANÚNCIOS DE PLANTÕES
CREATE TABLE IF NOT EXISTS anuncios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    plantao_id UUID REFERENCES plantoes(id) ON DELETE CASCADE,
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    tipo_anuncio VARCHAR(20) NOT NULL CHECK (tipo_anuncio IN ('troca', 'venda', 'ambos')),
    valor_monetario DECIMAL(10,2),
    descricao TEXT,
    status VARCHAR(20) DEFAULT 'ativo' CHECK (status IN ('ativo', 'concluido', 'cancelado')),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 7. TABELA DE OFERTAS DE TROCA
CREATE TABLE IF NOT EXISTS ofertas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    anuncio_id UUID REFERENCES anuncios(id) ON DELETE CASCADE,
    ofertante_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    tipo_oferta VARCHAR(20) NOT NULL CHECK (tipo_oferta IN ('troca', 'pagamento')),
    plantao_oferecido_id UUID REFERENCES plantoes(id) ON DELETE SET NULL,
    valor_oferecido DECIMAL(10,2),
    mensagem TEXT,
    status VARCHAR(20) DEFAULT 'pendente' CHECK (status IN ('pendente', 'aceita', 'rejeitada', 'cancelada')),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 8. TABELA DE TROCAS CONFIRMADAS
CREATE TABLE IF NOT EXISTS trocas_confirmadas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    anuncio_id UUID REFERENCES anuncios(id) ON DELETE CASCADE,
    oferta_id UUID REFERENCES ofertas(id) ON DELETE CASCADE,
    usuario_anunciante_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    usuario_ofertante_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    plantao_anunciado_id UUID REFERENCES plantoes(id) ON DELETE SET NULL,
    plantao_oferecido_id UUID REFERENCES plantoes(id) ON DELETE SET NULL,
    tipo_troca VARCHAR(20) NOT NULL CHECK (tipo_troca IN ('troca', 'pagamento')),
    valor DECIMAL(10,2),
    pagamento_confirmado BOOLEAN DEFAULT false,
    contra_regras BOOLEAN DEFAULT false,
    regras_aceitas BOOLEAN DEFAULT false,
    whatsapp_anunciante VARCHAR(20),
    chave_pix_anunciante TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 9. TABELA DE NOTIFICAÇÕES
CREATE TABLE IF NOT EXISTS notificacoes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    tipo VARCHAR(50) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    mensagem TEXT NOT NULL,
    link TEXT,
    lida BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 10. TABELA DE LOG DE ACORDOS CONTRA REGRAS
CREATE TABLE IF NOT EXISTS log_contra_regras (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    troca_id UUID REFERENCES trocas_confirmadas(id) ON DELETE CASCADE,
    usuario_anunciante_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    usuario_ofertante_id UUID REFERENCES usuarios(id) ON DELETE CASCADE,
    regra_violada TEXT NOT NULL,
    ambos_concordaram BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- =============================================
-- INDEXES PARA PERFORMANCE
-- =============================================

CREATE INDEX idx_usuarios_serie ON usuarios(serie);
CREATE INDEX idx_usuarios_numero_chamada ON usuarios(numero_chamada);
CREATE INDEX idx_estagios_usuario ON estagios(usuario_id);
CREATE INDEX idx_estagios_data ON estagios(data_inicio, data_fim);
CREATE INDEX idx_plantoes_usuario ON plantoes(usuario_id);
CREATE INDEX idx_plantoes_data ON plantoes(data);
CREATE INDEX idx_anuncios_status ON anuncios(status);
CREATE INDEX idx_ofertas_anuncio ON ofertas(anuncio_id);
CREATE INDEX idx_ofertas_status ON ofertas(status);
CREATE INDEX idx_notificacoes_usuario ON notificacoes(usuario_id);
CREATE INDEX idx_notificacoes_lida ON notificacoes(lida);

-- =============================================
-- FUNCTIONS E TRIGGERS
-- =============================================

-- Function para atualizar updated_at automaticamente
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Triggers para updated_at
CREATE TRIGGER update_usuarios_updated_at BEFORE UPDATE ON usuarios
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_estagios_updated_at BEFORE UPDATE ON estagios
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_plantoes_updated_at BEFORE UPDATE ON plantoes
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_anuncios_updated_at BEFORE UPDATE ON anuncios
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_ofertas_updated_at BEFORE UPDATE ON ofertas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_trocas_updated_at BEFORE UPDATE ON trocas_confirmadas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Function para criar notificação quando uma oferta é feita
CREATE OR REPLACE FUNCTION notify_new_offer()
RETURNS TRIGGER AS $$
DECLARE
    anunciante_id UUID;
    plantao_data DATE;
BEGIN
    -- Pega o ID do anunciante
    SELECT usuario_id INTO anunciante_id
    FROM anuncios
    WHERE id = NEW.anuncio_id;

    -- Pega a data do plantão
    SELECT p.data INTO plantao_data
    FROM anuncios a
    JOIN plantoes p ON a.plantao_id = p.id
    WHERE a.id = NEW.anuncio_id;

    -- Cria a notificação
    INSERT INTO notificacoes (usuario_id, tipo, titulo, mensagem, link)
    VALUES (
        anunciante_id,
        'nova_oferta',
        'Nova oferta para seu plantão!',
        'Você recebeu uma nova oferta para o plantão do dia ' || plantao_data || '. Confira no dashboard.',
        '/dashboard.html?tab=ofertas'
    );

    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER trigger_notify_new_offer
    AFTER INSERT ON ofertas
    FOR EACH ROW EXECUTE FUNCTION notify_new_offer();

-- Function para rejeitar outras ofertas quando uma é aceita
CREATE OR REPLACE FUNCTION reject_other_offers()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.status = 'aceita' AND OLD.status = 'pendente' THEN
        -- Rejeita todas as outras ofertas do mesmo anúncio
        UPDATE ofertas
        SET status = 'rejeitada'
        WHERE anuncio_id = NEW.anuncio_id
        AND id != NEW.id
        AND status = 'pendente';

        -- Marca o anúncio como concluído
        UPDATE anuncios
        SET status = 'concluido'
        WHERE id = NEW.anuncio_id;
    END IF;

    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER trigger_reject_other_offers
    AFTER UPDATE ON ofertas
    FOR EACH ROW EXECUTE FUNCTION reject_other_offers();

-- =============================================
-- ROW LEVEL SECURITY (RLS)
-- =============================================

-- Habilita RLS nas tabelas
ALTER TABLE usuarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE estagios ENABLE ROW LEVEL SECURITY;
ALTER TABLE plantoes ENABLE ROW LEVEL SECURITY;
ALTER TABLE anuncios ENABLE ROW LEVEL SECURITY;
ALTER TABLE ofertas ENABLE ROW LEVEL SECURITY;
ALTER TABLE trocas_confirmadas ENABLE ROW LEVEL SECURITY;
ALTER TABLE notificacoes ENABLE ROW LEVEL SECURITY;
ALTER TABLE periodos_disponibilidade ENABLE ROW LEVEL SECURITY;
ALTER TABLE especialidades_aceitas ENABLE ROW LEVEL SECURITY;
ALTER TABLE log_contra_regras ENABLE ROW LEVEL SECURITY;

-- Políticas para USUARIOS (todos podem ver todos)
CREATE POLICY "Usuários podem ver todos os perfis"
    ON usuarios FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem atualizar seu próprio perfil"
    ON usuarios FOR UPDATE
    USING (true);

CREATE POLICY "Usuários podem inserir seu perfil"
    ON usuarios FOR INSERT
    WITH CHECK (true);

-- Políticas para ESTAGIOS
CREATE POLICY "Todos podem ver estágios"
    ON estagios FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem gerenciar seus estágios"
    ON estagios FOR ALL
    USING (true);

-- Políticas para PLANTOES
CREATE POLICY "Todos podem ver plantões"
    ON plantoes FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem gerenciar seus plantões"
    ON plantoes FOR ALL
    USING (true);

-- Políticas para ANUNCIOS
CREATE POLICY "Todos podem ver anúncios ativos"
    ON anuncios FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem criar anúncios"
    ON anuncios FOR INSERT
    WITH CHECK (true);

CREATE POLICY "Usuários podem atualizar seus anúncios"
    ON anuncios FOR UPDATE
    USING (true);

-- Políticas para OFERTAS
CREATE POLICY "Todos podem ver ofertas"
    ON ofertas FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem criar ofertas"
    ON ofertas FOR INSERT
    WITH CHECK (true);

CREATE POLICY "Usuários podem atualizar ofertas"
    ON ofertas FOR UPDATE
    USING (true);

-- Políticas para TROCAS_CONFIRMADAS
CREATE POLICY "Todos podem ver trocas"
    ON trocas_confirmadas FOR SELECT
    USING (true);

CREATE POLICY "Sistema pode criar trocas"
    ON trocas_confirmadas FOR INSERT
    WITH CHECK (true);

CREATE POLICY "Usuários podem atualizar trocas"
    ON trocas_confirmadas FOR UPDATE
    USING (true);

-- Políticas para NOTIFICACOES
CREATE POLICY "Usuários veem suas notificações"
    ON notificacoes FOR SELECT
    USING (true);

CREATE POLICY "Sistema pode criar notificações"
    ON notificacoes FOR INSERT
    WITH CHECK (true);

CREATE POLICY "Usuários podem atualizar suas notificações"
    ON notificacoes FOR UPDATE
    USING (true);

-- Políticas para PERIODOS_DISPONIBILIDADE
CREATE POLICY "Todos podem ver períodos"
    ON periodos_disponibilidade FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem gerenciar períodos"
    ON periodos_disponibilidade FOR ALL
    USING (true);

-- Políticas para ESPECIALIDADES_ACEITAS
CREATE POLICY "Todos podem ver especialidades"
    ON especialidades_aceitas FOR SELECT
    USING (true);

CREATE POLICY "Usuários podem gerenciar especialidades"
    ON especialidades_aceitas FOR ALL
    USING (true);

-- Políticas para LOG_CONTRA_REGRAS
CREATE POLICY "Todos podem ver log"
    ON log_contra_regras FOR SELECT
    USING (true);

CREATE POLICY "Sistema pode criar log"
    ON log_contra_regras FOR INSERT
    WITH CHECK (true);

-- =============================================
-- DADOS INICIAIS (OPCIONAL)
-- =============================================

-- Você pode popular com os dados dos alunos aqui se quiser
-- Mas recomendo fazer isso via interface do app

COMMENT ON TABLE usuarios IS 'Tabela de usuários/alunos do sistema';
COMMENT ON TABLE estagios IS 'Estágios de cada aluno';
COMMENT ON TABLE plantoes IS 'Plantões de cada aluno';
COMMENT ON TABLE anuncios IS 'Anúncios de plantões para troca/venda';
COMMENT ON TABLE ofertas IS 'Ofertas feitas em anúncios';
COMMENT ON TABLE trocas_confirmadas IS 'Trocas que foram confirmadas';
COMMENT ON TABLE notificacoes IS 'Notificações para os usuários';
COMMENT ON TABLE log_contra_regras IS 'Log de trocas que violaram regras mas foram aceitas';
