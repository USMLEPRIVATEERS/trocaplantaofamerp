-- =============================================
-- IMPORTAÇÃO COMPLETA - 5ª SÉRIE MÉDICA 2026
-- =============================================
-- Supabase / PostgreSQL
-- 
-- Conteúdo:
--   • 76 alunos
--   • 968 estágios (4 períodos)
--   • 965 plantões (1º e 2º período)
--
-- SENHA PADRÃO: mudar123 (todos devem trocar no primeiro acesso)
-- =============================================

-- =============================================
-- PARTE 1: INSERIR ALUNOS
-- =============================================
-- Senha padrão: mudar123 (hash bcrypt)
-- primeiro_acesso = true para forçar troca de senha

INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (1, '5', 'Aline Sonagere Neves', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (2, '5', 'Andreza Vieira Ramos', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (3, '5', 'Anna Luisa Lima Caricati', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (4, '5', 'Arthur Gonçalez Sasaki', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (5, '5', 'Ayrton Ono Sakamoto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (6, '5', 'Bárbara Julia Tricarico Petrucci', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (7, '5', 'Beatriz Lopes Montozo', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (8, '5', 'Breno Borges Godoy', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (9, '5', 'Bruno Zaccari Bertolini', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (10, '5', 'Carlos Eduardo S. G. Feitosa', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (11, '5', 'Carlos Ryuichi Yamamoto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (12, '5', 'Caroline Gomes de Oliveira', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (13, '5', 'Conceição Pinheiro de Souza', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (14, '5', 'Daniel Delmondes Ramos', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (15, '5', 'Enzo Augusto Botero', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (16, '5', 'Felipe Costa Trida Sene', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (17, '5', 'Felipe de Oliveira Belo', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (18, '5', 'Fernanda de Jesus Paixão Morgado', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (19, '5', 'Fernanda Follis Tasso', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (20, '5', 'Gabriel Alleoni Moreira', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (21, '5', 'Gabriel Andrade Vaz de Lima', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (22, '5', 'Gabriel Cardozo de Mattos', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (23, '5', 'Gabriel de Oliveira Pinto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (24, '5', 'Gabriel Goldner Campos', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (25, '5', 'Gabriel Lourenço R. L. de Carvalho', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (26, '5', 'Gabriel Ribeiro Ramos', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (27, '5', 'Gabriela Marcia Marques', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (28, '5', 'Giovana Chagas Irineu', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (29, '5', 'Giovanna Custodio Hengler', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (30, '5', 'Giulia Mulero Citro', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (31, '5', 'Giuseppe Ribeiro Ayello', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (32, '5', 'Guilherme Silva Bruno Barbosa', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (33, '5', 'Gustavo Feletti Rocha', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (34, '5', 'Henrique Otávio Melo de Assis', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (35, '5', 'Henrique Yuzo Nakamune Uezu', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (36, '5', 'Ingrid Louise Alves da Silva', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (37, '5', 'Isabella Cardoso Almeida', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (38, '5', 'Isabella Carolina Santos Silveira', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (39, '5', 'Isadora Carvalho S. de Moraes', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (40, '5', 'João Victor Azevedo Zanatta', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (41, '5', 'Juan Silva Locks Camargo', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (42, '5', 'Julia de Aguiar Freitas', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (43, '5', 'Júlia Palaro Biasotti', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (44, '5', 'Júlia Sinhorini de Lima', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (45, '5', 'Laura Cecilia Fernandes Silva', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (46, '5', 'Leandro Kiyoshi Ynada', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (47, '5', 'Leonardo Fornazari Estabile', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (48, '5', 'Letícia Aguirre Mantoani', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (49, '5', 'Letícia Segura Graciani', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (50, '5', 'Lucas Zaidel Netto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (51, '5', 'Lucca Oliveira Sanches', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (52, '5', 'Marcos Antonio Dias Vilela', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (53, '5', 'Mariana Lyra Arré', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (54, '5', 'Mariana Mendes Justiça', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (55, '5', 'Matheus Da Silveira Galvão', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (56, '5', 'Matheus Nassar Lecce', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (57, '5', 'Matheus Simioni', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (58, '5', 'Maurício Samorano Silva', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (59, '5', 'Patrick Oliveira Lemes', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (60, '5', 'Pedro Arthur Deângeli Pivirotto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (61, '5', 'Pedro Cezar Guedes', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (62, '5', 'Rafael Santos Restivo', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (63, '5', 'Raquel Hernandez Bertine', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (64, '5', 'Rebeca Dall´ Aqua de Godoy', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (65, '5', 'Rodrigo Shibaki', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (66, '5', 'Sam William Rodrigues Martins', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (67, '5', 'Sarah Ganga Frizzas Borsari', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (68, '5', 'Tarsis de Oliveira Pissolato', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (69, '5', 'Thaylon de Abreu Damacena', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (70, '5', 'Victor Augusto Belani Fernandes', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (71, '5', 'Víctor Joaquim de A. e Gouveia', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (72, '5', 'Victório Marangon Neto', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (73, '5', 'Vitor de Oliveira Rossi', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (74, '5', 'Vitória Ferreira de Oliveira', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (75, '5', 'Vivian Joice Pinto Silva', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;
INSERT INTO usuarios (numero_chamada, serie, nome, senha_hash, primeiro_acesso) 
VALUES (76, '5', 'William de Freitas Barros', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', true) 
ON CONFLICT (numero_chamada, serie) DO UPDATE SET nome = EXCLUDED.nome, primeiro_acesso = true;

-- =============================================
-- PARTE 2: LIMPAR DADOS ANTIGOS
-- =============================================

DELETE FROM estagios WHERE usuario_id IN (SELECT id FROM usuarios WHERE serie = '5');
DELETE FROM plantoes WHERE usuario_id IN (SELECT id FROM usuarios WHERE serie = '5');

-- =============================================
-- PARTE 3: INSERIR ESTÁGIOS
-- =============================================


-- Aluno 1: Aline Sonagere Neves
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Reumato' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Pneumo' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Uro' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '9/2 a 13/2', 'Hemato' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Gastro' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Nefro' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Fígado' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'Torácica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Otorrino' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'Ortopedia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Coloprocto' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '27/7 a 31/7', 'Vascular' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'Anestesio' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '10/8 a 14/8', 'CIP' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Unid. I' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Unid. IV' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';

-- Aluno 2: Andreza Vieira Ramos

-- Aluno 3: Anna Luisa Lima Caricati
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Hemato' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '9/2 a 13/2', 'Uro' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'DIP' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';

-- Aluno 4: Arthur Gonçalez Sasaki
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Uro' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '12/1 a 16/1', 'Hemato' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Reumato' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Pneumo' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Gastro' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Nefro' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Torácica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'Fígado' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Ortopedia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'Otorrino' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'ONCO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '27/7 a 31/7', 'CIP' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'Vascular' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '10/8 a 14/8', 'Anestesio' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Unid. I' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Unid. IV' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';

-- Aluno 5: Ayrton Ono Sakamoto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'P' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Otorrino' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'Ortopedia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Fígado' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'Torácica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Eumildo' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Coloprocto' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '27/7 a 31/7', 'Anestesio' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'CIP' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '10/8 a 14/8', 'Vascular' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';

-- Aluno 6: Bárbara Julia Tricarico Petrucci
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Hemato' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '12/1 a 16/1', 'Uro' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Ortopedia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'Otorrino' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Torácica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'Fígado' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';

-- Aluno 7: Beatriz Lopes Montozo
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '29/12 a 4/1', 'F É' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Uro' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '26/1 a 30/1', 'Hemato' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Fígado' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'Torácica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Otorrino' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'Ortopedia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'Vascular' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '13/7 a 17/7', 'Anestesio' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'CIP' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Unid. IV' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Unid. I' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';

-- Aluno 8: Breno Borges Godoy
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '29/06 a 04/07', 'É R' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'CIP' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '13/7 a 17/7', 'Vascular' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'Anestesio' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '27/7 a 31/7', 'DIP' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'Saúde Coletiva - UBS CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'Saúde Coletiva - UBS SCHMIDTT' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';

-- Aluno 9: Bruno Zaccari Bertolini
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Pneumo' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Hemato' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '26/1 a 30/1', 'Uro' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Reumato' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Nefro' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Gastro' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'I N T' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Coloprocto' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '27/4 a 1/5', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Torácica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'Fígado' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Ortopedia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'Otorrino' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';

-- Aluno 10: Carlos Eduardo Sathler Gomes Feitosa
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'Anestesio' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '13/7 a 17/7', 'CIP' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'Vascular' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Unid. I' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Unid. IV' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';

-- Aluno 11: Carlos Ryuichi Yamamoto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Uro' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '23/3 a 27/3', 'Hemato' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'E' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'ONCO' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Otorrino' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'Ortopedia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Fígado' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'Torácica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '29/06 a 04/07', 'I A' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '7/9 a 11/9', 'Vascular' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'Anestesio' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '21/9 a 25/9', 'CIP' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';

-- Aluno 12: Caroline Gomes de Oliveira
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '29/12 a 4/1', 'A S' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Gastro' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Nefro' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Reumato' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Pneumo' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Hemato' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '23/3 a 27/3', 'Uro' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'R M' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '13/4 a 17/4', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Coloprocto' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Ortopedia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'Otorrino' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Torácica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'Fígado' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';

-- Aluno 13: Conceição Pinheiro de Souza
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'DIP' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Unid. I' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Unid. IV' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';

-- Aluno 14: Daniel Delmondes Ramos
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Uro' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '23/2 a 27/2', 'Hemato' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'E' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Fígado' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'Torácica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Otorrino' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'Ortopedia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '7/9 a 11/9', 'CIP' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'Vascular' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '21/9 a 25/9', 'Anestesio' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';

-- Aluno 15: Enzo Augusto Botero
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'Gastro' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Nefro' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Hemato' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '23/2 a 27/2', 'Uro' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Reumato' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Pneumo' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '30/3 a 3/4', 'D' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'Coloprocto' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '25/5 a 29/5', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Torácica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'Fígado' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Ortopedia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'Otorrino' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '7/9 a 11/9', 'Anestesio' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '14/9 a 18/9', 'CIP' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '21/9 a 25/9', 'Vascular' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';

-- Aluno 16: Felipe Costa Trida Sene
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'Vascular' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '24/8 a 28/8', 'Anestesio' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'CIP' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '28/9 a 2/10', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '12/10 a 16/10', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '26/10 a 30/10', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '9/11 a 13/11', 'Unid. IV' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '23/11 a 27/11', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'PED E GO', '7/12 a 11/12', 'Unid. I' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';

-- Aluno 17: Felipe de Oliveira Belo
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '5/1 a 9/1', 'Nefro' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '19/1 a 23/1', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/2 a 6/2', 'Gastro' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/2 a 20/2', 'Pneumo' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Uro' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '9/3 a 13/3', 'Hemato' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '16/3 a 20/3', 'Reumato' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '6/4 a 10/4', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '20/4 a 24/4', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '18/5 a 22/5', 'Coloprocto' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Otorrino' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'Ortopedia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Fígado' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'Torácica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '20/7 a 24/7', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'CIP' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '24/8 a 28/8', 'Vascular' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'Anestesio' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '7/9 a 11/9', 'DIP' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';

-- Aluno 18: Fernanda de Jesus Paixão Morgado

-- Aluno 19: Fernanda Follis Tasso
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '2/3 a 6/3', 'Hemato' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CLÍNICA', '9/3 a 13/3', 'Uro' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '4/5 a 8/5', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '11/5 a 15/5', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '1/6 a 5/6', 'Ortopedia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '8/6 a 12/6', 'Otorrino' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '15/6 a 19/6', 'Torácica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CIRURGIA', '22/6 a 26/6', 'Fígado' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '6/7 a 10/7', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '3/8 a 7/8', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '17/8 a 21/8', 'Anestesio' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '24/8 a 28/8', 'CIP' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'ESPECIALIDADES', '31/8 a 4/9', 'Vascular' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';

-- Aluno 20: Gabriel Alleoni Moreira
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Unid. I' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Unid. IV' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Reumato' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Pneumo' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Uro' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '11/5 a 15/5', 'Hemato' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Gastro' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Nefro' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Fígado' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'Torácica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Otorrino' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'Ortopedia' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Coloprocto' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';

-- Aluno 21: Gabriel Andrade Vaz de Lima

-- Aluno 22: Gabriel Cardozo de Mattos
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Hemato' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '11/5 a 15/5', 'Uro' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';

-- Aluno 23: Gabriel de Oliveira Pinto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Unid. I' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Unid. IV' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'P' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Uro' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '13/4 a 17/4', 'Hemato' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Reumato' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Pneumo' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Gastro' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Nefro' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Torácica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'Fígado' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Ortopedia' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'Otorrino' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'ONCO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';

-- Aluno 24: Gabriel Goldner Campos
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Otorrino' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'Ortopedia' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Fígado' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'Torácica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Eumildo' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Coloprocto' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';

-- Aluno 25: Gabriel Lourenço Rodrigues Lopes de Carvalho
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Hemato' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '13/4 a 17/4', 'Uro' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Ortopedia' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'Otorrino' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Torácica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'Fígado' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';

-- Aluno 26: Gabriel Ribeiro Ramos
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '29/12 a 4/1', 'F É R' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Unid. IV' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Unid. I' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Uro' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '27/4 a 1/5', 'Hemato' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Fígado' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'Torácica' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Otorrino' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'Ortopedia' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';

-- Aluno 27: Gabriela Marcia Marques

-- Aluno 28: Giovana Chagas Irineu
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'I N' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Pneumo' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Hemato' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '27/4 a 1/5', 'Uro' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Reumato' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Nefro' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Gastro' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '29/06 a 04/07', 'É R' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Coloprocto' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '27/7 a 31/7', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Torácica' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'Fígado' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Ortopedia' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'Otorrino' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';

-- Aluno 29: Giovanna Custodio Hengler

-- Aluno 30: Giulia Mulero Citro
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '29/12 a 4/1', 'I A S' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Unid. I' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Unid. IV' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'T' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Uro' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '22/6 a 26/6', 'Hemato' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Otorrino' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'Ortopedia' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Fígado' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'Torácica' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';

-- Aluno 31: Giuseppe Ribeiro Ayello
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'E R' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Gastro' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Nefro' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Reumato' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Pneumo' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Hemato' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '22/6 a 26/6', 'Uro' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '29/06 a 04/07', 'A S' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '13/7 a 17/7', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Coloprocto' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Ortopedia' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'Otorrino' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Torácica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'Fígado' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';

-- Aluno 32: Guilherme Silva Bruno Barbosa

-- Aluno 33: Gustavo Feletti Rocha
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Unid. I' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Unid. IV' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'M' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Uro' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '25/5 a 29/5', 'Hemato' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Fígado' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'Torácica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Otorrino' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'Ortopedia' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';

-- Aluno 34: Henrique Otávio Melo de Assis
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '30/3 a 3/4', 'E D' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'Gastro' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Nefro' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Hemato' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '25/5 a 29/5', 'Uro' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Reumato' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Pneumo' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'Coloprocto' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '24/8 a 28/8', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Torácica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'Fígado' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Ortopedia' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'Otorrino' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';

-- Aluno 35: Henrique Yuzo Nakamune Uezu

-- Aluno 36: Ingrid Louise Alves da Silva
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '5/1 a 9/1', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '19/1 a 23/1', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/2 a 6/2', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/2 a 20/2', 'Unid. IV' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '2/3 a 6/3', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'PED E GO', '16/3 a 20/3', 'Unid. I' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '6/4 a 10/4', 'Nefro' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '20/4 a 24/4', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '4/5 a 8/5', 'Gastro' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '18/5 a 22/5', 'Pneumo' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Uro' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '8/6 a 12/6', 'Hemato' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '15/6 a 19/6', 'Reumato' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '6/7 a 10/7', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '20/7 a 24/7', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '17/8 a 21/8', 'Coloprocto' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Otorrino' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'Ortopedia' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Fígado' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'Torácica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'ESPECIALIDADES', 'UPA TANGARÁ / SAMU', 'Saúde Coletiva - UBS CIDADE' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';

-- Aluno 37: Isabella Cardoso Almeida

-- Aluno 38: Isabella Carolina Santos Silveira
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '1/6 a 5/6', 'Hemato' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'CLÍNICA', '8/6 a 12/6', 'Uro' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '3/8 a 7/8', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '10/8 a 14/8', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '31/8 a 4/9', 'Ortopedia' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '7/9 a 11/9', 'Otorrino' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '14/9 a 18/9', 'Torácica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CIRURGIA', '21/9 a 25/9', 'Fígado' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'ESPECIALIDADES', 'UPA TANGARÁ / SAMU', 'JARDIM' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';

-- Aluno 39: Isadora Carvalho Silvestre de Moraes
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '26/1 a 30/1', 'Vascular' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'Anestesio' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/2 a 13/2', 'CIP' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Unid. I' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Unid. IV' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Reumato' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Pneumo' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Uro' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '10/8 a 14/8', 'Hemato' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Gastro' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Nefro' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Fígado' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'Torácica' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Otorrino' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'Ortopedia' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Coloprocto' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';

-- Aluno 40: João Victor Azevedo Zanatta

-- Aluno 41: Juan Silva Locks Camargo
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'DIP' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Hemato' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '10/8 a 14/8', 'Uro' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';

-- Aluno 42: Julia de Aguiar Freitas
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '26/1 a 30/1', 'CIP' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'Vascular' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/2 a 13/2', 'Anestesio' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '30/3 a 3/4', 'P R' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Unid. I' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Unid. IV' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Uro' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '13/7 a 17/7', 'Hemato' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Reumato' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Pneumo' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Gastro' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Nefro' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Torácica' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'Fígado' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Ortopedia' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'Otorrino' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';

-- Aluno 43: Júlia Palaro Biasotti
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '26/1 a 30/1', 'Anestesio' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'CIP' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/2 a 13/2', 'Vascular' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Otorrino' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'Ortopedia' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Fígado' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'Torácica' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Coloprocto' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';

-- Aluno 44: Júlia Sinhorini de Lima
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Hemato' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '13/7 a 17/7', 'Uro' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Ortopedia' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'Otorrino' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Torácica' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'Fígado' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';

-- Aluno 45: Laura Cecilia Fernandes Silva
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'Vascular' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '12/1 a 16/1', 'Anestesio' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'CIP' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '30/3 a 3/4', 'É I N' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Unid. IV' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Unid. I' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '29/06 a 04/07', 'F É' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Uro' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '27/7 a 31/7', 'Hemato' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Fígado' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'Torácica' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Otorrino' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'Ortopedia' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';

-- Aluno 46: Leandro Kiyoshi Ynada
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'CIP' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '12/1 a 16/1', 'Vascular' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'Anestesio' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '26/1 a 30/1', 'DIP' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'Saúde Coletiva - UBS CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'Saúde Coletiva - UBS SCHMIDTT' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';

-- Aluno 47: Leonardo Fornazari Estabile
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Pneumo' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Hemato' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '27/7 a 31/7', 'Uro' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Reumato' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Nefro' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Gastro' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Coloprocto' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '19/10 a 23/10', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Torácica' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'Fígado' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Ortopedia' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'Otorrino' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';

-- Aluno 48: Letícia Aguirre Mantoani
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'Anestesio' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '12/1 a 16/1', 'CIP' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'Vascular' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';

-- Aluno 49: Letícia Segura Graciani
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '29/12 a 4/1', 'I A' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/3 a 13/3', 'Vascular' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'Anestesio' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/3 a 27/3', 'CIP' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '30/3 a 3/4', 'T E R' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Unid. I' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Unid. IV' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Uro' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '21/9 a 25/9', 'Hemato' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'ONCO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Otorrino' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'Ortopedia' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Fígado' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'Torácica' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';

-- Aluno 50: Lucas Zaidel Netto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '29/06 a 04/07', 'A S' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Gastro' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Nefro' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Reumato' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Pneumo' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Hemato' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '21/9 a 25/9', 'Uro' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '5/10 a 9/10', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Coloprocto' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Ortopedia' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'Otorrino' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Torácica' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'Fígado' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';

-- Aluno 51: Lucca Oliveira Sanches
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'DIP' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';

-- Aluno 52: Marcos Antonio Dias Vilela
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/3 a 13/3', 'CIP' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'Vascular' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/3 a 27/3', 'Anestesio' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '30/3 a 3/4', 'M E D' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Unid. I' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Unid. IV' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Uro' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '24/8 a 28/8', 'Hemato' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Fígado' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'Torácica' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Otorrino' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'Ortopedia' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';

-- Aluno 53: Mariana Lyra Arré
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/3 a 13/3', 'Anestesio' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/3 a 20/3', 'CIP' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/3 a 27/3', 'Vascular' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'Gastro' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Nefro' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Hemato' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '24/8 a 28/8', 'Uro' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Reumato' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Pneumo' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'Coloprocto' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '16/11 a 20/11', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Torácica' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'Fígado' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Ortopedia' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'Otorrino' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';

-- Aluno 54: Mariana Mendes Justiça
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'Vascular' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/2 a 27/2', 'Anestesio' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'CIP' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';

-- Aluno 55: Matheus Da Silveira Galvão
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '19/1 a 23/1', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'CIP' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/2 a 27/2', 'Vascular' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'Anestesio' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '9/3 a 13/3', 'DIP' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '6/4 a 10/4', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '20/4 a 24/4', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '4/5 a 8/5', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '18/5 a 22/5', 'Unid. IV' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '1/6 a 5/6', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'PED E GO', '15/6 a 19/6', 'Unid. I' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '6/7 a 10/7', 'Nefro' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '20/7 a 24/7', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '3/8 a 7/8', 'Gastro' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '17/8 a 21/8', 'Pneumo' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Uro' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '7/9 a 11/9', 'Hemato' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '14/9 a 18/9', 'Reumato' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '28/9 a 2/10', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '12/10 a 16/10', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '9/11 a 13/11', 'Coloprocto' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Otorrino' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'Ortopedia' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Fígado' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'Torácica' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';

-- Aluno 56: Matheus Nassar Lecce

-- Aluno 57: Matheus Simioni
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '5/1 a 9/1', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/2 a 6/2', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '16/2 a 20/2', 'Anestesio' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '23/2 a 27/2', 'CIP' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'ESPECIALIDADES', '2/3 a 6/3', 'Vascular' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '31/8 a 4/9', 'Hemato' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'CLÍNICA', '7/9 a 11/9', 'Uro' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '26/10 a 30/10', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '2/11 a 6/11', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '23/11 a 27/11', 'Ortopedia' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '30/11 a 4/12', 'Otorrino' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '7/12 a 11/12', 'Torácica' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CIRURGIA', '14/12 a 18/12', 'Fígado' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';

-- Aluno 58: Maurício Samorano Silva
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Fígado' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'Torácica' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Otorrino' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'Ortopedia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Coloprocto' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '27/4 a 1/5', 'Vascular' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'Anestesio' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '11/5 a 15/5', 'CIP' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Unid. I' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Unid. IV' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Reumato' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Pneumo' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Uro' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '2/11 a 6/11', 'Hemato' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Gastro' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Nefro' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';

-- Aluno 59: Patrick Oliveira Lemes

-- Aluno 60: Pedro Arthur Deângeli Pivirotto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Torácica' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'Fígado' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Ortopedia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'Otorrino' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'DIP' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '27/4 a 1/5', 'CIP' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'Vascular' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '11/5 a 15/5', 'Anestesio' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Hemato' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '2/11 a 6/11', 'Uro' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';

-- Aluno 61: Pedro Cezar Guedes
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'ONCO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Unid. I' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Unid. IV' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Uro' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '5/10 a 9/10', 'Hemato' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Reumato' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Pneumo' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Gastro' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Nefro' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';

-- Aluno 62: Rafael Santos Restivo
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Otorrino' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'Ortopedia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Fígado' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'Torácica' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Eumildo' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Coloprocto' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'P' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '27/4 a 1/5', 'Anestesio' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'CIP' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '11/5 a 15/5', 'Vascular' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';

-- Aluno 63: Raquel Hernandez Bertine
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Ortopedia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'Otorrino' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Torácica' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'Fígado' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'Vascular' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '13/4 a 17/4', 'Anestesio' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'CIP' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Hemato' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '5/10 a 9/10', 'Uro' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';

-- Aluno 64: Rebeca Dall´ Aqua de Godoy
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '29/12 a 4/1', 'F É' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Fígado' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'Torácica' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Otorrino' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'Ortopedia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '29/06 a 04/07', 'F É R I' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Unid. IV' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Unid. I' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Uro' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '19/10 a 23/10', 'Hemato' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';

-- Aluno 65: Rodrigo Shibaki
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'I N' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'CIP' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '13/4 a 17/4', 'Vascular' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'Anestesio' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '27/4 a 1/5', 'DIP' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'Saúde Coletiva - UBS CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'Saúde Coletiva - UBS SCHMIDTT' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';

-- Aluno 66: Sam William Rodrigues Martins
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '29/12 a 4/1', 'R I' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Coloprocto' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '26/1 a 30/1', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Torácica' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'Fígado' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Ortopedia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'Otorrino' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Pneumo' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Hemato' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '19/10 a 23/10', 'Uro' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Reumato' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Nefro' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Gastro' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';

-- Aluno 67: Sarah Ganga Frizzas Borsari
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'T' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'Anestesio' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '13/4 a 17/4', 'CIP' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'Vascular' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';

-- Aluno 68: Tarsis de Oliveira Pissolato
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'ONCO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Otorrino' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'Ortopedia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Fígado' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'Torácica' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'E R' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '8/6 a 12/6', 'Vascular' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'Anestesio' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '22/6 a 26/6', 'CIP' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '29/06 a 04/07', 'A S' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Unid. I' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Unid. IV' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Uro' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '14/12 a 18/12', 'Hemato' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';

-- Aluno 69: Thaylon de Abreu Damacena
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '29/12 a 4/1', 'A S' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '12/1 a 16/1', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Coloprocto' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Ortopedia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'Otorrino' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Torácica' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'Fígado' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Gastro' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Nefro' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Reumato' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Pneumo' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Hemato' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '14/12 a 18/12', 'Uro' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';

-- Aluno 70: Victor Augusto Belani Fernandes
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'M' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'DIP' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '8/6 a 12/6', 'CIP' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'Vascular' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '22/6 a 26/6', 'Anestesio' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';

-- Aluno 71: Víctor Joaquim de Amaral e Gouveia
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Fígado' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'Torácica' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Otorrino' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'Ortopedia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'E' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Unid. I' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Unid. IV' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Uro' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '16/11 a 20/11', 'Hemato' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';

-- Aluno 72: Victório Marangon Neto
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'Coloprocto' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/2 a 27/2', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Torácica' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'Fígado' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Ortopedia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'Otorrino' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '30/3 a 3/4', 'D' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '8/6 a 12/6', 'Anestesio' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '15/6 a 19/6', 'CIP' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '22/6 a 26/6', 'Vascular' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'Gastro' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Nefro' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Hemato' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '16/11 a 20/11', 'Uro' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Reumato' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Pneumo' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';

-- Aluno 73: Vitor de Oliveira Rossi
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'Vascular' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '25/5 a 29/5', 'Anestesio' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'CIP' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';

-- Aluno 74: Vitória Ferreira de Oliveira
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '5/1 a 9/1', 'HOSPITAL MUNICIPAL' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '19/1 a 23/1', 'Gastro Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/2 a 20/2', 'Coloprocto' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Otorrino' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'Ortopedia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Fígado' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'Torácica' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '20/4 a 24/4', 'UPA TANGARÁ / SAMU' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'Saúde Coletiva - UBS' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'CIP' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '25/5 a 29/5', 'Vascular' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'Anestesio' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '8/6 a 12/6', 'DIP' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '6/7 a 10/7', 'Aloj. Conjunto' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '20/7 a 24/7', 'Amb. Ped.' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '3/8 a 7/8', 'Enf. Ped. Ensino' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '17/8 a 21/8', 'Unid. IV' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '31/8 a 4/9', 'Centro Obstétrico' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '3º PERÍODO (07/07-26/09)', 'PED E GO', '14/9 a 18/9', 'Unid. I' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '28/9 a 2/10', 'Nefro' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '12/10 a 16/10', 'UBS Vila Toninho' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '26/10 a 30/10', 'Gastro' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '9/11 a 13/11', 'Pneumo' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Uro' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '30/11 a 4/12', 'Hemato' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '7/12 a 11/12', 'Reumato' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';

-- Aluno 75: Vivian Joice Pinto Silva

-- Aluno 76: William de Freitas Barros
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/2 a 6/2', 'ONCO Dib' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/2 a 13/2', 'ONCO Eumildo' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '2/3 a 6/3', 'Ortopedia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '9/3 a 13/3', 'Otorrino' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '16/3 a 20/3', 'Torácica' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '1º PERÍODO (05/01-27/03)', 'CIRURGIA', '23/3 a 27/3', 'Fígado' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '6/4 a 10/4', 'CIDADE JARDIM' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '4/5 a 8/5', 'SCHMIDTT' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '18/5 a 22/5', 'Anestesio' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '25/5 a 29/5', 'CIP' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '2º PERÍODO (30/03-26/06)', 'ESPECIALIDADES', '1/6 a 5/6', 'Vascular' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '23/11 a 27/11', 'Hemato' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio) SELECT id, '4º PERÍODO (29/09-19/12)', 'CLÍNICA', '30/11 a 4/12', 'Uro' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';

-- =============================================
-- PARTE 4: INSERIR PLANTÕES
-- =============================================


-- Aluno 1: Aline Sonagere Neves
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-12', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-04', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-16', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-28', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-07', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', 'quinta-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-19', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';

-- Aluno 2: Andreza Vieira Ramos
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-29', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-19', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-25', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', 'sexta-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-05', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-15', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-29', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';

-- Aluno 3: Anna Luisa Lima Caricati
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-15', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-05', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', 'terça-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-06', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-14', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-20', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-01', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';

-- Aluno 4: Arthur Gonçalez Sasaki
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-07', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-02', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', 'segunda-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-09', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-06', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-27', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-12', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';

-- Aluno 5: Ayrton Ono Sakamoto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-08', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-30', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-24', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-09', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-11', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-23', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';

-- Aluno 6: Bárbara Julia Tricarico Petrucci
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-13', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-12', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-18', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-23', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-25', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-03', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';

-- Aluno 7: Beatriz Lopes Montozo
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-09', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-28', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-23', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-10', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-27', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-18', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';

-- Aluno 8: Breno Borges Godoy
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-14', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-21', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-11', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-24', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-05', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-26', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';

-- Aluno 9: Bruno Zaccari Bertolini
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-06', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-27', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-25', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-22', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-15', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-24', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';

-- Aluno 10: Carlos Eduardo S. G. Feitosa
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-10', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-20', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-10', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', 'quinta-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-04', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-21', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-28', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';

-- Aluno 11: Carlos Ryuichi Yamamoto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-23', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-13', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-20', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-26', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-17', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-06', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-25', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';

-- Aluno 12: Caroline Gomes de Oliveira
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-13', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-03', 'terça-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-20', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-29', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-22', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';

-- Aluno 13: Conceição Pinheiro de Souza
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-18', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-26', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-04', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-15', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-08', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-08', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';

-- Aluno 14: Daniel Delmondes Ramos
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-20', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-09', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-05', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-22', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-13', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-09', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';

-- Aluno 15: Enzo Augusto Botero
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-05', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-03', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-11', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-08', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-13', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-18', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';

-- Aluno 16: Felipe Costa Trida Sene
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-19', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-26', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-07', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-26', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-17', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';

-- Aluno 17: Felipe de Oliveira Belo
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-27', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-24', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-17', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-30', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-02', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-11', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';

-- Aluno 18: Fernanda de Jesus Paixão Morgado
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-16', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-06', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-23', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-16', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-10', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-16', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';

-- Aluno 19: Fernanda Follis Tasso
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-22', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-02', 'segunda-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-12', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-14', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', 'terça-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-19', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-12', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';

-- Aluno 20: Gabriel Alleoni Moreira
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-14', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-19', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-29', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-18', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-10', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-24', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', 'terça-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-06', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-20', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-17', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';

-- Aluno 21: Gabriel Andrade Vaz de Lima
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-09', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-21', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-13', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', 'terça-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-24', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-02', 'segunda-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-18', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-22', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-29', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-26', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';

-- Aluno 22: Gabriel Cardozo de Mattos
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-08', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-15', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-26', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-23', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-09', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-16', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-07', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-13', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-05', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';

-- Aluno 23: Gabriel de Oliveira Pinto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-16', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-20', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-09', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-19', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-04', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-20', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-23', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', 'sexta-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-07', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-23', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';

-- Aluno 24: Gabriel Goldner Campos
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-23', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-27', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-02', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', 'segunda-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-03', 'terça-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-17', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-08', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-30', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-22', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';

-- Aluno 25: Gabriel Lourenço R. L. de Carvalho
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-22', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-28', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-12', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-20', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-06', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-12', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-14', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-08', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-25', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';

-- Aluno 26: Gabriel Ribeiro Ramos
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-06', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-10', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-27', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-25', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-25', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-03', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-10', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';

-- Aluno 27: Gabriela Marcia Marques
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-05', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-30', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-03', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-11', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-05', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-11', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-09', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-27', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-12', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';

-- Aluno 28: Giovana Chagas Irineu
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-06', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-12', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-04', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-25', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-13', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-26', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-13', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-02', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-26', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';

-- Aluno 29: Giovanna Custodio Hengler
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-07', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-13', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-05', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-26', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', 'quinta-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-23', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-06', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-27', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', 'quinta-feira', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-11', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';

-- Aluno 30: Giulia Mulero Citro
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-05', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-09', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-04', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-09', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-10', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-20', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-16', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-14', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-28', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';

-- Aluno 31: Giuseppe Ribeiro Ayello
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-19', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-28', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-11', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-26', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-11', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-26', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-28', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-05', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-19', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-15', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';

-- Aluno 32: Guilherme Silva Bruno Barbosa
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-16', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-29', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-06', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-23', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-02', 'segunda-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-09', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-04', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-18', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-24', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';

-- Aluno 33: Gustavo Feletti Rocha
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-21', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-30', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-10', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-20', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-03', 'terça-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-17', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-20', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-12', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-08', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';

-- Aluno 34: Henrique Otávio Melo de Assis
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-27', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-02', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-12', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', 'terça-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-05', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-12', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', 'quinta-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-24', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-15', 'quarta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-15', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-21', 'quinta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';

-- Aluno 35: Henrique Yuzo Nakamune Uezu
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-08', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-13', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-05', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-13', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', 'segunda-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-18', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-27', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-04', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-18', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-09', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';

-- Aluno 36: Ingrid Louise Alves da Silva
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-14', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-23', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-26', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-25', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-13', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-25', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-17', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-22', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-01', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';

-- Aluno 37: Isabella Cardoso Almeida
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-06', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-12', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-20', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-19', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-06', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-18', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-10', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-24', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-29', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-19', 'sexta-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';

-- Aluno 38: Isabella Carolina Santos Silveira
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-07', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-15', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-22', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-03', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-24', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-16', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-23', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', 'sábado', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-11', 'segunda-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', 'domingo', 'Diurno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', '', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-16', 'terça-feira', 'Noturno', 'PA Clínica' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';

-- Aluno 39: Isadora Carvalho S. de Moraes
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-05', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-18', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-16', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-22', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-08', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-19', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-02', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-09', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';

-- Aluno 40: João Victor Azevedo Zanatta
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-09', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-28', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-02', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-06', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-15', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-20', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-15', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-11', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-19', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-26', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';

-- Aluno 41: Juan Silva Locks Camargo
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-14', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-30', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-09', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-25', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-08', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-14', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-22', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-25', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-15', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';

-- Aluno 42: Julia de Aguiar Freitas
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-21', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-18', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-26', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-20', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-10', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-28', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-14', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-20', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-01', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-17', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';

-- Aluno 43: Júlia Palaro Biasotti
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-12', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-09', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-17', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-27', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-05', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-27', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-03', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';

-- Aluno 44: Júlia Sinhorini de Lima
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-20', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-06', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-26', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-23', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-07', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-13', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-26', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-10', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-24', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';

-- Aluno 45: Laura Cecilia Fernandes Silva
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-13', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-11', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', 'sexta-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-06', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-12', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-29', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-05', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-18', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';

-- Aluno 46: Leandro Kiyoshi Ynada
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-26', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-11', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-04', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-17', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', 'terça-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-30', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-04', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-21', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-28', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-25', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';

-- Aluno 47: Leonardo Fornazari Estabile
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-22', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-05', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-19', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-07', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-24', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-29', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-18', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-08', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-23', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';

-- Aluno 48: Letícia Aguirre Mantoani
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-07', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-27', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-24', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-09', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-13', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-11', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', 'quinta-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-12', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-16', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-22', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';

-- Aluno 49: Letícia Segura Graciani
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-23', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-27', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-13', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-20', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-10', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-06', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-17', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', 'terça-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-28', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-18', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-29', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-09', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-26', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';

-- Aluno 50: Lucas Zaidel Netto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-08', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-10', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-22', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-27', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-21', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-25', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-02', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';

-- Aluno 51: Lucca Oliveira Sanches
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-23', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-23', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-08', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-13', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-18', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-14', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-27', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-05', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-10', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';

-- Aluno 52: Marcos Antonio Dias Vilela
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-15', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-12', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-23', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', 'sexta-feira', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-04', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-11', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-17', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-01', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-11', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-25', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';

-- Aluno 53: Mariana Lyra Arré
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-16', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-24', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-13', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-11', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-21', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-30', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-05', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-09', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-12', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-22', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-24', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-08', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-19', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';

-- Aluno 54: Mariana Mendes Justiça
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-03', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-09', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-14', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-20', 'segunda-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-26', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-15', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-31', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-03', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-14', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-18', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-23', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';

-- Aluno 55: Matheus Da Silveira Galvão
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-19', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-12', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-03', 'terça-feira', 'Diurno', 'UPA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-25', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-12', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-16', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-25', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-01', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-08', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-16', 'sábado', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-20', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-23', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-28', 'quinta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-17', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-21', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';

-- Aluno 56: Matheus Nassar Lecce
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-29', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-06', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-10', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-05', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-15', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-19', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-29', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-03', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-07', 'quinta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-10', 'domingo', 'Diurno', 'EMEPED' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-19', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-04', 'quinta-feira', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-06', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-12', 'sexta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-15', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-20', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-24', 'quarta-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';

-- Aluno 57: Matheus Simioni
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-06', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-04', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-02', 'segunda-feira', 'Diurno', 'UPA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-16', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-07', 'terça-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-24', 'sexta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-02', '', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-06', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-13', 'quarta-feira', 'Noturno', 'EMEPED' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-26', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-30', '', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-07', 'domingo', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-13', 'sábado', 'Diurno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-16', 'terça-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-22', 'segunda-feira', 'Noturno', 'Emergência C.O.' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';

-- Aluno 58: Maurício Samorano Silva
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-09', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-21', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-06', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-10', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-30', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-28', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';

-- Aluno 59: Patrick Oliveira Lemes
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-03', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-09', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-13', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';

-- Aluno 60: Pedro Arthur Deângeli Pivirotto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-06', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-23', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-18', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-20', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';

-- Aluno 61: Pedro Cezar Guedes
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-26', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-13', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-17', 'terça-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-25', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-28', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-25', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-11', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';

-- Aluno 62: Rafael Santos Restivo
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-20', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-27', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-24', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-06', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-09', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';

-- Aluno 63: Raquel Hernandez Bertine
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-30', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-15', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-05', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-10', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-22', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-13', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-08', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-12', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-22', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-08', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';

-- Aluno 64: Rebeca Dall´ Aqua de Godoy
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-08', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-13', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-11', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-16', 'segunda-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-16', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-22', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-03', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';

-- Aluno 65: Rodrigo Shibaki
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-18', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-12', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-23', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-05', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-15', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';

-- Aluno 66: Sam William Rodrigues Martins
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-31', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-20', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-26', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-07', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-15', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-23', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-07', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-13', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-29', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-15', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';

-- Aluno 67: Sarah Ganga Frizzas Borsari
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-10', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-05', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-04', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-25', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-29', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-11', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-05', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-17', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';

-- Aluno 68: Tarsis de Oliveira Pissolato
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-12', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-23', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-28', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-06', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-26', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-19', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';

-- Aluno 69: Thaylon de Abreu Damacena
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-15', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-24', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-27', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-21', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-17', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-08', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-27', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-20', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-16', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';

-- Aluno 70: Victor Augusto Belani Fernandes
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-14', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-19', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-12', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-15', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-14', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-04', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-27', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-10', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-24', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';

-- Aluno 71: Víctor Joaquim de A. e Gouveia
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-07', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-18', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-02', 'segunda-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-11', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-02', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-23', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';

-- Aluno 72: Victório Marangon Neto
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-16', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-29', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-07', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-22', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-09', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-07', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-19', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-09', 'terça-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';

-- Aluno 73: Vitor de Oliveira Rossi
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-05', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-01', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-10', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-16', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-21', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-22', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';

-- Aluno 74: Vitória Ferreira de Oliveira
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-17', 'sábado', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-22', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-08', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-19', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-01', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-14', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-26', 'quinta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-24', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-06', 'quarta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-18', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-01', 'segunda-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-26', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';

-- Aluno 75: Vivian Joice Pinto Silva
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-11', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-28', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-02', 'segunda-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-14', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-20', 'sexta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-14', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-25', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';

-- Aluno 76: William de Freitas Barros
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-01-25', 'domingo', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-04', 'quarta-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-02-24', 'terça-feira', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-03', 'terça-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-08', '', 'Noturno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-03-19', 'quinta-feira', 'Diurno', 'PA Cirurgia' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-04-17', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-05-21', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-12', 'sexta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo) SELECT id, '2026-06-18', 'quinta-feira', 'Noturno', 'UPA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';

-- =============================================
-- PARTE 5: VERIFICAÇÃO
-- =============================================

SELECT 
    'IMPORTAÇÃO CONCLUÍDA' as status,
    (SELECT COUNT(*) FROM usuarios WHERE serie = '5') as total_alunos,
    (SELECT COUNT(*) FROM estagios e JOIN usuarios u ON e.usuario_id = u.id WHERE u.serie = '5') as total_estagios,
    (SELECT COUNT(*) FROM plantoes p JOIN usuarios u ON p.usuario_id = u.id WHERE u.serie = '5') as total_plantoes;

-- =============================================
-- IMPORTANTE: SENHA PADRÃO = mudar123
-- Todos os alunos devem trocar a senha no primeiro acesso!
-- =============================================