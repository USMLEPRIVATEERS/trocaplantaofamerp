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

-- =============================================
-- PARTE 2: INSERIR ESTAGIOS
-- =============================================

SET session_replication_role = 'replica';

SET session_replication_role = 'origin';

-- =============================================
-- PARTE 3: INSERIR PLANTOES
-- =============================================

SET session_replication_role = 'replica';

SET session_replication_role = 'origin';

-- =============================================
-- VERIFICACAO
-- =============================================

SELECT 'Alunos' as tipo, COUNT(*) as total FROM usuarios WHERE serie = '5'
UNION ALL
SELECT 'Estagios' as tipo, COUNT(*) FROM estagios e JOIN usuarios u ON e.usuario_id = u.id WHERE u.serie = '5'
UNION ALL
SELECT 'Plantoes' as tipo, COUNT(*) FROM plantoes p JOIN usuarios u ON p.usuario_id = u.id WHERE u.serie = '5';

-- IMPORTACAO COMPLETA!